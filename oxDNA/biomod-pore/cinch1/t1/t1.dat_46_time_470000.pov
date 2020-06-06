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
	<42.248028, 33.149982, 23.108414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.254921, 32.750042, 23.108803>,  <42.259056, 32.510078, 23.109035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.254921, 32.750042, 23.108803>,  <42.248028, 33.149982, 23.108414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.254921, 32.750042, 23.108803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.935167, -0.016460, -0.353825,
		0.353788, 0.005186, -0.935311,
		0.017230, -0.999851, 0.000973,
		42.260090, 32.450089, 23.109095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.848804, 32.930149, 22.487062>,  <42.248028, 33.149982, 23.108414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.848804, 32.930149, 22.487062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.858955, 32.628914, 22.750034>,  <41.865047, 32.448174, 22.907818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.858955, 32.628914, 22.750034>,  <41.848804, 32.930149, 22.487062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.858955, 32.628914, 22.750034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975933, -0.161145, -0.146922,
		0.216587, -0.637879, -0.739054,
		0.025377, -0.753089, 0.657429,
		41.866570, 32.402988, 22.947264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.347580, 32.537289, 22.329315>,  <41.848804, 32.930149, 22.487062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.347580, 32.537289, 22.329315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.428055, 32.359688, 22.678574>,  <41.476341, 32.253128, 22.888128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.428055, 32.359688, 22.678574>,  <41.347580, 32.537289, 22.329315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.428055, 32.359688, 22.678574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858364, -0.509374, -0.061236,
		0.471947, -0.737158, -0.483595,
		0.201190, -0.444001, 0.873147,
		41.488411, 32.226486, 22.940517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.102612, 31.907879, 22.164442>,  <41.347580, 32.537289, 22.329315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.102612, 31.907879, 22.164442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.064743, 31.955181, 22.559826>,  <41.042023, 31.983562, 22.797056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.064743, 31.955181, 22.559826>,  <41.102612, 31.907879, 22.164442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.064743, 31.955181, 22.559826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867062, -0.497646, -0.023505,
		0.489123, -0.859281, 0.149648,
		-0.094669, 0.118257, 0.988460,
		41.036343, 31.990658, 22.856363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.313484, 32.043816, 22.452848>,  <41.102612, 31.907879, 22.164442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.313484, 32.043816, 22.452848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.915783, 32.001007, 22.452591>,  <39.677162, 31.975323, 22.452436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.915783, 32.001007, 22.452591>,  <40.313484, 32.043816, 22.452848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.915783, 32.001007, 22.452591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045189, -0.425241, 0.903951,
		-0.097016, 0.898731, 0.427635,
		-0.994256, -0.107022, -0.000642,
		39.617504, 31.968901, 22.452398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.011219, 32.098255, 23.135592>,  <40.313484, 32.043816, 22.452848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.011219, 32.098255, 23.135592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.715290, 31.913628, 22.939785>,  <39.537735, 31.802853, 22.822302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.715290, 31.913628, 22.939785>,  <40.011219, 32.098255, 23.135592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.715290, 31.913628, 22.939785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158737, -0.587288, 0.793660,
		-0.653812, 0.664869, 0.361220,
		-0.739820, -0.461565, -0.489515,
		39.493343, 31.775158, 22.792931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.540642, 32.152233, 23.611872>,  <40.011219, 32.098255, 23.135592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.540642, 32.152233, 23.611872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.420574, 31.857151, 23.369980>,  <39.348534, 31.680103, 23.224846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.420574, 31.857151, 23.369980>,  <39.540642, 32.152233, 23.611872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.420574, 31.857151, 23.369980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217284, -0.564417, 0.796380,
		-0.928810, 0.370444, 0.009128,
		-0.300167, -0.737702, -0.604728,
		39.330524, 31.635839, 23.188562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.903229, 31.933710, 23.830217>,  <39.540642, 32.152233, 23.611872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.903229, 31.933710, 23.830217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.040264, 31.627560, 23.612289>,  <39.122486, 31.443869, 23.481533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.040264, 31.627560, 23.612289>,  <38.903229, 31.933710, 23.830217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.040264, 31.627560, 23.612289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168279, -0.620529, 0.765916,
		-0.924291, -0.170714, -0.341384,
		0.342591, -0.765376, -0.544821,
		39.143044, 31.397947, 23.448843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413261, 31.408287, 23.984333>,  <38.903229, 31.933710, 23.830217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.413261, 31.408287, 23.984333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.758926, 31.240662, 23.872902>,  <38.966324, 31.140085, 23.806044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.758926, 31.240662, 23.872902>,  <38.413261, 31.408287, 23.984333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.758926, 31.240662, 23.872902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060634, -0.636282, 0.769070,
		-0.499543, -0.647711, -0.575262,
		0.864164, -0.419064, -0.278577,
		39.018177, 31.114943, 23.789330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.373238, 30.652300, 24.057833>,  <38.413261, 31.408287, 23.984333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.373238, 30.652300, 24.057833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.767998, 30.716438, 24.064999>,  <39.004852, 30.754921, 24.069298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.767998, 30.716438, 24.064999>,  <38.373238, 30.652300, 24.057833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.767998, 30.716438, 24.064999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091325, -0.646695, 0.757262,
		0.133013, -0.745703, -0.652866,
		0.986898, 0.160349, 0.017917,
		39.064068, 30.764544, 24.070374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.626186, 30.006191, 24.250099>,  <38.373238, 30.652300, 24.057833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.626186, 30.006191, 24.250099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.936359, 30.247746, 24.323887>,  <39.122463, 30.392677, 24.368158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.936359, 30.247746, 24.323887>,  <38.626186, 30.006191, 24.250099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.936359, 30.247746, 24.323887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213704, -0.525892, 0.823267,
		0.594170, -0.598965, -0.536846,
		0.775431, 0.603887, 0.184468,
		39.168987, 30.428911, 24.379227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.288353, 29.547764, 24.250113>,  <38.626186, 30.006191, 24.250099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.288353, 29.547764, 24.250113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.345505, 29.891861, 24.445896>,  <39.379795, 30.098320, 24.563366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.345505, 29.891861, 24.445896>,  <39.288353, 29.547764, 24.250113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.345505, 29.891861, 24.445896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320450, -0.508101, 0.799465,
		0.936428, 0.042621, -0.348261,
		0.142878, 0.860242, 0.489458,
		39.388367, 30.149933, 24.592733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.002106, 29.510300, 24.478100>,  <39.288353, 29.547764, 24.250113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.002106, 29.510300, 24.478100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.828827, 29.794777, 24.699566>,  <39.724861, 29.965464, 24.832445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.828827, 29.794777, 24.699566>,  <40.002106, 29.510300, 24.478100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.828827, 29.794777, 24.699566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425317, -0.380296, 0.821268,
		0.794638, 0.591251, -0.137742,
		-0.433193, 0.711195, 0.553666,
		39.698868, 30.008135, 24.865665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.561363, 29.896736, 24.814968>,  <40.002106, 29.510300, 24.478100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.561363, 29.896736, 24.814968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.234131, 29.971054, 25.032673>,  <40.037792, 30.015644, 25.163296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.234131, 29.971054, 25.032673>,  <40.561363, 29.896736, 24.814968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.234131, 29.971054, 25.032673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479685, -0.301611, 0.823974,
		0.317244, 0.935154, 0.157620,
		-0.818083, 0.185793, 0.544263,
		39.988705, 30.026793, 25.195951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.695091, 30.197357, 25.404310>,  <40.561363, 29.896736, 24.814968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.695091, 30.197357, 25.404310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.336967, 30.054287, 25.510509>,  <40.122093, 29.968445, 25.574228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.336967, 30.054287, 25.510509>,  <40.695091, 30.197357, 25.404310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.336967, 30.054287, 25.510509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385244, -0.322524, 0.864619,
		-0.223624, 0.876383, 0.426551,
		-0.895310, -0.357675, 0.265497,
		40.068375, 29.946985, 25.590158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.553379, 30.440811, 26.073795>,  <40.695091, 30.197357, 25.404310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.553379, 30.440811, 26.073795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.328552, 30.113873, 26.023159>,  <40.193657, 29.917709, 25.992777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.328552, 30.113873, 26.023159>,  <40.553379, 30.440811, 26.073795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.328552, 30.113873, 26.023159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277134, -0.330322, 0.902266,
		-0.779280, 0.472051, 0.412178,
		-0.562067, -0.817346, -0.126592,
		40.159931, 29.868670, 25.985182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.388348, 30.351572, 26.705303>,  <40.553379, 30.440811, 26.073795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.388348, 30.351572, 26.705303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.300186, 29.989891, 26.558968>,  <40.247288, 29.772882, 26.471167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.300186, 29.989891, 26.558968>,  <40.388348, 30.351572, 26.705303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.300186, 29.989891, 26.558968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240798, -0.413894, 0.877900,
		-0.945219, 0.105400, 0.308954,
		-0.220405, -0.904203, -0.365840,
		40.234066, 29.718630, 26.449215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.881756, 29.959335, 27.114998>,  <40.388348, 30.351572, 26.705303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.881756, 29.959335, 27.114998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.078102, 29.662762, 26.931988>,  <40.195911, 29.484818, 26.822182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.078102, 29.662762, 26.931988>,  <39.881756, 29.959335, 27.114998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.078102, 29.662762, 26.931988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045810, -0.502453, 0.863390,
		-0.870029, -0.444769, -0.212673,
		0.490867, -0.741432, -0.457524,
		40.225361, 29.440332, 26.794731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.700344, 29.356321, 27.440084>,  <39.881756, 29.959335, 27.114998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.700344, 29.356321, 27.440084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.027157, 29.216652, 27.256550>,  <40.223244, 29.132851, 27.146429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.027157, 29.216652, 27.256550>,  <39.700344, 29.356321, 27.440084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.027157, 29.216652, 27.256550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119640, -0.675797, 0.727314,
		-0.564038, -0.649137, -0.510375,
		0.817036, -0.349171, -0.458837,
		40.272266, 29.111900, 27.118898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.779751, 28.639606, 27.649214>,  <39.700344, 29.356321, 27.440084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.779751, 28.639606, 27.649214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.142151, 28.728573, 27.505161>,  <40.359592, 28.781954, 27.418730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.142151, 28.728573, 27.505161>,  <39.779751, 28.639606, 27.649214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.142151, 28.728573, 27.505161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421335, -0.392436, 0.817600,
		0.040520, -0.892482, -0.449259,
		0.905999, 0.222418, -0.360133,
		40.413952, 28.795298, 27.397121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.248299, 28.050259, 27.743971>,  <39.779751, 28.639606, 27.649214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.248299, 28.050259, 27.743971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.486923, 28.370567, 27.722519>,  <40.630096, 28.562754, 27.709648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.486923, 28.370567, 27.722519>,  <40.248299, 28.050259, 27.743971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.486923, 28.370567, 27.722519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495671, -0.315060, 0.809350,
		0.631210, -0.509410, -0.584872,
		0.596561, 0.800774, -0.053631,
		40.665890, 28.610800, 27.706430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.858082, 27.776081, 27.967712>,  <40.248299, 28.050259, 27.743971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.858082, 27.776081, 27.967712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.929031, 28.165226, 28.027145>,  <40.971603, 28.398712, 28.062805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.929031, 28.165226, 28.027145>,  <40.858082, 27.776081, 27.967712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.929031, 28.165226, 28.027145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225714, -0.187167, 0.956045,
		0.957909, -0.136044, -0.252788,
		0.177378, 0.972862, 0.148582,
		40.982246, 28.457085, 28.071720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.582691, 27.838400, 28.171230>,  <40.858082, 27.776081, 27.967712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.582691, 27.838400, 28.171230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.378349, 28.162197, 28.286983>,  <41.255745, 28.356476, 28.356436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.378349, 28.162197, 28.286983>,  <41.582691, 27.838400, 28.171230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.378349, 28.162197, 28.286983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316569, -0.135827, 0.938794,
		0.799256, 0.571199, -0.186873,
		-0.510856, 0.809495, 0.289385,
		41.225094, 28.405046, 28.373798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.013401, 28.008404, 28.601177>,  <41.582691, 27.838400, 28.171230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.013401, 28.008404, 28.601177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.677029, 28.200542, 28.700863>,  <41.475204, 28.315826, 28.760674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.677029, 28.200542, 28.700863>,  <42.013401, 28.008404, 28.601177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.677029, 28.200542, 28.700863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197119, -0.156988, 0.967729,
		0.503969, 0.862915, 0.037330,
		-0.840928, 0.480347, 0.249214,
		41.424751, 28.344646, 28.775627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.205875, 28.410755, 29.125427>,  <42.013401, 28.008404, 28.601177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.205875, 28.410755, 29.125427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.810173, 28.374893, 29.171635>,  <41.572754, 28.353376, 29.199358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.810173, 28.374893, 29.171635>,  <42.205875, 28.410755, 29.125427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.810173, 28.374893, 29.171635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113821, 0.023822, 0.993216,
		-0.091797, 0.995688, -0.013361,
		-0.989251, -0.089653, 0.115517,
		41.513397, 28.347998, 29.206289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.004917, 28.992907, 29.568964>,  <42.205875, 28.410755, 29.125427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.004917, 28.992907, 29.568964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.711845, 28.722561, 29.600937>,  <41.536003, 28.560354, 29.620121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.711845, 28.722561, 29.600937>,  <42.004917, 28.992907, 29.568964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.711845, 28.722561, 29.600937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047897, 0.065954, 0.996673,
		-0.678885, 0.734071, -0.015951,
		-0.732681, -0.675862, 0.079934,
		41.492043, 28.519802, 29.624918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.654320, 29.125755, 30.177544>,  <42.004917, 28.992907, 29.568964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.654320, 29.125755, 30.177544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.534615, 28.752308, 30.098759>,  <41.462791, 28.528238, 30.051487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.534615, 28.752308, 30.098759>,  <41.654320, 29.125755, 30.177544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.534615, 28.752308, 30.098759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010447, -0.209617, 0.977728,
		-0.954114, 0.290539, 0.072484,
		-0.299262, -0.933621, -0.196964,
		41.444836, 28.472221, 30.039669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.910801, 29.052927, 30.368620>,  <41.654320, 29.125755, 30.177544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.910801, 29.052927, 30.368620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.147385, 28.733002, 30.409554>,  <41.289333, 28.541046, 30.434114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.147385, 28.733002, 30.409554>,  <40.910801, 29.052927, 30.368620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.147385, 28.733002, 30.409554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180860, -0.007910, 0.983477,
		-0.785791, -0.600194, -0.149333,
		0.591458, -0.799815, 0.102335,
		41.324821, 28.493057, 30.440254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.599640, 28.295662, 30.683193>,  <40.910801, 29.052927, 30.368620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.599640, 28.295662, 30.683193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.984028, 28.355209, 30.776470>,  <41.214661, 28.390938, 30.832436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.984028, 28.355209, 30.776470>,  <40.599640, 28.295662, 30.683193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.984028, 28.355209, 30.776470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231746, -0.027235, 0.972395,
		0.151111, -0.988482, 0.008328,
		0.960968, 0.148869, 0.233192,
		41.272320, 28.399870, 30.846428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.815918, 27.803579, 31.134108>,  <40.599640, 28.295662, 30.683193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.815918, 27.803579, 31.134108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.087395, 28.093967, 31.178547>,  <41.250282, 28.268200, 31.205210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.087395, 28.093967, 31.178547>,  <40.815918, 27.803579, 31.134108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.087395, 28.093967, 31.178547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023256, -0.129954, 0.991247,
		0.734053, -0.675337, -0.071316,
		0.678694, 0.725970, 0.111099,
		41.291004, 28.311758, 31.211876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.118042, 27.549742, 31.208252>,  <40.815918, 27.803579, 31.134108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.118042, 27.549742, 31.208252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.786541, 27.343590, 31.295483>,  <39.587643, 27.219898, 31.347822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.786541, 27.343590, 31.295483>,  <40.118042, 27.549742, 31.208252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.786541, 27.343590, 31.295483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508588, 0.531057, -0.677729,
		0.233474, -0.672580, -0.702229,
		-0.828751, -0.515377, 0.218078,
		39.537914, 27.188976, 31.360907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.710403, 27.289948, 30.599827>,  <40.118042, 27.549742, 31.208252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.710403, 27.289948, 30.599827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.440628, 27.293434, 30.895138>,  <39.278763, 27.295527, 31.072325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.440628, 27.293434, 30.895138>,  <39.710403, 27.289948, 30.599827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.440628, 27.293434, 30.895138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606613, 0.563478, -0.560814,
		-0.420891, -0.826085, -0.374745,
		-0.674441, 0.008717, 0.738277,
		39.238297, 27.296049, 31.116621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.967548, 26.992422, 30.365454>,  <39.710403, 27.289948, 30.599827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.967548, 26.992422, 30.365454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.981079, 27.259502, 30.662918>,  <38.989197, 27.419750, 30.841396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.981079, 27.259502, 30.662918>,  <38.967548, 26.992422, 30.365454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.981079, 27.259502, 30.662918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665350, 0.570273, -0.481765,
		-0.745765, -0.478499, 0.463544,
		0.033823, 0.667703, 0.743659,
		38.991226, 27.459814, 30.886015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.559040, 27.665062, 30.535542>,  <38.967548, 26.992422, 30.365454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.559040, 27.665062, 30.535542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.487480, 28.027393, 30.689148>,  <38.444546, 28.244793, 30.781313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.487480, 28.027393, 30.689148>,  <38.559040, 27.665062, 30.535542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.487480, 28.027393, 30.689148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659729, 0.179115, -0.729846,
		-0.729899, -0.383918, 0.565557,
		-0.178901, 0.905828, 0.384017,
		38.433811, 28.299141, 30.804354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.765957, 27.673943, 30.643522>,  <38.559040, 27.665062, 30.535542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.765957, 27.673943, 30.643522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.936432, 28.028641, 30.571918>,  <38.038719, 28.241459, 30.528955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.936432, 28.028641, 30.571918>,  <37.765957, 27.673943, 30.643522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.936432, 28.028641, 30.571918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640246, 0.155869, -0.752190,
		-0.639099, 0.435187, 0.634165,
		0.426190, 0.886745, -0.179011,
		38.064289, 28.294664, 30.518215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.248959, 28.224207, 30.433210>,  <37.765957, 27.673943, 30.643522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.248959, 28.224207, 30.433210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.588478, 28.377861, 30.287891>,  <37.792191, 28.470053, 30.200701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.588478, 28.377861, 30.287891>,  <37.248959, 28.224207, 30.433210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.588478, 28.377861, 30.287891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494945, 0.335643, -0.801482,
		-0.185940, 0.860107, 0.475018,
		0.848797, 0.384135, -0.363296,
		37.843117, 28.493101, 30.178902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.216564, 28.999687, 30.311460>,  <37.248959, 28.224207, 30.433210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.216564, 28.999687, 30.311460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.475594, 28.820675, 30.064766>,  <37.631012, 28.713268, 29.916748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.475594, 28.820675, 30.064766>,  <37.216564, 28.999687, 30.311460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.475594, 28.820675, 30.064766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462098, 0.412920, -0.784833,
		0.605899, 0.793231, 0.060594,
		0.647574, -0.447529, -0.616738,
		37.669865, 28.686417, 29.879744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.433994, 29.486561, 29.825546>,  <37.216564, 28.999687, 30.311460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.433994, 29.486561, 29.825546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.518929, 29.127834, 29.670300>,  <37.569889, 28.912600, 29.577150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.518929, 29.127834, 29.670300>,  <37.433994, 29.486561, 29.825546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.518929, 29.127834, 29.670300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423225, 0.273594, -0.863728,
		0.880791, 0.347663, -0.321461,
		0.212337, -0.896815, -0.388119,
		37.582630, 28.858789, 29.553864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.884056, 29.568808, 29.308538>,  <37.433994, 29.486561, 29.825546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.884056, 29.568808, 29.308538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.691391, 29.229355, 29.221062>,  <37.575790, 29.025684, 29.168575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.691391, 29.229355, 29.221062>,  <37.884056, 29.568808, 29.308538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.691391, 29.229355, 29.221062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356993, 0.417907, -0.835410,
		0.800347, -0.324316, -0.504246,
		-0.481665, -0.848630, -0.218692,
		37.546890, 28.974766, 29.155455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.934528, 29.531229, 28.567787>,  <37.884056, 29.568808, 29.308538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.934528, 29.531229, 28.567787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.634384, 29.275269, 28.634109>,  <37.454300, 29.121693, 28.673903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.634384, 29.275269, 28.634109>,  <37.934528, 29.531229, 28.567787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.634384, 29.275269, 28.634109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310890, 0.120258, -0.942807,
		0.583364, -0.758988, -0.289176,
		-0.750356, -0.639902, 0.165807,
		37.409279, 29.083298, 28.683851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.883518, 29.102667, 27.928013>,  <37.934528, 29.531229, 28.567787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.883518, 29.102667, 27.928013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.537281, 29.064159, 28.124573>,  <37.329536, 29.041056, 28.242510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.537281, 29.064159, 28.124573>,  <37.883518, 29.102667, 27.928013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.537281, 29.064159, 28.124573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500289, 0.124540, -0.856855,
		0.021284, -0.987534, -0.155960,
		-0.865597, -0.096262, 0.491402,
		37.277603, 29.035280, 28.271994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.602283, 28.469503, 27.676737>,  <37.883518, 29.102667, 27.928013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.602283, 28.469503, 27.676737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.321812, 28.718121, 27.816471>,  <37.153530, 28.867290, 27.900311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.321812, 28.718121, 27.816471>,  <37.602283, 28.469503, 27.676737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.321812, 28.718121, 27.816471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469021, -0.033072, -0.882567,
		-0.537001, -0.782681, 0.314707,
		-0.701177, 0.621543, 0.349334,
		37.111458, 28.904583, 27.921272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.970345, 28.205744, 27.352625>,  <37.602283, 28.469503, 27.676737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.970345, 28.205744, 27.352625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.906628, 28.574570, 27.493717>,  <36.868397, 28.795866, 27.578373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.906628, 28.574570, 27.493717>,  <36.970345, 28.205744, 27.352625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.906628, 28.574570, 27.493717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439808, 0.253598, -0.861543,
		-0.883852, -0.292374, 0.365135,
		-0.159296, 0.922066, 0.352732,
		36.858837, 28.851189, 27.599537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.330814, 28.388271, 27.164829>,  <36.970345, 28.205744, 27.352625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.330814, 28.388271, 27.164829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.472599, 28.755676, 27.234905>,  <36.557671, 28.976120, 27.276951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.472599, 28.755676, 27.234905>,  <36.330814, 28.388271, 27.164829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.472599, 28.755676, 27.234905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359788, 0.306901, -0.881115,
		-0.863081, 0.249292, 0.439255,
		0.354463, 0.918512, 0.175188,
		36.578938, 29.031231, 27.287462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.874043, 28.766243, 26.820820>,  <36.330814, 28.388271, 27.164829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.874043, 28.766243, 26.820820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.155109, 29.042038, 26.891094>,  <36.323750, 29.207516, 26.933258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.155109, 29.042038, 26.891094>,  <35.874043, 28.766243, 26.820820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.155109, 29.042038, 26.891094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286662, 0.500319, -0.817010,
		-0.651219, 0.523722, 0.549207,
		0.702665, 0.689490, 0.175686,
		36.365910, 29.248884, 26.943800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.612583, 29.435637, 26.646797>,  <35.874043, 28.766243, 26.820820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.612583, 29.435637, 26.646797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.005501, 29.509399, 26.633583>,  <36.241253, 29.553658, 26.625654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.005501, 29.509399, 26.633583>,  <35.612583, 29.435637, 26.646797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.005501, 29.509399, 26.633583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126228, 0.521184, -0.844058,
		-0.138431, 0.833284, 0.535233,
		0.982295, 0.184405, -0.033036,
		36.300190, 29.564720, 26.623672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.625843, 30.113327, 26.416998>,  <35.612583, 29.435637, 26.646797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.625843, 30.113327, 26.416998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.987385, 29.957920, 26.345322>,  <36.204308, 29.864676, 26.302317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.987385, 29.957920, 26.345322>,  <35.625843, 30.113327, 26.416998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.987385, 29.957920, 26.345322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103666, 0.605199, -0.789295,
		0.415101, 0.694829, 0.587285,
		0.903850, -0.388519, -0.179189,
		36.258541, 29.841364, 26.291565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.086094, 30.680750, 26.457012>,  <35.625843, 30.113327, 26.416998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.086094, 30.680750, 26.457012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.236614, 30.387489, 26.230423>,  <36.326927, 30.211533, 26.094469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.236614, 30.387489, 26.230423>,  <36.086094, 30.680750, 26.457012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.236614, 30.387489, 26.230423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194880, 0.660366, -0.725216,
		0.905771, 0.162504, 0.391372,
		0.376299, -0.733150, -0.566472,
		36.349503, 30.167543, 26.060482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.801537, 30.894773, 26.070307>,  <36.086094, 30.680750, 26.457012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.801537, 30.894773, 26.070307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.668999, 30.575298, 25.869385>,  <36.589478, 30.383614, 25.748831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.668999, 30.575298, 25.869385>,  <36.801537, 30.894773, 26.070307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.668999, 30.575298, 25.869385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164127, 0.475472, -0.864285,
		0.929125, -0.368817, -0.026459,
		-0.331343, -0.798687, -0.502306,
		36.569595, 30.335691, 25.718693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.366577, 30.840677, 25.578480>,  <36.801537, 30.894773, 26.070307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.366577, 30.840677, 25.578480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.078957, 30.614830, 25.416409>,  <36.906384, 30.479322, 25.319166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.078957, 30.614830, 25.416409>,  <37.366577, 30.840677, 25.578480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.078957, 30.614830, 25.416409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149667, 0.443530, -0.883674,
		0.678646, -0.696052, -0.234418,
		-0.719055, -0.564617, -0.405177,
		36.863239, 30.445444, 25.294855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.527985, 30.881283, 24.934637>,  <37.366577, 30.840677, 25.578480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.527985, 30.881283, 24.934637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.195847, 30.680340, 24.838165>,  <36.996563, 30.559774, 24.780283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.195847, 30.680340, 24.838165>,  <37.527985, 30.881283, 24.934637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.195847, 30.680340, 24.838165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096282, 0.296958, -0.950024,
		0.548872, -0.812067, -0.198209,
		-0.830343, -0.502358, -0.241180,
		36.946743, 30.529633, 24.765812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742367, 30.535147, 24.406984>,  <37.527985, 30.881283, 24.934637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.742367, 30.535147, 24.406984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.349163, 30.607494, 24.394463>,  <37.113239, 30.650904, 24.386950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.349163, 30.607494, 24.394463>,  <37.742367, 30.535147, 24.406984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.349163, 30.607494, 24.394463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069962, 0.211504, -0.974870,
		-0.169704, -0.960496, -0.220564,
		-0.983009, 0.180871, -0.031305,
		37.054260, 30.661755, 24.385071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.449913, 30.190548, 23.838705>,  <37.742367, 30.535147, 24.406984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.449913, 30.190548, 23.838705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.205585, 30.499653, 23.907688>,  <37.058990, 30.685116, 23.949078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.205585, 30.499653, 23.907688>,  <37.449913, 30.190548, 23.838705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.205585, 30.499653, 23.907688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140989, 0.320484, -0.936703,
		-0.779120, -0.547837, -0.304707,
		-0.610814, 0.772764, 0.172456,
		37.022343, 30.731482, 23.959425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.144478, 30.254782, 23.195959>,  <37.449913, 30.190548, 23.838705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.144478, 30.254782, 23.195959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.022579, 30.594326, 23.368732>,  <36.949440, 30.798052, 23.472397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.022579, 30.594326, 23.368732>,  <37.144478, 30.254782, 23.195959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.022579, 30.594326, 23.368732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022280, 0.459736, -0.887776,
		-0.952172, -0.260925, -0.159016,
		-0.304748, 0.848859, 0.431934,
		36.931156, 30.848984, 23.498312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.622631, 30.482958, 22.714375>,  <37.144478, 30.254782, 23.195959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.622631, 30.482958, 22.714375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.749371, 30.777031, 22.954079>,  <36.825417, 30.953474, 23.097900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.749371, 30.777031, 22.954079>,  <36.622631, 30.482958, 22.714375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.749371, 30.777031, 22.954079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001647, 0.631386, -0.775467,
		-0.948474, 0.246695, 0.198845,
		0.316852, 0.735182, 0.599259,
		36.844425, 30.997585, 23.133856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.137146, 31.004696, 22.750259>,  <36.622631, 30.482958, 22.714375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.137146, 31.004696, 22.750259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.500946, 31.160389, 22.808651>,  <36.719227, 31.253805, 22.843685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.500946, 31.160389, 22.808651>,  <36.137146, 31.004696, 22.750259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.500946, 31.160389, 22.808651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070520, 0.490528, -0.868567,
		-0.409681, 0.779667, 0.473583,
		0.909499, 0.389233, 0.145978,
		36.773796, 31.277159, 22.852444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.106735, 31.578222, 22.326101>,  <36.137146, 31.004696, 22.750259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.106735, 31.578222, 22.326101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.495461, 31.605034, 22.416504>,  <36.728695, 31.621120, 22.470745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.495461, 31.605034, 22.416504>,  <36.106735, 31.578222, 22.326101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.495461, 31.605034, 22.416504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132183, 0.638879, -0.757866,
		-0.195189, 0.766382, 0.612013,
		0.971817, 0.067030, 0.226005,
		36.787006, 31.625143, 22.484306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.333385, 32.388588, 22.425013>,  <36.106735, 31.578222, 22.326101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.333385, 32.388588, 22.425013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.602608, 32.127697, 22.285530>,  <36.764141, 31.971163, 22.201841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.602608, 32.127697, 22.285530>,  <36.333385, 32.388588, 22.425013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.602608, 32.127697, 22.285530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371653, 0.705898, -0.602977,
		0.639429, 0.276240, 0.717511,
		0.673056, -0.652227, -0.348707,
		36.804523, 31.932030, 22.180918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.078041, 32.862892, 22.078316>,  <36.333385, 32.388588, 22.425013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.078041, 32.862892, 22.078316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.720516, 32.989994, 21.951740>,  <35.506001, 33.066254, 21.875795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.720516, 32.989994, 21.951740>,  <36.078041, 32.862892, 22.078316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.720516, 32.989994, 21.951740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325339, 0.026180, 0.945235,
		0.308637, 0.947812, 0.079977,
		-0.893811, 0.317754, -0.316440,
		35.452374, 33.085320, 21.856808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.837723, 33.497761, 22.472206>,  <36.078041, 32.862892, 22.078316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.837723, 33.497761, 22.472206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.534912, 33.283398, 22.322689>,  <35.353226, 33.154781, 22.232979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.534912, 33.283398, 22.322689>,  <35.837723, 33.497761, 22.472206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.534912, 33.283398, 22.322689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318794, -0.196423, 0.927248,
		-0.570339, 0.821111, -0.022146,
		-0.757023, -0.535905, -0.373793,
		35.307804, 33.122627, 22.210550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.379505, 33.725414, 22.934881>,  <35.837723, 33.497761, 22.472206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.379505, 33.725414, 22.934881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.258480, 33.392303, 22.749435>,  <35.185867, 33.192436, 22.638168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.258480, 33.392303, 22.749435>,  <35.379505, 33.725414, 22.934881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.258480, 33.392303, 22.749435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623324, -0.195095, 0.757235,
		-0.721058, 0.518091, -0.460062,
		-0.302561, -0.832778, -0.463614,
		35.167713, 33.142471, 22.610352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.668968, 33.722805, 23.006937>,  <35.379505, 33.725414, 22.934881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.668968, 33.722805, 23.006937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.840740, 33.362103, 22.987202>,  <34.943802, 33.145683, 22.975361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.840740, 33.362103, 22.987202>,  <34.668968, 33.722805, 23.006937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.840740, 33.362103, 22.987202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481057, -0.274638, 0.832561,
		-0.764313, -0.333791, -0.551732,
		0.429428, -0.901752, -0.049337,
		34.969570, 33.091576, 22.972401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.157314, 33.174465, 23.225092>,  <34.668968, 33.722805, 23.006937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.157314, 33.174465, 23.225092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.530922, 33.085526, 23.336933>,  <34.755085, 33.032162, 23.404037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.530922, 33.085526, 23.336933>,  <34.157314, 33.174465, 23.225092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.530922, 33.085526, 23.336933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357206, -0.571340, 0.738901,
		-0.004545, -0.790020, -0.613064,
		0.934015, -0.222349, 0.279603,
		34.811127, 33.018822, 23.420815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.366283, 32.331711, 23.155643>,  <34.157314, 33.174465, 23.225092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.366283, 32.331711, 23.155643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.567078, 32.545166, 23.427891>,  <34.687553, 32.673241, 23.591240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.567078, 32.545166, 23.427891>,  <34.366283, 32.331711, 23.155643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.567078, 32.545166, 23.427891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387676, -0.564632, 0.728628,
		0.773125, -0.629616, -0.076554,
		0.501981, 0.533642, 0.680618,
		34.717670, 32.705257, 23.632076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.886677, 31.915466, 23.529978>,  <34.366283, 32.331711, 23.155643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.886677, 31.915466, 23.529978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.675446, 32.167297, 23.757931>,  <34.548706, 32.318398, 23.894703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.675446, 32.167297, 23.757931>,  <34.886677, 31.915466, 23.529978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.675446, 32.167297, 23.757931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202637, -0.745120, 0.635401,
		0.824667, 0.220061, 0.521056,
		-0.528076, 0.629579, 0.569883,
		34.517021, 32.356171, 23.928896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.100750, 31.903353, 24.270269>,  <34.886677, 31.915466, 23.529978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.100750, 31.903353, 24.270269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.715645, 32.008415, 24.244656>,  <34.484581, 32.071453, 24.229288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.715645, 32.008415, 24.244656>,  <35.100750, 31.903353, 24.270269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.715645, 32.008415, 24.244656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256270, -0.811220, 0.525593,
		0.086105, 0.522431, 0.848323,
		-0.962762, 0.262656, -0.064033,
		34.426815, 32.087212, 24.225445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.801785, 31.672068, 24.858746>,  <35.100750, 31.903353, 24.270269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.801785, 31.672068, 24.858746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.467003, 31.764660, 24.660381>,  <34.266136, 31.820215, 24.541363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.467003, 31.764660, 24.660381>,  <34.801785, 31.672068, 24.858746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.467003, 31.764660, 24.660381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512028, -0.651146, 0.560211,
		-0.193231, 0.722789, 0.663504,
		-0.836952, 0.231482, -0.495910,
		34.215916, 31.834105, 24.511608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.319939, 31.788395, 25.310581>,  <34.801785, 31.672068, 24.858746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.319939, 31.788395, 25.310581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.101425, 31.699635, 24.987511>,  <33.970318, 31.646378, 24.793669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.101425, 31.699635, 24.987511>,  <34.319939, 31.788395, 25.310581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.101425, 31.699635, 24.987511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551646, -0.630290, 0.546280,
		-0.630290, 0.743972, 0.221903,
		-0.546280, -0.221903, -0.807674,
		33.937542, 31.633064, 24.745209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.599537, 31.689457, 25.595518>,  <34.319939, 31.788395, 25.310581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.599537, 31.689457, 25.595518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.568241, 31.508938, 25.239944>,  <33.549461, 31.400625, 25.026600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.568241, 31.508938, 25.239944>,  <33.599537, 31.689457, 25.595518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.568241, 31.508938, 25.239944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683971, -0.624417, 0.377210,
		-0.725301, 0.637521, -0.259818,
		-0.078244, -0.451299, -0.888936,
		33.544769, 31.373549, 24.973263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.949020, 31.609642, 25.535437>,  <33.599537, 31.689457, 25.595518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.949020, 31.609642, 25.535437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.102577, 31.348068, 25.274670>,  <33.194710, 31.191124, 25.118210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.102577, 31.348068, 25.274670>,  <32.949020, 31.609642, 25.535437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.102577, 31.348068, 25.274670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600330, -0.713191, 0.361887,
		-0.701593, 0.252441, -0.666364,
		0.383890, -0.653935, -0.651918,
		33.217743, 31.151888, 25.079094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.396236, 31.207344, 25.278795>,  <32.949020, 31.609642, 25.535437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.396236, 31.207344, 25.278795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.721367, 30.985104, 25.208797>,  <32.916447, 30.851759, 25.166800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.721367, 30.985104, 25.208797>,  <32.396236, 31.207344, 25.278795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.721367, 30.985104, 25.208797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459746, -0.796368, 0.392978,
		-0.357696, -0.238971, -0.902744,
		0.812827, -0.555599, -0.174992,
		32.965214, 30.818424, 25.156300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.065491, 30.586397, 24.947561>,  <32.396236, 31.207344, 25.278795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.065491, 30.586397, 24.947561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.424751, 30.495789, 25.098301>,  <32.640308, 30.441423, 25.188745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.424751, 30.495789, 25.098301>,  <32.065491, 30.586397, 24.947561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.424751, 30.495789, 25.098301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313236, -0.931112, 0.186854,
		0.308563, -0.285866, -0.907232,
		0.898149, -0.226521, 0.376850,
		32.694195, 30.427832, 25.211355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.080692, 29.858997, 24.900827>,  <32.065491, 30.586397, 24.947561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.080692, 29.858997, 24.900827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.375664, 29.925606, 25.162659>,  <32.552647, 29.965570, 25.319757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.375664, 29.925606, 25.162659>,  <32.080692, 29.858997, 24.900827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.375664, 29.925606, 25.162659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280983, -0.805658, 0.521502,
		0.614208, -0.568495, -0.547323,
		0.737426, 0.166522, 0.654578,
		32.596893, 29.975563, 25.359032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.308693, 29.159859, 25.042231>,  <32.080692, 29.858997, 24.900827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.308693, 29.159859, 25.042231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.466263, 29.383556, 25.334003>,  <32.560802, 29.517775, 25.509068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.466263, 29.383556, 25.334003>,  <32.308693, 29.159859, 25.042231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.466263, 29.383556, 25.334003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193691, -0.725270, 0.660657,
		0.898504, -0.401531, -0.177378,
		0.393921, 0.559246, 0.729431,
		32.584438, 29.551331, 25.552834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.968624, 28.835009, 25.249266>,  <32.308693, 29.159859, 25.042231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.968624, 28.835009, 25.249266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.845848, 29.046391, 25.565880>,  <32.772182, 29.173220, 25.755848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.845848, 29.046391, 25.565880>,  <32.968624, 28.835009, 25.249266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.845848, 29.046391, 25.565880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043912, -0.838657, 0.542886,
		0.950716, 0.131875, 0.280622,
		-0.306939, 0.528453, 0.791534,
		32.753765, 29.204926, 25.803341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.387585, 28.673031, 25.786566>,  <32.968624, 28.835009, 25.249266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.387585, 28.673031, 25.786566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.070602, 28.814880, 25.985062>,  <32.880413, 28.899990, 26.104158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.070602, 28.814880, 25.985062>,  <33.387585, 28.673031, 25.786566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.070602, 28.814880, 25.985062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013484, -0.803219, 0.595531,
		0.609777, 0.478625, 0.631736,
		-0.792458, 0.354623, 0.496238,
		32.832867, 28.921267, 26.133934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.470394, 28.455515, 26.466419>,  <33.387585, 28.673031, 25.786566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.470394, 28.455515, 26.466419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.081131, 28.547565, 26.466450>,  <32.847572, 28.602795, 26.466469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.081131, 28.547565, 26.466450>,  <33.470394, 28.455515, 26.466419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.081131, 28.547565, 26.466450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169144, -0.715511, 0.677816,
		0.156037, 0.659612, 0.735231,
		-0.973161, 0.230124, 0.000077,
		32.789181, 28.616602, 26.466473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.238014, 28.076212, 27.022774>,  <33.470394, 28.455515, 26.466419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.238014, 28.076212, 27.022774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.882580, 28.194733, 26.882710>,  <32.669319, 28.265846, 26.798672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.882580, 28.194733, 26.882710>,  <33.238014, 28.076212, 27.022774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.882580, 28.194733, 26.882710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448490, -0.721391, 0.527685,
		-0.096246, 0.625939, 0.773911,
		-0.888591, 0.296304, -0.350158,
		32.616001, 28.283625, 26.777662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.800663, 28.434158, 27.562698>,  <33.238014, 28.076212, 27.022774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.800663, 28.434158, 27.562698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.555546, 28.263245, 27.296791>,  <32.408474, 28.160696, 27.137247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.555546, 28.263245, 27.296791>,  <32.800663, 28.434158, 27.562698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.555546, 28.263245, 27.296791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366491, -0.591620, 0.718102,
		-0.700122, 0.683678, 0.205945,
		-0.612792, -0.427282, -0.664768,
		32.371708, 28.135059, 27.097361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.242355, 28.281843, 27.905582>,  <32.800663, 28.434158, 27.562698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.242355, 28.281843, 27.905582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.166649, 28.030571, 27.603703>,  <32.121227, 27.879808, 27.422575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.166649, 28.030571, 27.603703>,  <32.242355, 28.281843, 27.905582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.166649, 28.030571, 27.603703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419027, -0.643422, 0.640644,
		-0.888029, 0.437490, -0.141448,
		-0.189265, -0.628180, -0.754698,
		32.109871, 27.842117, 27.377293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.652605, 27.911781, 28.150644>,  <32.242355, 28.281843, 27.905582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.652605, 27.911781, 28.150644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.812128, 27.686031, 27.861526>,  <31.907843, 27.550581, 27.688055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.812128, 27.686031, 27.861526>,  <31.652605, 27.911781, 28.150644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.812128, 27.686031, 27.861526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311079, -0.824713, 0.472312,
		-0.862659, 0.036484, -0.504469,
		0.398810, -0.564374, -0.722795,
		31.931770, 27.516720, 27.644688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.142145, 27.447083, 28.021992>,  <31.652605, 27.911781, 28.150644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.142145, 27.447083, 28.021992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.499357, 27.303898, 27.912914>,  <31.713684, 27.217987, 27.847467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.499357, 27.303898, 27.912914>,  <31.142145, 27.447083, 28.021992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.499357, 27.303898, 27.912914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184196, -0.843677, 0.504262,
		-0.410571, -0.400092, -0.819364,
		0.893030, -0.357959, -0.272694,
		31.767265, 27.196510, 27.831106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.992535, 26.806149, 27.900244>,  <31.142145, 27.447083, 28.021992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.992535, 26.806149, 27.900244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.390657, 26.824596, 27.934277>,  <31.629532, 26.835665, 27.954697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.390657, 26.824596, 27.934277>,  <30.992535, 26.806149, 27.900244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.390657, 26.824596, 27.934277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012924, -0.934619, 0.355415,
		0.095910, -0.352647, -0.930828,
		0.995306, 0.046118, 0.085082,
		31.689249, 26.838432, 27.959801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.223913, 26.057455, 27.829315>,  <30.992535, 26.806149, 27.900244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.223913, 26.057455, 27.829315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.507704, 26.272507, 28.011566>,  <31.677979, 26.401537, 28.120916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.507704, 26.272507, 28.011566>,  <31.223913, 26.057455, 27.829315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.507704, 26.272507, 28.011566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125516, -0.732595, 0.668992,
		0.693459, -0.417447, -0.587241,
		0.709478, 0.537627, 0.455628,
		31.720547, 26.433794, 28.148254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.768383, 25.588934, 27.947916>,  <31.223913, 26.057455, 27.829315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.768383, 25.588934, 27.947916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.791040, 25.896294, 28.202900>,  <31.804634, 26.080709, 28.355890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.791040, 25.896294, 28.202900>,  <31.768383, 25.588934, 27.947916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.791040, 25.896294, 28.202900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109075, -0.639424, 0.761078,
		0.992419, 0.026422, -0.120031,
		0.056642, 0.768400, 0.637459,
		31.808033, 26.126814, 28.394138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.955742, 25.320227, 28.534843>,  <31.768383, 25.588934, 27.947916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.955742, 25.320227, 28.534843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.885298, 25.670132, 28.715408>,  <31.843031, 25.880075, 28.823748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.885298, 25.670132, 28.715408>,  <31.955742, 25.320227, 28.534843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.885298, 25.670132, 28.715408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229514, -0.482430, 0.845331,
		0.957240, 0.045266, 0.285731,
		-0.176110, 0.874764, 0.451413,
		31.832464, 25.932560, 28.850832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.223602, 25.202335, 29.235298>,  <31.955742, 25.320227, 28.534843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.223602, 25.202335, 29.235298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.992033, 25.525299, 29.280800>,  <31.853092, 25.719078, 29.308102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.992033, 25.525299, 29.280800>,  <32.223602, 25.202335, 29.235298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.992033, 25.525299, 29.280800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258183, -0.313848, 0.913696,
		0.773430, 0.499586, 0.390152,
		-0.578919, 0.807411, 0.113755,
		31.818357, 25.767523, 29.314926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.388985, 25.430559, 29.837082>,  <32.223602, 25.202335, 29.235298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.388985, 25.430559, 29.837082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.023438, 25.577591, 29.768116>,  <31.804110, 25.665810, 29.726736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.023438, 25.577591, 29.768116>,  <32.388985, 25.430559, 29.837082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.023438, 25.577591, 29.768116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309955, -0.357343, 0.881041,
		0.262242, 0.858598, 0.440498,
		-0.913869, 0.367581, -0.172417,
		31.749277, 25.687864, 29.716391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.224812, 25.868376, 30.438604>,  <32.388985, 25.430559, 29.837082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.224812, 25.868376, 30.438604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.883383, 25.744144, 30.271290>,  <31.678526, 25.669605, 30.170902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.883383, 25.744144, 30.271290>,  <32.224812, 25.868376, 30.438604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.883383, 25.744144, 30.271290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372808, -0.196701, 0.906820,
		-0.363913, 0.929974, 0.052112,
		-0.853570, -0.310576, -0.418284,
		31.627312, 25.650972, 30.145805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.673431, 25.949669, 30.979919>,  <32.224812, 25.868376, 30.438604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.673431, 25.949669, 30.979919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.477261, 25.708542, 30.728176>,  <31.359558, 25.563866, 30.577129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.477261, 25.708542, 30.728176>,  <31.673431, 25.949669, 30.979919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.477261, 25.708542, 30.728176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576103, -0.317614, 0.753145,
		-0.653901, 0.731939, -0.191517,
		-0.490427, -0.602815, -0.629360,
		31.330132, 25.527697, 30.539368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.981258, 25.871229, 31.264149>,  <31.673431, 25.949669, 30.979919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.981258, 25.871229, 31.264149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.006359, 25.550388, 31.026596>,  <31.021420, 25.357883, 30.884064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.006359, 25.550388, 31.026596>,  <30.981258, 25.871229, 31.264149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.006359, 25.550388, 31.026596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402640, -0.564827, 0.720314,
		-0.913205, 0.193921, -0.358401,
		0.062750, -0.802100, -0.593883,
		31.025185, 25.309759, 30.848431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.271946, 25.644316, 31.078421>,  <30.981258, 25.871229, 31.264149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.271946, 25.644316, 31.078421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.517843, 25.333736, 31.022968>,  <30.665382, 25.147388, 30.989697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.517843, 25.333736, 31.022968>,  <30.271946, 25.644316, 31.078421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.517843, 25.333736, 31.022968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526317, -0.534741, 0.661092,
		-0.587437, -0.333437, -0.737386,
		0.614743, -0.776448, -0.138633,
		30.702267, 25.100801, 30.981379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.821594, 24.961199, 30.766602>,  <30.271946, 25.644316, 31.078421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.821594, 24.961199, 30.766602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.150446, 24.870354, 30.975418>,  <30.347757, 24.815847, 31.100708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.150446, 24.870354, 30.975418>,  <29.821594, 24.961199, 30.766602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.150446, 24.870354, 30.975418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568140, -0.385893, 0.726845,
		0.036375, -0.894151, -0.446286,
		0.822128, -0.227114, 0.522040,
		30.397085, 24.802219, 31.132030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.692312, 24.348410, 30.939089>,  <29.821594, 24.961199, 30.766602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.692312, 24.348410, 30.939089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.994179, 24.379086, 31.199734>,  <30.175299, 24.397491, 31.356121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.994179, 24.379086, 31.199734>,  <29.692312, 24.348410, 30.939089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.994179, 24.379086, 31.199734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549526, -0.468731, 0.691601,
		0.358469, -0.880006, -0.311592,
		0.754666, 0.076690, 0.651612,
		30.220579, 24.402092, 31.395218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.778448, 23.602951, 31.224899>,  <29.692312, 24.348410, 30.939089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.778448, 23.602951, 31.224899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.937563, 23.864578, 31.482258>,  <30.033031, 24.021555, 31.636673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.937563, 23.864578, 31.482258>,  <29.778448, 23.602951, 31.224899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.937563, 23.864578, 31.482258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547335, -0.393639, 0.738561,
		0.736335, -0.645944, 0.201410,
		0.397786, 0.654067, 0.643399,
		30.056898, 24.060799, 31.675278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.892090, 23.313349, 31.935902>,  <29.778448, 23.602951, 31.224899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.892090, 23.313349, 31.935902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.869560, 23.702309, 32.026470>,  <29.856043, 23.935684, 32.080811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.869560, 23.702309, 32.026470>,  <29.892090, 23.313349, 31.935902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.869560, 23.702309, 32.026470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454933, -0.226867, 0.861143,
		0.888743, -0.054505, 0.455155,
		-0.056323, 0.972400, 0.226423,
		29.852663, 23.994028, 32.094398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.810831, 23.212963, 32.602730>,  <29.892090, 23.313349, 31.935902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.810831, 23.212963, 32.602730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.799026, 23.612247, 32.581921>,  <29.791945, 23.851818, 32.569435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.799026, 23.612247, 32.581921>,  <29.810831, 23.212963, 32.602730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.799026, 23.612247, 32.581921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474858, 0.031802, 0.879487,
		0.879567, 0.050659, 0.473069,
		-0.029510, 0.998209, -0.052027,
		29.790174, 23.911711, 32.566311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.986345, 23.398218, 33.270481>,  <29.810831, 23.212963, 32.602730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.986345, 23.398218, 33.270481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.769920, 23.664883, 33.065418>,  <29.640066, 23.824883, 32.942383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.769920, 23.664883, 33.065418>,  <29.986345, 23.398218, 33.270481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.769920, 23.664883, 33.065418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631816, 0.080085, 0.770970,
		0.555033, 0.741044, 0.377878,
		-0.541061, 0.666663, -0.512653,
		29.607603, 23.864882, 32.911621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.922052, 24.086082, 33.700230>,  <29.986345, 23.398218, 33.270481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.922052, 24.086082, 33.700230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.620403, 24.021145, 33.445686>,  <29.439415, 23.982182, 33.292961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.620403, 24.021145, 33.445686>,  <29.922052, 24.086082, 33.700230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.620403, 24.021145, 33.445686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650140, 0.047559, 0.758324,
		-0.092844, 0.985588, -0.141411,
		-0.754120, -0.162343, -0.636355,
		29.394167, 23.972443, 33.254780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.505249, 24.762917, 33.928699>,  <29.922052, 24.086082, 33.700230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.505249, 24.762917, 33.928699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.294901, 24.487106, 33.729492>,  <29.168692, 24.321621, 33.609970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.294901, 24.487106, 33.729492>,  <29.505249, 24.762917, 33.928699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.294901, 24.487106, 33.729492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621043, -0.088800, 0.778730,
		-0.581176, 0.718799, -0.381526,
		-0.525870, -0.689523, -0.498014,
		29.137140, 24.280249, 33.580090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.867023, 25.003958, 33.832161>,  <29.505249, 24.762917, 33.928699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.867023, 25.003958, 33.832161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.818119, 24.607212, 33.817978>,  <28.788776, 24.369165, 33.809467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.818119, 24.607212, 33.817978>,  <28.867023, 25.003958, 33.832161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.818119, 24.607212, 33.817978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599769, 0.045372, 0.798886,
		-0.790778, 0.118937, -0.600436,
		-0.122261, -0.991865, -0.035455,
		28.781441, 24.309652, 33.807343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.109194, 24.824606, 33.974522>,  <28.867023, 25.003958, 33.832161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.109194, 24.824606, 33.974522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.295139, 24.471142, 33.996597>,  <28.406706, 24.259064, 34.009842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.295139, 24.471142, 33.996597>,  <28.109194, 24.824606, 33.974522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.295139, 24.471142, 33.996597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709465, -0.334484, 0.620306,
		-0.529681, -0.327512, -0.782415,
		0.464864, -0.883661, 0.055188,
		28.434599, 24.206043, 34.013153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.591484, 24.305105, 33.812504>,  <28.109194, 24.824606, 33.974522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.591484, 24.305105, 33.812504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.881947, 24.149708, 34.039402>,  <28.056225, 24.056469, 34.175541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.881947, 24.149708, 34.039402>,  <27.591484, 24.305105, 33.812504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.881947, 24.149708, 34.039402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674991, -0.245989, 0.695612,
		-0.130703, -0.888011, -0.440856,
		0.726157, -0.388492, 0.567248,
		28.099794, 24.033159, 34.209576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.235985, 23.934595, 34.246613>,  <27.591484, 24.305105, 33.812504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.235985, 23.934595, 34.246613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.596630, 23.897453, 34.415596>,  <27.813017, 23.875168, 34.516987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.596630, 23.897453, 34.415596>,  <27.235985, 23.934595, 34.246613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.596630, 23.897453, 34.415596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426442, -0.354282, 0.832245,
		0.072392, -0.930517, -0.359023,
		0.901613, -0.092855, 0.422458,
		27.867115, 23.869596, 34.542332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.308081, 23.278671, 34.547970>,  <27.235985, 23.934595, 34.246613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.308081, 23.278671, 34.547970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.563627, 23.518486, 34.740803>,  <27.716955, 23.662374, 34.856503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.563627, 23.518486, 34.740803>,  <27.308081, 23.278671, 34.547970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.563627, 23.518486, 34.740803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399741, -0.276710, 0.873864,
		0.657310, -0.750992, 0.062878,
		0.638866, 0.599535, 0.482087,
		27.755287, 23.698347, 34.885429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.602484, 22.953146, 35.031704>,  <27.308081, 23.278671, 34.547970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.602484, 22.953146, 35.031704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.626171, 23.329971, 35.163773>,  <27.640385, 23.556067, 35.243015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.626171, 23.329971, 35.163773>,  <27.602484, 22.953146, 35.031704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.626171, 23.329971, 35.163773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463911, -0.266892, 0.844722,
		0.883900, -0.203193, 0.421228,
		0.059219, 0.942062, 0.330170,
		27.643936, 23.612591, 35.262825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.118000, 22.730711, 35.411098>,  <27.602484, 22.953146, 35.031704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.118000, 22.730711, 35.411098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.892708, 23.043636, 35.517498>,  <27.757532, 23.231392, 35.581337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.892708, 23.043636, 35.517498>,  <28.118000, 22.730711, 35.411098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.892708, 23.043636, 35.517498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454156, -0.562019, 0.691286,
		0.690301, 0.268547, 0.671838,
		-0.563228, 0.782315, 0.266001,
		27.723740, 23.278332, 35.597298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.263281, 22.928194, 36.034466>,  <28.118000, 22.730711, 35.411098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.263281, 22.928194, 36.034466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.879019, 23.007496, 35.956661>,  <27.648462, 23.055077, 35.909977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.879019, 23.007496, 35.956661>,  <28.263281, 22.928194, 36.034466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.879019, 23.007496, 35.956661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272855, -0.542834, 0.794280,
		0.051881, 0.816104, 0.575572,
		-0.960655, 0.198256, -0.194515,
		27.590822, 23.066973, 35.898308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.726980, 23.305872, 36.517773>,  <28.263281, 22.928194, 36.034466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.726980, 23.305872, 36.517773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.716988, 23.683323, 36.385750>,  <28.710993, 23.909794, 36.306534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.716988, 23.683323, 36.385750>,  <28.726980, 23.305872, 36.517773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.716988, 23.683323, 36.385750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.885381, 0.132425, 0.445605,
		0.464195, 0.303361, 0.832163,
		-0.024980, 0.943629, -0.330061,
		28.709494, 23.966412, 36.286732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.713987, 23.800566, 36.999786>,  <28.726980, 23.305872, 36.517773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.713987, 23.800566, 36.999786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.513866, 23.932487, 36.679554>,  <28.393793, 24.011641, 36.487415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.513866, 23.932487, 36.679554>,  <28.713987, 23.800566, 36.999786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.513866, 23.932487, 36.679554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810020, 0.148368, 0.567322,
		0.305885, 0.932318, 0.192918,
		-0.500302, 0.329803, -0.800580,
		28.363775, 24.031429, 36.439381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.054590, 24.498806, 36.978222>,  <28.713987, 23.800566, 36.999786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.054590, 24.498806, 36.978222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.118538, 24.134758, 37.131126>,  <29.156906, 23.916328, 37.222870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.118538, 24.134758, 37.131126>,  <29.054590, 24.498806, 36.978222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.118538, 24.134758, 37.131126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485560, 0.409658, 0.772277,
		-0.859461, 0.062148, 0.507409,
		0.159869, -0.910120, 0.382262,
		29.166498, 23.861723, 37.245804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.848373, 24.601196, 37.703232>,  <29.054590, 24.498806, 36.978222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.848373, 24.601196, 37.703232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.088623, 24.281384, 37.702545>,  <29.232773, 24.089497, 37.702133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.088623, 24.281384, 37.702545>,  <28.848373, 24.601196, 37.703232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.088623, 24.281384, 37.702545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489246, 0.365836, 0.791709,
		-0.632368, -0.476358, 0.610896,
		0.600624, -0.799530, -0.001713,
		29.268810, 24.041525, 37.702030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.443171, 24.877234, 37.203438>,  <28.848373, 24.601196, 37.703232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.443171, 24.877234, 37.203438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.174158, 25.130199, 37.049686>,  <28.012751, 25.281979, 36.957436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.174158, 25.130199, 37.049686>,  <28.443171, 24.877234, 37.203438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.174158, 25.130199, 37.049686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395617, 0.746167, 0.535464,
		0.625450, 0.208048, -0.752016,
		-0.672532, 0.632416, -0.384383,
		27.972399, 25.319925, 36.934372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.157629, 24.841806, 37.856403>,  <28.443171, 24.877234, 37.203438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.157629, 24.841806, 37.856403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.267796, 25.217361, 37.938995>,  <28.333895, 25.442696, 37.988552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.267796, 25.217361, 37.938995>,  <28.157629, 24.841806, 37.856403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.267796, 25.217361, 37.938995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079280, 0.191871, -0.978213,
		-0.958051, 0.285785, -0.021591,
		0.275416, 0.938889, 0.206479,
		28.350420, 25.499027, 38.000938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.633251, 25.394371, 37.590202>,  <28.157629, 24.841806, 37.856403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.633251, 25.394371, 37.590202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.027239, 25.458366, 37.616253>,  <28.263632, 25.496763, 37.631882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.027239, 25.458366, 37.616253>,  <27.633251, 25.394371, 37.590202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.027239, 25.458366, 37.616253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005738, 0.346503, -0.938031,
		-0.172638, 0.924305, 0.340377,
		0.984969, 0.159987, 0.065123,
		28.322729, 25.506363, 37.635788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.844759, 26.107708, 37.401413>,  <27.633251, 25.394371, 37.590202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.844759, 26.107708, 37.401413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.163343, 25.883923, 37.309631>,  <28.354494, 25.749651, 37.254562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.163343, 25.883923, 37.309631>,  <27.844759, 26.107708, 37.401413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.163343, 25.883923, 37.309631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191402, 0.593200, -0.781971,
		0.573599, 0.578890, 0.579543,
		0.796460, -0.559464, -0.229459,
		28.402281, 25.716084, 37.240795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.424767, 26.620808, 37.240612>,  <27.844759, 26.107708, 37.401413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.424767, 26.620808, 37.240612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.372311, 26.253498, 37.091171>,  <28.340837, 26.033112, 37.001507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.372311, 26.253498, 37.091171>,  <28.424767, 26.620808, 37.240612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.372311, 26.253498, 37.091171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282370, 0.395841, -0.873829,
		0.950300, -0.009100, -0.311203,
		-0.131138, -0.918274, -0.373598,
		28.332970, 25.978016, 36.979092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.779427, 26.604296, 36.541744>,  <28.424767, 26.620808, 37.240612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.779427, 26.604296, 36.541744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.529274, 26.292763, 36.522495>,  <28.379183, 26.105843, 36.510948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.529274, 26.292763, 36.522495>,  <28.779427, 26.604296, 36.541744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.529274, 26.292763, 36.522495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345697, 0.331813, -0.877721,
		0.699566, -0.532275, -0.476750,
		-0.625380, -0.778835, -0.048119,
		28.341660, 26.059113, 36.508060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.966709, 26.220055, 36.001431>,  <28.779427, 26.604296, 36.541744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.966709, 26.220055, 36.001431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.575621, 26.184681, 36.077576>,  <28.340967, 26.163456, 36.123264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.575621, 26.184681, 36.077576>,  <28.966709, 26.220055, 36.001431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.575621, 26.184681, 36.077576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209402, 0.348155, -0.913750,
		0.014528, -0.933256, -0.358917,
		-0.977722, -0.088433, 0.190367,
		28.282305, 26.158152, 36.134686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.821707, 25.971596, 35.399006>,  <28.966709, 26.220055, 36.001431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.821707, 25.971596, 35.399006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.469343, 26.063023, 35.564777>,  <28.257925, 26.117878, 35.664242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.469343, 26.063023, 35.564777>,  <28.821707, 25.971596, 35.399006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.469343, 26.063023, 35.564777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373378, 0.202468, -0.905315,
		-0.290835, -0.952241, -0.093014,
		-0.880911, 0.228568, 0.414430,
		28.205070, 26.131594, 35.689106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.378916, 25.592833, 34.977776>,  <28.821707, 25.971596, 35.399006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.378916, 25.592833, 34.977776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.186348, 25.890610, 35.162834>,  <28.070808, 26.069277, 35.273869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.186348, 25.890610, 35.162834>,  <28.378916, 25.592833, 34.977776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.186348, 25.890610, 35.162834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290135, 0.362728, -0.885579,
		-0.827078, -0.560562, 0.041366,
		-0.481417, 0.744445, 0.462643,
		28.041924, 26.113943, 35.301628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.786039, 25.657974, 34.538876>,  <28.378916, 25.592833, 34.977776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.786039, 25.657974, 34.538876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.796263, 25.997421, 34.750233>,  <27.802397, 26.201090, 34.877045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.796263, 25.997421, 34.750233>,  <27.786039, 25.657974, 34.538876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.796263, 25.997421, 34.750233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195973, 0.522561, -0.829774,
		-0.980276, -0.082342, 0.179662,
		0.025559, 0.848616, 0.528391,
		27.803930, 26.252007, 34.908749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.272739, 25.968702, 34.241623>,  <27.786039, 25.657974, 34.538876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.272739, 25.968702, 34.241623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.485033, 26.260796, 34.413708>,  <27.612410, 26.436052, 34.516960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.485033, 26.260796, 34.413708>,  <27.272739, 25.968702, 34.241623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.485033, 26.260796, 34.413708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221212, 0.609358, -0.761412,
		-0.818161, 0.308939, 0.484943,
		0.530733, 0.730233, 0.430212,
		27.644253, 26.479866, 34.542770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.951172, 26.555223, 34.149548>,  <27.272739, 25.968702, 34.241623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.951172, 26.555223, 34.149548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.323462, 26.680664, 34.224812>,  <27.546835, 26.755928, 34.269970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.323462, 26.680664, 34.224812>,  <26.951172, 26.555223, 34.149548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.323462, 26.680664, 34.224812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039641, 0.597979, -0.800530,
		-0.363565, 0.737614, 0.568986,
		0.930725, 0.313601, 0.188165,
		27.602678, 26.774744, 34.281261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.893534, 27.202431, 34.035534>,  <26.951172, 26.555223, 34.149548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.893534, 27.202431, 34.035534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.293314, 27.191647, 34.043278>,  <27.533182, 27.185177, 34.047924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.293314, 27.191647, 34.043278>,  <26.893534, 27.202431, 34.035534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.293314, 27.191647, 34.043278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031771, 0.608594, -0.792845,
		0.009595, 0.793023, 0.609116,
		0.999449, -0.026959, 0.019356,
		27.593149, 27.183559, 34.049084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.006710, 27.852125, 33.913605>,  <26.893534, 27.202431, 34.035534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.006710, 27.852125, 33.913605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.345688, 27.652569, 33.840996>,  <27.549074, 27.532835, 33.797432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.345688, 27.652569, 33.840996>,  <27.006710, 27.852125, 33.913605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.345688, 27.652569, 33.840996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271704, 0.701322, -0.659033,
		0.456089, 0.509173, 0.729880,
		0.847443, -0.498889, -0.181521,
		27.599920, 27.502903, 33.786541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.599352, 28.283077, 33.983086>,  <27.006710, 27.852125, 33.913605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.599352, 28.283077, 33.983086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.706089, 27.984428, 33.739330>,  <27.770132, 27.805239, 33.593079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.706089, 27.984428, 33.739330>,  <27.599352, 28.283077, 33.983086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.706089, 27.984428, 33.739330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372319, 0.663085, -0.649382,
		0.888917, -0.053603, 0.454921,
		0.266843, -0.746622, -0.609385,
		27.786142, 27.760441, 33.556515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.205091, 28.444540, 33.759483>,  <27.599352, 28.283077, 33.983086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.205091, 28.444540, 33.759483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.071934, 28.171333, 33.499432>,  <27.992039, 28.007410, 33.343399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.071934, 28.171333, 33.499432>,  <28.205091, 28.444540, 33.759483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.071934, 28.171333, 33.499432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170956, 0.634314, -0.753936,
		0.927338, -0.362125, -0.094393,
		-0.332894, -0.683016, -0.650131,
		27.972065, 27.966429, 33.304394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.705482, 28.422550, 33.274349>,  <28.205091, 28.444540, 33.759483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.705482, 28.422550, 33.274349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.382963, 28.264011, 33.098717>,  <28.189451, 28.168888, 32.993336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.382963, 28.264011, 33.098717>,  <28.705482, 28.422550, 33.274349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.382963, 28.264011, 33.098717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244242, 0.452988, -0.857407,
		0.538728, -0.798569, -0.268440,
		-0.806299, -0.396345, -0.439081,
		28.141073, 28.145107, 32.966991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.874628, 28.176603, 32.644810>,  <28.705482, 28.422550, 33.274349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.874628, 28.176603, 32.644810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.480415, 28.206966, 32.584198>,  <28.243887, 28.225183, 32.547832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.480415, 28.206966, 32.584198>,  <28.874628, 28.176603, 32.644810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.480415, 28.206966, 32.584198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169474, 0.447429, -0.878115,
		0.001142, -0.891092, -0.453821,
		-0.985534, 0.075908, -0.151527,
		28.184755, 28.229738, 32.538738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.739248, 27.913948, 32.051491>,  <28.874628, 28.176603, 32.644810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.739248, 27.913948, 32.051491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.406315, 28.132439, 32.089127>,  <28.206554, 28.263533, 32.111710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.406315, 28.132439, 32.089127>,  <28.739248, 27.913948, 32.051491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.406315, 28.132439, 32.089127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208883, 0.466364, -0.859577,
		-0.513407, -0.695801, -0.502269,
		-0.832334, 0.546228, 0.094094,
		28.156614, 28.296307, 32.117355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.557993, 27.912024, 31.338747>,  <28.739248, 27.913948, 32.051491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.557993, 27.912024, 31.338747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.345501, 28.209984, 31.500202>,  <28.218006, 28.388760, 31.597075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.345501, 28.209984, 31.500202>,  <28.557993, 27.912024, 31.338747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.345501, 28.209984, 31.500202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258216, 0.596105, -0.760253,
		-0.806921, -0.299642, -0.509012,
		-0.531228, 0.744899, 0.403637,
		28.186132, 28.433453, 31.621294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.923733, 28.094006, 30.839172>,  <28.557993, 27.912024, 31.338747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.923733, 28.094006, 30.839172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.021585, 28.400410, 31.076958>,  <28.080297, 28.584251, 31.219629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.021585, 28.400410, 31.076958>,  <27.923733, 28.094006, 30.839172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.021585, 28.400410, 31.076958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148703, 0.576198, -0.803668,
		-0.958146, 0.285001, 0.027048,
		0.244631, 0.766009, 0.594462,
		28.094975, 28.630213, 31.255297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.478851, 28.580336, 30.619379>,  <27.923733, 28.094006, 30.839172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.478851, 28.580336, 30.619379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.757200, 28.775112, 30.830528>,  <27.924210, 28.891977, 30.957218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.757200, 28.775112, 30.830528>,  <27.478851, 28.580336, 30.619379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.757200, 28.775112, 30.830528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012776, 0.726520, -0.687026,
		-0.718050, 0.484828, 0.499346,
		0.695875, 0.486940, 0.527872,
		27.965963, 28.921194, 30.988890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.461554, 29.296490, 30.273727>,  <27.478851, 28.580336, 30.619379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.461554, 29.296490, 30.273727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.785255, 29.288795, 30.508583>,  <27.979477, 29.284180, 30.649496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.785255, 29.288795, 30.508583>,  <27.461554, 29.296490, 30.273727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.785255, 29.288795, 30.508583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411795, 0.731372, -0.543617,
		-0.418962, 0.681708, 0.599788,
		0.809256, -0.019235, 0.587141,
		28.028032, 29.283026, 30.684725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.685192, 30.007095, 30.269274>,  <27.461554, 29.296490, 30.273727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.685192, 30.007095, 30.269274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.010235, 29.800068, 30.376453>,  <28.205259, 29.675852, 30.440762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.010235, 29.800068, 30.376453>,  <27.685192, 30.007095, 30.269274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.010235, 29.800068, 30.376453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574925, 0.636469, -0.514168,
		0.095574, 0.571867, 0.814760,
		0.812605, -0.517567, 0.267951,
		28.254017, 29.644798, 30.456839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.100805, 30.479637, 30.486084>,  <27.685192, 30.007095, 30.269274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.100805, 30.479637, 30.486084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.319067, 30.161980, 30.379055>,  <28.450024, 29.971384, 30.314837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.319067, 30.161980, 30.379055>,  <28.100805, 30.479637, 30.486084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.319067, 30.161980, 30.379055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588294, 0.590396, -0.552579,
		0.596803, 0.144103, 0.789342,
		0.545652, -0.794146, -0.267575,
		28.482763, 29.923737, 30.298782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.727638, 30.723736, 30.350958>,  <28.100805, 30.479637, 30.486084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.727638, 30.723736, 30.350958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.801327, 30.361919, 30.197144>,  <28.845539, 30.144829, 30.104855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.801327, 30.361919, 30.197144>,  <28.727638, 30.723736, 30.350958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.801327, 30.361919, 30.197144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740112, 0.385098, -0.551303,
		0.646760, -0.183037, 0.740405,
		0.184219, -0.904543, -0.384534,
		28.856592, 30.090557, 30.081783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.485804, 30.563278, 30.481354>,  <28.727638, 30.723736, 30.350958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.485804, 30.563278, 30.481354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.316002, 30.345783, 30.191761>,  <29.214121, 30.215286, 30.018005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.316002, 30.345783, 30.191761>,  <29.485804, 30.563278, 30.481354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.316002, 30.345783, 30.191761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765633, 0.211267, -0.607595,
		0.483325, -0.812229, 0.326619,
		-0.424503, -0.543737, -0.723981,
		29.188650, 30.182663, 29.974567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.017818, 30.229206, 30.260244>,  <29.485804, 30.563278, 30.481354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.017818, 30.229206, 30.260244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.754267, 30.228104, 29.959347>,  <29.596136, 30.227442, 29.778809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.754267, 30.228104, 29.959347>,  <30.017818, 30.229206, 30.260244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.754267, 30.228104, 29.959347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748335, 0.099467, -0.655820,
		0.076631, -0.995037, -0.063474,
		-0.658879, -0.002757, -0.752244,
		29.556602, 30.227278, 29.733673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.353300, 29.834099, 29.687040>,  <30.017818, 30.229206, 30.260244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.353300, 29.834099, 29.687040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.066080, 30.053505, 29.515675>,  <29.893749, 30.185148, 29.412855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.066080, 30.053505, 29.515675>,  <30.353300, 29.834099, 29.687040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.066080, 30.053505, 29.515675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567608, 0.105287, -0.816539,
		-0.402775, -0.829486, -0.386942,
		-0.718048, 0.548513, -0.428416,
		29.850666, 30.218060, 29.387150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.245672, 29.597509, 28.971033>,  <30.353300, 29.834099, 29.687040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.245672, 29.597509, 28.971033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.074738, 29.959137, 28.968376>,  <29.972178, 30.176113, 28.966782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.074738, 29.959137, 28.968376>,  <30.245672, 29.597509, 28.971033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.074738, 29.959137, 28.968376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408065, 0.186319, -0.893738,
		-0.806763, -0.384637, -0.448539,
		-0.427336, 0.904069, -0.006642,
		29.946537, 30.230358, 28.966383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.132694, 29.773634, 28.265133>,  <30.245672, 29.597509, 28.971033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.132694, 29.773634, 28.265133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.101778, 30.124176, 28.455303>,  <30.083229, 30.334501, 28.569405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.101778, 30.124176, 28.455303>,  <30.132694, 29.773634, 28.265133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.101778, 30.124176, 28.455303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376120, 0.467247, -0.800134,
		-0.923342, 0.116973, -0.365728,
		-0.077291, 0.876355, 0.475424,
		30.078590, 30.387083, 28.597931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.816744, 30.209486, 27.735750>,  <30.132694, 29.773634, 28.265133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.816744, 30.209486, 27.735750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.001535, 30.452835, 27.993885>,  <30.112410, 30.598845, 28.148766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.001535, 30.452835, 27.993885>,  <29.816744, 30.209486, 27.735750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.001535, 30.452835, 27.993885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279466, 0.590716, -0.756937,
		-0.841710, 0.530038, 0.102878,
		0.461977, 0.608371, 0.645339,
		30.140129, 30.635345, 28.187487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.557529, 30.814262, 27.531885>,  <29.816744, 30.209486, 27.735750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.557529, 30.814262, 27.531885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.892548, 30.891617, 27.736282>,  <30.093559, 30.938028, 27.858921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.892548, 30.891617, 27.736282>,  <29.557529, 30.814262, 27.531885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.892548, 30.891617, 27.736282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293022, 0.630394, -0.718848,
		-0.461142, 0.751802, 0.471319,
		0.837548, 0.193384, 0.510995,
		30.143812, 30.949633, 27.889582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.501863, 31.467930, 27.568111>,  <29.557529, 30.814262, 27.531885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.501863, 31.467930, 27.568111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.880688, 31.368958, 27.649948>,  <30.107983, 31.309574, 27.699051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.880688, 31.368958, 27.649948>,  <29.501863, 31.467930, 27.568111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.880688, 31.368958, 27.649948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318177, 0.638112, -0.701125,
		0.042927, 0.729103, 0.683056,
		0.947059, -0.247430, 0.204592,
		30.164806, 31.294729, 27.711325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.845154, 32.081261, 27.567129>,  <29.501863, 31.467930, 27.568111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.845154, 32.081261, 27.567129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.152361, 31.827091, 27.535175>,  <30.336685, 31.674589, 27.516003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.152361, 31.827091, 27.535175>,  <29.845154, 32.081261, 27.567129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.152361, 31.827091, 27.535175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528190, 0.699008, -0.482083,
		0.362167, 0.328055, 0.872476,
		0.768018, -0.635427, -0.079882,
		30.382767, 31.636463, 27.511211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.394648, 32.422195, 27.841391>,  <29.845154, 32.081261, 27.567129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.394648, 32.422195, 27.841391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.512014, 32.155445, 27.567402>,  <30.582434, 31.995396, 27.403008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.512014, 32.155445, 27.567402>,  <30.394648, 32.422195, 27.841391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.512014, 32.155445, 27.567402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603973, 0.684715, -0.407899,
		0.741028, -0.294021, 0.603679,
		0.293417, -0.666871, -0.684974,
		30.600039, 31.955383, 27.361910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.076557, 32.337288, 27.844707>,  <30.394648, 32.422195, 27.841391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.076557, 32.337288, 27.844707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.018171, 32.167976, 27.487041>,  <30.983141, 32.066391, 27.272442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.018171, 32.167976, 27.487041>,  <31.076557, 32.337288, 27.844707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.018171, 32.167976, 27.487041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765080, 0.524709, -0.373274,
		0.627174, -0.738593, 0.247252,
		-0.145962, -0.423275, -0.894166,
		30.974382, 32.040993, 27.218792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.743736, 32.322147, 27.429621>,  <31.076557, 32.337288, 27.844707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.743736, 32.322147, 27.429621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.469725, 32.273273, 27.142342>,  <31.305317, 32.243950, 26.969975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.469725, 32.273273, 27.142342>,  <31.743736, 32.322147, 27.429621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.469725, 32.273273, 27.142342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577659, 0.509588, -0.637676,
		0.443898, -0.851699, -0.278502,
		-0.685029, -0.122184, -0.718197,
		31.264215, 32.236618, 26.926882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.042820, 32.192219, 26.855824>,  <31.743736, 32.322147, 27.429621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.042820, 32.192219, 26.855824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.687826, 32.301186, 26.707142>,  <31.474831, 32.366566, 26.617933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.687826, 32.301186, 26.707142>,  <32.042820, 32.192219, 26.855824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.687826, 32.301186, 26.707142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460611, 0.498906, -0.734118,
		-0.014539, -0.822729, -0.568248,
		-0.887483, 0.272415, -0.371704,
		31.421581, 32.382912, 26.595631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.047295, 32.021702, 26.157692>,  <32.042820, 32.192219, 26.855824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.047295, 32.021702, 26.157692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.772409, 32.311882, 26.173008>,  <31.607479, 32.485989, 26.182198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.772409, 32.311882, 26.173008>,  <32.047295, 32.021702, 26.157692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.772409, 32.311882, 26.173008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444808, 0.461864, -0.767351,
		-0.574356, -0.510303, -0.640083,
		-0.687213, 0.725447, 0.038288,
		31.566246, 32.529514, 26.184494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.981627, 32.237041, 25.499228>,  <32.047295, 32.021702, 26.157692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.981627, 32.237041, 25.499228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.744696, 32.513645, 25.664616>,  <31.602537, 32.679607, 25.763849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.744696, 32.513645, 25.664616>,  <31.981627, 32.237041, 25.499228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.744696, 32.513645, 25.664616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299324, 0.665324, -0.683922,
		-0.748034, -0.281343, -0.601075,
		-0.592327, 0.691513, 0.413472,
		31.566998, 32.721100, 25.788658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.441587, 32.439835, 25.117086>,  <31.981627, 32.237041, 25.499228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.441587, 32.439835, 25.117086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.479002, 32.764763, 25.347351>,  <31.501451, 32.959721, 25.485510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.479002, 32.764763, 25.347351>,  <31.441587, 32.439835, 25.117086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.479002, 32.764763, 25.347351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272573, 0.535213, -0.799532,
		-0.957578, 0.231695, -0.171355,
		0.093536, 0.812320, 0.575662,
		31.507063, 33.008457, 25.520050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.092310, 32.875172, 24.746668>,  <31.441587, 32.439835, 25.117086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.092310, 32.875172, 24.746668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.329388, 33.109734, 24.967518>,  <31.471634, 33.250473, 25.100027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.329388, 33.109734, 24.967518>,  <31.092310, 32.875172, 24.746668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.329388, 33.109734, 24.967518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215401, 0.545131, -0.810207,
		-0.776091, 0.599132, 0.196784,
		0.592694, 0.586406, 0.552125,
		31.507196, 33.285656, 25.133156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.919027, 33.543365, 24.630175>,  <31.092310, 32.875172, 24.746668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.919027, 33.543365, 24.630175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.284388, 33.587048, 24.787029>,  <31.503605, 33.613258, 24.881142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.284388, 33.587048, 24.787029>,  <30.919027, 33.543365, 24.630175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.284388, 33.587048, 24.787029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269288, 0.560300, -0.783293,
		-0.305257, 0.821059, 0.482370,
		0.913401, 0.109209, 0.392137,
		31.558409, 33.619812, 24.904671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.430956, 33.531223, 25.168184>,  <30.919027, 33.543365, 24.630175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.430956, 33.531223, 25.168184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.129747, 33.735332, 25.002014>,  <29.949022, 33.857800, 24.902313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.129747, 33.735332, 25.002014>,  <30.430956, 33.531223, 25.168184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.129747, 33.735332, 25.002014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649514, -0.475411, 0.593393,
		0.105296, 0.716663, 0.689425,
		-0.753023, 0.510273, -0.415424,
		29.903841, 33.888416, 24.877388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.034491, 33.723103, 25.676926>,  <30.430956, 33.531223, 25.168184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.034491, 33.723103, 25.676926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.774790, 33.796425, 25.381664>,  <29.618969, 33.840420, 25.204508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.774790, 33.796425, 25.381664>,  <30.034491, 33.723103, 25.676926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.774790, 33.796425, 25.381664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743506, -0.357421, 0.565198,
		-0.160227, 0.915778, 0.368345,
		-0.649250, 0.183307, -0.738155,
		29.580015, 33.851418, 25.160217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.549772, 34.189152, 25.895777>,  <30.034491, 33.723103, 25.676926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.549772, 34.189152, 25.895777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.357430, 34.013866, 25.592003>,  <29.242023, 33.908695, 25.409739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.357430, 34.013866, 25.592003>,  <29.549772, 34.189152, 25.895777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.357430, 34.013866, 25.592003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780627, -0.180430, 0.598386,
		-0.399249, 0.880574, -0.255324,
		-0.480855, -0.438218, -0.759436,
		29.213173, 33.882401, 25.364172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.803823, 34.476238, 25.947132>,  <29.549772, 34.189152, 25.895777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.803823, 34.476238, 25.947132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.785206, 34.134968, 25.739311>,  <28.774035, 33.930206, 25.614618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.785206, 34.134968, 25.739311>,  <28.803823, 34.476238, 25.947132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.785206, 34.134968, 25.739311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622430, -0.382029, 0.683107,
		-0.781290, 0.355179, -0.513257,
		-0.046546, -0.853171, -0.519550,
		28.771242, 33.879017, 25.583447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.118145, 34.455208, 25.891571>,  <28.803823, 34.476238, 25.947132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.118145, 34.455208, 25.891571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.271397, 34.093533, 25.816040>,  <28.363348, 33.876526, 25.770721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.271397, 34.093533, 25.816040>,  <28.118145, 34.455208, 25.891571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.271397, 34.093533, 25.816040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704947, -0.418320, 0.572763,
		-0.596877, -0.086328, -0.797675,
		0.383129, -0.904188, -0.188829,
		28.386335, 33.822277, 25.759392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.570042, 34.001965, 25.746113>,  <28.118145, 34.455208, 25.891571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.570042, 34.001965, 25.746113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.873192, 33.763672, 25.852489>,  <28.055082, 33.620697, 25.916315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.873192, 33.763672, 25.852489>,  <27.570042, 34.001965, 25.746113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.873192, 33.763672, 25.852489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628549, -0.557540, 0.542287,
		-0.174786, -0.578144, -0.796994,
		0.757876, -0.595733, 0.265942,
		28.100555, 33.584953, 25.932272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.380762, 33.257610, 25.693354>,  <27.570042, 34.001965, 25.746113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.380762, 33.257610, 25.693354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.701687, 33.232056, 25.930744>,  <27.894241, 33.216724, 26.073179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.701687, 33.232056, 25.930744>,  <27.380762, 33.257610, 25.693354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.701687, 33.232056, 25.930744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515405, -0.575659, 0.634803,
		0.301088, -0.815191, -0.494782,
		0.802311, -0.063882, 0.593477,
		27.942381, 33.212891, 26.108788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.402456, 32.579029, 25.927156>,  <27.380762, 33.257610, 25.693354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.402456, 32.579029, 25.927156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.622280, 32.765667, 26.204365>,  <27.754175, 32.877647, 26.370689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.622280, 32.765667, 26.204365>,  <27.402456, 32.579029, 25.927156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.622280, 32.765667, 26.204365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266912, -0.687985, 0.674859,
		0.791671, -0.555851, -0.253550,
		0.549559, 0.466590, 0.693021,
		27.787148, 32.905643, 26.412271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.650415, 31.999500, 26.296888>,  <27.402456, 32.579029, 25.927156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.650415, 31.999500, 26.296888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.669430, 32.335529, 26.513042>,  <27.680838, 32.537148, 26.642735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.669430, 32.335529, 26.513042>,  <27.650415, 31.999500, 26.296888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.669430, 32.335529, 26.513042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435041, -0.469579, 0.768268,
		0.899155, -0.271610, 0.343145,
		0.047536, 0.840074, 0.540385,
		27.683691, 32.587551, 26.675158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.815329, 31.770245, 27.057898>,  <27.650415, 31.999500, 26.296888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.815329, 31.770245, 27.057898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.712160, 32.152481, 27.114922>,  <27.650259, 32.381824, 27.149136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.712160, 32.152481, 27.114922>,  <27.815329, 31.770245, 27.057898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.712160, 32.152481, 27.114922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301824, -0.219859, 0.927666,
		0.917813, 0.196235, 0.345126,
		-0.257919, 0.955591, 0.142561,
		27.634785, 32.439159, 27.157690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.062016, 31.890068, 27.721693>,  <27.815329, 31.770245, 27.057898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.062016, 31.890068, 27.721693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.786926, 32.172985, 27.656246>,  <27.621872, 32.342735, 27.616978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.786926, 32.172985, 27.656246>,  <28.062016, 31.890068, 27.721693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.786926, 32.172985, 27.656246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348847, -0.124316, 0.928898,
		0.636665, 0.695902, 0.332232,
		-0.687724, 0.707295, -0.163615,
		27.580608, 32.385174, 27.607162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.094105, 32.320889, 28.344893>,  <28.062016, 31.890068, 27.721693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.094105, 32.320889, 28.344893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.735382, 32.384312, 28.179680>,  <27.520147, 32.422367, 28.080553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.735382, 32.384312, 28.179680>,  <28.094105, 32.320889, 28.344893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.735382, 32.384312, 28.179680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431177, -0.104112, 0.896241,
		0.099104, 0.981845, 0.161734,
		-0.896808, 0.158557, -0.413031,
		27.466339, 32.431877, 28.055771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.615080, 32.906544, 28.476336>,  <28.094105, 32.320889, 28.344893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.615080, 32.906544, 28.476336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.379206, 32.599964, 28.374493>,  <27.237680, 32.416016, 28.313387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.379206, 32.599964, 28.374493>,  <27.615080, 32.906544, 28.476336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.379206, 32.599964, 28.374493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533085, 0.132558, 0.835613,
		-0.606706, 0.628475, -0.486751,
		-0.589685, -0.766451, -0.254606,
		27.202301, 32.370029, 28.298111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.997385, 33.074047, 28.887558>,  <27.615080, 32.906544, 28.476336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.997385, 33.074047, 28.887558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.937929, 32.698002, 28.764858>,  <26.902256, 32.472374, 28.691238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.937929, 32.698002, 28.764858>,  <26.997385, 33.074047, 28.887558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.937929, 32.698002, 28.764858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595973, -0.162372, 0.786417,
		-0.789128, 0.299708, -0.536146,
		-0.148640, -0.940112, -0.306750,
		26.893337, 32.415970, 28.672832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.215544, 32.849503, 29.100626>,  <26.997385, 33.074047, 28.887558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.215544, 32.849503, 29.100626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.426931, 32.515736, 29.038048>,  <26.553764, 32.315475, 29.000502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.426931, 32.515736, 29.038048>,  <26.215544, 32.849503, 29.100626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.426931, 32.515736, 29.038048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524874, -0.465973, 0.712304,
		-0.667256, -0.294315, -0.684214,
		0.528467, -0.834415, -0.156444,
		26.585472, 32.265411, 28.991116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.623255, 32.423267, 29.019926>,  <26.215544, 32.849503, 29.100626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.623255, 32.423267, 29.019926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.967865, 32.263718, 29.145573>,  <26.174631, 32.167988, 29.220961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.967865, 32.263718, 29.145573>,  <25.623255, 32.423267, 29.019926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.967865, 32.263718, 29.145573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448999, -0.309763, 0.838121,
		-0.237004, -0.863102, -0.445963,
		0.861527, -0.398875, 0.314117,
		26.226322, 32.144054, 29.239807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.379974, 31.908035, 29.412031>,  <25.623255, 32.423267, 29.019926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.379974, 31.908035, 29.412031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.762383, 31.875340, 29.524700>,  <25.991827, 31.855722, 29.592302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.762383, 31.875340, 29.524700>,  <25.379974, 31.908035, 29.412031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.762383, 31.875340, 29.524700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267343, -0.637834, 0.722285,
		0.120621, -0.765824, -0.631636,
		0.956022, -0.081741, 0.281674,
		26.049189, 31.850817, 29.609203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.623129, 31.287497, 29.229551>,  <25.379974, 31.908035, 29.412031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.623129, 31.287497, 29.229551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.830679, 31.418945, 29.545216>,  <25.955210, 31.497814, 29.734613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.830679, 31.418945, 29.545216>,  <25.623129, 31.287497, 29.229551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.830679, 31.418945, 29.545216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401946, -0.720955, 0.564503,
		0.754458, -0.610107, -0.241997,
		0.518876, 0.328624, 0.789160,
		25.986341, 31.517532, 29.781963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.862797, 30.702435, 29.507622>,  <25.623129, 31.287497, 29.229551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.862797, 30.702435, 29.507622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.913914, 30.968166, 29.802197>,  <25.944584, 31.127605, 29.978941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.913914, 30.968166, 29.802197>,  <25.862797, 30.702435, 29.507622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.913914, 30.968166, 29.802197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213882, -0.706593, 0.674522,
		0.968464, -0.243710, 0.051789,
		0.127794, 0.664328, 0.736436,
		25.952251, 31.167465, 30.023127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.238802, 30.350260, 29.985455>,  <25.862797, 30.702435, 29.507622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.238802, 30.350260, 29.985455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.080238, 30.651527, 30.195442>,  <25.985100, 30.832289, 30.321434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.080238, 30.651527, 30.195442>,  <26.238802, 30.350260, 29.985455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.080238, 30.651527, 30.195442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075135, -0.596512, 0.799079,
		0.914993, 0.277320, 0.293053,
		-0.396411, 0.753171, 0.524969,
		25.961315, 30.877480, 30.352932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.714012, 30.397730, 30.536858>,  <26.238802, 30.350260, 29.985455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.714012, 30.397730, 30.536858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.362181, 30.557434, 30.640343>,  <26.151081, 30.653257, 30.702433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.362181, 30.557434, 30.640343>,  <26.714012, 30.397730, 30.536858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.362181, 30.557434, 30.640343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017438, -0.516372, 0.856187,
		0.475433, 0.757595, 0.447228,
		-0.879579, 0.399261, 0.258711,
		26.098307, 30.677212, 30.717957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.782675, 30.621788, 31.253994>,  <26.714012, 30.397730, 30.536858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.782675, 30.621788, 31.253994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.391037, 30.599838, 31.175652>,  <26.156054, 30.586668, 31.128645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.391037, 30.599838, 31.175652>,  <26.782675, 30.621788, 31.253994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.391037, 30.599838, 31.175652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121950, -0.612277, 0.781182,
		-0.162787, 0.788736, 0.592786,
		-0.979096, -0.054876, -0.195857,
		26.097309, 30.583376, 31.116894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.512236, 30.740583, 31.855232>,  <26.782675, 30.621788, 31.253994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.512236, 30.740583, 31.855232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.240156, 30.539124, 31.642189>,  <26.076908, 30.418247, 31.514362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.240156, 30.539124, 31.642189>,  <26.512236, 30.740583, 31.855232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.240156, 30.539124, 31.642189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221720, -0.551190, 0.804381,
		-0.698693, 0.665227, 0.263249,
		-0.680197, -0.503649, -0.532607,
		26.036097, 30.388029, 31.482407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.914467, 30.729721, 32.200241>,  <26.512236, 30.740583, 31.855232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.914467, 30.729721, 32.200241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.907312, 30.408653, 31.961777>,  <25.903019, 30.216013, 31.818699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.907312, 30.408653, 31.961777>,  <25.914467, 30.729721, 32.200241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.907312, 30.408653, 31.961777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252552, -0.573291, 0.779458,
		-0.967418, 0.164503, -0.192461,
		-0.017887, -0.802668, -0.596158,
		25.901947, 30.167852, 31.782928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.284233, 30.428350, 32.484665>,  <25.914467, 30.729721, 32.200241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.284233, 30.428350, 32.484665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.451361, 30.141182, 32.261948>,  <25.551638, 29.968882, 32.128319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.451361, 30.141182, 32.261948>,  <25.284233, 30.428350, 32.484665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.451361, 30.141182, 32.261948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409473, -0.695878, 0.589988,
		-0.811023, -0.018517, -0.584720,
		0.417819, -0.717921, -0.556791,
		25.576706, 29.925806, 32.094910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.774736, 29.901325, 32.504681>,  <25.284233, 30.428350, 32.484665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.774736, 29.901325, 32.504681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.078547, 29.686592, 32.357750>,  <25.260834, 29.557753, 32.269592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.078547, 29.686592, 32.357750>,  <24.774736, 29.901325, 32.504681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.078547, 29.686592, 32.357750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322681, -0.801277, 0.503817,
		-0.564798, -0.264133, -0.781817,
		0.759526, -0.536833, -0.367328,
		25.306404, 29.525543, 32.247551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.561266, 29.266148, 32.156796>,  <24.774736, 29.901325, 32.504681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.561266, 29.266148, 32.156796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.933029, 29.224091, 32.298302>,  <25.156086, 29.198856, 32.383205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.933029, 29.224091, 32.298302>,  <24.561266, 29.266148, 32.156796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.933029, 29.224091, 32.298302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276766, -0.832670, 0.479646,
		0.244137, -0.543696, -0.802989,
		0.929407, -0.105141, 0.353762,
		25.211851, 29.192549, 32.404430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.763426, 28.622787, 31.908031>,  <24.561266, 29.266148, 32.156796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.763426, 28.622787, 31.908031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.015568, 28.692368, 32.210659>,  <25.166853, 28.734116, 32.392235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.015568, 28.692368, 32.210659>,  <24.763426, 28.622787, 31.908031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.015568, 28.692368, 32.210659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233472, -0.886975, 0.398455,
		0.740367, -0.427806, -0.518498,
		0.630356, 0.173948, 0.756567,
		25.204674, 28.744553, 32.437630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.024097, 27.965158, 32.100586>,  <24.763426, 28.622787, 31.908031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.024097, 27.965158, 32.100586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.115143, 28.196247, 32.414127>,  <25.169769, 28.334900, 32.602253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.115143, 28.196247, 32.414127>,  <25.024097, 27.965158, 32.100586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.115143, 28.196247, 32.414127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245537, -0.744922, 0.620324,
		0.942287, -0.333659, -0.027701,
		0.227612, 0.577722, 0.783856,
		25.183426, 28.369564, 32.649284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.578327, 27.643719, 32.483746>,  <25.024097, 27.965158, 32.100586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.578327, 27.643719, 32.483746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.364056, 27.872456, 32.732277>,  <25.235493, 28.009697, 32.881393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.364056, 27.872456, 32.732277>,  <25.578327, 27.643719, 32.483746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.364056, 27.872456, 32.732277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256931, -0.811290, 0.525162,
		0.804385, 0.121679, 0.581514,
		-0.535678, 0.571841, 0.621327,
		25.203352, 28.044008, 32.918674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.728615, 27.390549, 33.099667>,  <25.578327, 27.643719, 32.483746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.728615, 27.390549, 33.099667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.434471, 27.632065, 33.222748>,  <25.257984, 27.776974, 33.296597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.434471, 27.632065, 33.222748>,  <25.728615, 27.390549, 33.099667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.434471, 27.632065, 33.222748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277945, -0.682834, 0.675637,
		0.618055, 0.411311, 0.669949,
		-0.735360, 0.603790, 0.307707,
		25.213863, 27.813202, 33.315060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.722115, 27.477333, 33.884281>,  <25.728615, 27.390549, 33.099667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.722115, 27.477333, 33.884281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.347704, 27.600407, 33.815945>,  <25.123058, 27.674250, 33.774944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.347704, 27.600407, 33.815945>,  <25.722115, 27.477333, 33.884281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.347704, 27.600407, 33.815945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321414, -0.549650, 0.771089,
		0.143346, 0.776671, 0.613380,
		-0.936026, 0.307682, -0.170842,
		25.066896, 27.692711, 33.764690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.421238, 27.631235, 34.464600>,  <25.722115, 27.477333, 33.884281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.421238, 27.631235, 34.464600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.097515, 27.563385, 34.239655>,  <24.903282, 27.522675, 34.104687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.097515, 27.563385, 34.239655>,  <25.421238, 27.631235, 34.464600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.097515, 27.563385, 34.239655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363855, -0.606824, 0.706664,
		-0.461122, 0.776526, 0.429387,
		-0.809306, -0.169624, -0.562363,
		24.854723, 27.512497, 34.070946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.960999, 27.710972, 35.010067>,  <25.421238, 27.631235, 34.464600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.960999, 27.710972, 35.010067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.791124, 27.519775, 34.702518>,  <24.689199, 27.405058, 34.517990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.791124, 27.519775, 34.702518>,  <24.960999, 27.710972, 35.010067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.791124, 27.519775, 34.702518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547742, -0.540541, 0.638587,
		-0.720847, 0.692343, -0.032256,
		-0.424686, -0.477992, -0.768873,
		24.663719, 27.376377, 34.471855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.256380, 27.647453, 35.141575>,  <24.960999, 27.710972, 35.010067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.256380, 27.647453, 35.141575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.311579, 27.349224, 34.880783>,  <24.344698, 27.170286, 34.724308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.311579, 27.349224, 34.880783>,  <24.256380, 27.647453, 35.141575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.311579, 27.349224, 34.880783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635072, -0.571749, 0.519409,
		-0.760026, 0.342375, -0.552394,
		0.137998, -0.745575, -0.651977,
		24.352978, 27.125551, 34.685188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.601891, 27.324951, 34.997299>,  <24.256380, 27.647453, 35.141575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.601891, 27.324951, 34.997299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.868690, 27.041737, 34.904526>,  <24.028770, 26.871807, 34.848862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.868690, 27.041737, 34.904526>,  <23.601891, 27.324951, 34.997299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.868690, 27.041737, 34.904526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540778, -0.674205, 0.502998,
		-0.512515, -0.210072, -0.832585,
		0.666999, -0.708038, -0.231938,
		24.068790, 26.829325, 34.834946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.183325, 26.782864, 34.895214>,  <23.601891, 27.324951, 34.997299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.183325, 26.782864, 34.895214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.534822, 26.596928, 34.938549>,  <23.745720, 26.485367, 34.964550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.534822, 26.596928, 34.938549>,  <23.183325, 26.782864, 34.895214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.534822, 26.596928, 34.938549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462519, -0.773270, 0.433739,
		-0.117844, -0.431254, -0.894502,
		0.878743, -0.464837, 0.108338,
		23.798445, 26.457476, 34.971050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.100628, 26.052208, 34.489426>,  <23.183325, 26.782864, 34.895214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.100628, 26.052208, 34.489426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.405163, 26.030525, 34.747860>,  <23.587883, 26.017515, 34.902920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.405163, 26.030525, 34.747860>,  <23.100628, 26.052208, 34.489426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.405163, 26.030525, 34.747860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350310, -0.872915, 0.339561,
		0.545572, -0.484851, -0.683573,
		0.761337, -0.054207, 0.646086,
		23.633564, 26.014263, 34.941685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.184168, 25.311752, 34.631958>,  <23.100628, 26.052208, 34.489426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.184168, 25.311752, 34.631958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.984814, 25.044476, 34.411003>,  <22.865202, 24.884109, 34.278431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.984814, 25.044476, 34.411003>,  <23.184168, 25.311752, 34.631958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.984814, 25.044476, 34.411003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324889, 0.446779, -0.833568,
		0.803778, -0.594903, -0.005580,
		-0.498385, -0.668191, -0.552388,
		22.835299, 24.844019, 34.245285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.717871, 25.062920, 34.101357>,  <23.184168, 25.311752, 34.631958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.717871, 25.062920, 34.101357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.343092, 24.996918, 33.978134>,  <23.118225, 24.957317, 33.904202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.343092, 24.996918, 33.978134>,  <23.717871, 25.062920, 34.101357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.343092, 24.996918, 33.978134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253732, 0.284966, -0.924346,
		0.240303, -0.944230, -0.225133,
		-0.936950, -0.164999, -0.308059,
		23.062008, 24.947416, 33.885715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.742577, 25.278997, 33.442406>,  <23.717871, 25.062920, 34.101357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.742577, 25.278997, 33.442406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.347086, 25.219116, 33.441357>,  <23.109791, 25.183187, 33.440727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.347086, 25.219116, 33.441357>,  <23.742577, 25.278997, 33.442406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.347086, 25.219116, 33.441357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047620, 0.331008, -0.942425,
		0.141950, -0.931677, -0.334406,
		-0.988728, -0.149702, -0.002620,
		23.050468, 25.174206, 33.440571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.554932, 24.893196, 32.868610>,  <23.742577, 25.278997, 33.442406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.554932, 24.893196, 32.868610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.240416, 25.117279, 32.972851>,  <23.051706, 25.251728, 33.035397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.240416, 25.117279, 32.972851>,  <23.554932, 24.893196, 32.868610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.240416, 25.117279, 32.972851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044290, 0.471802, -0.880592,
		-0.616266, -0.680860, -0.395785,
		-0.786291, 0.560208, 0.260600,
		23.004528, 25.285341, 33.051029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.165924, 25.046995, 32.283337>,  <23.554932, 24.893196, 32.868610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.165924, 25.046995, 32.283337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.040983, 25.346153, 32.517632>,  <22.966019, 25.525648, 32.658207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.040983, 25.346153, 32.517632>,  <23.165924, 25.046995, 32.283337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.040983, 25.346153, 32.517632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049848, 0.628643, -0.776095,
		-0.948658, -0.213216, -0.233639,
		-0.312351, 0.747895, 0.585739,
		22.947277, 25.570522, 32.693352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.688099, 25.384899, 31.884592>,  <23.165924, 25.046995, 32.283337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.688099, 25.384899, 31.884592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.788454, 25.658691, 32.158394>,  <22.848667, 25.822966, 32.322674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.788454, 25.658691, 32.158394>,  <22.688099, 25.384899, 31.884592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.788454, 25.658691, 32.158394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132934, 0.724781, -0.676033,
		-0.958845, 0.078614, 0.272829,
		0.250887, 0.684479, 0.684503,
		22.863720, 25.864035, 32.363743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.200541, 25.884132, 31.877226>,  <22.688099, 25.384899, 31.884592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.200541, 25.884132, 31.877226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.496054, 26.079891, 32.062565>,  <22.673363, 26.197346, 32.173767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.496054, 26.079891, 32.062565>,  <22.200541, 25.884132, 31.877226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.496054, 26.079891, 32.062565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126920, 0.776248, -0.617520,
		-0.661883, 0.397407, 0.635593,
		0.738784, 0.489395, 0.463346,
		22.717690, 26.226709, 32.201569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.076372, 26.706745, 32.001686>,  <22.200541, 25.884132, 31.877226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.076372, 26.706745, 32.001686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.474194, 26.665619, 32.008469>,  <22.712887, 26.640944, 32.012539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.474194, 26.665619, 32.008469>,  <22.076372, 26.706745, 32.001686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.474194, 26.665619, 32.008469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094102, 0.816289, -0.569927,
		0.044758, 0.568419, 0.821521,
		0.994556, -0.102816, 0.016954,
		22.772560, 26.634773, 32.013554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.334953, 27.301775, 32.220959>,  <22.076372, 26.706745, 32.001686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.334953, 27.301775, 32.220959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.670944, 27.157364, 32.058926>,  <22.872540, 27.070717, 31.961704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.670944, 27.157364, 32.058926>,  <22.334953, 27.301775, 32.220959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.670944, 27.157364, 32.058926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097144, 0.834529, -0.542332,
		0.533855, 0.416195, 0.736058,
		0.839978, -0.361030, -0.405087,
		22.922937, 27.049055, 31.937399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.840137, 27.822067, 32.274361>,  <22.334953, 27.301775, 32.220959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.840137, 27.822067, 32.274361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.996702, 27.594452, 31.985088>,  <23.090641, 27.457884, 31.811525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.996702, 27.594452, 31.985088>,  <22.840137, 27.822067, 32.274361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.996702, 27.594452, 31.985088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310591, 0.821460, -0.478264,
		0.866216, -0.037416, 0.498267,
		0.391412, -0.569037, -0.723183,
		23.114126, 27.423740, 31.768133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.534082, 27.977295, 32.226154>,  <22.840137, 27.822067, 32.274361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.534082, 27.977295, 32.226154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.454918, 27.811375, 31.870903>,  <23.407419, 27.711823, 31.657753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.454918, 27.811375, 31.870903>,  <23.534082, 27.977295, 32.226154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.454918, 27.811375, 31.870903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424808, 0.780247, -0.459079,
		0.883385, -0.468141, 0.021789,
		-0.197913, -0.414800, -0.888128,
		23.395544, 27.686935, 31.604465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.072433, 28.123419, 31.678778>,  <23.534082, 27.977295, 32.226154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.072433, 28.123419, 31.678778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.775408, 28.033840, 31.426289>,  <23.597193, 27.980093, 31.274796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.775408, 28.033840, 31.426289>,  <24.072433, 28.123419, 31.678778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.775408, 28.033840, 31.426289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291861, 0.740065, -0.605905,
		0.602838, -0.634154, -0.484185,
		-0.742565, -0.223948, -0.631224,
		23.552639, 27.966656, 31.236921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.391493, 28.217999, 31.016918>,  <24.072433, 28.123419, 31.678778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.391493, 28.217999, 31.016918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.992788, 28.224915, 30.985500>,  <23.753565, 28.229065, 30.966650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.992788, 28.224915, 30.985500>,  <24.391493, 28.217999, 31.016918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.992788, 28.224915, 30.985500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066396, 0.728024, -0.682329,
		0.045383, -0.685334, -0.726813,
		-0.996761, 0.017291, -0.078543,
		23.693760, 28.230103, 30.961937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.166016, 27.812960, 30.440290>,  <24.391493, 28.217999, 31.016918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.166016, 27.812960, 30.440290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.888744, 28.084019, 30.538513>,  <23.722382, 28.246655, 30.597446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.888744, 28.084019, 30.538513>,  <24.166016, 27.812960, 30.440290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.888744, 28.084019, 30.538513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074680, 0.406382, -0.910646,
		-0.716887, -0.612902, -0.332301,
		-0.693178, 0.677647, 0.245559,
		23.680792, 28.287313, 30.612181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.706053, 27.874069, 29.842524>,  <24.166016, 27.812960, 30.440290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.706053, 27.874069, 29.842524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.662363, 28.205326, 30.062431>,  <23.636148, 28.404081, 30.194376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.662363, 28.205326, 30.062431>,  <23.706053, 27.874069, 29.842524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.662363, 28.205326, 30.062431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183877, 0.560368, -0.807575,
		-0.976862, 0.012883, -0.213482,
		-0.109225, 0.828143, 0.549771,
		23.629595, 28.453770, 30.227364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.268173, 28.355719, 29.369282>,  <23.706053, 27.874069, 29.842524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.268173, 28.355719, 29.369282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.465902, 28.575115, 29.639038>,  <23.584539, 28.706753, 29.800892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.465902, 28.575115, 29.639038>,  <23.268173, 28.355719, 29.369282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.465902, 28.575115, 29.639038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287741, 0.628825, -0.722346,
		-0.820273, 0.551123, 0.153021,
		0.494325, 0.548491, 0.674389,
		23.614201, 28.739662, 29.841354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.172947, 28.973829, 29.169468>,  <23.268173, 28.355719, 29.369282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.172947, 28.973829, 29.169468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.492884, 29.041840, 29.399719>,  <23.684845, 29.082645, 29.537870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.492884, 29.041840, 29.399719>,  <23.172947, 28.973829, 29.169468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.492884, 29.041840, 29.399719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287374, 0.733486, -0.615966,
		-0.526946, 0.658095, 0.537810,
		0.799841, 0.170028, 0.575626,
		23.732836, 29.092848, 29.572407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.301710, 29.742525, 29.126360>,  <23.172947, 28.973829, 29.169468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.301710, 29.742525, 29.126360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.636770, 29.575008, 29.266621>,  <23.837807, 29.474499, 29.350777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.636770, 29.575008, 29.266621>,  <23.301710, 29.742525, 29.126360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.636770, 29.575008, 29.266621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546094, 0.655305, -0.521877,
		-0.011227, 0.628640, 0.777616,
		0.837648, -0.418793, 0.350654,
		23.888065, 29.449371, 29.371817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.635004, 30.328438, 29.278278>,  <23.301710, 29.742525, 29.126360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.635004, 30.328438, 29.278278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.903095, 30.033752, 29.242401>,  <24.063950, 29.856941, 29.220875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.903095, 30.033752, 29.242401>,  <23.635004, 30.328438, 29.278278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.903095, 30.033752, 29.242401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626278, 0.626284, -0.464268,
		0.398206, 0.254993, 0.881141,
		0.670230, -0.736714, -0.089694,
		24.104164, 29.812738, 29.215492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.248783, 30.635061, 29.380392>,  <23.635004, 30.328438, 29.278278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.248783, 30.635061, 29.380392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.373669, 30.317951, 29.171001>,  <24.448601, 30.127686, 29.045368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.373669, 30.317951, 29.171001>,  <24.248783, 30.635061, 29.380392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.373669, 30.317951, 29.171001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543065, 0.601050, -0.586361,
		0.779488, -0.101210, 0.618187,
		0.312215, -0.792777, -0.523475,
		24.467333, 30.080118, 29.013958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.024710, 30.759789, 29.189371>,  <24.248783, 30.635061, 29.380392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.024710, 30.759789, 29.189371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.853298, 30.504543, 28.933502>,  <24.750452, 30.351397, 28.779982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.853298, 30.504543, 28.933502>,  <25.024710, 30.759789, 29.189371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.853298, 30.504543, 28.933502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446328, 0.466057, -0.763926,
		0.785592, -0.612867, 0.085088,
		-0.428529, -0.638111, -0.639670,
		24.724739, 30.313110, 28.741602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.503214, 30.576607, 28.795683>,  <25.024710, 30.759789, 29.189371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.503214, 30.576607, 28.795683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.185577, 30.460670, 28.581985>,  <24.994995, 30.391109, 28.453768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.185577, 30.460670, 28.581985>,  <25.503214, 30.576607, 28.795683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.185577, 30.460670, 28.581985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353874, 0.494162, -0.794089,
		0.494162, -0.819632, -0.289841,
		0.794089, 0.289841, 0.534242,
		24.947351, 30.373718, 28.421713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.798845, 30.168411, 28.287012>,  <25.503214, 30.576607, 28.795683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.798845, 30.168411, 28.287012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.449064, 30.339554, 28.195564>,  <25.239195, 30.442240, 28.140696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.449064, 30.339554, 28.195564>,  <25.798845, 30.168411, 28.287012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.449064, 30.339554, 28.195564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421566, 0.437053, -0.794523,
		-0.240025, -0.791152, -0.562553,
		-0.874454, 0.427858, -0.228619,
		25.186728, 30.467911, 28.126978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.882135, 30.138313, 27.629883>,  <25.798845, 30.168411, 28.287012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.882135, 30.138313, 27.629883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.563702, 30.379074, 27.655056>,  <25.372641, 30.523531, 27.670160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.563702, 30.379074, 27.655056>,  <25.882135, 30.138313, 27.629883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.563702, 30.379074, 27.655056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328127, 0.516674, -0.790810,
		-0.508507, -0.608903, -0.608817,
		-0.796086, 0.601901, 0.062935,
		25.324875, 30.559645, 27.673937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.559658, 30.186966, 26.940630>,  <25.882135, 30.138313, 27.629883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.559658, 30.186966, 26.940630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.437395, 30.519650, 27.126030>,  <25.364038, 30.719259, 27.237270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.437395, 30.519650, 27.126030>,  <25.559658, 30.186966, 26.940630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.437395, 30.519650, 27.126030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126679, 0.517993, -0.845952,
		-0.943677, -0.199855, -0.263688,
		-0.305656, 0.831710, 0.463501,
		25.345697, 30.769163, 27.265079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.070066, 30.541409, 26.481991>,  <25.559658, 30.186966, 26.940630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.070066, 30.541409, 26.481991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.208523, 30.819069, 26.734447>,  <25.291597, 30.985666, 26.885921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.208523, 30.819069, 26.734447>,  <25.070066, 30.541409, 26.481991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.208523, 30.819069, 26.734447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136373, 0.628356, -0.765879,
		-0.928218, 0.351172, 0.122836,
		0.346141, 0.694152, 0.631142,
		25.312365, 31.027315, 26.923790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.753832, 31.064577, 26.277878>,  <25.070066, 30.541409, 26.481991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.753832, 31.064577, 26.277878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.051785, 31.228035, 26.488842>,  <25.230556, 31.326111, 26.615421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.051785, 31.228035, 26.488842>,  <24.753832, 31.064577, 26.277878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.051785, 31.228035, 26.488842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102559, 0.710962, -0.695711,
		-0.659269, 0.572312, 0.487671,
		0.744880, 0.408646, 0.527411,
		25.275248, 31.350628, 26.647066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.585747, 31.721203, 26.241974>,  <24.753832, 31.064577, 26.277878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.585747, 31.721203, 26.241974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.973959, 31.706356, 26.337215>,  <25.206886, 31.697447, 26.394361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.973959, 31.706356, 26.337215>,  <24.585747, 31.721203, 26.241974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.973959, 31.706356, 26.337215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224287, 0.500495, -0.836182,
		-0.088133, 0.864943, 0.494071,
		0.970530, -0.037118, 0.238106,
		25.265118, 31.695221, 26.408648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.824678, 32.410233, 26.164131>,  <24.585747, 31.721203, 26.241974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.824678, 32.410233, 26.164131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.171175, 32.212910, 26.132454>,  <25.379074, 32.094517, 26.113447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.171175, 32.212910, 26.132454>,  <24.824678, 32.410233, 26.164131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.171175, 32.212910, 26.132454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336764, 0.693588, -0.636809,
		0.369071, 0.524961, 0.766944,
		0.866243, -0.493307, -0.079195,
		25.431047, 32.064919, 26.108696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.211485, 33.015453, 26.039835>,  <24.824678, 32.410233, 26.164131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.211485, 33.015453, 26.039835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.435070, 32.697186, 25.946484>,  <25.569221, 32.506226, 25.890472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.435070, 32.697186, 25.946484>,  <25.211485, 33.015453, 26.039835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.435070, 32.697186, 25.946484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326252, 0.469787, -0.820280,
		0.762312, 0.382366, 0.522184,
		0.558962, -0.795673, -0.233377,
		25.602758, 32.458485, 25.876471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.809013, 33.255341, 25.706013>,  <25.211485, 33.015453, 26.039835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.809013, 33.255341, 25.706013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.802670, 32.877026, 25.576256>,  <25.798862, 32.650036, 25.498402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.802670, 32.877026, 25.576256>,  <25.809013, 33.255341, 25.706013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.802670, 32.877026, 25.576256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258811, 0.309494, -0.915003,
		0.965798, -0.098469, 0.239872,
		-0.015860, -0.945789, -0.324394,
		25.797911, 32.593288, 25.478937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.508938, 33.105629, 25.427504>,  <25.809013, 33.255341, 25.706013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.508938, 33.105629, 25.427504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.260777, 32.844318, 25.253914>,  <26.111879, 32.687531, 25.149761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.260777, 32.844318, 25.253914>,  <26.508938, 33.105629, 25.427504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.260777, 32.844318, 25.253914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363274, 0.251036, -0.897225,
		0.695079, -0.714291, 0.081575,
		-0.620401, -0.653276, -0.433973,
		26.074656, 32.648335, 25.123722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.900209, 32.768509, 24.873049>,  <26.508938, 33.105629, 25.427504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.900209, 32.768509, 24.873049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.508238, 32.771263, 24.793354>,  <26.273056, 32.772915, 24.745537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.508238, 32.771263, 24.793354>,  <26.900209, 32.768509, 24.873049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.508238, 32.771263, 24.793354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156860, 0.643420, -0.749270,
		0.123038, -0.765482, -0.631584,
		-0.979927, 0.006881, -0.199238,
		26.214260, 32.773327, 24.733582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.882338, 32.860928, 24.170370>,  <26.900209, 32.768509, 24.873049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.882338, 32.860928, 24.170370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.495220, 32.922504, 24.250050>,  <26.262949, 32.959450, 24.297857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.495220, 32.922504, 24.250050>,  <26.882338, 32.860928, 24.170370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.495220, 32.922504, 24.250050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089992, 0.527424, -0.844823,
		-0.235114, -0.835539, -0.496583,
		-0.967793, 0.153942, 0.199197,
		26.204882, 32.968685, 24.309809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.495724, 32.643475, 23.589113>,  <26.882338, 32.860928, 24.170370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.495724, 32.643475, 23.589113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.255312, 32.897465, 23.783257>,  <26.111065, 33.049858, 23.899742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.255312, 32.897465, 23.783257>,  <26.495724, 32.643475, 23.589113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.255312, 32.897465, 23.783257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192559, 0.474347, -0.859020,
		-0.775684, -0.609756, -0.162826,
		-0.601029, 0.634974, 0.485357,
		26.075003, 33.087955, 23.928864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.926741, 32.790134, 23.168026>,  <26.495724, 32.643475, 23.589113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.926741, 32.790134, 23.168026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.917583, 33.094231, 23.427723>,  <25.912090, 33.276688, 23.583542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.917583, 33.094231, 23.427723>,  <25.926741, 32.790134, 23.168026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.917583, 33.094231, 23.427723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251012, 0.624239, -0.739810,
		-0.967713, -0.179903, 0.176538,
		-0.022892, 0.760237, 0.649243,
		25.910715, 33.322300, 23.622496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.368074, 33.247890, 22.836477>,  <25.926741, 32.790134, 23.168026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.368074, 33.247890, 22.836477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.614780, 33.472153, 23.057480>,  <25.762804, 33.606712, 23.190081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.614780, 33.472153, 23.057480>,  <25.368074, 33.247890, 22.836477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.614780, 33.472153, 23.057480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050846, 0.672068, -0.738742,
		-0.785504, 0.483723, 0.386000,
		0.616765, 0.560658, 0.552507,
		25.799810, 33.640350, 23.223232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.167160, 33.797665, 22.550056>,  <25.368074, 33.247890, 22.836477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.167160, 33.797665, 22.550056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.493525, 33.910099, 22.752155>,  <25.689344, 33.977558, 22.873415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.493525, 33.910099, 22.752155>,  <25.167160, 33.797665, 22.550056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.493525, 33.910099, 22.752155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144940, 0.746527, -0.649377,
		-0.559713, 0.603066, 0.568360,
		0.815913, 0.281086, 0.505249,
		25.738298, 33.994427, 22.903730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.079081, 34.548340, 22.585039>,  <25.167160, 33.797665, 22.550056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.079081, 34.548340, 22.585039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.446762, 34.391842, 22.602894>,  <25.667370, 34.297943, 22.613607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.446762, 34.391842, 22.602894>,  <25.079081, 34.548340, 22.585039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.446762, 34.391842, 22.602894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278107, 0.564740, -0.776997,
		0.278792, 0.726631, 0.627919,
		0.919202, -0.391249, 0.044636,
		25.722523, 34.274467, 22.616285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.459133, 35.100864, 22.545706>,  <25.079081, 34.548340, 22.585039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.459133, 35.100864, 22.545706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.693270, 34.789936, 22.453484>,  <25.833752, 34.603378, 22.398151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.693270, 34.789936, 22.453484>,  <25.459133, 35.100864, 22.545706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.693270, 34.789936, 22.453484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422606, 0.535176, -0.731430,
		0.691940, 0.330702, 0.641759,
		0.585340, -0.777317, -0.230553,
		25.868872, 34.556740, 22.384317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.182228, 35.321705, 22.357569>,  <25.459133, 35.100864, 22.545706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.182228, 35.321705, 22.357569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.143454, 34.977230, 22.157986>,  <26.120188, 34.770546, 22.038237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.143454, 34.977230, 22.157986>,  <26.182228, 35.321705, 22.357569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.143454, 34.977230, 22.157986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409644, 0.422366, -0.808578,
		0.907080, -0.282777, 0.311837,
		-0.096938, -0.861188, -0.498958,
		26.114372, 34.718872, 22.008299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.254108, 36.151924, 22.385418>,  <26.182228, 35.321705, 22.357569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.254108, 36.151924, 22.385418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.896593, 36.073132, 22.224251>,  <25.682085, 36.025856, 22.127550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.896593, 36.073132, 22.224251>,  <26.254108, 36.151924, 22.385418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.896593, 36.073132, 22.224251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387864, 0.790563, 0.473890,
		0.225183, 0.579833, -0.782998,
		-0.893786, -0.196985, -0.402918,
		25.628458, 36.014034, 22.103374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.870573, 36.791882, 22.001541>,  <26.254108, 36.151924, 22.385418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.870573, 36.791882, 22.001541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.598612, 36.534805, 22.142780>,  <25.435434, 36.380558, 22.227524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.598612, 36.534805, 22.142780>,  <25.870573, 36.791882, 22.001541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.598612, 36.534805, 22.142780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450708, 0.746082, 0.490126,
		-0.578442, 0.174093, -0.796929,
		-0.679902, -0.642692, 0.353100,
		25.394642, 36.341999, 22.248711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.138885, 36.932648, 21.765516>,  <25.870573, 36.791882, 22.001541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.138885, 36.932648, 21.765516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.163553, 36.771343, 22.130718>,  <25.178354, 36.674561, 22.349840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.163553, 36.771343, 22.130718>,  <25.138885, 36.932648, 21.765516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.163553, 36.771343, 22.130718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467853, 0.796347, 0.383333,
		-0.881652, -0.450792, -0.139558,
		0.061667, -0.403259, 0.913006,
		25.182053, 36.650364, 22.404619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.543404, 37.331276, 22.133497>,  <25.138885, 36.932648, 21.765516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.543404, 37.331276, 22.133497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.272543, 37.617355, 22.064266>,  <24.110027, 37.789001, 22.022728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.272543, 37.617355, 22.064266>,  <24.543404, 37.331276, 22.133497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.272543, 37.617355, 22.064266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735665, 0.663170, -0.137849,
		0.016190, -0.220671, -0.975214,
		-0.677152, 0.715199, -0.173077,
		24.069397, 37.831917, 22.012342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.172279, 37.042942, 22.593021>,  <24.543404, 37.331276, 22.133497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.172279, 37.042942, 22.593021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.953518, 36.906532, 22.898857>,  <23.822260, 36.824684, 23.082357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.953518, 36.906532, 22.898857>,  <24.172279, 37.042942, 22.593021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.953518, 36.906532, 22.898857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336970, -0.746361, -0.573931,
		0.766385, -0.571529, 0.293272,
		-0.546905, -0.341028, 0.764588,
		23.789446, 36.804222, 23.128233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.406239, 36.405392, 22.910357>,  <24.172279, 37.042942, 22.593021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.406239, 36.405392, 22.910357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.008329, 36.435532, 22.937931>,  <23.769585, 36.453617, 22.954475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.008329, 36.435532, 22.937931>,  <24.406239, 36.405392, 22.910357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.008329, 36.435532, 22.937931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094243, -0.937355, -0.335387,
		0.039347, -0.340130, 0.939555,
		-0.994771, 0.075350, 0.068937,
		23.709898, 36.458138, 22.958612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.132923, 35.959007, 23.312166>,  <24.406239, 36.405392, 22.910357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.132923, 35.959007, 23.312166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.834623, 36.045673, 23.060162>,  <23.655643, 36.097672, 22.908958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.834623, 36.045673, 23.060162>,  <24.132923, 35.959007, 23.312166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.834623, 36.045673, 23.060162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059723, -0.920092, -0.387122,
		-0.663544, -0.326323, 0.673218,
		-0.745749, 0.216666, -0.630011,
		23.610899, 36.110672, 22.871159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.093266, 35.373310, 22.977182>,  <24.132923, 35.959007, 23.312166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.093266, 35.373310, 22.977182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.842581, 35.562141, 22.729191>,  <23.692169, 35.675442, 22.580397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.842581, 35.562141, 22.729191>,  <24.093266, 35.373310, 22.977182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.842581, 35.562141, 22.729191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060332, -0.822615, -0.565389,
		-0.776911, -0.316933, 0.544026,
		-0.626714, 0.472079, -0.619977,
		23.654568, 35.703766, 22.543198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.569515, 34.875771, 22.869921>,  <24.093266, 35.373310, 22.977182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.569515, 34.875771, 22.869921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.604366, 35.145416, 22.576534>,  <23.625277, 35.307205, 22.400501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.604366, 35.145416, 22.576534>,  <23.569515, 34.875771, 22.869921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.604366, 35.145416, 22.576534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141721, -0.737167, -0.660682,
		-0.986065, -0.046384, -0.159765,
		0.087128, 0.674117, -0.733468,
		23.630505, 35.347652, 22.356495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.232058, 34.571125, 22.388680>,  <23.569515, 34.875771, 22.869921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.232058, 34.571125, 22.388680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.465052, 34.839428, 22.205029>,  <23.604849, 35.000408, 22.094837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.465052, 34.839428, 22.205029>,  <23.232058, 34.571125, 22.388680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.465052, 34.839428, 22.205029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275178, -0.694214, -0.665090,
		-0.764845, 0.261064, -0.588946,
		0.582485, 0.670756, -0.459127,
		23.639797, 35.040653, 22.067291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.191383, 34.460667, 21.654896>,  <23.232058, 34.571125, 22.388680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.191383, 34.460667, 21.654896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.531128, 34.671581, 21.664280>,  <23.734974, 34.798130, 21.669910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.531128, 34.671581, 21.664280>,  <23.191383, 34.460667, 21.654896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.531128, 34.671581, 21.664280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426791, -0.659968, -0.618298,
		-0.310539, 0.535172, -0.785594,
		0.849362, 0.527290, 0.023461,
		23.785936, 34.829769, 21.671318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.322279, 34.528339, 20.954109>,  <23.191383, 34.460667, 21.654896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.322279, 34.528339, 20.954109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.674860, 34.626904, 21.115265>,  <23.886408, 34.686043, 21.211960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.674860, 34.626904, 21.115265>,  <23.322279, 34.528339, 20.954109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.674860, 34.626904, 21.115265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472258, -0.453023, -0.756137,
		-0.003804, 0.856767, -0.515689,
		0.881452, 0.246414, 0.402892,
		23.939295, 34.700829, 21.236132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.749434, 34.846710, 20.368217>,  <23.322279, 34.528339, 20.954109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.749434, 34.846710, 20.368217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.975807, 34.707321, 20.667091>,  <24.111631, 34.623688, 20.846416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.975807, 34.707321, 20.667091>,  <23.749434, 34.846710, 20.368217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.975807, 34.707321, 20.667091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465784, -0.612647, -0.638521,
		0.680268, 0.709387, -0.184404,
		0.565933, -0.348473, 0.747185,
		24.145588, 34.602779, 20.891247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.254385, 34.622368, 20.037802>,  <23.749434, 34.846710, 20.368217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.254385, 34.622368, 20.037802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.373781, 34.482601, 20.393063>,  <24.445419, 34.398739, 20.606218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.373781, 34.482601, 20.393063>,  <24.254385, 34.622368, 20.037802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.373781, 34.482601, 20.393063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606891, -0.648717, -0.459183,
		0.736605, 0.676072, 0.018425,
		0.298488, -0.349419, 0.888150,
		24.463327, 34.377777, 20.659508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.885647, 34.845520, 20.042879>,  <24.254385, 34.622368, 20.037802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.885647, 34.845520, 20.042879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.858841, 34.520916, 20.275074>,  <24.842756, 34.326153, 20.414391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.858841, 34.520916, 20.275074>,  <24.885647, 34.845520, 20.042879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.858841, 34.520916, 20.275074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659192, -0.472749, -0.584786,
		0.748982, 0.343464, 0.566620,
		-0.067016, -0.811506, 0.580489,
		24.838736, 34.277466, 20.449221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.580980, 34.577400, 20.251318>,  <24.885647, 34.845520, 20.042879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.580980, 34.577400, 20.251318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.341179, 34.257408, 20.261406>,  <25.197298, 34.065414, 20.267460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.341179, 34.257408, 20.261406>,  <25.580980, 34.577400, 20.251318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.341179, 34.257408, 20.261406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584629, -0.459209, -0.668832,
		0.546632, -0.386221, 0.742985,
		-0.599502, -0.799975, 0.025222,
		25.161327, 34.017414, 20.268972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.984985, 34.011040, 20.318302>,  <25.580980, 34.577400, 20.251318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.984985, 34.011040, 20.318302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.647694, 33.864311, 20.161121>,  <25.445318, 33.776276, 20.066813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.647694, 33.864311, 20.161121>,  <25.984985, 34.011040, 20.318302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.647694, 33.864311, 20.161121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535478, -0.508950, -0.673968,
		0.047230, -0.778726, 0.625584,
		-0.843228, -0.366818, -0.392953,
		25.394726, 33.754265, 20.043236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.066408, 33.350765, 20.401119>,  <25.984985, 34.011040, 20.318302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.066408, 33.350765, 20.401119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.781166, 33.377354, 20.121960>,  <25.610022, 33.393307, 19.954464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.781166, 33.377354, 20.121960>,  <26.066408, 33.350765, 20.401119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.781166, 33.377354, 20.121960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460523, -0.706166, -0.537818,
		-0.528585, -0.704919, 0.472956,
		-0.713103, 0.066475, -0.697900,
		25.567236, 33.397297, 19.912590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.959026, 32.622131, 20.149649>,  <26.066408, 33.350765, 20.401119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.959026, 32.622131, 20.149649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.773312, 32.841637, 19.871571>,  <25.661882, 32.973339, 19.704723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.773312, 32.841637, 19.871571>,  <25.959026, 32.622131, 20.149649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.773312, 32.841637, 19.871571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448664, -0.531032, -0.718822,
		-0.763634, -0.645650, 0.000342,
		-0.464289, 0.548764, -0.695194,
		25.634026, 33.006268, 19.663012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.835432, 32.155209, 19.685991>,  <25.959026, 32.622131, 20.149649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.835432, 32.155209, 19.685991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.790407, 32.491890, 19.474758>,  <25.763393, 32.693897, 19.348019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.790407, 32.491890, 19.474758>,  <25.835432, 32.155209, 19.685991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.790407, 32.491890, 19.474758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376826, -0.455602, -0.806492,
		-0.919420, -0.289774, -0.265891,
		-0.112560, 0.841699, -0.528084,
		25.756639, 32.744400, 19.316334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.533754, 31.936686, 19.078918>,  <25.835432, 32.155209, 19.685991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.533754, 31.936686, 19.078918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.705242, 32.284214, 18.979843>,  <25.808136, 32.492729, 18.920397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.705242, 32.284214, 18.979843>,  <25.533754, 31.936686, 19.078918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.705242, 32.284214, 18.979843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351970, -0.413127, -0.839906,
		-0.832055, 0.272906, -0.482915,
		0.428721, 0.868820, -0.247690,
		25.833858, 32.544861, 18.905537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.370317, 31.952543, 18.463327>,  <25.533754, 31.936686, 19.078918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.370317, 31.952543, 18.463327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.681835, 32.202148, 18.488907>,  <25.868746, 32.351910, 18.504255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.681835, 32.202148, 18.488907>,  <25.370317, 31.952543, 18.463327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.681835, 32.202148, 18.488907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323423, -0.312100, -0.893303,
		-0.537474, 0.716381, -0.444882,
		0.778794, 0.624012, 0.063949,
		25.915474, 32.389351, 18.508091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.312101, 32.373726, 17.989902>,  <25.370317, 31.952543, 18.463327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.312101, 32.373726, 17.989902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.701305, 32.340240, 18.075924>,  <25.934828, 32.320148, 18.127537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.701305, 32.340240, 18.075924>,  <25.312101, 32.373726, 17.989902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.701305, 32.340240, 18.075924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193806, -0.209452, -0.958420,
		0.125278, 0.974229, -0.187574,
		0.973008, -0.083716, 0.215051,
		25.993208, 32.315125, 18.140440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.537544, 32.412838, 17.348913>,  <25.312101, 32.373726, 17.989902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.537544, 32.412838, 17.348913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.871414, 32.311008, 17.544266>,  <26.071735, 32.249912, 17.661476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.871414, 32.311008, 17.544266>,  <25.537544, 32.412838, 17.348913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.871414, 32.311008, 17.544266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353080, -0.433215, -0.829252,
		0.422676, 0.864592, -0.271709,
		0.834673, -0.254570, 0.488380,
		26.121817, 32.234638, 17.690781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.005566, 32.476166, 16.850746>,  <25.537544, 32.412838, 17.348913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.005566, 32.476166, 16.850746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.166616, 32.228443, 17.120369>,  <26.263247, 32.079811, 17.282143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.166616, 32.228443, 17.120369>,  <26.005566, 32.476166, 16.850746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.166616, 32.228443, 17.120369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404184, -0.540423, -0.737955,
		0.821294, 0.569565, 0.032723,
		0.402629, -0.619305, 0.674056,
		26.287405, 32.042652, 17.322586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.709272, 32.358582, 16.710411>,  <26.005566, 32.476166, 16.850746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.709272, 32.358582, 16.710411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.622507, 32.038738, 16.934402>,  <26.570448, 31.846832, 17.068796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.622507, 32.038738, 16.934402>,  <26.709272, 32.358582, 16.710411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.622507, 32.038738, 16.934402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236864, -0.599604, -0.764441,
		0.947018, -0.033179, 0.319461,
		-0.216914, -0.799609, 0.559977,
		26.557432, 31.798855, 17.102396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.204111, 31.852440, 16.550858>,  <26.709272, 32.358582, 16.710411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.204111, 31.852440, 16.550858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.924854, 31.625282, 16.725258>,  <26.757299, 31.488989, 16.829899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.924854, 31.625282, 16.725258>,  <27.204111, 31.852440, 16.550858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.924854, 31.625282, 16.725258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102975, -0.682289, -0.723795,
		0.708516, -0.460414, 0.534813,
		-0.698142, -0.567892, 0.436001,
		26.715412, 31.454914, 16.856058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.512297, 31.164635, 16.602987>,  <27.204111, 31.852440, 16.550858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.512297, 31.164635, 16.602987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.114246, 31.134308, 16.577770>,  <26.875416, 31.116112, 16.562641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.114246, 31.134308, 16.577770>,  <27.512297, 31.164635, 16.602987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.114246, 31.134308, 16.577770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093547, -0.523804, -0.846687,
		0.031174, -0.848458, 0.528344,
		-0.995126, -0.075819, -0.063042,
		26.815708, 31.111563, 16.558857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.015289, 31.177593, 15.912127>,  <27.512297, 31.164635, 16.602987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.015289, 31.177593, 15.912127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.870331, 31.518627, 15.761519>,  <26.783356, 31.723248, 15.671155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.870331, 31.518627, 15.761519>,  <27.015289, 31.177593, 15.912127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.870331, 31.518627, 15.761519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448743, -0.513685, -0.731272,
		-0.816884, -0.096050, 0.568749,
		-0.362397, 0.852586, -0.376519,
		26.761612, 31.774403, 15.648564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.280651, 31.344807, 15.856608>,  <27.015289, 31.177593, 15.912127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.280651, 31.344807, 15.856608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.485126, 31.477055, 15.539275>,  <26.607811, 31.556404, 15.348875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.485126, 31.477055, 15.539275>,  <26.280651, 31.344807, 15.856608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.485126, 31.477055, 15.539275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410696, -0.716881, -0.563392,
		-0.754994, 0.613818, -0.230678,
		0.511188, 0.330619, -0.793333,
		26.638483, 31.576241, 15.301275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.924191, 31.691883, 15.309613>,  <26.280651, 31.344807, 15.856608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.924191, 31.691883, 15.309613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.246729, 31.470280, 15.226783>,  <26.440252, 31.337317, 15.177084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.246729, 31.470280, 15.226783>,  <25.924191, 31.691883, 15.309613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.246729, 31.470280, 15.226783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588725, -0.718288, -0.370762,
		0.056665, 0.420873, -0.905348,
		0.806345, -0.554010, -0.207077,
		26.488632, 31.304077, 15.164660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.988964, 31.639160, 14.550494>,  <25.924191, 31.691883, 15.309613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.988964, 31.639160, 14.550494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.101450, 31.371933, 14.826060>,  <26.168941, 31.211597, 14.991400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.101450, 31.371933, 14.826060>,  <25.988964, 31.639160, 14.550494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.101450, 31.371933, 14.826060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771752, -0.584116, -0.251411,
		0.570366, -0.460972, -0.679844,
		0.281214, -0.668067, 0.688916,
		26.185814, 31.171513, 15.032735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.196003, 31.804853, 14.662388>,  <25.988964, 31.639160, 14.550494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.196003, 31.804853, 14.662388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.359528, 31.479343, 14.497153>,  <25.457644, 31.284037, 14.398012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.359528, 31.479343, 14.497153>,  <25.196003, 31.804853, 14.662388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.359528, 31.479343, 14.497153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396010, -0.249622, 0.883666,
		-0.822222, -0.524840, 0.220215,
		0.408813, -0.813776, -0.413086,
		25.482172, 31.235210, 14.373227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.546568, 31.785378, 14.937526>,  <25.196003, 31.804853, 14.662388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.546568, 31.785378, 14.937526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.369873, 31.429230, 14.981547>,  <24.263857, 31.215542, 15.007960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.369873, 31.429230, 14.981547>,  <24.546568, 31.785378, 14.937526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.369873, 31.429230, 14.981547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498660, 0.345652, 0.794898,
		-0.745793, 0.296256, -0.596679,
		-0.441736, -0.890369, 0.110054,
		24.237352, 31.162119, 15.014564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.918192, 31.944780, 15.121552>,  <24.546568, 31.785378, 14.937526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.918192, 31.944780, 15.121552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.951435, 31.578712, 15.279317>,  <23.971382, 31.359072, 15.373976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.951435, 31.578712, 15.279317>,  <23.918192, 31.944780, 15.121552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.951435, 31.578712, 15.279317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465871, 0.314190, 0.827194,
		-0.880941, -0.252493, -0.400238,
		0.083110, -0.915168, 0.394412,
		23.976368, 31.304163, 15.397640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.226160, 31.651098, 15.300049>,  <23.918192, 31.944780, 15.121552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.226160, 31.651098, 15.300049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.510975, 31.533310, 15.555013>,  <23.681864, 31.462637, 15.707991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.510975, 31.533310, 15.555013>,  <23.226160, 31.651098, 15.300049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.510975, 31.533310, 15.555013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582003, 0.260305, 0.770399,
		-0.392779, -0.919527, 0.013965,
		0.712037, -0.294469, 0.637409,
		23.724586, 31.444969, 15.746236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.970436, 31.166082, 15.898495>,  <23.226160, 31.651098, 15.300049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.970436, 31.166082, 15.898495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.285759, 31.374199, 16.029869>,  <23.474953, 31.499069, 16.108694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.285759, 31.374199, 16.029869>,  <22.970436, 31.166082, 15.898495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.285759, 31.374199, 16.029869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474673, 0.174633, 0.862664,
		0.391480, -0.835944, 0.384632,
		0.788307, 0.520290, 0.328435,
		23.522251, 31.530285, 16.128399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.160809, 31.100597, 16.616697>,  <22.970436, 31.166082, 15.898495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.160809, 31.100597, 16.616697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.331127, 31.455029, 16.543419>,  <23.433317, 31.667688, 16.499453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.331127, 31.455029, 16.543419>,  <23.160809, 31.100597, 16.616697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.331127, 31.455029, 16.543419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284353, 0.323248, 0.902582,
		0.858977, -0.332224, 0.389597,
		0.425795, 0.886080, -0.183194,
		23.458866, 31.720852, 16.488461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.436861, 31.262800, 17.299679>,  <23.160809, 31.100597, 16.616697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.436861, 31.262800, 17.299679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.451351, 31.614845, 17.110325>,  <23.460045, 31.826073, 16.996712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.451351, 31.614845, 17.110325>,  <23.436861, 31.262800, 17.299679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.451351, 31.614845, 17.110325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130979, 0.473790, 0.870843,
		0.990723, 0.030457, 0.132439,
		0.036225, 0.880111, -0.473384,
		23.462219, 31.878878, 16.968309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.031149, 31.640886, 17.641724>,  <23.436861, 31.262800, 17.299679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.031149, 31.640886, 17.641724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.777458, 31.884178, 17.450806>,  <23.625244, 32.030155, 17.336254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.777458, 31.884178, 17.450806>,  <24.031149, 31.640886, 17.641724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.777458, 31.884178, 17.450806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183578, 0.481215, 0.857165,
		0.751035, 0.631259, -0.193542,
		-0.634228, 0.608230, -0.477295,
		23.587189, 32.066647, 17.307617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.202686, 32.260296, 17.989977>,  <24.031149, 31.640886, 17.641724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.202686, 32.260296, 17.989977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.844072, 32.313091, 17.820835>,  <23.628904, 32.344769, 17.719351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.844072, 32.313091, 17.820835>,  <24.202686, 32.260296, 17.989977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.844072, 32.313091, 17.820835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264875, 0.605393, 0.750560,
		0.355059, 0.784906, -0.507795,
		-0.896535, 0.131991, -0.422852,
		23.575111, 32.352688, 17.693979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.051897, 32.991806, 18.051708>,  <24.202686, 32.260296, 17.989977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.051897, 32.991806, 18.051708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.691786, 32.827007, 17.995483>,  <23.475719, 32.728130, 17.961748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.691786, 32.827007, 17.995483>,  <24.051897, 32.991806, 18.051708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.691786, 32.827007, 17.995483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393139, 0.630852, 0.668930,
		-0.186920, 0.657485, -0.729914,
		-0.900279, -0.411994, -0.140564,
		23.421701, 32.703407, 17.953314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.569336, 33.508701, 17.949471>,  <24.051897, 32.991806, 18.051708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.569336, 33.508701, 17.949471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.349224, 33.189754, 18.048588>,  <23.217157, 32.998386, 18.108059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.349224, 33.189754, 18.048588>,  <23.569336, 33.508701, 17.949471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.349224, 33.189754, 18.048588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493675, 0.550033, 0.673609,
		-0.673406, 0.248345, -0.696311,
		-0.550281, -0.797364, 0.247793,
		23.184139, 32.950546, 18.122927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.841351, 33.750092, 17.876715>,  <23.569336, 33.508701, 17.949471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.841351, 33.750092, 17.876715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.836683, 33.419067, 18.101219>,  <22.833883, 33.220455, 18.235922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.836683, 33.419067, 18.101219>,  <22.841351, 33.750092, 17.876715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.836683, 33.419067, 18.101219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667263, 0.424489, 0.612021,
		-0.744731, -0.367366, -0.557151,
		-0.011669, -0.827558, 0.561260,
		22.833183, 33.170799, 18.269598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.185101, 33.504143, 17.973797>,  <22.841351, 33.750092, 17.876715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.185101, 33.504143, 17.973797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.360537, 33.349209, 18.298168>,  <22.465797, 33.256248, 18.492792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.360537, 33.349209, 18.298168>,  <22.185101, 33.504143, 17.973797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.360537, 33.349209, 18.298168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715349, 0.395727, 0.575914,
		-0.543981, -0.832688, -0.103520,
		0.438590, -0.387339, 0.810930,
		22.492113, 33.233006, 18.541447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.671539, 33.432194, 18.272482>,  <22.185101, 33.504143, 17.973797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.671539, 33.432194, 18.272482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.959711, 33.405140, 18.548573>,  <22.132614, 33.388908, 18.714226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.959711, 33.405140, 18.548573>,  <21.671539, 33.432194, 18.272482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.959711, 33.405140, 18.548573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625906, 0.365248, 0.689083,
		-0.298708, -0.928450, 0.220802,
		0.720427, -0.067633, 0.690225,
		22.175838, 33.384850, 18.755640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.389835, 33.284389, 18.988111>,  <21.671539, 33.432194, 18.272482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.389835, 33.284389, 18.988111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.749273, 33.434776, 19.078602>,  <21.964935, 33.525009, 19.132896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.749273, 33.434776, 19.078602>,  <21.389835, 33.284389, 18.988111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.749273, 33.434776, 19.078602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404832, 0.511528, 0.757925,
		0.169234, -0.772650, 0.611859,
		0.898594, 0.375967, 0.226226,
		22.018852, 33.547565, 19.146469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.349030, 33.190399, 19.682030>,  <21.389835, 33.284389, 18.988111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.349030, 33.190399, 19.682030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.646038, 33.454281, 19.635628>,  <21.824244, 33.612610, 19.607786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.646038, 33.454281, 19.635628>,  <21.349030, 33.190399, 19.682030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.646038, 33.454281, 19.635628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250983, 0.434590, 0.864950,
		0.621026, -0.613126, 0.488266,
		0.742519, 0.659703, -0.116008,
		21.868793, 33.652191, 19.600826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.688717, 33.224274, 20.310209>,  <21.349030, 33.190399, 19.682030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.688717, 33.224274, 20.310209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.775564, 33.564560, 20.118736>,  <21.827673, 33.768734, 20.003853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.775564, 33.564560, 20.118736>,  <21.688717, 33.224274, 20.310209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.775564, 33.564560, 20.118736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255216, 0.522796, 0.813356,
		0.942192, -0.054426, 0.330625,
		0.217117, 0.850718, -0.478684,
		21.840700, 33.819775, 19.975132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.057730, 33.570004, 20.753975>,  <21.688717, 33.224274, 20.310209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.057730, 33.570004, 20.753975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.935984, 33.864693, 20.512447>,  <21.862936, 34.041508, 20.367531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.935984, 33.864693, 20.512447>,  <22.057730, 33.570004, 20.753975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.935984, 33.864693, 20.512447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092548, 0.608024, 0.788506,
		0.948049, 0.295877, -0.116879,
		-0.304366, 0.736725, -0.603819,
		21.844673, 34.085709, 20.331301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.483601, 34.015285, 20.925571>,  <22.057730, 33.570004, 20.753975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.483601, 34.015285, 20.925571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.164986, 34.188721, 20.757034>,  <21.973818, 34.292782, 20.655912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.164986, 34.188721, 20.757034>,  <22.483601, 34.015285, 20.925571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.164986, 34.188721, 20.757034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099229, 0.593698, 0.798547,
		0.596393, 0.677880, -0.429877,
		-0.796536, 0.433591, -0.421342,
		21.926025, 34.318798, 20.630632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.562555, 34.737686, 21.063419>,  <22.483601, 34.015285, 20.925571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.562555, 34.737686, 21.063419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.176981, 34.680191, 20.973831>,  <21.945637, 34.645695, 20.920078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.176981, 34.680191, 20.973831>,  <22.562555, 34.737686, 21.063419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.176981, 34.680191, 20.973831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266083, 0.504942, 0.821118,
		-0.004934, 0.851101, -0.524979,
		-0.963938, -0.143739, -0.223972,
		21.887800, 34.637070, 20.906639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.310101, 35.377518, 21.184374>,  <22.562555, 34.737686, 21.063419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.310101, 35.377518, 21.184374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.010328, 35.112736, 21.179188>,  <21.830465, 34.953865, 21.176077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.010328, 35.112736, 21.179188>,  <22.310101, 35.377518, 21.184374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.010328, 35.112736, 21.179188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328277, 0.354511, 0.875532,
		-0.574967, 0.660407, -0.482987,
		-0.749431, -0.661955, -0.012964,
		21.785500, 34.914150, 21.175299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.687391, 35.802666, 21.062605>,  <22.310101, 35.377518, 21.184374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.687391, 35.802666, 21.062605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.559092, 35.465340, 21.235088>,  <21.482111, 35.262943, 21.338579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.559092, 35.465340, 21.235088>,  <21.687391, 35.802666, 21.062605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.559092, 35.465340, 21.235088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364086, 0.530061, 0.765817,
		-0.874392, 0.088639, -0.477056,
		-0.320750, -0.843314, 0.431209,
		21.462866, 35.212345, 21.364450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.058393, 35.941818, 21.214703>,  <21.687391, 35.802666, 21.062605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.058393, 35.941818, 21.214703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.109665, 35.630848, 21.461014>,  <21.140427, 35.444267, 21.608801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.109665, 35.630848, 21.461014>,  <21.058393, 35.941818, 21.214703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.109665, 35.630848, 21.461014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615766, 0.424337, 0.663906,
		-0.777434, -0.464271, -0.424322,
		0.128177, -0.777426, 0.615776,
		21.148117, 35.397621, 21.645746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.453550, 35.856052, 21.397659>,  <21.058393, 35.941818, 21.214703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.453550, 35.856052, 21.397659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.674633, 35.692818, 21.688309>,  <20.807281, 35.594875, 21.862698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.674633, 35.692818, 21.688309>,  <20.453550, 35.856052, 21.397659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.674633, 35.692818, 21.688309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567167, 0.454638, 0.686751,
		-0.610605, -0.791687, 0.019827,
		0.552706, -0.408088, 0.726623,
		20.840445, 35.570393, 21.906296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.138296, 35.959023, 21.970051>,  <20.453550, 35.856052, 21.397659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.138296, 35.959023, 21.970051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.484047, 35.858475, 22.144253>,  <20.691498, 35.798145, 22.248774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.484047, 35.858475, 22.144253>,  <20.138296, 35.959023, 21.970051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.484047, 35.858475, 22.144253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301386, 0.434296, 0.848854,
		-0.402516, -0.864985, 0.299636,
		0.864377, -0.251371, 0.435505,
		20.743361, 35.783062, 22.274904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.053381, 35.522850, 22.578075>,  <20.138296, 35.959023, 21.970051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.053381, 35.522850, 22.578075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.371090, 35.762035, 22.621101>,  <20.561716, 35.905548, 22.646917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.371090, 35.762035, 22.621101>,  <20.053381, 35.522850, 22.578075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.371090, 35.762035, 22.621101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290537, 0.218338, 0.931620,
		0.533591, -0.771212, 0.347150,
		0.794273, 0.597964, 0.107563,
		20.609371, 35.941425, 22.653370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.296844, 35.723946, 22.662706>,  <20.053381, 35.522850, 22.578075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.296844, 35.723946, 22.662706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.249542, 36.115517, 22.596119>,  <19.221161, 36.350460, 22.556166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.249542, 36.115517, 22.596119>,  <19.296844, 35.723946, 22.662706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.249542, 36.115517, 22.596119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919226, -0.171329, -0.354499,
		-0.375551, 0.111101, 0.920119,
		-0.118258, 0.978929, -0.166470,
		19.214066, 36.409195, 22.546179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.683287, 35.981422, 22.943850>,  <19.296844, 35.723946, 22.662706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.683287, 35.981422, 22.943850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.744671, 36.232548, 22.638615>,  <18.781502, 36.383224, 22.455473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.744671, 36.232548, 22.638615>,  <18.683287, 35.981422, 22.943850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.744671, 36.232548, 22.638615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.981433, 0.006917, -0.191680,
		-0.115061, 0.778334, 0.617218,
		0.153461, 0.627813, -0.763086,
		18.790709, 36.420891, 22.409689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.104334, 36.472786, 22.926062>,  <18.683287, 35.981422, 22.943850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.104334, 36.472786, 22.926062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.253294, 36.502480, 22.556023>,  <18.342670, 36.520294, 22.334000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.253294, 36.502480, 22.556023>,  <18.104334, 36.472786, 22.926062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.253294, 36.502480, 22.556023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921120, 0.151336, -0.358657,
		0.113377, 0.985691, 0.124733,
		0.372401, 0.074231, -0.925098,
		18.365015, 36.524750, 22.278494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.818869, 37.093143, 22.672817>,  <18.104334, 36.472786, 22.926062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.818869, 37.093143, 22.672817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.885700, 36.798035, 22.411201>,  <17.925798, 36.620968, 22.254232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.885700, 36.798035, 22.411201>,  <17.818869, 37.093143, 22.672817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.885700, 36.798035, 22.411201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.907867, 0.143595, -0.393900,
		0.384527, 0.659596, -0.645811,
		0.167080, -0.737777, -0.654042,
		17.935823, 36.576702, 22.214989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.595711, 37.679733, 22.435944>,  <17.818869, 37.093143, 22.672817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.595711, 37.679733, 22.435944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.901934, 37.632183, 22.688862>,  <18.085667, 37.603653, 22.840612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.901934, 37.632183, 22.688862>,  <17.595711, 37.679733, 22.435944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.901934, 37.632183, 22.688862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374553, 0.716718, 0.588239,
		-0.523102, -0.687156, 0.504163,
		0.765555, -0.118874, 0.632293,
		18.131599, 37.596519, 22.878550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<27.772661, 26.004005, 28.170794> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.139750, 25.858475, 28.234566>,  <28.360003, 25.771156, 28.272829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.139750, 25.858475, 28.234566>,  <27.772661, 26.004005, 28.170794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.139750, 25.858475, 28.234566> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368180, 0.628445, -0.685200,
		0.149102, 0.687522, 0.710692,
		0.917721, -0.363827, 0.159430,
		28.415066, 25.749327, 28.282394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.165068, 26.611010, 28.199867>,  <27.772661, 26.004005, 28.170794>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.165068, 26.611010, 28.199867> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.418633, 26.310974, 28.124477>,  <28.570772, 26.130953, 28.079245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.418633, 26.310974, 28.124477>,  <28.165068, 26.611010, 28.199867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.418633, 26.310974, 28.124477> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551329, 0.609170, -0.570043,
		0.542395, 0.257446, 0.799706,
		0.633912, -0.750089, -0.188473,
		28.608807, 26.085947, 28.067936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.807375, 26.876465, 28.393356>,  <28.165068, 26.611010, 28.199867>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.807375, 26.876465, 28.393356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.870039, 26.569618, 28.144524>,  <28.907639, 26.385509, 27.995224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.870039, 26.569618, 28.144524>,  <28.807375, 26.876465, 28.393356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.870039, 26.569618, 28.144524> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481535, 0.609253, -0.630028,
		0.862311, -0.200853, 0.464841,
		0.156662, -0.767117, -0.622084,
		28.917038, 26.339483, 27.957899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.526922, 26.902721, 28.233551>,  <28.807375, 26.876465, 28.393356>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.526922, 26.902721, 28.233551> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.352634, 26.698418, 27.937099>,  <29.248062, 26.575834, 27.759230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.352634, 26.698418, 27.937099>,  <29.526922, 26.902721, 28.233551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.352634, 26.698418, 27.937099> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576672, 0.473794, -0.665559,
		0.691083, -0.717386, 0.088100,
		-0.435722, -0.510762, -0.741127,
		29.221918, 26.545189, 27.714762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.093843, 26.617960, 27.777668>,  <29.526922, 26.902721, 28.233551>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.093843, 26.617960, 27.777668> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.757429, 26.615086, 27.561295>,  <29.555580, 26.613361, 27.431471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.757429, 26.615086, 27.561295>,  <30.093843, 26.617960, 27.777668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.757429, 26.615086, 27.561295> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454266, 0.533604, -0.713378,
		0.293771, -0.845704, -0.445515,
		-0.841035, -0.007187, -0.540932,
		29.505119, 26.612928, 27.399015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.277634, 26.352997, 27.123446>,  <30.093843, 26.617960, 27.777668>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.277634, 26.352997, 27.123446> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.940409, 26.554512, 27.048141>,  <29.738073, 26.675421, 27.002958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.940409, 26.554512, 27.048141>,  <30.277634, 26.352997, 27.123446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.940409, 26.554512, 27.048141> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444091, 0.454649, -0.772060,
		-0.303363, -0.734500, -0.607026,
		-0.843062, 0.503789, -0.188262,
		29.687490, 26.705648, 26.991663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.329874, 26.483746, 26.494692>,  <30.277634, 26.352997, 27.123446>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.329874, 26.483746, 26.494692> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.022879, 26.725876, 26.579109>,  <29.838682, 26.871155, 26.629761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.022879, 26.725876, 26.579109>,  <30.329874, 26.483746, 26.494692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.022879, 26.725876, 26.579109> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144097, 0.483686, -0.863298,
		-0.624657, -0.632161, -0.458449,
		-0.767489, 0.605327, 0.211045,
		29.792631, 26.907475, 26.642424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.917536, 26.526459, 25.926344>,  <30.329874, 26.483746, 26.494692>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.917536, 26.526459, 25.926344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.835686, 26.859818, 26.131702>,  <29.786575, 27.059834, 26.254917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.835686, 26.859818, 26.131702>,  <29.917536, 26.526459, 25.926344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.835686, 26.859818, 26.131702> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053981, 0.533304, -0.844200,
		-0.977351, -0.145030, -0.154114,
		-0.204624, 0.833399, 0.513397,
		29.774298, 27.109837, 26.285721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.407532, 26.946033, 25.496157>,  <29.917536, 26.526459, 25.926344>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.407532, 26.946033, 25.496157> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.603809, 27.199875, 25.734985>,  <29.721577, 27.352180, 25.878283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.603809, 27.199875, 25.734985>,  <29.407532, 26.946033, 25.496157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.603809, 27.199875, 25.734985> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112638, 0.633291, -0.765673,
		-0.864020, 0.442966, 0.239273,
		0.490696, 0.634605, 0.597071,
		29.751019, 27.390257, 25.914106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.228403, 27.678503, 25.208082>,  <29.407532, 26.946033, 25.496157>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.228403, 27.678503, 25.208082> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.532976, 27.756611, 25.455338>,  <29.715719, 27.803476, 25.603691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.532976, 27.756611, 25.455338>,  <29.228403, 27.678503, 25.208082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.532976, 27.756611, 25.455338> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277749, 0.763317, -0.583269,
		-0.585729, 0.615806, 0.526976,
		0.761431, 0.195271, 0.618137,
		29.761406, 27.815191, 25.640778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.181105, 28.417822, 25.392021>,  <29.228403, 27.678503, 25.208082>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.181105, 28.417822, 25.392021> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.557045, 28.297245, 25.456287>,  <29.782610, 28.224899, 25.494848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.557045, 28.297245, 25.456287>,  <29.181105, 28.417822, 25.392021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.557045, 28.297245, 25.456287> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340424, 0.787825, -0.513267,
		0.028142, 0.537089, 0.843056,
		0.939851, -0.301441, 0.160667,
		29.839001, 28.206812, 25.504488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.474447, 28.996925, 25.482321>,  <29.181105, 28.417822, 25.392021>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.474447, 28.996925, 25.482321> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.763956, 28.738289, 25.385929>,  <29.937662, 28.583107, 25.328094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.763956, 28.738289, 25.385929>,  <29.474447, 28.996925, 25.482321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.763956, 28.738289, 25.385929> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363423, 0.654055, -0.663427,
		0.586580, 0.392593, 0.708375,
		0.723773, -0.646593, -0.240978,
		29.981089, 28.544312, 25.313635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.180380, 29.386951, 25.456419>,  <29.474447, 28.996925, 25.482321>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.180380, 29.386951, 25.456419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.162519, 29.058739, 25.228477>,  <30.151804, 28.861811, 25.091713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.162519, 29.058739, 25.228477>,  <30.180380, 29.386951, 25.456419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.162519, 29.058739, 25.228477> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249343, 0.543218, -0.801713,
		0.967385, -0.177885, 0.180340,
		-0.044649, -0.820531, -0.569855,
		30.149124, 28.812580, 25.057522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.751184, 29.362154, 25.202873>,  <30.180380, 29.386951, 25.456419>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.751184, 29.362154, 25.202873> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.544518, 29.136127, 24.945580>,  <30.420517, 29.000511, 24.791203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.544518, 29.136127, 24.945580>,  <30.751184, 29.362154, 25.202873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.544518, 29.136127, 24.945580> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227756, 0.633505, -0.739459,
		0.825337, -0.528556, -0.198614,
		-0.516668, -0.565067, -0.643237,
		30.389517, 28.966608, 24.752609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.262964, 29.224512, 24.699921>,  <30.751184, 29.362154, 25.202873>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.262964, 29.224512, 24.699921> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.912426, 29.128086, 24.533115>,  <30.702103, 29.070230, 24.433031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.912426, 29.128086, 24.533115>,  <31.262964, 29.224512, 24.699921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.912426, 29.128086, 24.533115> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301726, 0.400119, -0.865370,
		0.375469, -0.884189, -0.277907,
		-0.876347, -0.241068, -0.417016,
		30.649521, 29.055767, 24.408010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.374611, 29.126755, 23.989780>,  <31.262964, 29.224512, 24.699921>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.374611, 29.126755, 23.989780> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.981813, 29.190075, 23.948547>,  <30.746134, 29.228067, 23.923807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.981813, 29.190075, 23.948547>,  <31.374611, 29.126755, 23.989780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.981813, 29.190075, 23.948547> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151869, 0.337043, -0.929160,
		-0.112345, -0.928085, -0.355016,
		-0.981995, 0.158302, -0.103082,
		30.687214, 29.237566, 23.917624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.320744, 29.154324, 23.188362>,  <31.374611, 29.126755, 23.989780>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.320744, 29.154324, 23.188362> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.968435, 29.299294, 23.310272>,  <30.757050, 29.386276, 23.383419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.968435, 29.299294, 23.310272>,  <31.320744, 29.154324, 23.188362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.968435, 29.299294, 23.310272> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061244, 0.551023, -0.832239,
		-0.469564, -0.751678, -0.463129,
		-0.880771, 0.362426, 0.304777,
		30.704205, 29.408022, 23.401705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.871777, 28.997200, 22.582075>,  <31.320744, 29.154324, 23.188362>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.871777, 28.997200, 22.582075> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.703926, 29.274662, 22.816257>,  <30.603216, 29.441139, 22.956766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.703926, 29.274662, 22.816257>,  <30.871777, 28.997200, 22.582075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.703926, 29.274662, 22.816257> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144332, 0.585794, -0.797504,
		-0.896149, -0.419154, -0.145698,
		-0.419626, 0.693654, 0.585456,
		30.578039, 29.482758, 22.991894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.157099, 29.346357, 22.238997>,  <30.871777, 28.997200, 22.582075>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.157099, 29.346357, 22.238997> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.319956, 29.611073, 22.490795>,  <30.417671, 29.769901, 22.641874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.319956, 29.611073, 22.490795>,  <30.157099, 29.346357, 22.238997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.319956, 29.611073, 22.490795> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013002, 0.693338, -0.720495,
		-0.913271, 0.285161, 0.290893,
		0.407145, 0.661790, 0.629498,
		30.442099, 29.809610, 22.679644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.682825, 30.018724, 22.166985>,  <30.157099, 29.346357, 22.238997>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.682825, 30.018724, 22.166985> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.022230, 30.120201, 22.352745>,  <30.225872, 30.181087, 22.464201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.022230, 30.120201, 22.352745>,  <29.682825, 30.018724, 22.166985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.022230, 30.120201, 22.352745> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053473, 0.831994, -0.552201,
		-0.526469, 0.493382, 0.692391,
		0.848511, 0.253693, 0.464402,
		30.276783, 30.196308, 22.492065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.594177, 30.713020, 22.142082>,  <29.682825, 30.018724, 22.166985>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.594177, 30.713020, 22.142082> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.971657, 30.664188, 22.265064>,  <30.198145, 30.634890, 22.338854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.971657, 30.664188, 22.265064>,  <29.594177, 30.713020, 22.142082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.971657, 30.664188, 22.265064> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222124, 0.922574, -0.315465,
		-0.245140, 0.365998, 0.897748,
		0.943699, -0.122078, 0.307457,
		30.254766, 30.627565, 22.357302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.814617, 31.430676, 22.362694>,  <29.594177, 30.713020, 22.142082>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.814617, 31.430676, 22.362694> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.137537, 31.216125, 22.264252>,  <30.331289, 31.087397, 22.205187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.137537, 31.216125, 22.264252>,  <29.814617, 31.430676, 22.362694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.137537, 31.216125, 22.264252> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433161, 0.821798, -0.370161,
		0.400794, 0.192227, 0.895775,
		0.807301, -0.536373, -0.246107,
		30.379726, 31.055214, 22.190420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.526821, 32.095200, 22.460266>,  <29.814617, 31.430676, 22.362694>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.526821, 32.095200, 22.460266> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.152237, 32.170155, 22.341660>,  <28.927486, 32.215130, 22.270494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.152237, 32.170155, 22.341660>,  <29.526821, 32.095200, 22.460266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.152237, 32.170155, 22.341660> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344893, -0.337854, 0.875730,
		0.063923, 0.922355, 0.381017,
		-0.936463, 0.187390, -0.296518,
		28.871298, 32.226372, 22.252705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.262377, 32.150436, 23.058912>,  <29.526821, 32.095200, 22.460266>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.262377, 32.150436, 23.058912> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.946348, 32.110504, 22.816978>,  <28.756731, 32.086544, 22.671818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.946348, 32.110504, 22.816978>,  <29.262377, 32.150436, 23.058912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.946348, 32.110504, 22.816978> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529552, -0.385888, 0.755424,
		-0.308810, 0.917129, 0.252014,
		-0.790070, -0.099827, -0.604833,
		28.709328, 32.080555, 22.635529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.616776, 32.490185, 23.320658>,  <29.262377, 32.150436, 23.058912>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.616776, 32.490185, 23.320658> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.473007, 32.206669, 23.077862>,  <28.386745, 32.036560, 22.932184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.473007, 32.206669, 23.077862>,  <28.616776, 32.490185, 23.320658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.473007, 32.206669, 23.077862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462351, -0.429750, 0.775595,
		-0.810585, 0.559408, -0.173247,
		-0.359422, -0.708786, -0.606991,
		28.365181, 31.994034, 22.895765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.858892, 32.310658, 23.603010>,  <28.616776, 32.490185, 23.320658>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.858892, 32.310658, 23.603010> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.984793, 31.990814, 23.398441>,  <28.060333, 31.798908, 23.275700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.984793, 31.990814, 23.398441>,  <27.858892, 32.310658, 23.603010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.984793, 31.990814, 23.398441> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404171, -0.600427, 0.690024,
		-0.858823, -0.010485, -0.512165,
		0.314753, -0.799611, -0.511422,
		28.079218, 31.750931, 23.245014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.295704, 31.867950, 23.625217>,  <27.858892, 32.310658, 23.603010>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.295704, 31.867950, 23.625217> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.569017, 31.603165, 23.501976>,  <27.733006, 31.444294, 23.428030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.569017, 31.603165, 23.501976>,  <27.295704, 31.867950, 23.625217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.569017, 31.603165, 23.501976> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447517, -0.713103, 0.539641,
		-0.576933, -0.230845, -0.783492,
		0.683284, -0.661963, -0.308105,
		27.774002, 31.404575, 23.409544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.942211, 31.240334, 23.486317>,  <27.295704, 31.867950, 23.625217>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.942211, 31.240334, 23.486317> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.315615, 31.106613, 23.538162>,  <27.539658, 31.026381, 23.569269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.315615, 31.106613, 23.538162>,  <26.942211, 31.240334, 23.486317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.315615, 31.106613, 23.538162> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352412, -0.788867, 0.503483,
		-0.066067, -0.515684, -0.854228,
		0.933510, -0.334303, 0.129615,
		27.595667, 31.006323, 23.577047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.017155, 30.435450, 23.270226>,  <26.942211, 31.240334, 23.486317>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.017155, 30.435450, 23.270226> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.312061, 30.520283, 23.526806>,  <27.489006, 30.571182, 23.680754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.312061, 30.520283, 23.526806>,  <27.017155, 30.435450, 23.270226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.312061, 30.520283, 23.526806> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215277, -0.826212, 0.520606,
		0.640384, -0.521915, -0.563483,
		0.737268, 0.212083, 0.641449,
		27.533241, 30.583908, 23.719240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.337418, 29.872923, 23.444139>,  <27.017155, 30.435450, 23.270226>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.337418, 29.872923, 23.444139> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.501932, 30.085598, 23.740288>,  <27.600641, 30.213203, 23.917976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.501932, 30.085598, 23.740288>,  <27.337418, 29.872923, 23.444139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.501932, 30.085598, 23.740288> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111687, -0.776735, 0.619845,
		0.904638, -0.337623, -0.260077,
		0.411285, 0.531688, 0.740373,
		27.625319, 30.245104, 23.962400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.820112, 29.535254, 23.760429>,  <27.337418, 29.872923, 23.444139>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.820112, 29.535254, 23.760429> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.720398, 29.780174, 24.060547>,  <27.660568, 29.927128, 24.240618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.720398, 29.780174, 24.060547>,  <27.820112, 29.535254, 23.760429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.720398, 29.780174, 24.060547> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110237, -0.751776, 0.650139,
		0.962135, 0.244782, 0.119910,
		-0.249288, 0.612303, 0.750294,
		27.645611, 29.963865, 24.285635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.382822, 29.643354, 24.318081>,  <27.820112, 29.535254, 23.760429>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.382822, 29.643354, 24.318081> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.025808, 29.726025, 24.478413>,  <27.811600, 29.775627, 24.574612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.025808, 29.726025, 24.478413>,  <28.382822, 29.643354, 24.318081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.025808, 29.726025, 24.478413> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161337, -0.683647, 0.711756,
		0.421129, 0.699936, 0.576835,
		-0.892536, 0.206677, 0.400829,
		27.758047, 29.788027, 24.598661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.404573, 29.428816, 25.037914>,  <28.382822, 29.643354, 24.318081>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.404573, 29.428816, 25.037914> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.010555, 29.496155, 25.023251>,  <27.774145, 29.536558, 25.014452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.010555, 29.496155, 25.023251>,  <28.404573, 29.428816, 25.037914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.010555, 29.496155, 25.023251> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115651, -0.488358, 0.864946,
		0.127708, 0.856251, 0.500525,
		-0.985046, 0.168346, -0.036659,
		27.715042, 29.546659, 25.012253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.226957, 29.451246, 25.662632>,  <28.404573, 29.428816, 25.037914>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.226957, 29.451246, 25.662632> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.860331, 29.416248, 25.506554>,  <27.640354, 29.395250, 25.412907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.860331, 29.416248, 25.506554>,  <28.226957, 29.451246, 25.662632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.860331, 29.416248, 25.506554> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320399, -0.423188, 0.847501,
		-0.239277, 0.901808, 0.359846,
		-0.916565, -0.087493, -0.390197,
		27.585361, 29.390001, 25.389494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.761278, 29.658388, 26.239092>,  <28.226957, 29.451246, 25.662632>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.761278, 29.658388, 26.239092> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.561890, 29.428608, 25.979389>,  <27.442257, 29.290741, 25.823566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.561890, 29.428608, 25.979389>,  <27.761278, 29.658388, 26.239092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.561890, 29.428608, 25.979389> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351905, -0.550374, 0.757134,
		-0.792269, 0.605886, 0.072193,
		-0.498470, -0.574449, -0.649259,
		27.412348, 29.256273, 25.784611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.093050, 29.546442, 26.569771>,  <27.761278, 29.658388, 26.239092>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.093050, 29.546442, 26.569771> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.160460, 29.252151, 26.307381>,  <27.200905, 29.075577, 26.149946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.160460, 29.252151, 26.307381>,  <27.093050, 29.546442, 26.569771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.160460, 29.252151, 26.307381> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444322, -0.650748, 0.615716,
		-0.879874, 0.187701, -0.436567,
		0.168524, -0.735728, -0.655976,
		27.211018, 29.031433, 26.110588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.487242, 29.133410, 26.590406>,  <27.093050, 29.546442, 26.569771>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.487242, 29.133410, 26.590406> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.764711, 28.886021, 26.442726>,  <26.931192, 28.737587, 26.354118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.764711, 28.886021, 26.442726>,  <26.487242, 29.133410, 26.590406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.764711, 28.886021, 26.442726> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473810, -0.777866, 0.412831,
		-0.542514, -0.111438, -0.832622,
		0.693674, -0.618471, -0.369203,
		26.972813, 28.700480, 26.331964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.081783, 28.593199, 26.338564>,  <26.487242, 29.133410, 26.590406>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.081783, 28.593199, 26.338564> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.452494, 28.459595, 26.407291>,  <26.674919, 28.379433, 26.448528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.452494, 28.459595, 26.407291>,  <26.081783, 28.593199, 26.338564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.452494, 28.459595, 26.407291> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375487, -0.811956, 0.446920,
		-0.009769, -0.478710, -0.877919,
		0.926777, -0.334012, 0.171817,
		26.730526, 28.359390, 26.458838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.965603, 27.909731, 26.263243>,  <26.081783, 28.593199, 26.338564>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.965603, 27.909731, 26.263243> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.335268, 27.921787, 26.415565>,  <26.557068, 27.929022, 26.506960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.335268, 27.921787, 26.415565>,  <25.965603, 27.909731, 26.263243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.335268, 27.921787, 26.415565> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204494, -0.802975, 0.559834,
		0.322654, -0.595251, -0.735915,
		0.924163, 0.030142, 0.380808,
		26.612516, 27.930830, 26.529808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.192415, 27.244604, 26.349056>,  <25.965603, 27.909731, 26.263243>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.192415, 27.244604, 26.349056> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.413559, 27.441841, 26.617744>,  <26.546246, 27.560183, 26.778957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.413559, 27.441841, 26.617744>,  <26.192415, 27.244604, 26.349056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.413559, 27.441841, 26.617744> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156477, -0.730343, 0.664916,
		0.818450, -0.472714, -0.326620,
		0.552860, 0.493093, 0.671719,
		26.579416, 27.589769, 26.819260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<26.613001, 26.738058, 26.717993> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.668568, 27.055695, 26.954678>,  <26.701908, 27.246277, 27.096689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.668568, 27.055695, 26.954678>,  <26.613001, 26.738058, 26.717993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.668568, 27.055695, 26.954678> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301331, -0.535280, 0.789098,
		0.943346, -0.287921, 0.164925,
		0.138917, 0.794089, 0.591714,
		26.710243, 27.293921, 27.132191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.118299, 26.519360, 27.415895>,  <26.613001, 26.738058, 26.717993>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.118299, 26.519360, 27.415895> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.879654, 26.827003, 27.507565>,  <26.736465, 27.011589, 27.562565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.879654, 26.827003, 27.507565>,  <27.118299, 26.519360, 27.415895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.879654, 26.827003, 27.507565> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134609, -0.377420, 0.916207,
		0.791157, 0.515775, 0.328704,
		-0.596616, 0.769110, 0.229170,
		26.700668, 27.057737, 27.576315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.220535, 26.622196, 28.088461>,  <27.118299, 26.519360, 27.415895>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.220535, 26.622196, 28.088461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.884274, 26.831604, 28.032993>,  <26.682516, 26.957249, 27.999712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.884274, 26.831604, 28.032993>,  <27.220535, 26.622196, 28.088461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.884274, 26.831604, 28.032993> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204652, -0.070016, 0.976328,
		0.501419, 0.849131, 0.165998,
		-0.840653, 0.523521, -0.138669,
		26.632078, 26.988661, 27.991392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.149557, 27.064939, 28.643036>,  <27.220535, 26.622196, 28.088461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.149557, 27.064939, 28.643036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.782856, 27.010906, 28.492668>,  <26.562836, 26.978485, 28.402449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.782856, 27.010906, 28.492668>,  <27.149557, 27.064939, 28.643036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.782856, 27.010906, 28.492668> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332610, -0.263007, 0.905648,
		-0.221208, 0.955290, 0.196183,
		-0.916754, -0.135085, -0.375918,
		26.507830, 26.970381, 28.379892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.703737, 27.428570, 29.083635>,  <27.149557, 27.064939, 28.643036>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.703737, 27.428570, 29.083635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.481005, 27.145458, 28.909744>,  <26.347366, 26.975592, 28.805410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.481005, 27.145458, 28.909744>,  <26.703737, 27.428570, 29.083635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.481005, 27.145458, 28.909744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325850, -0.295283, 0.898126,
		-0.764043, 0.641759, -0.066207,
		-0.556831, -0.707780, -0.434726,
		26.313955, 26.933125, 28.779327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.353836, 27.142168, 29.591347>,  <26.703737, 27.428570, 29.083635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.353836, 27.142168, 29.591347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.216074, 26.889877, 29.313190>,  <26.133417, 26.738503, 29.146296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.216074, 26.889877, 29.313190>,  <26.353836, 27.142168, 29.591347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.216074, 26.889877, 29.313190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361515, -0.594490, 0.718253,
		-0.866425, 0.498765, -0.023270,
		-0.344406, -0.630725, -0.695392,
		26.112753, 26.700661, 29.104572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.639875, 26.989233, 29.740055>,  <26.353836, 27.142168, 29.591347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.639875, 26.989233, 29.740055> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.829681, 26.694286, 29.547752>,  <25.943565, 26.517319, 29.432371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.829681, 26.694286, 29.547752>,  <25.639875, 26.989233, 29.740055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.829681, 26.694286, 29.547752> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247471, -0.635879, 0.731037,
		-0.844746, -0.227914, -0.484210,
		0.474512, -0.737369, -0.480755,
		25.972034, 26.473076, 29.403526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.149370, 26.450649, 29.693171>,  <25.639875, 26.989233, 29.740055>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.149370, 26.450649, 29.693171> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.498091, 26.260040, 29.647762>,  <25.707323, 26.145676, 29.620518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.498091, 26.260040, 29.647762>,  <25.149370, 26.450649, 29.693171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.498091, 26.260040, 29.647762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249686, -0.631653, 0.733943,
		-0.421445, -0.611509, -0.669657,
		0.871803, -0.476520, -0.113522,
		25.759632, 26.117085, 29.613707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.936043, 25.817402, 29.779552>,  <25.149370, 26.450649, 29.693171>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.936043, 25.817402, 29.779552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.330017, 25.755501, 29.810425>,  <25.566401, 25.718359, 29.828949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.330017, 25.755501, 29.810425>,  <24.936043, 25.817402, 29.779552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.330017, 25.755501, 29.810425> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172918, -0.875428, 0.451359,
		-0.002283, -0.457905, -0.888999,
		0.984934, -0.154754, 0.077182,
		25.625498, 25.709074, 29.833580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.095137, 25.191353, 29.489826>,  <24.936043, 25.817402, 29.779552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.095137, 25.191353, 29.489826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.397036, 25.257748, 29.743694>,  <25.578175, 25.297585, 29.896015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.397036, 25.257748, 29.743694>,  <25.095137, 25.191353, 29.489826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.397036, 25.257748, 29.743694> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314109, -0.757911, 0.571757,
		0.575928, -0.630887, -0.519893,
		0.754747, 0.165988, 0.634669,
		25.623459, 25.307545, 29.934095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.473734, 24.591740, 29.566322>,  <25.095137, 25.191353, 29.489826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.473734, 24.591740, 29.566322> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.528734, 24.806698, 29.899139>,  <25.561735, 24.935673, 30.098829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.528734, 24.806698, 29.899139>,  <25.473734, 24.591740, 29.566322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.528734, 24.806698, 29.899139> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461700, -0.708410, 0.533844,
		0.876314, -0.457560, 0.150708,
		0.137502, 0.537397, 0.832045,
		25.569984, 24.967916, 30.148752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.762714, 24.166241, 30.048662>,  <25.473734, 24.591740, 29.566322>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.762714, 24.166241, 30.048662> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.620100, 24.469566, 30.266964>,  <25.534533, 24.651562, 30.397945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.620100, 24.469566, 30.266964>,  <25.762714, 24.166241, 30.048662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.620100, 24.469566, 30.266964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365802, -0.650808, 0.665310,
		0.859693, 0.037569, 0.509427,
		-0.356534, 0.758312, 0.545753,
		25.513140, 24.697060, 30.430691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.633169, 23.789747, 30.605270>,  <25.762714, 24.166241, 30.048662>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.633169, 23.789747, 30.605270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.486738, 24.142014, 30.725544>,  <25.398880, 24.353374, 30.797709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.486738, 24.142014, 30.725544>,  <25.633169, 23.789747, 30.605270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.486738, 24.142014, 30.725544> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423136, -0.445308, 0.789086,
		0.828820, 0.161637, 0.535659,
		-0.366079, 0.880667, 0.300686,
		25.376915, 24.406214, 30.815750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.784760, 23.836601, 31.317770>,  <25.633169, 23.789747, 30.605270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.784760, 23.836601, 31.317770> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.472235, 24.073074, 31.237717>,  <25.284719, 24.214958, 31.189684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.472235, 24.073074, 31.237717>,  <25.784760, 23.836601, 31.317770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.472235, 24.073074, 31.237717> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534750, -0.468701, 0.703109,
		0.321864, 0.656369, 0.682337,
		-0.781311, 0.591185, -0.200135,
		25.237841, 24.250429, 31.177675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.538252, 23.978905, 31.986225>,  <25.784760, 23.836601, 31.317770>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.538252, 23.978905, 31.986225> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.251656, 24.043037, 31.714657>,  <25.079699, 24.081518, 31.551716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.251656, 24.043037, 31.714657>,  <25.538252, 23.978905, 31.986225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.251656, 24.043037, 31.714657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651822, -0.500602, 0.569671,
		-0.248533, 0.850700, 0.463186,
		-0.716491, 0.160333, -0.678921,
		25.036709, 24.091137, 31.510981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.999420, 24.497921, 32.295540>,  <25.538252, 23.978905, 31.986225>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.999420, 24.497921, 32.295540> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.793591, 24.328651, 31.997242>,  <24.670094, 24.227089, 31.818262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.793591, 24.328651, 31.997242>,  <24.999420, 24.497921, 32.295540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.793591, 24.328651, 31.997242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558534, -0.494474, 0.665984,
		-0.650579, 0.759223, 0.018087,
		-0.514574, -0.423174, -0.745746,
		24.639219, 24.201700, 31.773518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.206724, 24.466248, 32.552879>,  <24.999420, 24.497921, 32.295540>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.206724, 24.466248, 32.552879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.196558, 24.194340, 32.259686>,  <24.190458, 24.031195, 32.083767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.196558, 24.194340, 32.259686>,  <24.206724, 24.466248, 32.552879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.196558, 24.194340, 32.259686> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599153, -0.576580, 0.555491,
		-0.800231, 0.453290, -0.392631,
		-0.025415, -0.679767, -0.732987,
		24.188934, 23.990410, 32.039791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.552067, 24.309643, 32.442802>,  <24.206724, 24.466248, 32.552879>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.552067, 24.309643, 32.442802> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.737453, 23.990395, 32.288815>,  <23.848686, 23.798845, 32.196423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.737453, 23.990395, 32.288815>,  <23.552067, 24.309643, 32.442802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.737453, 23.990395, 32.288815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592756, -0.602175, 0.534815,
		-0.658665, -0.019677, -0.752179,
		0.463467, -0.798122, -0.384968,
		23.876493, 23.750957, 32.173325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.998590, 23.827671, 32.163223>,  <23.552067, 24.309643, 32.442802>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.998590, 23.827671, 32.163223> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.338165, 23.627430, 32.230995>,  <23.541910, 23.507286, 32.271656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.338165, 23.627430, 32.230995>,  <22.998590, 23.827671, 32.163223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.338165, 23.627430, 32.230995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485883, -0.613181, 0.622838,
		-0.207905, -0.611071, -0.763785,
		0.848936, -0.500602, 0.169426,
		23.592846, 23.477249, 32.281822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.799225, 23.055801, 32.155712>,  <22.998590, 23.827671, 32.163223>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.799225, 23.055801, 32.155712> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.139603, 23.134583, 32.350483>,  <23.343830, 23.181852, 32.467346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.139603, 23.134583, 32.350483>,  <22.799225, 23.055801, 32.155712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.139603, 23.134583, 32.350483> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331327, -0.518060, 0.788566,
		0.407571, -0.832359, -0.375585,
		0.850946, 0.196955, 0.486930,
		23.394886, 23.193668, 32.496563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.967081, 22.383541, 32.399914>,  <22.799225, 23.055801, 32.155712>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.967081, 22.383541, 32.399914> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.156248, 22.645580, 32.635609>,  <23.269749, 22.802803, 32.777027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.156248, 22.645580, 32.635609>,  <22.967081, 22.383541, 32.399914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.156248, 22.645580, 32.635609> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197657, -0.572826, 0.795489,
		0.858651, -0.492666, -0.141414,
		0.472916, 0.655096, 0.589237,
		23.298122, 22.842110, 32.812378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.322863, 21.940563, 32.874866>,  <22.967081, 22.383541, 32.399914>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.322863, 21.940563, 32.874866> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.328297, 22.287861, 33.073246>,  <23.331556, 22.496239, 33.192276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.328297, 22.287861, 33.073246>,  <23.322863, 21.940563, 32.874866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.328297, 22.287861, 33.073246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220597, -0.481173, 0.848416,
		0.975270, -0.120930, 0.184997,
		0.013583, 0.868244, 0.495951,
		23.332373, 22.548334, 33.222031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.801142, 21.895063, 33.618317>,  <23.322863, 21.940563, 32.874866>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.801142, 21.895063, 33.618317> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.529669, 22.187962, 33.640965>,  <23.366785, 22.363701, 33.654552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.529669, 22.187962, 33.640965>,  <23.801142, 21.895063, 33.618317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.529669, 22.187962, 33.640965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333032, -0.375552, 0.864899,
		0.654584, 0.568134, 0.498742,
		-0.678682, 0.732246, 0.056624,
		23.326065, 22.407635, 33.657951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.602592, 21.758558, 33.581852>,  <23.801142, 21.895063, 33.618317>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.602592, 21.758558, 33.581852> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.724432, 21.758339, 33.962845>,  <24.797537, 21.758207, 34.191441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.724432, 21.758339, 33.962845>,  <24.602592, 21.758558, 33.581852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.724432, 21.758339, 33.962845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762079, 0.600007, -0.243366,
		-0.571361, 0.799995, 0.183178,
		0.304600, -0.000546, 0.952480,
		24.815811, 21.758175, 34.248589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.608299, 22.402277, 33.900856>,  <24.602592, 21.758558, 33.581852>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.608299, 22.402277, 33.900856> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.896349, 22.189312, 34.078827>,  <25.069178, 22.061533, 34.185608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.896349, 22.189312, 34.078827>,  <24.608299, 22.402277, 33.900856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.896349, 22.189312, 34.078827> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693316, 0.527055, -0.491453,
		0.027156, 0.662381, 0.748675,
		0.720122, -0.532414, 0.444927,
		25.112385, 22.029589, 34.212303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.064419, 22.921932, 34.174389>,  <24.608299, 22.402277, 33.900856>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.064419, 22.921932, 34.174389> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.272104, 22.580967, 34.149700>,  <25.396715, 22.376389, 34.134888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.272104, 22.580967, 34.149700>,  <25.064419, 22.921932, 34.174389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.272104, 22.580967, 34.149700> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727776, 0.478844, -0.490969,
		0.448062, 0.210000, 0.868988,
		0.519213, -0.852413, -0.061719,
		25.427868, 22.325243, 34.131184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.822872, 23.101768, 34.431973>,  <25.064419, 22.921932, 34.174389>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.822872, 23.101768, 34.431973> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.849985, 22.770245, 34.209808>,  <25.866253, 22.571331, 34.076511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.849985, 22.770245, 34.209808>,  <25.822872, 23.101768, 34.431973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.849985, 22.770245, 34.209808> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783941, 0.388583, -0.484190,
		0.617124, -0.402587, 0.676078,
		0.067784, -0.828810, -0.555408,
		25.870319, 22.521601, 34.043186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.524240, 23.024696, 34.435677>,  <25.822872, 23.101768, 34.431973>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.524240, 23.024696, 34.435677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.398584, 22.820324, 34.115612>,  <26.323191, 22.697701, 33.923573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.398584, 22.820324, 34.115612>,  <26.524240, 23.024696, 34.435677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.398584, 22.820324, 34.115612> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788966, 0.328303, -0.519374,
		0.528063, -0.794459, 0.299976,
		-0.314138, -0.510933, -0.800166,
		26.304342, 22.667044, 33.875561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.201832, 22.703428, 34.126598>,  <26.524240, 23.024696, 34.435677>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.201832, 22.703428, 34.126598> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.917480, 22.680115, 33.846241>,  <26.746870, 22.666126, 33.678028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.917480, 22.680115, 33.846241>,  <27.201832, 22.703428, 34.126598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.917480, 22.680115, 33.846241> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691027, 0.127577, -0.711481,
		0.130902, -0.990114, -0.050400,
		-0.710877, -0.058306, -0.700895,
		26.704216, 22.662630, 33.635971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.505430, 22.469671, 33.579155>,  <27.201832, 22.703428, 34.126598>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.505430, 22.469671, 33.579155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.173580, 22.574993, 33.382221>,  <26.974470, 22.638187, 33.264061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.173580, 22.574993, 33.382221>,  <27.505430, 22.469671, 33.579155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.173580, 22.574993, 33.382221> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542928, 0.174819, -0.821381,
		-0.130207, -0.948740, -0.287991,
		-0.829624, 0.263308, -0.492335,
		26.924692, 22.653986, 33.234520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.579369, 22.113815, 32.869003>,  <27.505430, 22.469671, 33.579155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.579369, 22.113815, 32.869003> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.332233, 22.428337, 32.868805>,  <27.183952, 22.617050, 32.868687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.332233, 22.428337, 32.868805>,  <27.579369, 22.113815, 32.869003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.332233, 22.428337, 32.868805> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394343, 0.309303, -0.865347,
		-0.680273, -0.534840, -0.501173,
		-0.617837, 0.786306, -0.000500,
		27.146883, 22.664228, 32.868656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.362635, 22.139927, 32.220615>,  <27.579369, 22.113815, 32.869003>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.362635, 22.139927, 32.220615> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.325308, 22.505974, 32.377510>,  <27.302912, 22.725603, 32.471649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.325308, 22.505974, 32.377510>,  <27.362635, 22.139927, 32.220615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.325308, 22.505974, 32.377510> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483893, 0.385984, -0.785407,
		-0.870138, 0.116511, -0.478837,
		-0.093315, 0.915118, 0.392239,
		27.297314, 22.780510, 32.495182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.049351, 22.491125, 31.661221>,  <27.362635, 22.139927, 32.220615>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.049351, 22.491125, 31.661221> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.194456, 22.766258, 31.912708>,  <27.281519, 22.931339, 32.063602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.194456, 22.766258, 31.912708>,  <27.049351, 22.491125, 31.661221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.194456, 22.766258, 31.912708> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336166, 0.532658, -0.776704,
		-0.869135, 0.493112, -0.037999,
		0.362762, 0.687835, 0.628719,
		27.303286, 22.972609, 32.101322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.611694, 23.133123, 31.549540>,  <27.049351, 22.491125, 31.661221>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.611694, 23.133123, 31.549540> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.987827, 23.210861, 31.661255>,  <27.213507, 23.257504, 31.728285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.987827, 23.210861, 31.661255>,  <26.611694, 23.133123, 31.549540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.987827, 23.210861, 31.661255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099051, 0.628923, -0.771132,
		-0.325519, 0.752785, 0.572147,
		0.940333, 0.194347, 0.279291,
		27.269928, 23.269165, 31.745043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.709930, 23.817640, 31.722189>,  <26.611694, 23.133123, 31.549540>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.709930, 23.817640, 31.722189> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.082884, 23.703575, 31.633339>,  <27.306656, 23.635136, 31.580029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.082884, 23.703575, 31.633339>,  <26.709930, 23.817640, 31.722189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.082884, 23.703575, 31.633339> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049360, 0.709197, -0.703281,
		0.358080, 0.644764, 0.675320,
		0.932385, -0.285165, -0.222124,
		27.362598, 23.618025, 31.566702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.137066, 24.431305, 31.604538>,  <26.709930, 23.817640, 31.722189>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.137066, 24.431305, 31.604538> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.370367, 24.143116, 31.454479>,  <27.510347, 23.970201, 31.364445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.370367, 24.143116, 31.454479>,  <27.137066, 24.431305, 31.604538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.370367, 24.143116, 31.454479> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234239, 0.591396, -0.771610,
		0.777785, 0.362170, 0.513696,
		0.583252, -0.720474, -0.375145,
		27.545343, 23.926973, 31.341936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.767359, 24.808542, 31.383114>,  <27.137066, 24.431305, 31.604538>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.767359, 24.808542, 31.383114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.780901, 24.456001, 31.194614>,  <27.789026, 24.244476, 31.081514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.780901, 24.456001, 31.194614>,  <27.767359, 24.808542, 31.383114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.780901, 24.456001, 31.194614> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460667, 0.432204, -0.775232,
		0.886927, -0.190841, 0.420643,
		0.033857, -0.881351, -0.471248,
		27.791058, 24.191597, 31.053240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.502714, 24.614038, 31.123903>,  <27.767359, 24.808542, 31.383114>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.502714, 24.614038, 31.123903> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.237415, 24.446510, 30.875809>,  <28.078236, 24.345993, 30.726952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.237415, 24.446510, 30.875809>,  <28.502714, 24.614038, 31.123903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.237415, 24.446510, 30.875809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560732, 0.270787, -0.782467,
		0.495666, -0.866754, 0.055248,
		-0.663246, -0.418822, -0.620237,
		28.038443, 24.320864, 30.689737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.848961, 24.451479, 30.592535>,  <28.502714, 24.614038, 31.123903>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.848961, 24.451479, 30.592535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.488785, 24.379772, 30.434006>,  <28.272678, 24.336748, 30.338888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.488785, 24.379772, 30.434006>,  <28.848961, 24.451479, 30.592535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.488785, 24.379772, 30.434006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304970, 0.389500, -0.869070,
		0.310160, -0.903412, -0.296052,
		-0.900441, -0.179264, -0.396321,
		28.218653, 24.325993, 30.315109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.078167, 24.216860, 29.952948>,  <28.848961, 24.451479, 30.592535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.078167, 24.216860, 29.952948> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.695063, 24.323307, 29.909363>,  <28.465200, 24.387175, 29.883211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.695063, 24.323307, 29.909363>,  <29.078167, 24.216860, 29.952948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.695063, 24.323307, 29.909363> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206951, 0.374794, -0.903715,
		-0.199655, -0.888094, -0.414037,
		-0.957763, 0.266116, -0.108963,
		28.407734, 24.403141, 29.876675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.844864, 24.052942, 29.308466>,  <29.078167, 24.216860, 29.952948>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.844864, 24.052942, 29.308466> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.610161, 24.351669, 29.433670>,  <28.469339, 24.530907, 29.508793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.610161, 24.351669, 29.433670>,  <28.844864, 24.052942, 29.308466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.610161, 24.351669, 29.433670> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180590, 0.497494, -0.848461,
		-0.789368, -0.441316, -0.426778,
		-0.586759, 0.746820, 0.313009,
		28.434134, 24.575716, 29.527573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.398571, 24.166451, 28.688189>,  <28.844864, 24.052942, 29.308466>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.398571, 24.166451, 28.688189> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.391523, 24.490982, 28.921917>,  <28.387295, 24.685701, 29.062155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.391523, 24.490982, 28.921917>,  <28.398571, 24.166451, 28.688189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.391523, 24.490982, 28.921917> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231110, 0.571890, -0.787102,
		-0.972768, 0.121175, -0.197582,
		-0.017619, 0.811331, 0.584321,
		28.386238, 24.734381, 29.097214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.893101, 24.558680, 28.349440>,  <28.398571, 24.166451, 28.688189>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.893101, 24.558680, 28.349440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.134871, 24.787331, 28.571400>,  <28.279932, 24.924522, 28.704576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.134871, 24.787331, 28.571400>,  <27.893101, 24.558680, 28.349440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.134871, 24.787331, 28.571400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015712, 0.704947, -0.709086,
		-0.796509, 0.419870, 0.435067,
		0.604423, 0.571629, 0.554900,
		28.316196, 24.958818, 28.737869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.703991, 25.263155, 28.094791>,  <27.893101, 24.558680, 28.349440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.703991, 25.263155, 28.094791> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.056162, 25.284523, 28.283257>,  <28.267464, 25.297344, 28.396336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.056162, 25.284523, 28.283257>,  <27.703991, 25.263155, 28.094791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.056162, 25.284523, 28.283257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301121, 0.704580, -0.642568,
		-0.366299, 0.707611, 0.604245,
		0.880427, 0.053421, 0.471163,
		28.320290, 25.300549, 28.424606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<25.816530, 30.667261, 17.328476> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.113684, 30.899929, 17.195942>,  <26.291975, 31.039530, 17.116421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.113684, 30.899929, 17.195942>,  <25.816530, 30.667261, 17.328476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.113684, 30.899929, 17.195942> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077714, 0.416675, 0.905728,
		0.664895, -0.698599, 0.264337,
		0.742883, 0.581671, -0.331336,
		26.336548, 31.074430, 17.096540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.322300, 30.777571, 17.897852>,  <25.816530, 30.667261, 17.328476>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.322300, 30.777571, 17.897852> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.413540, 31.081295, 17.654076>,  <26.468285, 31.263531, 17.507811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.413540, 31.081295, 17.654076>,  <26.322300, 30.777571, 17.897852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.413540, 31.081295, 17.654076> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154330, 0.646223, 0.747381,
		0.961329, -0.076422, 0.264588,
		0.228099, 0.759312, -0.609439,
		26.481970, 31.309088, 17.471245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.873518, 31.198353, 18.166071>,  <26.322300, 30.777571, 17.897852>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.873518, 31.198353, 18.166071> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.662619, 31.450191, 17.937820>,  <26.536079, 31.601295, 17.800871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.662619, 31.450191, 17.937820>,  <26.873518, 31.198353, 18.166071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.662619, 31.450191, 17.937820> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008632, 0.667549, 0.744516,
		0.849667, 0.397471, -0.346530,
		-0.527249, 0.629599, -0.570625,
		26.504444, 31.639071, 17.766632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.211847, 31.812748, 18.305082>,  <26.873518, 31.198353, 18.166071>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.211847, 31.812748, 18.305082> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.880760, 31.951660, 18.128773>,  <26.682108, 32.035007, 18.022987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.880760, 31.951660, 18.128773>,  <27.211847, 31.812748, 18.305082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.880760, 31.951660, 18.128773> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119230, 0.658713, 0.742887,
		0.548332, 0.667454, -0.503822,
		-0.827717, 0.347278, -0.440774,
		26.632444, 32.055843, 17.996540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.238400, 32.598774, 18.387098>,  <27.211847, 31.812748, 18.305082>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.238400, 32.598774, 18.387098> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.859488, 32.501137, 18.304077>,  <26.632141, 32.442554, 18.254265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.859488, 32.501137, 18.304077>,  <27.238400, 32.598774, 18.387098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.859488, 32.501137, 18.304077> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320164, 0.695815, 0.642913,
		-0.012512, 0.675470, -0.737282,
		-0.947280, -0.244094, -0.207555,
		26.575304, 32.427910, 18.241810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.975578, 33.192772, 18.625612>,  <27.238400, 32.598774, 18.387098>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.975578, 33.192772, 18.625612> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.648447, 32.967896, 18.576450>,  <26.452169, 32.832970, 18.546953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.648447, 32.967896, 18.576450>,  <26.975578, 33.192772, 18.625612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.648447, 32.967896, 18.576450> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513019, 0.615498, 0.598309,
		-0.260714, 0.552365, -0.791783,
		-0.817827, -0.562187, -0.122905,
		26.403099, 32.799240, 18.539579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.421419, 33.637947, 18.589603>,  <26.975578, 33.192772, 18.625612>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.421419, 33.637947, 18.589603> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.223461, 33.299641, 18.669361>,  <26.104687, 33.096657, 18.717216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.223461, 33.299641, 18.669361>,  <26.421419, 33.637947, 18.589603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.223461, 33.299641, 18.669361> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554153, 0.483935, 0.677290,
		-0.669322, 0.224693, -0.708181,
		-0.494896, -0.845766, 0.199394,
		26.074993, 33.045910, 18.729179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.734423, 33.837124, 18.642635>,  <26.421419, 33.637947, 18.589603>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.734423, 33.837124, 18.642635> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.736101, 33.500397, 18.858536>,  <25.737108, 33.298363, 18.988075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.736101, 33.500397, 18.858536>,  <25.734423, 33.837124, 18.642635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.736101, 33.500397, 18.858536> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653192, 0.406390, 0.638896,
		-0.757181, -0.355241, -0.548162,
		0.004195, -0.841814, 0.539751,
		25.737360, 33.247852, 19.020460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.004845, 33.716557, 18.757296>,  <25.734423, 33.837124, 18.642635>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.004845, 33.716557, 18.757296> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.222279, 33.518875, 19.028671>,  <25.352739, 33.400265, 19.191496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.222279, 33.518875, 19.028671>,  <25.004845, 33.716557, 18.757296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.222279, 33.518875, 19.028671> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588893, 0.351406, 0.727818,
		-0.598097, -0.795159, -0.100013,
		0.543586, -0.494202, 0.678439,
		25.385355, 33.370613, 19.232203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.579342, 33.277721, 19.145239>,  <25.004845, 33.716557, 18.757296>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.579342, 33.277721, 19.145239> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.894770, 33.339985, 19.383205>,  <25.084026, 33.377342, 19.525986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.894770, 33.339985, 19.383205>,  <24.579342, 33.277721, 19.145239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.894770, 33.339985, 19.383205> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605476, 0.365641, 0.706899,
		-0.107494, -0.917648, 0.382579,
		0.788571, 0.155655, 0.594918,
		25.131342, 33.386681, 19.561680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.214148, 33.296749, 19.732994>,  <24.579342, 33.277721, 19.145239>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.214148, 33.296749, 19.732994> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.581535, 33.433632, 19.812302>,  <24.801968, 33.515762, 19.859886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.581535, 33.433632, 19.812302>,  <24.214148, 33.296749, 19.732994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.581535, 33.433632, 19.812302> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370783, 0.570630, 0.732735,
		0.137607, -0.746510, 0.650990,
		0.918468, 0.342205, 0.198271,
		24.857077, 33.536293, 19.871782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.322582, 33.066067, 20.451229>,  <24.214148, 33.296749, 19.732994>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.322582, 33.066067, 20.451229> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.590199, 33.360954, 20.413509>,  <24.750769, 33.537888, 20.390877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.590199, 33.360954, 20.413509>,  <24.322582, 33.066067, 20.451229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.590199, 33.360954, 20.413509> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442855, 0.497328, 0.746019,
		0.596879, -0.457355, 0.659213,
		0.669041, 0.737219, -0.094303,
		24.790911, 33.582119, 20.385220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.483171, 33.177036, 21.089809>,  <24.322582, 33.066067, 20.451229>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.483171, 33.177036, 21.089809> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.614250, 33.504387, 20.900970>,  <24.692898, 33.700798, 20.787668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.614250, 33.504387, 20.900970>,  <24.483171, 33.177036, 21.089809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.614250, 33.504387, 20.900970> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489825, 0.574448, 0.655805,
		0.807891, 0.016340, 0.589106,
		0.327695, 0.818377, -0.472095,
		24.712559, 33.749901, 20.759342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.755482, 33.579849, 21.599287>,  <24.483171, 33.177036, 21.089809>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.755482, 33.579849, 21.599287> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.662558, 33.858356, 21.327629>,  <24.606802, 34.025459, 21.164635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.662558, 33.858356, 21.327629>,  <24.755482, 33.579849, 21.599287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.662558, 33.858356, 21.327629> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444240, 0.545208, 0.710914,
		0.865264, 0.466858, 0.182652,
		-0.232313, 0.696269, -0.679146,
		24.592863, 34.067238, 21.123886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.185686, 34.227692, 21.742596>,  <24.755482, 33.579849, 21.599287>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.185686, 34.227692, 21.742596> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.864006, 34.344719, 21.535648>,  <24.670998, 34.414936, 21.411480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.864006, 34.344719, 21.535648>,  <25.185686, 34.227692, 21.742596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.864006, 34.344719, 21.535648> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185680, 0.703223, 0.686294,
		0.564613, 0.647981, -0.511207,
		-0.804198, 0.292570, -0.517366,
		24.622747, 34.432491, 21.380438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.194447, 34.907345, 21.741917>,  <25.185686, 34.227692, 21.742596>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.194447, 34.907345, 21.741917> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.821978, 34.849758, 21.607937>,  <24.598495, 34.815205, 21.527550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.821978, 34.849758, 21.607937>,  <25.194447, 34.907345, 21.741917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.821978, 34.849758, 21.607937> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315137, 0.779803, 0.540920,
		0.183317, 0.609245, -0.771502,
		-0.931173, -0.143969, -0.334947,
		24.542625, 34.806568, 21.507452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.825352, 35.589775, 21.643705>,  <25.194447, 34.907345, 21.741917>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.825352, 35.589775, 21.643705> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.514038, 35.338966, 21.657085>,  <24.327250, 35.188480, 21.665113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.514038, 35.338966, 21.657085>,  <24.825352, 35.589775, 21.643705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.514038, 35.338966, 21.657085> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529474, 0.683976, 0.501830,
		-0.337540, 0.372854, -0.864319,
		-0.778283, -0.627022, 0.033453,
		24.280554, 35.150860, 21.667122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.285292, 36.021919, 21.467327>,  <24.825352, 35.589775, 21.643705>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.285292, 36.021919, 21.467327> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.101273, 35.710960, 21.638912>,  <23.990860, 35.524384, 21.741863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.101273, 35.710960, 21.638912>,  <24.285292, 36.021919, 21.467327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.101273, 35.710960, 21.638912> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697279, 0.615421, 0.367503,
		-0.549688, -0.130037, -0.825187,
		-0.460049, -0.777398, 0.428961,
		23.963259, 35.477741, 21.767601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.650276, 36.205753, 21.420877>,  <24.285292, 36.021919, 21.467327>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.650276, 36.205753, 21.420877> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.655224, 35.940475, 21.720215>,  <23.658192, 35.781307, 21.899817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.655224, 35.940475, 21.720215>,  <23.650276, 36.205753, 21.420877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.655224, 35.940475, 21.720215> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523703, 0.633247, 0.569853,
		-0.851811, -0.398958, -0.339486,
		0.012369, -0.663197, 0.748343,
		23.658934, 35.741516, 21.944717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.894962, 36.164589, 21.600269>,  <23.650276, 36.205753, 21.420877>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.894962, 36.164589, 21.600269> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.148815, 36.049519, 21.887180>,  <23.301126, 35.980476, 22.059326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.148815, 36.049519, 21.887180>,  <22.894962, 36.164589, 21.600269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.148815, 36.049519, 21.887180> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564789, 0.460873, 0.684551,
		-0.527503, -0.839547, 0.130007,
		0.634629, -0.287676, 0.717278,
		23.339205, 35.963215, 22.102364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.493954, 36.027840, 22.253040>,  <22.894962, 36.164589, 21.600269>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.493954, 36.027840, 22.253040> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.857983, 36.089802, 22.406803>,  <23.076401, 36.126980, 22.499062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.857983, 36.089802, 22.406803>,  <22.493954, 36.027840, 22.253040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.857983, 36.089802, 22.406803> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414258, 0.368066, 0.832417,
		-0.012540, -0.916804, 0.399139,
		0.910073, 0.154908, 0.384409,
		23.131004, 36.136272, 22.522125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.824772, 36.316776, 22.447472>,  <22.493954, 36.027840, 22.253040>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.824772, 36.316776, 22.447472> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.497103, 36.163113, 22.617825>,  <21.300501, 36.070915, 22.720037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.497103, 36.163113, 22.617825>,  <21.824772, 36.316776, 22.447472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.497103, 36.163113, 22.617825> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054292, -0.791152, -0.609206,
		0.570969, -0.475924, 0.668948,
		-0.819175, -0.384156, 0.425884,
		21.251350, 36.047867, 22.745590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.901222, 35.639412, 22.788239>,  <21.824772, 36.316776, 22.447472>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.901222, 35.639412, 22.788239> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.519556, 35.645470, 22.668682>,  <21.290556, 35.649105, 22.596949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.519556, 35.645470, 22.668682>,  <21.901222, 35.639412, 22.788239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.519556, 35.645470, 22.668682> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184430, -0.756791, -0.627099,
		-0.235693, -0.653481, 0.719313,
		-0.954167, 0.015140, -0.298892,
		21.233307, 35.650013, 22.579014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.690777, 34.975990, 22.748968>,  <21.901222, 35.639412, 22.788239>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.690777, 34.975990, 22.748968> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.431679, 35.152508, 22.500553>,  <21.276220, 35.258419, 22.351503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.431679, 35.152508, 22.500553>,  <21.690777, 34.975990, 22.748968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.431679, 35.152508, 22.500553> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184343, -0.700156, -0.689782,
		-0.739220, -0.561285, 0.372172,
		-0.647743, 0.441293, -0.621038,
		21.237356, 35.284897, 22.314241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.341240, 34.377708, 22.369755>,  <21.690777, 34.975990, 22.748968>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.341240, 34.377708, 22.369755> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.282825, 34.704212, 22.146187>,  <21.247776, 34.900116, 22.012047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.282825, 34.704212, 22.146187>,  <21.341240, 34.377708, 22.369755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.282825, 34.704212, 22.146187> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043313, -0.559157, -0.827929,
		-0.988330, -0.145117, 0.046303,
		-0.146037, 0.816262, -0.558918,
		21.239014, 34.949089, 21.978512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.946680, 34.123707, 21.847628>,  <21.341240, 34.377708, 22.369755>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.946680, 34.123707, 21.847628> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.064278, 34.474545, 21.695698>,  <21.134836, 34.685047, 21.604540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.064278, 34.474545, 21.695698>,  <20.946680, 34.123707, 21.847628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.064278, 34.474545, 21.695698> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232504, -0.451075, -0.861669,
		-0.927097, 0.165015, -0.336543,
		0.293994, 0.877098, -0.379824,
		21.152475, 34.737675, 21.581751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.704046, 34.212646, 21.172962>,  <20.946680, 34.123707, 21.847628>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.704046, 34.212646, 21.172962> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.024246, 34.451962, 21.158852>,  <21.216366, 34.595551, 21.150385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.024246, 34.451962, 21.158852>,  <20.704046, 34.212646, 21.172962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.024246, 34.451962, 21.158852> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165740, -0.277554, -0.946305,
		-0.575959, 0.751672, -0.321343,
		0.800501, 0.598292, -0.035278,
		21.264397, 34.631451, 21.148268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.659481, 34.479958, 20.588099>,  <20.704046, 34.212646, 21.172962>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.659481, 34.479958, 20.588099> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.045280, 34.551926, 20.665424>,  <21.276760, 34.595108, 20.711821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.045280, 34.551926, 20.665424>,  <20.659481, 34.479958, 20.588099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.045280, 34.551926, 20.665424> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251187, -0.398986, -0.881882,
		-0.081542, 0.899132, -0.430015,
		0.964498, 0.179925, 0.193316,
		21.334629, 34.605904, 20.723419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.947739, 34.905396, 19.990767>,  <20.659481, 34.479958, 20.588099>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.947739, 34.905396, 19.990767> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.258070, 34.738754, 20.180305>,  <21.444269, 34.638771, 20.294029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.258070, 34.738754, 20.180305>,  <20.947739, 34.905396, 19.990767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.258070, 34.738754, 20.180305> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234045, -0.507413, -0.829310,
		0.585929, 0.754304, -0.296162,
		0.775828, -0.416602, 0.473849,
		21.490818, 34.613773, 20.322460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.548107, 35.051525, 19.593002>,  <20.947739, 34.905396, 19.990767>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.548107, 35.051525, 19.593002> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.630920, 34.744293, 19.835388>,  <21.680609, 34.559956, 19.980820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.630920, 34.744293, 19.835388>,  <21.548107, 35.051525, 19.593002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.630920, 34.744293, 19.835388> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399661, -0.498945, -0.768977,
		0.892977, 0.401386, 0.203672,
		0.207035, -0.768078, 0.605964,
		21.693031, 34.513870, 20.017178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.127314, 34.902241, 19.353748>,  <21.548107, 35.051525, 19.593002>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.127314, 34.902241, 19.353748> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.075129, 34.568798, 19.568443>,  <22.043818, 34.368732, 19.697260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.075129, 34.568798, 19.568443>,  <22.127314, 34.902241, 19.353748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.075129, 34.568798, 19.568443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413553, -0.537773, -0.734694,
		0.901085, 0.126118, 0.414898,
		-0.130463, -0.833603, 0.536736,
		22.035990, 34.318718, 19.729464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.794004, 34.579811, 19.452980>,  <22.127314, 34.902241, 19.353748>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.794004, 34.579811, 19.452980> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.514660, 34.294189, 19.472660>,  <22.347054, 34.122818, 19.484468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.514660, 34.294189, 19.472660>,  <22.794004, 34.579811, 19.452980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.514660, 34.294189, 19.472660> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402067, -0.448240, -0.798388,
		0.592145, -0.537781, 0.600130,
		-0.698360, -0.714054, 0.049199,
		22.305151, 34.079975, 19.487419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.108746, 33.988262, 19.560877>,  <22.794004, 34.579811, 19.452980>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.108746, 33.988262, 19.560877> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.765453, 33.822887, 19.439213>,  <22.559479, 33.723663, 19.366215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.765453, 33.822887, 19.439213>,  <23.108746, 33.988262, 19.560877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.765453, 33.822887, 19.439213> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509000, -0.761812, -0.400701,
		-0.066050, -0.498711, 0.864248,
		-0.858229, -0.413436, -0.304161,
		22.507984, 33.698856, 19.347965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.045542, 33.234154, 19.729210>,  <23.108746, 33.988262, 19.560877>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.045542, 33.234154, 19.729210> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.791821, 33.271389, 19.422226>,  <22.639587, 33.293728, 19.238035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.791821, 33.271389, 19.422226>,  <23.045542, 33.234154, 19.729210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.791821, 33.271389, 19.422226> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422986, -0.789162, -0.445315,
		-0.647101, -0.607090, 0.461196,
		-0.634305, 0.093084, -0.767458,
		22.601528, 33.299313, 19.191988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.958332, 32.565842, 19.518715>,  <23.045542, 33.234154, 19.729210>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.958332, 32.565842, 19.518715> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.802757, 32.775829, 19.215893>,  <22.709412, 32.901821, 19.034201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.802757, 32.775829, 19.215893>,  <22.958332, 32.565842, 19.518715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.802757, 32.775829, 19.215893> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451246, -0.607871, -0.653353,
		-0.803183, -0.595732, -0.000467,
		-0.388939, 0.524973, -0.757054,
		22.686075, 32.933323, 18.988777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.847162, 32.069752, 18.977686>,  <22.958332, 32.565842, 19.518715>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.847162, 32.069752, 18.977686> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.819008, 32.406540, 18.763721>,  <22.802114, 32.608612, 18.635342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.819008, 32.406540, 18.763721>,  <22.847162, 32.069752, 18.977686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.819008, 32.406540, 18.763721> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426203, -0.459447, -0.779268,
		-0.901885, -0.282831, -0.326512,
		-0.070387, 0.841971, -0.534912,
		22.797892, 32.659130, 18.603249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.429670, 31.917727, 18.362463>,  <22.847162, 32.069752, 18.977686>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.429670, 31.917727, 18.362463> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.652395, 32.239265, 18.278755>,  <22.786030, 32.432190, 18.228531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.652395, 32.239265, 18.278755>,  <22.429670, 31.917727, 18.362463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.652395, 32.239265, 18.278755> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426603, -0.492917, -0.758316,
		-0.712720, 0.332965, -0.617385,
		0.556812, 0.803845, -0.209268,
		22.819439, 32.480419, 18.215975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.393394, 31.969225, 17.625517>,  <22.429670, 31.917727, 18.362463>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.393394, 31.969225, 17.625517> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.694981, 32.205559, 17.740372>,  <22.875933, 32.347359, 17.809284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.694981, 32.205559, 17.740372>,  <22.393394, 31.969225, 17.625517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.694981, 32.205559, 17.740372> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490363, -0.215341, -0.844495,
		-0.437127, 0.777522, -0.452084,
		0.753966, 0.590837, 0.287137,
		22.921171, 32.382809, 17.826513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.448734, 32.614010, 17.175119>,  <22.393394, 31.969225, 17.625517>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.448734, 32.614010, 17.175119> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.800217, 32.517250, 17.339733>,  <23.011106, 32.459194, 17.438501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.800217, 32.517250, 17.339733>,  <22.448734, 32.614010, 17.175119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.800217, 32.517250, 17.339733> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363454, -0.219882, -0.905292,
		0.309475, 0.945060, -0.105294,
		0.878707, -0.241895, 0.411534,
		23.063829, 32.444683, 17.463194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.844526, 32.968132, 16.780277>,  <22.448734, 32.614010, 17.175119>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.844526, 32.968132, 16.780277> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.064381, 32.680313, 16.950054>,  <23.196293, 32.507622, 17.051920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.064381, 32.680313, 16.950054>,  <22.844526, 32.968132, 16.780277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.064381, 32.680313, 16.950054> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412571, -0.207988, -0.886863,
		0.726420, 0.662564, 0.182547,
		0.549636, -0.719548, 0.424441,
		23.229271, 32.464447, 17.077387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.494024, 33.121769, 16.485495>,  <22.844526, 32.968132, 16.780277>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.494024, 33.121769, 16.485495> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.490536, 32.744762, 16.619114>,  <23.488443, 32.518559, 16.699286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.490536, 32.744762, 16.619114>,  <23.494024, 33.121769, 16.485495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.490536, 32.744762, 16.619114> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453057, -0.301533, -0.838938,
		0.891439, 0.144027, 0.429643,
		-0.008722, -0.942515, 0.334051,
		23.487919, 32.462009, 16.719330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.224485, 32.832386, 16.311708>,  <23.494024, 33.121769, 16.485495>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.224485, 32.832386, 16.311708> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.942955, 32.548603, 16.326168>,  <23.774036, 32.378334, 16.334843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.942955, 32.548603, 16.326168>,  <24.224485, 32.832386, 16.311708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.942955, 32.548603, 16.326168> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378368, -0.417460, -0.826175,
		0.601222, -0.567805, 0.562254,
		-0.703825, -0.709454, 0.036147,
		23.731808, 32.335766, 16.337011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<26.473837, 29.071575, 24.804352> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.791750, 29.201687, 25.009296>,  <26.982498, 29.279755, 25.132263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.791750, 29.201687, 25.009296>,  <26.473837, 29.071575, 24.804352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.791750, 29.201687, 25.009296> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213113, 0.640886, -0.737461,
		-0.568245, 0.695312, 0.440044,
		0.794784, 0.325279, 0.512360,
		27.030186, 29.299271, 25.163004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.476545, 29.802385, 24.903049>,  <26.473837, 29.071575, 24.804352>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.476545, 29.802385, 24.903049> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.865280, 29.725910, 24.958157>,  <27.098520, 29.680025, 24.991220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.865280, 29.725910, 24.958157>,  <26.476545, 29.802385, 24.903049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.865280, 29.725910, 24.958157> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235374, 0.815977, -0.527997,
		-0.011467, 0.545554, 0.837998,
		0.971837, -0.191188, 0.137766,
		27.156832, 29.668554, 24.999487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.684631, 30.385603, 25.128258>,  <26.476545, 29.802385, 24.903049>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.684631, 30.385603, 25.128258> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.996136, 30.180733, 24.983368>,  <27.183039, 30.057812, 24.896435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.996136, 30.180733, 24.983368>,  <26.684631, 30.385603, 25.128258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.996136, 30.180733, 24.983368> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360525, 0.837946, -0.409718,
		0.513372, 0.188482, 0.837212,
		0.778763, -0.512173, -0.362225,
		27.229765, 30.027081, 24.874701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.353291, 30.835665, 25.176023>,  <26.684631, 30.385603, 25.128258>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.353291, 30.835665, 25.176023> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.470934, 30.559811, 24.911327>,  <27.541521, 30.394299, 24.752510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.470934, 30.559811, 24.911327>,  <27.353291, 30.835665, 25.176023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.470934, 30.559811, 24.911327> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405949, 0.716944, -0.566742,
		0.865277, -0.101948, 0.490817,
		0.294110, -0.689636, -0.661741,
		27.559166, 30.352921, 24.712805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.043318, 31.051481, 24.863276>,  <27.353291, 30.835665, 25.176023>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.043318, 31.051481, 24.863276> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.891912, 30.797153, 24.594215>,  <27.801069, 30.644556, 24.432779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.891912, 30.797153, 24.594215>,  <28.043318, 31.051481, 24.863276>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.891912, 30.797153, 24.594215> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340151, 0.580319, -0.739951,
		0.860828, -0.508884, -0.003383,
		-0.378513, -0.635820, -0.672652,
		27.778358, 30.606407, 24.392420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.569649, 30.877785, 24.456486>,  <28.043318, 31.051481, 24.863276>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.569649, 30.877785, 24.456486> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.254200, 30.768536, 24.236130>,  <28.064930, 30.702986, 24.103916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.254200, 30.768536, 24.236130>,  <28.569649, 30.877785, 24.456486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.254200, 30.768536, 24.236130> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334733, 0.560840, -0.757240,
		0.515779, -0.781578, -0.350868,
		-0.788623, -0.273122, -0.550889,
		28.017612, 30.686600, 24.070864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.772358, 30.597246, 23.773413>,  <28.569649, 30.877785, 24.456486>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.772358, 30.597246, 23.773413> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.405182, 30.734310, 23.693443>,  <28.184875, 30.816549, 23.645462>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.405182, 30.734310, 23.693443>,  <28.772358, 30.597246, 23.773413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.405182, 30.734310, 23.693443> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355588, 0.487197, -0.797619,
		-0.175910, -0.803257, -0.569064,
		-0.917940, 0.342661, -0.199925,
		28.129801, 30.837109, 23.633465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.677671, 30.545458, 23.085205>,  <28.772358, 30.597246, 23.773413>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.677671, 30.545458, 23.085205> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.387804, 30.803371, 23.182457>,  <28.213884, 30.958118, 23.240808>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.387804, 30.803371, 23.182457>,  <28.677671, 30.545458, 23.085205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.387804, 30.803371, 23.182457> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216471, 0.547970, -0.808003,
		-0.654215, -0.532903, -0.536673,
		-0.724668, 0.644782, 0.243132,
		28.170404, 30.996805, 23.255396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.300322, 30.694853, 22.542635>,  <28.677671, 30.545458, 23.085205>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.300322, 30.694853, 22.542635> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.236341, 31.034279, 22.744370>,  <28.197954, 31.237934, 22.865410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.236341, 31.034279, 22.744370>,  <28.300322, 30.694853, 22.542635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.236341, 31.034279, 22.744370> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275873, 0.528983, -0.802540,
		-0.947792, 0.010766, -0.318707,
		-0.159950, 0.848564, 0.504336,
		28.188356, 31.288849, 22.895670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.936413, 31.134422, 22.058006>,  <28.300322, 30.694853, 22.542635>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.936413, 31.134422, 22.058006> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.087650, 31.386497, 22.329273>,  <28.178392, 31.537743, 22.492033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.087650, 31.386497, 22.329273>,  <27.936413, 31.134422, 22.058006>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.087650, 31.386497, 22.329273> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202548, 0.658486, -0.724825,
		-0.903338, 0.411413, 0.121327,
		0.378094, 0.630187, 0.678166,
		28.201078, 31.575554, 22.532722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.605890, 31.809355, 21.932940>,  <27.936413, 31.134422, 22.058006>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.605890, 31.809355, 21.932940> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.945688, 31.868965, 22.135384>,  <28.149567, 31.904732, 22.256851>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.945688, 31.868965, 22.135384>,  <27.605890, 31.809355, 21.932940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.945688, 31.868965, 22.135384> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244805, 0.738426, -0.628329,
		-0.467364, 0.657661, 0.590807,
		0.849495, 0.149026, 0.506112,
		28.200537, 31.913673, 22.287218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.599722, 32.488628, 21.980927>,  <27.605890, 31.809355, 21.932940>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.599722, 32.488628, 21.980927> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.975746, 32.368008, 22.044617>,  <28.201361, 32.295635, 22.082830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.975746, 32.368008, 22.044617>,  <27.599722, 32.488628, 21.980927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.975746, 32.368008, 22.044617> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337314, 0.753712, -0.564036,
		0.050077, 0.583937, 0.810253,
		0.940059, -0.301555, 0.159226,
		28.257765, 32.277542, 22.092384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.978121, 33.118111, 21.991518>,  <27.599722, 32.488628, 21.980927>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.978121, 33.118111, 21.991518> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.220486, 32.813259, 21.900280>,  <28.365904, 32.630348, 21.845537>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.220486, 32.813259, 21.900280>,  <27.978121, 33.118111, 21.991518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.220486, 32.813259, 21.900280> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346406, 0.510868, -0.786776,
		0.716153, 0.397703, 0.573548,
		0.605911, -0.762133, -0.228093,
		28.402258, 32.584618, 21.831852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.360304, 33.591106, 22.133772>,  <27.978121, 33.118111, 21.991518>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.360304, 33.591106, 22.133772> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.513041, 33.252365, 22.281849>,  <27.604683, 33.049122, 22.370695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.513041, 33.252365, 22.281849>,  <27.360304, 33.591106, 22.133772>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.513041, 33.252365, 22.281849> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466812, -0.168984, -0.868062,
		0.797675, 0.504272, 0.330795,
		0.381840, -0.846850, 0.370194,
		27.627592, 32.998310, 22.392906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.641348, 33.575531, 22.129164>,  <27.360304, 33.591106, 22.133772>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.641348, 33.575531, 22.129164> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.465141, 33.918003, 22.237164>,  <26.359417, 34.123486, 22.301964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.465141, 33.918003, 22.237164>,  <26.641348, 33.575531, 22.129164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.465141, 33.918003, 22.237164> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167414, -0.373825, 0.912265,
		0.881996, 0.356666, 0.308012,
		-0.440517, 0.856180, 0.270002,
		26.332987, 34.174858, 22.318165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.941729, 33.778870, 22.794054>,  <26.641348, 33.575531, 22.129164>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.941729, 33.778870, 22.794054> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.587023, 33.960514, 22.759563>,  <26.374199, 34.069500, 22.738869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.587023, 33.960514, 22.759563>,  <26.941729, 33.778870, 22.794054>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.587023, 33.960514, 22.759563> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213895, -0.237781, 0.947475,
		0.409754, 0.858629, 0.307988,
		-0.886764, 0.454109, -0.086225,
		26.320993, 34.096748, 22.733696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.917461, 34.243187, 23.404696>,  <26.941729, 33.778870, 22.794054>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.917461, 34.243187, 23.404696> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.552864, 34.170780, 23.256958>,  <26.334106, 34.127335, 23.168316>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.552864, 34.170780, 23.256958>,  <26.917461, 34.243187, 23.404696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.552864, 34.170780, 23.256958> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252538, -0.462491, 0.849898,
		-0.324663, 0.867949, 0.375844,
		-0.911492, -0.181016, -0.369344,
		26.279417, 34.116474, 23.146154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.499002, 34.483131, 23.949675>,  <26.917461, 34.243187, 23.404696>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.499002, 34.483131, 23.949675> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.271719, 34.226097, 23.744064>,  <26.135349, 34.071877, 23.620699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.271719, 34.226097, 23.744064>,  <26.499002, 34.483131, 23.949675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.271719, 34.226097, 23.744064> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212860, -0.488625, 0.846130,
		-0.794877, 0.590194, 0.140861,
		-0.568209, -0.642585, -0.514026,
		26.101255, 34.033321, 23.589857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.936617, 34.377872, 24.346043>,  <26.499002, 34.483131, 23.949675>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.936617, 34.377872, 24.346043> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.930901, 34.044491, 24.125080>,  <25.927471, 33.844463, 23.992502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.930901, 34.044491, 24.125080>,  <25.936617, 34.377872, 24.346043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.930901, 34.044491, 24.125080> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129084, -0.546300, 0.827583,
		-0.991531, 0.083134, -0.099778,
		-0.014292, -0.833454, -0.552404,
		25.926613, 33.794456, 23.959358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.425858, 33.928547, 24.644703>,  <25.936617, 34.377872, 24.346043>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.425858, 33.928547, 24.644703> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.619495, 33.670780, 24.407932>,  <25.735678, 33.516121, 24.265869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.619495, 33.670780, 24.407932>,  <25.425858, 33.928547, 24.644703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.619495, 33.670780, 24.407932> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072916, -0.703835, 0.706612,
		-0.871972, -0.298906, -0.387711,
		0.484095, -0.644416, -0.591929,
		25.764725, 33.477455, 24.230354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.997726, 33.319466, 24.651636>,  <25.425858, 33.928547, 24.644703>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.997726, 33.319466, 24.651636> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.359810, 33.203266, 24.527569>,  <25.577061, 33.133545, 24.453129>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.359810, 33.203266, 24.527569>,  <24.997726, 33.319466, 24.651636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.359810, 33.203266, 24.527569> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067224, -0.818562, 0.570471,
		-0.419612, -0.495546, -0.760500,
		0.905211, -0.290500, -0.310166,
		25.631372, 33.116116, 24.434519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.967293, 32.620037, 24.484148>,  <24.997726, 33.319466, 24.651636>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.967293, 32.620037, 24.484148> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.358564, 32.661346, 24.556259>,  <25.593327, 32.686131, 24.599525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.358564, 32.661346, 24.556259>,  <24.967293, 32.620037, 24.484148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.358564, 32.661346, 24.556259> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028156, -0.793814, 0.607509,
		0.205844, -0.599329, -0.773585,
		0.978180, 0.103271, 0.180276,
		25.652018, 32.692329, 24.610342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.099541, 31.968012, 24.614431>,  <24.967293, 32.620037, 24.484148>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.099541, 31.968012, 24.614431> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.418257, 32.153698, 24.769157>,  <25.609488, 32.265110, 24.861994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.418257, 32.153698, 24.769157>,  <25.099541, 31.968012, 24.614431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.418257, 32.153698, 24.769157> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027290, -0.667149, 0.744425,
		0.603638, -0.582595, -0.544247,
		0.796791, 0.464216, 0.386817,
		25.657293, 32.292961, 24.885202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.478319, 31.421673, 24.986349>,  <25.099541, 31.968012, 24.614431>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.478319, 31.421673, 24.986349> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.608377, 31.758244, 25.158989>,  <25.686413, 31.960186, 25.262573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.608377, 31.758244, 25.158989>,  <25.478319, 31.421673, 24.986349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.608377, 31.758244, 25.158989> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178553, -0.502813, 0.845753,
		0.928654, -0.197931, -0.313728,
		0.325148, 0.841429, 0.431598,
		25.705921, 32.010674, 25.288469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.020166, 31.304804, 25.477734>,  <25.478319, 31.421673, 24.986349>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.020166, 31.304804, 25.477734> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.951712, 31.681206, 25.594505>,  <25.910639, 31.907047, 25.664568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.951712, 31.681206, 25.594505>,  <26.020166, 31.304804, 25.477734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.951712, 31.681206, 25.594505> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110498, -0.276101, 0.954756,
		0.979031, 0.195653, -0.056728,
		-0.171138, 0.941004, 0.291930,
		25.900370, 31.963507, 25.682085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.492821, 31.384676, 25.959534>,  <26.020166, 31.304804, 25.477734>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.492821, 31.384676, 25.959534> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.174198, 31.617023, 26.026573>,  <25.983025, 31.756432, 26.066797>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.174198, 31.617023, 26.026573>,  <26.492821, 31.384676, 25.959534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.174198, 31.617023, 26.026573> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122485, -0.426529, 0.896142,
		0.592028, 0.693298, 0.410902,
		-0.796555, 0.580871, 0.167599,
		25.935232, 31.791285, 26.076853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.552460, 31.674486, 26.688456>,  <26.492821, 31.384676, 25.959534>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.552460, 31.674486, 26.688456> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.163006, 31.693558, 26.599224>,  <25.929333, 31.705000, 26.545685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.163006, 31.693558, 26.599224>,  <26.552460, 31.674486, 26.688456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.163006, 31.693558, 26.599224> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218374, -0.477525, 0.851048,
		-0.065948, 0.877323, 0.475347,
		-0.973634, 0.047679, -0.223077,
		25.870916, 31.707861, 26.532301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.255859, 31.912306, 27.267599>,  <26.552460, 31.674486, 26.688456>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.255859, 31.912306, 27.267599> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.969999, 31.722530, 27.062004>,  <25.798483, 31.608665, 26.938648>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.969999, 31.722530, 27.062004>,  <26.255859, 31.912306, 27.267599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.969999, 31.722530, 27.062004> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293234, -0.463918, 0.835939,
		-0.635050, 0.748123, 0.192417,
		-0.714651, -0.474440, -0.513986,
		25.755604, 31.580198, 26.907808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.335932, 32.634846, 27.360268>,  <26.255859, 31.912306, 27.267599>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.335932, 32.634846, 27.360268> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.663910, 32.569653, 27.579769>,  <26.860697, 32.530537, 27.711470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.663910, 32.569653, 27.579769>,  <26.335932, 32.634846, 27.360268>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.663910, 32.569653, 27.579769> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563052, 0.402550, -0.721752,
		-0.103268, 0.900772, 0.421835,
		0.819944, -0.162981, 0.548753,
		26.909893, 32.520760, 27.744394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.642776, 33.237888, 27.330536>,  <26.335932, 32.634846, 27.360268>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.642776, 33.237888, 27.330536> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.943617, 32.997112, 27.437874>,  <27.124121, 32.852646, 27.502277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.943617, 32.997112, 27.437874>,  <26.642776, 33.237888, 27.330536>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.943617, 32.997112, 27.437874> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554022, 0.356939, -0.752100,
		0.356939, 0.714324, 0.601944,
		0.752100, -0.601944, 0.268346,
		27.169247, 32.816528, 27.518377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.223534, 33.649090, 27.299965>,  <26.642776, 33.237888, 27.330536>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.223534, 33.649090, 27.299965> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.351835, 33.273312, 27.251709>,  <27.428816, 33.047844, 27.222755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.351835, 33.273312, 27.251709>,  <27.223534, 33.649090, 27.299965>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.351835, 33.273312, 27.251709> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604282, 0.301051, -0.737707,
		0.729357, 0.163720, 0.664254,
		0.320752, -0.939449, -0.120641,
		27.448061, 32.991478, 27.215517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.965269, 33.675388, 27.401699>,  <27.223534, 33.649090, 27.299965>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.965269, 33.675388, 27.401699> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.893017, 33.337620, 27.199974>,  <27.849665, 33.134960, 27.078939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.893017, 33.337620, 27.199974>,  <27.965269, 33.675388, 27.401699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.893017, 33.337620, 27.199974> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740526, 0.220688, -0.634758,
		0.647297, -0.488113, 0.585450,
		-0.180632, -0.844418, -0.504311,
		27.838827, 33.084293, 27.048681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.602304, 33.566265, 27.191586>,  <27.965269, 33.675388, 27.401699>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.602304, 33.566265, 27.191586> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.354177, 33.349632, 26.964645>,  <28.205301, 33.219650, 26.828482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.354177, 33.349632, 26.964645>,  <28.602304, 33.566265, 27.191586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.354177, 33.349632, 26.964645> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586906, 0.159356, -0.793818,
		0.520332, -0.825403, 0.219009,
		-0.620319, -0.541587, -0.567352,
		28.168081, 33.187157, 26.794439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.019550, 33.117973, 26.865181>,  <28.602304, 33.566265, 27.191586>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.019550, 33.117973, 26.865181> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.692232, 33.152554, 26.637878>,  <28.495840, 33.173302, 26.501497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.692232, 33.152554, 26.637878>,  <29.019550, 33.117973, 26.865181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.692232, 33.152554, 26.637878> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561005, 0.335377, -0.756833,
		0.125150, -0.938109, -0.322938,
		-0.818298, 0.086452, -0.568256,
		28.446743, 33.178490, 26.467402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.056227, 32.751797, 26.170408>,  <29.019550, 33.117973, 26.865181>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.056227, 32.751797, 26.170408> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.777773, 33.032009, 26.107613>,  <28.610701, 33.200138, 26.069935>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.777773, 33.032009, 26.107613>,  <29.056227, 32.751797, 26.170408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.777773, 33.032009, 26.107613> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396334, 0.192683, -0.897660,
		-0.598593, -0.687113, -0.411779,
		-0.696136, 0.700534, -0.156988,
		28.568932, 33.242168, 26.060516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.883480, 32.637928, 25.486706>,  <29.056227, 32.751797, 26.170408>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.883480, 32.637928, 25.486706> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.753128, 33.005661, 25.574917>,  <28.674917, 33.226299, 25.627844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.753128, 33.005661, 25.574917>,  <28.883480, 32.637928, 25.486706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.753128, 33.005661, 25.574917> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361420, 0.336686, -0.869493,
		-0.873601, -0.203646, -0.441984,
		-0.325878, 0.919332, 0.220528,
		28.655365, 33.281460, 25.641075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.633631, 32.846367, 24.816828>,  <28.883480, 32.637928, 25.486706>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.633631, 32.846367, 24.816828> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.672396, 33.172401, 25.045300>,  <28.695654, 33.368023, 25.182383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.672396, 33.172401, 25.045300>,  <28.633631, 32.846367, 24.816828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.672396, 33.172401, 25.045300> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560603, 0.429485, -0.708002,
		-0.822394, 0.388819, -0.415316,
		0.096913, 0.815084, 0.571179,
		28.701469, 33.416927, 25.216654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.588671, 33.322666, 24.343119>,  <28.633631, 32.846367, 24.816828>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.588671, 33.322666, 24.343119> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.771585, 33.475487, 24.664349>,  <28.881334, 33.567177, 24.857086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.771585, 33.475487, 24.664349>,  <28.588671, 33.322666, 24.343119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.771585, 33.475487, 24.664349> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610295, 0.522014, -0.595853,
		-0.646861, 0.762588, 0.005548,
		0.457287, 0.382048, 0.803074,
		28.908772, 33.590099, 24.905272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.686922, 34.014091, 24.235283>,  <28.588671, 33.322666, 24.343119>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.686922, 34.014091, 24.235283> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.967802, 33.941017, 24.510540>,  <29.136330, 33.897171, 24.675694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.967802, 33.941017, 24.510540>,  <28.686922, 34.014091, 24.235283>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.967802, 33.941017, 24.510540> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596524, 0.678599, -0.428558,
		-0.388680, 0.711427, 0.585491,
		0.702201, -0.182687, 0.688141,
		29.178463, 33.886211, 24.716982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.999229, 34.636536, 24.322952>,  <28.686922, 34.014091, 24.235283>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.999229, 34.636536, 24.322952> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.279327, 34.387589, 24.462849>,  <29.447386, 34.238220, 24.546787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.279327, 34.387589, 24.462849>,  <28.999229, 34.636536, 24.322952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.279327, 34.387589, 24.462849> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713833, 0.617334, -0.330667,
		-0.010111, 0.481204, 0.876550,
		0.700242, -0.622367, 0.349742,
		29.489401, 34.200878, 24.567772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<24.927868, 31.236305, 30.991972> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.281214, 31.070328, 30.904808>,  <25.493221, 30.970741, 30.852510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.281214, 31.070328, 30.904808>,  <24.927868, 31.236305, 30.991972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.281214, 31.070328, 30.904808> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202008, 0.756626, -0.621860,
		0.422914, 0.505311, 0.752200,
		0.883367, -0.414944, -0.217910,
		25.546225, 30.945845, 30.839436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.404634, 31.806986, 31.046112>,  <24.927868, 31.236305, 30.991972>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.404634, 31.806986, 31.046112> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.590818, 31.520714, 30.837826>,  <25.702528, 31.348949, 30.712854>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.590818, 31.520714, 30.837826>,  <25.404634, 31.806986, 31.046112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.590818, 31.520714, 30.837826> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220932, 0.663662, -0.714662,
		0.857051, 0.217603, 0.467025,
		0.465459, -0.715682, -0.520717,
		25.730455, 31.306009, 30.681610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.152800, 31.997206, 31.005415>,  <25.404634, 31.806986, 31.046112>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.152800, 31.997206, 31.005415> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.102833, 31.754002, 30.691799>,  <26.072853, 31.608080, 30.503630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.102833, 31.754002, 30.691799>,  <26.152800, 31.997206, 31.005415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.102833, 31.754002, 30.691799> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363359, 0.707295, -0.606386,
		0.923237, -0.360635, 0.132574,
		-0.124915, -0.608010, -0.784041,
		26.065359, 31.571598, 30.456587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.770172, 31.978273, 30.694118>,  <26.152800, 31.997206, 31.005415>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.770172, 31.978273, 30.694118> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.517931, 31.833050, 30.419739>,  <26.366587, 31.745914, 30.255112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.517931, 31.833050, 30.419739>,  <26.770172, 31.978273, 30.694118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.517931, 31.833050, 30.419739> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532596, 0.440441, -0.722740,
		0.564519, -0.821096, -0.084379,
		-0.630603, -0.363061, -0.685949,
		26.328751, 31.724131, 30.213953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.178871, 31.622805, 30.204292>,  <26.770172, 31.978273, 30.694118>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.178871, 31.622805, 30.204292> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.847126, 31.708408, 29.997852>,  <26.648079, 31.759769, 29.873989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.847126, 31.708408, 29.997852>,  <27.178871, 31.622805, 30.204292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.847126, 31.708408, 29.997852> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554869, 0.423641, -0.715995,
		0.065413, -0.880187, -0.470098,
		-0.829362, 0.214008, -0.516100,
		26.598318, 31.772610, 29.843021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.329271, 31.472963, 29.503574>,  <27.178871, 31.622805, 30.204292>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.329271, 31.472963, 29.503574> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.978920, 31.639759, 29.406452>,  <26.768709, 31.739836, 29.348179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.978920, 31.639759, 29.406452>,  <27.329271, 31.472963, 29.503574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.978920, 31.639759, 29.406452> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317589, 0.119340, -0.940688,
		-0.363281, -0.901042, -0.236959,
		-0.875879, 0.416990, -0.242807,
		26.716156, 31.764856, 29.333611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.082325, 31.102200, 28.851688>,  <27.329271, 31.472963, 29.503574>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.082325, 31.102200, 28.851688> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.911777, 31.460659, 28.900879>,  <26.809448, 31.675735, 28.930393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.911777, 31.460659, 28.900879>,  <27.082325, 31.102200, 28.851688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.911777, 31.460659, 28.900879> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106830, 0.184891, -0.976935,
		-0.898219, -0.403398, -0.174568,
		-0.426369, 0.896150, 0.122978,
		26.783867, 31.729504, 28.937773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.827368, 31.141983, 28.213078>,  <27.082325, 31.102200, 28.851688>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.827368, 31.141983, 28.213078> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.803383, 31.515137, 28.355137>,  <26.788992, 31.739029, 28.440372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.803383, 31.515137, 28.355137>,  <26.827368, 31.141983, 28.213078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.803383, 31.515137, 28.355137> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287900, 0.356832, -0.888698,
		-0.955781, 0.048959, -0.289974,
		-0.059962, 0.932885, 0.355149,
		26.785395, 31.795002, 28.461681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.265251, 31.606754, 27.954062>,  <26.827368, 31.141983, 28.213078>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.265251, 31.606754, 27.954062> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.592384, 31.809021, 28.063934>,  <26.788664, 31.930382, 28.129858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.592384, 31.809021, 28.063934>,  <26.265251, 31.606754, 27.954062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.592384, 31.809021, 28.063934> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046593, 0.417578, -0.907446,
		-0.573566, 0.754937, 0.317949,
		0.817833, 0.505666, 0.274683,
		26.837734, 31.960720, 28.146339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.673470, 32.019566, 27.748646>,  <26.265251, 31.606754, 27.954062>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.673470, 32.019566, 27.748646> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.563648, 31.720657, 27.506584>,  <25.497755, 31.541313, 27.361347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.563648, 31.720657, 27.506584>,  <25.673470, 32.019566, 27.748646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.563648, 31.720657, 27.506584> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393287, -0.487025, 0.779829,
		-0.877466, 0.452104, -0.160176,
		-0.274554, -0.747268, -0.605154,
		25.481281, 31.496477, 27.325039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.110382, 31.793098, 28.038399>,  <25.673470, 32.019566, 27.748646>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.110382, 31.793098, 28.038399> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.138012, 31.491940, 27.776596>,  <25.154591, 31.311245, 27.619514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.138012, 31.491940, 27.776596>,  <25.110382, 31.793098, 28.038399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.138012, 31.491940, 27.776596> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488622, -0.597523, 0.635779,
		-0.869757, 0.275889, -0.409155,
		0.069075, -0.752895, -0.654505,
		25.158735, 31.266071, 27.580244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.441116, 31.502716, 27.845720>,  <25.110382, 31.793098, 28.038399>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.441116, 31.502716, 27.845720> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<24.687380, 31.193687, 27.783619>,  <24.835138, 31.008270, 27.746359>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<24.687380, 31.193687, 27.783619>,  <24.441116, 31.502716, 27.845720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.687380, 31.193687, 27.783619> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459237, -0.511860, 0.726017,
		-0.640366, -0.375680, -0.669922,
		0.615656, -0.772570, -0.155252,
		24.872076, 30.961916, 27.737043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.026684, 30.881151, 27.666372>,  <24.441116, 31.502716, 27.845720>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.026684, 30.881151, 27.666372> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<24.380184, 30.745289, 27.795132>,  <24.592285, 30.663771, 27.872387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<24.380184, 30.745289, 27.795132>,  <24.026684, 30.881151, 27.666372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.380184, 30.745289, 27.795132> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467328, -0.604869, 0.644778,
		-0.024297, -0.720255, -0.693284,
		0.883750, -0.339657, 0.321898,
		24.645309, 30.643391, 27.891701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.996328, 30.057220, 27.635683>,  <24.026684, 30.881151, 27.666372>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.996328, 30.057220, 27.635683> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<24.293293, 30.147797, 27.887890>,  <24.471472, 30.202143, 28.039213>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<24.293293, 30.147797, 27.887890>,  <23.996328, 30.057220, 27.635683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.293293, 30.147797, 27.887890> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401444, -0.603102, 0.689282,
		0.536348, -0.764848, -0.356845,
		0.742410, 0.226442, 0.630517,
		24.516016, 30.215729, 28.077045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.229532, 29.457411, 27.915451>,  <23.996328, 30.057220, 27.635683>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.229532, 29.457411, 27.915451> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<24.375027, 29.729698, 28.169796>,  <24.462324, 29.893070, 28.322403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<24.375027, 29.729698, 28.169796>,  <24.229532, 29.457411, 27.915451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.375027, 29.729698, 28.169796> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291002, -0.565415, 0.771766,
		0.884880, -0.465757, -0.007573,
		0.363738, 0.680717, 0.635861,
		24.484148, 29.933912, 28.360554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.680750, 29.066565, 28.281765>,  <24.229532, 29.457411, 27.915451>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.680750, 29.066565, 28.281765> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<24.586119, 29.388241, 28.499870>,  <24.529341, 29.581245, 28.630733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<24.586119, 29.388241, 28.499870>,  <24.680750, 29.066565, 28.281765>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.586119, 29.388241, 28.499870> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202862, -0.589708, 0.781723,
		0.950199, 0.074325, 0.302650,
		-0.236577, 0.804189, 0.545263,
		24.515146, 29.629498, 28.663448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.981974, 28.924271, 28.910458>,  <24.680750, 29.066565, 28.281765>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.981974, 28.924271, 28.910458> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<24.699467, 29.192768, 29.000458>,  <24.529963, 29.353867, 29.054457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<24.699467, 29.192768, 29.000458>,  <24.981974, 28.924271, 28.910458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.699467, 29.192768, 29.000458> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343545, -0.602848, 0.720105,
		0.619004, 0.431288, 0.656372,
		-0.706265, 0.671241, 0.224998,
		24.487587, 29.394140, 29.067957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.044258, 28.978420, 29.671410>,  <24.981974, 28.924271, 28.910458>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.044258, 28.978420, 29.671410> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<24.679049, 29.110355, 29.575413>,  <24.459923, 29.189516, 29.517815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<24.679049, 29.110355, 29.575413>,  <25.044258, 28.978420, 29.671410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.679049, 29.110355, 29.575413> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375410, -0.449322, 0.810665,
		0.159553, 0.830252, 0.534065,
		-0.913023, 0.329837, -0.239994,
		24.405142, 29.209307, 29.503414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.786148, 29.201036, 30.351860>,  <25.044258, 28.978420, 29.671410>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.786148, 29.201036, 30.351860> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<24.463921, 29.181641, 30.115654>,  <24.270584, 29.170002, 29.973930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<24.463921, 29.181641, 30.115654>,  <24.786148, 29.201036, 30.351860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.463921, 29.181641, 30.115654> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543150, -0.337799, 0.768688,
		-0.236750, 0.939968, 0.245782,
		-0.805567, -0.048491, -0.590517,
		24.222250, 29.167093, 29.938499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.217691, 29.464163, 30.708464>,  <24.786148, 29.201036, 30.351860>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.217691, 29.464163, 30.708464> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<24.042110, 29.229053, 30.436626>,  <23.936762, 29.087988, 30.273523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<24.042110, 29.229053, 30.436626>,  <24.217691, 29.464163, 30.708464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.042110, 29.229053, 30.436626> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532323, -0.439205, 0.723693,
		-0.723847, 0.679428, -0.120095,
		-0.438951, -0.587772, -0.679592,
		23.910425, 29.052721, 30.232748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.439926, 29.524977, 30.925938>,  <24.217691, 29.464163, 30.708464>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.439926, 29.524977, 30.925938> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.508287, 29.195000, 30.710434>,  <23.549305, 28.997013, 30.581133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.508287, 29.195000, 30.710434>,  <23.439926, 29.524977, 30.925938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.508287, 29.195000, 30.710434> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522142, -0.539538, 0.660505,
		-0.835560, 0.168426, -0.522946,
		0.170903, -0.824944, -0.538758,
		23.559559, 28.947517, 30.548807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.735807, 29.117525, 30.855057>,  <23.439926, 29.524977, 30.925938>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.735807, 29.117525, 30.855057> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.058516, 28.887608, 30.800301>,  <23.252140, 28.749657, 30.767447>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.058516, 28.887608, 30.800301>,  <22.735807, 29.117525, 30.855057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.058516, 28.887608, 30.800301> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319412, -0.619167, 0.717362,
		-0.497090, -0.535022, -0.683120,
		0.806770, -0.574790, -0.136890,
		23.300547, 28.715170, 30.759233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.477999, 28.353226, 30.652428>,  <22.735807, 29.117525, 30.855057>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.477999, 28.353226, 30.652428> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.866163, 28.312176, 30.739857>,  <23.099062, 28.287546, 30.792315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.866163, 28.312176, 30.739857>,  <22.477999, 28.353226, 30.652428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.866163, 28.312176, 30.739857> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151441, -0.963700, 0.219884,
		0.188073, -0.246478, -0.950725,
		0.970409, -0.102624, 0.218573,
		23.157286, 28.281389, 30.805429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.480864, 24.130177, 30.904566> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.210087, 24.424572, 30.907898>,  <31.047621, 24.601210, 30.909897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.210087, 24.424572, 30.907898>,  <31.480864, 24.130177, 30.904566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.210087, 24.424572, 30.907898> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422822, 0.398112, -0.814081,
		-0.602472, -0.547563, -0.580691,
		-0.676941, 0.735991, 0.008329,
		31.007004, 24.645369, 30.910397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.170156, 24.227558, 30.172333>,  <31.480864, 24.130177, 30.904566>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.170156, 24.227558, 30.172333> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.122253, 24.568001, 30.376793>,  <31.093512, 24.772266, 30.499468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.122253, 24.568001, 30.376793>,  <31.170156, 24.227558, 30.172333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.122253, 24.568001, 30.376793> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446475, 0.506025, -0.737969,
		-0.886745, 0.139836, -0.440600,
		-0.119760, 0.851108, 0.511149,
		31.086325, 24.823334, 30.530138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.757200, 24.722260, 29.733604>,  <31.170156, 24.227558, 30.172333>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.757200, 24.722260, 29.733604> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.952629, 24.956841, 29.992020>,  <31.069887, 25.097589, 30.147070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.952629, 24.956841, 29.992020>,  <30.757200, 24.722260, 29.733604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.952629, 24.956841, 29.992020> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370439, 0.530961, -0.762138,
		-0.789981, 0.611679, 0.042168,
		0.488574, 0.586455, 0.646039,
		31.099201, 25.132776, 30.185831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.528467, 25.339540, 29.503435>,  <30.757200, 24.722260, 29.733604>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.528467, 25.339540, 29.503435> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.855644, 25.437332, 29.711742>,  <31.051950, 25.496008, 29.836727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.855644, 25.437332, 29.711742>,  <30.528467, 25.339540, 29.503435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.855644, 25.437332, 29.711742> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324543, 0.551335, -0.768571,
		-0.475018, 0.797658, 0.371616,
		0.817942, 0.244480, 0.520769,
		31.101027, 25.510675, 29.867973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.537756, 26.025127, 29.369320>,  <30.528467, 25.339540, 29.503435>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.537756, 26.025127, 29.369320> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.915485, 25.943398, 29.472477>,  <31.142122, 25.894360, 29.534370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.915485, 25.943398, 29.472477>,  <30.537756, 26.025127, 29.369320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.915485, 25.943398, 29.472477> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329019, 0.591086, -0.736454,
		-0.001962, 0.780301, 0.625401,
		0.944321, -0.204324, 0.257893,
		31.198782, 25.882101, 29.549845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.830215, 26.630901, 29.538443>,  <30.537756, 26.025127, 29.369320>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.830215, 26.630901, 29.538443> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.128849, 26.390678, 29.423939>,  <31.308029, 26.246544, 29.355236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.128849, 26.390678, 29.423939>,  <30.830215, 26.630901, 29.538443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.128849, 26.390678, 29.423939> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367065, 0.730693, -0.575632,
		0.554866, 0.324682, 0.765967,
		0.746584, -0.600558, -0.286257,
		31.352823, 26.210510, 29.338062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.436049, 27.043524, 29.339819>,  <30.830215, 26.630901, 29.538443>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.436049, 27.043524, 29.339819> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.567371, 26.700066, 29.182369>,  <31.646166, 26.493990, 29.087900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.567371, 26.700066, 29.182369>,  <31.436049, 27.043524, 29.339819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.567371, 26.700066, 29.182369> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330333, 0.494780, -0.803787,
		0.884926, 0.133861, 0.446079,
		0.328307, -0.858647, -0.393625,
		31.665863, 26.442472, 29.064281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.083485, 27.077185, 29.225164>,  <31.436049, 27.043524, 29.339819>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.083485, 27.077185, 29.225164> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.027443, 26.786682, 28.955967>,  <31.993816, 26.612381, 28.794449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.027443, 26.786682, 28.955967>,  <32.083485, 27.077185, 29.225164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.027443, 26.786682, 28.955967> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215189, 0.641116, -0.736658,
		0.966470, -0.248032, 0.066458,
		-0.140107, -0.726258, -0.672993,
		31.985411, 26.568804, 28.754068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.661083, 27.086191, 28.767361>,  <32.083485, 27.077185, 29.225164>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.661083, 27.086191, 28.767361> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.388103, 26.868729, 28.571934>,  <32.224316, 26.738251, 28.454678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.388103, 26.868729, 28.571934>,  <32.661083, 27.086191, 28.767361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.388103, 26.868729, 28.571934> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089085, 0.601569, -0.793838,
		0.725480, -0.585281, -0.362112,
		-0.682454, -0.543654, -0.488566,
		32.183369, 26.705631, 28.425364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.995598, 26.938200, 28.133760>,  <32.661083, 27.086191, 28.767361>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.995598, 26.938200, 28.133760> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.605579, 26.866798, 28.080963>,  <32.371567, 26.823957, 28.049284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.605579, 26.866798, 28.080963>,  <32.995598, 26.938200, 28.133760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.605579, 26.866798, 28.080963> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002511, 0.603387, -0.797444,
		0.221990, -0.777213, -0.588778,
		-0.975046, -0.178503, -0.131995,
		32.313065, 26.813248, 28.041365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.880920, 26.654966, 27.457312>,  <32.995598, 26.938200, 28.133760>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.880920, 26.654966, 27.457312> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.546852, 26.831223, 27.588966>,  <32.346413, 26.936975, 27.667959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.546852, 26.831223, 27.588966>,  <32.880920, 26.654966, 27.457312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.546852, 26.831223, 27.588966> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020690, 0.623185, -0.781801,
		-0.549606, -0.646125, -0.529581,
		-0.835168, 0.440639, 0.329138,
		32.296303, 26.963415, 27.687708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.571537, 26.784634, 26.805819>,  <32.880920, 26.654966, 27.457312>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.571537, 26.784634, 26.805819> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.356586, 27.019169, 27.048283>,  <32.227615, 27.159891, 27.193760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.356586, 27.019169, 27.048283>,  <32.571537, 26.784634, 26.805819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.356586, 27.019169, 27.048283> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185207, 0.619162, -0.763110,
		-0.822753, -0.522344, -0.224131,
		-0.537379, 0.586340, 0.606159,
		32.195374, 27.195070, 27.230131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.118267, 27.088140, 26.364424>,  <32.571537, 26.784634, 26.805819>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.118267, 27.088140, 26.364424> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.120674, 27.323357, 26.687946>,  <32.122116, 27.464487, 26.882061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.120674, 27.323357, 26.687946>,  <32.118267, 27.088140, 26.364424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.120674, 27.323357, 26.687946> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040138, 0.808312, -0.587384,
		-0.999176, -0.028931, 0.028464,
		0.006014, 0.588043, 0.808808,
		32.122478, 27.499769, 26.930588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.556950, 27.523138, 26.308878>,  <32.118267, 27.088140, 26.364424>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.556950, 27.523138, 26.308878> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.831114, 27.703938, 26.537231>,  <31.995613, 27.812416, 26.674244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.831114, 27.703938, 26.537231>,  <31.556950, 27.523138, 26.308878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.831114, 27.703938, 26.537231> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022860, 0.796985, -0.603567,
		-0.727797, 0.400641, 0.556595,
		0.685412, 0.451998, 0.570884,
		32.036736, 27.839537, 26.708496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.819382, 27.838837, 26.391590>,  <31.556950, 27.523138, 26.308878>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.819382, 27.838837, 26.391590> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.491976, 27.836975, 26.161804>,  <30.295532, 27.835857, 26.023933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.491976, 27.836975, 26.161804>,  <30.819382, 27.838837, 26.391590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.491976, 27.836975, 26.161804> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521743, -0.412509, 0.746740,
		-0.240447, 0.910942, 0.335218,
		-0.818517, -0.004654, -0.574464,
		30.246420, 27.835579, 25.989466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.299904, 28.227879, 26.724480>,  <30.819382, 27.838837, 26.391590>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.299904, 28.227879, 26.724480> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.137312, 27.957996, 26.478050>,  <30.039757, 27.796068, 26.330193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.137312, 27.957996, 26.478050>,  <30.299904, 28.227879, 26.724480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.137312, 27.957996, 26.478050> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561455, -0.347495, 0.751009,
		-0.720792, 0.651170, -0.237565,
		-0.406482, -0.674704, -0.616074,
		30.015368, 27.755585, 26.293228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.483667, 28.198074, 26.915672>,  <30.299904, 28.227879, 26.724480>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.483667, 28.198074, 26.915672> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.590837, 27.862396, 26.726372>,  <29.655140, 27.660990, 26.612791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.590837, 27.862396, 26.726372>,  <29.483667, 28.198074, 26.915672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.590837, 27.862396, 26.726372> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535906, -0.538018, 0.650647,
		-0.800637, 0.079293, -0.593879,
		0.267926, -0.839195, -0.473251,
		29.671215, 27.610638, 26.584396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.952568, 27.800953, 27.032070>,  <29.483667, 28.198074, 26.915672>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.952568, 27.800953, 27.032070> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.203033, 27.520966, 26.894688>,  <29.353313, 27.352972, 26.812258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.203033, 27.520966, 26.894688>,  <28.952568, 27.800953, 27.032070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.203033, 27.520966, 26.894688> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466995, -0.689440, 0.553704,
		-0.624366, -0.186319, -0.758586,
		0.626165, -0.699970, -0.343453,
		29.390882, 27.310974, 26.791651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.546101, 27.292662, 26.751608>,  <28.952568, 27.800953, 27.032070>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.546101, 27.292662, 26.751608> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.900293, 27.117355, 26.813377>,  <29.112808, 27.012173, 26.850439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.900293, 27.117355, 26.813377>,  <28.546101, 27.292662, 26.751608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.900293, 27.117355, 26.813377> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435588, -0.667156, 0.604289,
		-0.161815, -0.602352, -0.781658,
		0.885482, -0.438264, 0.154421,
		29.165937, 26.985876, 26.859703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.430532, 26.572969, 26.594091>,  <28.546101, 27.292662, 26.751608>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.430532, 26.572969, 26.594091> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.747519, 26.579884, 26.837959>,  <28.937710, 26.584032, 26.984280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.747519, 26.579884, 26.837959>,  <28.430532, 26.572969, 26.594091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.747519, 26.579884, 26.837959> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374631, -0.775014, 0.508925,
		0.481300, -0.631707, -0.607697,
		0.792466, 0.017283, 0.609672,
		28.985258, 26.585068, 27.020861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.594851, 25.835985, 26.780832>,  <28.430532, 26.572969, 26.594091>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.594851, 25.835985, 26.780832> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.776722, 26.052216, 27.063969>,  <28.885845, 26.181953, 27.233850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.776722, 26.052216, 27.063969>,  <28.594851, 25.835985, 26.780832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.776722, 26.052216, 27.063969> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190641, -0.717256, 0.670224,
		0.870013, -0.439681, -0.223066,
		0.454680, 0.540578, 0.707843,
		28.913126, 26.214388, 27.276321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.981129, 25.351061, 27.134075>,  <28.594851, 25.835985, 26.780832>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.981129, 25.351061, 27.134075> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.984877, 25.667431, 27.378811>,  <28.987125, 25.857254, 27.525652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.984877, 25.667431, 27.378811>,  <28.981129, 25.351061, 27.134075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.984877, 25.667431, 27.378811> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283148, -0.584726, 0.760212,
		0.959031, -0.180364, 0.218470,
		0.009370, 0.790926, 0.611840,
		28.987688, 25.904709, 27.562363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.504398, 25.185160, 27.775885>,  <28.981129, 25.351061, 27.134075>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.504398, 25.185160, 27.775885> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.220169, 25.449623, 27.872181>,  <29.049631, 25.608301, 27.929958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.220169, 25.449623, 27.872181>,  <29.504398, 25.185160, 27.775885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.220169, 25.449623, 27.872181> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244898, -0.553142, 0.796278,
		0.659628, 0.506858, 0.554965,
		-0.710574, 0.661157, 0.240740,
		29.006996, 25.647970, 27.944403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.619986, 25.336784, 28.461897>,  <29.504398, 25.185160, 27.775885>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.619986, 25.336784, 28.461897> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.241848, 25.452492, 28.401703>,  <29.014965, 25.521917, 28.365587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.241848, 25.452492, 28.401703>,  <29.619986, 25.336784, 28.461897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.241848, 25.452492, 28.401703> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277110, -0.469495, 0.838322,
		0.171850, 0.834204, 0.523995,
		-0.945345, 0.289270, -0.150484,
		28.958244, 25.539272, 28.356558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.341560, 25.675327, 29.124329>,  <29.619986, 25.336784, 28.461897>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.341560, 25.675327, 29.124329> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.054735, 25.511486, 28.898746>,  <28.882641, 25.413181, 28.763397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.054735, 25.511486, 28.898746>,  <29.341560, 25.675327, 29.124329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.054735, 25.511486, 28.898746> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411497, -0.404280, 0.816840,
		-0.562577, 0.817792, 0.121343,
		-0.717062, -0.409603, -0.563957,
		28.839617, 25.388605, 28.729559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.919861, 25.733356, 29.566504>,  <29.341560, 25.675327, 29.124329>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.919861, 25.733356, 29.566504> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.741028, 25.486156, 29.307831>,  <28.633728, 25.337837, 29.152628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.741028, 25.486156, 29.307831>,  <28.919861, 25.733356, 29.566504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.741028, 25.486156, 29.307831> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535870, -0.393818, 0.746826,
		-0.716213, 0.680429, -0.155098,
		-0.447082, -0.617999, -0.646680,
		28.606903, 25.300756, 29.113827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.236263, 25.820150, 29.765734>,  <28.919861, 25.733356, 29.566504>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.236263, 25.820150, 29.765734> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.261536, 25.487576, 29.544926>,  <28.276699, 25.288031, 29.412441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.261536, 25.487576, 29.544926>,  <28.236263, 25.820150, 29.765734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.261536, 25.487576, 29.544926> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489017, -0.507962, 0.709110,
		-0.869983, 0.225146, -0.438679,
		0.063179, -0.831435, -0.552018,
		28.280489, 25.238146, 29.379320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.598574, 25.470930, 29.748882>,  <28.236263, 25.820150, 29.765734>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.598574, 25.470930, 29.748882> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.867088, 25.185619, 29.668270>,  <28.028196, 25.014433, 29.619902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.867088, 25.185619, 29.668270>,  <27.598574, 25.470930, 29.748882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.867088, 25.185619, 29.668270> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527104, -0.650556, 0.546753,
		-0.521092, -0.260800, -0.812679,
		0.671286, -0.713275, -0.201531,
		28.068474, 24.971638, 29.607811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.951309, 25.612667, 29.347467>,  <27.598574, 25.470930, 29.748882>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.951309, 25.612667, 29.347467> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.587046, 25.754837, 29.431725>,  <26.368486, 25.840139, 29.482279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.587046, 25.754837, 29.431725>,  <26.951309, 25.612667, 29.347467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.587046, 25.754837, 29.431725> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102721, 0.688607, -0.717823,
		-0.400183, -0.632055, -0.663596,
		-0.910660, 0.355426, 0.210643,
		26.313848, 25.861465, 29.494917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.550438, 25.523937, 28.700041>,  <26.951309, 25.612667, 29.347467>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.550438, 25.523937, 28.700041> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.391724, 25.800526, 28.941513>,  <26.296495, 25.966478, 29.086395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.391724, 25.800526, 28.941513>,  <26.550438, 25.523937, 28.700041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.391724, 25.800526, 28.941513> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045309, 0.671617, -0.739511,
		-0.916793, -0.266075, -0.297818,
		-0.396785, 0.691473, 0.603678,
		26.272688, 26.007967, 29.122616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.858755, 25.694305, 28.352375>,  <26.550438, 25.523937, 28.700041>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.858755, 25.694305, 28.352375> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.904119, 26.019558, 28.580746>,  <25.931337, 26.214708, 28.717768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.904119, 26.019558, 28.580746>,  <25.858755, 25.694305, 28.352375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.904119, 26.019558, 28.580746> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063113, 0.567579, -0.820896,
		-0.991541, 0.129132, 0.013051,
		0.113411, 0.813129, 0.570928,
		25.938143, 26.263496, 28.752024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.362030, 26.228399, 28.243502>,  <25.858755, 25.694305, 28.352375>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.362030, 26.228399, 28.243502> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.663578, 26.439693, 28.399784>,  <25.844507, 26.566469, 28.493553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.663578, 26.439693, 28.399784>,  <25.362030, 26.228399, 28.243502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.663578, 26.439693, 28.399784> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000933, 0.593798, -0.804614,
		-0.657024, 0.606938, 0.447153,
		0.753869, 0.528233, 0.390706,
		25.889738, 26.598164, 28.516996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.344692, 26.798004, 27.881977>,  <25.362030, 26.228399, 28.243502>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.344692, 26.798004, 27.881977> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.705566, 26.847450, 28.047279>,  <25.922091, 26.877117, 28.146461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.705566, 26.847450, 28.047279>,  <25.344692, 26.798004, 27.881977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.705566, 26.847450, 28.047279> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273365, 0.577250, -0.769451,
		-0.333667, 0.807157, 0.486995,
		0.902185, 0.123614, 0.413257,
		25.976221, 26.884535, 28.171257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.508911, 27.540855, 27.734419>,  <25.344692, 26.798004, 27.881977>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.508911, 27.540855, 27.734419> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.855831, 27.366570, 27.830700>,  <26.063984, 27.261997, 27.888470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.855831, 27.366570, 27.830700>,  <25.508911, 27.540855, 27.734419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.855831, 27.366570, 27.830700> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429452, 0.410438, -0.804432,
		0.251711, 0.801057, 0.543093,
		0.867302, -0.435717, 0.240704,
		26.116022, 27.235855, 27.902910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.907330, 28.041710, 27.784773>,  <25.508911, 27.540855, 27.734419>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.907330, 28.041710, 27.784773> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.158585, 27.735222, 27.730583>,  <26.309338, 27.551329, 27.698069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.158585, 27.735222, 27.730583>,  <25.907330, 28.041710, 27.784773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.158585, 27.735222, 27.730583> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518982, 0.542282, -0.660748,
		0.579743, 0.344730, 0.738281,
		0.628136, -0.766219, -0.135475,
		26.347025, 27.505356, 27.689941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.545179, 28.399393, 27.829439>,  <25.907330, 28.041710, 27.784773>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.545179, 28.399393, 27.829439> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.606749, 28.066071, 27.617058>,  <26.643690, 27.866077, 27.489630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.606749, 28.066071, 27.617058>,  <26.545179, 28.399393, 27.829439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.606749, 28.066071, 27.617058> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544003, 0.520051, -0.658489,
		0.824844, -0.187482, 0.533369,
		0.153924, -0.833305, -0.530951,
		26.652925, 27.816078, 27.457773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.282560, 28.294159, 27.632360>,  <26.545179, 28.399393, 27.829439>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.282560, 28.294159, 27.632360> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.068909, 28.076508, 27.373554>,  <26.940718, 27.945917, 27.218271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.068909, 28.076508, 27.373554>,  <27.282560, 28.294159, 27.632360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.068909, 28.076508, 27.373554> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435919, 0.478477, -0.762256,
		0.724349, -0.689189, -0.018371,
		-0.534129, -0.544131, -0.647015,
		26.908670, 27.913269, 27.179449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.770742, 27.996477, 27.155437>,  <27.282560, 28.294159, 27.632360>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.770742, 27.996477, 27.155437> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.415691, 27.998272, 26.971222>,  <27.202662, 27.999348, 26.860693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.415691, 27.998272, 26.971222>,  <27.770742, 27.996477, 27.155437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.415691, 27.998272, 26.971222> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408529, 0.469369, -0.782813,
		0.212651, -0.882991, -0.418457,
		-0.887628, 0.004486, -0.460539,
		27.149403, 27.999617, 26.833059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.898222, 27.893353, 26.479393>,  <27.770742, 27.996477, 27.155437>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.898222, 27.893353, 26.479393> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.533018, 28.056530, 26.479496>,  <27.313896, 28.154436, 26.479557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.533018, 28.056530, 26.479496>,  <27.898222, 27.893353, 26.479393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.533018, 28.056530, 26.479496> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280138, 0.627427, -0.726538,
		-0.296547, -0.663263, -0.687126,
		-0.913007, 0.407943, 0.000257,
		27.259115, 28.178913, 26.479572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.714483, 27.802858, 25.804483>,  <27.898222, 27.893353, 26.479393>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.714483, 27.802858, 25.804483> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.492161, 28.096375, 25.960758>,  <27.358768, 28.272484, 26.054523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.492161, 28.096375, 25.960758>,  <27.714483, 27.802858, 25.804483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.492161, 28.096375, 25.960758> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276287, 0.606298, -0.745699,
		-0.784058, -0.306522, -0.539720,
		-0.555804, 0.733789, 0.390685,
		27.325420, 28.316511, 26.077963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.281206, 28.132610, 25.231396>,  <27.714483, 27.802858, 25.804483>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.281206, 28.132610, 25.231396> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.269251, 28.412827, 25.516590>,  <27.262077, 28.580956, 25.687706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.269251, 28.412827, 25.516590>,  <27.281206, 28.132610, 25.231396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.269251, 28.412827, 25.516590> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006346, 0.713424, -0.700704,
		-0.999533, -0.016418, -0.025768,
		-0.029888, 0.700541, 0.712987,
		27.260284, 28.622988, 25.730486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.789644, 28.469723, 24.981796>,  <27.281206, 28.132610, 25.231396>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.789644, 28.469723, 24.981796> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.987249, 28.708740, 25.234428>,  <27.105812, 28.852150, 25.386007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.987249, 28.708740, 25.234428>,  <26.789644, 28.469723, 24.981796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.987249, 28.708740, 25.234428> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006701, 0.723770, -0.690008,
		-0.869429, 0.345105, 0.353548,
		0.494013, 0.597544, 0.631580,
		27.135454, 28.888004, 25.423903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<40.543049, 27.679098, 29.410778> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.806030, 27.965286, 29.505314>,  <40.963818, 28.136999, 29.562035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.806030, 27.965286, 29.505314>,  <40.543049, 27.679098, 29.410778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.806030, 27.965286, 29.505314> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070473, 0.370670, -0.926087,
		-0.750192, 0.592205, 0.294119,
		0.657454, 0.715470, 0.236339,
		41.003265, 28.179928, 29.576216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.180798, 28.402922, 29.295073>,  <40.543049, 27.679098, 29.410778>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.180798, 28.402922, 29.295073> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.577934, 28.369217, 29.261204>,  <40.816216, 28.348995, 29.240883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.577934, 28.369217, 29.261204>,  <40.180798, 28.402922, 29.295073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.577934, 28.369217, 29.261204> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051011, 0.341861, -0.938365,
		0.108013, 0.935965, 0.335115,
		0.992840, -0.084261, -0.084670,
		40.875786, 28.343939, 29.235804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.351665, 29.004843, 29.133932>,  <40.180798, 28.402922, 29.295073>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.351665, 29.004843, 29.133932> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.685696, 28.813282, 29.025631>,  <40.886112, 28.698345, 28.960649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.685696, 28.813282, 29.025631>,  <40.351665, 29.004843, 29.133932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.685696, 28.813282, 29.025631> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024563, 0.459206, -0.887990,
		0.549592, 0.748187, 0.371707,
		0.835072, -0.478902, -0.270753,
		40.936218, 28.669611, 28.944405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.736210, 29.533932, 28.849726>,  <40.351665, 29.004843, 29.133932>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.736210, 29.533932, 28.849726> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.862568, 29.177544, 28.719257>,  <40.938381, 28.963711, 28.640976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.862568, 29.177544, 28.719257>,  <40.736210, 29.533932, 28.849726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.862568, 29.177544, 28.719257> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050023, 0.327655, -0.943472,
		0.947475, 0.314352, 0.058935,
		0.315893, -0.890969, -0.326170,
		40.957336, 28.910254, 28.621407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.252441, 29.704676, 28.298346>,  <40.736210, 29.533932, 28.849726>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.252441, 29.704676, 28.298346> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.148952, 29.326050, 28.221321>,  <41.086861, 29.098875, 28.175106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.148952, 29.326050, 28.221321>,  <41.252441, 29.704676, 28.298346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.148952, 29.326050, 28.221321> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045482, 0.211067, -0.976413,
		0.964881, -0.243859, -0.097659,
		-0.258720, -0.946564, -0.192563,
		41.071335, 29.042080, 28.163551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.542107, 29.564445, 27.622387>,  <41.252441, 29.704676, 28.298346>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.542107, 29.564445, 27.622387> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.262913, 29.280109, 27.657070>,  <41.095394, 29.109507, 27.677879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.262913, 29.280109, 27.657070>,  <41.542107, 29.564445, 27.622387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.262913, 29.280109, 27.657070> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196318, 0.073499, -0.977782,
		0.688676, -0.699500, -0.190853,
		-0.697986, -0.710842, 0.086707,
		41.053516, 29.066856, 27.683083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.647938, 29.208258, 27.065067>,  <41.542107, 29.564445, 27.622387>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.647938, 29.208258, 27.065067> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.279896, 29.086296, 27.163410>,  <41.059071, 29.013119, 27.222416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.279896, 29.086296, 27.163410>,  <41.647938, 29.208258, 27.065067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.279896, 29.086296, 27.163410> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237260, -0.065565, -0.969231,
		0.311644, -0.950123, -0.012015,
		-0.920101, -0.304906, 0.245859,
		41.003864, 28.994823, 27.237167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.420074, 28.702585, 26.612291>,  <41.647938, 29.208258, 27.065067>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.420074, 28.702585, 26.612291> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.074642, 28.846920, 26.753159>,  <40.867382, 28.933521, 26.837679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.074642, 28.846920, 26.753159>,  <41.420074, 28.702585, 26.612291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.074642, 28.846920, 26.753159> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299508, 0.194766, -0.934003,
		-0.405616, -0.912064, -0.060122,
		-0.863580, 0.360840, 0.352170,
		40.815567, 28.955172, 26.858810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.783421, 28.475262, 26.110523>,  <41.420074, 28.702585, 26.612291>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.783421, 28.475262, 26.110523> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.590351, 28.748154, 26.330193>,  <40.474510, 28.911888, 26.461994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.590351, 28.748154, 26.330193>,  <40.783421, 28.475262, 26.110523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.590351, 28.748154, 26.330193> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355883, 0.420166, -0.834750,
		-0.800236, -0.598350, 0.039993,
		-0.482670, 0.682230, 0.549174,
		40.445549, 28.952822, 26.494946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.112988, 28.559502, 25.824121>,  <40.783421, 28.475262, 26.110523>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.112988, 28.559502, 25.824121> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.144562, 28.909107, 26.015900>,  <40.163506, 29.118870, 26.130966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.144562, 28.909107, 26.015900>,  <40.112988, 28.559502, 25.824121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.144562, 28.909107, 26.015900> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596162, 0.426858, -0.679988,
		-0.798974, -0.232150, 0.554749,
		0.078940, 0.874013, 0.479447,
		40.168243, 29.171310, 26.159735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.480396, 28.803852, 25.938515>,  <40.112988, 28.559502, 25.824121>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.480396, 28.803852, 25.938515> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.692272, 29.143127, 25.939827>,  <39.819397, 29.346693, 25.940615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.692272, 29.143127, 25.939827>,  <39.480396, 28.803852, 25.938515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.692272, 29.143127, 25.939827> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639051, 0.401619, -0.655985,
		-0.557716, 0.345369, 0.754767,
		0.529686, 0.848188, 0.003282,
		39.851177, 29.397583, 25.940811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.957237, 29.389971, 25.824554>,  <39.480396, 28.803852, 25.938515>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.957237, 29.389971, 25.824554> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.300037, 29.588932, 25.770672>,  <39.505718, 29.708309, 25.738342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.300037, 29.588932, 25.770672>,  <38.957237, 29.389971, 25.824554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.300037, 29.588932, 25.770672> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479413, 0.673695, -0.562404,
		-0.188989, 0.546559, 0.815816,
		0.856998, 0.497401, -0.134707,
		39.557137, 29.738152, 25.730259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.864147, 30.151897, 25.932079>,  <38.957237, 29.389971, 25.824554>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.864147, 30.151897, 25.932079> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.195068, 30.109413, 25.711430>,  <39.393620, 30.083923, 25.579041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.195068, 30.109413, 25.711430>,  <38.864147, 30.151897, 25.932079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.195068, 30.109413, 25.711430> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298840, 0.748278, -0.592263,
		0.475673, 0.654828, 0.587312,
		0.827303, -0.106211, -0.551624,
		39.443260, 30.077549, 25.545942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.946201, 30.800657, 25.587626>,  <38.864147, 30.151897, 25.932079>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.946201, 30.800657, 25.587626> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.203480, 30.584370, 25.370766>,  <39.357845, 30.454597, 25.240650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.203480, 30.584370, 25.370766>,  <38.946201, 30.800657, 25.587626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.203480, 30.584370, 25.370766> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132076, 0.619082, -0.774141,
		0.754225, 0.569529, 0.326775,
		0.643196, -0.540717, -0.542148,
		39.396439, 30.422155, 25.208120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.606834, 31.216742, 25.317974>,  <38.946201, 30.800657, 25.587626>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.606834, 31.216742, 25.317974> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.541618, 30.895287, 25.089035>,  <39.502487, 30.702414, 24.951672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.541618, 30.895287, 25.089035>,  <39.606834, 31.216742, 25.317974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.541618, 30.895287, 25.089035> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231152, 0.532852, -0.814025,
		0.959159, -0.265019, 0.098886,
		-0.163041, -0.803638, -0.572350,
		39.492706, 30.654196, 24.917330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.129116, 31.242041, 24.718794>,  <39.606834, 31.216742, 25.317974>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.129116, 31.242041, 24.718794> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.837105, 30.994980, 24.601784>,  <39.661900, 30.846743, 24.531578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.837105, 30.994980, 24.601784>,  <40.129116, 31.242041, 24.718794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.837105, 30.994980, 24.601784> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027402, 0.454140, -0.890509,
		0.682871, -0.642077, -0.348458,
		-0.730025, -0.617651, -0.292525,
		39.618099, 30.809685, 24.514027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.280933, 31.072695, 24.049841>,  <40.129116, 31.242041, 24.718794>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.280933, 31.072695, 24.049841> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.888676, 31.006001, 24.090889>,  <39.653320, 30.965984, 24.115519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.888676, 31.006001, 24.090889>,  <40.280933, 31.072695, 24.049841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.888676, 31.006001, 24.090889> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171451, 0.478270, -0.861314,
		0.094531, -0.862239, -0.497601,
		-0.980647, -0.166735, 0.102621,
		39.594482, 30.955980, 24.121675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.146103, 30.650021, 23.469366>,  <40.280933, 31.072695, 24.049841>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.146103, 30.650021, 23.469366> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.762741, 30.751175, 23.522301>,  <39.532722, 30.811867, 23.554062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.762741, 30.751175, 23.522301>,  <40.146103, 30.650021, 23.469366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.762741, 30.751175, 23.522301> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012931, 0.424720, -0.905232,
		-0.285126, -0.869289, -0.403783,
		-0.958403, 0.252884, 0.132339,
		39.475220, 30.827040, 23.562002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.794888, 30.454826, 22.801348>,  <40.146103, 30.650021, 23.469366>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.794888, 30.454826, 22.801348> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.579071, 30.719685, 23.009369>,  <39.449581, 30.878599, 23.134182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.579071, 30.719685, 23.009369>,  <39.794888, 30.454826, 22.801348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.579071, 30.719685, 23.009369> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199457, 0.499571, -0.842998,
		-0.817992, -0.558562, -0.137470,
		-0.539543, 0.662146, 0.520054,
		39.417210, 30.918329, 23.165384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.077408, 30.558016, 22.472012>,  <39.794888, 30.454826, 22.801348>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.077408, 30.558016, 22.472012> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.161823, 30.892651, 22.674232>,  <39.212475, 31.093431, 22.795565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.161823, 30.892651, 22.674232>,  <39.077408, 30.558016, 22.472012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.161823, 30.892651, 22.674232> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296437, 0.547620, -0.782456,
		-0.931444, 0.015265, 0.363566,
		0.211040, 0.836588, 0.505552,
		39.225136, 31.143627, 22.825897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.555561, 31.065899, 22.305994>,  <39.077408, 30.558016, 22.472012>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.555561, 31.065899, 22.305994> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.859413, 31.287582, 22.442116>,  <39.041725, 31.420593, 22.523788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.859413, 31.287582, 22.442116>,  <38.555561, 31.065899, 22.305994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.859413, 31.287582, 22.442116> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173279, 0.676824, -0.715461,
		-0.626842, 0.484521, 0.610171,
		0.759634, 0.554211, 0.340304,
		39.087303, 31.453846, 22.544207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.059616, 31.556553, 22.616903>,  <38.555561, 31.065899, 22.305994>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.059616, 31.556553, 22.616903> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.665840, 31.620235, 22.587135>,  <37.429577, 31.658445, 22.569275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.665840, 31.620235, 22.587135>,  <38.059616, 31.556553, 22.616903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.665840, 31.620235, 22.587135> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096143, -0.133414, 0.986386,
		0.147108, 0.978190, 0.146644,
		-0.984437, 0.159204, -0.074420,
		37.370510, 31.667997, 22.564810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817284, 31.926151, 23.227806>,  <38.059616, 31.556553, 22.616903>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.817284, 31.926151, 23.227806> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.507694, 31.711861, 23.092773>,  <37.321941, 31.583286, 23.011755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.507694, 31.711861, 23.092773>,  <37.817284, 31.926151, 23.227806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.507694, 31.711861, 23.092773> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079215, -0.447014, 0.891013,
		-0.628243, 0.716362, 0.303540,
		-0.773974, -0.535727, -0.337580,
		37.275501, 31.551142, 22.991499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387791, 32.043888, 23.720259>,  <37.817284, 31.926151, 23.227806>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387791, 32.043888, 23.720259> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.215408, 31.723190, 23.554619>,  <37.111977, 31.530771, 23.455235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.215408, 31.723190, 23.554619>,  <37.387791, 32.043888, 23.720259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.215408, 31.723190, 23.554619> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305681, -0.302061, 0.902950,
		-0.849019, 0.515718, -0.114902,
		-0.430960, -0.801745, -0.414101,
		37.086121, 31.482666, 23.430389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.831596, 31.999825, 24.117275>,  <37.387791, 32.043888, 23.720259>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.831596, 31.999825, 24.117275> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.840473, 31.646358, 23.930237>,  <36.845798, 31.434278, 23.818014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.840473, 31.646358, 23.930237>,  <36.831596, 31.999825, 24.117275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.840473, 31.646358, 23.930237> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383957, -0.439376, 0.812112,
		-0.923084, 0.161516, -0.349039,
		0.022190, -0.883664, -0.467596,
		36.847130, 31.381260, 23.789957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.089951, 31.651379, 24.161165>,  <36.831596, 31.999825, 24.117275>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.089951, 31.651379, 24.161165> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.374241, 31.376125, 24.102737>,  <36.544815, 31.210974, 24.067680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.374241, 31.376125, 24.102737>,  <36.089951, 31.651379, 24.161165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.374241, 31.376125, 24.102737> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325868, -0.506075, 0.798560,
		-0.623439, -0.519959, -0.583923,
		0.710728, -0.688135, -0.146069,
		36.587460, 31.169685, 24.058918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.798836, 31.072130, 24.371767>,  <36.089951, 31.651379, 24.161165>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.798836, 31.072130, 24.371767> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.184261, 30.965237, 24.376385>,  <36.415516, 30.901100, 24.379154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.184261, 30.965237, 24.376385>,  <35.798836, 31.072130, 24.371767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.184261, 30.965237, 24.376385> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184483, -0.632696, 0.752105,
		-0.193685, -0.726830, -0.658942,
		0.963562, -0.267235, 0.011544,
		36.473331, 30.885065, 24.379848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.771259, 30.409492, 24.589293>,  <35.798836, 31.072130, 24.371767>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.771259, 30.409492, 24.589293> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.155285, 30.498795, 24.656738>,  <36.385700, 30.552376, 24.697206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.155285, 30.498795, 24.656738>,  <35.771259, 30.409492, 24.589293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.155285, 30.498795, 24.656738> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036968, -0.698631, 0.714527,
		0.277322, -0.679759, -0.678985,
		0.960066, 0.223255, 0.168616,
		36.443306, 30.565771, 24.707323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807365, 29.732285, 24.804363>,  <35.771259, 30.409492, 24.589293>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.807365, 29.732285, 24.804363> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.130692, 29.941757, 24.911976>,  <36.324688, 30.067440, 24.976543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.130692, 29.941757, 24.911976>,  <35.807365, 29.732285, 24.804363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.130692, 29.941757, 24.911976> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124295, -0.598451, 0.791459,
		0.575475, -0.606312, -0.548830,
		0.808319, 0.523681, 0.269032,
		36.373188, 30.098862, 24.992685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.343563, 29.238224, 25.091967>,  <35.807365, 29.732285, 24.804363>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.343563, 29.238224, 25.091967> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.436928, 29.588005, 25.262074>,  <36.492947, 29.797874, 25.364138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.436928, 29.588005, 25.262074>,  <36.343563, 29.238224, 25.091967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.436928, 29.588005, 25.262074> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138811, -0.462834, 0.875509,
		0.962420, -0.145318, -0.229412,
		0.233407, 0.874453, 0.425269,
		36.506950, 29.850342, 25.389654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.995190, 29.140497, 25.483042>,  <36.343563, 29.238224, 25.091967>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.995190, 29.140497, 25.483042> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.802727, 29.450127, 25.647625>,  <36.687248, 29.635904, 25.746374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.802727, 29.450127, 25.647625>,  <36.995190, 29.140497, 25.483042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.802727, 29.450127, 25.647625> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110599, -0.412007, 0.904444,
		0.869628, 0.480689, 0.112630,
		-0.481160, 0.774073, 0.411456,
		36.658379, 29.682348, 25.771061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461151, 29.402739, 26.022816>,  <36.995190, 29.140497, 25.483042>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.461151, 29.402739, 26.022816> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.097107, 29.534958, 26.122761>,  <36.878681, 29.614290, 26.182728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.097107, 29.534958, 26.122761>,  <37.461151, 29.402739, 26.022816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.097107, 29.534958, 26.122761> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110268, -0.388058, 0.915015,
		0.399420, 0.860318, 0.316728,
		-0.910113, 0.330550, 0.249863,
		36.824074, 29.634123, 26.197720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.550678, 29.764111, 26.599518>,  <37.461151, 29.402739, 26.022816>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.550678, 29.764111, 26.599518> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.156204, 29.699787, 26.615421>,  <36.919521, 29.661194, 26.624964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.156204, 29.699787, 26.615421>,  <37.550678, 29.764111, 26.599518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.156204, 29.699787, 26.615421> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077536, -0.236006, 0.968653,
		-0.146384, 0.958354, 0.245214,
		-0.986185, -0.160809, 0.039759,
		36.860348, 29.651545, 26.627350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316158, 30.131613, 27.156813>,  <37.550678, 29.764111, 26.599518>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.316158, 30.131613, 27.156813> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.038750, 29.851074, 27.090912>,  <36.872307, 29.682751, 27.051373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.038750, 29.851074, 27.090912>,  <37.316158, 30.131613, 27.156813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.038750, 29.851074, 27.090912> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022421, -0.249581, 0.968094,
		-0.720089, 0.667698, 0.188814,
		-0.693519, -0.701348, -0.164750,
		36.830692, 29.640671, 27.041487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.793629, 30.281160, 27.557676>,  <37.316158, 30.131613, 27.156813>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.793629, 30.281160, 27.557676> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.741875, 29.894154, 27.470806>,  <36.710823, 29.661949, 27.418684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.741875, 29.894154, 27.470806>,  <36.793629, 30.281160, 27.557676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.741875, 29.894154, 27.470806> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045674, -0.224601, 0.973380,
		-0.990541, 0.116026, 0.073251,
		-0.129390, -0.967519, -0.217177,
		36.703056, 29.603897, 27.405653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.509991, 30.009569, 28.150412>,  <36.793629, 30.281160, 27.557676>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.509991, 30.009569, 28.150412> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.609638, 29.667419, 27.968742>,  <36.669426, 29.462130, 27.859741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.609638, 29.667419, 27.968742>,  <36.509991, 30.009569, 28.150412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.609638, 29.667419, 27.968742> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241589, -0.399248, 0.884441,
		-0.937856, -0.330055, 0.107188,
		0.249120, -0.855374, -0.454175,
		36.684376, 29.410807, 27.832489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.210499, 29.619337, 28.603514>,  <36.509991, 30.009569, 28.150412>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.210499, 29.619337, 28.603514> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.465660, 29.386005, 28.402397>,  <36.618759, 29.246006, 28.281727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.465660, 29.386005, 28.402397>,  <36.210499, 29.619337, 28.603514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.465660, 29.386005, 28.402397> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107798, -0.578819, 0.808300,
		-0.762532, -0.569819, -0.306350,
		0.637907, -0.583331, -0.502793,
		36.657032, 29.211006, 28.251558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.062496, 28.922932, 28.828518>,  <36.210499, 29.619337, 28.603514>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.062496, 28.922932, 28.828518> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.428009, 28.949181, 28.668167>,  <36.647316, 28.964930, 28.571957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.428009, 28.949181, 28.668167>,  <36.062496, 28.922932, 28.828518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.428009, 28.949181, 28.668167> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395267, -0.371180, 0.840232,
		-0.093661, -0.926239, -0.365114,
		0.913779, 0.065621, -0.400876,
		36.702145, 28.968866, 28.547905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.402840, 28.318485, 28.831940>,  <36.062496, 28.922932, 28.828518>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.402840, 28.318485, 28.831940> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.723454, 28.555557, 28.800247>,  <36.915821, 28.697802, 28.781233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.723454, 28.555557, 28.800247>,  <36.402840, 28.318485, 28.831940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.723454, 28.555557, 28.800247> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480184, -0.559032, 0.675948,
		0.356330, -0.579838, -0.732678,
		0.801531, 0.592681, -0.079229,
		36.963913, 28.733362, 28.776478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006744, 27.813635, 28.927046>,  <36.402840, 28.318485, 28.831940>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.006744, 27.813635, 28.927046> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.190163, 28.165440, 28.977955>,  <37.300213, 28.376522, 29.008501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.190163, 28.165440, 28.977955>,  <37.006744, 27.813635, 28.927046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.190163, 28.165440, 28.977955> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659824, -0.432886, 0.614201,
		0.595291, -0.197659, -0.778819,
		0.458542, 0.879511, 0.127273,
		37.327724, 28.429293, 29.016136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.768734, 27.737629, 28.922432>,  <37.006744, 27.813635, 28.927046>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.768734, 27.737629, 28.922432> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.720516, 28.079613, 29.124229>,  <37.691586, 28.284803, 29.245308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.720516, 28.079613, 29.124229>,  <37.768734, 27.737629, 28.922432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.720516, 28.079613, 29.124229> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739737, -0.261544, 0.619987,
		0.662011, 0.447929, -0.600917,
		-0.120544, 0.854958, 0.504495,
		37.684353, 28.336100, 29.275578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.500961, 28.004028, 29.092447>,  <37.768734, 27.737629, 28.922432>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.500961, 28.004028, 29.092447> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.233044, 28.188416, 29.325302>,  <38.072292, 28.299047, 29.465015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.233044, 28.188416, 29.325302>,  <38.500961, 28.004028, 29.092447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.233044, 28.188416, 29.325302> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574319, -0.175335, 0.799635,
		0.470676, 0.869923, -0.147305,
		-0.669792, 0.460969, 0.582139,
		38.032104, 28.326706, 29.499943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<22.554052, 27.639059, 30.482956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.865541, 27.743122, 30.711311>,  <23.052435, 27.805559, 30.848324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.865541, 27.743122, 30.711311>,  <22.554052, 27.639059, 30.482956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.865541, 27.743122, 30.711311> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009118, -0.905180, 0.424931,
		0.627304, -0.336108, -0.702510,
		0.778721, 0.260156, 0.570888,
		23.099157, 27.821169, 30.882578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.158161, 27.075783, 30.460123>,  <22.554052, 27.639059, 30.482956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.158161, 27.075783, 30.460123> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.204624, 27.255253, 30.814568>,  <23.232502, 27.362936, 31.027235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.204624, 27.255253, 30.814568>,  <23.158161, 27.075783, 30.460123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.204624, 27.255253, 30.814568> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052507, -0.893679, 0.445625,
		0.991842, -0.005235, -0.127366,
		0.116157, 0.448677, 0.886113,
		23.239471, 27.389856, 31.080402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.642252, 26.671593, 30.789404>,  <23.158161, 27.075783, 30.460123>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.642252, 26.671593, 30.789404> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.488743, 26.880985, 31.093689>,  <23.396637, 27.006620, 31.276260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.488743, 26.880985, 31.093689>,  <23.642252, 26.671593, 30.789404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.488743, 26.880985, 31.093689> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031052, -0.830643, 0.555939,
		0.922905, 0.189734, 0.335035,
		-0.383775, 0.523482, 0.760713,
		23.373610, 27.038031, 31.321903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.863041, 26.375757, 31.466234>,  <23.642252, 26.671593, 30.789404>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.863041, 26.375757, 31.466234> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.581564, 26.622585, 31.607109>,  <23.412678, 26.770683, 31.691635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.581564, 26.622585, 31.607109>,  <23.863041, 26.375757, 31.466234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.581564, 26.622585, 31.607109> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144978, -0.609968, 0.779051,
		0.695554, 0.497154, 0.518693,
		-0.703695, 0.617071, 0.352189,
		23.370455, 26.807707, 31.712767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.066015, 26.613981, 32.097931>,  <23.863041, 26.375757, 31.466234>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.066015, 26.613981, 32.097931> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.668379, 26.601616, 32.056316>,  <23.429796, 26.594196, 32.031349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.668379, 26.601616, 32.056316>,  <24.066015, 26.613981, 32.097931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.668379, 26.601616, 32.056316> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079920, -0.440009, 0.894430,
		-0.073425, 0.897461, 0.434939,
		-0.994093, -0.030913, -0.104033,
		23.370152, 26.592342, 32.025108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.832338, 26.661715, 32.741127>,  <24.066015, 26.613981, 32.097931>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.832338, 26.661715, 32.741127> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.492214, 26.525661, 32.580486>,  <23.288139, 26.444029, 32.484100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.492214, 26.525661, 32.580486>,  <23.832338, 26.661715, 32.741127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.492214, 26.525661, 32.580486> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133334, -0.598968, 0.789594,
		-0.509115, 0.724946, 0.463956,
		-0.850308, -0.340133, -0.401603,
		23.237122, 26.423622, 32.460007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.340752, 26.618973, 33.285732>,  <23.832338, 26.661715, 32.741127>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.340752, 26.618973, 33.285732> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.158998, 26.403667, 33.001816>,  <23.049948, 26.274485, 32.831467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.158998, 26.403667, 33.001816>,  <23.340752, 26.618973, 33.285732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.158998, 26.403667, 33.001816> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327606, -0.639988, 0.695046,
		-0.828379, 0.548349, 0.114460,
		-0.454381, -0.538264, -0.709795,
		23.022684, 26.242188, 32.788876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.585878, 26.572622, 33.464382>,  <23.340752, 26.618973, 33.285732>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.585878, 26.572622, 33.464382> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.676596, 26.260777, 33.230881>,  <22.731026, 26.073669, 33.090778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.676596, 26.260777, 33.230881>,  <22.585878, 26.572622, 33.464382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.676596, 26.260777, 33.230881> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321240, -0.625710, 0.710839,
		-0.919439, 0.026310, -0.392350,
		0.226795, -0.779613, -0.583754,
		22.744635, 26.026894, 33.055756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.111416, 26.059313, 33.559361>,  <22.585878, 26.572622, 33.464382>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.111416, 26.059313, 33.559361> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.387392, 25.816105, 33.402241>,  <22.552979, 25.670181, 33.307968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.387392, 25.816105, 33.402241>,  <22.111416, 26.059313, 33.559361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.387392, 25.816105, 33.402241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220814, -0.693568, 0.685715,
		-0.689351, -0.386378, -0.612787,
		0.689954, -0.608010, -0.392794,
		22.594374, 25.633699, 33.284401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.809074, 25.325714, 33.428162>,  <22.111416, 26.059313, 33.559361>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.809074, 25.325714, 33.428162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.199429, 25.247517, 33.467007>,  <22.433641, 25.200598, 33.490314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.199429, 25.247517, 33.467007>,  <21.809074, 25.325714, 33.428162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.199429, 25.247517, 33.467007> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213862, -0.767160, 0.604755,
		-0.043727, -0.610939, -0.790469,
		0.975885, -0.195495, 0.097111,
		22.492193, 25.188868, 33.496140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.891333, 24.608118, 33.384605>,  <21.809074, 25.325714, 33.428162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.891333, 24.608118, 33.384605> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.225393, 24.739346, 33.561192>,  <22.425831, 24.818083, 33.667141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.225393, 24.739346, 33.561192>,  <21.891333, 24.608118, 33.384605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.225393, 24.739346, 33.561192> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023934, -0.780195, 0.625078,
		0.549496, -0.532602, -0.643731,
		0.835154, 0.328071, 0.441461,
		22.475939, 24.837767, 33.693630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.231325, 23.918440, 33.561665>,  <21.891333, 24.608118, 33.384605>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.231325, 23.918440, 33.561665> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.407812, 24.205475, 33.777218>,  <22.513704, 24.377695, 33.906551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.407812, 24.205475, 33.777218>,  <22.231325, 23.918440, 33.561665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.407812, 24.205475, 33.777218> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142585, -0.536812, 0.831566,
		0.886001, -0.443737, -0.134533,
		0.441215, 0.717586, 0.538886,
		22.540176, 24.420752, 33.938885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.828926, 23.725693, 33.995430>,  <22.231325, 23.918440, 33.561665>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.828926, 23.725693, 33.995430> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.632912, 24.036655, 34.153168>,  <22.515303, 24.223232, 34.247810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.632912, 24.036655, 34.153168>,  <22.828926, 23.725693, 33.995430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.632912, 24.036655, 34.153168> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006421, -0.455586, 0.890169,
		0.871679, 0.433682, 0.228245,
		-0.490035, 0.777407, 0.394340,
		22.485901, 24.269878, 34.271469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.318790, 24.072575, 34.507942>,  <22.828926, 23.725693, 33.995430>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.318790, 24.072575, 34.507942> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.921705, 24.046131, 34.548248>,  <22.683455, 24.030266, 34.572433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.921705, 24.046131, 34.548248>,  <23.318790, 24.072575, 34.507942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.921705, 24.046131, 34.548248> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119985, -0.463576, 0.877895,
		-0.011321, 0.883587, 0.468129,
		-0.992711, -0.066108, 0.100769,
		22.623892, 24.026299, 34.578480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.528206, 23.666103, 33.858112>,  <23.318790, 24.072575, 34.507942>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.528206, 23.666103, 33.858112> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.460026, 23.327248, 33.656796>,  <23.419117, 23.123934, 33.536007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.460026, 23.327248, 33.656796>,  <23.528206, 23.666103, 33.858112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.460026, 23.327248, 33.656796> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354009, 0.424017, -0.833598,
		0.919578, -0.320258, 0.227620,
		-0.170452, -0.847138, -0.503291,
		23.408890, 23.073107, 33.505810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.119488, 23.585276, 33.561867>,  <23.528206, 23.666103, 33.858112>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.119488, 23.585276, 33.561867> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.864559, 23.351070, 33.361469>,  <23.711603, 23.210548, 33.241230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.864559, 23.351070, 33.361469>,  <24.119488, 23.585276, 33.561867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.864559, 23.351070, 33.361469> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469099, 0.221016, -0.855043,
		0.611367, -0.779953, 0.133805,
		-0.637320, -0.585512, -0.500997,
		23.673363, 23.175417, 33.211170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.548653, 23.227909, 33.034828>,  <24.119488, 23.585276, 33.561867>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.548653, 23.227909, 33.034828> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.174814, 23.191093, 32.897392>,  <23.950510, 23.169004, 32.814930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.174814, 23.191093, 32.897392>,  <24.548653, 23.227909, 33.034828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.174814, 23.191093, 32.897392> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317458, 0.219900, -0.922423,
		0.160453, -0.971171, -0.176300,
		-0.934599, -0.092038, -0.343590,
		23.894434, 23.163481, 32.794315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.640795, 22.714027, 32.428204>,  <24.548653, 23.227909, 33.034828>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.640795, 22.714027, 32.428204> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.318232, 22.945690, 32.380386>,  <24.124695, 23.084688, 32.351696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.318232, 22.945690, 32.380386>,  <24.640795, 22.714027, 32.428204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.318232, 22.945690, 32.380386> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348894, 0.302733, -0.886919,
		-0.477475, -0.756923, -0.446189,
		-0.806406, 0.579155, -0.119538,
		24.076309, 23.119436, 32.344524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.532965, 22.798979, 31.635389>,  <24.640795, 22.714027, 32.428204>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.532965, 22.798979, 31.635389> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.316927, 23.093330, 31.798744>,  <24.187304, 23.269941, 31.896757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.316927, 23.093330, 31.798744>,  <24.532965, 22.798979, 31.635389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.316927, 23.093330, 31.798744> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284615, 0.616364, -0.734227,
		-0.792018, -0.280319, -0.542337,
		-0.540095, 0.735878, 0.408389,
		24.154898, 23.314095, 31.921261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.284163, 23.052111, 31.068239>,  <24.532965, 22.798979, 31.635389>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.284163, 23.052111, 31.068239> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.269472, 23.338470, 31.347134>,  <24.260658, 23.510286, 31.514471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.269472, 23.338470, 31.347134>,  <24.284163, 23.052111, 31.068239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.269472, 23.338470, 31.347134> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314040, 0.670629, -0.672038,
		-0.948699, 0.194281, -0.249449,
		-0.036724, 0.715899, 0.697237,
		24.258455, 23.553240, 31.556305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.097511, 23.639942, 30.717384>,  <24.284163, 23.052111, 31.068239>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.097511, 23.639942, 30.717384> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.259682, 23.784348, 31.053314>,  <24.356983, 23.870991, 31.254871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.259682, 23.784348, 31.053314>,  <24.097511, 23.639942, 30.717384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.259682, 23.784348, 31.053314> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533061, 0.652973, -0.538027,
		-0.742615, 0.665806, 0.072290,
		0.405424, 0.361012, 0.839822,
		24.381310, 23.892651, 31.305262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.044838, 24.387506, 30.687376>,  <24.097511, 23.639942, 30.717384>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.044838, 24.387506, 30.687376> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.327639, 24.302673, 30.957241>,  <24.497318, 24.251774, 31.119160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.327639, 24.302673, 30.957241>,  <24.044838, 24.387506, 30.687376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.327639, 24.302673, 30.957241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525672, 0.795763, -0.300717,
		-0.473095, 0.567259, 0.674091,
		0.707001, -0.212083, 0.674663,
		24.539740, 24.239048, 31.159639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.166143, 25.005260, 30.937653>,  <24.044838, 24.387506, 30.687376>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.166143, 25.005260, 30.937653> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.487452, 24.780216, 31.015858>,  <24.680237, 24.645189, 31.062780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.487452, 24.780216, 31.015858>,  <24.166143, 25.005260, 30.937653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.487452, 24.780216, 31.015858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585746, 0.686676, -0.430556,
		0.107982, 0.460373, 0.881134,
		0.803270, -0.562612, 0.195513,
		24.728432, 24.611433, 31.074511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.609463, 25.495356, 31.020189>,  <24.166143, 25.005260, 30.937653>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.609463, 25.495356, 31.020189> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.841694, 25.175343, 30.959690>,  <24.981031, 24.983334, 30.923391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.841694, 25.175343, 30.959690>,  <24.609463, 25.495356, 31.020189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.841694, 25.175343, 30.959690> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711787, 0.588908, -0.382814,
		0.395335, 0.114598, 0.911360,
		0.580577, -0.800034, -0.151247,
		25.015867, 24.935331, 30.914316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.222363, 25.651611, 31.301937>,  <24.609463, 25.495356, 31.020189>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.222363, 25.651611, 31.301937> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.308413, 25.361053, 31.040840>,  <25.360043, 25.186718, 30.884182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.308413, 25.361053, 31.040840>,  <25.222363, 25.651611, 31.301937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.308413, 25.361053, 31.040840> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639394, 0.609979, -0.468081,
		0.738170, -0.316662, 0.595676,
		0.215126, -0.726396, -0.652741,
		25.372950, 25.143135, 30.845018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.907825, 25.767326, 31.116579>,  <25.222363, 25.651611, 31.301937>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.907825, 25.767326, 31.116579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.785528, 25.521149, 30.825993>,  <25.712149, 25.373442, 30.651642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.785528, 25.521149, 30.825993>,  <25.907825, 25.767326, 31.116579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.785528, 25.521149, 30.825993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571344, 0.491760, -0.657068,
		0.761634, -0.615956, 0.201276,
		-0.305745, -0.615443, -0.726464,
		25.693804, 25.336515, 30.608053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.547672, 25.801451, 30.685476>,  <25.907825, 25.767326, 31.116579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.547672, 25.801451, 30.685476> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.251673, 25.658077, 30.457817>,  <26.074074, 25.572054, 30.321222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.251673, 25.658077, 30.457817>,  <26.547672, 25.801451, 30.685476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.251673, 25.658077, 30.457817> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342921, 0.526892, -0.777683,
		0.578630, -0.770654, -0.266981,
		-0.739995, -0.358437, -0.569149,
		26.029675, 25.550547, 30.287073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.839666, 25.469467, 30.111845>,  <26.547672, 25.801451, 30.685476>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.839666, 25.469467, 30.111845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.467228, 25.580395, 30.017059>,  <26.243765, 25.646952, 29.960188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.467228, 25.580395, 30.017059>,  <26.839666, 25.469467, 30.111845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.467228, 25.580395, 30.017059> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334915, 0.392525, -0.856595,
		-0.144536, -0.876936, -0.458357,
		-0.931097, 0.277319, -0.236965,
		26.187899, 25.663591, 29.945971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.161156, 24.913733, 29.598335>,  <26.839666, 25.469467, 30.111845>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.161156, 24.913733, 29.598335> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.492630, 24.698139, 29.658703>,  <27.691515, 24.568783, 29.694923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.492630, 24.698139, 29.658703>,  <27.161156, 24.913733, 29.598335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.492630, 24.698139, 29.658703> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474449, -0.533370, 0.700296,
		-0.296952, -0.651929, -0.697717,
		0.828684, -0.538985, 0.150922,
		27.741236, 24.536444, 29.703979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.022673, 24.242674, 29.720810>,  <27.161156, 24.913733, 29.598335>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.022673, 24.242674, 29.720810> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.385220, 24.271637, 29.887306>,  <27.602747, 24.289015, 29.987204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.385220, 24.271637, 29.887306>,  <27.022673, 24.242674, 29.720810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.385220, 24.271637, 29.887306> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316566, -0.536063, 0.782574,
		0.279795, -0.841067, -0.462948,
		0.906366, 0.072407, 0.416241,
		27.657129, 24.293360, 30.012178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.150747, 23.619198, 29.973896>,  <27.022673, 24.242674, 29.720810>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.150747, 23.619198, 29.973896> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.431133, 23.828552, 30.167686>,  <27.599365, 23.954165, 30.283960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.431133, 23.828552, 30.167686>,  <27.150747, 23.619198, 29.973896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.431133, 23.828552, 30.167686> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185313, -0.522309, 0.832377,
		0.688701, -0.673246, -0.269129,
		0.700963, 0.523386, 0.484476,
		27.641422, 23.985569, 30.313030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.792839, 23.313978, 30.121773>,  <27.150747, 23.619198, 29.973896>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.792839, 23.313978, 30.121773> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.770517, 23.571224, 30.427265>,  <27.757124, 23.725573, 30.610561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.770517, 23.571224, 30.427265>,  <27.792839, 23.313978, 30.121773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.770517, 23.571224, 30.427265> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092235, -0.764975, 0.637421,
		0.994172, -0.034871, 0.102008,
		-0.055806, 0.643115, 0.763733,
		27.753777, 23.764158, 30.656385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.221127, 22.987022, 30.745102>,  <27.792839, 23.313978, 30.121773>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.221127, 22.987022, 30.745102> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.037344, 23.294262, 30.923508>,  <27.927074, 23.478605, 31.030552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.037344, 23.294262, 30.923508>,  <28.221127, 22.987022, 30.745102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.037344, 23.294262, 30.923508> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097376, -0.542689, 0.834270,
		0.882847, 0.339878, 0.324135,
		-0.459455, 0.768097, 0.446015,
		27.899508, 23.524691, 31.057312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.571617, 23.142405, 31.408491>,  <28.221127, 22.987022, 30.745102>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.571617, 23.142405, 31.408491> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.202457, 23.291142, 31.448471>,  <27.980961, 23.380384, 31.472460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.202457, 23.291142, 31.448471>,  <28.571617, 23.142405, 31.408491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.202457, 23.291142, 31.448471> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110093, -0.503581, 0.856905,
		0.368967, 0.779833, 0.505692,
		-0.922899, 0.371842, 0.099951,
		27.925587, 23.402695, 31.478456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.515656, 23.457207, 32.067028>,  <28.571617, 23.142405, 31.408491>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.515656, 23.457207, 32.067028> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.145163, 23.352692, 31.958347>,  <27.922867, 23.289984, 31.893139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.145163, 23.352692, 31.958347>,  <28.515656, 23.457207, 32.067028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.145163, 23.352692, 31.958347> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125809, -0.465183, 0.876229,
		-0.355339, 0.845774, 0.397996,
		-0.926233, -0.261286, -0.271703,
		27.867292, 23.274305, 31.876837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.437759, 24.019693, 32.367416>,  <28.515656, 23.457207, 32.067028>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.437759, 24.019693, 32.367416> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.721045, 24.035961, 32.649349>,  <28.891016, 24.045721, 32.818508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.721045, 24.035961, 32.649349>,  <28.437759, 24.019693, 32.367416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.721045, 24.035961, 32.649349> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640989, 0.381416, -0.666074,
		-0.295922, 0.923508, 0.244054,
		0.708212, 0.040670, 0.704828,
		28.933508, 24.048162, 32.860798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.798977, 24.608601, 32.225094>,  <28.437759, 24.019693, 32.367416>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.798977, 24.608601, 32.225094> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.050829, 24.385384, 32.441299>,  <29.201941, 24.251453, 32.571022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.050829, 24.385384, 32.441299>,  <28.798977, 24.608601, 32.225094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.050829, 24.385384, 32.441299> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756984, 0.284178, -0.588403,
		0.174753, 0.779636, 0.601357,
		0.629632, -0.558042, 0.540511,
		29.239719, 24.217972, 32.603451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.310085, 25.080219, 32.396843>,  <28.798977, 24.608601, 32.225094>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.310085, 25.080219, 32.396843> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.480032, 24.720783, 32.440701>,  <29.582001, 24.505121, 32.467014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.480032, 24.720783, 32.440701>,  <29.310085, 25.080219, 32.396843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.480032, 24.720783, 32.440701> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772103, 0.296474, -0.562104,
		0.472593, 0.323480, 0.819766,
		0.424869, -0.898590, 0.109649,
		29.607492, 24.451206, 32.473595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.038628, 25.135681, 32.595989>,  <29.310085, 25.080219, 32.396843>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.038628, 25.135681, 32.595989> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.014362, 24.768997, 32.438023>,  <29.999804, 24.548986, 32.343243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.014362, 24.768997, 32.438023>,  <30.038628, 25.135681, 32.595989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.014362, 24.768997, 32.438023> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837440, 0.168551, -0.519889,
		0.543152, -0.362257, 0.757466,
		-0.060662, -0.916712, -0.394918,
		29.996164, 24.493984, 32.319546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.696461, 24.964348, 32.494926>,  <30.038628, 25.135681, 32.595989>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.696461, 24.964348, 32.494926> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.483179, 24.716919, 32.264080>,  <30.355209, 24.568460, 32.125572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.483179, 24.716919, 32.264080>,  <30.696461, 24.964348, 32.494926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.483179, 24.716919, 32.264080> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722867, 0.021264, -0.690660,
		0.439497, -0.785438, 0.435809,
		-0.533204, -0.618575, -0.577113,
		30.323217, 24.531347, 32.090946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.163736, 24.499001, 32.258869>,  <30.696461, 24.964348, 32.494926>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.163736, 24.499001, 32.258869> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.863356, 24.483257, 31.995193>,  <30.683128, 24.473810, 31.836988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.863356, 24.483257, 31.995193>,  <31.163736, 24.499001, 32.258869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.863356, 24.483257, 31.995193> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659085, 0.017322, -0.751869,
		0.041011, -0.999075, 0.012933,
		-0.750950, -0.039359, -0.659185,
		30.638071, 24.471449, 31.797438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.476448, 24.258589, 31.647915>,  <31.163736, 24.499001, 32.258869>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.476448, 24.258589, 31.647915> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.149160, 24.418415, 31.482571>,  <30.952787, 24.514311, 31.383364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.149160, 24.418415, 31.482571>,  <31.476448, 24.258589, 31.647915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.149160, 24.418415, 31.482571> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518589, 0.202591, -0.830676,
		-0.248166, -0.894038, -0.372974,
		-0.818217, 0.399565, -0.413362,
		30.903696, 24.538284, 31.358562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<24.621111, 26.035604, 35.841358> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.347437, 26.002491, 35.551521>,  <24.183233, 25.982624, 35.377617>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.347437, 26.002491, 35.551521>,  <24.621111, 26.035604, 35.841358>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.347437, 26.002491, 35.551521> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475992, 0.702067, -0.529654,
		0.552560, -0.707283, -0.440940,
		-0.684185, -0.082782, -0.724595,
		24.142181, 25.977655, 35.334141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.897768, 25.828056, 35.139896>,  <24.621111, 26.035604, 35.841358>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.897768, 25.828056, 35.139896> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.551394, 26.022278, 35.091908>,  <24.343569, 26.138811, 35.063114>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.551394, 26.022278, 35.091908>,  <24.897768, 25.828056, 35.139896>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.551394, 26.022278, 35.091908> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454456, 0.663668, -0.594150,
		-0.208871, -0.569017, -0.795357,
		-0.865935, 0.485555, -0.119972,
		24.291613, 26.167944, 35.055916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.903975, 25.928074, 34.472244>,  <24.897768, 25.828056, 35.139896>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.903975, 25.928074, 34.472244> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.664524, 26.224945, 34.592789>,  <24.520855, 26.403069, 34.665115>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.664524, 26.224945, 34.592789>,  <24.903975, 25.928074, 34.472244>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.664524, 26.224945, 34.592789> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546591, 0.653487, -0.523634,
		-0.585567, -0.148739, -0.796862,
		-0.598624, 0.742180, 0.301361,
		24.484938, 26.447599, 34.683197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.509117, 26.132492, 33.853752>,  <24.903975, 25.928074, 34.472244>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.509117, 26.132492, 33.853752> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.468346, 26.436623, 34.110352>,  <24.443882, 26.619101, 34.264309>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.468346, 26.436623, 34.110352>,  <24.509117, 26.132492, 33.853752>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.468346, 26.436623, 34.110352> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192255, 0.647753, -0.737193,
		-0.976037, 0.048188, -0.212202,
		-0.101931, 0.760325, 0.641496,
		24.437767, 26.664721, 34.302799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.089533, 26.641397, 33.536472>,  <24.509117, 26.132492, 33.853752>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.089533, 26.641397, 33.536472> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.283070, 26.854382, 33.814289>,  <24.399191, 26.982172, 33.980980>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.283070, 26.854382, 33.814289>,  <24.089533, 26.641397, 33.536472>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.283070, 26.854382, 33.814289> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142727, 0.734982, -0.662895,
		-0.863439, 0.419866, 0.279619,
		0.483842, 0.532460, 0.694538,
		24.428223, 27.014120, 34.022652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.920202, 27.259802, 33.219830>,  <24.089533, 26.641397, 33.536472>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.920202, 27.259802, 33.219830> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.198051, 27.336182, 33.497257>,  <24.364761, 27.382010, 33.663715>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.198051, 27.336182, 33.497257>,  <23.920202, 27.259802, 33.219830>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.198051, 27.336182, 33.497257> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172843, 0.891586, -0.418569,
		-0.698302, 0.410626, 0.586311,
		0.694622, 0.190947, 0.693570,
		24.406439, 27.393465, 33.705330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.868654, 27.997141, 33.504513>,  <23.920202, 27.259802, 33.219830>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.868654, 27.997141, 33.504513> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.239698, 27.888504, 33.607101>,  <24.462324, 27.823322, 33.668655>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.239698, 27.888504, 33.607101>,  <23.868654, 27.997141, 33.504513>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.239698, 27.888504, 33.607101> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363097, 0.816841, -0.448252,
		-0.087754, 0.508927, 0.856325,
		0.927610, -0.271593, 0.256471,
		24.517981, 27.807026, 33.684044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.224607, 28.503515, 33.765675>,  <23.868654, 27.997141, 33.504513>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.224607, 28.503515, 33.765675> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.521141, 28.282497, 33.613297>,  <24.699060, 28.149887, 33.521870>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.521141, 28.282497, 33.613297>,  <24.224607, 28.503515, 33.765675>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.521141, 28.282497, 33.613297> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362629, 0.807397, -0.465414,
		0.564734, 0.206887, 0.798920,
		0.741334, -0.552547, -0.380942,
		24.743542, 28.116734, 33.499016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.832794, 28.907114, 33.799408>,  <24.224607, 28.503515, 33.765675>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.832794, 28.907114, 33.799408> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.947330, 28.635201, 33.529324>,  <25.016052, 28.472054, 33.367275>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.947330, 28.635201, 33.529324>,  <24.832794, 28.907114, 33.799408>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.947330, 28.635201, 33.529324> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478675, 0.711962, -0.513791,
		0.829987, -0.176085, 0.529259,
		0.286341, -0.679783, -0.675207,
		25.033234, 28.431265, 33.326763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.492216, 29.140287, 33.623325>,  <24.832794, 28.907114, 33.799408>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.492216, 29.140287, 33.623325> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.370218, 28.890957, 33.335312>,  <25.297020, 28.741358, 33.162506>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.370218, 28.890957, 33.335312>,  <25.492216, 29.140287, 33.623325>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.370218, 28.890957, 33.335312> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522014, 0.522938, -0.673823,
		0.796543, -0.581377, 0.165893,
		-0.304993, -0.623328, -0.720029,
		25.278721, 28.703959, 33.119305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.111881, 28.954636, 33.284283>,  <25.492216, 29.140287, 33.623325>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.111881, 28.954636, 33.284283> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.800066, 28.891754, 33.041759>,  <25.612976, 28.854025, 32.896248>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.800066, 28.891754, 33.041759>,  <26.111881, 28.954636, 33.284283>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.800066, 28.891754, 33.041759> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494197, 0.440351, -0.749573,
		0.384821, -0.883956, -0.265582,
		-0.779539, -0.157202, -0.606305,
		25.566204, 28.844593, 32.859867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.442675, 28.886711, 32.657429>,  <26.111881, 28.954636, 33.284283>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.442675, 28.886711, 32.657429> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.061852, 28.978287, 32.576263>,  <25.833359, 29.033232, 32.527565>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.061852, 28.978287, 32.576263>,  <26.442675, 28.886711, 32.657429>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.061852, 28.978287, 32.576263> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282420, 0.402793, -0.870630,
		-0.117588, -0.886197, -0.448139,
		-0.952057, 0.228939, -0.202916,
		25.776234, 29.046968, 32.515388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.910692, 28.314695, 32.391438>,  <26.442675, 28.886711, 32.657429>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.910692, 28.314695, 32.391438> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.309023, 28.290977, 32.419201>,  <27.548021, 28.276747, 32.435860>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.309023, 28.290977, 32.419201>,  <26.910692, 28.314695, 32.391438>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.309023, 28.290977, 32.419201> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091250, -0.667857, 0.738675,
		0.002556, -0.741925, -0.670479,
		0.995825, -0.059293, 0.069407,
		27.607771, 28.273190, 32.440022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.163803, 27.595083, 32.248394>,  <26.910692, 28.314695, 32.391438>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.163803, 27.595083, 32.248394> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.433363, 27.775826, 32.482208>,  <27.595098, 27.884270, 32.622498>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.433363, 27.775826, 32.482208>,  <27.163803, 27.595083, 32.248394>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.433363, 27.775826, 32.482208> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194474, -0.654790, 0.730363,
		0.712767, -0.605870, -0.353390,
		0.673901, 0.451854, 0.584539,
		27.635532, 27.911381, 32.657570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.568607, 26.987673, 32.577099>,  <27.163803, 27.595083, 32.248394>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.568607, 26.987673, 32.577099> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.679852, 27.308800, 32.788055>,  <27.746597, 27.501476, 32.914631>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.679852, 27.308800, 32.788055>,  <27.568607, 26.987673, 32.577099>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.679852, 27.308800, 32.788055> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109855, -0.518866, 0.847768,
		0.954247, -0.293710, -0.056108,
		0.278110, 0.802816, 0.527391,
		27.763285, 27.549644, 32.946274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.984976, 26.650112, 32.941460>,  <27.568607, 26.987673, 32.577099>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.984976, 26.650112, 32.941460> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.898151, 26.997326, 33.120079>,  <27.846058, 27.205654, 33.227249>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.898151, 26.997326, 33.120079>,  <27.984976, 26.650112, 32.941460>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.898151, 26.997326, 33.120079> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072486, -0.470522, 0.879406,
		0.973463, 0.158515, 0.165051,
		-0.217059, 0.868033, 0.446546,
		27.833035, 27.257736, 33.254044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.603676, 26.792887, 33.367870>,  <27.984976, 26.650112, 32.941460>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.603676, 26.792887, 33.367870> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.299706, 27.011066, 33.509293>,  <28.117323, 27.141973, 33.594147>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.299706, 27.011066, 33.509293>,  <28.603676, 26.792887, 33.367870>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.299706, 27.011066, 33.509293> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066124, -0.476234, 0.876829,
		0.646640, 0.689702, 0.325834,
		-0.759924, 0.545448, 0.353557,
		28.071728, 27.174702, 33.615360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.868093, 27.108093, 34.050797>,  <28.603676, 26.792887, 33.367870>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.868093, 27.108093, 34.050797> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.468571, 27.115864, 34.032894>,  <28.228857, 27.120527, 34.022152>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.468571, 27.115864, 34.032894>,  <28.868093, 27.108093, 34.050797>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.468571, 27.115864, 34.032894> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048600, -0.477160, 0.877472,
		-0.004307, 0.878602, 0.477535,
		-0.998809, 0.019428, -0.044755,
		28.168928, 27.121693, 34.019466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.690914, 27.312325, 34.679554>,  <28.868093, 27.108093, 34.050797>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.690914, 27.312325, 34.679554> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.351770, 27.150379, 34.542603>,  <28.148285, 27.053213, 34.460430>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.351770, 27.150379, 34.542603>,  <28.690914, 27.312325, 34.679554>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.351770, 27.150379, 34.542603> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137590, -0.455608, 0.879483,
		-0.512058, 0.792786, 0.330587,
		-0.847859, -0.404861, -0.342377,
		28.097412, 27.028921, 34.439888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.180328, 27.514515, 35.066109>,  <28.690914, 27.312325, 34.679554>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.180328, 27.514515, 35.066109> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.030947, 27.170471, 34.927116>,  <27.941317, 26.964045, 34.843723>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.030947, 27.170471, 34.927116>,  <28.180328, 27.514515, 35.066109>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.030947, 27.170471, 34.927116> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131333, -0.321783, 0.937660,
		-0.918304, 0.395810, 0.007211,
		-0.373456, -0.860111, -0.347478,
		27.918911, 26.912437, 34.822872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.815958, 27.347639, 35.611958>,  <28.180328, 27.514515, 35.066109>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.815958, 27.347639, 35.611958> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.812052, 27.012081, 35.394276>,  <27.809708, 26.810745, 35.263668>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.812052, 27.012081, 35.394276>,  <27.815958, 27.347639, 35.611958>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.812052, 27.012081, 35.394276> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028351, -0.543777, 0.838751,
		-0.999550, 0.023620, -0.018473,
		-0.009766, -0.838897, -0.544202,
		27.809122, 26.760412, 35.231014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.227224, 27.000496, 35.845547>,  <27.815958, 27.347639, 35.611958>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.227224, 27.000496, 35.845547> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.475269, 26.740219, 35.670246>,  <27.624096, 26.584053, 35.565067>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.475269, 26.740219, 35.670246>,  <27.227224, 27.000496, 35.845547>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.475269, 26.740219, 35.670246> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064403, -0.514517, 0.855058,
		-0.781867, -0.558455, -0.277151,
		0.620110, -0.650692, -0.438250,
		27.661303, 26.545012, 35.538773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.994097, 26.308649, 36.126175>,  <27.227224, 27.000496, 35.845547>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.994097, 26.308649, 36.126175> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.361261, 26.236301, 35.984909>,  <27.581560, 26.192894, 35.900150>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.361261, 26.236301, 35.984909>,  <26.994097, 26.308649, 36.126175>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.361261, 26.236301, 35.984909> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227210, -0.490094, 0.841536,
		-0.325290, -0.852699, -0.408768,
		0.917912, -0.180867, -0.353165,
		27.636635, 26.182041, 35.878960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.080185, 25.714020, 36.225548>,  <26.994097, 26.308649, 36.126175>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.080185, 25.714020, 36.225548> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.446390, 25.874649, 36.215958>,  <27.666113, 25.971027, 36.210201>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.446390, 25.874649, 36.215958>,  <27.080185, 25.714020, 36.225548>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.446390, 25.874649, 36.215958> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268490, -0.565544, 0.779790,
		0.299584, -0.720345, -0.625582,
		0.915512, 0.401576, -0.023977,
		27.721045, 25.995121, 36.208763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.456749, 25.119469, 36.397453>,  <27.080185, 25.714020, 36.225548>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.456749, 25.119469, 36.397453> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.723528, 25.414219, 36.441616>,  <27.883596, 25.591070, 36.468113>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.723528, 25.414219, 36.441616>,  <27.456749, 25.119469, 36.397453>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.723528, 25.414219, 36.441616> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584937, -0.609592, 0.535020,
		0.461548, -0.292249, -0.837594,
		0.666950, 0.736877, 0.110408,
		27.923613, 25.635283, 36.474739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.144409, 24.857288, 36.330605>,  <27.456749, 25.119469, 36.397453>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.144409, 24.857288, 36.330605> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.185154, 25.184856, 36.556522>,  <28.209600, 25.381397, 36.692074>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.185154, 25.184856, 36.556522>,  <28.144409, 24.857288, 36.330605>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.185154, 25.184856, 36.556522> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472093, -0.539537, 0.697158,
		0.875644, 0.195621, -0.441565,
		0.101862, 0.818922, 0.564793,
		28.215714, 25.430532, 36.725960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.837776, 24.850815, 35.616161>,  <28.144409, 24.857288, 36.330605>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.837776, 24.850815, 35.616161> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.777727, 24.468369, 35.515518>,  <27.741697, 24.238901, 35.455132>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.777727, 24.468369, 35.515518>,  <27.837776, 24.850815, 35.616161>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.777727, 24.468369, 35.515518> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471042, 0.154580, -0.868461,
		0.869243, -0.248892, 0.427164,
		-0.150122, -0.956116, -0.251606,
		27.732691, 24.181534, 35.440037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.466534, 24.496145, 35.530910>,  <27.837776, 24.850815, 35.616161>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.466534, 24.496145, 35.530910> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.252653, 24.232082, 35.319897>,  <28.124325, 24.073645, 35.193291>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.252653, 24.232082, 35.319897>,  <28.466534, 24.496145, 35.530910>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.252653, 24.232082, 35.319897> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614406, 0.124888, -0.779043,
		0.580172, -0.740674, 0.338826,
		-0.534702, -0.660156, -0.527531,
		28.092243, 24.034037, 35.161636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.044765, 24.105520, 35.108311>,  <28.466534, 24.496145, 35.530910>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.044765, 24.105520, 35.108311> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.682024, 24.017563, 34.964497>,  <28.464378, 23.964788, 34.878208>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.682024, 24.017563, 34.964497>,  <29.044765, 24.105520, 35.108311>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.682024, 24.017563, 34.964497> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388130, -0.103323, -0.915795,
		0.164232, -0.970036, 0.179047,
		-0.906853, -0.219896, -0.359531,
		28.409967, 23.951593, 34.856636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.084421, 23.520050, 34.758183>,  <29.044765, 24.105520, 35.108311>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.084421, 23.520050, 34.758183> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.760397, 23.689106, 34.595615>,  <28.565983, 23.790539, 34.498074>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.760397, 23.689106, 34.595615>,  <29.084421, 23.520050, 34.758183>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.760397, 23.689106, 34.595615> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418340, -0.069078, -0.905660,
		-0.410842, -0.903661, -0.120850,
		-0.810062, 0.422640, -0.406418,
		28.517378, 23.815897, 34.473690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.968122, 23.032074, 34.238491>,  <29.084421, 23.520050, 34.758183>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.968122, 23.032074, 34.238491> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.811012, 23.396194, 34.186214>,  <28.716745, 23.614666, 34.154846>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.811012, 23.396194, 34.186214>,  <28.968122, 23.032074, 34.238491>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.811012, 23.396194, 34.186214> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447232, 0.064897, -0.892060,
		-0.803561, -0.408830, -0.432605,
		-0.392776, 0.910300, -0.130693,
		28.693180, 23.669285, 34.147007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.702715, 23.026386, 33.552425>,  <28.968122, 23.032074, 34.238491>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.702715, 23.026386, 33.552425> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.724461, 23.418209, 33.629902>,  <28.737507, 23.653303, 33.676388>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.724461, 23.418209, 33.629902>,  <28.702715, 23.026386, 33.552425>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.724461, 23.418209, 33.629902> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358947, 0.161843, -0.919219,
		-0.931774, 0.119497, -0.342809,
		0.054363, 0.979555, 0.193694,
		28.740770, 23.712076, 33.688011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.440453, 23.407560, 32.909191>,  <28.702715, 23.026386, 33.552425>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.440453, 23.407560, 32.909191> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.670391, 23.653324, 33.125359>,  <28.808355, 23.800783, 33.255058>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.670391, 23.653324, 33.125359>,  <28.440453, 23.407560, 32.909191>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.670391, 23.653324, 33.125359> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544519, 0.205745, -0.813122,
		-0.610778, 0.761690, -0.216285,
		0.574847, 0.614409, 0.540419,
		28.842846, 23.837646, 33.287483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.881023, 23.863419, 32.812473>,  <28.440453, 23.407560, 32.909191>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.881023, 23.863419, 32.812473> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.680033, 23.595886, 32.593319>,  <27.559439, 23.435366, 32.461826>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.680033, 23.595886, 32.593319>,  <27.881023, 23.863419, 32.812473>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.680033, 23.595886, 32.593319> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370747, -0.405791, 0.835392,
		-0.781065, 0.622893, -0.044066,
		-0.502478, -0.668833, -0.547885,
		27.529289, 23.395237, 32.428955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.168640, 24.020018, 32.967575>,  <27.881023, 23.863419, 32.812473>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.168640, 24.020018, 32.967575> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.209375, 23.649647, 32.822090>,  <27.233816, 23.427423, 32.734798>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.209375, 23.649647, 32.822090>,  <27.168640, 24.020018, 32.967575>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.209375, 23.649647, 32.822090> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459872, -0.368023, 0.808132,
		-0.882127, 0.084966, -0.463285,
		0.101836, -0.925927, -0.363716,
		27.239925, 23.371868, 32.712975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.485752, 23.769382, 32.788242>,  <27.168640, 24.020018, 32.967575>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.485752, 23.769382, 32.788242> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.696339, 23.431492, 32.826759>,  <26.822691, 23.228758, 32.849869>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.696339, 23.431492, 32.826759>,  <26.485752, 23.769382, 32.788242>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.696339, 23.431492, 32.826759> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735304, -0.395534, 0.550346,
		-0.426804, -0.360543, -0.829365,
		0.526465, -0.844725, 0.096293,
		26.854279, 23.178074, 32.855648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.032194, 23.250656, 32.543602>,  <26.485752, 23.769382, 32.788242>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.032194, 23.250656, 32.543602> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.307138, 23.074070, 32.774303>,  <26.472105, 22.968119, 32.912724>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.307138, 23.074070, 32.774303>,  <26.032194, 23.250656, 32.543602>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.307138, 23.074070, 32.774303> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722960, -0.492093, 0.484946,
		0.069727, -0.750301, -0.657409,
		0.687362, -0.441467, 0.576750,
		26.513348, 22.941629, 32.947327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.715895, 22.627649, 32.731049>,  <26.032194, 23.250656, 32.543602>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.715895, 22.627649, 32.731049> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.025167, 22.646351, 32.984032>,  <26.210732, 22.657572, 33.135822>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.025167, 22.646351, 32.984032>,  <25.715895, 22.627649, 32.731049>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.025167, 22.646351, 32.984032> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550589, -0.445407, 0.706020,
		0.314714, -0.894106, -0.318636,
		0.773179, 0.046756, 0.632461,
		26.257122, 22.660378, 33.173771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.814722, 21.966467, 32.934929>,  <25.715895, 22.627649, 32.731049>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.814722, 21.966467, 32.934929> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.990997, 22.181152, 33.222744>,  <26.096762, 22.309963, 33.395432>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.990997, 22.181152, 33.222744>,  <25.814722, 21.966467, 32.934929>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.990997, 22.181152, 33.222744> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490332, -0.527493, 0.693777,
		0.751910, -0.658550, 0.030708,
		0.440688, 0.536715, 0.719535,
		26.123203, 22.342167, 33.438606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.986216, 21.403526, 33.412487>,  <25.814722, 21.966467, 32.934929>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.986216, 21.403526, 33.412487> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.956047, 21.748096, 33.613388>,  <25.937946, 21.954840, 33.733929>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.956047, 21.748096, 33.613388>,  <25.986216, 21.403526, 33.412487>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.956047, 21.748096, 33.613388> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454847, -0.477952, 0.751449,
		0.887370, -0.171773, 0.427865,
		-0.075420, 0.861427, 0.502250,
		25.933420, 22.006525, 33.764065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.259871, 21.318258, 34.125355>,  <25.986216, 21.403526, 33.412487>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.259871, 21.318258, 34.125355> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.981842, 21.605835, 34.125881>,  <25.815025, 21.778381, 34.126198>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.981842, 21.605835, 34.125881>,  <26.259871, 21.318258, 34.125355>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.981842, 21.605835, 34.125881> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602440, -0.583431, 0.544679,
		0.392358, 0.377799, 0.838644,
		-0.695070, 0.718941, 0.001312,
		25.773321, 21.821518, 34.126274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.002018, 21.340664, 34.809776>,  <26.259871, 21.318258, 34.125355>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.002018, 21.340664, 34.809776> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.724560, 21.516640, 34.581631>,  <25.558084, 21.622225, 34.444744>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.724560, 21.516640, 34.581631>,  <26.002018, 21.340664, 34.809776>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.724560, 21.516640, 34.581631> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698856, -0.602873, 0.384895,
		-0.174524, 0.665580, 0.725635,
		-0.693644, 0.439941, -0.570360,
		25.516466, 21.648623, 34.410522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<31.412645, 30.481747, 21.705784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.096947, 30.661068, 21.873650>,  <30.907528, 30.768661, 21.974369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.096947, 30.661068, 21.873650>,  <31.412645, 30.481747, 21.705784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.096947, 30.661068, 21.873650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011544, -0.672452, 0.740051,
		0.613971, 0.588925, 0.525554,
		-0.789244, 0.448303, 0.419664,
		30.860174, 30.795559, 21.999548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.617020, 30.415691, 22.380957>,  <31.412645, 30.481747, 21.705784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.617020, 30.415691, 22.380957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.235107, 30.516445, 22.444141>,  <31.005960, 30.576899, 22.482052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.235107, 30.516445, 22.444141>,  <31.617020, 30.415691, 22.380957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.235107, 30.516445, 22.444141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087070, -0.744875, 0.661498,
		0.284283, 0.617831, 0.733122,
		-0.954778, 0.251886, 0.157961,
		30.948673, 30.592010, 22.491529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.459724, 30.579222, 23.050999>,  <31.617020, 30.415691, 22.380957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.459724, 30.579222, 23.050999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.111397, 30.462120, 22.893028>,  <30.902399, 30.391859, 22.798246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.111397, 30.462120, 22.893028>,  <31.459724, 30.579222, 23.050999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.111397, 30.462120, 22.893028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092424, -0.691520, 0.716420,
		-0.482834, 0.660374, 0.575132,
		-0.870821, -0.292756, -0.394924,
		30.850151, 30.374292, 22.774551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.820305, 30.690552, 23.548571>,  <31.459724, 30.579222, 23.050999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.820305, 30.690552, 23.548571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.719004, 30.410263, 23.281780>,  <30.658224, 30.242090, 23.121706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.719004, 30.410263, 23.281780>,  <30.820305, 30.690552, 23.548571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.719004, 30.410263, 23.281780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297565, -0.599599, 0.742924,
		-0.920499, 0.386614, -0.056661,
		-0.253251, -0.700721, -0.666974,
		30.643028, 30.200047, 23.081688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.156122, 30.506575, 23.779566>,  <30.820305, 30.690552, 23.548571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.156122, 30.506575, 23.779566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.269114, 30.202538, 23.545483>,  <30.336908, 30.020115, 23.405033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.269114, 30.202538, 23.545483>,  <30.156122, 30.506575, 23.779566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.269114, 30.202538, 23.545483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303829, -0.649536, 0.696987,
		-0.909886, -0.019081, -0.414418,
		0.282479, -0.760092, -0.585206,
		30.353857, 29.974510, 23.369921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.686001, 29.961908, 23.945446>,  <30.156122, 30.506575, 23.779566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.686001, 29.961908, 23.945446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.972269, 29.750732, 23.762539>,  <30.144030, 29.624027, 23.652794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.972269, 29.750732, 23.762539>,  <29.686001, 29.961908, 23.945446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.972269, 29.750732, 23.762539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104983, -0.728577, 0.676871,
		-0.690502, -0.436412, -0.576847,
		0.715672, -0.527940, -0.457267,
		30.186970, 29.592350, 23.625359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.427345, 29.345591, 23.767241>,  <29.686001, 29.961908, 23.945446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.427345, 29.345591, 23.767241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.822451, 29.310032, 23.818501>,  <30.059513, 29.288696, 23.849257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.822451, 29.310032, 23.818501>,  <29.427345, 29.345591, 23.767241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.822451, 29.310032, 23.818501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154782, -0.659733, 0.735388,
		0.019169, -0.746224, -0.665419,
		0.987763, -0.088898, 0.128149,
		30.118780, 29.283361, 23.856945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.470224, 28.634031, 23.921982>,  <29.427345, 29.345591, 23.767241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.470224, 28.634031, 23.921982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.820747, 28.788177, 24.037624>,  <30.031061, 28.880665, 24.107010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.820747, 28.788177, 24.037624>,  <29.470224, 28.634031, 23.921982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.820747, 28.788177, 24.037624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102248, -0.735215, 0.670077,
		0.470781, -0.557631, -0.683676,
		0.876305, 0.385364, 0.289108,
		30.083639, 28.903788, 24.124357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.901779, 28.075846, 23.931376>,  <29.470224, 28.634031, 23.921982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.901779, 28.075846, 23.931376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.042509, 28.350513, 24.185841>,  <30.126947, 28.515314, 24.338520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.042509, 28.350513, 24.185841>,  <29.901779, 28.075846, 23.931376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.042509, 28.350513, 24.185841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045538, -0.666255, 0.744332,
		0.934957, -0.290845, -0.203137,
		0.351826, 0.686668, 0.636164,
		30.148058, 28.556515, 24.376690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.371334, 27.714233, 24.358809>,  <29.901779, 28.075846, 23.931376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.371334, 27.714233, 24.358809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.273792, 28.048363, 24.555893>,  <30.215267, 28.248840, 24.674145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.273792, 28.048363, 24.555893>,  <30.371334, 27.714233, 24.358809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.273792, 28.048363, 24.555893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000514, -0.508161, 0.861262,
		0.969811, 0.209770, 0.124347,
		-0.243856, 0.835325, 0.492713,
		30.200636, 28.298960, 24.703707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.897974, 27.710909, 24.980991>,  <30.371334, 27.714233, 24.358809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.897974, 27.710909, 24.980991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.597912, 27.958168, 25.074940>,  <30.417875, 28.106524, 25.131310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.597912, 27.958168, 25.074940>,  <30.897974, 27.710909, 24.980991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.597912, 27.958168, 25.074940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167979, -0.521671, 0.836446,
		0.639572, 0.588010, 0.495169,
		-0.750154, 0.618146, 0.234873,
		30.372866, 28.143612, 25.145401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.039402, 27.941843, 25.681164>,  <30.897974, 27.710909, 24.980991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.039402, 27.941843, 25.681164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.647066, 27.981598, 25.614136>,  <30.411665, 28.005451, 25.573919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.647066, 27.981598, 25.614136>,  <31.039402, 27.941843, 25.681164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.647066, 27.981598, 25.614136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194823, -0.506457, 0.839968,
		-0.001384, 0.856518, 0.516115,
		-0.980838, 0.099388, -0.167570,
		30.352816, 28.011414, 25.563864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.367590, 28.311029, 26.376040>,  <31.039402, 27.941843, 25.681164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.367590, 28.311029, 26.376040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.756437, 28.316975, 26.469646>,  <31.989746, 28.320541, 26.525810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.756437, 28.316975, 26.469646>,  <31.367590, 28.311029, 26.376040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.756437, 28.316975, 26.469646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114294, 0.841384, -0.528214,
		-0.204751, 0.540233, 0.816226,
		0.972118, 0.014862, 0.234019,
		32.048073, 28.321434, 26.539852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.486189, 28.932512, 26.480263>,  <31.367590, 28.311029, 26.376040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.486189, 28.932512, 26.480263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.878973, 28.857155, 26.473843>,  <32.114643, 28.811941, 26.469992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.878973, 28.857155, 26.473843>,  <31.486189, 28.932512, 26.480263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.878973, 28.857155, 26.473843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170058, 0.917110, -0.360541,
		0.082641, 0.351309, 0.932605,
		0.981963, -0.188393, -0.016048,
		32.173561, 28.800636, 26.469028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.831961, 29.519787, 26.815241>,  <31.486189, 28.932512, 26.480263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.831961, 29.519787, 26.815241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.112656, 29.337894, 26.595867>,  <32.281075, 29.228760, 26.464243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.112656, 29.337894, 26.595867>,  <31.831961, 29.519787, 26.815241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.112656, 29.337894, 26.595867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386661, 0.889657, -0.242906,
		0.598377, -0.041602, 0.800134,
		0.701740, -0.454729, -0.548436,
		32.323177, 29.201475, 26.431335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.365231, 30.063313, 26.704937>,  <31.831961, 29.519787, 26.815241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.365231, 30.063313, 26.704937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.512421, 29.800865, 26.441391>,  <32.600735, 29.643396, 26.283264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.512421, 29.800865, 26.441391>,  <32.365231, 30.063313, 26.704937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.512421, 29.800865, 26.441391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198698, 0.747701, -0.633611,
		0.908358, 0.102237, 0.405503,
		0.367974, -0.656118, -0.658866,
		32.622814, 29.604031, 26.243731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.116737, 30.188990, 26.539602>,  <32.365231, 30.063313, 26.704937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.116737, 30.188990, 26.539602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.952423, 29.996799, 26.229660>,  <32.853836, 29.881485, 26.043695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.952423, 29.996799, 26.229660>,  <33.116737, 30.188990, 26.539602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.952423, 29.996799, 26.229660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412836, 0.659730, -0.627951,
		0.812910, -0.577841, -0.072649,
		-0.410785, -0.480476, -0.774855,
		32.829189, 29.852657, 25.997204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.636658, 30.097870, 26.066999>,  <33.116737, 30.188990, 26.539602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.636658, 30.097870, 26.066999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.305794, 30.066334, 25.844433>,  <33.107277, 30.047413, 25.710894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.305794, 30.066334, 25.844433>,  <33.636658, 30.097870, 26.066999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.305794, 30.066334, 25.844433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418437, 0.574521, -0.703446,
		0.375132, -0.814684, -0.442229,
		-0.827155, -0.078840, -0.556415,
		33.057648, 30.042683, 25.677509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.937943, 30.071720, 25.522356>,  <33.636658, 30.097870, 26.066999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.937943, 30.071720, 25.522356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.558331, 30.154018, 25.426853>,  <33.330563, 30.203398, 25.369551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.558331, 30.154018, 25.426853>,  <33.937943, 30.071720, 25.522356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.558331, 30.154018, 25.426853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314540, 0.666338, -0.676061,
		0.019998, -0.716703, -0.697092,
		-0.949033, 0.205744, -0.238757,
		33.273621, 30.215742, 25.355227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.907291, 30.023149, 24.839626>,  <33.937943, 30.071720, 25.522356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.907291, 30.023149, 24.839626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.621841, 30.279522, 24.952724>,  <33.450573, 30.433346, 25.020582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.621841, 30.279522, 24.952724>,  <33.907291, 30.023149, 24.839626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.621841, 30.279522, 24.952724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341928, 0.670960, -0.657949,
		-0.611411, -0.372852, -0.697968,
		-0.713626, 0.640932, 0.282744,
		33.407753, 30.471802, 25.037548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.652046, 30.237844, 24.234440>,  <33.907291, 30.023149, 24.839626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.652046, 30.237844, 24.234440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.512478, 30.515217, 24.486603>,  <33.428738, 30.681641, 24.637899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.512478, 30.515217, 24.486603>,  <33.652046, 30.237844, 24.234440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.512478, 30.515217, 24.486603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328492, 0.720499, -0.610716,
		-0.877696, -0.006006, -0.479180,
		-0.348916, 0.693430, 0.630406,
		33.407803, 30.723246, 24.675724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.422012, 30.768272, 23.819798>,  <33.652046, 30.237844, 24.234440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.422012, 30.768272, 23.819798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.442951, 30.967766, 24.165867>,  <33.455513, 31.087461, 24.373508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.442951, 30.967766, 24.165867>,  <33.422012, 30.768272, 23.819798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.442951, 30.967766, 24.165867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405921, 0.780932, -0.474734,
		-0.912408, 0.376043, -0.161568,
		0.052347, 0.498735, 0.865172,
		33.458656, 31.117386, 24.425419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.267609, 31.510212, 23.661280>,  <33.422012, 30.768272, 23.819798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.267609, 31.510212, 23.661280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.470146, 31.554794, 24.003319>,  <33.591667, 31.581545, 24.208542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.470146, 31.554794, 24.003319>,  <33.267609, 31.510212, 23.661280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.470146, 31.554794, 24.003319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375706, 0.864035, -0.335094,
		-0.776184, 0.490939, 0.395623,
		0.506343, 0.111457, 0.855099,
		33.622047, 31.588232, 24.259848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.071629, 32.199017, 23.981403>,  <33.267609, 31.510212, 23.661280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.071629, 32.199017, 23.981403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.423321, 32.084179, 24.133469>,  <33.634338, 32.015278, 24.224709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.423321, 32.084179, 24.133469>,  <33.071629, 32.199017, 23.981403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.423321, 32.084179, 24.133469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373027, 0.911248, -0.174577,
		-0.296304, 0.295306, 0.908294,
		0.879235, -0.287090, 0.380164,
		33.687092, 31.998053, 24.247519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.302277, 32.756100, 24.276995>,  <33.071629, 32.199017, 23.981403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.302277, 32.756100, 24.276995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.630192, 32.530209, 24.238968>,  <33.826939, 32.394676, 24.216152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.630192, 32.530209, 24.238968>,  <33.302277, 32.756100, 24.276995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.630192, 32.530209, 24.238968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543548, 0.819565, -0.181296,
		0.180295, 0.096951, 0.978823,
		0.819786, -0.564724, -0.095066,
		33.876129, 32.360790, 24.210447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.823208, 33.158775, 24.634647>,  <33.302277, 32.756100, 24.276995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.823208, 33.158775, 24.634647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.039623, 32.909710, 24.408524>,  <34.169472, 32.760273, 24.272850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.039623, 32.909710, 24.408524>,  <33.823208, 33.158775, 24.634647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.039623, 32.909710, 24.408524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579280, 0.763217, -0.286242,
		0.609686, -0.172606, 0.773622,
		0.541035, -0.622661, -0.565310,
		34.201935, 32.722912, 24.238930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.674889, 33.518642, 25.127714>,  <33.823208, 33.158775, 24.634647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.674889, 33.518642, 25.127714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.423569, 33.397820, 24.840939>,  <33.272778, 33.325325, 24.668873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.423569, 33.397820, 24.840939>,  <33.674889, 33.518642, 25.127714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.423569, 33.397820, 24.840939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762121, 0.053878, 0.645189,
		-0.156260, 0.951765, -0.264058,
		-0.628295, -0.302061, -0.716941,
		33.235081, 33.307201, 24.625856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.080509, 33.945736, 24.890049>,  <33.674889, 33.518642, 25.127714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.080509, 33.945736, 24.890049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.954838, 33.566269, 24.875542>,  <32.879433, 33.338589, 24.866837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.954838, 33.566269, 24.875542>,  <33.080509, 33.945736, 24.890049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.954838, 33.566269, 24.875542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665674, 0.192899, 0.720880,
		-0.676881, 0.250631, -0.692110,
		-0.314182, -0.948670, -0.036269,
		32.860584, 33.281670, 24.864660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.665581, 33.662209, 25.470198>,  <33.080509, 33.945736, 24.890049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.665581, 33.662209, 25.470198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.306503, 33.692505, 25.296570>,  <32.091057, 33.710682, 25.192394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.306503, 33.692505, 25.296570>,  <32.665581, 33.662209, 25.470198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.306503, 33.692505, 25.296570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438886, -0.241208, 0.865562,
		-0.039139, 0.967513, 0.249774,
		-0.897690, 0.075745, -0.434068,
		32.037197, 33.715229, 25.166349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.200672, 34.162971, 25.905594>,  <32.665581, 33.662209, 25.470198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.200672, 34.162971, 25.905594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.985899, 33.901402, 25.692394>,  <31.857035, 33.744461, 25.564474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.985899, 33.901402, 25.692394>,  <32.200672, 34.162971, 25.905594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.985899, 33.901402, 25.692394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490701, -0.271843, 0.827837,
		-0.686235, 0.706035, -0.174920,
		-0.536931, -0.653924, -0.533000,
		31.824820, 33.705223, 25.532494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.736856, 33.884182, 26.406759>,  <32.200672, 34.162971, 25.905594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.736856, 33.884182, 26.406759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.638548, 33.634281, 26.110306>,  <31.579563, 33.484341, 25.932434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.638548, 33.634281, 26.110306>,  <31.736856, 33.884182, 26.406759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.638548, 33.634281, 26.110306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615051, -0.490447, 0.617393,
		-0.749205, 0.607573, -0.263717,
		-0.245772, -0.624754, -0.741133,
		31.564816, 33.446854, 25.887966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.147314, 33.751301, 26.495310>,  <31.736856, 33.884182, 26.406759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.147314, 33.751301, 26.495310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.253841, 33.439651, 26.268318>,  <31.317759, 33.252663, 26.132122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.253841, 33.439651, 26.268318>,  <31.147314, 33.751301, 26.495310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.253841, 33.439651, 26.268318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571465, -0.601740, 0.557975,
		-0.776210, 0.175697, -0.605499,
		0.266318, -0.779127, -0.567481,
		31.333736, 33.205914, 26.098074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.634640, 33.361172, 26.452356>,  <31.147314, 33.751301, 26.495310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.634640, 33.361172, 26.452356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.903864, 33.094463, 26.324352>,  <31.065397, 32.934437, 26.247551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.903864, 33.094463, 26.324352>,  <30.634640, 33.361172, 26.452356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.903864, 33.094463, 26.324352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505435, -0.730561, 0.459146,
		-0.539932, -0.147290, -0.828721,
		0.673059, -0.666773, -0.320008,
		31.105782, 32.894432, 26.228350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.285498, 32.774723, 26.187059>,  <30.634640, 33.361172, 26.452356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.285498, 32.774723, 26.187059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.649151, 32.643906, 26.290222>,  <30.867344, 32.565414, 26.352119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.649151, 32.643906, 26.290222>,  <30.285498, 32.774723, 26.187059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.649151, 32.643906, 26.290222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415689, -0.673757, 0.610946,
		-0.026043, -0.662640, -0.748485,
		0.909134, -0.327048, 0.257906,
		30.921890, 32.545792, 26.367594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.252066, 32.143475, 26.140385>,  <30.285498, 32.774723, 26.187059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.252066, 32.143475, 26.140385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.578077, 32.149834, 26.372066>,  <30.773684, 32.153648, 26.511076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.578077, 32.149834, 26.372066>,  <30.252066, 32.143475, 26.140385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.578077, 32.149834, 26.372066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382452, -0.736175, 0.558371,
		0.435272, -0.676605, -0.593922,
		0.815027, 0.015897, 0.579205,
		30.822586, 32.154602, 26.545828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.638618, 31.411179, 26.154673>,  <30.252066, 32.143475, 26.140385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.638618, 31.411179, 26.154673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.716196, 31.633186, 26.478237>,  <30.762743, 31.766390, 26.672377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.716196, 31.633186, 26.478237>,  <30.638618, 31.411179, 26.154673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.716196, 31.633186, 26.478237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262831, -0.765027, 0.587923,
		0.945148, -0.326632, -0.002497,
		0.193945, 0.555018, 0.808913,
		30.774380, 31.799692, 26.720911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.982716, 30.943966, 26.599476>,  <30.638618, 31.411179, 26.154673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.982716, 30.943966, 26.599476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.878868, 31.251720, 26.832935>,  <30.816559, 31.436373, 26.973011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.878868, 31.251720, 26.832935>,  <30.982716, 30.943966, 26.599476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.878868, 31.251720, 26.832935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103817, -0.623106, 0.775217,
		0.960114, 0.140669, 0.241646,
		-0.259620, 0.769384, 0.583649,
		30.800982, 31.482536, 27.008030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.293993, 30.761684, 27.204554>,  <30.982716, 30.943966, 26.599476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.293993, 30.761684, 27.204554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.038847, 31.053349, 27.303715>,  <30.885759, 31.228346, 27.363211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.038847, 31.053349, 27.303715>,  <31.293993, 30.761684, 27.204554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.038847, 31.053349, 27.303715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230511, -0.487888, 0.841920,
		0.734842, 0.479888, 0.479286,
		-0.637865, 0.729159, 0.247901,
		30.847486, 31.272097, 27.378086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.428669, 30.877010, 27.929882>,  <31.293993, 30.761684, 27.204554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.428669, 30.877010, 27.929882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.061197, 31.020668, 27.864098>,  <30.840715, 31.106863, 27.824627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.061197, 31.020668, 27.864098>,  <31.428669, 30.877010, 27.929882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.061197, 31.020668, 27.864098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307841, -0.390055, 0.867808,
		0.247521, 0.847863, 0.468894,
		-0.918677, 0.359145, -0.164460,
		30.785595, 31.128412, 27.814760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.227032, 31.115108, 28.605825>,  <31.428669, 30.877010, 27.929882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.227032, 31.115108, 28.605825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.892740, 31.080379, 28.388931>,  <30.692165, 31.059542, 28.258795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.892740, 31.080379, 28.388931>,  <31.227032, 31.115108, 28.605825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.892740, 31.080379, 28.388931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504453, -0.268801, 0.820533,
		-0.216994, 0.959275, 0.180848,
		-0.835728, -0.086821, -0.542237,
		30.642021, 31.054333, 28.226261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.709858, 31.360289, 29.068016>,  <31.227032, 31.115108, 28.605825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.709858, 31.360289, 29.068016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.546410, 31.114292, 28.798256>,  <30.448341, 30.966694, 28.636400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.546410, 31.114292, 28.798256>,  <30.709858, 31.360289, 29.068016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.546410, 31.114292, 28.798256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588509, -0.387253, 0.709713,
		-0.697630, 0.686894, -0.203688,
		-0.408619, -0.614989, -0.674403,
		30.423824, 30.929796, 28.595936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.982664, 31.545227, 29.140118>,  <30.709858, 31.360289, 29.068016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.982664, 31.545227, 29.140118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.008066, 31.179852, 28.979321>,  <30.023308, 30.960627, 28.882841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.008066, 31.179852, 28.979321>,  <29.982664, 31.545227, 29.140118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.008066, 31.179852, 28.979321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541498, -0.369896, 0.754955,
		-0.838300, 0.169736, -0.518115,
		0.063506, -0.913437, -0.401995,
		30.027119, 30.905821, 28.858723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.324770, 31.342314, 29.020954>,  <29.982664, 31.545227, 29.140118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.324770, 31.342314, 29.020954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.519236, 30.994396, 28.987244>,  <29.635916, 30.785646, 28.967018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.519236, 30.994396, 28.987244>,  <29.324770, 31.342314, 29.020954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.519236, 30.994396, 28.987244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675049, -0.435046, 0.595856,
		-0.554937, -0.232792, -0.798657,
		0.486163, -0.869795, -0.084277,
		29.665085, 30.733458, 28.961960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.773201, 30.812075, 28.856777>,  <29.324770, 31.342314, 29.020954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.773201, 30.812075, 28.856777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.100937, 30.634796, 29.002247>,  <29.297579, 30.528429, 29.089529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.100937, 30.634796, 29.002247>,  <28.773201, 30.812075, 28.856777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.100937, 30.634796, 29.002247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568358, -0.544738, 0.616628,
		-0.075181, -0.711924, -0.698221,
		0.819339, -0.443198, 0.363673,
		29.346739, 30.501837, 29.111349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.723732, 30.206659, 28.732126>,  <28.773201, 30.812075, 28.856777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.723732, 30.206659, 28.732126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.967701, 30.221111, 29.048782>,  <29.114082, 30.229782, 29.238775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.967701, 30.221111, 29.048782>,  <28.723732, 30.206659, 28.732126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.967701, 30.221111, 29.048782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626538, -0.589684, 0.509630,
		0.485229, -0.806825, -0.337025,
		0.609921, 0.036129, 0.791638,
		29.150677, 30.231951, 29.286274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.736729, 29.520178, 29.003302>,  <28.723732, 30.206659, 28.732126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.736729, 29.520178, 29.003302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.869663, 29.742470, 29.308121>,  <28.949425, 29.875845, 29.491013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.869663, 29.742470, 29.308121>,  <28.736729, 29.520178, 29.003302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.869663, 29.742470, 29.308121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396805, -0.650599, 0.647508,
		0.855627, -0.517575, 0.004299,
		0.332337, 0.555731, 0.762047,
		28.969364, 29.909189, 29.536736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.798182, 28.967764, 29.404196>,  <28.736729, 29.520178, 29.003302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.798182, 28.967764, 29.404196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.822924, 29.311172, 29.607811>,  <28.837769, 29.517218, 29.729980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.822924, 29.311172, 29.607811>,  <28.798182, 28.967764, 29.404196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.822924, 29.311172, 29.607811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272598, -0.476090, 0.836079,
		0.960138, -0.190479, 0.204581,
		0.061856, 0.858519, 0.509036,
		28.841480, 29.568727, 29.760521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.175352, 28.813850, 30.005907>,  <28.798182, 28.967764, 29.404196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.175352, 28.813850, 30.005907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.957739, 29.140102, 30.084675>,  <28.827171, 29.335854, 30.131935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.957739, 29.140102, 30.084675>,  <29.175352, 28.813850, 30.005907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.957739, 29.140102, 30.084675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391898, -0.454519, 0.799892,
		0.741920, 0.357994, 0.566917,
		-0.544031, 0.815630, 0.196920,
		28.794529, 29.384792, 30.143751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.310652, 28.933041, 30.703962>,  <29.175352, 28.813850, 30.005907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.310652, 28.933041, 30.703962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.986032, 29.155167, 30.631279>,  <28.791262, 29.288443, 30.587669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.986032, 29.155167, 30.631279>,  <29.310652, 28.933041, 30.703962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.986032, 29.155167, 30.631279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393093, -0.288832, 0.872957,
		0.432283, 0.779874, 0.452691,
		-0.811548, 0.555314, -0.181706,
		28.742569, 29.321760, 30.576767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.203869, 29.297638, 31.365337>,  <29.310652, 28.933041, 30.703962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.203869, 29.297638, 31.365337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.864697, 29.299789, 31.153305>,  <28.661194, 29.301081, 31.026085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.864697, 29.299789, 31.153305>,  <29.203869, 29.297638, 31.365337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.864697, 29.299789, 31.153305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510132, -0.280202, 0.813174,
		-0.144157, 0.959926, 0.240334,
		-0.847929, 0.005377, -0.530082,
		28.610317, 29.301403, 30.994280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.759762, 29.681181, 31.665550>,  <29.203869, 29.297638, 31.365337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.759762, 29.681181, 31.665550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.530207, 29.417603, 31.471046>,  <28.392473, 29.259457, 31.354345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.530207, 29.417603, 31.471046>,  <28.759762, 29.681181, 31.665550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.530207, 29.417603, 31.471046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364791, -0.325913, 0.872186,
		-0.733200, 0.677918, -0.053340,
		-0.573887, -0.658944, -0.486257,
		28.358040, 29.219919, 31.325169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.258751, 29.663637, 32.053513>,  <28.759762, 29.681181, 31.665550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.258751, 29.663637, 32.053513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.187757, 29.354420, 31.809906>,  <28.145161, 29.168888, 31.663742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.187757, 29.354420, 31.809906>,  <28.258751, 29.663637, 32.053513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.187757, 29.354420, 31.809906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360100, -0.524911, 0.771231,
		-0.915875, 0.356188, -0.185210,
		-0.177484, -0.773045, -0.609016,
		28.134512, 29.122505, 31.627201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.445827, 29.460054, 32.051281>,  <28.258751, 29.663637, 32.053513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.445827, 29.460054, 32.051281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.664297, 29.144711, 31.938019>,  <27.795380, 28.955503, 31.870060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.664297, 29.144711, 31.938019>,  <27.445827, 29.460054, 32.051281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.664297, 29.144711, 31.938019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502715, -0.578874, 0.642014,
		-0.670053, -0.208302, -0.712488,
		0.546174, -0.788362, -0.283160,
		27.828150, 28.908201, 31.853071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.023884, 28.941614, 32.027210>,  <27.445827, 29.460054, 32.051281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.023884, 28.941614, 32.027210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.372274, 28.747253, 32.056328>,  <27.581308, 28.630636, 32.073799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.372274, 28.747253, 32.056328>,  <27.023884, 28.941614, 32.027210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.372274, 28.747253, 32.056328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404366, -0.624754, 0.667960,
		-0.279085, -0.611213, -0.740628,
		0.870976, -0.485903, 0.072794,
		27.633568, 28.601482, 32.078167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.380404, 28.856709, 31.942533>,  <27.023884, 28.941614, 32.027210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.380404, 28.856709, 31.942533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.052456, 29.063446, 32.041073>,  <25.855686, 29.187489, 32.100197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.052456, 29.063446, 32.041073>,  <26.380404, 28.856709, 31.942533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.052456, 29.063446, 32.041073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214657, 0.676354, -0.704605,
		-0.530787, -0.524805, -0.665466,
		-0.819870, 0.516842, 0.246346,
		25.806496, 29.218498, 32.114975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.003834, 28.900822, 31.379387>,  <26.380404, 28.856709, 31.942533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.003834, 28.900822, 31.379387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.886452, 29.206497, 31.609135>,  <25.816023, 29.389902, 31.746983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.886452, 29.206497, 31.609135>,  <26.003834, 28.900822, 31.379387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.886452, 29.206497, 31.609135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258072, 0.641842, -0.722106,
		-0.920479, -0.063678, -0.385568,
		-0.293456, 0.764188, 0.574369,
		25.798414, 29.435753, 31.781445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.609161, 29.250380, 30.916821>,  <26.003834, 28.900822, 31.379387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.609161, 29.250380, 30.916821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.711273, 29.504524, 31.208340>,  <25.772541, 29.657011, 31.383251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.711273, 29.504524, 31.208340>,  <25.609161, 29.250380, 30.916821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.711273, 29.504524, 31.208340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323972, 0.653991, -0.683622,
		-0.910975, 0.410625, -0.038888,
		0.255280, 0.635361, 0.728800,
		25.787857, 29.695133, 31.426979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.218025, 29.823265, 30.678881>,  <25.609161, 29.250380, 30.916821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.218025, 29.823265, 30.678881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.467283, 29.981529, 30.948738>,  <25.616838, 30.076488, 31.110653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.467283, 29.981529, 30.948738>,  <25.218025, 29.823265, 30.678881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.467283, 29.981529, 30.948738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019669, 0.854396, -0.519250,
		-0.781858, 0.336839, 0.524631,
		0.623147, 0.395661, 0.674642,
		25.654226, 30.100227, 31.151131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.874039, 30.533119, 30.868067>,  <25.218025, 29.823265, 30.678881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.874039, 30.533119, 30.868067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.265181, 30.531837, 30.951775>,  <25.499865, 30.531069, 31.001999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.265181, 30.531837, 30.951775>,  <24.874039, 30.533119, 30.868067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.265181, 30.531837, 30.951775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119366, 0.829862, -0.545051,
		-0.171919, 0.557959, 0.811865,
		0.977852, -0.003204, 0.209271,
		25.558537, 30.530876, 31.014555>
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
