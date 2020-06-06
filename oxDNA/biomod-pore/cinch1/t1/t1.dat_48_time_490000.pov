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
	<42.433895, 32.106995, 22.646072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.581753, 32.447952, 22.794010>,  <42.670467, 32.652527, 22.882772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.581753, 32.447952, 22.794010>,  <42.433895, 32.106995, 22.646072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.581753, 32.447952, 22.794010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924883, 0.299326, 0.234511,
		0.089191, -0.428751, 0.899009,
		0.369644, 0.852395, 0.369847,
		42.692646, 32.703671, 22.904964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.234032, 32.214916, 23.379622>,  <42.433895, 32.106995, 22.646072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.234032, 32.214916, 23.379622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.283279, 32.550785, 23.168037>,  <42.312828, 32.752304, 23.041088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.283279, 32.550785, 23.168037>,  <42.234032, 32.214916, 23.379622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.283279, 32.550785, 23.168037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.974173, 0.203921, 0.096966,
		0.189285, 0.503359, 0.843090,
		0.123115, 0.839670, -0.528958,
		42.320213, 32.802685, 23.009350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.752140, 32.714455, 23.706465>,  <42.234032, 32.214916, 23.379622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.752140, 32.714455, 23.706465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.839771, 32.838017, 23.336258>,  <41.892349, 32.912151, 23.114134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.839771, 32.838017, 23.336258>,  <41.752140, 32.714455, 23.706465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.839771, 32.838017, 23.336258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964301, -0.076072, -0.253647,
		-0.148758, 0.948047, 0.281208,
		0.219078, 0.308901, -0.925519,
		41.905495, 32.930687, 23.058601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.101337, 32.926407, 23.495407>,  <41.752140, 32.714455, 23.706465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.101337, 32.926407, 23.495407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.317616, 32.900139, 23.159946>,  <41.447384, 32.884380, 22.958670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.317616, 32.900139, 23.159946>,  <41.101337, 32.926407, 23.495407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.317616, 32.900139, 23.159946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837050, 0.057114, -0.544136,
		0.083631, 0.996206, -0.024086,
		0.540696, -0.065668, -0.838651,
		41.479824, 32.880440, 22.908352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.322472, 32.834160, 23.483360>,  <41.101337, 32.926407, 23.495407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.322472, 32.834160, 23.483360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.022022, 32.725853, 23.724190>,  <39.841751, 32.660870, 23.868687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.022022, 32.725853, 23.724190>,  <40.322472, 32.834160, 23.483360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.022022, 32.725853, 23.724190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659689, -0.273556, 0.699984,
		-0.024831, 0.922959, 0.384097,
		-0.751128, -0.270766, 0.602073,
		39.796684, 32.644623, 23.904812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.705536, 32.881523, 24.148354>,  <40.322472, 32.834160, 23.483360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.705536, 32.881523, 24.148354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.394207, 32.639935, 24.216988>,  <40.207409, 32.494984, 24.258167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.394207, 32.639935, 24.216988>,  <40.705536, 32.881523, 24.148354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.394207, 32.639935, 24.216988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527605, -0.480990, 0.700201,
		-0.340368, 0.635510, 0.693020,
		-0.778320, -0.603967, 0.171585,
		40.160709, 32.458744, 24.268463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.765079, 32.743610, 24.832695>,  <40.705536, 32.881523, 24.148354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.765079, 32.743610, 24.832695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.508106, 32.452286, 24.737328>,  <40.353924, 32.277489, 24.680107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.508106, 32.452286, 24.737328>,  <40.765079, 32.743610, 24.832695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.508106, 32.452286, 24.737328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470224, -0.620288, 0.627800,
		-0.605124, 0.291206, 0.740961,
		-0.642429, -0.728314, -0.238419,
		40.315376, 32.233791, 24.665802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.460548, 32.435383, 25.509369>,  <40.765079, 32.743610, 24.832695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.460548, 32.435383, 25.509369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.399353, 32.155018, 25.230709>,  <40.362637, 31.986799, 25.063513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.399353, 32.155018, 25.230709>,  <40.460548, 32.435383, 25.509369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.399353, 32.155018, 25.230709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120276, -0.712914, 0.690860,
		-0.980882, 0.021901, 0.193368,
		-0.152985, -0.700910, -0.696650,
		40.353458, 31.944744, 25.021713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.914944, 31.870905, 25.783188>,  <40.460548, 32.435383, 25.509369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.914944, 31.870905, 25.783188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.134090, 31.698643, 25.496307>,  <40.265579, 31.595285, 25.324179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.134090, 31.698643, 25.496307>,  <39.914944, 31.870905, 25.783188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.134090, 31.698643, 25.496307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124026, -0.806027, 0.578738,
		-0.827324, -0.406020, -0.388180,
		0.547863, -0.430659, -0.717202,
		40.298450, 31.569447, 25.281147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.596039, 31.200903, 25.657398>,  <39.914944, 31.870905, 25.783188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.596039, 31.200903, 25.657398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.966381, 31.189228, 25.506702>,  <40.188587, 31.182224, 25.416285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.966381, 31.189228, 25.506702>,  <39.596039, 31.200903, 25.657398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.966381, 31.189228, 25.506702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183561, -0.836729, 0.515937,
		-0.330285, -0.546840, -0.769336,
		0.925860, -0.029186, -0.376737,
		40.244141, 31.180471, 25.393681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.736523, 30.529150, 25.757523>,  <39.596039, 31.200903, 25.657398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.736523, 30.529150, 25.757523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.101662, 30.654232, 25.652508>,  <40.320744, 30.729280, 25.589499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.101662, 30.654232, 25.652508>,  <39.736523, 30.529150, 25.757523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.101662, 30.654232, 25.652508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407937, -0.725668, 0.554070,
		-0.017256, -0.612880, -0.789987,
		0.912847, 0.312704, -0.262539,
		40.375515, 30.748043, 25.573746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.040394, 30.067944, 25.380919>,  <39.736523, 30.529150, 25.757523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.040394, 30.067944, 25.380919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.348083, 30.267967, 25.540035>,  <40.532696, 30.387981, 25.635506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.348083, 30.267967, 25.540035>,  <40.040394, 30.067944, 25.380919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.348083, 30.267967, 25.540035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342277, -0.848153, 0.404329,
		0.539578, -0.174863, -0.823577,
		0.769222, 0.500059, 0.397793,
		40.578850, 30.417984, 25.659372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.687344, 29.735996, 25.219128>,  <40.040394, 30.067944, 25.380919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.687344, 29.735996, 25.219128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.739037, 29.949780, 25.553230>,  <40.770054, 30.078049, 25.753693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.739037, 29.949780, 25.553230>,  <40.687344, 29.735996, 25.219128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.739037, 29.949780, 25.553230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369502, -0.807612, 0.459599,
		0.920199, 0.249233, -0.301855,
		0.129235, 0.534459, 0.835256,
		40.777805, 30.110117, 25.803806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.470680, 29.674616, 25.492123>,  <40.687344, 29.735996, 25.219128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.470680, 29.674616, 25.492123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.243313, 29.786179, 25.801731>,  <41.106892, 29.853117, 25.987495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.243313, 29.786179, 25.801731>,  <41.470680, 29.674616, 25.492123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.243313, 29.786179, 25.801731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388320, -0.738453, 0.551266,
		0.725330, 0.613919, 0.311448,
		-0.568422, 0.278908, 0.774020,
		41.072784, 29.869850, 26.033937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.936092, 29.502924, 26.033501>,  <41.470680, 29.674616, 25.492123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.936092, 29.502924, 26.033501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.581501, 29.559258, 26.209831>,  <41.368748, 29.593058, 26.315630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.581501, 29.559258, 26.209831>,  <41.936092, 29.502924, 26.033501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.581501, 29.559258, 26.209831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259424, -0.637585, 0.725385,
		0.383223, 0.757397, 0.528668,
		-0.886476, 0.140835, 0.440825,
		41.315559, 29.601507, 26.342079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.062569, 29.677399, 26.720432>,  <41.936092, 29.502924, 26.033501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.062569, 29.677399, 26.720432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.703262, 29.503128, 26.697460>,  <41.487679, 29.398565, 26.683678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.703262, 29.503128, 26.697460>,  <42.062569, 29.677399, 26.720432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.703262, 29.503128, 26.697460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255527, -0.624162, 0.738327,
		-0.357517, 0.648542, 0.671993,
		-0.898269, -0.435677, -0.057428,
		41.433781, 29.372425, 26.680231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.935802, 29.484793, 27.417971>,  <42.062569, 29.677399, 26.720432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.935802, 29.484793, 27.417971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.668766, 29.265270, 27.216721>,  <41.508545, 29.133556, 27.095970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.668766, 29.265270, 27.216721>,  <41.935802, 29.484793, 27.417971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.668766, 29.265270, 27.216721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245555, -0.800250, 0.547086,
		-0.702870, 0.241684, 0.669001,
		-0.667590, -0.548807, -0.503125,
		41.468491, 29.100628, 27.065783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.599499, 29.118906, 27.977430>,  <41.935802, 29.484793, 27.417971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.599499, 29.118906, 27.977430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.514378, 28.928913, 27.635880>,  <41.463303, 28.814917, 27.430950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.514378, 28.928913, 27.635880>,  <41.599499, 29.118906, 27.977430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.514378, 28.928913, 27.635880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169349, -0.878597, 0.446529,
		-0.962307, -0.049579, 0.267408,
		-0.212805, -0.474984, -0.853876,
		41.450535, 28.786419, 27.379717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.213310, 28.617731, 28.209805>,  <41.599499, 29.118906, 27.977430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.213310, 28.617731, 28.209805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.303741, 28.498390, 27.838886>,  <41.358002, 28.426786, 27.616335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.303741, 28.498390, 27.838886>,  <41.213310, 28.617731, 28.209805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.303741, 28.498390, 27.838886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145886, -0.930835, 0.335057,
		-0.963122, -0.211029, -0.166919,
		0.226081, -0.298350, -0.927295,
		41.371567, 28.408886, 27.560698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.793697, 28.133053, 28.046989>,  <41.213310, 28.617731, 28.209805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.793697, 28.133053, 28.046989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.104446, 28.061699, 27.805447>,  <41.290897, 28.018887, 27.660521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.104446, 28.061699, 27.805447>,  <40.793697, 28.133053, 28.046989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.104446, 28.061699, 27.805447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184439, -0.852491, 0.489123,
		-0.602034, -0.491363, -0.629379,
		0.776876, -0.178387, -0.603855,
		41.337509, 28.008183, 27.624290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.763199, 27.460016, 27.869862>,  <40.793697, 28.133053, 28.046989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.763199, 27.460016, 27.869862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.143749, 27.564522, 27.804604>,  <41.372082, 27.627226, 27.765448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.143749, 27.564522, 27.804604>,  <40.763199, 27.460016, 27.869862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.143749, 27.564522, 27.804604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305258, -0.870517, 0.386029,
		-0.041166, -0.417062, -0.907945,
		0.951380, 0.261266, -0.163147,
		41.429165, 27.642902, 27.755659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.108746, 26.870951, 27.696274>,  <40.763199, 27.460016, 27.869862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.108746, 26.870951, 27.696274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.418545, 27.101173, 27.801266>,  <41.604424, 27.239307, 27.864260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.418545, 27.101173, 27.801266>,  <41.108746, 26.870951, 27.696274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.418545, 27.101173, 27.801266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419397, -0.777822, 0.468079,
		0.473567, -0.252442, -0.843805,
		0.774493, 0.575557, 0.262478,
		41.650894, 27.273840, 27.880009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.717991, 26.443775, 27.595201>,  <41.108746, 26.870951, 27.696274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.717991, 26.443775, 27.595201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.862896, 26.727386, 27.837208>,  <41.949841, 26.897554, 27.982410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.862896, 26.727386, 27.837208>,  <41.717991, 26.443775, 27.595201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.862896, 26.727386, 27.837208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599125, -0.674378, 0.431582,
		0.714013, 0.206132, -0.669100,
		0.362264, 0.709030, 0.605014,
		41.971577, 26.940096, 28.018711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.494503, 26.265369, 27.667261>,  <41.717991, 26.443775, 27.595201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.494503, 26.265369, 27.667261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.376144, 26.482658, 27.981548>,  <42.305130, 26.613031, 28.170120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.376144, 26.482658, 27.981548>,  <42.494503, 26.265369, 27.667261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.376144, 26.482658, 27.981548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591976, -0.541271, 0.597152,
		0.749674, 0.641820, -0.161417,
		-0.295893, 0.543224, 0.785719,
		42.287376, 26.645626, 28.217264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.102066, 26.312859, 28.157040>,  <42.494503, 26.265369, 27.667261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.102066, 26.312859, 28.157040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.784618, 26.392879, 28.386871>,  <42.594151, 26.440891, 28.524771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.784618, 26.392879, 28.386871>,  <43.102066, 26.312859, 28.157040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.784618, 26.392879, 28.386871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435958, -0.471762, 0.766408,
		0.424387, 0.858731, 0.287187,
		-0.793622, 0.200052, 0.574580,
		42.546532, 26.452894, 28.559246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.362934, 26.566343, 28.812075>,  <43.102066, 26.312859, 28.157040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.362934, 26.566343, 28.812075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.989525, 26.474979, 28.922615>,  <42.765480, 26.420160, 28.988939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.989525, 26.474979, 28.922615>,  <43.362934, 26.566343, 28.812075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.989525, 26.474979, 28.922615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358474, -0.581299, 0.730471,
		-0.006203, 0.780974, 0.624532,
		-0.933519, -0.228409, 0.276353,
		42.709469, 26.406456, 29.005522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.319988, 26.670876, 29.497219>,  <43.362934, 26.566343, 28.812075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.319988, 26.670876, 29.497219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.024883, 26.405128, 29.449360>,  <42.847820, 26.245680, 29.420645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.024883, 26.405128, 29.449360>,  <43.319988, 26.670876, 29.497219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.024883, 26.405128, 29.449360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306638, -0.487716, 0.817377,
		-0.601392, 0.566346, 0.563542,
		-0.737767, -0.664368, -0.119646,
		42.803555, 26.205818, 29.413465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.901054, 26.542189, 30.106880>,  <43.319988, 26.670876, 29.497219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.901054, 26.542189, 30.106880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.828915, 26.195171, 29.921474>,  <42.785629, 25.986961, 29.810232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.828915, 26.195171, 29.921474>,  <42.901054, 26.542189, 30.106880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.828915, 26.195171, 29.921474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198253, -0.493630, 0.846774,
		-0.963416, 0.060823, 0.261020,
		-0.180351, -0.867543, -0.463512,
		42.774811, 25.934908, 29.782421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.397881, 26.060852, 30.423101>,  <42.901054, 26.542189, 30.106880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.397881, 26.060852, 30.423101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.696575, 25.860455, 30.248112>,  <42.875793, 25.740217, 30.143118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.696575, 25.860455, 30.248112>,  <42.397881, 26.060852, 30.423101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.696575, 25.860455, 30.248112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218041, -0.437004, 0.872631,
		-0.628361, -0.747017, -0.217091,
		0.746740, -0.500993, -0.437476,
		42.920597, 25.710157, 30.116869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.317574, 25.326912, 30.546535>,  <42.397881, 26.060852, 30.423101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.317574, 25.326912, 30.546535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.708405, 25.408516, 30.522198>,  <42.942902, 25.457478, 30.507595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.708405, 25.408516, 30.522198>,  <42.317574, 25.326912, 30.546535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.708405, 25.408516, 30.522198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149962, -0.456704, 0.876888,
		0.151108, -0.865910, -0.476829,
		0.977076, 0.204011, -0.060842,
		43.001526, 25.469719, 30.503944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.875179, 24.950142, 30.950411>,  <42.317574, 25.326912, 30.546535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.875179, 24.950142, 30.950411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.624371, 24.666790, 31.080055>,  <41.473885, 24.496778, 31.157841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.624371, 24.666790, 31.080055>,  <41.875179, 24.950142, 30.950411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.624371, 24.666790, 31.080055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760287, 0.647127, -0.056473,
		-0.169735, -0.281825, -0.944333,
		-0.627019, -0.708379, 0.324109,
		41.436264, 24.454277, 31.177288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.344975, 24.987341, 30.465908>,  <41.875179, 24.950142, 30.950411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.344975, 24.987341, 30.465908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.205078, 24.846504, 30.813175>,  <41.121140, 24.762003, 31.021536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.205078, 24.846504, 30.813175>,  <41.344975, 24.987341, 30.465908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.205078, 24.846504, 30.813175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727263, 0.686202, -0.014682,
		-0.590568, -0.636520, -0.496056,
		-0.349740, -0.352092, 0.868167,
		41.100155, 24.740877, 31.073626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.562538, 24.795359, 30.344906>,  <41.344975, 24.987341, 30.465908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.562538, 24.795359, 30.344906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.709381, 24.911308, 30.698448>,  <40.797489, 24.980879, 30.910574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.709381, 24.911308, 30.698448>,  <40.562538, 24.795359, 30.344906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.709381, 24.911308, 30.698448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552525, 0.832361, -0.043496,
		-0.748296, -0.472385, 0.465732,
		0.367110, 0.289876, 0.883856,
		40.819515, 24.998272, 30.963606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.962246, 25.051758, 30.737709>,  <40.562538, 24.795359, 30.344906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.962246, 25.051758, 30.737709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.740898, 25.122852, 31.063210>,  <39.608089, 25.165508, 31.258511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.740898, 25.122852, 31.063210>,  <39.962246, 25.051758, 30.737709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.740898, 25.122852, 31.063210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751700, 0.527394, 0.395984,
		-0.358787, 0.830823, -0.425448,
		-0.553371, 0.177735, 0.813751,
		39.574886, 25.176172, 31.307335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.969868, 25.760178, 30.888964>,  <39.962246, 25.051758, 30.737709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.969868, 25.760178, 30.888964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.932564, 25.547630, 31.225761>,  <39.910179, 25.420103, 31.427839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.932564, 25.547630, 31.225761>,  <39.969868, 25.760178, 30.888964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.932564, 25.547630, 31.225761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782624, 0.483642, 0.391905,
		-0.615469, 0.695514, 0.370755,
		-0.093263, -0.531367, 0.841992,
		39.904587, 25.388220, 31.478359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.889122, 26.241350, 31.522444>,  <39.969868, 25.760178, 30.888964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.889122, 26.241350, 31.522444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.066765, 25.890186, 31.594048>,  <40.173351, 25.679489, 31.637011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.066765, 25.890186, 31.594048>,  <39.889122, 26.241350, 31.522444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.066765, 25.890186, 31.594048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848066, 0.476344, 0.232121,
		-0.289052, 0.048727, 0.956073,
		0.444109, -0.877908, 0.179011,
		40.199997, 25.626814, 31.647751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.435360, 26.569546, 31.067047>,  <39.889122, 26.241350, 31.522444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.435360, 26.569546, 31.067047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.814907, 26.544704, 30.943245>,  <40.042637, 26.529799, 30.868963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.814907, 26.544704, 30.943245>,  <39.435360, 26.569546, 31.067047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.814907, 26.544704, 30.943245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092315, 0.883003, -0.460200,
		0.301873, 0.465241, 0.832120,
		0.948868, -0.062105, -0.309504,
		40.099567, 26.526073, 30.850393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.676819, 27.214439, 31.264322>,  <39.435360, 26.569546, 31.067047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.676819, 27.214439, 31.264322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.937817, 27.050594, 31.009300>,  <40.094414, 26.952288, 30.856287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.937817, 27.050594, 31.009300>,  <39.676819, 27.214439, 31.264322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.937817, 27.050594, 31.009300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079381, 0.799752, -0.595059,
		0.753628, 0.438880, 0.489315,
		0.652490, -0.409611, -0.637554,
		40.133564, 26.927711, 30.818033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.062157, 27.759336, 31.127134>,  <39.676819, 27.214439, 31.264322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.062157, 27.759336, 31.127134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.089230, 27.504086, 30.820354>,  <40.105473, 27.350935, 30.636286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.089230, 27.504086, 30.820354>,  <40.062157, 27.759336, 31.127134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.089230, 27.504086, 30.820354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224274, 0.739310, -0.634918,
		0.972173, 0.214977, -0.093079,
		0.067678, -0.638126, -0.766952,
		40.109531, 27.312647, 30.590269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.422546, 28.130680, 30.688980>,  <40.062157, 27.759336, 31.127134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.422546, 28.130680, 30.688980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.256615, 27.852245, 30.454586>,  <40.157055, 27.685184, 30.313950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.256615, 27.852245, 30.454586>,  <40.422546, 28.130680, 30.688980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.256615, 27.852245, 30.454586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213081, 0.700423, -0.681179,
		0.884598, -0.157710, -0.438878,
		-0.414829, -0.696086, -0.585988,
		40.132168, 27.643419, 30.278790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.739201, 28.144644, 30.049297>,  <40.422546, 28.130680, 30.688980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.739201, 28.144644, 30.049297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.391949, 27.970161, 29.954582>,  <40.183598, 27.865473, 29.897753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.391949, 27.970161, 29.954582>,  <40.739201, 28.144644, 30.049297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.391949, 27.970161, 29.954582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170295, 0.709894, -0.683410,
		0.466200, -0.552968, -0.690567,
		-0.868134, -0.436206, -0.236786,
		40.131508, 27.839300, 29.883547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.661072, 28.060785, 29.245270>,  <40.739201, 28.144644, 30.049297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.661072, 28.060785, 29.245270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.285522, 28.062096, 29.382973>,  <40.060192, 28.062881, 29.465595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.285522, 28.062096, 29.382973>,  <40.661072, 28.060785, 29.245270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.285522, 28.062096, 29.382973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281136, 0.569878, -0.772141,
		-0.198716, -0.821723, -0.534120,
		-0.938869, 0.003276, 0.344260,
		40.003860, 28.063078, 29.486250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.164555, 27.937325, 28.611959>,  <40.661072, 28.060785, 29.245270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.164555, 27.937325, 28.611959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.950478, 28.123772, 28.893753>,  <39.822029, 28.235640, 29.062830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.950478, 28.123772, 28.893753>,  <40.164555, 27.937325, 28.611959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.950478, 28.123772, 28.893753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297977, 0.676195, -0.673773,
		-0.790426, -0.570521, -0.223005,
		-0.535197, 0.466117, 0.704485,
		39.789917, 28.263607, 29.105099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.458321, 28.001863, 28.338844>,  <40.164555, 27.937325, 28.611959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.458321, 28.001863, 28.338844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.502487, 28.280636, 28.622280>,  <39.528988, 28.447899, 28.792341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.502487, 28.280636, 28.622280>,  <39.458321, 28.001863, 28.338844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.502487, 28.280636, 28.622280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452299, 0.670079, -0.588575,
		-0.885005, -0.255508, 0.389206,
		0.110414, 0.696929, 0.708589,
		39.535610, 28.489716, 28.834856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789513, 28.289352, 28.455336>,  <39.458321, 28.001863, 28.338844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.789513, 28.289352, 28.455336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.039768, 28.562279, 28.606606>,  <39.189922, 28.726034, 28.697367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.039768, 28.562279, 28.606606>,  <38.789513, 28.289352, 28.455336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.039768, 28.562279, 28.606606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438247, 0.708456, -0.553199,
		-0.645378, 0.180370, 0.742263,
		0.625642, 0.682317, 0.378175,
		39.227459, 28.766973, 28.720058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.385269, 28.900785, 28.454950>,  <38.789513, 28.289352, 28.455336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.385269, 28.900785, 28.454950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.741337, 29.070393, 28.521652>,  <38.954979, 29.172157, 28.561672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.741337, 29.070393, 28.521652>,  <38.385269, 28.900785, 28.454950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.741337, 29.070393, 28.521652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267795, 0.782997, -0.561428,
		-0.368622, 0.455111, 0.810550,
		0.890171, 0.424016, 0.166753,
		39.008389, 29.197598, 28.571678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.277748, 29.683584, 28.656946>,  <38.385269, 28.900785, 28.454950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.277748, 29.683584, 28.656946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.651047, 29.652035, 28.516754>,  <38.875027, 29.633104, 28.432640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.651047, 29.652035, 28.516754>,  <38.277748, 29.683584, 28.656946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.651047, 29.652035, 28.516754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145974, 0.808169, -0.570574,
		0.328251, 0.583645, 0.742705,
		0.933243, -0.078876, -0.350479,
		38.931019, 29.628372, 28.411610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.592304, 30.430273, 28.699804>,  <38.277748, 29.683584, 28.656946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.592304, 30.430273, 28.699804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.776657, 30.200848, 28.428921>,  <38.887268, 30.063192, 28.266390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.776657, 30.200848, 28.428921>,  <38.592304, 30.430273, 28.699804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.776657, 30.200848, 28.428921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244169, 0.651684, -0.718115,
		0.853210, 0.496321, 0.160305,
		0.460883, -0.573561, -0.677210,
		38.914921, 30.028780, 28.225758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.056507, 30.914015, 28.377348>,  <38.592304, 30.430273, 28.699804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.056507, 30.914015, 28.377348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.959873, 30.607998, 28.138569>,  <38.901894, 30.424387, 27.995300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.959873, 30.607998, 28.138569>,  <39.056507, 30.914015, 28.377348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.959873, 30.607998, 28.138569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062131, 0.626102, -0.777262,
		0.968389, -0.150683, -0.198787,
		-0.241581, -0.765043, -0.596949,
		38.887398, 30.378485, 27.959484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.366291, 31.103611, 27.723858>,  <39.056507, 30.914015, 28.377348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.366291, 31.103611, 27.723858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.114616, 30.815037, 27.608166>,  <38.963612, 30.641893, 27.538750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.114616, 30.815037, 27.608166>,  <39.366291, 31.103611, 27.723858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.114616, 30.815037, 27.608166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218036, 0.521003, -0.825237,
		0.746044, -0.456167, -0.485108,
		-0.629188, -0.721435, -0.289230,
		38.925861, 30.598606, 27.521397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.539444, 30.945784, 26.969715>,  <39.366291, 31.103611, 27.723858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.539444, 30.945784, 26.969715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.172741, 30.794895, 27.022274>,  <38.952721, 30.704361, 27.053810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.172741, 30.794895, 27.022274>,  <39.539444, 30.945784, 26.969715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.172741, 30.794895, 27.022274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270489, 0.344180, -0.899097,
		0.293933, -0.859794, -0.417563,
		-0.916755, -0.377220, 0.131399,
		38.897717, 30.681728, 27.061693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.295895, 30.905663, 26.253578>,  <39.539444, 30.945784, 26.969715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.295895, 30.905663, 26.253578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.974380, 30.904846, 26.491547>,  <38.781471, 30.904356, 26.634327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.974380, 30.904846, 26.491547>,  <39.295895, 30.905663, 26.253578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.974380, 30.904846, 26.491547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527237, 0.465693, -0.710740,
		-0.275599, -0.884944, -0.375392,
		-0.803783, -0.002041, 0.594920,
		38.733246, 30.904234, 26.670023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.800785, 30.671778, 25.810625>,  <39.295895, 30.905663, 26.253578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.800785, 30.671778, 25.810625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.578827, 30.840408, 26.097500>,  <38.445652, 30.941586, 26.269625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.578827, 30.840408, 26.097500>,  <38.800785, 30.671778, 25.810625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.578827, 30.840408, 26.097500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585888, 0.413997, -0.696665,
		-0.590611, -0.806772, 0.017270,
		-0.554900, 0.421576, 0.717189,
		38.412357, 30.966881, 26.312656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.136665, 30.446392, 25.648211>,  <38.800785, 30.671778, 25.810625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.136665, 30.446392, 25.648211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.135101, 30.767742, 25.886395>,  <38.134163, 30.960552, 26.029305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.135101, 30.767742, 25.886395>,  <38.136665, 30.446392, 25.648211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.135101, 30.767742, 25.886395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488144, 0.518165, -0.702296,
		-0.872754, -0.293412, 0.390140,
		-0.003905, 0.803377, 0.595458,
		38.133930, 31.008755, 26.065033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.426765, 30.588358, 25.616205>,  <38.136665, 30.446392, 25.648211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.426765, 30.588358, 25.616205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.615746, 30.917068, 25.743626>,  <37.729134, 31.114294, 25.820078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.615746, 30.917068, 25.743626>,  <37.426765, 30.588358, 25.616205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.615746, 30.917068, 25.743626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522825, 0.552288, -0.649332,
		-0.709538, 0.140230, 0.690574,
		0.472451, 0.821775, 0.318553,
		37.757481, 31.163601, 25.839191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.913044, 31.125622, 25.689661>,  <37.426765, 30.588358, 25.616205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.913044, 31.125622, 25.689661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.262283, 31.316570, 25.650021>,  <37.471825, 31.431139, 25.626236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.262283, 31.316570, 25.650021>,  <36.913044, 31.125622, 25.689661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.262283, 31.316570, 25.650021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361470, 0.497392, -0.788632,
		-0.327179, 0.724373, 0.606826,
		0.873094, 0.477373, -0.099103,
		37.524212, 31.459782, 25.620289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.812138, 31.616520, 25.296650>,  <36.913044, 31.125622, 25.689661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.812138, 31.616520, 25.296650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.210091, 31.655468, 25.285820>,  <37.448860, 31.678837, 25.279322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.210091, 31.655468, 25.285820>,  <36.812138, 31.616520, 25.296650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.210091, 31.655468, 25.285820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073112, 0.508457, -0.857978,
		-0.069778, 0.855564, 0.512973,
		0.994880, 0.097372, -0.027073,
		37.508556, 31.684679, 25.277699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.825405, 32.364952, 25.043514>,  <36.812138, 31.616520, 25.296650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.825405, 32.364952, 25.043514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.140873, 32.139771, 24.944656>,  <37.330154, 32.004662, 24.885342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.140873, 32.139771, 24.944656>,  <36.825405, 32.364952, 25.043514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.140873, 32.139771, 24.944656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193939, 0.153663, -0.968904,
		0.583429, 0.812076, 0.012010,
		0.788669, -0.562957, -0.247145,
		37.377472, 31.970882, 24.870512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.615173, 33.002422, 24.895500>,  <36.825405, 32.364952, 25.043514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.615173, 33.002422, 24.895500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.371723, 33.268196, 24.722019>,  <36.225655, 33.427662, 24.617929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.371723, 33.268196, 24.722019>,  <36.615173, 33.002422, 24.895500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.371723, 33.268196, 24.722019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587844, -0.744715, -0.315973,
		-0.532929, 0.062641, 0.843838,
		-0.608626, 0.664436, -0.433703,
		36.189137, 33.467525, 24.591908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.945320, 32.913948, 25.119072>,  <36.615173, 33.002422, 24.895500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.945320, 32.913948, 25.119072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.948135, 33.074005, 24.752502>,  <35.949825, 33.170040, 24.532560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.948135, 33.074005, 24.752502>,  <35.945320, 32.913948, 25.119072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.948135, 33.074005, 24.752502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582367, -0.743353, -0.329051,
		-0.812896, 0.536012, 0.227798,
		0.007040, 0.400146, -0.916424,
		35.950249, 33.194050, 24.477575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.259018, 33.148914, 24.839272>,  <35.945320, 32.913948, 25.119072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.259018, 33.148914, 24.839272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.485172, 33.018280, 24.536304>,  <35.620865, 32.939899, 24.354525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.485172, 33.018280, 24.536304>,  <35.259018, 33.148914, 24.839272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.485172, 33.018280, 24.536304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635617, -0.757737, -0.147737,
		-0.525675, 0.564956, -0.635996,
		0.565382, -0.326589, -0.757419,
		35.654785, 32.920303, 24.309078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.918926, 33.112759, 24.205650>,  <35.259018, 33.148914, 24.839272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.918926, 33.112759, 24.205650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.167259, 32.799183, 24.205956>,  <35.316261, 32.611038, 24.206139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.167259, 32.799183, 24.205956>,  <34.918926, 33.112759, 24.205650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.167259, 32.799183, 24.205956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771247, -0.610956, -0.178636,
		0.140505, 0.110316, -0.983915,
		0.620835, -0.783941, 0.000761,
		35.353508, 32.563999, 24.206184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.796982, 32.733791, 23.550163>,  <34.918926, 33.112759, 24.205650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.796982, 32.733791, 23.550163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.948975, 32.455406, 23.793884>,  <35.040169, 32.288376, 23.940117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.948975, 32.455406, 23.793884>,  <34.796982, 32.733791, 23.550163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.948975, 32.455406, 23.793884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747977, -0.618715, -0.240256,
		0.544193, -0.364451, -0.755665,
		0.379979, -0.695965, 0.609302,
		35.062969, 32.246616, 23.976675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.856964, 32.114895, 23.207945>,  <34.796982, 32.733791, 23.550163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.856964, 32.114895, 23.207945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.815380, 32.023518, 23.595142>,  <34.790428, 31.968693, 23.827461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.815380, 32.023518, 23.595142>,  <34.856964, 32.114895, 23.207945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.815380, 32.023518, 23.595142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584693, -0.773284, -0.245285,
		0.804566, -0.591478, -0.053176,
		-0.103961, -0.228440, 0.967992,
		34.784191, 31.954987, 23.885540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.856014, 31.345190, 23.234835>,  <34.856964, 32.114895, 23.207945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.856014, 31.345190, 23.234835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.709866, 31.463772, 23.587791>,  <34.622177, 31.534920, 23.799566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.709866, 31.463772, 23.587791>,  <34.856014, 31.345190, 23.234835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.709866, 31.463772, 23.587791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576325, -0.816442, 0.035657,
		0.730994, -0.495517, 0.469159,
		-0.365373, 0.296453, 0.882393,
		34.600254, 31.552708, 23.852510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.638142, 30.743042, 23.717571>,  <34.856014, 31.345190, 23.234835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.638142, 30.743042, 23.717571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.445847, 31.055538, 23.876850>,  <34.330471, 31.243036, 23.972418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.445847, 31.055538, 23.876850>,  <34.638142, 30.743042, 23.717571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.445847, 31.055538, 23.876850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741326, -0.604640, 0.291283,
		0.468327, -0.155163, 0.869824,
		-0.480735, 0.781239, 0.398195,
		34.301628, 31.289909, 23.996309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.335667, 30.409309, 24.234459>,  <34.638142, 30.743042, 23.717571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.335667, 30.409309, 24.234459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.133881, 30.754051, 24.213573>,  <34.012810, 30.960896, 24.201042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.133881, 30.754051, 24.213573>,  <34.335667, 30.409309, 24.234459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.133881, 30.754051, 24.213573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801226, -0.444720, 0.400327,
		0.321802, 0.243785, 0.914884,
		-0.504461, 0.861855, -0.052215,
		33.982544, 31.012608, 24.197908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.214058, 30.613756, 24.859301>,  <34.335667, 30.409309, 24.234459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.214058, 30.613756, 24.859301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.910580, 30.760197, 24.643761>,  <33.728493, 30.848061, 24.514437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.910580, 30.760197, 24.643761>,  <34.214058, 30.613756, 24.859301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.910580, 30.760197, 24.643761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649954, -0.481410, 0.588051,
		-0.044121, 0.796376, 0.603190,
		-0.758692, 0.366100, -0.538848,
		33.682972, 30.870028, 24.482107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.637260, 30.725546, 25.382101>,  <34.214058, 30.613756, 24.859301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.637260, 30.725546, 25.382101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.450497, 30.749790, 25.029209>,  <33.338440, 30.764338, 24.817474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.450497, 30.749790, 25.029209>,  <33.637260, 30.725546, 25.382101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.450497, 30.749790, 25.029209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815270, -0.415948, 0.402892,
		-0.342541, 0.907366, 0.243624,
		-0.466906, 0.060612, -0.882227,
		33.310425, 30.767973, 24.764542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.963448, 30.892830, 25.576889>,  <33.637260, 30.725546, 25.382101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.963448, 30.892830, 25.576889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.904766, 30.729748, 25.216389>,  <32.869556, 30.631899, 25.000088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.904766, 30.729748, 25.216389>,  <32.963448, 30.892830, 25.576889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.904766, 30.729748, 25.216389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717308, -0.583530, 0.380738,
		-0.681136, 0.702331, -0.206843,
		-0.146705, -0.407705, -0.901252,
		32.860756, 30.607437, 24.946012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.379791, 30.683949, 25.651089>,  <32.963448, 30.892830, 25.576889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.379791, 30.683949, 25.651089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.499298, 30.481010, 25.327770>,  <32.571003, 30.359247, 25.133780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.499298, 30.481010, 25.327770>,  <32.379791, 30.683949, 25.651089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.499298, 30.481010, 25.327770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654897, -0.725068, 0.213037,
		-0.694151, 0.465701, -0.548886,
		0.298769, -0.507344, -0.808294,
		32.588928, 30.328808, 25.085281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.749050, 30.306686, 25.425718>,  <32.379791, 30.683949, 25.651089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.749050, 30.306686, 25.425718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.064148, 30.114433, 25.271603>,  <32.253208, 29.999081, 25.179132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.064148, 30.114433, 25.271603>,  <31.749050, 30.306686, 25.425718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.064148, 30.114433, 25.271603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410291, -0.875922, 0.253815,
		-0.459475, -0.041862, -0.887204,
		0.787746, -0.480634, -0.385289,
		32.300472, 29.970243, 25.156015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.510115, 29.668152, 25.036531>,  <31.749050, 30.306686, 25.425718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.510115, 29.668152, 25.036531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.892878, 29.596687, 25.128105>,  <32.122536, 29.553808, 25.183050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.892878, 29.596687, 25.128105>,  <31.510115, 29.668152, 25.036531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.892878, 29.596687, 25.128105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249910, -0.908160, 0.335842,
		0.147907, -0.378582, -0.913673,
		0.956906, -0.178663, 0.228935,
		32.179951, 29.543089, 25.196785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.654911, 28.931404, 24.835382>,  <31.510115, 29.668152, 25.036531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.654911, 28.931404, 24.835382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.919790, 29.045555, 25.112526>,  <32.078716, 29.114046, 25.278812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.919790, 29.045555, 25.112526>,  <31.654911, 28.931404, 24.835382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.919790, 29.045555, 25.112526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197796, -0.825274, 0.528961,
		0.722752, -0.487322, -0.490048,
		0.662198, 0.285378, 0.692858,
		32.118450, 29.131168, 25.320383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.824459, 28.243559, 25.072643>,  <31.654911, 28.931404, 24.835382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.824459, 28.243559, 25.072643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.966841, 28.489021, 25.354557>,  <32.052269, 28.636299, 25.523705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.966841, 28.489021, 25.354557>,  <31.824459, 28.243559, 25.072643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.966841, 28.489021, 25.354557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123469, -0.716686, 0.686379,
		0.926311, -0.331339, -0.179341,
		0.355955, 0.613658, 0.704784,
		32.073627, 28.673119, 25.565992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.152584, 27.767748, 25.423023>,  <31.824459, 28.243559, 25.072643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.152584, 27.767748, 25.423023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.113461, 28.091740, 25.654320>,  <32.089985, 28.286135, 25.793098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.113461, 28.091740, 25.654320>,  <32.152584, 27.767748, 25.423023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.113461, 28.091740, 25.654320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046964, -0.584136, 0.810296,
		0.994096, 0.052101, 0.095176,
		-0.097813, 0.809982, 0.578241,
		32.084118, 28.334734, 25.827791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.642704, 27.652906, 26.073120>,  <32.152584, 27.767748, 25.423023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.642704, 27.652906, 26.073120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.370350, 27.922462, 26.187851>,  <32.206940, 28.084196, 26.256689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.370350, 27.922462, 26.187851>,  <32.642704, 27.652906, 26.073120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.370350, 27.922462, 26.187851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061133, -0.442557, 0.894654,
		0.729836, 0.591621, 0.342526,
		-0.680883, 0.673891, 0.286827,
		32.166084, 28.124630, 26.273899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.901306, 27.857279, 26.777163>,  <32.642704, 27.652906, 26.073120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.901306, 27.857279, 26.777163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.510067, 27.935696, 26.749210>,  <32.275322, 27.982746, 26.732439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.510067, 27.935696, 26.749210>,  <32.901306, 27.857279, 26.777163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.510067, 27.935696, 26.749210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180546, -0.632219, 0.753460,
		0.103529, 0.749578, 0.653769,
		-0.978103, 0.196041, -0.069880,
		32.216637, 27.994509, 26.728247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.752201, 27.941257, 27.399567>,  <32.901306, 27.857279, 26.777163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.752201, 27.941257, 27.399567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.405949, 27.842464, 27.225361>,  <32.198196, 27.783188, 27.120836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.405949, 27.842464, 27.225361>,  <32.752201, 27.941257, 27.399567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.405949, 27.842464, 27.225361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278929, -0.484472, 0.829148,
		-0.415781, 0.839218, 0.350485,
		-0.865635, -0.246984, -0.435517,
		32.146259, 27.768370, 27.094706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.310150, 27.911936, 27.977060>,  <32.752201, 27.941257, 27.399567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.310150, 27.911936, 27.977060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.079784, 27.719582, 27.712612>,  <31.941566, 27.604170, 27.553944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.079784, 27.719582, 27.712612>,  <32.310150, 27.911936, 27.977060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.079784, 27.719582, 27.712612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263991, -0.655977, 0.707109,
		-0.773716, 0.581761, 0.250834,
		-0.575910, -0.480883, -0.661119,
		31.907011, 27.575317, 27.514277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.752316, 27.722944, 28.309792>,  <32.310150, 27.911936, 27.977060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.752316, 27.722944, 28.309792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.758951, 27.455521, 28.012402>,  <31.762932, 27.295067, 27.833967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.758951, 27.455521, 28.012402>,  <31.752316, 27.722944, 28.309792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.758951, 27.455521, 28.012402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198112, -0.731033, 0.652949,
		-0.980039, 0.136461, -0.144575,
		0.016587, -0.668557, -0.743475,
		31.763927, 27.254953, 27.789358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.159004, 27.290831, 28.457058>,  <31.752316, 27.722944, 28.309792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.159004, 27.290831, 28.457058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.388929, 27.087460, 28.200592>,  <31.526884, 26.965437, 28.046713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.388929, 27.087460, 28.200592>,  <31.159004, 27.290831, 28.457058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.388929, 27.087460, 28.200592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047914, -0.803113, 0.593897,
		-0.816889, -0.310652, -0.485992,
		0.574801, -0.508433, -0.641170,
		31.561373, 26.934931, 28.008244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.860497, 26.651327, 28.467999>,  <31.159004, 27.290831, 28.457058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.860497, 26.651327, 28.467999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.242105, 26.613308, 28.354290>,  <31.471071, 26.590496, 28.286064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.242105, 26.613308, 28.354290>,  <30.860497, 26.651327, 28.467999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.242105, 26.613308, 28.354290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137031, -0.705182, 0.695659,
		-0.266583, -0.702627, -0.659734,
		0.954021, -0.095047, -0.284271,
		31.528313, 26.584793, 28.269009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.913580, 25.865553, 28.255825>,  <30.860497, 26.651327, 28.467999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.913580, 25.865553, 28.255825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.280579, 26.005859, 28.330830>,  <31.500778, 26.090044, 28.375832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.280579, 26.005859, 28.330830>,  <30.913580, 25.865553, 28.255825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.280579, 26.005859, 28.330830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115949, -0.686841, 0.717499,
		0.380466, -0.636562, -0.670846,
		0.917497, 0.350768, 0.187511,
		31.555828, 26.111090, 28.387083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.342186, 25.353399, 28.413958>,  <30.913580, 25.865553, 28.255825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.342186, 25.353399, 28.413958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.571718, 25.641357, 28.570148>,  <31.709436, 25.814133, 28.663862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.571718, 25.641357, 28.570148>,  <31.342186, 25.353399, 28.413958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.571718, 25.641357, 28.570148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138972, -0.555464, 0.819845,
		0.807098, -0.416185, -0.418787,
		0.573829, 0.719895, 0.390476,
		31.743866, 25.857327, 28.687292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.851398, 24.919180, 28.707281>,  <31.342186, 25.353399, 28.413958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.851398, 24.919180, 28.707281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.884745, 25.283924, 28.868061>,  <31.904753, 25.502769, 28.964529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.884745, 25.283924, 28.868061>,  <31.851398, 24.919180, 28.707281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.884745, 25.283924, 28.868061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181375, -0.410500, 0.893640,
		0.979874, -0.001594, -0.199609,
		0.083364, 0.911859, 0.401950,
		31.909754, 25.557482, 28.988646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.538567, 24.998060, 29.075859>,  <31.851398, 24.919180, 28.707281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.538567, 24.998060, 29.075859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.289192, 25.273815, 29.223408>,  <32.139568, 25.439268, 29.311937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.289192, 25.273815, 29.223408>,  <32.538567, 24.998060, 29.075859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.289192, 25.273815, 29.223408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238406, -0.281704, 0.929411,
		0.744638, 0.667373, 0.011271,
		-0.623439, 0.689388, 0.368873,
		32.102161, 25.480631, 29.334070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.949009, 25.410589, 29.552759>,  <32.538567, 24.998060, 29.075859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.949009, 25.410589, 29.552759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.569736, 25.477215, 29.660988>,  <32.342175, 25.517191, 29.725925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.569736, 25.477215, 29.660988>,  <32.949009, 25.410589, 29.552759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.569736, 25.477215, 29.660988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207498, -0.320293, 0.924314,
		0.240620, 0.932560, 0.269134,
		-0.948181, 0.166564, 0.270573,
		32.285282, 25.527184, 29.742159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.024921, 25.565880, 30.295946>,  <32.949009, 25.410589, 29.552759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.024921, 25.565880, 30.295946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.636890, 25.484913, 30.242302>,  <32.404072, 25.436333, 30.210115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.636890, 25.484913, 30.242302>,  <33.024921, 25.565880, 30.295946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.636890, 25.484913, 30.242302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078820, -0.259902, 0.962413,
		-0.229665, 0.944181, 0.236169,
		-0.970073, -0.202418, -0.134110,
		32.345867, 25.424187, 30.202068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.667282, 25.868092, 30.939713>,  <33.024921, 25.565880, 30.295946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.667282, 25.868092, 30.939713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.447681, 25.567032, 30.794323>,  <32.315922, 25.386396, 30.707088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.447681, 25.567032, 30.794323>,  <32.667282, 25.868092, 30.939713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.447681, 25.567032, 30.794323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316710, -0.215112, 0.923808,
		-0.773491, 0.622291, -0.120274,
		-0.549004, -0.752650, -0.363473,
		32.282982, 25.341236, 30.685282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.090271, 25.882767, 31.333794>,  <32.667282, 25.868092, 30.939713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.090271, 25.882767, 31.333794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.078091, 25.515072, 31.176785>,  <32.070782, 25.294455, 31.082579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.078091, 25.515072, 31.176785>,  <32.090271, 25.882767, 31.333794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.078091, 25.515072, 31.176785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297739, -0.366534, 0.881478,
		-0.954161, 0.143713, -0.262531,
		-0.030453, -0.919239, -0.392521,
		32.068954, 25.239300, 31.059029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.520958, 25.563274, 31.609400>,  <32.090271, 25.882767, 31.333794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.520958, 25.563274, 31.609400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.727249, 25.251060, 31.468098>,  <31.851025, 25.063732, 31.383316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.727249, 25.251060, 31.468098>,  <31.520958, 25.563274, 31.609400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.727249, 25.251060, 31.468098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199149, -0.510241, 0.836656,
		-0.833284, -0.361138, -0.418589,
		0.515730, -0.780534, -0.353256,
		31.881968, 25.016901, 31.362122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.103094, 25.034111, 31.879932>,  <31.520958, 25.563274, 31.609400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.103094, 25.034111, 31.879932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.457136, 24.888836, 31.763531>,  <31.669561, 24.801672, 31.693689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.457136, 24.888836, 31.763531>,  <31.103094, 25.034111, 31.879932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.457136, 24.888836, 31.763531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026614, -0.663768, 0.747464,
		-0.464629, -0.653840, -0.597171,
		0.885105, -0.363186, -0.291005,
		31.722668, 24.779881, 31.676229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.965517, 24.278955, 31.932768>,  <31.103094, 25.034111, 31.879932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.965517, 24.278955, 31.932768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.350330, 24.383320, 31.964806>,  <31.581219, 24.445938, 31.984028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.350330, 24.383320, 31.964806>,  <30.965517, 24.278955, 31.932768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.350330, 24.383320, 31.964806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050913, -0.459875, 0.886523,
		0.268138, -0.848787, -0.455699,
		0.962034, 0.260912, 0.080096,
		31.638941, 24.461594, 31.988834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.229769, 23.651865, 32.011978>,  <30.965517, 24.278955, 31.932768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.229769, 23.651865, 32.011978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.439785, 23.951290, 32.173958>,  <31.565794, 24.130945, 32.271145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.439785, 23.951290, 32.173958>,  <31.229769, 23.651865, 32.011978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.439785, 23.951290, 32.173958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063630, -0.509002, 0.858410,
		0.848696, -0.424932, -0.314877,
		0.525039, 0.748565, 0.404950,
		31.597298, 24.175859, 32.295444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.846813, 23.304770, 32.366394>,  <31.229769, 23.651865, 32.011978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.846813, 23.304770, 32.366394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.850882, 23.656174, 32.557442>,  <31.853323, 23.867016, 32.672070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.850882, 23.656174, 32.557442>,  <31.846813, 23.304770, 32.366394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.850882, 23.656174, 32.557442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128824, -0.474813, 0.870607,
		0.991615, 0.052674, -0.118002,
		0.010171, 0.878509, 0.477618,
		31.853933, 23.919727, 32.700726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.170025, 23.250948, 33.024750>,  <31.846813, 23.304770, 32.366394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.170025, 23.250948, 33.024750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.023430, 23.611965, 33.115177>,  <31.935472, 23.828575, 33.169434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.023430, 23.611965, 33.115177>,  <32.170025, 23.250948, 33.024750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.023430, 23.611965, 33.115177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004583, -0.241216, 0.970461,
		0.930412, 0.356696, 0.084266,
		-0.366486, 0.902542, 0.226065,
		31.913485, 23.882729, 33.182995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.390728, 23.378284, 33.626755>,  <32.170025, 23.250948, 33.024750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.390728, 23.378284, 33.626755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.087666, 23.639332, 33.629360>,  <31.905827, 23.795959, 33.630924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.087666, 23.639332, 33.629360>,  <32.390728, 23.378284, 33.626755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.087666, 23.639332, 33.629360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298523, -0.355411, 0.885758,
		0.580375, 0.669159, 0.464102,
		-0.757660, 0.652617, 0.006512,
		31.860367, 23.835117, 33.631313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.509979, 23.764919, 34.222652>,  <32.390728, 23.378284, 33.626755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.509979, 23.764919, 34.222652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.124172, 23.792328, 34.120659>,  <31.892689, 23.808773, 34.059464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.124172, 23.792328, 34.120659>,  <32.509979, 23.764919, 34.222652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.124172, 23.792328, 34.120659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262557, -0.350788, 0.898895,
		-0.027852, 0.933944, 0.356331,
		-0.964514, 0.068521, -0.254983,
		31.834818, 23.812883, 34.044163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.165352, 24.139771, 34.744907>,  <32.509979, 23.764919, 34.222652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.165352, 24.139771, 34.744907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.865538, 23.951984, 34.558235>,  <31.685648, 23.839314, 34.446232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.865538, 23.951984, 34.558235>,  <32.165352, 24.139771, 34.744907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.865538, 23.951984, 34.558235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432439, -0.186514, 0.882162,
		-0.501187, 0.863027, -0.063215,
		-0.749539, -0.469464, -0.466685,
		31.640676, 23.811146, 34.418228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.495085, 24.436199, 35.043991>,  <32.165352, 24.139771, 34.744907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.495085, 24.436199, 35.043991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.387478, 24.075233, 34.909363>,  <31.322914, 23.858654, 34.828587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.387478, 24.075233, 34.909363>,  <31.495085, 24.436199, 35.043991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.387478, 24.075233, 34.909363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459286, -0.186960, 0.868391,
		-0.846573, 0.388192, -0.364171,
		-0.269017, -0.902415, -0.336566,
		31.306772, 23.804508, 34.808392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.804455, 24.402456, 35.242783>,  <31.495085, 24.436199, 35.043991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.804455, 24.402456, 35.242783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.872910, 24.019497, 35.149750>,  <30.913982, 23.789721, 35.093929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.872910, 24.019497, 35.149750>,  <30.804455, 24.402456, 35.242783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.872910, 24.019497, 35.149750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629438, -0.287856, 0.721766,
		-0.757970, 0.022877, -0.651888,
		0.171138, -0.957400, -0.232586,
		30.924252, 23.732277, 35.079975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.200897, 24.032619, 35.386810>,  <30.804455, 24.402456, 35.242783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.200897, 24.032619, 35.386810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.472595, 23.739296, 35.374912>,  <30.635614, 23.563303, 35.367771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.472595, 23.739296, 35.374912>,  <30.200897, 24.032619, 35.386810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.472595, 23.739296, 35.374912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446752, -0.445296, 0.775967,
		-0.582270, -0.513781, -0.630072,
		0.679246, -0.733307, -0.029749,
		30.676369, 23.519304, 35.365986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.872595, 23.449879, 35.822884>,  <30.200897, 24.032619, 35.386810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.872595, 23.449879, 35.822884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.248489, 23.313267, 35.816494>,  <30.474026, 23.231298, 35.812660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.248489, 23.313267, 35.816494>,  <29.872595, 23.449879, 35.822884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.248489, 23.313267, 35.816494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089231, -0.290087, 0.952831,
		-0.330061, -0.893981, -0.303080,
		0.939733, -0.341536, -0.015976,
		30.530409, 23.210808, 35.811703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.888428, 22.662647, 35.967186>,  <29.872595, 23.449879, 35.822884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.888428, 22.662647, 35.967186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.218693, 22.857735, 36.080616>,  <30.416851, 22.974787, 36.148674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.218693, 22.857735, 36.080616>,  <29.888428, 22.662647, 35.967186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.218693, 22.857735, 36.080616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162184, -0.276224, 0.947310,
		0.540349, -0.828149, -0.148968,
		0.825663, 0.487718, 0.283571,
		30.466393, 23.004049, 36.165688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.245987, 22.245504, 36.498554>,  <29.888428, 22.662647, 35.967186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.245987, 22.245504, 36.498554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.355289, 22.626659, 36.551228>,  <30.420870, 22.855352, 36.582832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.355289, 22.626659, 36.551228>,  <30.245987, 22.245504, 36.498554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.355289, 22.626659, 36.551228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210760, -0.074258, 0.974714,
		0.938569, -0.294098, 0.180539,
		0.273255, 0.952886, 0.131680,
		30.437265, 22.912525, 36.590733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.653845, 22.361229, 37.073849>,  <30.245987, 22.245504, 36.498554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.653845, 22.361229, 37.073849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.541353, 22.326038, 37.456089>,  <30.473858, 22.304924, 37.685432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.541353, 22.326038, 37.456089>,  <30.653845, 22.361229, 37.073849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.541353, 22.326038, 37.456089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941254, 0.168702, 0.292540,
		-0.186948, 0.981733, 0.035365,
		-0.281230, -0.087977, 0.955599,
		30.456984, 22.299644, 37.742767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.777422, 22.921656, 37.613777>,  <30.653845, 22.361229, 37.073849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.777422, 22.921656, 37.613777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.827753, 22.573177, 37.803593>,  <30.857952, 22.364090, 37.917480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.827753, 22.573177, 37.803593>,  <30.777422, 22.921656, 37.613777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.827753, 22.573177, 37.803593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947036, 0.247943, 0.204078,
		-0.295450, 0.423724, 0.856252,
		0.125829, -0.871196, 0.474537,
		30.865501, 22.311819, 37.945953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.102274, 22.997023, 38.270195>,  <30.777422, 22.921656, 37.613777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.102274, 22.997023, 38.270195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.189100, 22.624027, 38.154713>,  <31.241196, 22.400230, 38.085423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.189100, 22.624027, 38.154713>,  <31.102274, 22.997023, 38.270195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.189100, 22.624027, 38.154713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974924, 0.221952, 0.016132,
		0.049035, -0.284964, 0.957283,
		0.217068, -0.932488, -0.288702,
		31.254221, 22.344280, 38.068104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.565134, 22.757597, 38.791115>,  <31.102274, 22.997023, 38.270195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.565134, 22.757597, 38.791115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.602203, 22.586201, 38.431602>,  <31.624445, 22.483364, 38.215897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.602203, 22.586201, 38.431602>,  <31.565134, 22.757597, 38.791115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.602203, 22.586201, 38.431602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989130, 0.143120, 0.033758,
		0.114169, -0.892140, 0.437094,
		0.092674, -0.428489, -0.898782,
		31.630005, 22.457655, 38.161968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.170902, 22.983755, 39.235893>,  <31.565134, 22.757597, 38.791115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.170902, 22.983755, 39.235893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.382648, 22.768311, 38.973694>,  <32.509697, 22.639044, 38.816376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.382648, 22.768311, 38.973694>,  <32.170902, 22.983755, 39.235893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.382648, 22.768311, 38.973694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260394, 0.838486, -0.478681,
		0.807446, 0.082709, 0.584115,
		0.529363, -0.538609, -0.655495,
		32.541458, 22.606728, 38.777046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.829603, 23.581238, 38.879379>,  <32.170902, 22.983755, 39.235893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.829603, 23.581238, 38.879379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.056572, 23.651485, 38.557587>,  <32.192753, 23.693634, 38.364510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.056572, 23.651485, 38.557587>,  <31.829603, 23.581238, 38.879379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.056572, 23.651485, 38.557587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603136, -0.576491, -0.551258,
		-0.560588, 0.798007, -0.221190,
		0.567422, 0.175621, -0.804481,
		32.226799, 23.704172, 38.316242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.345089, 23.759365, 38.338680>,  <31.829603, 23.581238, 38.879379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.345089, 23.759365, 38.338680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.678167, 23.591908, 38.193710>,  <31.878016, 23.491432, 38.106728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.678167, 23.591908, 38.193710>,  <31.345089, 23.759365, 38.338680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.678167, 23.591908, 38.193710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552674, -0.668708, -0.497373,
		-0.034132, 0.614464, -0.788206,
		0.832698, -0.418645, -0.362423,
		31.927977, 23.466314, 38.084984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.647982, 23.810259, 38.517326>,  <31.345089, 23.759365, 38.338680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.647982, 23.810259, 38.517326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.563871, 23.999928, 38.859310>,  <30.513405, 24.113728, 39.064499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.563871, 23.999928, 38.859310>,  <30.647982, 23.810259, 38.517326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.563871, 23.999928, 38.859310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027690, 0.877044, -0.479611,
		-0.977250, -0.077176, -0.197550,
		-0.210274, 0.474170, 0.854955,
		30.500790, 24.142178, 39.115795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.898458, 24.195480, 38.535618>,  <30.647982, 23.810259, 38.517326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.898458, 24.195480, 38.535618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.201717, 24.370346, 38.729156>,  <30.383673, 24.475266, 38.845280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.201717, 24.370346, 38.729156>,  <29.898458, 24.195480, 38.535618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.201717, 24.370346, 38.729156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044609, 0.705484, -0.707321,
		-0.650558, 0.557836, 0.515357,
		0.758145, 0.437164, 0.483843,
		30.429161, 24.501495, 38.874310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.725544, 24.951139, 38.854286>,  <29.898458, 24.195480, 38.535618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.725544, 24.951139, 38.854286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.085531, 24.859989, 38.705624>,  <30.301523, 24.805298, 38.616425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.085531, 24.859989, 38.705624>,  <29.725544, 24.951139, 38.854286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.085531, 24.859989, 38.705624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126117, 0.679974, -0.722308,
		0.417316, 0.696927, 0.583215,
		0.899968, -0.227877, -0.371659,
		30.355522, 24.791626, 38.594128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.194254, 25.583595, 38.679867>,  <29.725544, 24.951139, 38.854286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.194254, 25.583595, 38.679867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.294140, 25.274624, 38.446285>,  <30.354071, 25.089241, 38.306137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.294140, 25.274624, 38.446285>,  <30.194254, 25.583595, 38.679867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.294140, 25.274624, 38.446285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097495, 0.579934, -0.808808,
		0.963399, 0.258904, 0.069511,
		0.249715, -0.772428, -0.583950,
		30.369055, 25.042896, 38.271099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.837812, 25.776730, 38.282337>,  <30.194254, 25.583595, 38.679867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.837812, 25.776730, 38.282337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.687925, 25.468521, 38.076084>,  <30.597994, 25.283596, 37.952332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.687925, 25.468521, 38.076084>,  <30.837812, 25.776730, 38.282337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.687925, 25.468521, 38.076084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155021, 0.496260, -0.854222,
		0.914087, -0.400027, -0.066510,
		-0.374718, -0.770523, -0.515637,
		30.575510, 25.237364, 37.921394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.314051, 25.466740, 37.712646>,  <30.837812, 25.776730, 38.282337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.314051, 25.466740, 37.712646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.951952, 25.357792, 37.582207>,  <30.734692, 25.292423, 37.503944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.951952, 25.357792, 37.582207>,  <31.314051, 25.466740, 37.712646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.951952, 25.357792, 37.582207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173049, 0.464611, -0.868442,
		0.388044, -0.842587, -0.373455,
		-0.905249, -0.272368, -0.326098,
		30.680378, 25.276081, 37.484379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.434086, 25.398903, 36.957127>,  <31.314051, 25.466740, 37.712646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.434086, 25.398903, 36.957127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.036972, 25.407650, 37.004288>,  <30.798704, 25.412899, 37.032585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.036972, 25.407650, 37.004288>,  <31.434086, 25.398903, 36.957127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.036972, 25.407650, 37.004288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088559, 0.529185, -0.843873,
		-0.080847, -0.848225, -0.523429,
		-0.992785, 0.021870, 0.117901,
		30.739136, 25.414211, 37.039658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.189875, 25.133038, 36.317245>,  <31.434086, 25.398903, 36.957127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.189875, 25.133038, 36.317245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.852264, 25.302177, 36.449196>,  <30.649698, 25.403662, 36.528366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.852264, 25.302177, 36.449196>,  <31.189875, 25.133038, 36.317245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.852264, 25.302177, 36.449196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148091, 0.407411, -0.901158,
		-0.515449, -0.809452, -0.281245,
		-0.844027, 0.422851, 0.329872,
		30.599056, 25.429033, 36.548157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.537348, 25.081242, 35.822754>,  <31.189875, 25.133038, 36.317245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.537348, 25.081242, 35.822754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.470446, 25.415051, 36.032745>,  <30.430304, 25.615335, 36.158741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.470446, 25.415051, 36.032745>,  <30.537348, 25.081242, 35.822754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.470446, 25.415051, 36.032745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207232, 0.490824, -0.846255,
		-0.963888, -0.250334, 0.090846,
		-0.167257, 0.834521, 0.524976,
		30.420269, 25.665407, 36.190239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.805958, 25.502108, 35.573448>,  <30.537348, 25.081242, 35.822754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.805958, 25.502108, 35.573448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.031364, 25.763771, 35.775249>,  <30.166609, 25.920769, 35.896332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.031364, 25.763771, 35.775249>,  <29.805958, 25.502108, 35.573448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.031364, 25.763771, 35.775249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164661, 0.687394, -0.707373,
		-0.809527, 0.315544, 0.495073,
		0.563518, 0.654157, 0.504507,
		30.200420, 25.960018, 35.926601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.402889, 26.119030, 35.509193>,  <29.805958, 25.502108, 35.573448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.402889, 26.119030, 35.509193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.760471, 26.254211, 35.626926>,  <29.975021, 26.335320, 35.697567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.760471, 26.254211, 35.626926>,  <29.402889, 26.119030, 35.509193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.760471, 26.254211, 35.626926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091290, 0.780310, -0.618694,
		-0.438759, 0.526216, 0.728415,
		0.893956, 0.337954, 0.294330,
		30.028658, 26.355598, 35.715225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.365171, 26.778191, 35.773144>,  <29.402889, 26.119030, 35.509193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.365171, 26.778191, 35.773144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.747355, 26.749191, 35.658710>,  <29.976664, 26.731792, 35.590050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.747355, 26.749191, 35.658710>,  <29.365171, 26.778191, 35.773144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.747355, 26.749191, 35.658710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124548, 0.779759, -0.613566,
		0.267559, 0.621868, 0.735998,
		0.955458, -0.072499, -0.286084,
		30.033993, 26.727442, 35.572884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.587639, 27.510654, 35.647976>,  <29.365171, 26.778191, 35.773144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.587639, 27.510654, 35.647976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.860931, 27.292465, 35.453800>,  <30.024906, 27.161552, 35.337296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.860931, 27.292465, 35.453800>,  <29.587639, 27.510654, 35.647976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.860931, 27.292465, 35.453800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081554, 0.717650, -0.691612,
		0.725635, 0.432941, 0.534806,
		0.683230, -0.545473, -0.485444,
		30.065901, 27.128822, 35.308167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.157005, 27.985960, 35.452709>,  <29.587639, 27.510654, 35.647976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.157005, 27.985960, 35.452709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.195189, 27.662628, 35.220333>,  <30.218098, 27.468630, 35.080906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.195189, 27.662628, 35.220333>,  <30.157005, 27.985960, 35.452709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.195189, 27.662628, 35.220333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169573, 0.588282, -0.790676,
		0.980884, -0.023036, 0.193227,
		0.095458, -0.808327, -0.580943,
		30.223825, 27.420130, 35.046051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.692551, 28.149223, 35.070148>,  <30.157005, 27.985960, 35.452709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.692551, 28.149223, 35.070148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.518547, 27.850170, 34.869423>,  <30.414145, 27.670738, 34.748989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.518547, 27.850170, 34.869423>,  <30.692551, 28.149223, 35.070148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.518547, 27.850170, 34.869423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235529, 0.443421, -0.864815,
		0.869077, -0.494392, -0.016802,
		-0.435008, -0.747633, -0.501810,
		30.388044, 27.625881, 34.718880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.132486, 27.923414, 34.380871>,  <30.692551, 28.149223, 35.070148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.132486, 27.923414, 34.380871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.753452, 27.802395, 34.339798>,  <30.526031, 27.729782, 34.315155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.753452, 27.802395, 34.339798>,  <31.132486, 27.923414, 34.380871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.753452, 27.802395, 34.339798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041498, 0.435210, -0.899372,
		0.316792, -0.847972, -0.424955,
		-0.947587, -0.302548, -0.102682,
		30.469177, 27.711630, 34.308994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.118879, 27.535042, 33.717651>,  <31.132486, 27.923414, 34.380871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.118879, 27.535042, 33.717651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.749113, 27.654869, 33.812065>,  <30.527252, 27.726765, 33.868713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.749113, 27.654869, 33.812065>,  <31.118879, 27.535042, 33.717651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.749113, 27.654869, 33.812065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210541, 0.115196, -0.970774,
		-0.318004, -0.947095, -0.043418,
		-0.924417, 0.299569, 0.236035,
		30.471788, 27.744740, 33.882877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.841930, 27.555351, 33.053822>,  <31.118879, 27.535042, 33.717651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.841930, 27.555351, 33.053822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.563013, 27.744427, 33.269360>,  <30.395662, 27.857872, 33.398682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.563013, 27.744427, 33.269360>,  <30.841930, 27.555351, 33.053822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.563013, 27.744427, 33.269360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216877, 0.577379, -0.787145,
		-0.683191, -0.665732, -0.300086,
		-0.697291, 0.472688, 0.538842,
		30.353827, 27.886232, 33.431011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.166538, 27.386448, 32.761726>,  <30.841930, 27.555351, 33.053822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.166538, 27.386448, 32.761726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.143158, 27.740982, 32.945465>,  <30.129129, 27.953703, 33.055706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.143158, 27.740982, 32.945465>,  <30.166538, 27.386448, 32.761726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.143158, 27.740982, 32.945465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016391, 0.460920, -0.887290,
		-0.998156, -0.044334, -0.041469,
		-0.058451, 0.886333, 0.459343,
		30.125622, 28.006882, 33.083267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.725374, 27.841522, 32.330315>,  <30.166538, 27.386448, 32.761726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.725374, 27.841522, 32.330315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.913439, 28.126553, 32.538616>,  <30.026278, 28.297571, 32.663597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.913439, 28.126553, 32.538616>,  <29.725374, 27.841522, 32.330315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.913439, 28.126553, 32.538616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076980, 0.554680, -0.828495,
		-0.879218, 0.429613, 0.205934,
		0.470160, 0.712575, 0.520756,
		30.054487, 28.340324, 32.694843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.345139, 28.437429, 32.131710>,  <29.725374, 27.841522, 32.330315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.345139, 28.437429, 32.131710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.694191, 28.562874, 32.281464>,  <29.903622, 28.638142, 32.371315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.694191, 28.562874, 32.281464>,  <29.345139, 28.437429, 32.131710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.694191, 28.562874, 32.281464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058623, 0.693773, -0.717804,
		-0.484849, 0.648325, 0.587023,
		0.872631, 0.313613, 0.374382,
		29.955980, 28.656958, 32.393780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.278605, 29.147806, 32.060047>,  <29.345139, 28.437429, 32.131710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.278605, 29.147806, 32.060047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.673658, 29.105949, 32.106750>,  <29.910690, 29.080835, 32.134773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.673658, 29.105949, 32.106750>,  <29.278605, 29.147806, 32.060047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.673658, 29.105949, 32.106750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156533, 0.700499, -0.696275,
		-0.008931, 0.705940, 0.708215,
		0.987632, -0.104640, 0.116759,
		29.969948, 29.074556, 32.141777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.477074, 29.807486, 32.097069>,  <29.278605, 29.147806, 32.060047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.477074, 29.807486, 32.097069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.806110, 29.605640, 31.992222>,  <30.003532, 29.484533, 31.929314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.806110, 29.605640, 31.992222>,  <29.477074, 29.807486, 32.097069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.806110, 29.605640, 31.992222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248286, 0.733439, -0.632788,
		0.511562, 0.455447, 0.728610,
		0.822592, -0.504614, -0.262119,
		30.052889, 29.454256, 31.913586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.092913, 30.277321, 32.129509>,  <29.477074, 29.807486, 32.097069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.092913, 30.277321, 32.129509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.150061, 29.970135, 31.879768>,  <30.184349, 29.785824, 31.729923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.150061, 29.970135, 31.879768>,  <30.092913, 30.277321, 32.129509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.150061, 29.970135, 31.879768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388716, 0.623677, -0.678179,
		0.910213, -0.145805, 0.387625,
		0.142871, -0.767964, -0.624355,
		30.192923, 29.739746, 31.692461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.631556, 30.573400, 31.679195>,  <30.092913, 30.277321, 32.129509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.631556, 30.573400, 31.679195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.566448, 30.237007, 31.472797>,  <30.527384, 30.035172, 31.348959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.566448, 30.237007, 31.472797>,  <30.631556, 30.573400, 31.679195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.566448, 30.237007, 31.472797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374225, 0.431275, -0.820949,
		0.912942, -0.326723, 0.244519,
		-0.162768, -0.840984, -0.515997,
		30.517618, 29.984713, 31.317999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.099415, 30.613008, 31.279667>,  <30.631556, 30.573400, 31.679195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.099415, 30.613008, 31.279667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.881001, 30.330364, 31.099648>,  <30.749952, 30.160778, 30.991636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.881001, 30.330364, 31.099648>,  <31.099415, 30.613008, 31.279667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.881001, 30.330364, 31.099648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443935, 0.211531, -0.870733,
		0.710471, -0.675243, 0.198188,
		-0.546034, -0.706613, -0.450050,
		30.717190, 30.118380, 30.964632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.501226, 30.156685, 30.928804>,  <31.099415, 30.613008, 31.279667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.501226, 30.156685, 30.928804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.142113, 30.118279, 30.756866>,  <30.926645, 30.095236, 30.653704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.142113, 30.118279, 30.756866>,  <31.501226, 30.156685, 30.928804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.142113, 30.118279, 30.756866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389720, 0.281503, -0.876855,
		0.205190, -0.954745, -0.215312,
		-0.897784, -0.096011, -0.429845,
		30.872778, 30.089474, 30.627913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.645693, 29.822168, 30.263956>,  <31.501226, 30.156685, 30.928804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.645693, 29.822168, 30.263956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.282467, 29.976727, 30.199318>,  <31.064531, 30.069462, 30.160536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.282467, 29.976727, 30.199318>,  <31.645693, 29.822168, 30.263956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.282467, 29.976727, 30.199318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264563, 0.230087, -0.936518,
		-0.324687, -0.893173, -0.311161,
		-0.908067, 0.386397, -0.161594,
		31.010046, 30.092646, 30.150839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.584911, 29.570030, 29.598022>,  <31.645693, 29.822168, 30.263956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.584911, 29.570030, 29.598022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.313467, 29.860619, 29.641342>,  <31.150600, 30.034971, 29.667334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.313467, 29.860619, 29.641342>,  <31.584911, 29.570030, 29.598022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.313467, 29.860619, 29.641342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045096, 0.188377, -0.981061,
		-0.733115, -0.660872, -0.160595,
		-0.678608, 0.726472, 0.108299,
		31.109884, 30.078560, 29.673832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.154610, 29.595625, 29.050203>,  <31.584911, 29.570030, 29.598022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.154610, 29.595625, 29.050203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.118767, 29.974888, 29.172165>,  <31.097261, 30.202446, 29.245342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.118767, 29.974888, 29.172165>,  <31.154610, 29.595625, 29.050203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.118767, 29.974888, 29.172165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101465, 0.313231, -0.944241,
		-0.990795, -0.053676, -0.124273,
		-0.089609, 0.948159, 0.304902,
		31.091885, 30.259335, 29.263636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.770758, 29.943964, 28.494148>,  <31.154610, 29.595625, 29.050203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.770758, 29.943964, 28.494148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.949520, 30.242481, 28.691460>,  <31.056778, 30.421591, 28.809847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.949520, 30.242481, 28.691460>,  <30.770758, 29.943964, 28.494148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.949520, 30.242481, 28.691460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195657, 0.456516, -0.867935,
		-0.872922, 0.484399, 0.058003,
		0.446906, 0.746291, 0.493279,
		31.083591, 30.466370, 28.839443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.620642, 30.480125, 27.959381>,  <30.770758, 29.943964, 28.494148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.620642, 30.480125, 27.959381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.872442, 30.650249, 28.219486>,  <31.023521, 30.752323, 28.375549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.872442, 30.650249, 28.219486>,  <30.620642, 30.480125, 27.959381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.872442, 30.650249, 28.219486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074416, 0.800040, -0.595314,
		-0.773429, 0.423140, 0.471975,
		0.629500, 0.425310, 0.650262,
		31.061293, 30.777842, 28.414564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.450544, 31.170910, 27.995617>,  <30.620642, 30.480125, 27.959381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.450544, 31.170910, 27.995617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.827986, 31.188103, 28.126926>,  <31.054451, 31.198418, 28.205711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.827986, 31.188103, 28.126926>,  <30.450544, 31.170910, 27.995617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.827986, 31.188103, 28.126926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155092, 0.818628, -0.552988,
		-0.292501, 0.572714, 0.765795,
		0.943605, 0.042980, 0.328273,
		31.111067, 31.200996, 28.225409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.622049, 31.843393, 28.081272>,  <30.450544, 31.170910, 27.995617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.622049, 31.843393, 28.081272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.978643, 31.664165, 28.054474>,  <31.192600, 31.556629, 28.038395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.978643, 31.664165, 28.054474>,  <30.622049, 31.843393, 28.081272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.978643, 31.664165, 28.054474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260105, 0.627267, -0.734085,
		0.370946, 0.637000, 0.675744,
		0.891485, -0.448070, -0.066995,
		31.246088, 31.529745, 28.034376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.065128, 32.373425, 28.010626>,  <30.622049, 31.843393, 28.081272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.065128, 32.373425, 28.010626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.277109, 32.061760, 27.876732>,  <31.404299, 31.874760, 27.796394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.277109, 32.061760, 27.876732>,  <31.065128, 32.373425, 28.010626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.277109, 32.061760, 27.876732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479291, 0.600835, -0.639748,
		0.699592, 0.178601, 0.691862,
		0.529954, -0.779166, -0.334737,
		31.436096, 31.828011, 27.776310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.845778, 32.481300, 28.031059>,  <31.065128, 32.373425, 28.010626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.845778, 32.481300, 28.031059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.747168, 32.218853, 27.745758>,  <31.688002, 32.061382, 27.574577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.747168, 32.218853, 27.745758>,  <31.845778, 32.481300, 28.031059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.747168, 32.218853, 27.745758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414517, 0.593863, -0.689567,
		0.876014, -0.465652, 0.125570,
		-0.246527, -0.656121, -0.713253,
		31.673210, 32.022018, 27.531782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.353344, 32.565327, 27.528408>,  <31.845778, 32.481300, 28.031059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.353344, 32.565327, 27.528408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.074039, 32.339981, 27.351749>,  <31.906458, 32.204773, 27.245754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.074039, 32.339981, 27.351749>,  <32.353344, 32.565327, 27.528408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.074039, 32.339981, 27.351749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159982, 0.478541, -0.863368,
		0.697740, -0.673509, -0.244017,
		-0.698258, -0.563368, -0.441647,
		31.864561, 32.170971, 27.219255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.617596, 32.351376, 26.867517>,  <32.353344, 32.565327, 27.528408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.617596, 32.351376, 26.867517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.219223, 32.323292, 26.844944>,  <31.980198, 32.306442, 26.831400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.219223, 32.323292, 26.844944>,  <32.617596, 32.351376, 26.867517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.219223, 32.323292, 26.844944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014886, 0.489622, -0.871808,
		0.088838, -0.869104, -0.486587,
		-0.995935, -0.070206, -0.056434,
		31.920443, 32.302231, 26.828014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.424545, 32.106373, 26.209288>,  <32.617596, 32.351376, 26.867517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.424545, 32.106373, 26.209288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.119484, 32.319748, 26.355602>,  <31.936445, 32.447773, 26.443392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.119484, 32.319748, 26.355602>,  <32.424545, 32.106373, 26.209288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.119484, 32.319748, 26.355602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181444, 0.366378, -0.912604,
		-0.620831, -0.762374, -0.182633,
		-0.762658, 0.533435, 0.365787,
		31.890686, 32.479778, 26.465338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.898012, 32.102848, 25.650507>,  <32.424545, 32.106373, 26.209288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.898012, 32.102848, 25.650507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.796003, 32.418098, 25.874588>,  <31.734798, 32.607246, 26.009037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.796003, 32.418098, 25.874588>,  <31.898012, 32.102848, 25.650507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.796003, 32.418098, 25.874588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402530, 0.440238, -0.802596,
		-0.879166, -0.430179, 0.204972,
		-0.255023, 0.788122, 0.560202,
		31.719496, 32.654533, 26.042648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.193760, 32.269558, 25.457245>,  <31.898012, 32.102848, 25.650507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.193760, 32.269558, 25.457245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.338528, 32.600941, 25.628208>,  <31.425388, 32.799770, 25.730785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.338528, 32.600941, 25.628208>,  <31.193760, 32.269558, 25.457245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.338528, 32.600941, 25.628208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388262, 0.550789, -0.738840,
		-0.847506, 0.101455, 0.520999,
		0.361920, 0.828455, 0.427406,
		31.447104, 32.849476, 25.756430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.789478, 32.829479, 25.191128>,  <31.193760, 32.269558, 25.457245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.789478, 32.829479, 25.191128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.104164, 33.031349, 25.333332>,  <31.292974, 33.152470, 25.418655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.104164, 33.031349, 25.333332>,  <30.789478, 32.829479, 25.191128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.104164, 33.031349, 25.333332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129463, 0.697973, -0.704324,
		-0.603591, 0.508075, 0.614441,
		0.786713, 0.504671, 0.355513,
		31.340178, 33.182751, 25.439985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.517262, 33.466442, 25.290359>,  <30.789478, 32.829479, 25.191128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.517262, 33.466442, 25.290359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.914492, 33.507771, 25.267986>,  <31.152830, 33.532570, 25.254562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.914492, 33.507771, 25.267986>,  <30.517262, 33.466442, 25.290359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.914492, 33.507771, 25.267986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114611, 0.747177, -0.654668,
		-0.025851, 0.656544, 0.753844,
		0.993074, 0.103323, -0.055932,
		31.212414, 33.538769, 25.251207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.251938, 33.893021, 25.769337>,  <30.517262, 33.466442, 25.290359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.251938, 33.893021, 25.769337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.928938, 33.747513, 25.583595>,  <29.735138, 33.660210, 25.472151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.928938, 33.747513, 25.583595>,  <30.251938, 33.893021, 25.769337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.928938, 33.747513, 25.583595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402101, -0.236507, 0.884522,
		-0.431581, 0.900966, 0.044708,
		-0.807498, -0.363766, -0.464352,
		29.686689, 33.638382, 25.444290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.683271, 34.154819, 26.126850>,  <30.251938, 33.893021, 25.769337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.683271, 34.154819, 26.126850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.519810, 33.843887, 25.935535>,  <29.421732, 33.657330, 25.820747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.519810, 33.843887, 25.935535>,  <29.683271, 34.154819, 26.126850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.519810, 33.843887, 25.935535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551354, -0.207357, 0.808091,
		-0.727331, 0.593934, -0.343848,
		-0.408654, -0.777332, -0.478286,
		29.397213, 33.610687, 25.792049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.018211, 34.167023, 26.428871>,  <29.683271, 34.154819, 26.126850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.018211, 34.167023, 26.428871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.064949, 33.795193, 26.289021>,  <29.092993, 33.572094, 26.205111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.064949, 33.795193, 26.289021>,  <29.018211, 34.167023, 26.428871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.064949, 33.795193, 26.289021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564653, -0.351784, 0.746602,
		-0.817015, 0.110181, -0.565992,
		0.116846, -0.929574, -0.349627,
		29.100002, 33.516319, 26.184132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.360258, 33.879528, 26.420925>,  <29.018211, 34.167023, 26.428871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.360258, 33.879528, 26.420925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.612391, 33.569050, 26.415184>,  <28.763670, 33.382763, 26.411739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.612391, 33.569050, 26.415184>,  <28.360258, 33.879528, 26.420925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.612391, 33.569050, 26.415184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498968, -0.419223, 0.758474,
		-0.594741, -0.470926, -0.651546,
		0.630328, -0.776196, -0.014352,
		28.801489, 33.336189, 26.410879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.930166, 33.247433, 26.623558>,  <28.360258, 33.879528, 26.420925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.930166, 33.247433, 26.623558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.314302, 33.158913, 26.691406>,  <28.544785, 33.105801, 26.732115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.314302, 33.158913, 26.691406>,  <27.930166, 33.247433, 26.623558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.314302, 33.158913, 26.691406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257202, -0.468183, 0.845371,
		-0.107670, -0.855470, -0.506535,
		0.960340, -0.221303, 0.169619,
		28.602406, 33.092522, 26.742292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.941505, 32.587902, 26.977301>,  <27.930166, 33.247433, 26.623558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.941505, 32.587902, 26.977301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.319809, 32.703842, 27.035984>,  <28.546791, 32.773407, 27.071194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.319809, 32.703842, 27.035984>,  <27.941505, 32.587902, 26.977301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.319809, 32.703842, 27.035984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089244, -0.666030, 0.740567,
		0.312369, -0.687305, -0.655772,
		0.945759, 0.289854, 0.146709,
		28.603537, 32.790798, 27.079996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.308273, 31.954683, 27.150135>,  <27.941505, 32.587902, 26.977301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.308273, 31.954683, 27.150135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.511286, 32.265114, 27.299866>,  <28.633093, 32.451370, 27.389704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.511286, 32.265114, 27.299866>,  <28.308273, 31.954683, 27.150135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.511286, 32.265114, 27.299866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168767, -0.515561, 0.840068,
		0.844943, -0.363188, -0.392640,
		0.507533, 0.776075, 0.374325,
		28.663546, 32.497936, 27.412163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.895798, 31.605669, 27.501402>,  <28.308273, 31.954683, 27.150135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.895798, 31.605669, 27.501402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.836390, 31.961670, 27.673840>,  <28.800745, 32.175270, 27.777302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.836390, 31.961670, 27.673840>,  <28.895798, 31.605669, 27.501402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.836390, 31.961670, 27.673840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097463, -0.420631, 0.901981,
		0.984095, 0.175979, -0.024269,
		-0.148522, 0.890000, 0.431092,
		28.791834, 32.228668, 27.803167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.407133, 31.696629, 28.036476>,  <28.895798, 31.605669, 27.501402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.407133, 31.696629, 28.036476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.095657, 31.934795, 28.115593>,  <28.908772, 32.077694, 28.163063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.095657, 31.934795, 28.115593>,  <29.407133, 31.696629, 28.036476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.095657, 31.934795, 28.115593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073582, -0.399741, 0.913670,
		0.623081, 0.696910, 0.355086,
		-0.778688, 0.595418, 0.197791,
		28.862051, 32.113422, 28.174931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.450848, 31.741896, 28.748217>,  <29.407133, 31.696629, 28.036476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.450848, 31.741896, 28.748217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.090956, 31.898933, 28.671947>,  <28.875021, 31.993156, 28.626186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.090956, 31.898933, 28.671947>,  <29.450848, 31.741896, 28.748217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.090956, 31.898933, 28.671947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330255, -0.326789, 0.885517,
		0.285338, 0.859697, 0.423677,
		-0.899730, 0.392594, -0.190674,
		28.821037, 32.016712, 28.614746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.252481, 32.089371, 29.311022>,  <29.450848, 31.741896, 28.748217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.252481, 32.089371, 29.311022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.884876, 32.069088, 29.154640>,  <28.664314, 32.056919, 29.060810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.884876, 32.069088, 29.154640>,  <29.252481, 32.089371, 29.311022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.884876, 32.069088, 29.154640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329879, -0.444098, 0.833040,
		-0.215864, 0.894542, 0.391404,
		-0.919012, -0.050707, -0.390956,
		28.609173, 32.053875, 29.037354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.859060, 32.326550, 29.844969>,  <29.252481, 32.089371, 29.311022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.859060, 32.326550, 29.844969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.609055, 32.117332, 29.613182>,  <28.459051, 31.991802, 29.474110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.609055, 32.117332, 29.613182>,  <28.859060, 32.326550, 29.844969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.609055, 32.117332, 29.613182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394985, -0.428379, 0.812698,
		-0.673308, 0.736829, 0.061149,
		-0.625015, -0.523043, -0.579468,
		28.421551, 31.960419, 29.439342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.255255, 32.433350, 30.118223>,  <28.859060, 32.326550, 29.844969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.255255, 32.433350, 30.118223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.221684, 32.106445, 29.890175>,  <28.201540, 31.910301, 29.753345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.221684, 32.106445, 29.890175>,  <28.255255, 32.433350, 30.118223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.221684, 32.106445, 29.890175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466916, -0.473188, 0.747050,
		-0.880310, 0.328896, -0.341879,
		-0.083929, -0.817264, -0.570119,
		28.196505, 31.861267, 29.719139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.673037, 32.237621, 30.312157>,  <28.255255, 32.433350, 30.118223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.673037, 32.237621, 30.312157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.818781, 31.895035, 30.165894>,  <27.906227, 31.689484, 30.078136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.818781, 31.895035, 30.165894>,  <27.673037, 32.237621, 30.312157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.818781, 31.895035, 30.165894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565148, -0.515440, 0.644150,
		-0.740168, -0.028052, -0.671837,
		0.364361, -0.856466, -0.365658,
		27.928089, 31.638094, 30.056196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.156506, 31.737661, 30.169861>,  <27.673037, 32.237621, 30.312157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.156506, 31.737661, 30.169861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.473070, 31.493752, 30.187016>,  <27.663010, 31.347404, 30.197309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.473070, 31.493752, 30.187016>,  <27.156506, 31.737661, 30.169861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.473070, 31.493752, 30.187016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509992, -0.619966, 0.596280,
		-0.337009, -0.493776, -0.801630,
		0.791412, -0.609777, 0.042888,
		27.710493, 31.310818, 30.199883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.813522, 31.138777, 30.289803>,  <27.156506, 31.737661, 30.169861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.813522, 31.138777, 30.289803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.191914, 31.051579, 30.385803>,  <27.418949, 30.999260, 30.443403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.191914, 31.051579, 30.385803>,  <26.813522, 31.138777, 30.289803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.191914, 31.051579, 30.385803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324136, -0.653437, 0.684073,
		0.007701, -0.724912, -0.688798,
		0.945979, -0.217996, 0.240003,
		27.475708, 30.986179, 30.457804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.807842, 30.352665, 30.372875>,  <26.813522, 31.138777, 30.289803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.807842, 30.352665, 30.372875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.135601, 30.474575, 30.567070>,  <27.332256, 30.547722, 30.683586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.135601, 30.474575, 30.567070>,  <26.807842, 30.352665, 30.372875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.135601, 30.474575, 30.567070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053358, -0.802709, 0.593979,
		0.570737, -0.512609, -0.641476,
		0.819398, 0.304778, 0.485488,
		27.381420, 30.566008, 30.712717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.203346, 29.671694, 30.560860>,  <26.807842, 30.352665, 30.372875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.203346, 29.671694, 30.560860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.319256, 29.975224, 30.794170>,  <27.388802, 30.157341, 30.934156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.319256, 29.975224, 30.794170>,  <27.203346, 29.671694, 30.560860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.319256, 29.975224, 30.794170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107063, -0.631301, 0.768113,
		0.951088, -0.160130, -0.264176,
		0.289773, 0.758827, 0.583279,
		27.406187, 30.202871, 30.969154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.724438, 29.321995, 31.044115>,  <27.203346, 29.671694, 30.560860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.724438, 29.321995, 31.044115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.648119, 29.676369, 31.213215>,  <27.602327, 29.888992, 31.314674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.648119, 29.676369, 31.213215>,  <27.724438, 29.321995, 31.044115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.648119, 29.676369, 31.213215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193495, -0.388267, 0.901004,
		0.962370, 0.253707, -0.097344,
		-0.190796, 0.885935, 0.422747,
		27.590879, 29.942150, 31.340038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.280447, 29.470518, 31.433588>,  <27.724438, 29.321995, 31.044115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.280447, 29.470518, 31.433588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.985786, 29.669075, 31.617298>,  <27.808990, 29.788210, 31.727524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.985786, 29.669075, 31.617298>,  <28.280447, 29.470518, 31.433588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.985786, 29.669075, 31.617298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195093, -0.494271, 0.847133,
		0.647520, 0.713645, 0.267263,
		-0.736653, 0.496394, 0.459277,
		27.764791, 29.817993, 31.755081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.583923, 29.599592, 32.130100>,  <28.280447, 29.470518, 31.433588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.583923, 29.599592, 32.130100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.188002, 29.654106, 32.146667>,  <27.950449, 29.686815, 32.156609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.188002, 29.654106, 32.146667>,  <28.583923, 29.599592, 32.130100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.188002, 29.654106, 32.146667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020596, -0.424667, 0.905115,
		0.140944, 0.895033, 0.423144,
		-0.989803, 0.136285, 0.041420,
		27.891060, 29.694992, 32.159092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.470942, 29.959072, 32.743332>,  <28.583923, 29.599592, 32.130100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.470942, 29.959072, 32.743332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.136995, 29.757557, 32.654610>,  <27.936626, 29.636648, 32.601376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.136995, 29.757557, 32.654610>,  <28.470942, 29.959072, 32.743332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.136995, 29.757557, 32.654610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072507, -0.500084, 0.862936,
		-0.545656, 0.704355, 0.454032,
		-0.834867, -0.503787, -0.221803,
		27.886536, 29.606421, 32.588070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.090961, 29.940548, 33.325981>,  <28.470942, 29.959072, 32.743332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.090961, 29.940548, 33.325981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.919619, 29.644085, 33.119217>,  <27.816813, 29.466208, 32.995159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.919619, 29.644085, 33.119217>,  <28.090961, 29.940548, 33.325981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.919619, 29.644085, 33.119217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042788, -0.554772, 0.830901,
		-0.902596, 0.378040, 0.205928,
		-0.428357, -0.741156, -0.516911,
		27.791111, 29.421738, 32.964142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.659784, 29.627285, 33.871960>,  <28.090961, 29.940548, 33.325981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.659784, 29.627285, 33.871960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.727957, 29.358685, 33.583504>,  <27.768860, 29.197525, 33.410431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.727957, 29.358685, 33.583504>,  <27.659784, 29.627285, 33.871960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.727957, 29.358685, 33.583504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023421, -0.734401, 0.678312,
		-0.985092, -0.098714, -0.140890,
		0.170429, -0.671499, -0.721140,
		27.779085, 29.157234, 33.367161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.111794, 29.162884, 33.999619>,  <27.659784, 29.627285, 33.871960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.111794, 29.162884, 33.999619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.383688, 28.973106, 33.775883>,  <27.546825, 28.859240, 33.641640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.383688, 28.973106, 33.775883>,  <27.111794, 29.162884, 33.999619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.383688, 28.973106, 33.775883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080760, -0.806386, 0.585850,
		-0.728998, -0.353050, -0.586445,
		0.679735, -0.474445, -0.559341,
		27.587608, 28.830772, 33.608082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.796722, 28.549665, 33.789703>,  <27.111794, 29.162884, 33.999619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.796722, 28.549665, 33.789703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.192781, 28.493713, 33.792274>,  <27.430416, 28.460142, 33.793816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.192781, 28.493713, 33.792274>,  <26.796722, 28.549665, 33.789703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.192781, 28.493713, 33.792274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120076, -0.824558, 0.552889,
		-0.072040, -0.548213, -0.833230,
		0.990148, -0.139881, 0.006427,
		27.489826, 28.451750, 33.794201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.886908, 27.892849, 33.551540>,  <26.796722, 28.549665, 33.789703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.886908, 27.892849, 33.551540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.222101, 27.983486, 33.750111>,  <27.423218, 28.037868, 33.869251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.222101, 27.983486, 33.750111>,  <26.886908, 27.892849, 33.551540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.222101, 27.983486, 33.750111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031166, -0.928101, 0.371021,
		0.544803, -0.295439, -0.784797,
		0.837985, 0.226593, 0.496424,
		27.473497, 28.051464, 33.899036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.422461, 27.499817, 33.295246>,  <26.886908, 27.892849, 33.551540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.422461, 27.499817, 33.295246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.534927, 27.600479, 33.665676>,  <27.602407, 27.660877, 33.887936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.534927, 27.600479, 33.665676>,  <27.422461, 27.499817, 33.295246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.534927, 27.600479, 33.665676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064064, -0.967773, 0.243539,
		0.957519, -0.009147, -0.288226,
		0.281165, 0.251658, 0.926075,
		27.619276, 27.675976, 33.943497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.029181, 27.215740, 33.478947>,  <27.422461, 27.499817, 33.295246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.029181, 27.215740, 33.478947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.928698, 27.282505, 33.860321>,  <27.868408, 27.322563, 34.089146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.928698, 27.282505, 33.860321>,  <28.029181, 27.215740, 33.478947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.928698, 27.282505, 33.860321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174352, -0.961105, 0.214192,
		0.952101, 0.220039, 0.212335,
		-0.251207, 0.166912, 0.953434,
		27.853336, 27.332579, 34.146351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.450150, 26.755266, 33.909523>,  <28.029181, 27.215740, 33.478947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.450150, 26.755266, 33.909523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.186600, 26.880062, 34.183327>,  <28.028471, 26.954939, 34.347607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.186600, 26.880062, 34.183327>,  <28.450150, 26.755266, 33.909523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.186600, 26.880062, 34.183327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193175, -0.809254, 0.554790,
		0.727028, 0.497765, 0.472927,
		-0.658873, 0.311990, 0.684506,
		27.988937, 26.973660, 34.388680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.799847, 26.699411, 34.580204>,  <28.450150, 26.755266, 33.909523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.799847, 26.699411, 34.580204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.407522, 26.712894, 34.657013>,  <28.172127, 26.720984, 34.703098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.407522, 26.712894, 34.657013>,  <28.799847, 26.699411, 34.580204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.407522, 26.712894, 34.657013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064253, -0.874021, 0.481622,
		0.184064, 0.484718, 0.855084,
		-0.980812, 0.033708, 0.192020,
		28.113279, 26.723007, 34.714619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.686661, 26.361784, 35.263020>,  <28.799847, 26.699411, 34.580204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.686661, 26.361784, 35.263020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.323492, 26.348873, 35.095860>,  <28.105591, 26.341125, 34.995564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.323492, 26.348873, 35.095860>,  <28.686661, 26.361784, 35.263020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.323492, 26.348873, 35.095860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184158, -0.864918, 0.466908,
		-0.376518, 0.500875, 0.779332,
		-0.907921, -0.032279, -0.417897,
		28.051115, 26.339190, 34.970490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.309647, 26.120010, 35.780876>,  <28.686661, 26.361784, 35.263020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.309647, 26.120010, 35.780876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.096621, 26.054016, 35.448814>,  <27.968805, 26.014420, 35.249577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.096621, 26.054016, 35.448814>,  <28.309647, 26.120010, 35.780876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.096621, 26.054016, 35.448814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126111, -0.954401, 0.270583,
		-0.836940, 0.248794, 0.487477,
		-0.532568, -0.164985, -0.830152,
		27.936850, 26.004520, 35.199768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.600689, 25.935802, 35.918072>,  <28.309647, 26.120010, 35.780876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.600689, 25.935802, 35.918072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.659546, 25.784203, 35.552624>,  <27.694860, 25.693243, 35.333355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.659546, 25.784203, 35.552624>,  <27.600689, 25.935802, 35.918072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.659546, 25.784203, 35.552624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378622, -0.874909, 0.301961,
		-0.913781, 0.301487, -0.272233,
		0.147142, -0.378999, -0.913624,
		27.703688, 25.670504, 35.278538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.014490, 25.440636, 35.816097>,  <27.600689, 25.935802, 35.918072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.014490, 25.440636, 35.816097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.265606, 25.346390, 35.519352>,  <27.416275, 25.289843, 35.341305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.265606, 25.346390, 35.519352>,  <27.014490, 25.440636, 35.816097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.265606, 25.346390, 35.519352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354158, -0.935182, -0.002688,
		-0.693145, 0.264425, -0.670544,
		0.627791, -0.235615, -0.741865,
		27.453943, 25.275705, 35.296791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.606571, 25.115952, 35.294624>,  <27.014490, 25.440636, 35.816097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.606571, 25.115952, 35.294624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.986008, 24.998524, 35.247314>,  <27.213671, 24.928066, 35.218929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.986008, 24.998524, 35.247314>,  <26.606571, 25.115952, 35.294624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.986008, 24.998524, 35.247314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285526, -0.954993, 0.080391,
		-0.136550, -0.042489, -0.989722,
		0.948593, -0.293569, -0.118272,
		27.270586, 24.910454, 35.211834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.563145, 24.425959, 34.921852>,  <26.606571, 25.115952, 35.294624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.563145, 24.425959, 34.921852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.907810, 24.450474, 35.123360>,  <27.114609, 24.465183, 35.244263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.907810, 24.450474, 35.123360>,  <26.563145, 24.425959, 34.921852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.907810, 24.450474, 35.123360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105500, -0.949361, 0.295946,
		0.496395, -0.308153, -0.811562,
		0.861662, 0.061287, 0.503768,
		27.166309, 24.468861, 35.274490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.811430, 23.805395, 34.865231>,  <26.563145, 24.425959, 34.921852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.811430, 23.805395, 34.865231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.034060, 23.935379, 35.171074>,  <27.167637, 24.013371, 35.354580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.034060, 23.935379, 35.171074>,  <26.811430, 23.805395, 34.865231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.034060, 23.935379, 35.171074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108704, -0.883933, 0.454803,
		0.823656, -0.336248, -0.456649,
		0.556574, 0.324961, 0.764608,
		27.201033, 24.032867, 35.400455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.102062, 23.091255, 34.950527>,  <26.811430, 23.805395, 34.865231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.102062, 23.091255, 34.950527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.775471, 22.945652, 34.771255>,  <26.579515, 22.858290, 34.663692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.775471, 22.945652, 34.771255>,  <27.102062, 23.091255, 34.950527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.775471, 22.945652, 34.771255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224760, 0.514619, -0.827436,
		0.531841, -0.776312, -0.338356,
		-0.816473, -0.364015, -0.448180,
		26.530527, 22.836451, 34.636803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.250374, 22.731867, 34.282192>,  <27.102062, 23.091255, 34.950527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.250374, 22.731867, 34.282192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.882942, 22.889931, 34.279160>,  <26.662483, 22.984770, 34.277340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.882942, 22.889931, 34.279160>,  <27.250374, 22.731867, 34.282192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.882942, 22.889931, 34.279160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184110, 0.410837, -0.892926,
		-0.349734, -0.821620, -0.450140,
		-0.918580, 0.395162, -0.007585,
		26.607368, 23.008480, 34.276886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.073139, 22.578535, 33.596584>,  <27.250374, 22.731867, 34.282192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.073139, 22.578535, 33.596584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.802269, 22.846058, 33.719311>,  <26.639748, 23.006571, 33.792946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.802269, 22.846058, 33.719311>,  <27.073139, 22.578535, 33.596584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.802269, 22.846058, 33.719311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041005, 0.450619, -0.891774,
		-0.734680, -0.591305, -0.332572,
		-0.677174, 0.668806, 0.306814,
		26.599117, 23.046700, 33.811356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.669468, 22.760918, 33.019894>,  <27.073139, 22.578535, 33.596584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.669468, 22.760918, 33.019894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.558943, 23.056961, 33.265133>,  <26.492628, 23.234587, 33.412277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.558943, 23.056961, 33.265133>,  <26.669468, 22.760918, 33.019894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.558943, 23.056961, 33.265133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094549, 0.613907, -0.783696,
		-0.956405, -0.274514, -0.099654,
		-0.276314, 0.740108, 0.613099,
		26.476049, 23.278994, 33.449062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.042217, 22.975708, 32.762035>,  <26.669468, 22.760918, 33.019894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.042217, 22.975708, 32.762035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.189960, 23.273682, 32.984261>,  <26.278606, 23.452465, 33.117596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.189960, 23.273682, 32.984261>,  <26.042217, 22.975708, 32.762035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.189960, 23.273682, 32.984261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146897, 0.637124, -0.756633,
		-0.917603, 0.197859, 0.344756,
		0.369359, 0.744932, 0.555562,
		26.300768, 23.497162, 33.150928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.705690, 23.561136, 32.570339>,  <26.042217, 22.975708, 32.762035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.705690, 23.561136, 32.570339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.036091, 23.715111, 32.735043>,  <26.234331, 23.807495, 32.833866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.036091, 23.715111, 32.735043>,  <25.705690, 23.561136, 32.570339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.036091, 23.715111, 32.735043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061726, 0.664333, -0.744883,
		-0.560277, 0.640691, 0.524980,
		0.826002, 0.384936, 0.411758,
		26.283892, 23.830591, 32.858570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.582685, 24.335548, 32.606544>,  <25.705690, 23.561136, 32.570339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.582685, 24.335548, 32.606544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.980812, 24.301476, 32.624840>,  <26.219688, 24.281033, 32.635818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.980812, 24.301476, 32.624840>,  <25.582685, 24.335548, 32.606544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.980812, 24.301476, 32.624840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096058, 0.817367, -0.568054,
		0.010999, 0.569786, 0.821719,
		0.995315, -0.085180, 0.045742,
		26.279408, 24.275921, 32.638561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.792639, 25.031944, 32.810696>,  <25.582685, 24.335548, 32.606544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.792639, 25.031944, 32.810696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.092373, 24.827770, 32.641956>,  <26.272213, 24.705265, 32.540714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.092373, 24.827770, 32.641956>,  <25.792639, 25.031944, 32.810696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.092373, 24.827770, 32.641956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176766, 0.768115, -0.615430,
		0.638163, 0.386595, 0.665802,
		0.749334, -0.510436, -0.421846,
		26.317173, 24.674639, 32.515404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.428610, 25.527086, 32.814426>,  <25.792639, 25.031944, 32.810696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.428610, 25.527086, 32.814426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.530905, 25.249176, 32.545536>,  <26.592281, 25.082430, 32.384201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.530905, 25.249176, 32.545536>,  <26.428610, 25.527086, 32.814426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.530905, 25.249176, 32.545536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164064, 0.716453, -0.678070,
		0.952724, 0.063119, 0.297211,
		0.255736, -0.694774, -0.672226,
		26.607626, 25.040743, 32.343868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.945826, 25.850010, 32.433563>,  <26.428610, 25.527086, 32.814426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.945826, 25.850010, 32.433563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.797070, 25.560764, 32.200737>,  <26.707815, 25.387217, 32.061043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.797070, 25.560764, 32.200737>,  <26.945826, 25.850010, 32.433563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.797070, 25.560764, 32.200737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177007, 0.560293, -0.809160,
		0.911244, -0.403950, -0.080372,
		-0.371892, -0.723116, -0.582065,
		26.685501, 25.343830, 32.026119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.443277, 25.763683, 31.983343>,  <26.945826, 25.850010, 32.433563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.443277, 25.763683, 31.983343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.128057, 25.603100, 31.796661>,  <26.938927, 25.506750, 31.684652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.128057, 25.603100, 31.796661>,  <27.443277, 25.763683, 31.983343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.128057, 25.603100, 31.796661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179987, 0.574737, -0.798299,
		0.588716, -0.713098, -0.380663,
		-0.788047, -0.401458, -0.466705,
		26.891644, 25.482662, 31.656651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.623310, 25.747814, 31.326752>,  <27.443277, 25.763683, 31.983343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.623310, 25.747814, 31.326752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.229216, 25.703671, 31.274399>,  <26.992760, 25.677183, 31.242987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.229216, 25.703671, 31.274399>,  <27.623310, 25.747814, 31.326752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.229216, 25.703671, 31.274399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055577, 0.516914, -0.854231,
		0.161927, -0.848893, -0.503150,
		-0.985236, -0.110360, -0.130881,
		26.933645, 25.670563, 31.235134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.505587, 25.526266, 30.596201>,  <27.623310, 25.747814, 31.326752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.505587, 25.526266, 30.596201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.174345, 25.701992, 30.735485>,  <26.975601, 25.807426, 30.819056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.174345, 25.701992, 30.735485>,  <27.505587, 25.526266, 30.596201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.174345, 25.701992, 30.735485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013406, 0.636505, -0.771156,
		-0.560417, -0.633928, -0.532980,
		-0.828102, 0.439314, 0.348210,
		26.925915, 25.833786, 30.839949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.972214, 25.553871, 30.088245>,  <27.505587, 25.526266, 30.596201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.972214, 25.553871, 30.088245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.868979, 25.839970, 30.348034>,  <26.807037, 26.011629, 30.503906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.868979, 25.839970, 30.348034>,  <26.972214, 25.553871, 30.088245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.868979, 25.839970, 30.348034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142328, 0.693058, -0.706692,
		-0.955581, -0.089950, -0.280668,
		-0.258086, 0.715248, 0.649470,
		26.791553, 26.054544, 30.542875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.445694, 25.967169, 29.768564>,  <26.972214, 25.553871, 30.088245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.445694, 25.967169, 29.768564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.584496, 26.201218, 30.061745>,  <26.667776, 26.341648, 30.237654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.584496, 26.201218, 30.061745>,  <26.445694, 25.967169, 29.768564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.584496, 26.201218, 30.061745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208448, 0.713848, -0.668559,
		-0.914406, 0.384774, 0.125740,
		0.347003, 0.585124, 0.732952,
		26.688597, 26.376755, 30.281630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.127474, 26.609648, 29.627636>,  <26.445694, 25.967169, 29.768564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.127474, 26.609648, 29.627636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.464529, 26.683624, 29.829926>,  <26.666763, 26.728010, 29.951300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.464529, 26.683624, 29.829926>,  <26.127474, 26.609648, 29.627636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.464529, 26.683624, 29.829926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148041, 0.823415, -0.547788,
		-0.517727, 0.536455, 0.666464,
		0.842640, 0.184941, 0.505722,
		26.717321, 26.739107, 29.981642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.976915, 27.257242, 29.861130>,  <26.127474, 26.609648, 29.627636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.976915, 27.257242, 29.861130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.372868, 27.211246, 29.894382>,  <26.610439, 27.183649, 29.914333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.372868, 27.211246, 29.894382>,  <25.976915, 27.257242, 29.861130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.372868, 27.211246, 29.894382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136952, 0.927533, -0.347745,
		-0.037118, 0.355612, 0.933896,
		0.989882, -0.114991, 0.083130,
		26.669832, 27.176748, 29.919321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.294371, 27.772985, 30.286741>,  <25.976915, 27.257242, 29.861130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.294371, 27.772985, 30.286741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.571447, 27.639366, 30.031055>,  <26.737694, 27.559195, 29.877644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.571447, 27.639366, 30.031055>,  <26.294371, 27.772985, 30.286741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.571447, 27.639366, 30.031055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161901, 0.935674, -0.313530,
		0.702829, 0.113691, 0.702215,
		0.692690, -0.334047, -0.639213,
		26.779255, 27.539152, 29.839293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.583054, 28.345278, 30.145630>,  <26.294371, 27.772985, 30.286741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.583054, 28.345278, 30.145630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.764778, 28.106079, 29.881508>,  <26.873812, 27.962561, 29.723034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.764778, 28.106079, 29.881508>,  <26.583054, 28.345278, 30.145630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.764778, 28.106079, 29.881508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172554, 0.786247, -0.593329,
		0.873972, 0.155616, 0.460386,
		0.454309, -0.597995, -0.660306,
		26.901072, 27.926680, 29.683416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.330128, 28.625984, 30.009247>,  <26.583054, 28.345278, 30.145630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.330128, 28.625984, 30.009247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.201370, 28.426167, 29.687542>,  <27.124115, 28.306276, 29.494518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.201370, 28.426167, 29.687542>,  <27.330128, 28.625984, 30.009247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.201370, 28.426167, 29.687542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347223, 0.728000, -0.591145,
		0.880807, -0.469545, -0.060885,
		-0.321894, -0.499544, -0.804264,
		27.104801, 28.276304, 29.446262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.820768, 28.816774, 29.488049>,  <27.330128, 28.625984, 30.009247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.820768, 28.816774, 29.488049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.498901, 28.693317, 29.285168>,  <27.305782, 28.619244, 29.163439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.498901, 28.693317, 29.285168>,  <27.820768, 28.816774, 29.488049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.498901, 28.693317, 29.285168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135590, 0.736163, -0.663083,
		0.578039, -0.602332, -0.550516,
		-0.804666, -0.308643, -0.507201,
		27.257502, 28.600725, 29.133007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.970518, 28.954924, 28.692310>,  <27.820768, 28.816774, 29.488049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.970518, 28.954924, 28.692310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.580315, 28.866955, 28.690655>,  <27.346193, 28.814173, 28.689661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.580315, 28.866955, 28.690655>,  <27.970518, 28.954924, 28.692310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.580315, 28.866955, 28.690655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140234, 0.636308, -0.758582,
		0.169464, -0.739423, -0.651564,
		-0.975508, -0.219923, -0.004139,
		27.287663, 28.800978, 28.689413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.685886, 28.727776, 27.915686>,  <27.970518, 28.954924, 28.692310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.685886, 28.727776, 27.915686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.396204, 28.859497, 28.158035>,  <27.222395, 28.938530, 28.303446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.396204, 28.859497, 28.158035>,  <27.685886, 28.727776, 27.915686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.396204, 28.859497, 28.158035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277584, 0.665070, -0.693274,
		-0.631248, -0.670254, -0.390237,
		-0.724205, 0.329305, 0.605876,
		27.178942, 28.958288, 28.339798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.240704, 29.098553, 27.507027>,  <27.685886, 28.727776, 27.915686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.240704, 29.098553, 27.507027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.108738, 29.247116, 27.854179>,  <27.029558, 29.336254, 28.062471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.108738, 29.247116, 27.854179>,  <27.240704, 29.098553, 27.507027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.108738, 29.247116, 27.854179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388974, 0.784198, -0.483459,
		-0.860149, -0.497082, -0.114250,
		-0.329913, 0.371406, 0.867880,
		27.009764, 29.358538, 28.114544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.710274, 29.415522, 27.344213>,  <27.240704, 29.098553, 27.507027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.710274, 29.415522, 27.344213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.801638, 29.586185, 27.694252>,  <26.856455, 29.688583, 27.904274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.801638, 29.586185, 27.694252>,  <26.710274, 29.415522, 27.344213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.801638, 29.586185, 27.694252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320493, 0.881707, -0.346232,
		-0.919301, -0.201379, 0.338130,
		0.228407, 0.426660, 0.875095,
		26.870159, 29.714184, 27.956781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.193649, 29.918640, 27.321840>,  <26.710274, 29.415522, 27.344213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.193649, 29.918640, 27.321840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.449835, 30.017723, 27.612617>,  <26.603546, 30.077173, 27.787083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.449835, 30.017723, 27.612617>,  <26.193649, 29.918640, 27.321840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.449835, 30.017723, 27.612617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261365, 0.960357, -0.096972,
		-0.722144, -0.127890, 0.679818,
		0.640466, 0.247708, 0.726942,
		26.641975, 30.092035, 27.830700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.889040, 30.357578, 27.615057>,  <26.193649, 29.918640, 27.321840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.889040, 30.357578, 27.615057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.260626, 30.449348, 27.731255>,  <26.483578, 30.504412, 27.800974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.260626, 30.449348, 27.731255>,  <25.889040, 30.357578, 27.615057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.260626, 30.449348, 27.731255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237868, 0.971276, -0.006423,
		-0.283625, -0.063133, 0.956855,
		0.928965, 0.229427, 0.290496,
		26.539314, 30.518177, 27.818403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.805166, 30.954012, 28.093157>,  <25.889040, 30.357578, 27.615057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.805166, 30.954012, 28.093157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.179468, 30.960842, 27.952263>,  <26.404049, 30.964941, 27.867725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.179468, 30.960842, 27.952263>,  <25.805166, 30.954012, 28.093157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.179468, 30.960842, 27.952263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114659, 0.959291, -0.258099,
		0.333490, 0.281904, 0.899619,
		0.935755, 0.017076, -0.352236,
		26.460196, 30.965965, 27.846592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.177132, 31.505934, 28.438915>,  <25.805166, 30.954012, 28.093157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.177132, 31.505934, 28.438915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.321012, 31.430054, 28.073483>,  <26.407341, 31.384525, 27.854223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.321012, 31.430054, 28.073483>,  <26.177132, 31.505934, 28.438915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.321012, 31.430054, 28.073483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271144, 0.915612, -0.296878,
		0.892803, 0.354499, 0.277910,
		0.359700, -0.189700, -0.913581,
		26.428923, 31.373144, 27.799408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.709894, 32.047066, 28.326363>,  <26.177132, 31.505934, 28.438915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.709894, 32.047066, 28.326363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.590410, 31.867588, 27.989449>,  <26.518721, 31.759901, 27.787300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.590410, 31.867588, 27.989449>,  <26.709894, 32.047066, 28.326363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.590410, 31.867588, 27.989449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500969, 0.824924, -0.261782,
		0.812282, 0.343761, -0.471197,
		-0.298711, -0.448696, -0.842285,
		26.500797, 31.732979, 27.736763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.664955, 32.563854, 27.871685>,  <26.709894, 32.047066, 28.326363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.664955, 32.563854, 27.871685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.499191, 32.312485, 27.608368>,  <26.399733, 32.161663, 27.450378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.499191, 32.312485, 27.608368>,  <26.664955, 32.563854, 27.871685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.499191, 32.312485, 27.608368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402235, 0.775316, -0.486921,
		0.816377, 0.063003, -0.574073,
		-0.414411, -0.628423, -0.658292,
		26.374868, 32.123959, 27.410881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.786846, 32.752712, 27.188238>,  <26.664955, 32.563854, 27.871685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.786846, 32.752712, 27.188238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.458868, 32.525345, 27.161140>,  <26.262081, 32.388924, 27.144882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.458868, 32.525345, 27.161140>,  <26.786846, 32.752712, 27.188238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.458868, 32.525345, 27.161140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438680, 0.699966, -0.563567,
		0.367760, -0.432376, -0.823288,
		-0.819947, -0.568418, -0.067745,
		26.212885, 32.354820, 27.140818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.661518, 32.677109, 26.529371>,  <26.786846, 32.752712, 27.188238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.661518, 32.677109, 26.529371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.296619, 32.595039, 26.671192>,  <26.077681, 32.545795, 26.756285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.296619, 32.595039, 26.671192>,  <26.661518, 32.677109, 26.529371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.296619, 32.595039, 26.671192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408105, 0.529985, -0.743348,
		-0.035390, -0.822812, -0.567211,
		-0.912248, -0.205175, 0.354550,
		26.022945, 32.533485, 26.777557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.293365, 32.658974, 25.990234>,  <26.661518, 32.677109, 26.529371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.293365, 32.658974, 25.990234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.016201, 32.728172, 26.270218>,  <25.849901, 32.769691, 26.438208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.016201, 32.728172, 26.270218>,  <26.293365, 32.658974, 25.990234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.016201, 32.728172, 26.270218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472152, 0.624826, -0.621823,
		-0.544925, -0.761357, -0.351271,
		-0.692913, 0.172994, 0.699961,
		25.808327, 32.780071, 26.480206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.618376, 32.603210, 25.573042>,  <26.293365, 32.658974, 25.990234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.618376, 32.603210, 25.573042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.557076, 32.816326, 25.905945>,  <25.520296, 32.944195, 26.105686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.557076, 32.816326, 25.905945>,  <25.618376, 32.603210, 25.573042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.557076, 32.816326, 25.905945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548226, 0.654874, -0.520182,
		-0.822170, -0.535982, 0.191730,
		-0.153249, 0.532789, 0.832256,
		25.511101, 32.976162, 26.155622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.918072, 32.489105, 25.738398>,  <25.618376, 32.603210, 25.573042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.918072, 32.489105, 25.738398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.010353, 32.828804, 25.928371>,  <25.065722, 33.032623, 26.042355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.010353, 32.828804, 25.928371>,  <24.918072, 32.489105, 25.738398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.010353, 32.828804, 25.928371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709775, 0.480756, -0.514872,
		-0.665579, -0.218312, 0.713684,
		0.230705, 0.849243, 0.474933,
		25.079565, 33.083576, 26.070852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.208246, 32.634041, 25.996290>,  <24.918072, 32.489105, 25.738398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.208246, 32.634041, 25.996290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.424404, 32.970589, 25.999538>,  <24.554098, 33.172520, 26.001488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.424404, 32.970589, 25.999538>,  <24.208246, 32.634041, 25.996290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.424404, 32.970589, 25.999538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788831, 0.509960, -0.343054,
		-0.292777, 0.178980, 0.939281,
		0.540395, 0.841372, 0.008119,
		24.586523, 33.223000, 26.001974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.689629, 33.125534, 26.158123>,  <24.208246, 32.634041, 25.996290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.689629, 33.125534, 26.158123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.999533, 33.320301, 25.996799>,  <24.185476, 33.437160, 25.900005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.999533, 33.320301, 25.996799>,  <23.689629, 33.125534, 26.158123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.999533, 33.320301, 25.996799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627934, 0.667027, -0.400966,
		0.073781, 0.563904, 0.822538,
		0.774761, 0.486916, -0.403308,
		24.231960, 33.466377, 25.875807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.462524, 33.792236, 26.199673>,  <23.689629, 33.125534, 26.158123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.462524, 33.792236, 26.199673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.746216, 33.840755, 25.921886>,  <23.916431, 33.869869, 25.755215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.746216, 33.840755, 25.921886>,  <23.462524, 33.792236, 26.199673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.746216, 33.840755, 25.921886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471956, 0.813463, -0.339903,
		0.523691, 0.568826, 0.634180,
		0.709228, 0.121301, -0.694465,
		23.958984, 33.877144, 25.713547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.686150, 34.516651, 26.217628>,  <23.462524, 33.792236, 26.199673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.686150, 34.516651, 26.217628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.788214, 34.376259, 25.857250>,  <23.849451, 34.292023, 25.641024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.788214, 34.376259, 25.857250>,  <23.686150, 34.516651, 26.217628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.788214, 34.376259, 25.857250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426538, 0.795365, -0.430651,
		0.867733, 0.494172, 0.053237,
		0.255159, -0.350982, -0.900947,
		23.864761, 34.270966, 25.586966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.932686, 35.084728, 25.681543>,  <23.686150, 34.516651, 26.217628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.932686, 35.084728, 25.681543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.781605, 34.763924, 25.496452>,  <23.690956, 34.571442, 25.385397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.781605, 34.763924, 25.496452>,  <23.932686, 35.084728, 25.681543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.781605, 34.763924, 25.496452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655884, 0.584490, -0.477690,
		0.653574, 0.123073, -0.746789,
		-0.377701, -0.802013, -0.462729,
		23.668295, 34.523319, 25.357634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.403179, 35.640320, 25.535561>,  <23.932686, 35.084728, 25.681543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.403179, 35.640320, 25.535561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.023632, 35.754875, 25.482452>,  <22.795904, 35.823608, 25.450586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.023632, 35.754875, 25.482452>,  <23.403179, 35.640320, 25.535561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.023632, 35.754875, 25.482452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179838, -0.144758, 0.972987,
		0.259434, 0.947114, 0.188860,
		-0.948869, 0.286391, -0.132772,
		22.738972, 35.840794, 25.442621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.248890, 36.288589, 25.957846>,  <23.403179, 35.640320, 25.535561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.248890, 36.288589, 25.957846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.960163, 36.023624, 25.877647>,  <22.786928, 35.864647, 25.829529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.960163, 36.023624, 25.877647>,  <23.248890, 36.288589, 25.957846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.960163, 36.023624, 25.877647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398326, 0.160716, 0.903054,
		-0.565968, 0.731700, -0.379862,
		-0.721815, -0.662409, -0.200495,
		22.743618, 35.824902, 25.817499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.533226, 36.546078, 25.902912>,  <23.248890, 36.288589, 25.957846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.533226, 36.546078, 25.902912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.557381, 36.171108, 26.040073>,  <22.571873, 35.946125, 26.122370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.557381, 36.171108, 26.040073>,  <22.533226, 36.546078, 25.902912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.557381, 36.171108, 26.040073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393134, 0.293428, 0.871404,
		-0.917496, -0.187426, -0.350816,
		0.060385, -0.937428, 0.342903,
		22.575497, 35.889881, 26.142944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.810272, 36.468452, 26.265350>,  <22.533226, 36.546078, 25.902912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.810272, 36.468452, 26.265350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.901318, 36.758739, 26.005650>,  <21.955944, 36.932911, 25.849829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.901318, 36.758739, 26.005650>,  <21.810272, 36.468452, 26.265350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.901318, 36.758739, 26.005650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310666, 0.577787, 0.754752,
		0.922864, -0.373491, -0.093944,
		0.227614, 0.725718, -0.649250,
		21.969603, 36.976456, 25.810875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.956879, 35.937920, 25.788868>,  <21.810272, 36.468452, 26.265350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.956879, 35.937920, 25.788868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.666710, 35.904438, 25.515591>,  <21.492609, 35.884350, 25.351624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.666710, 35.904438, 25.515591>,  <21.956879, 35.937920, 25.788868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.666710, 35.904438, 25.515591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646019, 0.259739, -0.717771,
		0.237531, -0.962045, -0.134348,
		-0.725423, -0.083702, -0.683195,
		21.449083, 35.879326, 25.310633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.276424, 35.479191, 25.310490>,  <21.956879, 35.937920, 25.788868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.276424, 35.479191, 25.310490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.002338, 35.689671, 25.109058>,  <21.837887, 35.815960, 24.988199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.002338, 35.689671, 25.109058>,  <22.276424, 35.479191, 25.310490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.002338, 35.689671, 25.109058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586819, -0.010684, -0.809648,
		-0.431419, -0.850292, -0.301465,
		-0.685216, 0.526203, -0.503577,
		21.796774, 35.847530, 24.957985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.042095, 35.146709, 24.652533>,  <22.276424, 35.479191, 25.310490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.042095, 35.146709, 24.652533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.030661, 35.543499, 24.603275>,  <22.023800, 35.781574, 24.573721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.030661, 35.543499, 24.603275>,  <22.042095, 35.146709, 24.652533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.030661, 35.543499, 24.603275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508401, -0.091642, -0.856230,
		-0.860646, -0.087084, -0.501702,
		-0.028587, 0.991977, -0.123144,
		22.022085, 35.841091, 24.566332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.690750, 35.234295, 24.051188>,  <22.042095, 35.146709, 24.652533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.690750, 35.234295, 24.051188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.947483, 35.536671, 24.102722>,  <22.101522, 35.718098, 24.133642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.947483, 35.536671, 24.102722>,  <21.690750, 35.234295, 24.051188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.947483, 35.536671, 24.102722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415515, -0.201627, -0.886958,
		-0.644513, 0.622812, -0.443517,
		0.641833, 0.755944, 0.128837,
		22.140034, 35.763454, 24.141373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.685720, 35.547829, 23.383223>,  <21.690750, 35.234295, 24.051188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.685720, 35.547829, 23.383223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.991159, 35.748009, 23.546421>,  <22.174423, 35.868118, 23.644341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.991159, 35.748009, 23.546421>,  <21.685720, 35.547829, 23.383223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.991159, 35.748009, 23.546421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512122, -0.084574, -0.854739,
		-0.393252, 0.861622, -0.320874,
		0.763600, 0.500454, 0.407996,
		22.220240, 35.898144, 23.668819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.805685, 36.153889, 22.979578>,  <21.685720, 35.547829, 23.383223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.805685, 36.153889, 22.979578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.135939, 36.032108, 23.169582>,  <22.334091, 35.959038, 23.283585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.135939, 36.032108, 23.169582>,  <21.805685, 36.153889, 22.979578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.135939, 36.032108, 23.169582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452211, -0.146364, -0.879820,
		0.337388, 0.941215, 0.016833,
		0.825636, -0.304453, 0.475009,
		22.383629, 35.940773, 23.312084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.331211, 36.465752, 22.622850>,  <21.805685, 36.153889, 22.979578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.331211, 36.465752, 22.622850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.534798, 36.190758, 22.830048>,  <22.656950, 36.025761, 22.954365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.534798, 36.190758, 22.830048>,  <22.331211, 36.465752, 22.622850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.534798, 36.190758, 22.830048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648666, -0.089253, -0.755822,
		0.565849, 0.720692, 0.400522,
		0.508967, -0.687486, 0.517992,
		22.687489, 35.984512, 22.985445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.015003, 36.629490, 22.553902>,  <22.331211, 36.465752, 22.622850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.015003, 36.629490, 22.553902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.056829, 36.240295, 22.636227>,  <23.081924, 36.006779, 22.685621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.056829, 36.240295, 22.636227>,  <23.015003, 36.629490, 22.553902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.056829, 36.240295, 22.636227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532635, -0.119977, -0.837798,
		0.839861, 0.197228, 0.505702,
		0.104564, -0.972988, 0.205815,
		23.088200, 35.948399, 22.697971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.656134, 36.587467, 22.334425>,  <23.015003, 36.629490, 22.553902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.656134, 36.587467, 22.334425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.490376, 36.223434, 22.336567>,  <23.390921, 36.005016, 22.337852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.490376, 36.223434, 22.336567>,  <23.656134, 36.587467, 22.334425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.490376, 36.223434, 22.336567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490646, -0.228360, -0.840903,
		0.766513, -0.345839, 0.541160,
		-0.414396, -0.910081, 0.005356,
		23.366056, 35.950409, 22.338173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.207819, 36.109581, 22.126177>,  <23.656134, 36.587467, 22.334425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.207819, 36.109581, 22.126177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.865850, 35.920689, 22.040279>,  <23.660669, 35.807354, 21.988741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.865850, 35.920689, 22.040279>,  <24.207819, 36.109581, 22.126177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.865850, 35.920689, 22.040279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386818, -0.304470, -0.870442,
		0.345664, -0.827224, 0.442963,
		-0.854919, -0.472227, -0.214741,
		23.609375, 35.779022, 21.975857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.397539, 35.443871, 21.869448>,  <24.207819, 36.109581, 22.126177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.397539, 35.443871, 21.869448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.019794, 35.492340, 21.747139>,  <23.793148, 35.521420, 21.673754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.019794, 35.492340, 21.747139>,  <24.397539, 35.443871, 21.869448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.019794, 35.492340, 21.747139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246047, -0.356670, -0.901248,
		-0.218263, -0.926339, 0.307013,
		-0.944363, 0.121170, -0.305771,
		23.736486, 35.528690, 21.655407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.236370, 34.915409, 21.584757>,  <24.397539, 35.443871, 21.869448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.236370, 34.915409, 21.584757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.959042, 35.156239, 21.426357>,  <23.792645, 35.300735, 21.331318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.959042, 35.156239, 21.426357>,  <24.236370, 34.915409, 21.584757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.959042, 35.156239, 21.426357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161050, -0.406162, -0.899497,
		-0.702401, -0.687417, 0.184638,
		-0.693322, 0.602072, -0.395997,
		23.751045, 35.336861, 21.307558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.019079, 34.525959, 21.101212>,  <24.236370, 34.915409, 21.584757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.019079, 34.525959, 21.101212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.876846, 34.877155, 20.973026>,  <23.791506, 35.087872, 20.896116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.876846, 34.877155, 20.973026>,  <24.019079, 34.525959, 21.101212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.876846, 34.877155, 20.973026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102237, -0.377350, -0.920410,
		-0.929037, -0.294518, 0.223942,
		-0.355582, 0.877990, -0.320462,
		23.770172, 35.140553, 20.876888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.421688, 34.394009, 20.681469>,  <24.019079, 34.525959, 21.101212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.421688, 34.394009, 20.681469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.534117, 34.760273, 20.566528>,  <23.601574, 34.980030, 20.497564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.534117, 34.760273, 20.566528>,  <23.421688, 34.394009, 20.681469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.534117, 34.760273, 20.566528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176869, -0.244869, -0.953287,
		-0.943248, 0.318765, 0.093126,
		0.281071, 0.915657, -0.287351,
		23.618439, 35.034969, 20.480324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.906345, 34.469925, 20.296501>,  <23.421688, 34.394009, 20.681469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.906345, 34.469925, 20.296501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.185997, 34.734722, 20.188446>,  <23.353788, 34.893600, 20.123613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.185997, 34.734722, 20.188446>,  <22.906345, 34.469925, 20.296501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.185997, 34.734722, 20.188446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212309, -0.168568, -0.962554,
		-0.682745, 0.730304, 0.022697,
		0.699131, 0.661997, -0.270139,
		23.395737, 34.933323, 20.107405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.687943, 34.952827, 19.729427>,  <22.906345, 34.469925, 20.296501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.687943, 34.952827, 19.729427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.086466, 34.977016, 19.705055>,  <23.325581, 34.991531, 19.690432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.086466, 34.977016, 19.705055>,  <22.687943, 34.952827, 19.729427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.086466, 34.977016, 19.705055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052772, -0.128395, -0.990318,
		-0.067711, 0.989878, -0.124730,
		0.996308, 0.060473, -0.060932,
		23.385359, 34.995159, 19.686775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.783869, 35.325802, 19.011728>,  <22.687943, 34.952827, 19.729427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.783869, 35.325802, 19.011728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.121225, 35.142960, 19.124683>,  <23.323639, 35.033253, 19.192457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.121225, 35.142960, 19.124683>,  <22.783869, 35.325802, 19.011728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.121225, 35.142960, 19.124683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184682, -0.246923, -0.951274,
		0.504560, 0.854450, -0.123834,
		0.843393, -0.457105, 0.282389,
		23.374243, 35.005829, 19.209400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.230032, 35.535164, 18.507298>,  <22.783869, 35.325802, 19.011728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.230032, 35.535164, 18.507298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.357965, 35.197060, 18.678520>,  <23.434725, 34.994198, 18.781254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.357965, 35.197060, 18.678520>,  <23.230032, 35.535164, 18.507298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.357965, 35.197060, 18.678520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204619, -0.379507, -0.902278,
		0.925115, 0.376167, 0.051578,
		0.319833, -0.845265, 0.428058,
		23.453915, 34.943481, 18.806938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.824533, 35.421219, 18.098566>,  <23.230032, 35.535164, 18.507298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.824533, 35.421219, 18.098566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.725897, 35.067230, 18.256565>,  <23.666714, 34.854839, 18.351364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.725897, 35.067230, 18.256565>,  <23.824533, 35.421219, 18.098566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.725897, 35.067230, 18.256565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187403, -0.443434, -0.876497,
		0.950827, -0.142114, 0.275194,
		-0.246593, -0.884969, 0.394996,
		23.651918, 34.801739, 18.375065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.332058, 35.022846, 17.856987>,  <23.824533, 35.421219, 18.098566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.332058, 35.022846, 17.856987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.001766, 34.812126, 17.937634>,  <23.803591, 34.685692, 17.986021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.001766, 34.812126, 17.937634>,  <24.332058, 35.022846, 17.856987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.001766, 34.812126, 17.937634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071895, -0.452811, -0.888703,
		0.559466, -0.719333, 0.411774,
		-0.825729, -0.526804, 0.201616,
		23.754047, 34.654083, 17.998117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.559860, 34.403309, 17.552963>,  <24.332058, 35.022846, 17.856987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.559860, 34.403309, 17.552963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.168207, 34.348629, 17.613117>,  <23.933216, 34.315823, 17.649210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.168207, 34.348629, 17.613117>,  <24.559860, 34.403309, 17.552963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.168207, 34.348629, 17.613117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050475, -0.553215, -0.831508,
		0.196861, -0.821746, 0.534770,
		-0.979131, -0.136699, 0.150384,
		23.874468, 34.307621, 17.658232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.366627, 33.708797, 17.416216>,  <24.559860, 34.403309, 17.552963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.366627, 33.708797, 17.416216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.029579, 33.911777, 17.344116>,  <23.827351, 34.033566, 17.300856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.029579, 33.911777, 17.344116>,  <24.366627, 33.708797, 17.416216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.029579, 33.911777, 17.344116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116181, -0.498144, -0.859276,
		-0.525836, -0.703095, 0.478700,
		-0.842614, 0.507454, -0.180256,
		23.776794, 34.064011, 17.290041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.874546, 33.230442, 17.125704>,  <24.366627, 33.708797, 17.416216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.874546, 33.230442, 17.125704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.731606, 33.591381, 17.029320>,  <23.645842, 33.807945, 16.971489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.731606, 33.591381, 17.029320>,  <23.874546, 33.230442, 17.125704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.731606, 33.591381, 17.029320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244786, -0.339464, -0.908209,
		-0.901321, -0.265567, 0.342192,
		-0.357352, 0.902352, -0.240959,
		23.624399, 33.862087, 16.957031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.508221, 32.920860, 16.558052>,  <23.874546, 33.230442, 17.125704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.508221, 32.920860, 16.558052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.535444, 33.318882, 16.529114>,  <23.551779, 33.557693, 16.511751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.535444, 33.318882, 16.529114>,  <23.508221, 32.920860, 16.558052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.535444, 33.318882, 16.529114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254092, -0.052834, -0.965736,
		-0.964783, 0.084108, 0.249240,
		0.068058, 0.995055, -0.072345,
		23.555862, 33.617397, 16.507410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.849497, 33.172134, 16.323372>,  <23.508221, 32.920860, 16.558052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.849497, 33.172134, 16.323372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.162354, 33.392097, 16.206161>,  <23.350067, 33.524075, 16.135836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.162354, 33.392097, 16.206161>,  <22.849497, 33.172134, 16.323372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.162354, 33.392097, 16.206161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292702, -0.090906, -0.951873,
		-0.550076, 0.830266, 0.089856,
		0.782139, 0.549903, -0.293026,
		23.396996, 33.557068, 16.118254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.720545, 33.758060, 15.880850>,  <22.849497, 33.172134, 16.323372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.720545, 33.758060, 15.880850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.082365, 33.605381, 15.804858>,  <23.299458, 33.513771, 15.759263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.082365, 33.605381, 15.804858>,  <22.720545, 33.758060, 15.880850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.082365, 33.605381, 15.804858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169579, 0.086741, -0.981692,
		0.391191, 0.920207, 0.013733,
		0.904551, -0.381701, -0.189980,
		23.353731, 33.490871, 15.747865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.039677, 34.211895, 15.601741>,  <22.720545, 33.758060, 15.880850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.039677, 34.211895, 15.601741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.129105, 33.847019, 15.464377>,  <23.182762, 33.628094, 15.381959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.129105, 33.847019, 15.464377>,  <23.039677, 34.211895, 15.601741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.129105, 33.847019, 15.464377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186601, 0.305753, -0.933646,
		0.956659, 0.272817, -0.101857,
		0.223572, -0.912187, -0.343409,
		23.196177, 33.573364, 15.361355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.646307, 33.986568, 15.045738>,  <23.039677, 34.211895, 15.601741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.646307, 33.986568, 15.045738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.317923, 33.758678, 15.030560>,  <23.120892, 33.621944, 15.021454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.317923, 33.758678, 15.030560>,  <23.646307, 33.986568, 15.045738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.317923, 33.758678, 15.030560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166868, 0.302947, -0.938285,
		0.546057, -0.763963, -0.343776,
		-0.820961, -0.569722, -0.037945,
		23.071634, 33.587761, 15.019177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.912075, 34.711857, 15.252347>,  <23.646307, 33.986568, 15.045738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.912075, 34.711857, 15.252347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.118528, 34.369263, 15.254773>,  <24.242401, 34.163708, 15.256228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.118528, 34.369263, 15.254773>,  <23.912075, 34.711857, 15.252347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.118528, 34.369263, 15.254773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546468, 0.334747, 0.767670,
		-0.659529, -0.392906, 0.640817,
		0.516134, -0.856487, 0.006064,
		24.273369, 34.112316, 15.256593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.232224, 35.017792, 15.299038>,  <23.912075, 34.711857, 15.252347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.232224, 35.017792, 15.299038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.182629, 35.353012, 15.086513>,  <23.152872, 35.554146, 14.958998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.182629, 35.353012, 15.086513>,  <23.232224, 35.017792, 15.299038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.182629, 35.353012, 15.086513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014396, 0.536907, 0.843519,
		0.992180, 0.096935, -0.078633,
		-0.123985, 0.838054, -0.531312,
		23.145433, 35.604427, 14.927119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.749464, 35.552090, 15.486396>,  <23.232224, 35.017792, 15.299038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.749464, 35.552090, 15.486396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.396002, 35.699135, 15.370454>,  <23.183926, 35.787361, 15.300889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.396002, 35.699135, 15.370454>,  <23.749464, 35.552090, 15.486396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.396002, 35.699135, 15.370454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054392, 0.534346, 0.843514,
		0.464970, 0.761141, -0.452181,
		-0.883654, 0.367613, -0.289855,
		23.130905, 35.809418, 15.283498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.688484, 36.218430, 15.709832>,  <23.749464, 35.552090, 15.486396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.688484, 36.218430, 15.709832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.314487, 36.091927, 15.645610>,  <23.090090, 36.016026, 15.607077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.314487, 36.091927, 15.645610>,  <23.688484, 36.218430, 15.709832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.314487, 36.091927, 15.645610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290122, 0.421565, 0.859134,
		-0.204019, 0.849863, -0.485911,
		-0.934989, -0.316253, -0.160557,
		23.033991, 35.997051, 15.597443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.175102, 36.841572, 15.691013>,  <23.688484, 36.218430, 15.709832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.175102, 36.841572, 15.691013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.061213, 36.487686, 15.838645>,  <22.992878, 36.275356, 15.927224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.061213, 36.487686, 15.838645>,  <23.175102, 36.841572, 15.691013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.061213, 36.487686, 15.838645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155760, 0.422596, 0.892833,
		-0.945870, 0.196725, -0.258126,
		-0.284725, -0.884710, 0.369079,
		22.975796, 36.222275, 15.949368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.419727, 36.764023, 15.826393>,  <23.175102, 36.841572, 15.691013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.419727, 36.764023, 15.826393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.667345, 36.564529, 16.069061>,  <22.815916, 36.444832, 16.214663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.667345, 36.564529, 16.069061>,  <22.419727, 36.764023, 15.826393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.667345, 36.564529, 16.069061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335100, 0.530893, 0.778371,
		-0.710276, -0.685142, 0.161521,
		0.619045, -0.498733, 0.606671,
		22.853058, 36.414909, 16.251062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.148590, 36.453049, 16.299818>,  <22.419727, 36.764023, 15.826393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.148590, 36.453049, 16.299818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.490993, 36.484882, 16.504139>,  <22.696436, 36.503983, 16.626732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.490993, 36.484882, 16.504139>,  <22.148590, 36.453049, 16.299818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.490993, 36.484882, 16.504139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515111, 0.214887, 0.829749,
		-0.043732, -0.973391, 0.224938,
		0.856007, 0.079581, 0.510802,
		22.747795, 36.508759, 16.657379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.013586, 36.240658, 16.956306>,  <22.148590, 36.453049, 16.299818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.013586, 36.240658, 16.956306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.366743, 36.401390, 17.053497>,  <22.578638, 36.497829, 17.111811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.366743, 36.401390, 17.053497>,  <22.013586, 36.240658, 16.956306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.366743, 36.401390, 17.053497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321730, 0.140738, 0.936313,
		0.342041, -0.904835, 0.253537,
		0.882892, 0.401828, 0.242974,
		22.631611, 36.521938, 17.126390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.285234, 35.977253, 17.593784>,  <22.013586, 36.240658, 16.956306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.285234, 35.977253, 17.593784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.456211, 36.337139, 17.558430>,  <22.558798, 36.553070, 17.537218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.456211, 36.337139, 17.558430>,  <22.285234, 35.977253, 17.593784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.456211, 36.337139, 17.558430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368108, 0.262508, 0.891956,
		0.825705, -0.348726, 0.443398,
		0.427444, 0.899711, -0.088385,
		22.584444, 36.607052, 17.531914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.500389, 36.128448, 18.259617>,  <22.285234, 35.977253, 17.593784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.500389, 36.128448, 18.259617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.529743, 36.486900, 18.084545>,  <22.547356, 36.701973, 17.979502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.529743, 36.486900, 18.084545>,  <22.500389, 36.128448, 18.259617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.529743, 36.486900, 18.084545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360793, 0.432995, 0.826041,
		0.929754, 0.097292, 0.355094,
		0.073387, 0.896130, -0.437682,
		22.551760, 36.755741, 17.953241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.039871, 36.630424, 18.543482>,  <22.500389, 36.128448, 18.259617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.039871, 36.630424, 18.543482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.738216, 36.842743, 18.388805>,  <22.557222, 36.970135, 18.296000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.738216, 36.842743, 18.388805>,  <23.039871, 36.630424, 18.543482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.738216, 36.842743, 18.388805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241226, 0.323767, 0.914869,
		0.610807, 0.783218, -0.116123,
		-0.754138, 0.530796, -0.386691,
		22.511974, 37.001984, 18.272799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.178993, 37.288273, 18.756620>,  <23.039871, 36.630424, 18.543482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.178993, 37.288273, 18.756620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.794514, 37.286892, 18.646286>,  <22.563826, 37.286064, 18.580086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.794514, 37.286892, 18.646286>,  <23.178993, 37.288273, 18.756620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.794514, 37.286892, 18.646286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257166, 0.373040, 0.891463,
		0.099816, 0.927809, -0.359454,
		-0.961198, -0.003457, -0.275837,
		22.506155, 37.285854, 18.563536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.907135, 37.754898, 19.146885>,  <23.178993, 37.288273, 18.756620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.907135, 37.754898, 19.146885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.568129, 37.598351, 19.003471>,  <22.364725, 37.504421, 18.917423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.568129, 37.598351, 19.003471>,  <22.907135, 37.754898, 19.146885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.568129, 37.598351, 19.003471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422065, 0.087344, 0.902348,
		-0.321834, 0.916080, -0.239208,
		-0.847517, -0.391367, -0.358535,
		22.313873, 37.480942, 18.895910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.333681, 38.275829, 19.379381>,  <22.907135, 37.754898, 19.146885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.333681, 38.275829, 19.379381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.194674, 37.912491, 19.286316>,  <22.111269, 37.694489, 19.230476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.194674, 37.912491, 19.286316>,  <22.333681, 38.275829, 19.379381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.194674, 37.912491, 19.286316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662512, 0.062266, 0.746459,
		-0.663558, 0.413551, -0.623431,
		-0.347518, -0.908350, -0.232665,
		22.090418, 37.639984, 19.216516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.554224, 38.318897, 19.340071>,  <22.333681, 38.275829, 19.379381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.554224, 38.318897, 19.340071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.666517, 37.943203, 19.419090>,  <21.733894, 37.717785, 19.466501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.666517, 37.943203, 19.419090>,  <21.554224, 38.318897, 19.340071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.666517, 37.943203, 19.419090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561403, 0.006248, 0.827519,
		-0.778469, -0.343217, -0.525536,
		0.280735, -0.939236, 0.197547,
		21.750738, 37.661434, 19.478354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.977852, 37.794964, 19.407602>,  <21.554224, 38.318897, 19.340071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.977852, 37.794964, 19.407602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.263199, 37.606777, 19.615360>,  <21.434406, 37.493866, 19.740015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.263199, 37.606777, 19.615360>,  <20.977852, 37.794964, 19.407602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.263199, 37.606777, 19.615360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638671, -0.131391, 0.758179,
		-0.288454, -0.872581, -0.394203,
		0.713368, -0.470466, 0.519392,
		21.477209, 37.465637, 19.771177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.663473, 37.334000, 19.741282>,  <20.977852, 37.794964, 19.407602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.663473, 37.334000, 19.741282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.003067, 37.350792, 19.951981>,  <21.206823, 37.360867, 20.078400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.003067, 37.350792, 19.951981>,  <20.663473, 37.334000, 19.741282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.003067, 37.350792, 19.951981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526882, -0.008731, 0.849893,
		0.040286, -0.999080, 0.014711,
		0.848983, 0.041990, 0.526749,
		21.257763, 37.363388, 20.110006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.506971, 36.999752, 20.322126>,  <20.663473, 37.334000, 19.741282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.506971, 36.999752, 20.322126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.854227, 37.129650, 20.472260>,  <21.062580, 37.207588, 20.562340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.854227, 37.129650, 20.472260>,  <20.506971, 36.999752, 20.322126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.854227, 37.129650, 20.472260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293437, -0.274070, 0.915849,
		0.400281, -0.905223, -0.142641,
		0.868142, 0.324742, 0.375331,
		21.114670, 37.227074, 20.584858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.856237, 36.548786, 20.775755>,  <20.506971, 36.999752, 20.322126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.856237, 36.548786, 20.775755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.994663, 36.906754, 20.888439>,  <21.077719, 37.121532, 20.956049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.994663, 36.906754, 20.888439>,  <20.856237, 36.548786, 20.775755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.994663, 36.906754, 20.888439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238779, -0.206365, 0.948893,
		0.907317, -0.395645, 0.142271,
		0.346065, 0.894918, 0.281710,
		21.098482, 37.175228, 20.972952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.189669, 36.490341, 21.389469>,  <20.856237, 36.548786, 20.775755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.189669, 36.490341, 21.389469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.099562, 36.880009, 21.383213>,  <21.045498, 37.113811, 21.379459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.099562, 36.880009, 21.383213>,  <21.189669, 36.490341, 21.389469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.099562, 36.880009, 21.383213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200850, -0.030724, 0.979140,
		0.953370, 0.223711, 0.202583,
		-0.225268, 0.974171, -0.015641,
		21.031981, 37.172260, 21.378521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.500938, 36.804150, 21.963396>,  <21.189669, 36.490341, 21.389469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.500938, 36.804150, 21.963396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.264364, 37.115284, 21.878384>,  <21.122419, 37.301964, 21.827377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.264364, 37.115284, 21.878384>,  <21.500938, 36.804150, 21.963396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.264364, 37.115284, 21.878384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169175, 0.138005, 0.975876,
		0.788406, 0.613123, 0.049970,
		-0.591436, 0.777840, -0.212529,
		21.086933, 37.348637, 21.814625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.743053, 37.428394, 22.319448>,  <21.500938, 36.804150, 21.963396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.743053, 37.428394, 22.319448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.360453, 37.516224, 22.242622>,  <21.130892, 37.568924, 22.196527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.360453, 37.516224, 22.242622>,  <21.743053, 37.428394, 22.319448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.360453, 37.516224, 22.242622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116299, 0.316779, 0.941343,
		0.267538, 0.922734, -0.277463,
		-0.956503, 0.219576, -0.192063,
		21.073502, 37.582096, 22.185003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.637644, 38.088268, 22.624020>,  <21.743053, 37.428394, 22.319448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.637644, 38.088268, 22.624020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.282545, 37.904922, 22.606998>,  <21.069487, 37.794914, 22.596785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.282545, 37.904922, 22.606998>,  <21.637644, 38.088268, 22.624020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.282545, 37.904922, 22.606998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145211, 0.191115, 0.970767,
		-0.436830, 0.867974, -0.236221,
		-0.887746, -0.458363, -0.042555,
		21.016222, 37.767414, 22.594233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.084641, 38.609360, 22.933744>,  <21.637644, 38.088268, 22.624020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.084641, 38.609360, 22.933744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.912374, 38.248756, 22.950779>,  <20.809015, 38.032394, 22.961000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.912374, 38.248756, 22.950779>,  <21.084641, 38.609360, 22.933744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.912374, 38.248756, 22.950779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174935, 0.129675, 0.976003,
		-0.885395, 0.412883, -0.213551,
		-0.430667, -0.901506, 0.042586,
		20.783175, 37.978306, 22.963554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.478045, 38.686092, 23.296146>,  <21.084641, 38.609360, 22.933744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.478045, 38.686092, 23.296146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.551516, 38.293316, 23.314262>,  <20.595598, 38.057652, 23.325132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.551516, 38.293316, 23.314262>,  <20.478045, 38.686092, 23.296146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.551516, 38.293316, 23.314262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265486, -0.005193, 0.964101,
		-0.946456, -0.189109, -0.261646,
		0.183679, -0.981942, 0.045291,
		20.606619, 37.998734, 23.327850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.834179, 38.266624, 23.390734>,  <20.478045, 38.686092, 23.296146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.834179, 38.266624, 23.390734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.143559, 38.062500, 23.541122>,  <20.329185, 37.940025, 23.631355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.143559, 38.062500, 23.541122>,  <19.834179, 38.266624, 23.390734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.143559, 38.062500, 23.541122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418736, 0.033930, 0.907474,
		-0.475854, -0.859318, -0.187444,
		0.773449, -0.510314, 0.375974,
		20.375593, 37.909405, 23.653915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.473175, 37.861542, 23.965303>,  <19.834179, 38.266624, 23.390734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.473175, 37.861542, 23.965303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.867201, 37.927628, 23.984699>,  <20.103617, 37.967278, 23.996336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.867201, 37.927628, 23.984699>,  <19.473175, 37.861542, 23.965303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.867201, 37.927628, 23.984699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078392, 0.179591, 0.980613,
		0.153301, -0.969769, 0.189860,
		0.985065, 0.165212, 0.048491,
		20.162720, 37.977192, 23.999247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.798407, 37.600319, 24.582424>,  <19.473175, 37.861542, 23.965303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.798407, 37.600319, 24.582424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.007580, 37.922707, 24.471458>,  <20.133083, 38.116138, 24.404879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.007580, 37.922707, 24.471458>,  <19.798407, 37.600319, 24.582424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.007580, 37.922707, 24.471458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041986, 0.300710, 0.952791,
		0.851338, -0.509895, 0.123413,
		0.522935, 0.805966, -0.277415,
		20.164461, 38.164497, 24.388233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.240528, 37.918793, 24.640209>,  <19.798407, 37.600319, 24.582424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.240528, 37.918793, 24.640209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.985426, 38.030056, 24.927513>,  <18.832365, 38.096813, 25.099895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.985426, 38.030056, 24.927513>,  <19.240528, 37.918793, 24.640209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.985426, 38.030056, 24.927513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534464, 0.511668, -0.672714,
		-0.554629, -0.812911, -0.177656,
		-0.637757, 0.278156, 0.718258,
		18.794098, 38.113503, 25.142990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.652523, 37.755508, 24.349033>,  <19.240528, 37.918793, 24.640209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.652523, 37.755508, 24.349033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.605139, 38.030758, 24.635376>,  <18.576708, 38.195908, 24.807180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.605139, 38.030758, 24.635376>,  <18.652523, 37.755508, 24.349033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.605139, 38.030758, 24.635376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545512, 0.557289, -0.625976,
		-0.829689, -0.464660, 0.309365,
		-0.118460, 0.688128, 0.715854,
		18.569601, 38.237198, 24.850132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.007360, 37.638119, 24.063427>,  <18.652523, 37.755508, 24.349033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.007360, 37.638119, 24.063427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.798931, 37.479317, 23.761204>,  <17.673874, 37.384033, 23.579870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.798931, 37.479317, 23.761204>,  <18.007360, 37.638119, 24.063427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.798931, 37.479317, 23.761204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784284, 0.126516, -0.607365,
		0.336720, -0.909053, 0.245444,
		-0.521074, -0.397010, -0.755556,
		17.642609, 37.360214, 23.534536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<28.223244, 24.935129, 28.587639> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.608925, 24.871101, 28.672203>,  <28.840334, 24.832685, 28.722940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.608925, 24.871101, 28.672203>,  <28.223244, 24.935129, 28.587639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.608925, 24.871101, 28.672203> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262486, 0.689333, -0.675220,
		-0.037649, 0.706540, 0.706672,
		0.964201, -0.160070, 0.211410,
		28.898186, 24.823080, 28.735626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.422880, 25.655605, 28.844797>,  <28.223244, 24.935129, 28.587639>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.422880, 25.655605, 28.844797> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.733967, 25.448578, 28.702091>,  <28.920618, 25.324362, 28.616467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.733967, 25.448578, 28.702091>,  <28.422880, 25.655605, 28.844797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.733967, 25.448578, 28.702091> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218761, 0.754903, -0.618276,
		0.589323, 0.402796, 0.700324,
		0.777716, -0.517568, -0.356766,
		28.967281, 25.293308, 28.595062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.042587, 26.049227, 28.893505>,  <28.422880, 25.655605, 28.844797>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.042587, 26.049227, 28.893505> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.130032, 25.780178, 28.610722>,  <29.182497, 25.618750, 28.441051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.130032, 25.780178, 28.610722>,  <29.042587, 26.049227, 28.893505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.130032, 25.780178, 28.610722> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394137, 0.723619, -0.566596,
		0.892674, -0.154776, 0.423294,
		0.218608, -0.672621, -0.706959,
		29.195614, 25.578392, 28.398634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.717312, 26.302559, 28.515972>,  <29.042587, 26.049227, 28.893505>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.717312, 26.302559, 28.515972> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.562651, 26.039627, 28.257233>,  <29.469854, 25.881868, 28.101990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.562651, 26.039627, 28.257233>,  <29.717312, 26.302559, 28.515972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.562651, 26.039627, 28.257233> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239268, 0.605881, -0.758722,
		0.890645, -0.448134, -0.076988,
		-0.386655, -0.657331, -0.646849,
		29.446653, 25.842428, 28.063177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.291964, 26.143225, 27.960394>,  <29.717312, 26.302559, 28.515972>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.291964, 26.143225, 27.960394> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.938440, 26.038734, 27.805141>,  <29.726326, 25.976040, 27.711990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.938440, 26.038734, 27.805141>,  <30.291964, 26.143225, 27.960394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.938440, 26.038734, 27.805141> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212463, 0.515026, -0.830426,
		0.416826, -0.816400, -0.399683,
		-0.883807, -0.261225, -0.388132,
		29.673298, 25.960365, 27.688702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.453690, 25.949747, 27.233370>,  <30.291964, 26.143225, 27.960394>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.453690, 25.949747, 27.233370> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.056793, 25.997730, 27.220287>,  <29.818655, 26.026520, 27.212437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.056793, 25.997730, 27.220287>,  <30.453690, 25.949747, 27.233370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.056793, 25.997730, 27.220287> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086703, 0.478994, -0.873526,
		-0.089121, -0.869583, -0.485677,
		-0.992240, 0.119959, -0.032707,
		29.759121, 26.033718, 27.210476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.207903, 25.841396, 26.470602>,  <30.453690, 25.949747, 27.233370>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.207903, 25.841396, 26.470602> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.952902, 26.057991, 26.689831>,  <29.799902, 26.187948, 26.821369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.952902, 26.057991, 26.689831>,  <30.207903, 25.841396, 26.470602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.952902, 26.057991, 26.689831> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040111, 0.687078, -0.725475,
		-0.769404, -0.484476, -0.416295,
		-0.637502, 0.541485, 0.548073,
		29.761652, 26.220436, 26.854252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.762171, 26.173887, 26.049128>,  <30.207903, 25.841396, 26.470602>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.762171, 26.173887, 26.049128> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.722748, 26.412994, 26.367363>,  <29.699095, 26.556458, 26.558304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.722748, 26.412994, 26.367363>,  <29.762171, 26.173887, 26.049128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.722748, 26.412994, 26.367363> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110976, 0.787892, -0.605731,
		-0.988924, -0.147989, -0.011314,
		-0.098556, 0.597767, 0.795589,
		29.693182, 26.592325, 26.606039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.299299, 26.742002, 25.771137>,  <29.762171, 26.173887, 26.049128>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.299299, 26.742002, 25.771137> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.394041, 26.898140, 26.127010>,  <29.450886, 26.991821, 26.340534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.394041, 26.898140, 26.127010>,  <29.299299, 26.742002, 25.771137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.394041, 26.898140, 26.127010> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185924, 0.917025, -0.352841,
		-0.953588, -0.081841, 0.289778,
		0.236857, 0.390342, 0.889681,
		29.465097, 27.015244, 26.393915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.714153, 27.127283, 25.950933>,  <29.299299, 26.742002, 25.771137>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.714153, 27.127283, 25.950933> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.030821, 27.270065, 26.149265>,  <29.220821, 27.355734, 26.268265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.030821, 27.270065, 26.149265>,  <28.714153, 27.127283, 25.950933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.030821, 27.270065, 26.149265> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242351, 0.928463, -0.281465,
		-0.560828, 0.102662, 0.821543,
		0.791668, 0.356955, 0.495828,
		29.268322, 27.377151, 26.298014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.483843, 27.689217, 26.424812>,  <28.714153, 27.127283, 25.950933>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.483843, 27.689217, 26.424812> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.874372, 27.757935, 26.372234>,  <29.108690, 27.799166, 26.340687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.874372, 27.757935, 26.372234>,  <28.483843, 27.689217, 26.424812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.874372, 27.757935, 26.372234> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199772, 0.949154, -0.243306,
		0.082965, 0.263805, 0.961002,
		0.976324, 0.171795, -0.131447,
		29.167269, 27.809473, 26.332800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.603369, 28.318766, 26.711758>,  <28.483843, 27.689217, 26.424812>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.603369, 28.318766, 26.711758> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.893547, 28.227322, 26.452076>,  <29.067654, 28.172455, 26.296267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.893547, 28.227322, 26.452076>,  <28.603369, 28.318766, 26.711758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.893547, 28.227322, 26.452076> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036821, 0.928988, -0.368274,
		0.687295, 0.291066, 0.665512,
		0.725445, -0.228608, -0.649206,
		29.111181, 28.158739, 26.257315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.091612, 28.837193, 26.812637>,  <28.603369, 28.318766, 26.711758>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.091612, 28.837193, 26.812637> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.147766, 28.677788, 26.450096>,  <29.181458, 28.582144, 26.232571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.147766, 28.677788, 26.450096>,  <29.091612, 28.837193, 26.812637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.147766, 28.677788, 26.450096> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267112, 0.866233, -0.422245,
		0.953386, 0.301374, 0.015157,
		0.140384, -0.398514, -0.906355,
		29.189880, 28.558233, 26.178190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.370398, 29.353149, 26.533764>,  <29.091612, 28.837193, 26.812637>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.370398, 29.353149, 26.533764> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.272362, 29.121048, 26.223091>,  <29.213539, 28.981787, 26.036688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.272362, 29.121048, 26.223091>,  <29.370398, 29.353149, 26.533764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.272362, 29.121048, 26.223091> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265985, 0.810621, -0.521676,
		0.932300, 0.078728, -0.353014,
		-0.245091, -0.580255, -0.776682,
		29.198833, 28.946972, 25.990088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.565228, 29.703529, 25.963680>,  <29.370398, 29.353149, 26.533764>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.565228, 29.703529, 25.963680> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.320242, 29.452354, 25.771603>,  <29.173252, 29.301649, 25.656355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.320242, 29.452354, 25.771603>,  <29.565228, 29.703529, 25.963680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.320242, 29.452354, 25.771603> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420331, 0.773157, -0.474922,
		0.669487, -0.089031, -0.737469,
		-0.612462, -0.627935, -0.480195,
		29.136503, 29.263973, 25.627544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.665060, 29.894053, 25.306772>,  <29.565228, 29.703529, 25.963680>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.665060, 29.894053, 25.306772> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.312450, 29.705391, 25.315350>,  <29.100885, 29.592194, 25.320496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.312450, 29.705391, 25.315350>,  <29.665060, 29.894053, 25.306772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.312450, 29.705391, 25.315350> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425798, 0.774555, -0.467719,
		0.203991, -0.421436, -0.883617,
		-0.881524, -0.471652, 0.021445,
		29.047993, 29.563894, 25.321783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.444212, 29.912403, 24.656153>,  <29.665060, 29.894053, 25.306772>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.444212, 29.912403, 24.656153> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.132437, 29.878307, 24.904415>,  <28.945372, 29.857851, 25.053371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.132437, 29.878307, 24.904415>,  <29.444212, 29.912403, 24.656153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.132437, 29.878307, 24.904415> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481813, 0.714769, -0.506913,
		-0.400416, -0.694146, -0.598187,
		-0.779438, -0.085238, 0.620654,
		28.898605, 29.852736, 25.090611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.808277, 29.992954, 24.213739>,  <29.444212, 29.912403, 24.656153>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.808277, 29.992954, 24.213739> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.705549, 30.044952, 24.596809>,  <28.643911, 30.076151, 24.826653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.705549, 30.044952, 24.596809>,  <28.808277, 29.992954, 24.213739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.705549, 30.044952, 24.596809> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578533, 0.773083, -0.260083,
		-0.774172, -0.620842, -0.123338,
		-0.256821, 0.129994, 0.957677,
		28.628502, 30.083950, 24.884113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.086203, 30.071869, 24.227276>,  <28.808277, 29.992954, 24.213739>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.086203, 30.071869, 24.227276> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.211830, 30.233837, 24.570763>,  <28.287207, 30.331018, 24.776855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.211830, 30.233837, 24.570763>,  <28.086203, 30.071869, 24.227276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.211830, 30.233837, 24.570763> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518659, 0.830765, -0.202044,
		-0.795206, -0.381926, 0.470935,
		0.314070, 0.404921, 0.858719,
		28.306051, 30.355314, 24.828379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.505402, 30.141228, 24.633924>,  <28.086203, 30.071869, 24.227276>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.505402, 30.141228, 24.633924> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.783117, 30.408703, 24.740376>,  <27.949747, 30.569187, 24.804245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.783117, 30.408703, 24.740376>,  <27.505402, 30.141228, 24.633924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.783117, 30.408703, 24.740376> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666757, 0.736825, -0.111913,
		-0.270922, -0.099741, 0.957420,
		0.694288, 0.668686, 0.266125,
		27.991404, 30.609308, 24.820213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.169025, 30.839285, 24.720240>,  <27.505402, 30.141228, 24.633924>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.169025, 30.839285, 24.720240> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.552252, 30.944370, 24.766003>,  <27.782188, 31.007421, 24.793461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.552252, 30.944370, 24.766003>,  <27.169025, 30.839285, 24.720240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.552252, 30.944370, 24.766003> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182082, 0.866453, -0.464871,
		-0.221257, 0.424546, 0.877956,
		0.958067, 0.262716, 0.114406,
		27.839672, 31.023186, 24.800325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.201508, 31.524004, 25.055519>,  <27.169025, 30.839285, 24.720240>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.201508, 31.524004, 25.055519> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.573805, 31.567570, 24.915890>,  <27.797184, 31.593710, 24.832113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.573805, 31.567570, 24.915890>,  <27.201508, 31.524004, 25.055519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.573805, 31.567570, 24.915890> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145558, 0.986074, -0.080439,
		0.335450, 0.125679, 0.933637,
		0.930745, 0.108915, -0.349073,
		27.853027, 31.600245, 24.811169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.564024, 31.882954, 25.304724>,  <27.201508, 31.524004, 25.055519>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.564024, 31.882954, 25.304724> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.243301, 31.896446, 25.066071>,  <26.050869, 31.904541, 24.922878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.243301, 31.896446, 25.066071>,  <26.564024, 31.882954, 25.304724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.243301, 31.896446, 25.066071> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439939, -0.709011, 0.551141,
		-0.404429, 0.704390, 0.583328,
		-0.801804, 0.033731, -0.596634,
		26.002760, 31.906565, 24.887081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.009632, 31.864090, 25.784184>,  <26.564024, 31.882954, 25.304724>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.009632, 31.864090, 25.784184> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.902666, 31.723381, 25.425354>,  <25.838486, 31.638956, 25.210056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.902666, 31.723381, 25.425354>,  <26.009632, 31.864090, 25.784184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.902666, 31.723381, 25.425354> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419531, -0.795605, 0.437042,
		-0.867457, 0.493224, 0.065180,
		-0.267417, -0.351770, -0.897076,
		25.822441, 31.617849, 25.156231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.336889, 31.594807, 25.826138>,  <26.009632, 31.864090, 25.784184>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.336889, 31.594807, 25.826138> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.483772, 31.402733, 25.507496>,  <25.571901, 31.287489, 25.316311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.483772, 31.402733, 25.507496>,  <25.336889, 31.594807, 25.826138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.483772, 31.402733, 25.507496> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197700, -0.877160, 0.437612,
		-0.908886, -0.003204, -0.417031,
		0.367206, -0.480187, -0.796606,
		25.593935, 31.258677, 25.268515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.837175, 31.012022, 25.651846>,  <25.336889, 31.594807, 25.826138>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.837175, 31.012022, 25.651846> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.177589, 30.916252, 25.464905>,  <25.381838, 30.858789, 25.352741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.177589, 30.916252, 25.464905>,  <24.837175, 31.012022, 25.651846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.177589, 30.916252, 25.464905> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203396, -0.970828, 0.126978,
		-0.484119, -0.013006, -0.874905,
		0.851034, -0.239425, -0.467351,
		25.432899, 30.844425, 25.324699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.641558, 30.418333, 25.273924>,  <24.837175, 31.012022, 25.651846>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.641558, 30.418333, 25.273924> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.037962, 30.399284, 25.323936>,  <25.275805, 30.387856, 25.353943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.037962, 30.399284, 25.323936>,  <24.641558, 30.418333, 25.273924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.037962, 30.399284, 25.323936> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078532, -0.963630, 0.255440,
		0.108319, -0.262963, -0.958706,
		0.991010, -0.047620, 0.125031,
		25.335264, 30.384998, 25.361446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.896023, 29.701353, 25.141893>,  <24.641558, 30.418333, 25.273924>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.896023, 29.701353, 25.141893> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.217594, 29.839493, 25.335567>,  <25.410538, 29.922377, 25.451771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.217594, 29.839493, 25.335567>,  <24.896023, 29.701353, 25.141893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.217594, 29.839493, 25.335567> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246267, -0.934358, 0.257542,
		0.541342, -0.087807, -0.836205,
		0.803929, 0.345348, 0.484183,
		25.458773, 29.943098, 25.480822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.560377, 29.360769, 24.887926>,  <24.896023, 29.701353, 25.141893>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.560377, 29.360769, 24.887926> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.642071, 29.533936, 25.239124>,  <25.691086, 29.637835, 25.449842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.642071, 29.533936, 25.239124>,  <25.560377, 29.360769, 24.887926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.642071, 29.533936, 25.239124> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305126, -0.880369, 0.363110,
		0.930155, 0.193740, -0.311893,
		0.204232, 0.432915, 0.877995,
		25.703341, 29.663811, 25.502523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.055405, 28.952078, 25.098476>,  <25.560377, 29.360769, 24.887926>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.055405, 28.952078, 25.098476> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.965975, 29.131832, 25.444439>,  <25.912317, 29.239685, 25.652018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.965975, 29.131832, 25.444439>,  <26.055405, 28.952078, 25.098476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.965975, 29.131832, 25.444439> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092465, -0.873589, 0.477799,
		0.970291, 0.186798, 0.153761,
		-0.223576, 0.449387, 0.864908,
		25.898903, 29.266647, 25.703911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.562902, 28.759363, 25.415800>,  <26.055405, 28.952078, 25.098476>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.562902, 28.759363, 25.415800> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.265511, 28.850620, 25.667255>,  <26.087076, 28.905375, 25.818129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.265511, 28.850620, 25.667255>,  <26.562902, 28.759363, 25.415800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.265511, 28.850620, 25.667255> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058215, -0.914365, 0.400684,
		0.666219, 0.334497, 0.666531,
		-0.743480, 0.228141, 0.628640,
		26.042467, 28.919062, 25.855848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.786259, 28.594395, 26.033916>,  <26.562902, 28.759363, 25.415800>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.786259, 28.594395, 26.033916> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.389574, 28.616890, 26.080124>,  <26.151564, 28.630386, 26.107847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.389574, 28.616890, 26.080124>,  <26.786259, 28.594395, 26.033916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.389574, 28.616890, 26.080124> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018645, -0.826600, 0.562481,
		0.127118, 0.559974, 0.818700,
		-0.991712, 0.056237, 0.115516,
		26.092060, 28.633760, 26.114779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.659014, 28.680653, 26.741304>,  <26.786259, 28.594395, 26.033916>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.659014, 28.680653, 26.741304> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.313332, 28.542370, 26.595081>,  <26.105923, 28.459400, 26.507347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.313332, 28.542370, 26.595081>,  <26.659014, 28.680653, 26.741304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.313332, 28.542370, 26.595081> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078294, -0.625306, 0.776443,
		-0.497006, 0.699629, 0.513327,
		-0.864208, -0.345706, -0.365558,
		26.054070, 28.438658, 26.485415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.164368, 28.574717, 27.317877>,  <26.659014, 28.680653, 26.741304>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.164368, 28.574717, 27.317877> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.007702, 28.340038, 27.034359>,  <25.913702, 28.199232, 26.864248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.007702, 28.340038, 27.034359>,  <26.164368, 28.574717, 27.317877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.007702, 28.340038, 27.034359> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018060, -0.765288, 0.643435,
		-0.919931, 0.264811, 0.289140,
		-0.391664, -0.586694, -0.708794,
		25.890203, 28.164030, 26.821720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.715847, 28.155905, 27.679308>,  <26.164368, 28.574717, 27.317877>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.715847, 28.155905, 27.679308> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.822462, 27.989143, 27.331711>,  <25.886431, 27.889088, 27.123152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.822462, 27.989143, 27.331711>,  <25.715847, 28.155905, 27.679308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.822462, 27.989143, 27.331711> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196654, -0.859121, 0.472482,
		-0.943549, -0.296825, -0.147002,
		0.266537, -0.416901, -0.868994,
		25.902424, 27.864073, 27.071012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.548721, 27.487265, 27.762960>,  <25.715847, 28.155905, 27.679308>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.548721, 27.487265, 27.762960> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.782784, 27.457424, 27.439968>,  <25.923220, 27.439520, 27.246172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.782784, 27.457424, 27.439968>,  <25.548721, 27.487265, 27.762960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.782784, 27.457424, 27.439968> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215981, -0.945455, 0.243860,
		-0.781630, -0.317096, -0.537125,
		0.585155, -0.074599, -0.807483,
		25.958330, 27.435045, 27.197723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.274773, 26.960501, 27.341686>,  <25.548721, 27.487265, 27.762960>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.274773, 26.960501, 27.341686> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.665882, 26.997623, 27.266479>,  <25.900547, 27.019897, 27.221355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.665882, 26.997623, 27.266479>,  <25.274773, 26.960501, 27.341686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.665882, 26.997623, 27.266479> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132991, -0.967753, 0.213935,
		-0.162098, -0.234184, -0.958583,
		0.977772, 0.092805, -0.188015,
		25.959213, 27.025465, 27.210075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.553123, 26.385077, 26.951540>,  <25.274773, 26.960501, 27.341686>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.553123, 26.385077, 26.951540> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.865124, 26.553429, 27.136780>,  <26.052324, 26.654440, 27.247923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.865124, 26.553429, 27.136780>,  <25.553123, 26.385077, 26.951540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.865124, 26.553429, 27.136780> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438808, -0.895467, 0.074748,
		0.446150, 0.144908, -0.883149,
		0.779999, 0.420881, 0.463099,
		26.099123, 26.679693, 27.275709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.106310, 25.969925, 26.713520>,  <25.553123, 26.385077, 26.951540>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.106310, 25.969925, 26.713520> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.272562, 26.141163, 27.034515>,  <26.372313, 26.243906, 27.227112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.272562, 26.141163, 27.034515>,  <26.106310, 25.969925, 26.713520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.272562, 26.141163, 27.034515> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527139, -0.832390, 0.171029,
		0.741199, 0.351937, -0.571633,
		0.415630, 0.428097, 0.802487,
		26.397251, 26.269592, 27.275261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.785278, 25.833323, 26.643799>,  <26.106310, 25.969925, 26.713520>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.785278, 25.833323, 26.643799> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.703821, 25.887451, 27.031658>,  <26.654947, 25.919928, 27.264374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.703821, 25.887451, 27.031658>,  <26.785278, 25.833323, 26.643799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.703821, 25.887451, 27.031658> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376766, -0.903297, 0.205187,
		0.903647, 0.407115, 0.132964,
		-0.203641, 0.135320, 0.969649,
		26.642729, 25.928047, 27.322554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<27.162531, 25.302387, 26.993214> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.968517, 25.453671, 27.308605>,  <26.852108, 25.544441, 27.497841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.968517, 25.453671, 27.308605>,  <27.162531, 25.302387, 26.993214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.968517, 25.453671, 27.308605> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164808, -0.845949, 0.507157,
		0.858824, 0.375936, 0.347983,
		-0.485035, 0.378208, 0.788479,
		26.823008, 25.567133, 27.545149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.654177, 25.223955, 27.617352>,  <27.162531, 25.302387, 26.993214>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.654177, 25.223955, 27.617352> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.275642, 25.241955, 27.745369>,  <27.048523, 25.252754, 27.822180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.275642, 25.241955, 27.745369>,  <27.654177, 25.223955, 27.617352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.275642, 25.241955, 27.745369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194542, -0.711450, 0.675272,
		0.258079, 0.701295, 0.664515,
		-0.946334, 0.044998, 0.320042,
		26.991741, 25.255455, 27.841381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.613976, 25.276108, 28.343758>,  <27.654177, 25.223955, 27.617352>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.613976, 25.276108, 28.343758> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.253956, 25.126789, 28.253811>,  <27.037945, 25.037197, 28.199842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.253956, 25.126789, 28.253811>,  <27.613976, 25.276108, 28.343758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.253956, 25.126789, 28.253811> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090997, -0.665604, 0.740737,
		-0.426186, 0.646236, 0.633044,
		-0.900047, -0.373297, -0.224866,
		26.983942, 25.014801, 28.186352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.259304, 25.275114, 29.008108>,  <27.613976, 25.276108, 28.343758>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.259304, 25.275114, 29.008108> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.078566, 25.026016, 28.752602>,  <26.970121, 24.876556, 28.599298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.078566, 25.026016, 28.752602>,  <27.259304, 25.275114, 29.008108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.078566, 25.026016, 28.752602> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049974, -0.697234, 0.715100,
		-0.890695, 0.355038, 0.283922,
		-0.451847, -0.622747, -0.638765,
		26.943012, 24.839191, 28.560972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.782389, 25.011047, 29.413067>,  <27.259304, 25.275114, 29.008108>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.782389, 25.011047, 29.413067> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.779743, 24.753208, 29.107269>,  <26.778156, 24.598505, 28.923790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.779743, 24.753208, 29.107269>,  <26.782389, 25.011047, 29.413067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.779743, 24.753208, 29.107269> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057255, -0.763014, 0.643842,
		-0.998338, 0.048030, -0.031859,
		-0.006615, -0.644596, -0.764495,
		26.777760, 24.559830, 28.877920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.282034, 24.569044, 29.585796>,  <26.782389, 25.011047, 29.413067>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.282034, 24.569044, 29.585796> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.519043, 24.344025, 29.355160>,  <26.661249, 24.209013, 29.216778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.519043, 24.344025, 29.355160>,  <26.282034, 24.569044, 29.585796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.519043, 24.344025, 29.355160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128633, -0.772659, 0.621652,
		-0.795219, -0.294172, -0.530179,
		0.592520, -0.562548, -0.576593,
		26.696800, 24.175261, 29.182182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.040989, 24.069647, 29.824909>,  <26.282034, 24.569044, 29.585796>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.040989, 24.069647, 29.824909> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.362446, 23.964287, 29.611450>,  <26.555321, 23.901070, 29.483376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.362446, 23.964287, 29.611450>,  <26.040989, 24.069647, 29.824909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.362446, 23.964287, 29.611450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026456, -0.880016, 0.474207,
		-0.594524, -0.395211, -0.700249,
		0.803642, -0.263402, -0.533646,
		26.603539, 23.885265, 29.451357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.855976, 23.430374, 29.583361>,  <26.040989, 24.069647, 29.824909>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.855976, 23.430374, 29.583361> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.254519, 23.464386, 29.580677>,  <26.493645, 23.484793, 29.579067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.254519, 23.464386, 29.580677>,  <25.855976, 23.430374, 29.583361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.254519, 23.464386, 29.580677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071981, -0.796003, 0.600997,
		0.045763, -0.599290, -0.799223,
		0.996355, 0.085032, -0.006710,
		26.553425, 23.489895, 29.578665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.184666, 22.764589, 29.322926>,  <25.855976, 23.430374, 29.583361>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.184666, 22.764589, 29.322926> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.449286, 22.957165, 29.552906>,  <26.608057, 23.072710, 29.690895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.449286, 22.957165, 29.552906>,  <26.184666, 22.764589, 29.322926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.449286, 22.957165, 29.552906> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075976, -0.805789, 0.587309,
		0.746042, -0.344852, -0.569648,
		0.661551, 0.481437, 0.574951,
		26.647751, 23.101595, 29.725391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.682230, 22.283400, 29.452414>,  <26.184666, 22.764589, 29.322926>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.682230, 22.283400, 29.452414> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.738800, 22.561783, 29.734020>,  <26.772741, 22.728813, 29.902985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.738800, 22.561783, 29.734020>,  <26.682230, 22.283400, 29.452414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.738800, 22.561783, 29.734020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218608, -0.715565, 0.663458,
		0.965510, 0.060074, -0.253341,
		0.141425, 0.695958, 0.704018,
		26.781227, 22.770571, 29.945225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.212063, 22.041784, 29.854801>,  <26.682230, 22.283400, 29.452414>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.212063, 22.041784, 29.854801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.068020, 22.306301, 30.118015>,  <26.981594, 22.465012, 30.275944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.068020, 22.306301, 30.118015>,  <27.212063, 22.041784, 29.854801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.068020, 22.306301, 30.118015> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227081, -0.622011, 0.749357,
		0.904851, 0.419278, 0.073824,
		-0.360109, 0.661293, 0.658038,
		26.959988, 22.504688, 30.315426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.760204, 22.166264, 30.448475>,  <27.212063, 22.041784, 29.854801>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.760204, 22.166264, 30.448475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.398111, 22.271751, 30.581745>,  <27.180855, 22.335043, 30.661707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.398111, 22.271751, 30.581745>,  <27.760204, 22.166264, 30.448475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.398111, 22.271751, 30.581745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077259, -0.668879, 0.739346,
		0.417834, 0.695021, 0.585116,
		-0.905233, 0.263719, 0.333176,
		27.126541, 22.350866, 30.681698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.867437, 22.142735, 31.181940>,  <27.760204, 22.166264, 30.448475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.867437, 22.142735, 31.181940> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.469826, 22.136391, 31.138756>,  <27.231258, 22.132584, 31.112846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.469826, 22.136391, 31.138756>,  <27.867437, 22.142735, 31.181940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.469826, 22.136391, 31.138756> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068200, -0.682021, 0.728145,
		-0.085179, 0.731160, 0.676867,
		-0.994029, -0.015860, -0.107959,
		27.171618, 22.131632, 31.106367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.676802, 22.264442, 31.872070>,  <27.867437, 22.142735, 31.181940>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.676802, 22.264442, 31.872070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.382578, 22.073227, 31.680058>,  <27.206043, 21.958498, 31.564850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.382578, 22.073227, 31.680058>,  <27.676802, 22.264442, 31.872070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.382578, 22.073227, 31.680058> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098597, -0.625491, 0.773977,
		-0.670248, 0.616635, 0.412952,
		-0.735559, -0.478040, -0.480032,
		27.161911, 21.929815, 31.536047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.229130, 22.165730, 32.413448>,  <27.676802, 22.264442, 31.872070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.229130, 22.165730, 32.413448> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.131372, 21.928509, 32.106579>,  <27.072718, 21.786177, 31.922457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.131372, 21.928509, 32.106579>,  <27.229130, 22.165730, 32.413448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.131372, 21.928509, 32.106579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272944, -0.717106, 0.641297,
		-0.930470, 0.366125, 0.013385,
		-0.244393, -0.593054, -0.767176,
		27.058054, 21.750593, 31.876427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.600246, 21.975210, 32.542156>,  <27.229130, 22.165730, 32.413448>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.600246, 21.975210, 32.542156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.764050, 21.707603, 32.294056>,  <26.862331, 21.547039, 32.145195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.764050, 21.707603, 32.294056>,  <26.600246, 21.975210, 32.542156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.764050, 21.707603, 32.294056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113915, -0.712052, 0.692824,
		-0.905166, -0.213061, -0.367802,
		0.409508, -0.669019, -0.620255,
		26.886902, 21.506897, 32.107979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.079704, 21.461187, 32.404316>,  <26.600246, 21.975210, 32.542156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.079704, 21.461187, 32.404316> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.433043, 21.292019, 32.323479>,  <26.645046, 21.190517, 32.274979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.433043, 21.292019, 32.323479>,  <26.079704, 21.461187, 32.404316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.433043, 21.292019, 32.323479> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061350, -0.531762, 0.844669,
		-0.464690, -0.733736, -0.495676,
		0.883346, -0.422919, -0.202090,
		26.698046, 21.165144, 32.262852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.932430, 20.740551, 32.384151>,  <26.079704, 21.461187, 32.404316>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.932430, 20.740551, 32.384151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.324501, 20.787849, 32.447746>,  <26.559744, 20.816229, 32.485901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.324501, 20.787849, 32.447746>,  <25.932430, 20.740551, 32.384151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.324501, 20.787849, 32.447746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055685, -0.605654, 0.793778,
		0.190148, -0.786894, -0.587062,
		0.980175, 0.118245, 0.158983,
		26.618553, 20.823322, 32.495441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.168550, 20.049141, 32.761429>,  <25.932430, 20.740551, 32.384151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.168550, 20.049141, 32.761429> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.480370, 20.295284, 32.808147>,  <26.667461, 20.442970, 32.836178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.480370, 20.295284, 32.808147>,  <26.168550, 20.049141, 32.761429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.480370, 20.295284, 32.808147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212965, -0.435775, 0.874497,
		0.589026, -0.656838, -0.470757,
		0.779547, 0.615357, 0.116799,
		26.714233, 20.479891, 32.843185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.675468, 19.614225, 33.037460>,  <26.168550, 20.049141, 32.761429>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.675468, 19.614225, 33.037460> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.789639, 19.985249, 33.133930>,  <26.858141, 20.207863, 33.191814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.789639, 19.985249, 33.133930>,  <26.675468, 19.614225, 33.037460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.789639, 19.985249, 33.133930> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284177, -0.322237, 0.902999,
		0.915301, -0.189203, -0.355566,
		0.285427, 0.927559, 0.241177,
		26.875267, 20.263515, 33.206284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.239929, 19.480179, 33.439423>,  <26.675468, 19.614225, 33.037460>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.239929, 19.480179, 33.439423> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.160194, 19.863174, 33.522827>,  <27.112352, 20.092972, 33.572868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.160194, 19.863174, 33.522827>,  <27.239929, 19.480179, 33.439423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.160194, 19.863174, 33.522827> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109402, -0.189706, 0.975727,
		0.973805, 0.217311, -0.066936,
		-0.199338, 0.957490, 0.208511,
		27.100393, 20.150421, 33.585381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.864571, 19.709188, 33.667812>,  <27.239929, 19.480179, 33.439423>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.864571, 19.709188, 33.667812> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.531538, 19.885082, 33.802536>,  <27.331718, 19.990618, 33.883369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.531538, 19.885082, 33.802536>,  <27.864571, 19.709188, 33.667812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.531538, 19.885082, 33.802536> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264908, -0.217899, 0.939331,
		0.486447, 0.871294, 0.064930,
		-0.832582, 0.439734, 0.336810,
		27.281763, 20.017002, 33.903580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.050783, 20.132242, 34.220638>,  <27.864571, 19.709188, 33.667812>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.050783, 20.132242, 34.220638> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.676338, 19.993439, 34.243530>,  <27.451672, 19.910156, 34.257263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.676338, 19.993439, 34.243530>,  <28.050783, 20.132242, 34.220638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.676338, 19.993439, 34.243530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208336, -0.416045, 0.885157,
		-0.283347, 0.840531, 0.461760,
		-0.936114, -0.347008, 0.057228,
		27.395504, 19.889336, 34.260700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.288029, 20.274069, 34.979195>,  <28.050783, 20.132242, 34.220638>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.288029, 20.274069, 34.979195> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.425325, 20.340202, 35.349026>,  <28.507704, 20.379883, 35.570927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.425325, 20.340202, 35.349026>,  <28.288029, 20.274069, 34.979195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.425325, 20.340202, 35.349026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668051, 0.648975, -0.364060,
		-0.660221, 0.742628, 0.112304,
		0.343244, 0.165336, 0.924580,
		28.528299, 20.389803, 35.626400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.090536, 21.015791, 35.085999>,  <28.288029, 20.274069, 34.979195>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.090536, 21.015791, 35.085999> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.421774, 20.904007, 35.280384>,  <28.620516, 20.836937, 35.397015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.421774, 20.904007, 35.280384>,  <28.090536, 21.015791, 35.085999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.421774, 20.904007, 35.280384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477430, 0.805907, -0.350105,
		-0.293803, 0.521934, 0.800790,
		0.828094, -0.279460, 0.485965,
		28.670202, 20.820169, 35.426174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.394543, 21.655167, 35.431103>,  <28.090536, 21.015791, 35.085999>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.394543, 21.655167, 35.431103> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.712395, 21.412411, 35.424740>,  <28.903105, 21.266758, 35.420921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.712395, 21.412411, 35.424740>,  <28.394543, 21.655167, 35.431103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.712395, 21.412411, 35.424740> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510612, 0.682282, -0.523228,
		0.328391, 0.407651, 0.852044,
		0.794629, -0.606887, -0.015904,
		28.950783, 21.230345, 35.419968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.941553, 22.094378, 35.562813>,  <28.394543, 21.655167, 35.431103>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.941553, 22.094378, 35.562813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.102301, 21.778866, 35.376770>,  <29.198750, 21.589560, 35.265144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.102301, 21.778866, 35.376770>,  <28.941553, 22.094378, 35.562813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.102301, 21.778866, 35.376770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520154, 0.614665, -0.592981,
		0.753619, -0.003630, 0.657301,
		0.401867, -0.788780, -0.465112,
		29.222860, 21.542233, 35.237236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.520033, 22.348585, 35.263081>,  <28.941553, 22.094378, 35.562813>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.520033, 22.348585, 35.263081> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.538219, 22.001625, 35.064869>,  <29.549131, 21.793449, 34.945942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.538219, 22.001625, 35.064869>,  <29.520033, 22.348585, 35.263081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.538219, 22.001625, 35.064869> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575573, 0.428175, -0.696693,
		0.816485, -0.253537, 0.518720,
		0.045465, -0.867401, -0.495528,
		29.551859, 21.741405, 34.916210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.181662, 22.239597, 34.979038>,  <29.520033, 22.348585, 35.263081>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.181662, 22.239597, 34.979038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.958500, 21.984119, 34.767071>,  <29.824602, 21.830833, 34.639889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.958500, 21.984119, 34.767071>,  <30.181662, 22.239597, 34.979038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.958500, 21.984119, 34.767071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348888, 0.398861, -0.848049,
		0.753006, -0.658013, 0.000306,
		-0.557906, -0.638693, -0.529917,
		29.791128, 21.792511, 34.608097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.599945, 21.988953, 34.425991>,  <30.181662, 22.239597, 34.979038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.599945, 21.988953, 34.425991> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.225815, 21.958176, 34.287865>,  <30.001337, 21.939709, 34.204990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.225815, 21.958176, 34.287865>,  <30.599945, 21.988953, 34.425991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.225815, 21.958176, 34.287865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261536, 0.506921, -0.821359,
		0.238245, -0.858551, -0.454014,
		-0.935328, -0.076944, -0.345313,
		29.945217, 21.935093, 34.184269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.744305, 21.857597, 33.683971>,  <30.599945, 21.988953, 34.425991>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.744305, 21.857597, 33.683971> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.372656, 22.001583, 33.717823>,  <30.149668, 22.087975, 33.738132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.372656, 22.001583, 33.717823>,  <30.744305, 21.857597, 33.683971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.372656, 22.001583, 33.717823> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128742, 0.529440, -0.838522,
		-0.346642, -0.768193, -0.538255,
		-0.929120, 0.359963, 0.084627,
		30.093920, 22.109571, 33.743210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.456326, 21.770550, 32.946911>,  <30.744305, 21.857597, 33.683971>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.456326, 21.770550, 32.946911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.224972, 22.037922, 33.133957>,  <30.086159, 22.198345, 33.246185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.224972, 22.037922, 33.133957>,  <30.456326, 21.770550, 32.946911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.224972, 22.037922, 33.133957> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033850, 0.553070, -0.832447,
		-0.815061, -0.497304, -0.297261,
		-0.578386, 0.668432, 0.467620,
		30.051456, 22.238451, 33.274242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.856270, 21.727276, 32.590950>,  <30.456326, 21.770550, 32.946911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.856270, 21.727276, 32.590950> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.870495, 22.080887, 32.777382>,  <29.879030, 22.293053, 32.889240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.870495, 22.080887, 32.777382>,  <29.856270, 21.727276, 32.590950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.870495, 22.080887, 32.777382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245776, 0.459787, -0.853341,
		-0.968674, -0.084206, 0.233623,
		0.035560, 0.884028, 0.466079,
		29.881163, 22.346096, 32.917206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.201202, 21.996572, 32.465206>,  <29.856270, 21.727276, 32.590950>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.201202, 21.996572, 32.465206> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.439119, 22.310207, 32.536114>,  <29.581871, 22.498388, 32.578659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.439119, 22.310207, 32.536114>,  <29.201202, 21.996572, 32.465206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.439119, 22.310207, 32.536114> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275650, 0.406078, -0.871274,
		-0.755140, 0.469366, 0.457667,
		0.594795, 0.784090, 0.177265,
		29.617558, 22.545435, 32.589294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.823832, 22.535147, 32.275490>,  <29.201202, 21.996572, 32.465206>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.823832, 22.535147, 32.275490> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.174393, 22.726112, 32.300777>,  <29.384729, 22.840691, 32.315948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.174393, 22.726112, 32.300777>,  <28.823832, 22.535147, 32.275490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.174393, 22.726112, 32.300777> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174604, 0.437338, -0.882184,
		-0.448813, 0.762110, 0.466642,
		0.876402, 0.477413, 0.063216,
		29.437313, 22.869337, 32.319744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.738670, 23.369495, 32.181049>,  <28.823832, 22.535147, 32.275490>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.738670, 23.369495, 32.181049> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.109488, 23.251583, 32.088360>,  <29.331978, 23.180836, 32.032745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.109488, 23.251583, 32.088360>,  <28.738670, 23.369495, 32.181049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.109488, 23.251583, 32.088360> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096376, 0.409906, -0.907022,
		0.362359, 0.863180, 0.351590,
		0.927042, -0.294783, -0.231723,
		29.387600, 23.163149, 32.018845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.116203, 23.969553, 31.990513>,  <28.738670, 23.369495, 32.181049>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.116203, 23.969553, 31.990513> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.318655, 23.673382, 31.813606>,  <29.440126, 23.495680, 31.707462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.318655, 23.673382, 31.813606>,  <29.116203, 23.969553, 31.990513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.318655, 23.673382, 31.813606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037037, 0.493666, -0.868862,
		0.861661, 0.456138, 0.222437,
		0.506131, -0.740426, -0.442267,
		29.470495, 23.451254, 31.680925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.458139, 24.366550, 31.468361>,  <29.116203, 23.969553, 31.990513>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.458139, 24.366550, 31.468361> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.468412, 23.983276, 31.354366>,  <29.474577, 23.753311, 31.285969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.468412, 23.983276, 31.354366>,  <29.458139, 24.366550, 31.468361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.468412, 23.983276, 31.354366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192149, 0.275035, -0.942037,
		0.981030, 0.078954, -0.177051,
		0.025682, -0.958187, -0.284988,
		29.476116, 23.695820, 31.268869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.895506, 24.411949, 30.843328>,  <29.458139, 24.366550, 31.468361>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.895506, 24.411949, 30.843328> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.703703, 24.061626, 30.821289>,  <29.588621, 23.851433, 30.808065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.703703, 24.061626, 30.821289>,  <29.895506, 24.411949, 30.843328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.703703, 24.061626, 30.821289> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036996, 0.082905, -0.995870,
		0.876758, -0.475488, -0.072155,
		-0.479506, -0.875807, -0.055097,
		29.559851, 23.798883, 30.804760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.305956, 23.884655, 30.295107>,  <29.895506, 24.411949, 30.843328>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.305956, 23.884655, 30.295107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.920280, 23.783665, 30.327587>,  <29.688875, 23.723070, 30.347075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.920280, 23.783665, 30.327587>,  <30.305956, 23.884655, 30.295107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.920280, 23.783665, 30.327587> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106505, 0.088210, -0.990392,
		0.242885, -0.963575, -0.111941,
		-0.964191, -0.252473, 0.081200,
		29.631023, 23.707922, 30.351948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.200594, 23.357168, 29.857454>,  <30.305956, 23.884655, 30.295107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.200594, 23.357168, 29.857454> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.854523, 23.550495, 29.910927>,  <29.646879, 23.666491, 29.943010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.854523, 23.550495, 29.910927>,  <30.200594, 23.357168, 29.857454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.854523, 23.550495, 29.910927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030647, 0.215120, -0.976107,
		-0.500527, -0.848603, -0.171305,
		-0.865178, 0.483318, 0.133680,
		29.594969, 23.695490, 29.951031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.786774, 23.190498, 29.219849>,  <30.200594, 23.357168, 29.857454>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.786774, 23.190498, 29.219849> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.592600, 23.502186, 29.378429>,  <29.476095, 23.689198, 29.473577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.592600, 23.502186, 29.378429>,  <29.786774, 23.190498, 29.219849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.592600, 23.502186, 29.378429> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138505, 0.379194, -0.914892,
		-0.863233, -0.499029, -0.076147,
		-0.485432, 0.779219, 0.396451,
		29.446970, 23.735952, 29.497364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.108650, 23.305449, 28.708426>,  <29.786774, 23.190498, 29.219849>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.108650, 23.305449, 28.708426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.173330, 23.624844, 28.940380>,  <29.212139, 23.816481, 29.079554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.173330, 23.624844, 28.940380>,  <29.108650, 23.305449, 28.708426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.173330, 23.624844, 28.940380> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131016, 0.599790, -0.789359,
		-0.978104, 0.051666, 0.201601,
		0.161701, 0.798488, 0.579888,
		29.221840, 23.864389, 29.114346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.571844, 23.638594, 28.664591>,  <29.108650, 23.305449, 28.708426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.571844, 23.638594, 28.664591> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.844656, 23.907642, 28.779423>,  <29.008343, 24.069073, 28.848322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.844656, 23.907642, 28.779423>,  <28.571844, 23.638594, 28.664591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.844656, 23.907642, 28.779423> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183711, 0.537533, -0.822987,
		-0.707875, 0.508562, 0.490182,
		0.682029, 0.672624, 0.287078,
		29.049265, 24.109430, 28.865545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<22.949018, 34.889843, 16.700541> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.173359, 34.565018, 16.765038>,  <23.307962, 34.370121, 16.803736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.173359, 34.565018, 16.765038>,  <22.949018, 34.889843, 16.700541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.173359, 34.565018, 16.765038> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035418, 0.171042, 0.984627,
		-0.827160, -0.557938, 0.067167,
		0.560849, -0.812065, 0.161240,
		23.341614, 34.321400, 16.813410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.623785, 34.603107, 17.217728>,  <22.949018, 34.889843, 16.700541>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.623785, 34.603107, 17.217728> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.992989, 34.449245, 17.221542>,  <23.214512, 34.356926, 17.223831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.992989, 34.449245, 17.221542>,  <22.623785, 34.603107, 17.217728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.992989, 34.449245, 17.221542> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067578, 0.186451, 0.980137,
		-0.378795, -0.904032, 0.198091,
		0.923010, -0.384658, 0.009535,
		23.269892, 34.333847, 17.224403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.610067, 34.217571, 17.883684>,  <22.623785, 34.603107, 17.217728>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.610067, 34.217571, 17.883684> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.000196, 34.258133, 17.805237>,  <23.234274, 34.282471, 17.758169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.000196, 34.258133, 17.805237>,  <22.610067, 34.217571, 17.883684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.000196, 34.258133, 17.805237> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168061, 0.235067, 0.957340,
		0.143181, -0.966675, 0.212223,
		0.975322, 0.101407, -0.196118,
		23.292793, 34.288555, 17.746401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.920490, 33.699013, 18.295132>,  <22.610067, 34.217571, 17.883684>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.920490, 33.699013, 18.295132> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.155838, 34.010860, 18.209332>,  <23.297047, 34.197971, 18.157852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.155838, 34.010860, 18.209332>,  <22.920490, 33.699013, 18.295132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.155838, 34.010860, 18.209332> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162294, 0.146016, 0.975879,
		0.792138, -0.608989, -0.040616,
		0.588369, 0.779623, -0.214500,
		23.332350, 34.244747, 18.144981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.346218, 33.649055, 18.889158>,  <22.920490, 33.699013, 18.295132>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.346218, 33.649055, 18.889158> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.456602, 34.002983, 18.738987>,  <23.522833, 34.215340, 18.648884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.456602, 34.002983, 18.738987>,  <23.346218, 33.649055, 18.889158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.456602, 34.002983, 18.738987> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071189, 0.370710, 0.926016,
		0.958529, -0.282271, 0.039312,
		0.275961, 0.884815, -0.375430,
		23.539391, 34.268429, 18.626358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.911638, 33.889503, 19.352451>,  <23.346218, 33.649055, 18.889158>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.911638, 33.889503, 19.352451> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.771519, 34.215759, 19.168270>,  <23.687447, 34.411514, 19.057762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.771519, 34.215759, 19.168270>,  <23.911638, 33.889503, 19.352451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.771519, 34.215759, 19.168270> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324975, 0.566902, 0.756977,
		0.878454, 0.115533, -0.463649,
		-0.350300, 0.815643, -0.460452,
		23.666430, 34.460453, 19.030134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.468033, 34.340168, 19.423328>,  <23.911638, 33.889503, 19.352451>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.468033, 34.340168, 19.423328> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.131886, 34.548042, 19.361740>,  <23.930197, 34.672768, 19.324787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.131886, 34.548042, 19.361740>,  <24.468033, 34.340168, 19.423328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.131886, 34.548042, 19.361740> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234006, 0.604098, 0.761778,
		0.488902, 0.604143, -0.629274,
		-0.840366, 0.519689, -0.153972,
		23.879776, 34.703949, 19.315548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.637300, 34.931946, 19.638247>,  <24.468033, 34.340168, 19.423328>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.637300, 34.931946, 19.638247> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.241224, 34.987274, 19.630318>,  <24.003578, 35.020470, 19.625561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.241224, 34.987274, 19.630318>,  <24.637300, 34.931946, 19.638247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.241224, 34.987274, 19.630318> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071675, 0.624544, 0.777694,
		0.119947, 0.768643, -0.628331,
		-0.990190, 0.138317, -0.019820,
		23.944168, 35.028770, 19.624372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.583611, 35.594452, 19.888142>,  <24.637300, 34.931946, 19.638247>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.583611, 35.594452, 19.888142> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.225275, 35.423180, 19.935688>,  <24.010273, 35.320415, 19.964216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.225275, 35.423180, 19.935688>,  <24.583611, 35.594452, 19.888142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.225275, 35.423180, 19.935688> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102907, 0.460117, 0.881874,
		-0.432298, 0.777786, -0.456255,
		-0.895840, -0.428184, 0.118868,
		23.956524, 35.294724, 19.971348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.120396, 36.120136, 20.121820>,  <24.583611, 35.594452, 19.888142>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.120396, 36.120136, 20.121820> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.959124, 35.773296, 20.238834>,  <23.862360, 35.565193, 20.309044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.959124, 35.773296, 20.238834>,  <24.120396, 36.120136, 20.121820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.959124, 35.773296, 20.238834> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091425, 0.356237, 0.929912,
		-0.910542, 0.348178, -0.222903,
		-0.403181, -0.867103, 0.292537,
		23.838169, 35.513165, 20.326595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.515402, 36.308662, 20.450657>,  <24.120396, 36.120136, 20.121820>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.515402, 36.308662, 20.450657> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.544189, 35.930386, 20.577454>,  <23.561462, 35.703419, 20.653532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.544189, 35.930386, 20.577454>,  <23.515402, 36.308662, 20.450657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.544189, 35.930386, 20.577454> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360188, 0.271724, 0.892429,
		-0.930099, -0.178405, -0.321072,
		0.071971, -0.945694, 0.316990,
		23.565781, 35.646679, 20.672550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.806526, 36.056835, 20.709848>,  <23.515402, 36.308662, 20.450657>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.806526, 36.056835, 20.709848> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.092186, 35.844437, 20.892292>,  <23.263582, 35.716999, 21.001759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.092186, 35.844437, 20.892292>,  <22.806526, 36.056835, 20.709848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.092186, 35.844437, 20.892292> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345029, 0.299917, 0.889385,
		-0.609054, -0.792523, 0.030977,
		0.714149, -0.530996, 0.456109,
		23.306431, 35.685139, 21.029125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.476414, 35.651676, 21.188459>,  <22.806526, 36.056835, 20.709848>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.476414, 35.651676, 21.188459> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.856289, 35.660110, 21.313457>,  <23.084213, 35.665169, 21.388456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.856289, 35.660110, 21.313457>,  <22.476414, 35.651676, 21.188459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.856289, 35.660110, 21.313457> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312035, -0.022405, 0.949806,
		0.027029, -0.999527, -0.014698,
		0.949686, 0.021086, 0.312493,
		23.141195, 35.666435, 21.407206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.620382, 35.073219, 21.693817>,  <22.476414, 35.651676, 21.188459>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.620382, 35.073219, 21.693817> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.910339, 35.332481, 21.787136>,  <23.084312, 35.488037, 21.843128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.910339, 35.332481, 21.787136>,  <22.620382, 35.073219, 21.693817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.910339, 35.332481, 21.787136> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143964, -0.188653, 0.971434,
		0.673653, -0.737770, -0.043442,
		0.724891, 0.648155, 0.233299,
		23.127806, 35.526928, 21.857126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.959944, 34.729626, 22.179317>,  <22.620382, 35.073219, 21.693817>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.959944, 34.729626, 22.179317> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.051842, 35.113590, 22.243546>,  <23.106981, 35.343971, 22.282082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.051842, 35.113590, 22.243546>,  <22.959944, 34.729626, 22.179317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.051842, 35.113590, 22.243546> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053041, -0.152389, 0.986896,
		0.971805, -0.235251, 0.015904,
		0.229744, 0.959914, 0.160570,
		23.120766, 35.401566, 22.291716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.228710, 34.714840, 22.906755>,  <22.959944, 34.729626, 22.179317>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.228710, 34.714840, 22.906755> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.152510, 35.101086, 22.835999>,  <23.106789, 35.332832, 22.793545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.152510, 35.101086, 22.835999>,  <23.228710, 34.714840, 22.906755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.152510, 35.101086, 22.835999> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234953, 0.130107, 0.963260,
		0.953156, 0.225064, 0.202089,
		-0.190502, 0.965618, -0.176892,
		23.095360, 35.390770, 22.782930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.240059, 34.974548, 23.582947>,  <23.228710, 34.714840, 22.906755>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.240059, 34.974548, 23.582947> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.080212, 35.292179, 23.399754>,  <22.984304, 35.482758, 23.289837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.080212, 35.292179, 23.399754>,  <23.240059, 34.974548, 23.582947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.080212, 35.292179, 23.399754> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232651, 0.395394, 0.888559,
		0.886668, 0.461634, 0.026737,
		-0.399617, 0.794077, -0.457983,
		22.960327, 35.530403, 23.262360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.465868, 35.687599, 24.028416>,  <23.240059, 34.974548, 23.582947>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.465868, 35.687599, 24.028416> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.147589, 35.773941, 23.802044>,  <22.956621, 35.825745, 23.666222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.147589, 35.773941, 23.802044>,  <23.465868, 35.687599, 24.028416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.147589, 35.773941, 23.802044> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447843, 0.419415, 0.789638,
		0.407804, 0.881759, -0.237059,
		-0.795696, 0.215852, -0.565929,
		22.908880, 35.838696, 23.632265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.301903, 36.466743, 24.166111>,  <23.465868, 35.687599, 24.028416>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.301903, 36.466743, 24.166111> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.978523, 36.275284, 24.029110>,  <22.784494, 36.160408, 23.946909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.978523, 36.275284, 24.029110>,  <23.301903, 36.466743, 24.166111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.978523, 36.275284, 24.029110> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550281, 0.408255, 0.728367,
		-0.208801, 0.777321, -0.593443,
		-0.808451, -0.478644, -0.342501,
		22.735989, 36.131691, 23.926359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.740330, 36.911922, 24.343861>,  <23.301903, 36.466743, 24.166111>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.740330, 36.911922, 24.343861> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.575787, 36.557667, 24.257679>,  <22.477060, 36.345112, 24.205971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.575787, 36.557667, 24.257679>,  <22.740330, 36.911922, 24.343861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.575787, 36.557667, 24.257679> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726454, 0.175802, 0.664348,
		-0.550497, 0.429804, -0.715696,
		-0.411360, -0.885642, -0.215455,
		22.452379, 36.291973, 24.193043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.952404, 37.059368, 24.338787>,  <22.740330, 36.911922, 24.343861>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.952404, 37.059368, 24.338787> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.982140, 36.666557, 24.408184>,  <21.999981, 36.430870, 24.449821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.982140, 36.666557, 24.408184>,  <21.952404, 37.059368, 24.338787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.982140, 36.666557, 24.408184> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577159, 0.099507, 0.810547,
		-0.813241, -0.160386, -0.559388,
		0.074338, -0.982026, 0.173491,
		22.004440, 36.371948, 24.460232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.336773, 36.983143, 23.847622>,  <21.952404, 37.059368, 24.338787>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.336773, 36.983143, 23.847622> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.012730, 37.213181, 23.802032>,  <20.818304, 37.351204, 23.774679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.012730, 37.213181, 23.802032>,  <21.336773, 36.983143, 23.847622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.012730, 37.213181, 23.802032> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028725, -0.233098, -0.972029,
		-0.585578, -0.784174, 0.205354,
		-0.810107, 0.575097, -0.113972,
		20.769697, 37.385708, 23.767841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.025026, 36.754013, 23.362032>,  <21.336773, 36.983143, 23.847622>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.025026, 36.754013, 23.362032> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.845293, 37.111320, 23.356663>,  <20.737453, 37.325703, 23.353441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.845293, 37.111320, 23.356663>,  <21.025026, 36.754013, 23.362032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.845293, 37.111320, 23.356663> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043565, -0.036917, -0.998368,
		-0.892302, -0.448013, 0.055503,
		-0.449331, 0.893264, -0.013424,
		20.710493, 37.379299, 23.352636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.295076, 36.757206, 22.992258>,  <21.025026, 36.754013, 23.362032>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.295076, 36.757206, 22.992258> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.418758, 37.137531, 22.984886>,  <20.492968, 37.365726, 22.980463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.418758, 37.137531, 22.984886>,  <20.295076, 36.757206, 22.992258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.418758, 37.137531, 22.984886> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006199, -0.017366, -0.999830,
		-0.950975, 0.309268, 0.000524,
		0.309206, 0.950816, -0.018432,
		20.511520, 37.422775, 22.979357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.802473, 37.314690, 22.539846>,  <20.295076, 36.757206, 22.992258>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.802473, 37.314690, 22.539846> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.181622, 37.440357, 22.561161>,  <20.409111, 37.515759, 22.573950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.181622, 37.440357, 22.561161>,  <19.802473, 37.314690, 22.539846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.181622, 37.440357, 22.561161> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068731, -0.038286, -0.996900,
		-0.311159, 0.948594, -0.057883,
		0.947869, 0.314172, 0.053285,
		20.465982, 37.534611, 22.577147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.838064, 37.944126, 22.054226>,  <19.802473, 37.314690, 22.539846>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.838064, 37.944126, 22.054226> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.207273, 37.795975, 22.095886>,  <20.428799, 37.707085, 22.120882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.207273, 37.795975, 22.095886>,  <19.838064, 37.944126, 22.054226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.207273, 37.795975, 22.095886> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149027, 0.094613, -0.984296,
		0.354704, 0.924052, 0.142526,
		0.923025, -0.370374, 0.104149,
		20.484180, 37.684864, 22.127131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.175358, 38.116756, 21.449137>,  <19.838064, 37.944126, 22.054226>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.175358, 38.116756, 21.449137> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.467489, 37.879868, 21.585312>,  <20.642767, 37.737736, 21.667017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.467489, 37.879868, 21.585312>,  <20.175358, 38.116756, 21.449137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.467489, 37.879868, 21.585312> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421561, -0.001406, -0.906799,
		0.537503, 0.805775, 0.248630,
		0.730327, -0.592219, 0.340440,
		20.686586, 37.702202, 21.687443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.829077, 38.441322, 21.191515>,  <20.175358, 38.116756, 21.449137>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.829077, 38.441322, 21.191515> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.896301, 38.052982, 21.259872>,  <20.936636, 37.819977, 21.300888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.896301, 38.052982, 21.259872>,  <20.829077, 38.441322, 21.191515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.896301, 38.052982, 21.259872> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508010, -0.063269, -0.859024,
		0.844796, 0.231187, 0.482568,
		0.168064, -0.970850, 0.170895,
		20.946720, 37.761726, 21.311140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.559835, 38.415146, 21.161850>,  <20.829077, 38.441322, 21.191515>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.559835, 38.415146, 21.161850> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.422997, 38.043530, 21.105492>,  <21.340893, 37.820560, 21.071676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.422997, 38.043530, 21.105492>,  <21.559835, 38.415146, 21.161850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.422997, 38.043530, 21.105492> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585460, -0.093452, -0.805297,
		0.734987, -0.357978, 0.575887,
		-0.342096, -0.929042, -0.140895,
		21.320368, 37.764816, 21.063223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.122080, 38.009365, 20.989763>,  <21.559835, 38.415146, 21.161850>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.122080, 38.009365, 20.989763> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.813635, 37.799599, 20.845333>,  <21.628567, 37.673740, 20.758675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.813635, 37.799599, 20.845333>,  <22.122080, 38.009365, 20.989763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.813635, 37.799599, 20.845333> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515317, -0.180977, -0.837673,
		0.373939, -0.832009, 0.409792,
		-0.771115, -0.524412, -0.361074,
		21.582300, 37.642277, 20.737011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.412298, 37.366482, 20.692137>,  <22.122080, 38.009365, 20.989763>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.412298, 37.366482, 20.692137> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.049706, 37.380844, 20.523849>,  <21.832150, 37.389462, 20.422876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.049706, 37.380844, 20.523849>,  <22.412298, 37.366482, 20.692137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.049706, 37.380844, 20.523849> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379784, -0.366151, -0.849528,
		-0.184546, -0.929863, 0.318274,
		-0.906481, 0.035902, -0.420719,
		21.777761, 37.391617, 20.397635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.457544, 36.717602, 20.244688>,  <22.412298, 37.366482, 20.692137>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.457544, 36.717602, 20.244688> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.156124, 36.947903, 20.117775>,  <21.975273, 37.086082, 20.041626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.156124, 36.947903, 20.117775>,  <22.457544, 36.717602, 20.244688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.156124, 36.947903, 20.117775> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349401, -0.058055, -0.935173,
		-0.556851, -0.815558, -0.157422,
		-0.753549, 0.575756, -0.317284,
		21.930059, 37.120628, 20.022589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.113010, 36.412029, 19.610527>,  <22.457544, 36.717602, 20.244688>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.113010, 36.412029, 19.610527> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.012701, 36.798725, 19.590397>,  <21.952515, 37.030743, 19.578320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.012701, 36.798725, 19.590397>,  <22.113010, 36.412029, 19.610527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.012701, 36.798725, 19.590397> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228316, 0.008546, -0.973549,
		-0.940736, -0.255630, -0.222865,
		-0.250773, 0.966737, -0.050325,
		21.937469, 37.088745, 19.575300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.469383, 36.518974, 19.187605>,  <22.113010, 36.412029, 19.610527>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.469383, 36.518974, 19.187605> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.680794, 36.858471, 19.180614>,  <21.807640, 37.062168, 19.176420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.680794, 36.858471, 19.180614>,  <21.469383, 36.518974, 19.187605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.680794, 36.858471, 19.180614> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142988, -0.109298, -0.983671,
		-0.836789, 0.517396, -0.179126,
		0.528525, 0.848737, -0.017478,
		21.839352, 37.113091, 19.175371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.249710, 36.854294, 18.610315>,  <21.469383, 36.518974, 19.187605>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.249710, 36.854294, 18.610315> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.583229, 37.055634, 18.701015>,  <21.783340, 37.176437, 18.755436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.583229, 37.055634, 18.701015>,  <21.249710, 36.854294, 18.610315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.583229, 37.055634, 18.701015> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254708, 0.013662, -0.966922,
		-0.489801, 0.863973, -0.116816,
		0.833798, 0.503353, 0.226752,
		21.833368, 37.206638, 18.769041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.320393, 37.332001, 18.063526>,  <21.249710, 36.854294, 18.610315>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.320393, 37.332001, 18.063526> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.687515, 37.324722, 18.222172>,  <21.907789, 37.320354, 18.317360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.687515, 37.324722, 18.222172>,  <21.320393, 37.332001, 18.063526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.687515, 37.324722, 18.222172> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396774, 0.078080, -0.914589,
		-0.014330, 0.996781, 0.078880,
		0.917804, -0.018192, 0.396616,
		21.962856, 37.319263, 18.341156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.713860, 37.772640, 17.645376>,  <21.320393, 37.332001, 18.063526>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.713860, 37.772640, 17.645376> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.962593, 37.528091, 17.841148>,  <22.111834, 37.381363, 17.958612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.962593, 37.528091, 17.841148>,  <21.713860, 37.772640, 17.645376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.962593, 37.528091, 17.841148> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508975, -0.159480, -0.845878,
		0.595201, 0.775107, 0.212003,
		0.621836, -0.611372, 0.489433,
		22.149143, 37.344681, 17.987978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.359789, 37.920231, 17.273813>,  <21.713860, 37.772640, 17.645376>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.359789, 37.920231, 17.273813> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.413357, 37.572903, 17.464848>,  <22.445498, 37.364506, 17.579468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.413357, 37.572903, 17.464848>,  <22.359789, 37.920231, 17.273813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.413357, 37.572903, 17.464848> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599431, -0.312791, -0.736780,
		0.789144, 0.384949, 0.478609,
		0.133918, -0.868318, 0.477587,
		22.453531, 37.312408, 17.608124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.097826, 37.789558, 17.392757>,  <22.359789, 37.920231, 17.273813>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.097826, 37.789558, 17.392757> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.947412, 37.422318, 17.442860>,  <22.857164, 37.201973, 17.472921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.947412, 37.422318, 17.442860>,  <23.097826, 37.789558, 17.392757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.947412, 37.422318, 17.442860> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666935, -0.362014, -0.651262,
		0.643270, -0.161358, 0.748444,
		-0.376034, -0.918101, 0.125257,
		22.834602, 37.146889, 17.480436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.686295, 37.247982, 17.397738>,  <23.097826, 37.789558, 17.392757>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.686295, 37.247982, 17.397738> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.360172, 37.037708, 17.300629>,  <23.164499, 36.911545, 17.242363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.360172, 37.037708, 17.300629>,  <23.686295, 37.247982, 17.397738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.360172, 37.037708, 17.300629> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471677, -0.359759, -0.805043,
		0.335856, -0.770866, 0.541264,
		-0.815305, -0.525680, -0.242773,
		23.115582, 36.880005, 17.227797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.902939, 36.545597, 17.231905>,  <23.686295, 37.247982, 17.397738>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.902939, 36.545597, 17.231905> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.542749, 36.562855, 17.058800>,  <23.326635, 36.573212, 16.954937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.542749, 36.562855, 17.058800>,  <23.902939, 36.545597, 17.231905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.542749, 36.562855, 17.058800> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329922, -0.580573, -0.744370,
		-0.283370, -0.813064, 0.508555,
		-0.900474, 0.043149, -0.432765,
		23.272608, 36.575798, 16.928970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.946558, 35.926628, 16.867071>,  <23.902939, 36.545597, 17.231905>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.946558, 35.926628, 16.867071> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.620483, 36.070583, 16.685543>,  <23.424839, 36.156956, 16.576626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.620483, 36.070583, 16.685543>,  <23.946558, 35.926628, 16.867071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.620483, 36.070583, 16.685543> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079455, -0.706638, -0.703101,
		-0.573726, -0.609215, 0.547445,
		-0.815185, 0.359890, -0.453821,
		23.375927, 36.178551, 16.549397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<25.425045, 27.521173, 25.788424> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.578079, 27.701691, 26.110905>,  <25.669901, 27.810001, 26.304394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.578079, 27.701691, 26.110905>,  <25.425045, 27.521173, 25.788424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.578079, 27.701691, 26.110905> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222730, 0.891904, -0.393572,
		-0.896671, -0.028990, 0.441748,
		0.382588, 0.451295, 0.806201,
		25.692856, 27.837080, 26.352764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.925661, 27.935278, 26.145020>,  <25.425045, 27.521173, 25.788424>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.925661, 27.935278, 26.145020> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.288483, 28.087460, 26.217140>,  <25.506176, 28.178768, 26.260412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.288483, 28.087460, 26.217140>,  <24.925661, 27.935278, 26.145020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.288483, 28.087460, 26.217140> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317524, 0.899400, -0.300428,
		-0.276460, 0.215255, 0.936608,
		0.907054, 0.380453, 0.180299,
		25.560598, 28.201595, 26.271231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.791708, 28.639006, 26.228519>,  <24.925661, 27.935278, 26.145020>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.791708, 28.639006, 26.228519> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.191544, 28.648144, 26.235485>,  <25.431444, 28.653627, 26.239664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.191544, 28.648144, 26.235485>,  <24.791708, 28.639006, 26.228519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.191544, 28.648144, 26.235485> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015600, 0.940781, -0.338657,
		-0.024120, 0.338245, 0.940749,
		0.999587, 0.022845, 0.017415,
		25.491421, 28.654997, 26.240709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.980621, 29.228144, 26.635740>,  <24.791708, 28.639006, 26.228519>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.980621, 29.228144, 26.635740> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.298630, 29.148251, 26.406639>,  <25.489435, 29.100315, 26.269178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.298630, 29.148251, 26.406639>,  <24.980621, 29.228144, 26.635740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.298630, 29.148251, 26.406639> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112018, 0.976337, -0.184982,
		0.596148, 0.082906, 0.798583,
		0.795022, -0.199732, -0.572755,
		25.537136, 29.088331, 26.234812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.482527, 29.752356, 26.778635>,  <24.980621, 29.228144, 26.635740>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.482527, 29.752356, 26.778635> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.619593, 29.632198, 26.422581>,  <25.701832, 29.560104, 26.208948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.619593, 29.632198, 26.422581>,  <25.482527, 29.752356, 26.778635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.619593, 29.632198, 26.422581> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058896, 0.938769, -0.339476,
		0.937610, 0.168752, 0.303992,
		0.342665, -0.300392, -0.890138,
		25.722393, 29.542080, 26.155539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.106604, 30.143024, 26.651089>,  <25.482527, 29.752356, 26.778635>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.106604, 30.143024, 26.651089> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.968523, 29.999264, 26.304295>,  <25.885674, 29.913008, 26.096218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.968523, 29.999264, 26.304295>,  <26.106604, 30.143024, 26.651089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.968523, 29.999264, 26.304295> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000999, 0.923632, -0.383279,
		0.938528, -0.133175, -0.318482,
		-0.345203, -0.359400, -0.866987,
		25.864962, 29.891443, 26.044199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.532667, 30.405676, 26.139946>,  <26.106604, 30.143024, 26.651089>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.532667, 30.405676, 26.139946> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.205437, 30.297318, 25.937019>,  <26.009098, 30.232302, 25.815264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.205437, 30.297318, 25.937019>,  <26.532667, 30.405676, 26.139946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.205437, 30.297318, 25.937019> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103744, 0.798135, -0.593480,
		0.565678, -0.538142, -0.624830,
		-0.818075, -0.270897, -0.507316,
		25.960014, 30.216049, 25.784824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.637722, 30.500332, 25.450026>,  <26.532667, 30.405676, 26.139946>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.637722, 30.500332, 25.450026> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.238810, 30.473438, 25.437984>,  <25.999462, 30.457302, 25.430759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.238810, 30.473438, 25.437984>,  <26.637722, 30.500332, 25.450026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.238810, 30.473438, 25.437984> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033111, 0.774157, -0.632127,
		0.065805, -0.629413, -0.774280,
		-0.997283, -0.067235, -0.030103,
		25.939625, 30.453268, 25.428953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.503336, 30.406279, 24.722498>,  <26.637722, 30.500332, 25.450026>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.503336, 30.406279, 24.722498> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.183081, 30.550007, 24.914276>,  <25.990929, 30.636244, 25.029343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.183081, 30.550007, 24.914276>,  <26.503336, 30.406279, 24.722498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.183081, 30.550007, 24.914276> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001072, 0.801069, -0.598571,
		-0.599150, -0.478724, -0.641750,
		-0.800636, 0.359322, 0.479447,
		25.942890, 30.657804, 25.058109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.157202, 30.806759, 24.151604>,  <26.503336, 30.406279, 24.722498>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.157202, 30.806759, 24.151604> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.990728, 30.926819, 24.494930>,  <25.890844, 30.998856, 24.700926>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.990728, 30.926819, 24.494930>,  <26.157202, 30.806759, 24.151604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.990728, 30.926819, 24.494930> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304006, 0.843696, -0.442444,
		-0.856956, -0.445070, -0.259884,
		-0.416181, 0.300149, 0.858314,
		25.865873, 31.016863, 24.752424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.482233, 31.136614, 24.034040>,  <26.157202, 30.806759, 24.151604>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.482233, 31.136614, 24.034040> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.592741, 31.287621, 24.387573>,  <25.659046, 31.378225, 24.599693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.592741, 31.287621, 24.387573>,  <25.482233, 31.136614, 24.034040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.592741, 31.287621, 24.387573> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061518, 0.924682, -0.375738,
		-0.959110, 0.049433, 0.278685,
		0.276269, 0.377519, 0.883830,
		25.675621, 31.400877, 24.652721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.894802, 31.560322, 24.242760>,  <25.482233, 31.136614, 24.034040>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.894802, 31.560322, 24.242760> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.240391, 31.672955, 24.409740>,  <25.447744, 31.740534, 24.509928>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.240391, 31.672955, 24.409740>,  <24.894802, 31.560322, 24.242760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.240391, 31.672955, 24.409740> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190654, 0.950238, -0.246373,
		-0.466051, 0.133271, 0.874663,
		0.863972, 0.281581, 0.417450,
		25.499582, 31.757429, 24.534975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.815615, 32.251949, 24.545706>,  <24.894802, 31.560322, 24.242760>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.815615, 32.251949, 24.545706> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.203037, 32.194138, 24.464706>,  <25.435492, 32.159451, 24.416107>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.203037, 32.194138, 24.464706>,  <24.815615, 32.251949, 24.545706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.203037, 32.194138, 24.464706> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009532, 0.834909, -0.550305,
		0.248603, 0.531072, 0.810036,
		0.968558, -0.144529, -0.202499,
		25.493605, 32.150780, 24.403957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.755526, 32.993313, 24.648731>,  <24.815615, 32.251949, 24.545706>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.755526, 32.993313, 24.648731> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.122225, 32.985832, 24.808342>,  <25.342245, 32.981342, 24.904108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.122225, 32.985832, 24.808342>,  <24.755526, 32.993313, 24.648731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.122225, 32.985832, 24.808342> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201623, -0.883994, 0.421786,
		0.344848, -0.467125, -0.814171,
		0.916749, -0.018704, 0.399027,
		25.397249, 32.980221, 24.928049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.213533, 33.637089, 24.496658>,  <24.755526, 32.993313, 24.648731>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.213533, 33.637089, 24.496658> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.097122, 33.828304, 24.828148>,  <24.027275, 33.943031, 25.027042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.097122, 33.828304, 24.828148>,  <24.213533, 33.637089, 24.496658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.097122, 33.828304, 24.828148> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709148, -0.473662, 0.522257,
		0.642193, 0.739680, -0.201150,
		-0.291026, 0.478035, 0.828725,
		24.009815, 33.971714, 25.076765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.851828, 33.929928, 24.789028>,  <24.213533, 33.637089, 24.496658>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.851828, 33.929928, 24.789028> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.591190, 33.930923, 25.092453>,  <24.434809, 33.931519, 25.274508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.591190, 33.930923, 25.092453>,  <24.851828, 33.929928, 24.789028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.591190, 33.930923, 25.092453> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729052, -0.274183, 0.627142,
		0.209546, 0.961674, 0.176843,
		-0.651593, 0.002487, 0.758564,
		24.395712, 33.931671, 25.320023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.162041, 34.248619, 25.319897>,  <24.851828, 33.929928, 24.789028>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.162041, 34.248619, 25.319897> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.887018, 34.025040, 25.505302>,  <24.722004, 33.890892, 25.616545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.887018, 34.025040, 25.505302>,  <25.162041, 34.248619, 25.319897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.887018, 34.025040, 25.505302> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707310, -0.371141, 0.601636,
		-0.164255, 0.741506, 0.650530,
		-0.687556, -0.558948, 0.463513,
		24.680752, 33.857357, 25.644356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.117525, 34.472210, 26.046082>,  <25.162041, 34.248619, 25.319897>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.117525, 34.472210, 26.046082> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.984299, 34.095062, 26.049435>,  <24.904362, 33.868774, 26.051447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.984299, 34.095062, 26.049435>,  <25.117525, 34.472210, 26.046082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.984299, 34.095062, 26.049435> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734271, -0.253784, 0.629634,
		-0.591533, 0.215867, 0.776847,
		-0.333068, -0.942865, 0.008383,
		24.884378, 33.812202, 26.051950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.290945, 34.160618, 26.715984>,  <25.117525, 34.472210, 26.046082>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.290945, 34.160618, 26.715984> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.250801, 33.833462, 26.489365>,  <25.226715, 33.637169, 26.353394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.250801, 33.833462, 26.489365>,  <25.290945, 34.160618, 26.715984>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.250801, 33.833462, 26.489365> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598085, -0.504653, 0.622592,
		-0.795125, -0.276363, 0.539816,
		-0.100358, -0.817893, -0.566550,
		25.220694, 33.588093, 26.319399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.159117, 33.662285, 27.155392>,  <25.290945, 34.160618, 26.715984>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.159117, 33.662285, 27.155392> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.247362, 33.454643, 26.825092>,  <25.300308, 33.330059, 26.626913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.247362, 33.454643, 26.825092>,  <25.159117, 33.662285, 27.155392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.247362, 33.454643, 26.825092> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474858, -0.682335, 0.555814,
		-0.851963, -0.514732, 0.095970,
		0.220611, -0.519105, -0.825748,
		25.313545, 33.298912, 26.577368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.989672, 33.015724, 27.437376>,  <25.159117, 33.662285, 27.155392>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.989672, 33.015724, 27.437376> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.242617, 32.950779, 27.134388>,  <25.394382, 32.911812, 26.952595>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.242617, 32.950779, 27.134388>,  <24.989672, 33.015724, 27.437376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.242617, 32.950779, 27.134388> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448020, -0.721029, 0.528578,
		-0.631980, -0.673613, -0.383207,
		0.632360, -0.162366, -0.757468,
		25.432325, 32.902069, 26.907148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.939087, 32.275105, 27.416082>,  <24.989672, 33.015724, 27.437376>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.939087, 32.275105, 27.416082> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.257631, 32.374958, 27.195721>,  <25.448757, 32.434868, 27.063503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.257631, 32.374958, 27.195721>,  <24.939087, 32.275105, 27.416082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.257631, 32.374958, 27.195721> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520719, -0.746327, 0.414545,
		-0.307672, -0.616994, -0.724332,
		0.796360, 0.249630, -0.550904,
		25.496540, 32.449848, 27.030449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.111689, 31.666910, 27.032293>,  <24.939087, 32.275105, 27.416082>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.111689, 31.666910, 27.032293> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.445045, 31.884785, 27.069756>,  <25.645060, 32.015511, 27.092234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.445045, 31.884785, 27.069756>,  <25.111689, 31.666910, 27.032293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.445045, 31.884785, 27.069756> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497384, -0.813046, 0.302598,
		0.240969, -0.205600, -0.948505,
		0.833392, 0.544688, 0.093657,
		25.695063, 32.048191, 27.097853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.638628, 31.269609, 26.820227>,  <25.111689, 31.666910, 27.032293>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.638628, 31.269609, 26.820227> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.862392, 31.548817, 26.999035>,  <25.996651, 31.716341, 27.106319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.862392, 31.548817, 26.999035>,  <25.638628, 31.269609, 26.820227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.862392, 31.548817, 26.999035> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591763, -0.713953, 0.374284,
		0.580409, 0.055151, -0.812456,
		0.559413, 0.698019, 0.447021,
		26.030216, 31.758223, 27.133141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.322275, 31.198454, 26.578081>,  <25.638628, 31.269609, 26.820227>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.322275, 31.198454, 26.578081> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.327814, 31.356503, 26.945492>,  <26.331137, 31.451332, 27.165937>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.327814, 31.356503, 26.945492>,  <26.322275, 31.198454, 26.578081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.327814, 31.356503, 26.945492> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632191, -0.715166, 0.298113,
		0.774688, 0.576555, -0.259696,
		0.013847, 0.395122, 0.918524,
		26.331968, 31.475039, 27.221048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.026672, 30.990173, 26.743845>,  <26.322275, 31.198454, 26.578081>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.026672, 30.990173, 26.743845> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.875029, 31.129940, 27.086582>,  <26.784042, 31.213800, 27.292225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.875029, 31.129940, 27.086582>,  <27.026672, 30.990173, 26.743845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.875029, 31.129940, 27.086582> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567792, -0.643323, 0.513563,
		0.730676, 0.681207, 0.045493,
		-0.379109, 0.349418, 0.856845,
		26.761295, 31.234766, 27.343636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.596231, 30.975754, 27.286974>,  <27.026672, 30.990173, 26.743845>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.596231, 30.975754, 27.286974> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.242504, 30.970188, 27.473644>,  <27.030268, 30.966848, 27.585648>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.242504, 30.970188, 27.473644>,  <27.596231, 30.975754, 27.286974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.242504, 30.970188, 27.473644> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290860, -0.798307, 0.527358,
		0.365214, 0.602089, 0.710005,
		-0.884319, -0.013913, 0.466677,
		26.977209, 30.966015, 27.613647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.773491, 30.736641, 28.051449>,  <27.596231, 30.975754, 27.286974>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.773491, 30.736641, 28.051449> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.382561, 30.679409, 27.989010>,  <27.148003, 30.645069, 27.951546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.382561, 30.679409, 27.989010>,  <27.773491, 30.736641, 28.051449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.382561, 30.679409, 27.989010> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052124, -0.877047, 0.477568,
		-0.205237, 0.458602, 0.864617,
		-0.977323, -0.143081, -0.156098,
		27.089363, 30.636484, 27.942181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.633663, 31.187548, 28.751579>,  <27.773491, 30.736641, 28.051449>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.633663, 31.187548, 28.751579> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.853327, 31.447697, 28.961510>,  <27.985125, 31.603786, 29.087467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.853327, 31.447697, 28.961510>,  <27.633663, 31.187548, 28.751579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.853327, 31.447697, 28.961510> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117135, 0.561895, -0.818873,
		-0.827470, 0.511165, 0.232388,
		0.549157, 0.650372, 0.524826,
		28.018074, 31.642809, 29.118958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.523067, 31.841196, 28.417208>,  <27.633663, 31.187548, 28.751579>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.523067, 31.841196, 28.417208> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.851059, 31.921078, 28.631779>,  <28.047853, 31.969007, 28.760521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.851059, 31.921078, 28.631779>,  <27.523067, 31.841196, 28.417208>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.851059, 31.921078, 28.631779> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265939, 0.696958, -0.665978,
		-0.506866, 0.688744, 0.518381,
		0.819977, 0.199704, 0.536429,
		28.097052, 31.980989, 28.792707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.638969, 32.521767, 28.613523>,  <27.523067, 31.841196, 28.417208>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.638969, 32.521767, 28.613523> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.993044, 32.341949, 28.565586>,  <28.205488, 32.234058, 28.536823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.993044, 32.341949, 28.565586>,  <27.638969, 32.521767, 28.613523>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.993044, 32.341949, 28.565586> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213270, 0.621017, -0.754224,
		0.413479, 0.642068, 0.645588,
		0.885184, -0.449540, -0.119843,
		28.258598, 32.207088, 28.529633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.003952, 33.076736, 28.319786>,  <27.638969, 32.521767, 28.613523>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.003952, 33.076736, 28.319786> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.271807, 32.782204, 28.281002>,  <28.432520, 32.605484, 28.257732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.271807, 32.782204, 28.281002>,  <28.003952, 33.076736, 28.319786>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.271807, 32.782204, 28.281002> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312881, 0.398093, -0.862338,
		0.673566, 0.547117, 0.496962,
		0.669638, -0.736332, -0.096959,
		28.472698, 32.561306, 28.251915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.679159, 33.452507, 28.264681>,  <28.003952, 33.076736, 28.319786>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.679159, 33.452507, 28.264681> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.701902, 33.080704, 28.118919>,  <28.715549, 32.857624, 28.031464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.701902, 33.080704, 28.118919>,  <28.679159, 33.452507, 28.264681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.701902, 33.080704, 28.118919> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351446, 0.360265, -0.864115,
		0.934480, -0.078934, 0.347156,
		0.056860, -0.929504, -0.364402,
		28.718960, 32.801853, 28.009600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.398291, 33.343655, 28.021076>,  <28.679159, 33.452507, 28.264681>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.398291, 33.343655, 28.021076> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.169558, 33.084564, 27.819698>,  <29.032318, 32.929111, 27.698872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.169558, 33.084564, 27.819698>,  <29.398291, 33.343655, 28.021076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.169558, 33.084564, 27.819698> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274537, 0.427205, -0.861467,
		0.773070, -0.630829, -0.066464,
		-0.571832, -0.647728, -0.503445,
		28.998009, 32.890247, 27.668665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.795073, 33.258316, 27.403145>,  <29.398291, 33.343655, 28.021076>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.795073, 33.258316, 27.403145> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.438852, 33.102901, 27.308521>,  <29.225121, 33.009651, 27.251747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.438852, 33.102901, 27.308521>,  <29.795073, 33.258316, 27.403145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.438852, 33.102901, 27.308521> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158314, 0.222795, -0.961925,
		0.426447, -0.894093, -0.136899,
		-0.890550, -0.388537, -0.236557,
		29.171686, 32.986340, 27.237555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.843508, 32.702412, 26.888735>,  <29.795073, 33.258316, 27.403145>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.843508, 32.702412, 26.888735> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.470118, 32.842522, 26.857941>,  <29.246082, 32.926590, 26.839464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.470118, 32.842522, 26.857941>,  <29.843508, 32.702412, 26.888735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.470118, 32.842522, 26.857941> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152535, 0.193497, -0.969171,
		-0.324582, -0.916442, -0.234055,
		-0.933477, 0.350277, -0.076984,
		29.190075, 32.947605, 26.834845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.575859, 32.307842, 26.364481>,  <29.843508, 32.702412, 26.888735>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.575859, 32.307842, 26.364481> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.334612, 32.625782, 26.391216>,  <29.189863, 32.816544, 26.407257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.334612, 32.625782, 26.391216>,  <29.575859, 32.307842, 26.364481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.334612, 32.625782, 26.391216> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221234, 0.247199, -0.943371,
		-0.766359, -0.554175, -0.324937,
		-0.603117, 0.794848, 0.066840,
		29.153677, 32.864235, 26.411268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.154037, 32.255718, 25.731003>,  <29.575859, 32.307842, 26.364481>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.154037, 32.255718, 25.731003> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.149990, 32.633484, 25.862446>,  <29.147562, 32.860142, 25.941311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.149990, 32.633484, 25.862446>,  <29.154037, 32.255718, 25.731003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.149990, 32.633484, 25.862446> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248843, 0.320663, -0.913921,
		-0.968491, 0.072524, -0.238255,
		-0.010118, 0.944413, 0.328606,
		29.146955, 32.916809, 25.961027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.947815, 32.623013, 25.133699>,  <29.154037, 32.255718, 25.731003>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.947815, 32.623013, 25.133699> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.087641, 32.924709, 25.356026>,  <29.171537, 33.105728, 25.489422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.087641, 32.924709, 25.356026>,  <28.947815, 32.623013, 25.133699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.087641, 32.924709, 25.356026> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208457, 0.515759, -0.830987,
		-0.913427, 0.406348, 0.023066,
		0.349566, 0.754238, 0.555814,
		29.192511, 33.150982, 25.522770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.612213, 33.211967, 24.906368>,  <28.947815, 32.623013, 25.133699>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.612213, 33.211967, 24.906368> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.973185, 33.296844, 25.056351>,  <29.189768, 33.347771, 25.146339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.973185, 33.296844, 25.056351>,  <28.612213, 33.211967, 24.906368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.973185, 33.296844, 25.056351> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271235, 0.396365, -0.877113,
		-0.334740, 0.893234, 0.300136,
		0.902430, 0.212197, 0.374956,
		29.243914, 33.360504, 25.168837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<26.570782, 29.736982, 32.312988> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.963600, 29.707245, 32.243637>,  <27.199291, 29.689402, 32.202026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.963600, 29.707245, 32.243637>,  <26.570782, 29.736982, 32.312988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.963600, 29.707245, 32.243637> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081402, 0.662083, -0.744997,
		0.170176, 0.745734, 0.644144,
		0.982046, -0.074346, -0.173375,
		27.258213, 29.684940, 32.191624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.797342, 30.402113, 32.404144>,  <26.570782, 29.736982, 32.312988>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.797342, 30.402113, 32.404144> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.065187, 30.208530, 32.178791>,  <27.225895, 30.092381, 32.043579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.065187, 30.208530, 32.178791>,  <26.797342, 30.402113, 32.404144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.065187, 30.208530, 32.178791> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037719, 0.779734, -0.624973,
		0.741752, 0.397240, 0.540374,
		0.669613, -0.483957, -0.563386,
		27.266071, 30.063343, 32.009773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.371601, 30.853750, 32.227665>,  <26.797342, 30.402113, 32.404144>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.371601, 30.853750, 32.227665> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.433521, 30.586426, 31.936626>,  <27.470673, 30.426031, 31.762003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.433521, 30.586426, 31.936626>,  <27.371601, 30.853750, 32.227665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.433521, 30.586426, 31.936626> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304773, 0.732857, -0.608304,
		0.939761, -0.127587, 0.317129,
		0.154799, -0.668313, -0.727596,
		27.479961, 30.385931, 31.718348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.847019, 31.137907, 31.788021>,  <27.371601, 30.853750, 32.227665>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.847019, 31.137907, 31.788021> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.712446, 30.846180, 31.549725>,  <27.631702, 30.671143, 31.406748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.712446, 30.846180, 31.549725>,  <27.847019, 31.137907, 31.788021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.712446, 30.846180, 31.549725> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251190, 0.540195, -0.803176,
		0.907588, -0.419859, 0.001459,
		-0.336433, -0.729320, -0.595739,
		27.611517, 30.627384, 31.371002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.382656, 30.944330, 31.422920>,  <27.847019, 31.137907, 31.788021>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.382656, 30.944330, 31.422920> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.062408, 30.838806, 31.207733>,  <27.870258, 30.775492, 31.078621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.062408, 30.838806, 31.207733>,  <28.382656, 30.944330, 31.422920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.062408, 30.838806, 31.207733> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346076, 0.529338, -0.774618,
		0.489115, -0.806355, -0.332503,
		-0.800623, -0.263806, -0.537967,
		27.822222, 30.759663, 31.046343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.652502, 30.695993, 30.835342>,  <28.382656, 30.944330, 31.422920>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.652502, 30.695993, 30.835342> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.275217, 30.778831, 30.731449>,  <28.048845, 30.828535, 30.669113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.275217, 30.778831, 30.731449>,  <28.652502, 30.695993, 30.835342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.275217, 30.778831, 30.731449> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331159, 0.524678, -0.784249,
		-0.026138, -0.825726, -0.563465,
		-0.943213, 0.207095, -0.259732,
		27.992252, 30.840960, 30.653530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.631006, 30.458847, 30.232492>,  <28.652502, 30.695993, 30.835342>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.631006, 30.458847, 30.232492> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.324160, 30.712669, 30.194820>,  <28.140051, 30.864964, 30.172216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.324160, 30.712669, 30.194820>,  <28.631006, 30.458847, 30.232492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.324160, 30.712669, 30.194820> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456461, 0.436768, -0.775162,
		-0.450750, -0.637629, -0.624703,
		-0.767117, 0.634557, -0.094179,
		28.094025, 30.903036, 30.166567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.431057, 30.564480, 29.531897>,  <28.631006, 30.458847, 30.232492>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.431057, 30.564480, 29.531897> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.252985, 30.886292, 29.689148>,  <28.146141, 31.079378, 29.783499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.252985, 30.886292, 29.689148>,  <28.431057, 30.564480, 29.531897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.252985, 30.886292, 29.689148> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178183, 0.509846, -0.841610,
		-0.877534, -0.304619, -0.370326,
		-0.445180, 0.804527, 0.393129,
		28.119431, 31.127649, 29.807087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.192429, 30.791464, 28.953009>,  <28.431057, 30.564480, 29.531897>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.192429, 30.791464, 28.953009> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.187712, 31.106255, 29.199757>,  <28.184881, 31.295130, 29.347805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.187712, 31.106255, 29.199757>,  <28.192429, 30.791464, 28.953009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.187712, 31.106255, 29.199757> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031655, 0.616896, -0.786408,
		-0.999429, 0.010252, -0.032187,
		-0.011794, 0.786978, 0.616869,
		28.184174, 31.342348, 29.384817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.487717, 30.440115, 28.777447>,  <28.192429, 30.791464, 28.953009>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.487717, 30.440115, 28.777447> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.223843, 30.344666, 28.492386>,  <27.065517, 30.287395, 28.321348>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.223843, 30.344666, 28.492386>,  <27.487717, 30.440115, 28.777447>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.223843, 30.344666, 28.492386> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025124, -0.954726, 0.296423,
		-0.751123, 0.177641, 0.635813,
		-0.659684, -0.238624, -0.712654,
		27.025938, 30.273079, 28.278589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.120647, 30.021797, 29.184004>,  <27.487717, 30.440115, 28.777447>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.120647, 30.021797, 29.184004> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.027828, 29.950630, 28.801487>,  <26.972136, 29.907930, 28.571976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.027828, 29.950630, 28.801487>,  <27.120647, 30.021797, 29.184004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.027828, 29.950630, 28.801487> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137284, -0.967298, 0.213279,
		-0.962967, 0.180775, 0.200037,
		-0.232050, -0.177919, -0.956294,
		26.958214, 29.897255, 28.514599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.611734, 29.620211, 29.324921>,  <27.120647, 30.021797, 29.184004>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.611734, 29.620211, 29.324921> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.693283, 29.539604, 28.941708>,  <26.742212, 29.491240, 28.711781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.693283, 29.539604, 28.941708>,  <26.611734, 29.620211, 29.324921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.693283, 29.539604, 28.941708> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011348, -0.978033, 0.208140,
		-0.978933, -0.053304, -0.197100,
		0.203865, -0.201518, -0.958034,
		26.754444, 29.479149, 28.654297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.085098, 29.229546, 28.995152>,  <26.611734, 29.620211, 29.324921>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.085098, 29.229546, 28.995152> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.428215, 29.169182, 28.798615>,  <26.634085, 29.132963, 28.680693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.428215, 29.169182, 28.798615>,  <26.085098, 29.229546, 28.995152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.428215, 29.169182, 28.798615> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024925, -0.967017, 0.253489,
		-0.513390, -0.205195, -0.833262,
		0.857794, -0.150908, -0.491342,
		26.685553, 29.123909, 28.651213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.071167, 28.537523, 28.575363>,  <26.085098, 29.229546, 28.995152>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.071167, 28.537523, 28.575363> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.447659, 28.647316, 28.654099>,  <26.673553, 28.713192, 28.701340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.447659, 28.647316, 28.654099>,  <26.071167, 28.537523, 28.575363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.447659, 28.647316, 28.654099> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206457, -0.928754, 0.307882,
		0.267325, -0.249149, -0.930840,
		0.941230, 0.274483, 0.196840,
		26.730028, 28.729660, 28.713150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.493546, 27.964828, 28.338106>,  <26.071167, 28.537523, 28.575363>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.493546, 27.964828, 28.338106> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.712976, 28.159290, 28.610199>,  <26.844635, 28.275967, 28.773455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.712976, 28.159290, 28.610199>,  <26.493546, 27.964828, 28.338106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.712976, 28.159290, 28.610199> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252654, -0.871931, 0.419406,
		0.797012, -0.058214, -0.601151,
		0.548578, 0.486155, 0.680232,
		26.877550, 28.305138, 28.814268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.028803, 27.545113, 28.388258>,  <26.493546, 27.964828, 28.338106>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.028803, 27.545113, 28.388258> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.017221, 27.750183, 28.731495>,  <27.010273, 27.873226, 28.937437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.017221, 27.750183, 28.731495>,  <27.028803, 27.545113, 28.388258>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.017221, 27.750183, 28.731495> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252065, -0.826965, 0.502586,
		0.967277, 0.230846, -0.105285,
		-0.028953, 0.512679, 0.858092,
		27.008535, 27.903986, 28.988922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.456417, 27.124447, 28.800144>,  <27.028803, 27.545113, 28.388258>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.456417, 27.124447, 28.800144> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.318762, 27.382427, 29.073086>,  <27.236168, 27.537216, 29.236851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.318762, 27.382427, 29.073086>,  <27.456417, 27.124447, 28.800144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.318762, 27.382427, 29.073086> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111134, -0.693654, 0.711684,
		0.932319, 0.320750, 0.167036,
		-0.344138, 0.644953, 0.682353,
		27.215521, 27.575912, 29.277792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.898415, 27.073782, 29.304199>,  <27.456417, 27.124447, 28.800144>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.898415, 27.073782, 29.304199> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.547817, 27.208889, 29.441410>,  <27.337458, 27.289953, 29.523737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.547817, 27.208889, 29.441410>,  <27.898415, 27.073782, 29.304199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.547817, 27.208889, 29.441410> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018018, -0.735065, 0.677757,
		0.481073, 0.587871, 0.650367,
		-0.876495, 0.337769, 0.343027,
		27.284868, 27.310219, 29.544319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.911835, 27.009642, 30.097555>,  <27.898415, 27.073782, 29.304199>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.911835, 27.009642, 30.097555> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.521669, 27.031170, 30.012070>,  <27.287571, 27.044086, 29.960779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.521669, 27.031170, 30.012070>,  <27.911835, 27.009642, 30.097555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.521669, 27.031170, 30.012070> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192912, -0.677385, 0.709884,
		-0.106559, 0.733657, 0.671112,
		-0.975413, 0.053821, -0.213713,
		27.229046, 27.047316, 29.947956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.648445, 27.133265, 30.736490>,  <27.911835, 27.009642, 30.097555>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.648445, 27.133265, 30.736490> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.369038, 26.983356, 30.492649>,  <27.201393, 26.893412, 30.346344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.369038, 26.983356, 30.492649>,  <27.648445, 27.133265, 30.736490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.369038, 26.983356, 30.492649> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387763, -0.517741, 0.762617,
		-0.601423, 0.769085, 0.216330,
		-0.698520, -0.374770, -0.609604,
		27.159481, 26.870926, 30.309769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.091509, 27.171131, 31.216536>,  <27.648445, 27.133265, 30.736490>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.091509, 27.171131, 31.216536> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.983671, 26.925491, 30.919834>,  <26.918968, 26.778107, 30.741814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.983671, 26.925491, 30.919834>,  <27.091509, 27.171131, 31.216536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.983671, 26.925491, 30.919834> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519590, -0.555763, 0.648963,
		-0.810769, 0.560364, -0.169251,
		-0.269592, -0.614100, -0.741755,
		26.902794, 26.741261, 30.697308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.438908, 27.053572, 31.359064>,  <27.091509, 27.171131, 31.216536>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.438908, 27.053572, 31.359064> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.564022, 26.756256, 31.122528>,  <26.639090, 26.577866, 30.980606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.564022, 26.756256, 31.122528>,  <26.438908, 27.053572, 31.359064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.564022, 26.756256, 31.122528> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508497, -0.656887, 0.556714,
		-0.802245, 0.126565, -0.583425,
		0.312784, -0.743291, -0.591342,
		26.657858, 26.533268, 30.945126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.928352, 26.586517, 31.340837>,  <26.438908, 27.053572, 31.359064>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.928352, 26.586517, 31.340837> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.231180, 26.361889, 31.207279>,  <26.412876, 26.227112, 31.127144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.231180, 26.361889, 31.207279>,  <25.928352, 26.586517, 31.340837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.231180, 26.361889, 31.207279> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369250, -0.789390, 0.490427,
		-0.538983, -0.247996, -0.804982,
		0.757068, -0.561571, -0.333896,
		26.458300, 26.193417, 31.107111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.642471, 24.055296, 31.018616> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.427502, 24.373173, 31.131496>,  <32.298519, 24.563898, 31.199224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.427502, 24.373173, 31.131496>,  <32.642471, 24.055296, 31.018616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.427502, 24.373173, 31.131496> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034469, 0.313655, -0.948911,
		-0.842605, -0.519698, -0.141174,
		-0.537428, 0.794691, 0.282201,
		32.266273, 24.611580, 31.216156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.076023, 24.053936, 30.493191>,  <32.642471, 24.055296, 31.018616>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.076023, 24.053936, 30.493191> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.053581, 24.414906, 30.664062>,  <32.040115, 24.631487, 30.766584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.053581, 24.414906, 30.664062>,  <32.076023, 24.053936, 30.493191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.053581, 24.414906, 30.664062> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178597, 0.411881, -0.893564,
		-0.982322, -0.126424, 0.138063,
		-0.056103, 0.902425, 0.427178,
		32.036751, 24.685633, 30.792215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.539223, 24.477140, 30.088764>,  <32.076023, 24.053936, 30.493191>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.539223, 24.477140, 30.088764> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.778215, 24.727764, 30.288940>,  <31.921612, 24.878138, 30.409046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.778215, 24.727764, 30.288940>,  <31.539223, 24.477140, 30.088764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.778215, 24.727764, 30.288940> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027532, 0.607685, -0.793701,
		-0.801410, 0.488000, 0.345830,
		0.597481, 0.626559, 0.500440,
		31.957460, 24.915731, 30.439072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.097473, 25.091259, 30.165789>,  <31.539223, 24.477140, 30.088764>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.097473, 25.091259, 30.165789> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.481630, 25.201611, 30.181488>,  <31.712124, 25.267822, 30.190907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.481630, 25.201611, 30.181488>,  <31.097473, 25.091259, 30.165789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.481630, 25.201611, 30.181488> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161640, 0.666267, -0.727984,
		-0.226985, 0.692806, 0.684469,
		0.960391, 0.275879, 0.039247,
		31.769747, 25.284374, 30.193262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.045519, 25.779160, 30.044243>,  <31.097473, 25.091259, 30.165789>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.045519, 25.779160, 30.044243> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.422169, 25.678265, 29.955048>,  <31.648159, 25.617727, 29.901531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.422169, 25.678265, 29.955048>,  <31.045519, 25.779160, 30.044243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.422169, 25.678265, 29.955048> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039593, 0.574775, -0.817353,
		0.334333, 0.778467, 0.531235,
		0.941623, -0.252235, -0.222989,
		31.704655, 25.602594, 29.888151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.400017, 26.417364, 29.813370>,  <31.045519, 25.779160, 30.044243>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.400017, 26.417364, 29.813370> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.634241, 26.122574, 29.678322>,  <31.774776, 25.945700, 29.597294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.634241, 26.122574, 29.678322>,  <31.400017, 26.417364, 29.813370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.634241, 26.122574, 29.678322> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227598, 0.549206, -0.804097,
		0.778022, 0.394006, 0.489327,
		0.585560, -0.736975, -0.337619,
		31.809910, 25.901482, 29.577036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.952950, 26.727549, 29.663893>,  <31.400017, 26.417364, 29.813370>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.952950, 26.727549, 29.663893> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.966784, 26.391666, 29.447117>,  <31.975084, 26.190136, 29.317051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.966784, 26.391666, 29.447117>,  <31.952950, 26.727549, 29.663893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.966784, 26.391666, 29.447117> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075251, 0.542911, -0.836412,
		0.996565, -0.011852, 0.081966,
		0.034587, -0.839707, -0.541937,
		31.977160, 26.139755, 29.284536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.506172, 26.765345, 29.175556>,  <31.952950, 26.727549, 29.663893>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.506172, 26.765345, 29.175556> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.273727, 26.478237, 29.022129>,  <32.134262, 26.305973, 28.930073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.273727, 26.478237, 29.022129>,  <32.506172, 26.765345, 29.175556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.273727, 26.478237, 29.022129> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037289, 0.494302, -0.868490,
		0.812972, -0.490383, -0.314008,
		-0.581108, -0.717767, -0.383568,
		32.099396, 26.262907, 28.907059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.806419, 26.450317, 28.582439>,  <32.506172, 26.765345, 29.175556>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.806419, 26.450317, 28.582439> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.421364, 26.357151, 28.527195>,  <32.190331, 26.301250, 28.494049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.421364, 26.357151, 28.527195>,  <32.806419, 26.450317, 28.582439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.421364, 26.357151, 28.527195> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008257, 0.484547, -0.874726,
		0.270658, -0.843186, -0.464522,
		-0.962640, -0.232916, -0.138109,
		32.132572, 26.287275, 28.485762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.708153, 26.280714, 27.826935>,  <32.806419, 26.450317, 28.582439>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.708153, 26.280714, 27.826935> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.343719, 26.374088, 27.962837>,  <32.125061, 26.430113, 28.044378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.343719, 26.374088, 27.962837>,  <32.708153, 26.280714, 27.826935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.343719, 26.374088, 27.962837> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197843, 0.475454, -0.857206,
		-0.361640, -0.848205, -0.386995,
		-0.911084, 0.233436, 0.339755,
		32.070393, 26.444118, 28.064764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.318195, 26.128109, 27.250952>,  <32.708153, 26.280714, 27.826935>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.318195, 26.128109, 27.250952> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.115776, 26.387638, 27.478264>,  <31.994324, 26.543356, 27.614651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.115776, 26.387638, 27.478264>,  <32.318195, 26.128109, 27.250952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.115776, 26.387638, 27.478264> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098816, 0.610922, -0.785500,
		-0.856824, -0.453658, -0.245044,
		-0.506051, 0.648821, 0.568281,
		31.963961, 26.582285, 27.648748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.838747, 26.488512, 26.767864>,  <32.318195, 26.128109, 27.250952>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.838747, 26.488512, 26.767864> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.813810, 26.737000, 27.080326>,  <31.798849, 26.886091, 27.267803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.813810, 26.737000, 27.080326>,  <31.838747, 26.488512, 26.767864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.813810, 26.737000, 27.080326> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183162, 0.762263, -0.620812,
		-0.981104, -0.181780, 0.066263,
		-0.062342, 0.621218, 0.781154,
		31.795107, 26.923365, 27.314672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.244614, 26.896606, 26.611277>,  <31.838747, 26.488512, 26.767864>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.244614, 26.896606, 26.611277> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.442101, 27.102322, 26.891777>,  <31.560593, 27.225750, 27.060078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.442101, 27.102322, 26.891777>,  <31.244614, 26.896606, 26.611277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.442101, 27.102322, 26.891777> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086830, 0.831509, -0.548683,
		-0.865276, 0.210005, 0.455186,
		0.493718, 0.514286, 0.701250,
		31.590216, 27.256607, 27.102152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.921303, 27.596712, 26.663004>,  <31.244614, 26.896606, 26.611277>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.921303, 27.596712, 26.663004> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.295740, 27.626057, 26.800610>,  <31.520403, 27.643663, 26.883173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.295740, 27.626057, 26.800610>,  <30.921303, 27.596712, 26.663004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.295740, 27.626057, 26.800610> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153145, 0.795451, -0.586348,
		-0.316662, 0.601561, 0.733382,
		0.936094, 0.073360, 0.344016,
		31.576569, 27.648066, 26.903814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.356310, 27.898087, 26.900608>,  <30.921303, 27.596712, 26.663004>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.356310, 27.898087, 26.900608> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.037374, 27.727169, 26.730118>,  <29.846012, 27.624619, 26.627823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.037374, 27.727169, 26.730118>,  <30.356310, 27.898087, 26.900608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.037374, 27.727169, 26.730118> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010625, -0.696175, 0.717794,
		-0.603437, 0.576854, 0.550548,
		-0.797339, -0.427294, -0.426227,
		29.798172, 27.598980, 26.602249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.980246, 27.601324, 27.439018>,  <30.356310, 27.898087, 26.900608>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.980246, 27.601324, 27.439018> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.819056, 27.422020, 27.119850>,  <29.722342, 27.314438, 26.928350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.819056, 27.422020, 27.119850>,  <29.980246, 27.601324, 27.439018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.819056, 27.422020, 27.119850> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043150, -0.861565, 0.505809,
		-0.914193, 0.238259, 0.327847,
		-0.402975, -0.448261, -0.797918,
		29.698164, 27.287542, 26.880474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.268049, 27.403513, 27.547184>,  <29.980246, 27.601324, 27.439018>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.268049, 27.403513, 27.547184> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.423565, 27.165764, 27.265598>,  <29.516874, 27.023113, 27.096647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.423565, 27.165764, 27.265598>,  <29.268049, 27.403513, 27.547184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.423565, 27.165764, 27.265598> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098026, -0.786424, 0.609859,
		-0.916098, -0.168098, -0.364016,
		0.388787, -0.594374, -0.703963,
		29.540201, 26.987452, 27.054409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.803911, 26.867289, 27.461576>,  <29.268049, 27.403513, 27.547184>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.803911, 26.867289, 27.461576> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.094788, 26.670006, 27.270603>,  <29.269314, 26.551636, 27.156019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.094788, 26.670006, 27.270603>,  <28.803911, 26.867289, 27.461576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.094788, 26.670006, 27.270603> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220503, -0.826501, 0.517952,
		-0.650055, -0.271375, -0.709778,
		0.727191, -0.493205, -0.477432,
		29.312944, 26.522043, 27.127373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.445478, 26.260923, 27.362616>,  <28.803911, 26.867289, 27.461576>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.445478, 26.260923, 27.362616> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.834721, 26.189987, 27.303810>,  <29.068266, 26.147427, 27.268528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.834721, 26.189987, 27.303810>,  <28.445478, 26.260923, 27.362616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.834721, 26.189987, 27.303810> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091408, -0.883092, 0.460209,
		-0.211438, -0.434395, -0.875554,
		0.973108, -0.177338, -0.147012,
		29.126654, 26.136786, 27.259706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.493198, 25.657326, 27.215282>,  <28.445478, 26.260923, 27.362616>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.493198, 25.657326, 27.215282> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.855637, 25.749180, 27.357414>,  <29.073099, 25.804293, 27.442694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.855637, 25.749180, 27.357414>,  <28.493198, 25.657326, 27.215282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.855637, 25.749180, 27.357414> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006622, -0.832076, 0.554622,
		0.423020, -0.504894, -0.752420,
		0.906096, 0.229634, 0.355328,
		29.127466, 25.818069, 27.464012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.828501, 24.993031, 27.349806>,  <28.493198, 25.657326, 27.215282>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.828501, 24.993031, 27.349806> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.038054, 25.262539, 27.558258>,  <29.163786, 25.424244, 27.683331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.038054, 25.262539, 27.558258>,  <28.828501, 24.993031, 27.349806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.038054, 25.262539, 27.558258> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109929, -0.660171, 0.743028,
		0.844668, -0.331971, -0.419918,
		0.523882, 0.673773, 0.521132,
		29.195217, 25.464670, 27.714598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.502851, 24.701674, 27.539251>,  <28.828501, 24.993031, 27.349806>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.502851, 24.701674, 27.539251> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.396124, 24.973835, 27.812267>,  <29.332087, 25.137131, 27.976076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.396124, 24.973835, 27.812267>,  <29.502851, 24.701674, 27.539251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.396124, 24.973835, 27.812267> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169710, -0.663977, 0.728240,
		0.948686, 0.310143, 0.061691,
		-0.266820, 0.680402, 0.682540,
		29.316078, 25.177956, 28.017029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.963650, 24.571043, 28.084114>,  <29.502851, 24.701674, 27.539251>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.963650, 24.571043, 28.084114> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.646183, 24.765514, 28.230385>,  <29.455702, 24.882196, 28.318148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.646183, 24.765514, 28.230385>,  <29.963650, 24.571043, 28.084114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.646183, 24.765514, 28.230385> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042109, -0.643559, 0.764237,
		0.606891, 0.591153, 0.531246,
		-0.793669, 0.486178, 0.365678,
		29.408083, 24.911367, 28.340088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.162498, 24.693863, 28.773182>,  <29.963650, 24.571043, 28.084114>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.162498, 24.693863, 28.773182> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.763266, 24.717106, 28.764675>,  <29.523726, 24.731052, 28.759571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.763266, 24.717106, 28.764675>,  <30.162498, 24.693863, 28.773182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.763266, 24.717106, 28.764675> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049962, -0.554047, 0.830985,
		0.036504, 0.830455, 0.555888,
		-0.998084, 0.058108, -0.021266,
		29.463840, 24.734539, 28.758295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.807615, 25.030310, 29.374857>,  <30.162498, 24.693863, 28.773182>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.807615, 25.030310, 29.374857> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.574066, 24.749561, 29.211655>,  <29.433937, 24.581112, 29.113733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.574066, 24.749561, 29.211655>,  <29.807615, 25.030310, 29.374857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.574066, 24.749561, 29.211655> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144398, -0.404769, 0.902946,
		-0.798899, 0.586123, 0.134986,
		-0.583875, -0.701871, -0.408004,
		29.398903, 24.539000, 29.089254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.277853, 24.914764, 29.870068>,  <29.807615, 25.030310, 29.374857>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.277853, 24.914764, 29.870068> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.258986, 24.587940, 29.640221>,  <29.247665, 24.391846, 29.502312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.258986, 24.587940, 29.640221>,  <29.277853, 24.914764, 29.870068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.258986, 24.587940, 29.640221> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151063, -0.562807, 0.812667,
		-0.987398, 0.125137, -0.096880,
		-0.047170, -0.817061, -0.574618,
		29.244835, 24.342821, 29.467834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.686510, 24.655050, 30.020514>,  <29.277853, 24.914764, 29.870068>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.686510, 24.655050, 30.020514> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.926714, 24.370224, 29.874992>,  <29.070837, 24.199329, 29.787680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.926714, 24.370224, 29.874992>,  <28.686510, 24.655050, 30.020514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.926714, 24.370224, 29.874992> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093069, -0.514120, 0.852654,
		-0.794183, -0.478168, -0.375005,
		0.600509, -0.712065, -0.363803,
		29.106867, 24.156605, 29.765852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.349268, 23.989799, 30.071949>,  <28.686510, 24.655050, 30.020514>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.349268, 23.989799, 30.071949> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.743412, 23.930641, 30.038036>,  <28.979898, 23.895145, 30.017689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.743412, 23.930641, 30.038036>,  <28.349268, 23.989799, 30.071949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.743412, 23.930641, 30.038036> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014370, -0.423500, 0.905782,
		-0.169864, -0.893742, -0.415176,
		0.985363, -0.147894, -0.084780,
		29.039021, 23.886272, 30.012602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.857313, 23.750553, 29.598848>,  <28.349268, 23.989799, 30.071949>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.857313, 23.750553, 29.598848> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.467840, 23.660118, 29.610340>,  <27.234156, 23.605858, 29.617235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.467840, 23.660118, 29.610340>,  <27.857313, 23.750553, 29.598848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.467840, 23.660118, 29.610340> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140741, 0.497349, -0.856059,
		0.179256, -0.837573, -0.516080,
		-0.973684, -0.226087, 0.028728,
		27.175735, 23.592293, 29.618959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.765808, 23.623636, 28.971832>,  <27.857313, 23.750553, 29.598848>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.765808, 23.623636, 28.971832> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.403530, 23.698780, 29.123844>,  <27.186163, 23.743866, 29.215052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.403530, 23.698780, 29.123844>,  <27.765808, 23.623636, 28.971832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.403530, 23.698780, 29.123844> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247500, 0.493492, -0.833792,
		-0.344176, -0.849220, -0.400460,
		-0.905697, 0.187858, 0.380030,
		27.131821, 23.755136, 29.237854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.413721, 23.518847, 28.356693>,  <27.765808, 23.623636, 28.971832>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.413721, 23.518847, 28.356693> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.183447, 23.716537, 28.617256>,  <27.045282, 23.835152, 28.773594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.183447, 23.716537, 28.617256>,  <27.413721, 23.518847, 28.356693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.183447, 23.716537, 28.617256> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305838, 0.608683, -0.732099,
		-0.758322, -0.620681, -0.199255,
		-0.575683, 0.494227, 0.651405,
		27.010742, 23.864805, 28.812677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.739052, 23.635275, 27.956707>,  <27.413721, 23.518847, 28.356693>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.739052, 23.635275, 27.956707> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.764450, 23.919495, 28.237019>,  <26.779688, 24.090027, 28.405205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.764450, 23.919495, 28.237019>,  <26.739052, 23.635275, 27.956707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.764450, 23.919495, 28.237019> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139196, 0.701635, -0.698808,
		-0.988227, -0.053175, 0.143455,
		0.063494, 0.710549, 0.700777,
		26.783499, 24.132660, 28.447252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.115360, 24.092793, 27.861099>,  <26.739052, 23.635275, 27.956707>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.115360, 24.092793, 27.861099> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.381903, 24.305145, 28.070530>,  <26.541828, 24.432556, 28.196188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.381903, 24.305145, 28.070530>,  <26.115360, 24.092793, 27.861099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.381903, 24.305145, 28.070530> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108149, 0.763582, -0.636590,
		-0.737747, 0.367573, 0.566233,
		0.666358, 0.530880, 0.523578,
		26.581810, 24.464409, 28.227604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.754257, 24.665800, 27.893827>,  <26.115360, 24.092793, 27.861099>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.754257, 24.665800, 27.893827> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.127039, 24.780968, 27.981976>,  <26.350708, 24.850067, 28.034864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.127039, 24.780968, 27.981976>,  <25.754257, 24.665800, 27.893827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.127039, 24.780968, 27.981976> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191992, 0.907468, -0.373685,
		-0.307568, 0.305949, 0.900998,
		0.931955, 0.287918, 0.220369,
		26.406626, 24.867344, 28.048086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.704838, 25.290491, 28.202505>,  <25.754257, 24.665800, 27.893827>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.704838, 25.290491, 28.202505> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.092754, 25.281826, 28.105312>,  <26.325504, 25.276627, 28.046997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.092754, 25.281826, 28.105312>,  <25.704838, 25.290491, 28.202505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.092754, 25.281826, 28.105312> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076264, 0.919201, -0.386333,
		0.231717, 0.393192, 0.889779,
		0.969789, -0.021661, -0.242981,
		26.383692, 25.275328, 28.032417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.932667, 25.881622, 28.449444>,  <25.704838, 25.290491, 28.202505>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.932667, 25.881622, 28.449444> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.228409, 25.792000, 28.195465>,  <26.405853, 25.738226, 28.043077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.228409, 25.792000, 28.195465>,  <25.932667, 25.881622, 28.449444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.228409, 25.792000, 28.195465> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024644, 0.951383, -0.307023,
		0.672866, 0.211351, 0.708930,
		0.739353, -0.224056, -0.634945,
		26.450214, 25.724783, 28.004982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.343866, 26.425838, 28.533846>,  <25.932667, 25.881622, 28.449444>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.343866, 26.425838, 28.533846> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.453794, 26.260056, 28.186813>,  <26.519753, 26.160585, 27.978594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.453794, 26.260056, 28.186813>,  <26.343866, 26.425838, 28.533846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.453794, 26.260056, 28.186813> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069205, 0.908512, -0.412088,
		0.959001, 0.053210, 0.278362,
		0.274822, -0.414457, -0.867582,
		26.536242, 26.135719, 27.926538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.927174, 26.800360, 28.296440>,  <26.343866, 26.425838, 28.533846>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.927174, 26.800360, 28.296440> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.761028, 26.652390, 27.964024>,  <26.661341, 26.563608, 27.764574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.761028, 26.652390, 27.964024>,  <26.927174, 26.800360, 28.296440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.761028, 26.652390, 27.964024> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008667, 0.915145, -0.403031,
		0.909615, -0.160201, -0.383323,
		-0.415363, -0.369926, -0.831041,
		26.636419, 26.541412, 27.714712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.217699, 27.131815, 27.693459>,  <26.927174, 26.800360, 28.296440>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.217699, 27.131815, 27.693459> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.866928, 26.974236, 27.583328>,  <26.656466, 26.879688, 27.517250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.866928, 26.974236, 27.583328>,  <27.217699, 27.131815, 27.693459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.866928, 26.974236, 27.583328> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196371, 0.816529, -0.542880,
		0.438677, -0.422000, -0.793397,
		-0.876927, -0.393949, -0.275324,
		26.603849, 26.856050, 27.500731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.201643, 27.189550, 26.929047>,  <27.217699, 27.131815, 27.693459>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.201643, 27.189550, 26.929047> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.818670, 27.143768, 27.035046>,  <26.588886, 27.116299, 27.098644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.818670, 27.143768, 27.035046>,  <27.201643, 27.189550, 26.929047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.818670, 27.143768, 27.035046> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241008, 0.822209, -0.515642,
		-0.158865, -0.557559, -0.814795,
		-0.957432, -0.114454, 0.264997,
		26.531441, 27.109432, 27.114544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.858183, 27.367455, 26.253611>,  <27.201643, 27.189550, 26.929047>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.858183, 27.367455, 26.253611> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.582090, 27.386421, 26.542423>,  <26.416435, 27.397802, 26.715712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.582090, 27.386421, 26.542423>,  <26.858183, 27.367455, 26.253611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.582090, 27.386421, 26.542423> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492320, 0.700502, -0.516641,
		-0.530284, -0.712073, -0.460164,
		-0.690232, 0.047419, 0.722033,
		26.375021, 27.400646, 26.759033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.216734, 27.325056, 25.895046>,  <26.858183, 27.367455, 26.253611>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.216734, 27.325056, 25.895046> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.095154, 27.477962, 26.244099>,  <26.022205, 27.569706, 26.453531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.095154, 27.477962, 26.244099>,  <26.216734, 27.325056, 25.895046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.095154, 27.477962, 26.244099> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485179, 0.726177, -0.487102,
		-0.819888, -0.571437, -0.035255,
		-0.303950, 0.382264, 0.872633,
		26.003969, 27.592642, 26.505888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<41.547752, 26.102438, 29.491489> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.897591, 26.188972, 29.317921>,  <42.107494, 26.240892, 29.213779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.897591, 26.188972, 29.317921>,  <41.547752, 26.102438, 29.491489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.897591, 26.188972, 29.317921> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462540, 0.640658, -0.612873,
		0.145408, 0.736720, 0.660379,
		0.874593, 0.216335, -0.433920,
		42.159969, 26.253874, 29.187744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.506744, 26.778921, 29.345881>,  <41.547752, 26.102438, 29.491489>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.506744, 26.778921, 29.345881> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.809975, 26.670929, 29.108414>,  <41.991913, 26.606134, 28.965935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.809975, 26.670929, 29.108414>,  <41.506744, 26.778921, 29.345881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.809975, 26.670929, 29.108414> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169470, 0.797473, -0.579066,
		0.629768, 0.539582, 0.558788,
		0.758071, -0.269979, -0.593666,
		42.037395, 26.589935, 28.930313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.869686, 27.483025, 29.133438>,  <41.506744, 26.778921, 29.345881>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.869686, 27.483025, 29.133438> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.017551, 27.229225, 28.861919>,  <42.106270, 27.076946, 28.699009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.017551, 27.229225, 28.861919>,  <41.869686, 27.483025, 29.133438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.017551, 27.229225, 28.861919> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073148, 0.748146, -0.659490,
		0.926284, 0.194134, 0.322972,
		0.369659, -0.634499, -0.678795,
		42.128448, 27.038876, 28.658281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.368538, 27.872917, 28.792833>,  <41.869686, 27.483025, 29.133438>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.368538, 27.872917, 28.792833> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.267586, 27.579170, 28.540798>,  <42.207016, 27.402922, 28.389578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.267586, 27.579170, 28.540798>,  <42.368538, 27.872917, 28.792833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.267586, 27.579170, 28.540798> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261386, 0.678697, -0.686329,
		0.931656, -0.008517, -0.363241,
		-0.252376, -0.734369, -0.630086,
		42.191872, 27.358860, 28.351772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.691532, 28.001373, 28.208141>,  <42.368538, 27.872917, 28.792833>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.691532, 28.001373, 28.208141> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.379314, 27.774799, 28.102390>,  <42.191982, 27.638855, 28.038939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.379314, 27.774799, 28.102390>,  <42.691532, 28.001373, 28.208141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.379314, 27.774799, 28.102390> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216290, 0.641549, -0.735958,
		0.586484, -0.517268, -0.623274,
		-0.780548, -0.566436, -0.264378,
		42.145149, 27.604868, 28.023077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.667885, 28.044550, 27.467310>,  <42.691532, 28.001373, 28.208141>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.667885, 28.044550, 27.467310> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.301495, 27.906044, 27.548397>,  <42.081661, 27.822941, 27.597050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.301495, 27.906044, 27.548397>,  <42.667885, 28.044550, 27.467310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.301495, 27.906044, 27.548397> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355010, 0.463947, -0.811616,
		0.186983, -0.815386, -0.547890,
		-0.915972, -0.346264, 0.202720,
		42.026703, 27.802164, 27.609213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.401112, 27.991058, 26.893421>,  <42.667885, 28.044550, 27.467310>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.401112, 27.991058, 26.893421> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.065872, 27.994492, 27.111603>,  <41.864727, 27.996552, 27.242512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.065872, 27.994492, 27.111603>,  <42.401112, 27.991058, 26.893421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.065872, 27.994492, 27.111603> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384764, 0.699506, -0.602203,
		-0.386715, -0.714575, -0.582952,
		-0.838098, 0.008582, 0.545453,
		41.814442, 27.997066, 27.275238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.870277, 28.016205, 26.433739>,  <42.401112, 27.991058, 26.893421>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.870277, 28.016205, 26.433739> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.724136, 28.143799, 26.783543>,  <41.636452, 28.220356, 26.993425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.724136, 28.143799, 26.783543>,  <41.870277, 28.016205, 26.433739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.724136, 28.143799, 26.783543> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310419, 0.843930, -0.437518,
		-0.877587, -0.431312, -0.209311,
		-0.365351, 0.318986, 0.874509,
		41.614532, 28.239494, 27.045895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.225018, 28.131271, 26.270374>,  <41.870277, 28.016205, 26.433739>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.225018, 28.131271, 26.270374> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.279179, 28.337132, 26.609032>,  <41.311676, 28.460648, 26.812225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.279179, 28.337132, 26.609032>,  <41.225018, 28.131271, 26.270374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.279179, 28.337132, 26.609032> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320724, 0.831270, -0.454012,
		-0.937445, -0.210065, 0.277615,
		0.135401, 0.514648, 0.846642,
		41.319798, 28.491526, 26.863024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.606136, 28.508787, 26.330397>,  <41.225018, 28.131271, 26.270374>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.606136, 28.508787, 26.330397> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.867069, 28.693752, 26.570610>,  <41.023628, 28.804731, 26.714737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.867069, 28.693752, 26.570610>,  <40.606136, 28.508787, 26.330397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.867069, 28.693752, 26.570610> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309241, 0.885760, -0.346122,
		-0.691978, 0.040077, 0.720806,
		0.652332, 0.462411, 0.600532,
		41.062767, 28.832476, 26.750771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.184074, 28.999804, 26.638531>,  <40.606136, 28.508787, 26.330397>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.184074, 28.999804, 26.638531> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.565567, 29.117290, 26.664246>,  <40.794460, 29.187782, 26.679674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.565567, 29.117290, 26.664246>,  <40.184074, 28.999804, 26.638531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.565567, 29.117290, 26.664246> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254420, 0.902306, -0.348014,
		-0.160225, 0.315555, 0.935282,
		0.953728, 0.293716, 0.064289,
		40.851685, 29.205404, 26.683533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.145275, 29.692080, 26.946712>,  <40.184074, 28.999804, 26.638531>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.145275, 29.692080, 26.946712> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.499020, 29.648655, 26.765114>,  <40.711266, 29.622601, 26.656155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.499020, 29.648655, 26.765114>,  <40.145275, 29.692080, 26.946712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.499020, 29.648655, 26.765114> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178619, 0.819858, -0.543992,
		0.431271, 0.562179, 0.705662,
		0.884364, -0.108563, -0.453997,
		40.764328, 29.616085, 26.628914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.501804, 30.271473, 27.138479>,  <40.145275, 29.692080, 26.946712>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.501804, 30.271473, 27.138479> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.681477, 30.146229, 26.803768>,  <40.789280, 30.071083, 26.602942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.681477, 30.146229, 26.803768>,  <40.501804, 30.271473, 27.138479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.681477, 30.146229, 26.803768> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051902, 0.925854, -0.374301,
		0.891932, 0.211559, 0.399624,
		0.449180, -0.313110, -0.836779,
		40.816231, 30.052296, 26.552734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.923279, 30.802231, 26.906469>,  <40.501804, 30.271473, 27.138479>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.923279, 30.802231, 26.906469> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.897846, 30.595039, 26.565258>,  <40.882587, 30.470724, 26.360531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.897846, 30.595039, 26.565258>,  <40.923279, 30.802231, 26.906469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.897846, 30.595039, 26.565258> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137272, 0.851170, -0.506622,
		0.988491, 0.084887, -0.125220,
		-0.063578, -0.517980, -0.853026,
		40.878773, 30.439646, 26.309351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.374428, 31.159475, 26.321362>,  <40.923279, 30.802231, 26.906469>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.374428, 31.159475, 26.321362> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.138165, 30.923485, 26.101158>,  <40.996407, 30.781891, 25.969036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.138165, 30.923485, 26.101158>,  <41.374428, 31.159475, 26.321362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.138165, 30.923485, 26.101158> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187552, 0.763919, -0.617457,
		0.784830, -0.261450, -0.561859,
		-0.590649, -0.589977, -0.550511,
		40.960968, 30.746492, 25.936007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.603619, 31.189651, 25.553234>,  <41.374428, 31.159475, 26.321362>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.603619, 31.189651, 25.553234> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.224258, 31.062885, 25.549210>,  <40.996643, 30.986826, 25.546795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.224258, 31.062885, 25.549210>,  <41.603619, 31.189651, 25.553234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.224258, 31.062885, 25.549210> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166150, 0.523743, -0.835516,
		0.270057, -0.790733, -0.549374,
		-0.948401, -0.316915, -0.010060,
		40.939739, 30.967810, 25.546192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.496922, 31.231232, 24.956856>,  <41.603619, 31.189651, 25.553234>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.496922, 31.231232, 24.956856> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.117249, 31.178795, 25.071301>,  <40.889442, 31.147333, 25.139967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.117249, 31.178795, 25.071301>,  <41.496922, 31.231232, 24.956856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.117249, 31.178795, 25.071301> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310239, 0.542518, -0.780658,
		-0.052882, -0.829753, -0.555620,
		-0.949187, -0.131092, 0.286111,
		40.832493, 31.139467, 25.157133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.087231, 31.141329, 24.401468>,  <41.496922, 31.231232, 24.956856>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.087231, 31.141329, 24.401468> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.813869, 31.240772, 24.676029>,  <40.649853, 31.300438, 24.840767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.813869, 31.240772, 24.676029>,  <41.087231, 31.141329, 24.401468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.813869, 31.240772, 24.676029> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578247, 0.389598, -0.716829,
		-0.445631, -0.886796, -0.122497,
		-0.683406, 0.248608, 0.686404,
		40.608849, 31.315355, 24.881950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.397549, 31.004910, 24.105780>,  <41.087231, 31.141329, 24.401468>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.397549, 31.004910, 24.105780> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.373291, 31.286259, 24.389072>,  <40.358738, 31.455069, 24.559048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.373291, 31.286259, 24.389072>,  <40.397549, 31.004910, 24.105780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.373291, 31.286259, 24.389072> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478500, 0.602209, -0.639048,
		-0.875991, -0.377642, 0.300043,
		-0.060643, 0.703371, 0.708231,
		40.355099, 31.497271, 24.601542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.767841, 31.131432, 24.194653>,  <40.397549, 31.004910, 24.105780>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.767841, 31.131432, 24.194653> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.933666, 31.473335, 24.319569>,  <40.033161, 31.678476, 24.394518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.933666, 31.473335, 24.319569>,  <39.767841, 31.131432, 24.194653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.933666, 31.473335, 24.319569> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535549, 0.506608, -0.675674,
		-0.735746, 0.112865, 0.667787,
		0.414566, 0.854757, 0.312290,
		40.058037, 31.729763, 24.413256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.251595, 31.528879, 24.480097>,  <39.767841, 31.131432, 24.194653>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.251595, 31.528879, 24.480097> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.527164, 31.802090, 24.383049>,  <39.692505, 31.966015, 24.324820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.527164, 31.802090, 24.383049>,  <39.251595, 31.528879, 24.480097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.527164, 31.802090, 24.383049> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667335, 0.467026, -0.580130,
		-0.282933, 0.561572, 0.777551,
		0.688921, 0.683025, -0.242620,
		39.733841, 32.006996, 24.310263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.702671, 31.620529, 24.988171>,  <39.251595, 31.528879, 24.480097>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.702671, 31.620529, 24.988171> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.327534, 31.703751, 25.099285>,  <38.102451, 31.753683, 25.165953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.327534, 31.703751, 25.099285>,  <38.702671, 31.620529, 24.988171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.327534, 31.703751, 25.099285> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242168, -0.181044, 0.953193,
		0.248608, 0.961216, 0.119407,
		-0.937843, 0.208055, 0.277785,
		38.046181, 31.766167, 25.182621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.719418, 32.145149, 25.502369>,  <38.702671, 31.620529, 24.988171>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.719418, 32.145149, 25.502369> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.383553, 31.930553, 25.536186>,  <38.182034, 31.801796, 25.556477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.383553, 31.930553, 25.536186>,  <38.719418, 32.145149, 25.502369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.383553, 31.930553, 25.536186> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149133, -0.078072, 0.985730,
		-0.522237, 0.840286, 0.145562,
		-0.839659, -0.536493, 0.084542,
		38.131653, 31.769606, 25.561548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.404499, 32.295097, 26.073124>,  <38.719418, 32.145149, 25.502369>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.404499, 32.295097, 26.073124> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.204773, 31.952454, 26.021126>,  <38.084938, 31.746868, 25.989927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.204773, 31.952454, 26.021126>,  <38.404499, 32.295097, 26.073124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.204773, 31.952454, 26.021126> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164965, -0.241288, 0.956330,
		-0.850568, 0.456070, 0.261791,
		-0.499320, -0.856610, -0.129996,
		38.054977, 31.695471, 25.982126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.067852, 32.162327, 26.688814>,  <38.404499, 32.295097, 26.073124>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.067852, 32.162327, 26.688814> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.092628, 31.808655, 26.503605>,  <38.107494, 31.596451, 26.392479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.092628, 31.808655, 26.503605>,  <38.067852, 32.162327, 26.688814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.092628, 31.808655, 26.503605> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261703, -0.433295, 0.862420,
		-0.963159, -0.174590, 0.204555,
		0.061937, -0.884180, -0.463022,
		38.111210, 31.543402, 26.364698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.886349, 31.686686, 27.277555>,  <38.067852, 32.162327, 26.688814>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.886349, 31.686686, 27.277555> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.044254, 31.464848, 26.984547>,  <38.138996, 31.331745, 26.808741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.044254, 31.464848, 26.984547>,  <37.886349, 31.686686, 27.277555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.044254, 31.464848, 26.984547> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146007, -0.749277, 0.645961,
		-0.907109, -0.361953, -0.214809,
		0.394759, -0.554594, -0.732524,
		38.162682, 31.298470, 26.764790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645119, 30.974096, 27.383308>,  <37.886349, 31.686686, 27.277555>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.645119, 30.974096, 27.383308> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.970448, 30.935406, 27.153824>,  <38.165646, 30.912191, 27.016132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.970448, 30.935406, 27.153824>,  <37.645119, 30.974096, 27.383308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.970448, 30.935406, 27.153824> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329669, -0.735892, 0.591424,
		-0.479396, -0.670155, -0.566632,
		0.813326, -0.096725, -0.573712,
		38.214443, 30.906387, 26.981710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.667110, 30.270500, 27.129921>,  <37.645119, 30.974096, 27.383308>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.667110, 30.270500, 27.129921> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.042862, 30.407368, 27.121063>,  <38.268314, 30.489489, 27.115749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.042862, 30.407368, 27.121063>,  <37.667110, 30.270500, 27.129921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.042862, 30.407368, 27.121063> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256555, -0.658551, 0.707453,
		0.227486, -0.670247, -0.706414,
		0.939378, 0.342169, -0.022144,
		38.324677, 30.510019, 27.114420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053310, 29.626144, 27.224918>,  <37.667110, 30.270500, 27.129921>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.053310, 29.626144, 27.224918> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.313183, 29.915722, 27.317711>,  <38.469109, 30.089468, 27.373386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.313183, 29.915722, 27.317711>,  <38.053310, 29.626144, 27.224918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.313183, 29.915722, 27.317711> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430229, -0.601727, 0.672925,
		0.626748, -0.337385, -0.702395,
		0.649685, 0.723944, 0.231979,
		38.508087, 30.132906, 27.387304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.783978, 29.408035, 27.108858>,  <38.053310, 29.626144, 27.224918>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.783978, 29.408035, 27.108858> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.794666, 29.700493, 27.381538>,  <38.801079, 29.875967, 27.545147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.794666, 29.700493, 27.381538>,  <38.783978, 29.408035, 27.108858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.794666, 29.700493, 27.381538> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504542, -0.598576, 0.622209,
		0.862973, 0.327318, -0.384890,
		0.026725, 0.731143, 0.681701,
		38.802685, 29.919836, 27.586048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.469570, 29.377554, 27.324982>,  <38.783978, 29.408035, 27.108858>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.469570, 29.377554, 27.324982> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.268284, 29.564430, 27.615776>,  <39.147511, 29.676556, 27.790253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.268284, 29.564430, 27.615776>,  <39.469570, 29.377554, 27.324982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.268284, 29.564430, 27.615776> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558602, -0.466014, 0.686145,
		0.659345, 0.751374, -0.026468,
		-0.503217, 0.467191, 0.726984,
		39.117317, 29.704588, 27.833872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.055489, 29.563925, 27.783602>,  <39.469570, 29.377554, 27.324982>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.055489, 29.563925, 27.783602> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.709671, 29.558262, 27.984547>,  <39.502182, 29.554865, 28.105114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.709671, 29.558262, 27.984547>,  <40.055489, 29.563925, 27.783602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.709671, 29.558262, 27.984547> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444016, -0.489747, 0.750332,
		0.235409, 0.871750, 0.429692,
		-0.864542, -0.014155, 0.502361,
		39.450310, 29.554016, 28.135256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.274261, 29.508820, 28.527433>,  <40.055489, 29.563925, 27.783602>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.274261, 29.508820, 28.527433> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.885628, 29.415386, 28.542736>,  <39.652447, 29.359325, 28.551918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.885628, 29.415386, 28.542736>,  <40.274261, 29.508820, 28.527433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.885628, 29.415386, 28.542736> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165156, -0.553228, 0.816493,
		-0.169554, 0.799610, 0.576086,
		-0.971584, -0.233584, 0.038259,
		39.594154, 29.345310, 28.554214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.980877, 29.679352, 29.217186>,  <40.274261, 29.508820, 28.527433>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.980877, 29.679352, 29.217186> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.735214, 29.393982, 29.082226>,  <39.587818, 29.222759, 29.001249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.735214, 29.393982, 29.082226>,  <39.980877, 29.679352, 29.217186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.735214, 29.393982, 29.082226> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283038, -0.598206, 0.749693,
		-0.736683, 0.364931, 0.569318,
		-0.614156, -0.713425, -0.337399,
		39.550968, 29.179955, 28.981007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.656067, 29.308735, 29.822371>,  <39.980877, 29.679352, 29.217186>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.656067, 29.308735, 29.822371> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.633217, 29.045380, 29.522167>,  <39.619507, 28.887367, 29.342045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.633217, 29.045380, 29.522167>,  <39.656067, 29.308735, 29.822371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.633217, 29.045380, 29.522167> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162981, -0.747801, 0.643607,
		-0.984974, -0.085554, 0.150021,
		-0.057122, -0.658387, -0.750509,
		39.616081, 28.847864, 29.297014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.060978, 28.850056, 29.963646>,  <39.656067, 29.308735, 29.822371>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.060978, 28.850056, 29.963646> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.293156, 28.654980, 29.702805>,  <39.432465, 28.537933, 29.546299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.293156, 28.654980, 29.702805>,  <39.060978, 28.850056, 29.963646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.293156, 28.654980, 29.702805> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001835, -0.801599, 0.597859,
		-0.814293, -0.345831, -0.466184,
		0.580451, -0.487688, -0.652102,
		39.467289, 28.508673, 29.507174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.818302, 28.123201, 29.915056>,  <39.060978, 28.850056, 29.963646>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.818302, 28.123201, 29.915056> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.185482, 28.085705, 29.760876>,  <39.405792, 28.063208, 29.668367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.185482, 28.085705, 29.760876>,  <38.818302, 28.123201, 29.915056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.185482, 28.085705, 29.760876> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116840, -0.864685, 0.488537,
		-0.379090, -0.493491, -0.782788,
		0.917954, -0.093739, -0.385453,
		39.460869, 28.057583, 29.645239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.919228, 27.374781, 29.688766>,  <38.818302, 28.123201, 29.915056>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.919228, 27.374781, 29.688766> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.292049, 27.512581, 29.733665>,  <39.515743, 27.595261, 29.760605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.292049, 27.512581, 29.733665>,  <38.919228, 27.374781, 29.688766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.292049, 27.512581, 29.733665> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258787, -0.849780, 0.459243,
		0.253595, -0.398990, -0.881191,
		0.932051, 0.344503, 0.112246,
		39.571663, 27.615932, 29.767340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.415863, 26.849558, 29.490839>,  <38.919228, 27.374781, 29.688766>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.415863, 26.849558, 29.490839> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.618946, 27.082645, 29.744663>,  <39.740795, 27.222498, 29.896957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.618946, 27.082645, 29.744663>,  <39.415863, 26.849558, 29.490839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.618946, 27.082645, 29.744663> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454601, -0.806870, 0.377225,
		0.731825, 0.096952, -0.674561,
		0.507710, 0.582719, 0.634562,
		39.771259, 27.257462, 29.935032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.202663, 26.500498, 29.568270>,  <39.415863, 26.849558, 29.490839>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.202663, 26.500498, 29.568270> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.180817, 26.756001, 29.875256>,  <40.167709, 26.909302, 30.059448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.180817, 26.756001, 29.875256>,  <40.202663, 26.500498, 29.568270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.180817, 26.756001, 29.875256> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559369, -0.617111, 0.553425,
		0.827117, 0.459524, -0.323597,
		-0.054617, 0.638758, 0.767467,
		40.164433, 26.947628, 30.105495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.908909, 26.748795, 29.853985>,  <40.202663, 26.500498, 29.568270>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.908909, 26.748795, 29.853985> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.637383, 26.748432, 30.147709>,  <40.474468, 26.748215, 30.323942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.637383, 26.748432, 30.147709>,  <40.908909, 26.748795, 29.853985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.637383, 26.748432, 30.147709> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602547, -0.572244, 0.556304,
		0.419699, 0.820083, 0.388995,
		-0.678815, -0.000908, 0.734309,
		40.433739, 26.748159, 30.368002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.143085, 27.078100, 30.445732>,  <40.908909, 26.748795, 29.853985>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.143085, 27.078100, 30.445732> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.867226, 26.821758, 30.580608>,  <40.701710, 26.667953, 30.661533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.867226, 26.821758, 30.580608>,  <41.143085, 27.078100, 30.445732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.867226, 26.821758, 30.580608> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667473, -0.381972, 0.639200,
		-0.280836, 0.665887, 0.691177,
		-0.689645, -0.640853, 0.337190,
		40.660332, 26.629503, 30.681765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<25.661840, 25.758095, 31.306580> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.060448, 25.738544, 31.279572>,  <26.299612, 25.726814, 31.263367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.060448, 25.738544, 31.279572>,  <25.661840, 25.758095, 31.306580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.060448, 25.738544, 31.279572> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007597, -0.753399, 0.657519,
		-0.083005, -0.655744, -0.750406,
		0.996520, -0.048876, -0.067518,
		26.359404, 25.723881, 31.259315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.828201, 25.058556, 31.128880>,  <25.661840, 25.758095, 31.306580>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.828201, 25.058556, 31.128880> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.171270, 25.184677, 31.291351>,  <26.377111, 25.260349, 31.388834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.171270, 25.184677, 31.291351>,  <25.828201, 25.058556, 31.128880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.171270, 25.184677, 31.291351> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052613, -0.731972, 0.679300,
		0.511499, -0.603987, -0.611203,
		0.857672, 0.315304, 0.406180,
		26.428572, 25.279268, 31.413206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.339981, 24.506254, 31.142767>,  <25.828201, 25.058556, 31.128880>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.339981, 24.506254, 31.142767> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.422506, 24.767921, 31.433834>,  <26.472021, 24.924921, 31.608475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.422506, 24.767921, 31.433834>,  <26.339981, 24.506254, 31.142767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.422506, 24.767921, 31.433834> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214751, -0.755808, 0.618576,
		0.954629, 0.028648, -0.296415,
		0.206312, 0.654167, 0.727668,
		26.484400, 24.964172, 31.652134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.813833, 24.143717, 31.467110>,  <26.339981, 24.506254, 31.142767>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.813833, 24.143717, 31.467110> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.725237, 24.439117, 31.721844>,  <26.672079, 24.616358, 31.874683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.725237, 24.439117, 31.721844>,  <26.813833, 24.143717, 31.467110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.725237, 24.439117, 31.721844> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141369, -0.621838, 0.770280,
		0.964861, 0.260639, 0.033330,
		-0.221491, 0.738502, 0.636834,
		26.658789, 24.660667, 31.912893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.476482, 24.109217, 32.083736>,  <26.813833, 24.143717, 31.467110>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.476482, 24.109217, 32.083736> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.116655, 24.237892, 32.201916>,  <26.900759, 24.315098, 32.272823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.116655, 24.237892, 32.201916>,  <27.476482, 24.109217, 32.083736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.116655, 24.237892, 32.201916> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089047, -0.527153, 0.845092,
		0.427605, 0.786528, 0.445565,
		-0.899569, 0.321689, 0.295451,
		26.846785, 24.334398, 32.290550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.518642, 24.183655, 32.723530>,  <27.476482, 24.109217, 32.083736>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.518642, 24.183655, 32.723530> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.120726, 24.206051, 32.689457>,  <26.881975, 24.219488, 32.669014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.120726, 24.206051, 32.689457>,  <27.518642, 24.183655, 32.723530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.120726, 24.206051, 32.689457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101868, -0.515212, 0.850987,
		0.003759, 0.855232, 0.518231,
		-0.994791, 0.055990, -0.085184,
		26.822289, 24.222847, 32.663902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.321220, 24.378708, 33.374340>,  <27.518642, 24.183655, 32.723530>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.321220, 24.378708, 33.374340> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.991379, 24.214783, 33.218353>,  <26.793474, 24.116426, 33.124760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.991379, 24.214783, 33.218353>,  <27.321220, 24.378708, 33.374340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.991379, 24.214783, 33.218353> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257224, -0.342346, 0.903678,
		-0.503845, 0.845488, 0.176887,
		-0.824606, -0.409814, -0.389970,
		26.743998, 24.091839, 33.101364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.740637, 24.576605, 33.823826>,  <27.321220, 24.378708, 33.374340>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.740637, 24.576605, 33.823826> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.637348, 24.242882, 33.628994>,  <26.575375, 24.042648, 33.512096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.637348, 24.242882, 33.628994>,  <26.740637, 24.576605, 33.823826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.637348, 24.242882, 33.628994> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144246, -0.465232, 0.873357,
		-0.955256, 0.295781, -0.000212,
		-0.258224, -0.834310, -0.487081,
		26.559881, 23.992588, 33.482868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.242678, 24.301155, 34.140930>,  <26.740637, 24.576605, 33.823826>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.242678, 24.301155, 34.140930> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.329847, 23.979145, 33.920223>,  <26.382149, 23.785940, 33.787800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.329847, 23.979145, 33.920223>,  <26.242678, 24.301155, 34.140930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.329847, 23.979145, 33.920223> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421947, -0.587502, 0.690508,
		-0.880040, 0.082339, -0.467708,
		0.217924, -0.805023, -0.551767,
		26.395224, 23.737638, 33.754692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.675478, 23.870729, 34.263683>,  <26.242678, 24.301155, 34.140930>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.675478, 23.870729, 34.263683> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.956779, 23.619366, 34.130695>,  <26.125561, 23.468548, 34.050903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.956779, 23.619366, 34.130695>,  <25.675478, 23.870729, 34.263683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.956779, 23.619366, 34.130695> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274765, -0.671556, 0.688125,
		-0.655694, -0.392577, -0.644940,
		0.703256, -0.628407, -0.332469,
		26.167755, 23.430843, 34.030952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.390789, 23.235928, 34.215839>,  <25.675478, 23.870729, 34.263683>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.390789, 23.235928, 34.215839> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.779036, 23.145985, 34.250114>,  <26.011984, 23.092018, 34.270679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.779036, 23.145985, 34.250114>,  <25.390789, 23.235928, 34.215839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.779036, 23.145985, 34.250114> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231406, -0.774558, 0.588651,
		-0.065990, -0.591184, -0.803833,
		0.970617, -0.224857, 0.085691,
		26.070221, 23.078527, 34.275822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.388031, 22.579422, 34.087864>,  <25.390789, 23.235928, 34.215839>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.388031, 22.579422, 34.087864> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.721626, 22.660511, 34.293140>,  <25.921783, 22.709164, 34.416306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.721626, 22.660511, 34.293140>,  <25.388031, 22.579422, 34.087864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.721626, 22.660511, 34.293140> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188523, -0.769411, 0.610299,
		0.518579, -0.605731, -0.603462,
		0.833988, 0.202722, 0.513194,
		25.971823, 22.721327, 34.447098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.821779, 22.028481, 34.004036>,  <25.388031, 22.579422, 34.087864>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.821779, 22.028481, 34.004036> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.847746, 22.231236, 34.347862>,  <25.863325, 22.352888, 34.554157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.847746, 22.231236, 34.347862>,  <25.821779, 22.028481, 34.004036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.847746, 22.231236, 34.347862> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211133, -0.834903, 0.508291,
		0.975299, -0.214478, 0.052822,
		0.064916, 0.506888, 0.859564,
		25.867220, 22.383303, 34.605732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.258171, 21.616045, 34.478840>,  <25.821779, 22.028481, 34.004036>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.258171, 21.616045, 34.478840> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.091488, 21.834850, 34.769253>,  <25.991478, 21.966133, 34.943501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.091488, 21.834850, 34.769253>,  <26.258171, 21.616045, 34.478840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.091488, 21.834850, 34.769253> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198845, -0.834193, 0.514376,
		0.887025, 0.069977, 0.456388,
		-0.416710, 0.547015, 0.726035,
		25.966475, 21.998955, 34.987064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.354145, 20.793859, 34.380222>,  <26.258171, 21.616045, 34.478840>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.354145, 20.793859, 34.380222> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.681280, 20.605053, 34.248562>,  <26.877562, 20.491768, 34.169567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.681280, 20.605053, 34.248562>,  <26.354145, 20.793859, 34.380222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.681280, 20.605053, 34.248562> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167281, 0.352279, -0.920824,
		0.550599, 0.808145, 0.209147,
		0.817838, -0.472018, -0.329152,
		26.926632, 20.463448, 34.149815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.606840, 21.251169, 33.981525>,  <26.354145, 20.793859, 34.380222>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.606840, 21.251169, 33.981525> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.763767, 20.904415, 33.858498>,  <26.857924, 20.696363, 33.784683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.763767, 20.904415, 33.858498>,  <26.606840, 21.251169, 33.981525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.763767, 20.904415, 33.858498> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040030, 0.350146, -0.935840,
		0.918958, 0.354835, 0.172070,
		0.392318, -0.866885, -0.307565,
		26.881462, 20.644350, 33.766228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.154524, 21.475958, 33.599403>,  <26.606840, 21.251169, 33.981525>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.154524, 21.475958, 33.599403> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.057299, 21.111824, 33.465412>,  <26.998964, 20.893343, 33.385017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.057299, 21.111824, 33.465412>,  <27.154524, 21.475958, 33.599403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.057299, 21.111824, 33.465412> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150168, 0.305859, -0.940159,
		0.958317, -0.278819, 0.062360,
		-0.243061, -0.910335, -0.334979,
		26.984381, 20.838724, 33.364918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.610914, 21.284264, 33.161884>,  <27.154524, 21.475958, 33.599403>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.610914, 21.284264, 33.161884> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.333546, 21.021545, 33.043369>,  <27.167124, 20.863914, 32.972260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.333546, 21.021545, 33.043369>,  <27.610914, 21.284264, 33.161884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.333546, 21.021545, 33.043369> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051456, 0.365020, -0.929577,
		0.718693, -0.659834, -0.219316,
		-0.693421, -0.656796, -0.296289,
		27.125519, 20.824507, 32.954483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.950083, 20.821161, 32.670849>,  <27.610914, 21.284264, 33.161884>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.950083, 20.821161, 32.670849> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.556095, 20.843987, 32.605640>,  <27.319702, 20.857681, 32.566513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.556095, 20.843987, 32.605640>,  <27.950083, 20.821161, 32.670849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.556095, 20.843987, 32.605640> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172646, 0.353651, -0.919306,
		0.005195, -0.933635, -0.358187,
		-0.984970, 0.057064, -0.163026,
		27.260605, 20.861105, 32.556732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.828558, 20.595087, 31.965065>,  <27.950083, 20.821161, 32.670849>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.828558, 20.595087, 31.965065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.489902, 20.783459, 32.064201>,  <27.286709, 20.896482, 32.123684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.489902, 20.783459, 32.064201>,  <27.828558, 20.595087, 31.965065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.489902, 20.783459, 32.064201> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027816, 0.504249, -0.863110,
		-0.531438, -0.723850, -0.440017,
		-0.846640, 0.470929, 0.247843,
		27.235910, 20.924738, 32.138554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.440863, 20.619284, 31.353907>,  <27.828558, 20.595087, 31.965065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.440863, 20.619284, 31.353907> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.275595, 20.905193, 31.579609>,  <27.176434, 21.076740, 31.715031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.275595, 20.905193, 31.579609>,  <27.440863, 20.619284, 31.353907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.275595, 20.905193, 31.579609> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193050, 0.536786, -0.821336,
		-0.889957, -0.448281, -0.083796,
		-0.413170, 0.714776, 0.564257,
		27.151644, 21.119627, 31.748886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.881508, 20.902298, 30.943710>,  <27.440863, 20.619284, 31.353907>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.881508, 20.902298, 30.943710> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.939468, 21.179642, 31.226059>,  <26.974245, 21.346048, 31.395468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.939468, 21.179642, 31.226059>,  <26.881508, 20.902298, 30.943710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.939468, 21.179642, 31.226059> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076683, 0.719126, -0.690636,
		-0.986470, 0.045944, 0.157370,
		0.144899, 0.693359, 0.705873,
		26.982939, 21.387650, 31.437820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.184071, 21.348387, 30.941370>,  <26.881508, 20.902298, 30.943710>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.184071, 21.348387, 30.941370> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.493429, 21.531849, 31.116409>,  <26.679045, 21.641926, 31.221434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.493429, 21.531849, 31.116409>,  <26.184071, 21.348387, 30.941370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.493429, 21.531849, 31.116409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047909, 0.730621, -0.681100,
		-0.632109, 0.505796, 0.587034,
		0.773397, 0.458654, 0.437600,
		26.725449, 21.669445, 31.247690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.905518, 22.021303, 30.877443>,  <26.184071, 21.348387, 30.941370>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.905518, 22.021303, 30.877443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.297680, 22.062557, 30.944572>,  <26.532978, 22.087309, 30.984850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.297680, 22.062557, 30.944572>,  <25.905518, 22.021303, 30.877443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.297680, 22.062557, 30.944572> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026867, 0.774002, -0.632613,
		-0.195141, 0.624727, 0.756066,
		0.980407, 0.103135, 0.167824,
		26.591803, 22.093498, 30.994919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.056084, 22.748358, 31.229103>,  <25.905518, 22.021303, 30.877443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.056084, 22.748358, 31.229103> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.384041, 22.615673, 31.042450>,  <26.580814, 22.536062, 30.930458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.384041, 22.615673, 31.042450>,  <26.056084, 22.748358, 31.229103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.384041, 22.615673, 31.042450> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015217, 0.827389, -0.561423,
		0.572318, 0.453205, 0.683416,
		0.819891, -0.331712, -0.466633,
		26.630009, 22.516159, 30.902460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.446096, 23.422451, 31.067932>,  <26.056084, 22.748358, 31.229103>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.446096, 23.422451, 31.067932> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.615082, 23.144695, 30.834919>,  <26.716473, 22.978041, 30.695110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.615082, 23.144695, 30.834919>,  <26.446096, 23.422451, 31.067932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.615082, 23.144695, 30.834919> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162801, 0.690385, -0.704887,
		0.891639, 0.202952, 0.404710,
		0.422464, -0.694391, -0.582533,
		26.741821, 22.936378, 30.660160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.112789, 23.654453, 30.854063>,  <26.446096, 23.422451, 31.067932>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.112789, 23.654453, 30.854063> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.014204, 23.378292, 30.582005>,  <26.955053, 23.212595, 30.418770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.014204, 23.378292, 30.582005>,  <27.112789, 23.654453, 30.854063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.014204, 23.378292, 30.582005> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166186, 0.661296, -0.731485,
		0.954797, -0.293316, -0.048251,
		-0.246464, -0.690401, -0.680148,
		26.940266, 23.171171, 30.377960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.688904, 23.571598, 30.403313>,  <27.112789, 23.654453, 30.854063>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.688904, 23.571598, 30.403313> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.359531, 23.479080, 30.196056>,  <27.161909, 23.423571, 30.071703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.359531, 23.479080, 30.196056>,  <27.688904, 23.571598, 30.403313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.359531, 23.479080, 30.196056> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255092, 0.664774, -0.702142,
		0.506845, -0.710338, -0.488394,
		-0.823430, -0.231292, -0.518139,
		27.112503, 23.409693, 30.040615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.406013, 23.344713, 30.475479>,  <27.688904, 23.571598, 30.403313>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.406013, 23.344713, 30.475479> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.795424, 23.424839, 30.431435>,  <29.029070, 23.472914, 30.405008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.795424, 23.424839, 30.431435>,  <28.406013, 23.344713, 30.475479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.795424, 23.424839, 30.431435> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191774, -0.453609, 0.870323,
		0.124392, -0.868397, -0.480014,
		0.973525, 0.200315, -0.110110,
		29.087481, 23.484934, 30.398401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.853701, 22.724253, 30.746532>,  <28.406013, 23.344713, 30.475479>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.853701, 22.724253, 30.746532> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.109550, 23.031521, 30.757801>,  <29.263062, 23.215881, 30.764563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.109550, 23.031521, 30.757801>,  <28.853701, 22.724253, 30.746532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.109550, 23.031521, 30.757801> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280060, -0.267012, 0.922101,
		0.715853, -0.581909, -0.385922,
		0.639625, 0.768170, 0.028172,
		29.301437, 23.261972, 30.766253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.444370, 22.470482, 30.870174>,  <28.853701, 22.724253, 30.746532>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.444370, 22.470482, 30.870174> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.458462, 22.850094, 30.995461>,  <29.466917, 23.077860, 31.070633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.458462, 22.850094, 30.995461>,  <29.444370, 22.470482, 30.870174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.458462, 22.850094, 30.995461> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300717, -0.308952, 0.902285,
		0.953062, 0.062404, -0.296273,
		0.035228, 0.949028, 0.313216,
		29.469030, 23.134802, 31.089426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.188963, 22.528130, 31.160185>,  <29.444370, 22.470482, 30.870174>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.188963, 22.528130, 31.160185> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.954720, 22.803043, 31.332092>,  <29.814173, 22.967991, 31.435238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.954720, 22.803043, 31.332092>,  <30.188963, 22.528130, 31.160185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.954720, 22.803043, 31.332092> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300812, -0.308071, 0.902554,
		0.752710, 0.657826, -0.026334,
		-0.585611, 0.687283, 0.429770,
		29.779036, 23.009228, 31.461023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.581974, 22.807875, 31.667292>,  <30.188963, 22.528130, 31.160185>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.581974, 22.807875, 31.667292> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.230551, 22.945435, 31.799881>,  <30.019697, 23.027969, 31.879435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.230551, 22.945435, 31.799881>,  <30.581974, 22.807875, 31.667292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.230551, 22.945435, 31.799881> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191149, -0.382837, 0.903824,
		0.437723, 0.857421, 0.270608,
		-0.878556, 0.343898, 0.331472,
		29.966984, 23.048603, 31.899323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.662405, 23.206362, 32.232407>,  <30.581974, 22.807875, 31.667292>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.662405, 23.206362, 32.232407> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.277374, 23.110741, 32.283470>,  <30.046356, 23.053368, 32.314106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.277374, 23.110741, 32.283470>,  <30.662405, 23.206362, 32.232407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.277374, 23.110741, 32.283470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184265, -0.231930, 0.955120,
		-0.198719, 0.942900, 0.267300,
		-0.962578, -0.239054, 0.127655,
		29.988602, 23.039024, 32.321766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.435980, 23.589344, 32.942383>,  <30.662405, 23.206362, 32.232407>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.435980, 23.589344, 32.942383> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.213516, 23.271652, 32.844494>,  <30.080038, 23.081038, 32.785759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.213516, 23.271652, 32.844494>,  <30.435980, 23.589344, 32.942383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.213516, 23.271652, 32.844494> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029685, -0.275296, 0.960901,
		-0.830547, 0.541677, 0.129531,
		-0.556157, -0.794228, -0.244726,
		30.046669, 23.033384, 32.771076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.558073, 23.845707, 33.663673>,  <30.435980, 23.589344, 32.942383>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.558073, 23.845707, 33.663673> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.936359, 23.853352, 33.793446>,  <31.163332, 23.857939, 33.871307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.936359, 23.853352, 33.793446>,  <30.558073, 23.845707, 33.663673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.936359, 23.853352, 33.793446> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283704, 0.438413, -0.852822,
		-0.158533, 0.898570, 0.409192,
		0.945716, 0.019111, 0.324431,
		31.220074, 23.859085, 33.890774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.785452, 24.531588, 33.519951>,  <30.558073, 23.845707, 33.663673>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.785452, 24.531588, 33.519951> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.114626, 24.306973, 33.554489>,  <31.312130, 24.172203, 33.575211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.114626, 24.306973, 33.554489>,  <30.785452, 24.531588, 33.519951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.114626, 24.306973, 33.554489> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414488, 0.489463, -0.767219,
		0.388559, 0.667159, 0.635547,
		0.822934, -0.561537, 0.086344,
		31.361506, 24.138512, 33.580391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.324785, 24.969269, 33.540215>,  <30.785452, 24.531588, 33.519951>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.324785, 24.969269, 33.540215> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.462868, 24.619568, 33.403679>,  <31.545717, 24.409748, 33.321758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.462868, 24.619568, 33.403679>,  <31.324785, 24.969269, 33.540215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.462868, 24.619568, 33.403679> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316834, 0.450904, -0.834447,
		0.883430, 0.179910, 0.432648,
		0.345208, -0.874253, -0.341340,
		31.566429, 24.357292, 33.301277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.862389, 25.131437, 33.263718>,  <31.324785, 24.969269, 33.540215>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.862389, 25.131437, 33.263718> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.825510, 24.773090, 33.089855>,  <31.803383, 24.558083, 32.985538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.825510, 24.773090, 33.089855>,  <31.862389, 25.131437, 33.263718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.825510, 24.773090, 33.089855> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383570, 0.370873, -0.845770,
		0.918898, -0.244698, 0.309434,
		-0.092198, -0.895866, -0.434653,
		31.797852, 24.504330, 32.959457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.459114, 24.974339, 32.788376>,  <31.862389, 25.131437, 33.263718>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.459114, 24.974339, 32.788376> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.196671, 24.723179, 32.620914>,  <32.039204, 24.572483, 32.520439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.196671, 24.723179, 32.620914>,  <32.459114, 24.974339, 32.788376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.196671, 24.723179, 32.620914> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358770, 0.228532, -0.905018,
		0.663935, -0.743987, 0.075330,
		-0.656106, -0.627899, -0.418651,
		31.999838, 24.534809, 32.495319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.928722, 24.634167, 32.348644>,  <32.459114, 24.974339, 32.788376>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.928722, 24.634167, 32.348644> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.548588, 24.607674, 32.227009>,  <32.320507, 24.591778, 32.154026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.548588, 24.607674, 32.227009>,  <32.928722, 24.634167, 32.348644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.548588, 24.607674, 32.227009> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285133, 0.206287, -0.936026,
		0.124724, -0.976247, -0.177158,
		-0.950338, -0.066231, -0.304090,
		32.263485, 24.587805, 32.135780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.963211, 24.425100, 31.608591>,  <32.928722, 24.634167, 32.348644>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.963211, 24.425100, 31.608591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.585239, 24.551689, 31.641956>,  <32.358456, 24.627644, 31.661976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.585239, 24.551689, 31.641956>,  <32.963211, 24.425100, 31.608591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.585239, 24.551689, 31.641956> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019398, 0.308574, -0.951002,
		-0.326706, -0.897010, -0.297719,
		-0.944927, 0.316473, 0.083413,
		32.301762, 24.646631, 31.666981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<28.040073, 24.506903, 36.234020> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.796803, 24.328682, 35.971233>,  <27.650841, 24.221748, 35.813560>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.796803, 24.328682, 35.971233>,  <28.040073, 24.506903, 36.234020>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.796803, 24.328682, 35.971233> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135185, 0.757396, -0.638809,
		0.782211, -0.477317, -0.400393,
		-0.608170, -0.445556, -0.656969,
		27.614349, 24.195017, 35.774143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.394953, 24.360662, 35.602600>,  <28.040073, 24.506903, 36.234020>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.394953, 24.360662, 35.602600> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.006310, 24.401047, 35.517010>,  <27.773125, 24.425278, 35.465656>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.006310, 24.401047, 35.517010>,  <28.394953, 24.360662, 35.602600>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.006310, 24.401047, 35.517010> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219094, 0.725340, -0.652595,
		0.089322, -0.680948, -0.726865,
		-0.971607, 0.100960, -0.213980,
		27.714827, 24.431335, 35.452816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.460779, 24.577177, 34.919968>,  <28.394953, 24.360662, 35.602600>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.460779, 24.577177, 34.919968> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.084724, 24.670750, 35.019100>,  <27.859091, 24.726892, 35.078579>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.084724, 24.670750, 35.019100>,  <28.460779, 24.577177, 34.919968>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.084724, 24.670750, 35.019100> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082376, 0.861625, -0.500815,
		-0.330691, -0.450420, -0.829316,
		-0.940137, 0.233931, 0.247828,
		27.802683, 24.740929, 35.093449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.252756, 24.964514, 34.343582>,  <28.460779, 24.577177, 34.919968>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.252756, 24.964514, 34.343582> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.989965, 25.052616, 34.631992>,  <27.832291, 25.105476, 34.805038>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.989965, 25.052616, 34.631992>,  <28.252756, 24.964514, 34.343582>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.989965, 25.052616, 34.631992> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036016, 0.946112, -0.321832,
		-0.753051, -0.237404, -0.613639,
		-0.656975, 0.220255, 0.721021,
		27.792873, 25.118692, 34.848297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.797972, 25.405594, 34.045868>,  <28.252756, 24.964514, 34.343582>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.797972, 25.405594, 34.045868> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.767229, 25.461479, 34.440750>,  <27.748783, 25.495010, 34.677681>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.767229, 25.461479, 34.440750>,  <27.797972, 25.405594, 34.045868>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.767229, 25.461479, 34.440750> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023140, 0.989617, -0.141857,
		-0.996774, -0.033746, -0.072826,
		-0.076856, 0.139714, 0.987205,
		27.744173, 25.503393, 34.736912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.175014, 25.837437, 34.188629>,  <27.797972, 25.405594, 34.045868>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.175014, 25.837437, 34.188629> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.433918, 25.887035, 34.489475>,  <27.589260, 25.916796, 34.669983>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.433918, 25.887035, 34.489475>,  <27.175014, 25.837437, 34.188629>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.433918, 25.887035, 34.489475> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153683, 0.987647, -0.030572,
		-0.746618, -0.095800, 0.658319,
		0.647258, 0.123998, 0.752118,
		27.628096, 25.924234, 34.715111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.827808, 26.301504, 34.504589>,  <27.175014, 25.837437, 34.188629>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.827808, 26.301504, 34.504589> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.200808, 26.320431, 34.647812>,  <27.424608, 26.331787, 34.733746>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.200808, 26.320431, 34.647812>,  <26.827808, 26.301504, 34.504589>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.200808, 26.320431, 34.647812> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032097, 0.998316, -0.048327,
		-0.359744, 0.033572, 0.932447,
		0.932499, 0.047314, 0.358060,
		27.480556, 26.334625, 34.755230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.843649, 26.830898, 34.976688>,  <26.827808, 26.301504, 34.504589>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.843649, 26.830898, 34.976688> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.224176, 26.778873, 34.864922>,  <27.452494, 26.747658, 34.797859>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.224176, 26.778873, 34.864922>,  <26.843649, 26.830898, 34.976688>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.224176, 26.778873, 34.864922> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126787, 0.991481, -0.029842,
		0.280923, -0.007038, 0.959705,
		0.951319, -0.130062, -0.279422,
		27.509573, 26.739855, 34.781094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.062630, 27.397058, 35.149742>,  <26.843649, 26.830898, 34.976688>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.062630, 27.397058, 35.149742> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.374113, 27.257225, 34.941357>,  <27.561003, 27.173325, 34.816326>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.374113, 27.257225, 34.941357>,  <27.062630, 27.397058, 35.149742>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.374113, 27.257225, 34.941357> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127364, 0.901169, -0.414335,
		0.614321, 0.256295, 0.746272,
		0.778709, -0.349583, -0.520965,
		27.607725, 27.152349, 34.785069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.647320, 27.738848, 35.338486>,  <27.062630, 27.397058, 35.149742>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.647320, 27.738848, 35.338486> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.700535, 27.607765, 34.964340>,  <27.732464, 27.529116, 34.739853>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.700535, 27.607765, 34.964340>,  <27.647320, 27.738848, 35.338486>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.700535, 27.607765, 34.964340> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197734, 0.933558, -0.298949,
		0.971186, -0.145182, 0.188999,
		0.133040, -0.327707, -0.935366,
		27.740446, 27.509453, 34.683731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.272673, 28.090305, 35.022358>,  <27.647320, 27.738848, 35.338486>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.272673, 28.090305, 35.022358> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.056343, 27.961372, 34.711590>,  <27.926546, 27.884012, 34.525127>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.056343, 27.961372, 34.711590>,  <28.272673, 28.090305, 35.022358>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.056343, 27.961372, 34.711590> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218068, 0.838350, -0.499616,
		0.812375, -0.439628, -0.383111,
		-0.540826, -0.322332, -0.776923,
		27.894096, 27.864672, 34.478512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.643618, 28.302774, 34.425297>,  <28.272673, 28.090305, 35.022358>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.643618, 28.302774, 34.425297> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.277603, 28.225353, 34.283737>,  <28.057995, 28.178900, 34.198799>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.277603, 28.225353, 34.283737>,  <28.643618, 28.302774, 34.425297>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.277603, 28.225353, 34.283737> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108394, 0.727100, -0.677921,
		0.388534, -0.658683, -0.644343,
		-0.915036, -0.193552, -0.353901,
		28.003092, 28.167288, 34.177567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.244686, 27.990965, 34.158207>,  <28.643618, 28.302774, 34.425297>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.244686, 27.990965, 34.158207> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.630194, 27.920673, 34.077938>,  <29.861498, 27.878498, 34.029778>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.630194, 27.920673, 34.077938>,  <29.244686, 27.990965, 34.158207>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.630194, 27.920673, 34.077938> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021277, -0.699269, 0.714542,
		-0.265885, -0.692923, -0.670195,
		0.963770, -0.175727, -0.200669,
		29.919325, 27.867956, 34.017738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.246506, 27.301788, 34.060417>,  <29.244686, 27.990965, 34.158207>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.246506, 27.301788, 34.060417> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.612707, 27.431870, 34.155155>,  <29.832428, 27.509918, 34.211998>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.612707, 27.431870, 34.155155>,  <29.246506, 27.301788, 34.060417>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.612707, 27.431870, 34.155155> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112417, -0.772049, 0.625541,
		0.386280, -0.546062, -0.743374,
		0.915506, 0.325202, 0.236840,
		29.887360, 27.529430, 34.226208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.727995, 26.737417, 34.039265>,  <29.246506, 27.301788, 34.060417>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.727995, 26.737417, 34.039265> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.917297, 27.004978, 34.268559>,  <30.030880, 27.165516, 34.406136>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.917297, 27.004978, 34.268559>,  <29.727995, 26.737417, 34.039265>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.917297, 27.004978, 34.268559> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293591, -0.733279, 0.613275,
		0.830561, -0.121941, -0.543414,
		0.473258, 0.668904, 0.573232,
		30.059275, 27.205648, 34.440529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.205133, 26.367588, 34.278038>,  <29.727995, 26.737417, 34.039265>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.205133, 26.367588, 34.278038> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.227297, 26.682404, 34.523804>,  <30.240595, 26.871292, 34.671261>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.227297, 26.682404, 34.523804>,  <30.205133, 26.367588, 34.278038>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.227297, 26.682404, 34.523804> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248625, -0.606849, 0.754931,
		0.967014, 0.110927, -0.229302,
		0.055409, 0.787039, 0.614410,
		30.243919, 26.918514, 34.708126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.942581, 26.440899, 34.634777>,  <30.205133, 26.367588, 34.278038>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.942581, 26.440899, 34.634777> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.660769, 26.627533, 34.848671>,  <30.491682, 26.739513, 34.977005>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.660769, 26.627533, 34.848671>,  <30.942581, 26.440899, 34.634777>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.660769, 26.627533, 34.848671> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310498, -0.474881, 0.823455,
		0.638144, 0.746182, 0.189695,
		-0.704530, 0.466583, 0.534731,
		30.449409, 26.767508, 35.009090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.303358, 26.593960, 35.341171>,  <30.942581, 26.440899, 34.634777>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.303358, 26.593960, 35.341171> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.904261, 26.602661, 35.366577>,  <30.664803, 26.607882, 35.381821>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.904261, 26.602661, 35.366577>,  <31.303358, 26.593960, 35.341171>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.904261, 26.602661, 35.366577> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043817, -0.505732, 0.861577,
		0.050863, 0.862417, 0.503637,
		-0.997744, 0.021755, 0.063512,
		30.604937, 26.609188, 35.385632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.235437, 26.697165, 36.039413>,  <31.303358, 26.593960, 35.341171>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.235437, 26.697165, 36.039413> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.864094, 26.589588, 35.936794>,  <30.641287, 26.525042, 35.875221>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.864094, 26.589588, 35.936794>,  <31.235437, 26.697165, 36.039413>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.864094, 26.589588, 35.936794> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102914, -0.477250, 0.872721,
		-0.357148, 0.836602, 0.415382,
		-0.928361, -0.268942, -0.256547,
		30.585585, 26.508905, 35.859829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.812536, 26.906136, 36.587090>,  <31.235437, 26.697165, 36.039413>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.812536, 26.906136, 36.587090> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.628353, 26.612080, 36.388073>,  <30.517843, 26.435646, 36.268661>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.628353, 26.612080, 36.388073>,  <30.812536, 26.906136, 36.587090>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.628353, 26.612080, 36.388073> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010215, -0.556069, 0.831074,
		-0.887622, 0.387758, 0.248537,
		-0.460459, -0.735140, -0.497540,
		30.490215, 26.391537, 36.238811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.258856, 26.691114, 36.960033>,  <30.812536, 26.906136, 36.587090>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.258856, 26.691114, 36.960033> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.280909, 26.378830, 36.711052>,  <30.294140, 26.191460, 36.561661>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.280909, 26.378830, 36.711052>,  <30.258856, 26.691114, 36.960033>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.280909, 26.378830, 36.711052> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220195, -0.617564, 0.755069,
		-0.973897, 0.095433, -0.205955,
		0.055132, -0.780709, -0.622457,
		30.297449, 26.144617, 36.524315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.696045, 26.291117, 37.062527>,  <30.258856, 26.691114, 36.960033>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.696045, 26.291117, 37.062527> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.979174, 26.055008, 36.907314>,  <30.149050, 25.913342, 36.814186>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.979174, 26.055008, 36.907314>,  <29.696045, 26.291117, 37.062527>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.979174, 26.055008, 36.907314> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165615, -0.672673, 0.721167,
		-0.686706, -0.446191, -0.573889,
		0.707818, -0.590275, -0.388033,
		30.191519, 25.877926, 36.790905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.455822, 25.553642, 37.077518>,  <29.696045, 26.291117, 37.062527>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.455822, 25.553642, 37.077518> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.854160, 25.517353, 37.074501>,  <30.093164, 25.495579, 37.072689>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.854160, 25.517353, 37.074501>,  <29.455822, 25.553642, 37.077518>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.854160, 25.517353, 37.074501> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063288, -0.749515, 0.658955,
		-0.065440, -0.655741, -0.752144,
		0.995848, -0.090723, -0.007548,
		30.152914, 25.490135, 37.072235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.527065, 24.893173, 37.076618>,  <29.455822, 25.553642, 37.077518>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.527065, 24.893173, 37.076618> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.883095, 25.025311, 37.202251>,  <30.096712, 25.104593, 37.277630>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.883095, 25.025311, 37.202251>,  <29.527065, 24.893173, 37.076618>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.883095, 25.025311, 37.202251> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029966, -0.645146, 0.763471,
		0.454834, -0.688956, -0.564328,
		0.890072, 0.330342, 0.314080,
		30.150116, 25.124413, 37.296474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.969469, 24.254820, 37.270199>,  <29.527065, 24.893173, 37.076618>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.969469, 24.254820, 37.270199> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.134134, 24.559937, 37.469669>,  <30.232933, 24.743006, 37.589352>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.134134, 24.559937, 37.469669>,  <29.969469, 24.254820, 37.270199>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.134134, 24.559937, 37.469669> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286440, -0.627765, 0.723784,
		0.865150, -0.155114, -0.476922,
		0.411665, 0.762791, 0.498680,
		30.257633, 24.788774, 37.619274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.700195, 24.029030, 37.574013>,  <29.969469, 24.254820, 37.270199>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.700195, 24.029030, 37.574013> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.574863, 24.337204, 37.796097>,  <30.499664, 24.522108, 37.929348>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.574863, 24.337204, 37.796097>,  <30.700195, 24.029030, 37.574013>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.574863, 24.337204, 37.796097> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297663, -0.475508, 0.827822,
		0.901788, 0.424645, -0.080340,
		-0.313328, 0.770434, 0.555209,
		30.480865, 24.568335, 37.962658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.022520, 24.060595, 36.909588>,  <30.700195, 24.029030, 37.574013>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.022520, 24.060595, 36.909588> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.835381, 23.725239, 36.797718>,  <30.723097, 23.524025, 36.730595>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.835381, 23.725239, 36.797718>,  <31.022520, 24.060595, 36.909588>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.835381, 23.725239, 36.797718> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595042, -0.064828, -0.801076,
		0.653484, -0.541201, 0.529207,
		-0.467851, -0.838390, -0.279673,
		30.695024, 23.473722, 36.713818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.536917, 23.524406, 36.779305>,  <31.022520, 24.060595, 36.909588>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.536917, 23.524406, 36.779305> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.199745, 23.431725, 36.585075>,  <30.997442, 23.376116, 36.468536>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.199745, 23.431725, 36.585075>,  <31.536917, 23.524406, 36.779305>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.199745, 23.431725, 36.585075> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497659, 0.007215, -0.867343,
		0.204472, -0.972759, 0.109229,
		-0.842928, -0.231706, -0.485577,
		30.946867, 23.362213, 36.439404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.766199, 23.075243, 36.054688>,  <31.536917, 23.524406, 36.779305>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.766199, 23.075243, 36.054688> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.381678, 23.126301, 35.957035>,  <31.150965, 23.156935, 35.898445>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.381678, 23.126301, 35.957035>,  <31.766199, 23.075243, 36.054688>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.381678, 23.126301, 35.957035> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224365, -0.151446, -0.962665,
		-0.159878, -0.980186, 0.116940,
		-0.961301, 0.127672, -0.244133,
		31.093287, 23.164595, 35.883797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.554821, 22.545261, 35.501793>,  <31.766199, 23.075243, 36.054688>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.554821, 22.545261, 35.501793> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.275349, 22.826199, 35.447304>,  <31.107664, 22.994761, 35.414608>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.275349, 22.826199, 35.447304>,  <31.554821, 22.545261, 35.501793>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.275349, 22.826199, 35.447304> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287103, 0.100844, -0.952577,
		-0.655297, -0.704661, -0.272102,
		-0.698683, 0.702342, -0.136227,
		31.065744, 23.036901, 35.406437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.249851, 22.443663, 34.899158>,  <31.554821, 22.545261, 35.501793>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.249851, 22.443663, 34.899158> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.144796, 22.827869, 34.935879>,  <31.081764, 23.058393, 34.957909>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.144796, 22.827869, 34.935879>,  <31.249851, 22.443663, 34.899158>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.144796, 22.827869, 34.935879> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283821, 0.167831, -0.944075,
		-0.922208, -0.221895, -0.316694,
		-0.262636, 0.960518, 0.091797,
		31.066006, 23.116024, 34.963417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.870758, 22.661598, 34.320877>,  <31.249851, 22.443663, 34.899158>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.870758, 22.661598, 34.320877> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.028082, 23.007156, 34.446732>,  <31.122477, 23.214491, 34.522243>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.028082, 23.007156, 34.446732>,  <30.870758, 22.661598, 34.320877>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.028082, 23.007156, 34.446732> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200940, 0.253170, -0.946323,
		-0.897179, 0.435420, -0.074017,
		0.393310, 0.863895, 0.314633,
		31.146074, 23.266325, 34.541122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.620661, 23.163523, 33.844154>,  <30.870758, 22.661598, 34.320877>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.620661, 23.163523, 33.844154> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.927557, 23.349777, 34.020576>,  <31.111694, 23.461531, 34.126431>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.927557, 23.349777, 34.020576>,  <30.620661, 23.163523, 33.844154>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.927557, 23.349777, 34.020576> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227676, 0.445154, -0.866026,
		-0.599589, 0.764866, 0.235525,
		0.767239, 0.465637, 0.441051,
		31.157728, 23.489468, 34.152893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.844685, 23.483730, 33.583275>,  <30.620661, 23.163523, 33.844154>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.844685, 23.483730, 33.583275> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.830524, 23.139656, 33.379772>,  <29.822029, 22.933212, 33.257671>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.830524, 23.139656, 33.379772>,  <29.844685, 23.483730, 33.583275>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.830524, 23.139656, 33.379772> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061295, -0.506246, 0.860208,
		-0.997492, 0.061636, -0.034803,
		-0.035401, -0.860184, -0.508754,
		29.819904, 22.881601, 33.227146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.354334, 23.068518, 33.951843>,  <29.844685, 23.483730, 33.583275>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.354334, 23.068518, 33.951843> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.551594, 22.803356, 33.726505>,  <29.669949, 22.644258, 33.591301>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.551594, 22.803356, 33.726505>,  <29.354334, 23.068518, 33.951843>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.551594, 22.803356, 33.726505> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136544, -0.698523, 0.702440,
		-0.859162, -0.269486, -0.434992,
		0.493149, -0.662905, -0.563348,
		29.699539, 22.604485, 33.557503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.836294, 22.491039, 33.788685>,  <29.354334, 23.068518, 33.951843>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.836294, 22.491039, 33.788685> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.217999, 22.372749, 33.771099>,  <29.447021, 22.301775, 33.760548>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.217999, 22.372749, 33.771099>,  <28.836294, 22.491039, 33.788685>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.217999, 22.372749, 33.771099> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165701, -0.645532, 0.745541,
		-0.248857, -0.704155, -0.665008,
		0.954261, -0.295725, -0.043966,
		29.504276, 22.284031, 33.757908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.779354, 21.742153, 33.662338>,  <28.836294, 22.491039, 33.788685>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.779354, 21.742153, 33.662338> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.130264, 21.827648, 33.834248>,  <29.340811, 21.878946, 33.937393>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.130264, 21.827648, 33.834248>,  <28.779354, 21.742153, 33.662338>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.130264, 21.827648, 33.834248> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166610, -0.704112, 0.690266,
		0.450147, -0.677157, -0.582088,
		0.877274, 0.213740, 0.429775,
		29.393446, 21.891769, 33.963181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.068672, 21.066170, 33.818855>,  <28.779354, 21.742153, 33.662338>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.068672, 21.066170, 33.818855> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.283831, 21.297928, 34.063793>,  <29.412926, 21.436983, 34.210758>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.283831, 21.297928, 34.063793>,  <29.068672, 21.066170, 33.818855>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.283831, 21.297928, 34.063793> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084666, -0.685581, 0.723056,
		0.838750, -0.440773, -0.319716,
		0.537895, 0.579394, 0.612350,
		29.445200, 21.471746, 34.247498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.574984, 20.713661, 34.200722>,  <29.068672, 21.066170, 33.818855>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.574984, 20.713661, 34.200722> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.500141, 21.026676, 34.438251>,  <29.455236, 21.214485, 34.580769>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.500141, 21.026676, 34.438251>,  <29.574984, 20.713661, 34.200722>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.500141, 21.026676, 34.438251> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152535, -0.620310, 0.769382,
		0.970425, 0.053378, 0.235429,
		-0.187107, 0.782539, 0.593822,
		29.444010, 21.261438, 34.616398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.922989, 20.605690, 34.723160>,  <29.574984, 20.713661, 34.200722>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.922989, 20.605690, 34.723160> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.676849, 20.872982, 34.890404>,  <29.529167, 21.033358, 34.990749>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.676849, 20.872982, 34.890404>,  <29.922989, 20.605690, 34.723160>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.676849, 20.872982, 34.890404> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157301, -0.623857, 0.765545,
		0.772402, 0.405306, 0.489001,
		-0.615347, 0.668229, 0.418114,
		29.492245, 21.073450, 35.015839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.061562, 20.661179, 35.523998>,  <29.922989, 20.605690, 34.723160>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.061562, 20.661179, 35.523998> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.694128, 20.800911, 35.450058>,  <29.473667, 20.884750, 35.405693>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.694128, 20.800911, 35.450058>,  <30.061562, 20.661179, 35.523998>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.694128, 20.800911, 35.450058> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360780, -0.550215, 0.753061,
		0.161360, 0.758441, 0.631451,
		-0.918586, 0.349329, -0.184848,
		29.418552, 20.905710, 35.394604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.759842, 20.450426, 36.134392>,  <30.061562, 20.661179, 35.523998>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.759842, 20.450426, 36.134392> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.439505, 20.576038, 35.930416>,  <29.247303, 20.651405, 35.808033>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.439505, 20.576038, 35.930416>,  <29.759842, 20.450426, 36.134392>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.439505, 20.576038, 35.930416> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596057, -0.500450, 0.627906,
		-0.058015, 0.806805, 0.587963,
		-0.800843, 0.314032, -0.509935,
		29.199251, 20.670248, 35.777435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<28.953754, 31.456377, 24.243473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.607058, 31.488216, 24.440418>,  <28.399040, 31.507320, 24.558586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.607058, 31.488216, 24.440418>,  <28.953754, 31.456377, 24.243473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.607058, 31.488216, 24.440418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334466, -0.639551, 0.692176,
		0.369987, 0.764617, 0.527703,
		-0.866742, 0.079597, 0.492364,
		28.347034, 31.512094, 24.588127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.063124, 31.390745, 24.965206>,  <28.953754, 31.456377, 24.243473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.063124, 31.390745, 24.965206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.676498, 31.290173, 24.945068>,  <28.444523, 31.229830, 24.932985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.676498, 31.290173, 24.945068>,  <29.063124, 31.390745, 24.965206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.676498, 31.290173, 24.945068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169107, -0.772620, 0.611932,
		-0.192756, 0.582958, 0.789307,
		-0.966565, -0.251431, -0.050345,
		28.386528, 31.214743, 24.929964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.854523, 31.291512, 25.563528>,  <29.063124, 31.390745, 24.965206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.854523, 31.291512, 25.563528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.592949, 31.082561, 25.344624>,  <28.436005, 30.957191, 25.213280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.592949, 31.082561, 25.344624>,  <28.854523, 31.291512, 25.563528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.592949, 31.082561, 25.344624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320690, -0.846554, 0.424858,
		-0.685223, 0.102327, 0.721110,
		-0.653933, -0.522375, -0.547263,
		28.396769, 30.925848, 25.180445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.696360, 30.770044, 26.013544>,  <28.854523, 31.291512, 25.563528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.696360, 30.770044, 26.013544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.578791, 30.645279, 25.652142>,  <28.508249, 30.570419, 25.435301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.578791, 30.645279, 25.652142>,  <28.696360, 30.770044, 26.013544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.578791, 30.645279, 25.652142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300065, -0.927581, 0.222609,
		-0.907508, -0.205680, 0.366230,
		-0.293922, -0.311912, -0.903505,
		28.490614, 30.551704, 25.381090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.283211, 30.113960, 26.118483>,  <28.696360, 30.770044, 26.013544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.283211, 30.113960, 26.118483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.405136, 30.123627, 25.737640>,  <28.478291, 30.129427, 25.509134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.405136, 30.123627, 25.737640>,  <28.283211, 30.113960, 26.118483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.405136, 30.123627, 25.737640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186341, -0.981871, 0.034733,
		-0.934006, -0.188003, -0.303790,
		0.304812, 0.024168, -0.952106,
		28.496580, 30.130877, 25.452009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.820131, 29.601551, 25.725220>,  <28.283211, 30.113960, 26.118483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.820131, 29.601551, 25.725220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.177401, 29.667522, 25.557869>,  <28.391762, 29.707106, 25.457458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.177401, 29.667522, 25.557869>,  <27.820131, 29.601551, 25.725220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.177401, 29.667522, 25.557869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243386, -0.959580, 0.141313,
		-0.378157, -0.228044, -0.897214,
		0.893174, 0.164931, -0.418375,
		28.445353, 29.717001, 25.432356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.836796, 29.023899, 25.333681>,  <27.820131, 29.601551, 25.725220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.836796, 29.023899, 25.333681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.204033, 29.181980, 25.345783>,  <28.424376, 29.276829, 25.353045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.204033, 29.181980, 25.345783>,  <27.836796, 29.023899, 25.333681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.204033, 29.181980, 25.345783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393883, -0.918215, 0.041684,
		0.044253, -0.026353, -0.998673,
		0.918095, 0.395204, 0.030253,
		28.479462, 29.300541, 25.354858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.243643, 28.562817, 25.037598>,  <27.836796, 29.023899, 25.333681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.243643, 28.562817, 25.037598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.505054, 28.776054, 25.252525>,  <28.661901, 28.903996, 25.381481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.505054, 28.776054, 25.252525>,  <28.243643, 28.562817, 25.037598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.505054, 28.776054, 25.252525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527893, -0.829763, 0.181171,
		0.542428, 0.165247, -0.823690,
		0.653529, 0.533092, 0.537320,
		28.701113, 28.935982, 25.413721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.878740, 28.173689, 24.992765>,  <28.243643, 28.562817, 25.037598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.878740, 28.173689, 24.992765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.956301, 28.420589, 25.297764>,  <29.002836, 28.568729, 25.480762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.956301, 28.420589, 25.297764>,  <28.878740, 28.173689, 24.992765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.956301, 28.420589, 25.297764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559777, -0.707910, 0.430712,
		0.805638, 0.343313, -0.482788,
		0.193901, 0.617252, 0.762498,
		29.014471, 28.605764, 25.526514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.542120, 28.127583, 25.006458>,  <28.878740, 28.173689, 24.992765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.542120, 28.127583, 25.006458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.468256, 28.258427, 25.377167>,  <29.423939, 28.336933, 25.599592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.468256, 28.258427, 25.377167>,  <29.542120, 28.127583, 25.006458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.468256, 28.258427, 25.377167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580797, -0.724387, 0.371400,
		0.792828, 0.606847, -0.056219,
		-0.184659, 0.327108, 0.926769,
		29.412859, 28.356560, 25.655197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.141493, 27.930201, 25.403841>,  <29.542120, 28.127583, 25.006458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.141493, 27.930201, 25.403841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.875654, 28.009464, 25.692020>,  <29.716152, 28.057022, 25.864929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.875654, 28.009464, 25.692020>,  <30.141493, 27.930201, 25.403841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.875654, 28.009464, 25.692020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334025, -0.783699, 0.523683,
		0.668387, 0.588685, 0.454653,
		-0.664595, 0.198158, 0.720450,
		29.676275, 28.068911, 25.908155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.463017, 27.963118, 26.072886>,  <30.141493, 27.930201, 25.403841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.463017, 27.963118, 26.072886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.075872, 27.887157, 26.138832>,  <29.843586, 27.841581, 26.178400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.075872, 27.887157, 26.138832>,  <30.463017, 27.963118, 26.072886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.075872, 27.887157, 26.138832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251414, -0.745996, 0.616669,
		0.005886, 0.638301, 0.769764,
		-0.967862, -0.189900, 0.164869,
		29.785515, 27.830187, 26.188293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.986771, 28.360304, 26.493877>,  <30.463017, 27.963118, 26.072886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.986771, 28.360304, 26.493877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.356165, 28.247902, 26.598347>,  <31.577801, 28.180460, 26.661028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.356165, 28.247902, 26.598347>,  <30.986771, 28.360304, 26.493877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.356165, 28.247902, 26.598347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380170, 0.761622, -0.524788,
		-0.051449, 0.583924, 0.810176,
		0.923485, -0.281005, 0.261175,
		31.633211, 28.163601, 26.676699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.280251, 28.921642, 26.742157>,  <30.986771, 28.360304, 26.493877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.280251, 28.921642, 26.742157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.560408, 28.682068, 26.586864>,  <31.728502, 28.538322, 26.493689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.560408, 28.682068, 26.586864>,  <31.280251, 28.921642, 26.742157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.560408, 28.682068, 26.586864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278682, 0.730228, -0.623782,
		0.657103, 0.328700, 0.678359,
		0.700394, -0.598936, -0.388232,
		31.770525, 28.502388, 26.470394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.870304, 29.318058, 26.705736>,  <31.280251, 28.921642, 26.742157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.870304, 29.318058, 26.705736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.912207, 29.033936, 26.427315>,  <31.937347, 28.863462, 26.260262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.912207, 29.033936, 26.427315>,  <31.870304, 29.318058, 26.705736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.912207, 29.033936, 26.427315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364465, 0.678627, -0.637675,
		0.925306, -0.186886, 0.329974,
		0.104757, -0.710308, -0.696052,
		31.943634, 28.820843, 26.218500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.394024, 29.542635, 26.445011>,  <31.870304, 29.318058, 26.705736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.394024, 29.542635, 26.445011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.292362, 29.268005, 26.172535>,  <32.231365, 29.103228, 26.009048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.292362, 29.268005, 26.172535>,  <32.394024, 29.542635, 26.445011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.292362, 29.268005, 26.172535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456611, 0.535704, -0.710301,
		0.852590, -0.491568, 0.177343,
		-0.254157, -0.686573, -0.681191,
		32.216114, 29.062033, 25.968178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.045334, 29.475006, 26.068329>,  <32.394024, 29.542635, 26.445011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.045334, 29.475006, 26.068329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.759983, 29.337746, 25.823921>,  <32.588772, 29.255390, 25.677277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.759983, 29.337746, 25.823921>,  <33.045334, 29.475006, 26.068329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.759983, 29.337746, 25.823921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378335, 0.545337, -0.747977,
		0.589880, -0.764758, -0.259205,
		-0.713376, -0.343150, -0.611018,
		32.545971, 29.234800, 25.640615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.386345, 29.240763, 25.423454>,  <33.045334, 29.475006, 26.068329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.386345, 29.240763, 25.423454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.008778, 29.331829, 25.327797>,  <32.782238, 29.386469, 25.270403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.008778, 29.331829, 25.327797>,  <33.386345, 29.240763, 25.423454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.008778, 29.331829, 25.327797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330075, 0.669169, -0.665780,
		0.008454, -0.707377, -0.706786,
		-0.943917, 0.227664, -0.239144,
		32.725601, 29.400127, 25.256054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.284485, 29.322222, 24.639902>,  <33.386345, 29.240763, 25.423454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.284485, 29.322222, 24.639902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.989140, 29.531033, 24.810692>,  <32.811932, 29.656319, 24.913166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.989140, 29.531033, 24.810692>,  <33.284485, 29.322222, 24.639902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.989140, 29.531033, 24.810692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217606, 0.783665, -0.581822,
		-0.638332, -0.336684, -0.692226,
		-0.738363, 0.522028, 0.426974,
		32.767632, 29.687641, 24.938784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.968781, 29.580578, 24.066776>,  <33.284485, 29.322222, 24.639902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.968781, 29.580578, 24.066776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.865387, 29.799606, 24.385109>,  <32.803352, 29.931025, 24.576109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.865387, 29.799606, 24.385109>,  <32.968781, 29.580578, 24.066776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.865387, 29.799606, 24.385109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321769, 0.825589, -0.463537,
		-0.910852, 0.136259, -0.389592,
		-0.258482, 0.547573, 0.795833,
		32.787842, 29.963879, 24.623859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.625614, 30.173908, 23.748577>,  <32.968781, 29.580578, 24.066776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.625614, 30.173908, 23.748577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.711899, 30.304279, 24.116760>,  <32.763668, 30.382502, 24.337669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.711899, 30.304279, 24.116760>,  <32.625614, 30.173908, 23.748577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.711899, 30.304279, 24.116760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508862, 0.767008, -0.390842,
		-0.833384, 0.552694, -0.000402,
		0.215707, 0.325926, 0.920458,
		32.776611, 30.402058, 24.392899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.645756, 30.885630, 23.680643>,  <32.625614, 30.173908, 23.748577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.645756, 30.885630, 23.680643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.860424, 30.833309, 24.014080>,  <32.989223, 30.801916, 24.214142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.860424, 30.833309, 24.014080>,  <32.645756, 30.885630, 23.680643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.860424, 30.833309, 24.014080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533299, 0.818159, -0.214960,
		-0.653893, 0.559916, 0.508841,
		0.536672, -0.130803, 0.833591,
		33.021427, 30.794067, 24.264156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.762165, 31.567698, 24.014015>,  <32.645756, 30.885630, 23.680643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.762165, 31.567698, 24.014015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.068130, 31.331436, 24.116806>,  <33.251709, 31.189680, 24.178480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.068130, 31.331436, 24.116806>,  <32.762165, 31.567698, 24.014015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.068130, 31.331436, 24.116806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637711, 0.750609, -0.172947,
		-0.090738, 0.296167, 0.950816,
		0.764913, -0.590653, 0.256978,
		33.297604, 31.154240, 24.193899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.221458, 32.021595, 24.028166>,  <32.762165, 31.567698, 24.014015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.221458, 32.021595, 24.028166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.444328, 31.695255, 24.090061>,  <33.578049, 31.499451, 24.127199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.444328, 31.695255, 24.090061>,  <33.221458, 32.021595, 24.028166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.444328, 31.695255, 24.090061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830397, 0.547070, -0.105620,
		0.001517, 0.187343, 0.982294,
		0.557171, -0.815854, 0.154739,
		33.611481, 31.450499, 24.136482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.643326, 32.266975, 24.473959>,  <33.221458, 32.021595, 24.028166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.643326, 32.266975, 24.473959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.827450, 31.937263, 24.342098>,  <33.937923, 31.739435, 24.262981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.827450, 31.937263, 24.342098>,  <33.643326, 32.266975, 24.473959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.827450, 31.937263, 24.342098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875340, 0.483310, 0.013795,
		0.147953, -0.294907, 0.944002,
		0.460314, -0.824282, -0.329651,
		33.965546, 31.689980, 24.243202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.133785, 32.281406, 24.837292>,  <33.643326, 32.266975, 24.473959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.133785, 32.281406, 24.837292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.235111, 32.057667, 24.521580>,  <34.295906, 31.923424, 24.332153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.235111, 32.057667, 24.521580>,  <34.133785, 32.281406, 24.837292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.235111, 32.057667, 24.521580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887968, 0.458188, -0.039718,
		0.383854, -0.690793, 0.612748,
		0.253317, -0.559346, -0.789280,
		34.311108, 31.889862, 24.284796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.726070, 32.911964, 24.920975>,  <34.133785, 32.281406, 24.837292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.726070, 32.911964, 24.920975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.375767, 32.809383, 24.757374>,  <33.165585, 32.747833, 24.659214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.375767, 32.809383, 24.757374>,  <33.726070, 32.911964, 24.920975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.375767, 32.809383, 24.757374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472634, 0.282939, 0.834603,
		-0.098314, 0.924217, -0.368994,
		-0.875758, -0.256452, -0.409000,
		33.113041, 32.732449, 24.634674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.138348, 33.361725, 24.952152>,  <33.726070, 32.911964, 24.920975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.138348, 33.361725, 24.952152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.001629, 32.986343, 24.972076>,  <32.919598, 32.761116, 24.984032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.001629, 32.986343, 24.972076>,  <33.138348, 33.361725, 24.952152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.001629, 32.986343, 24.972076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311567, 0.163164, 0.936111,
		-0.886623, 0.304440, -0.348160,
		-0.341797, -0.938453, 0.049811,
		32.899090, 32.704807, 24.987020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.533417, 33.533676, 25.294571>,  <33.138348, 33.361725, 24.952152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.533417, 33.533676, 25.294571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.137848, 33.591152, 25.279675>,  <31.900507, 33.625637, 25.270737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.137848, 33.591152, 25.279675>,  <32.533417, 33.533676, 25.294571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.137848, 33.591152, 25.279675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088902, -0.372436, 0.923790,
		0.118870, 0.916867, 0.381084,
		-0.988922, 0.143690, -0.037240,
		31.841171, 33.634258, 25.268503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.351696, 33.804577, 25.934612>,  <32.533417, 33.533676, 25.294571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.351696, 33.804577, 25.934612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.030697, 33.620819, 25.782322>,  <31.838099, 33.510563, 25.690947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.030697, 33.620819, 25.782322>,  <32.351696, 33.804577, 25.934612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.030697, 33.620819, 25.782322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137791, -0.478158, 0.867398,
		-0.580528, 0.748544, 0.320419,
		-0.802496, -0.459398, -0.380727,
		31.789948, 33.482998, 25.668104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.968870, 33.738049, 26.557814>,  <32.351696, 33.804577, 25.934612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.968870, 33.738049, 26.557814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.811029, 33.480206, 26.295891>,  <31.716326, 33.325500, 26.138737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.811029, 33.480206, 26.295891>,  <31.968870, 33.738049, 26.557814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.811029, 33.480206, 26.295891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171348, -0.648513, 0.741668,
		-0.902735, 0.404862, 0.145452,
		-0.394601, -0.644606, -0.654808,
		31.692650, 33.286823, 26.099449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.330494, 33.566998, 26.831886>,  <31.968870, 33.738049, 26.557814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.330494, 33.566998, 26.831886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.439985, 33.283859, 26.571415>,  <31.505680, 33.113976, 26.415133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.439985, 33.283859, 26.571415>,  <31.330494, 33.566998, 26.831886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.439985, 33.283859, 26.571415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044737, -0.685673, 0.726534,
		-0.960767, -0.169740, -0.219353,
		0.273726, -0.707843, -0.651178,
		31.522104, 33.071507, 26.376062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.832691, 33.047108, 26.930492>,  <31.330494, 33.566998, 26.831886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.832691, 33.047108, 26.930492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.160023, 32.873299, 26.780014>,  <31.356422, 32.769012, 26.689728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.160023, 32.873299, 26.780014>,  <30.832691, 33.047108, 26.930492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.160023, 32.873299, 26.780014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066002, -0.721259, 0.689514,
		-0.570946, -0.539421, -0.618907,
		0.818331, -0.434524, -0.376197,
		31.405521, 32.742943, 26.667154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.665123, 32.318943, 26.819418>,  <30.832691, 33.047108, 26.930492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.665123, 32.318943, 26.819418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.064417, 32.325150, 26.842342>,  <31.303993, 32.328873, 26.856096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.064417, 32.325150, 26.842342>,  <30.665123, 32.318943, 26.819418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.064417, 32.325150, 26.842342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027862, -0.729967, 0.682914,
		0.052429, -0.683306, -0.728247,
		0.998236, 0.015514, 0.057310,
		31.363888, 32.329803, 26.859535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.859381, 31.612461, 26.703176>,  <30.665123, 32.318943, 26.819418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.859381, 31.612461, 26.703176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.167139, 31.792877, 26.884106>,  <31.351793, 31.901127, 26.992662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.167139, 31.792877, 26.884106>,  <30.859381, 31.612461, 26.703176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.167139, 31.792877, 26.884106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068889, -0.762570, 0.643227,
		0.635049, -0.463735, -0.617788,
		0.769394, 0.451039, 0.452323,
		31.397957, 31.928188, 27.019802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.427629, 31.042089, 26.686069>,  <30.859381, 31.612461, 26.703176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.427629, 31.042089, 26.686069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.490820, 31.330200, 26.956253>,  <31.528734, 31.503067, 27.118362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.490820, 31.330200, 26.956253>,  <31.427629, 31.042089, 26.686069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.490820, 31.330200, 26.956253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097258, -0.692072, 0.715246,
		0.982642, -0.047297, -0.179382,
		0.157974, 0.720277, 0.675459,
		31.538212, 31.546284, 27.158892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.956327, 30.797277, 27.241861>,  <31.427629, 31.042089, 26.686069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.956327, 30.797277, 27.241861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.799105, 31.125401, 27.408043>,  <31.704771, 31.322275, 27.507751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.799105, 31.125401, 27.408043>,  <31.956327, 30.797277, 27.241861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.799105, 31.125401, 27.408043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039303, -0.466392, 0.883705,
		0.918673, 0.331019, 0.215560,
		-0.393058, 0.820308, 0.415452,
		31.681187, 31.371492, 27.532679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.418449, 31.004278, 27.798279>,  <31.956327, 30.797277, 27.241861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.418449, 31.004278, 27.798279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.058693, 31.160515, 27.876801>,  <31.842840, 31.254257, 27.923914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.058693, 31.160515, 27.876801>,  <32.418449, 31.004278, 27.798279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.058693, 31.160515, 27.876801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014849, -0.476095, 0.879268,
		0.436895, 0.787890, 0.433995,
		-0.899390, 0.390592, 0.196305,
		31.788876, 31.277693, 27.935692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.323231, 31.253904, 28.510532>,  <32.418449, 31.004278, 27.798279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.323231, 31.253904, 28.510532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.932894, 31.209522, 28.435242>,  <31.698692, 31.182894, 28.390068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.932894, 31.209522, 28.435242>,  <32.323231, 31.253904, 28.510532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.932894, 31.209522, 28.435242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105482, -0.515199, 0.850555,
		-0.191346, 0.849858, 0.491047,
		-0.975838, -0.110953, -0.188226,
		31.640142, 31.176237, 28.378775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.013348, 31.245092, 29.175356>,  <32.323231, 31.253904, 28.510532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.013348, 31.245092, 29.175356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.727142, 31.093910, 28.940342>,  <31.555420, 31.003201, 28.799334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.727142, 31.093910, 28.940342>,  <32.013348, 31.245092, 29.175356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.727142, 31.093910, 28.940342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343159, -0.542410, 0.766834,
		-0.608512, 0.750294, 0.258402,
		-0.715511, -0.377955, -0.587533,
		31.512489, 30.980524, 28.764082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.398842, 31.559248, 29.424429>,  <32.013348, 31.245092, 29.175356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.398842, 31.559248, 29.424429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.305941, 31.214584, 29.243942>,  <31.250200, 31.007786, 29.135651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.305941, 31.214584, 29.243942>,  <31.398842, 31.559248, 29.424429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.305941, 31.214584, 29.243942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233403, -0.400976, 0.885856,
		-0.944236, 0.311059, -0.107986,
		-0.232254, -0.861661, -0.451218,
		31.236265, 30.956085, 29.108576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.970364, 31.450478, 29.893044>,  <31.398842, 31.559248, 29.424429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.970364, 31.450478, 29.893044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.966171, 31.109962, 29.683205>,  <30.963655, 30.905653, 29.557301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.966171, 31.109962, 29.683205>,  <30.970364, 31.450478, 29.893044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.966171, 31.109962, 29.683205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369756, -0.484141, 0.793025,
		-0.929070, 0.202285, -0.309693,
		-0.010481, -0.851286, -0.524597,
		30.963026, 30.854576, 29.525826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.304596, 31.211792, 29.887148>,  <30.970364, 31.450478, 29.893044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.304596, 31.211792, 29.887148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.535814, 30.887798, 29.847580>,  <30.674545, 30.693401, 29.823839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.535814, 30.887798, 29.847580>,  <30.304596, 31.211792, 29.887148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.535814, 30.887798, 29.847580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431419, -0.406253, 0.805504,
		-0.692633, -0.422942, -0.584277,
		0.578045, -0.809987, -0.098918,
		30.709229, 30.644802, 29.817905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.863903, 30.681328, 29.879061>,  <30.304596, 31.211792, 29.887148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.863903, 30.681328, 29.879061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.196085, 30.474064, 29.960892>,  <30.395395, 30.349705, 30.009991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.196085, 30.474064, 29.960892>,  <29.863903, 30.681328, 29.879061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.196085, 30.474064, 29.960892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492823, -0.512110, 0.703469,
		-0.259742, -0.685022, -0.680646,
		0.830457, -0.518159, 0.204577,
		30.445223, 30.318617, 30.022264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.827364, 29.803467, 29.920042>,  <29.863903, 30.681328, 29.879061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.827364, 29.803467, 29.920042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.133402, 29.919018, 30.150234>,  <30.317024, 29.988348, 30.288349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.133402, 29.919018, 30.150234>,  <29.827364, 29.803467, 29.920042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.133402, 29.919018, 30.150234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371558, -0.531861, 0.760965,
		0.525902, -0.796036, -0.299590,
		0.765096, 0.288879, 0.575481,
		30.362930, 30.005682, 30.322878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.766439, 29.369396, 30.485617>,  <29.827364, 29.803467, 29.920042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.766439, 29.369396, 30.485617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.079138, 29.577084, 30.623764>,  <30.266758, 29.701696, 30.706654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.079138, 29.577084, 30.623764>,  <29.766439, 29.369396, 30.485617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.079138, 29.577084, 30.623764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109757, -0.430627, 0.895831,
		0.613860, -0.738221, -0.279653,
		0.781747, 0.519221, 0.345370,
		30.313662, 29.732849, 30.727375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.142250, 28.936779, 30.705988>,  <29.766439, 29.369396, 30.485617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.142250, 28.936779, 30.705988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.261555, 29.268970, 30.894176>,  <30.333138, 29.468285, 31.007090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.261555, 29.268970, 30.894176>,  <30.142250, 28.936779, 30.705988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.261555, 29.268970, 30.894176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043374, -0.504192, 0.862502,
		0.953498, -0.236846, -0.186403,
		0.298263, 0.830478, 0.470473,
		30.351034, 29.518114, 31.035318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.728285, 28.789703, 31.074326>,  <30.142250, 28.936779, 30.705988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.728285, 28.789703, 31.074326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.534672, 29.084187, 31.263515>,  <30.418505, 29.260878, 31.377029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.534672, 29.084187, 31.263515>,  <30.728285, 28.789703, 31.074326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.534672, 29.084187, 31.263515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160878, -0.456430, 0.875094,
		0.860134, 0.499666, 0.102487,
		-0.484033, 0.736210, 0.472976,
		30.389462, 29.305050, 31.405409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.165827, 28.888323, 31.582420>,  <30.728285, 28.789703, 31.074326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.165827, 28.888323, 31.582420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.822601, 29.048676, 31.710808>,  <30.616667, 29.144886, 31.787840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.822601, 29.048676, 31.710808>,  <31.165827, 28.888323, 31.582420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.822601, 29.048676, 31.710808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042191, -0.567866, 0.822039,
		0.511807, 0.718904, 0.470352,
		-0.858064, 0.400881, 0.320969,
		30.565182, 29.168940, 31.807098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.280975, 28.990984, 32.287979>,  <31.165827, 28.888323, 31.582420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.280975, 28.990984, 32.287979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.882605, 29.000839, 32.253284>,  <30.643581, 29.006752, 32.232468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.882605, 29.000839, 32.253284>,  <31.280975, 28.990984, 32.287979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.882605, 29.000839, 32.253284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088875, -0.430408, 0.898248,
		-0.015201, 0.902298, 0.430844,
		-0.995927, 0.024637, -0.086734,
		30.583826, 29.008230, 32.227264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.008587, 29.290304, 32.853912>,  <31.280975, 28.990984, 32.287979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.008587, 29.290304, 32.853912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.700396, 29.064869, 32.734760>,  <30.515480, 28.929607, 32.663269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.700396, 29.064869, 32.734760>,  <31.008587, 29.290304, 32.853912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.700396, 29.064869, 32.734760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148642, -0.295568, 0.943687,
		-0.619892, 0.771369, 0.143956,
		-0.770480, -0.563586, -0.297878,
		30.469252, 28.895794, 32.645397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.596737, 29.292492, 33.411091>,  <31.008587, 29.290304, 32.853912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.596737, 29.292492, 33.411091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.455709, 28.989082, 33.191879>,  <30.371092, 28.807037, 33.060352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.455709, 28.989082, 33.191879>,  <30.596737, 29.292492, 33.411091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.455709, 28.989082, 33.191879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263596, -0.481423, 0.835912,
		-0.897893, 0.439177, -0.030208,
		-0.352570, -0.758522, -0.548032,
		30.349939, 28.761526, 33.027470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.939465, 29.177652, 33.730602>,  <30.596737, 29.292492, 33.411091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.939465, 29.177652, 33.730602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.022322, 28.835510, 33.540672>,  <30.072035, 28.630224, 33.426716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.022322, 28.835510, 33.540672>,  <29.939465, 29.177652, 33.730602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.022322, 28.835510, 33.540672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231387, -0.514414, 0.825735,
		-0.950554, -0.061176, -0.304475,
		0.207141, -0.855357, -0.474823,
		30.084465, 28.578903, 33.398224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.435755, 28.680084, 34.005775>,  <29.939465, 29.177652, 33.730602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.435755, 28.680084, 34.005775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.712469, 28.436459, 33.850613>,  <29.878498, 28.290283, 33.757515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.712469, 28.436459, 33.850613>,  <29.435755, 28.680084, 34.005775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.712469, 28.436459, 33.850613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024580, -0.556745, 0.830320,
		-0.721685, -0.564868, -0.400118,
		0.691785, -0.609065, -0.387911,
		29.920004, 28.253738, 33.734238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.787199, 28.356792, 33.637074>,  <29.435755, 28.680084, 34.005775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.787199, 28.356792, 33.637074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.390778, 28.372471, 33.688110>,  <28.152925, 28.381878, 33.718731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.390778, 28.372471, 33.688110>,  <28.787199, 28.356792, 33.637074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.390778, 28.372471, 33.688110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062037, 0.711124, -0.700325,
		-0.118184, -0.701973, -0.702329,
		-0.991052, 0.039196, 0.127592,
		28.093462, 28.384230, 33.726387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.501261, 28.168579, 32.966316>,  <28.787199, 28.356792, 33.637074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.501261, 28.168579, 32.966316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.224533, 28.389381, 33.152512>,  <28.058496, 28.521862, 33.264229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.224533, 28.389381, 33.152512>,  <28.501261, 28.168579, 32.966316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.224533, 28.389381, 33.152512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197733, 0.475186, -0.857380,
		-0.694471, -0.685193, -0.219592,
		-0.691818, 0.552004, 0.465488,
		28.016987, 28.554983, 33.292156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.012026, 28.247772, 32.436470>,  <28.501261, 28.168579, 32.966316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.012026, 28.247772, 32.436470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.921736, 28.524933, 32.710384>,  <27.867561, 28.691229, 32.874733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.921736, 28.524933, 32.710384>,  <28.012026, 28.247772, 32.436470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.921736, 28.524933, 32.710384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282578, 0.626139, -0.726704,
		-0.932308, -0.357542, 0.054464,
		-0.225725, 0.692902, 0.684788,
		27.854017, 28.732803, 32.915821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.205738, 28.466099, 32.340843>,  <28.012026, 28.247772, 32.436470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.205738, 28.466099, 32.340843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.387384, 28.770367, 32.526386>,  <27.496372, 28.952927, 32.637711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.387384, 28.770367, 32.526386>,  <27.205738, 28.466099, 32.340843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.387384, 28.770367, 32.526386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394961, 0.638556, -0.660493,
		-0.798613, 0.116737, 0.590414,
		0.454117, 0.760670, 0.463853,
		27.523619, 28.998568, 32.665543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.690723, 29.025383, 32.462410>,  <27.205738, 28.466099, 32.340843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.690723, 29.025383, 32.462410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.046104, 29.208374, 32.477180>,  <27.259333, 29.318169, 32.486042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.046104, 29.208374, 32.477180>,  <26.690723, 29.025383, 32.462410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.046104, 29.208374, 32.477180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316948, 0.669741, -0.671558,
		-0.331953, 0.584945, 0.740031,
		0.888454, 0.457477, 0.036925,
		27.312641, 29.345617, 32.488258>
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
