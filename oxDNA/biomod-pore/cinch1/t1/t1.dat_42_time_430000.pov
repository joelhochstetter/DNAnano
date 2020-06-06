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
	<42.793999, 32.868172, 22.795679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.911381, 32.577938, 22.546707>,  <42.981812, 32.403797, 22.397324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.911381, 32.577938, 22.546707>,  <42.793999, 32.868172, 22.795679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.911381, 32.577938, 22.546707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832830, -0.513698, 0.206176,
		-0.469337, 0.457873, -0.755033,
		0.293457, -0.725580, -0.622428,
		42.999416, 32.360264, 22.359980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.255928, 32.732571, 22.451414>,  <42.793999, 32.868172, 22.795679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.255928, 32.732571, 22.451414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.457802, 32.391262, 22.398918>,  <42.578926, 32.186478, 22.367420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.457802, 32.391262, 22.398918>,  <42.255928, 32.732571, 22.451414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.457802, 32.391262, 22.398918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861638, -0.488418, -0.137940,
		0.053599, 0.182697, -0.981707,
		0.504685, -0.853270, -0.131240,
		42.609207, 32.135281, 22.359547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.086514, 32.565643, 21.691662>,  <42.255928, 32.732571, 22.451414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.086514, 32.565643, 21.691662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.167622, 32.306908, 21.985733>,  <42.216286, 32.151669, 22.162176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.167622, 32.306908, 21.985733>,  <42.086514, 32.565643, 21.691662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.167622, 32.306908, 21.985733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836114, -0.505158, -0.213843,
		0.509702, -0.571331, -0.643261,
		0.202774, -0.646836, 0.735178,
		42.228455, 32.112858, 22.206285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.616631, 32.856808, 22.138773>,  <42.086514, 32.565643, 21.691662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.616631, 32.856808, 22.138773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.771076, 32.579643, 22.382343>,  <41.863743, 32.413345, 22.528486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.771076, 32.579643, 22.382343>,  <41.616631, 32.856808, 22.138773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.771076, 32.579643, 22.382343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675266, 0.662035, 0.325155,
		-0.628434, 0.285640, 0.723520,
		0.386118, -0.692906, 0.608928,
		41.886913, 32.371773, 22.565022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.207088, 33.212036, 22.650124>,  <41.616631, 32.856808, 22.138773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.207088, 33.212036, 22.650124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.981792, 33.491505, 22.826588>,  <40.846615, 33.659184, 22.932467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.981792, 33.491505, 22.826588>,  <41.207088, 33.212036, 22.650124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.981792, 33.491505, 22.826588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067457, -0.493243, 0.867272,
		0.823535, 0.518241, 0.230684,
		-0.563240, 0.698668, 0.441162,
		40.812820, 33.701103, 22.958937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.582039, 33.376720, 23.185080>,  <41.207088, 33.212036, 22.650124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.582039, 33.376720, 23.185080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.193081, 33.444599, 23.249149>,  <40.959705, 33.485325, 23.287592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.193081, 33.444599, 23.249149>,  <41.582039, 33.376720, 23.185080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.193081, 33.444599, 23.249149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027839, -0.597148, 0.801648,
		0.231685, 0.783975, 0.575938,
		-0.972392, 0.169697, 0.160176,
		40.901363, 33.495506, 23.297201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.378712, 33.813133, 23.932306>,  <41.582039, 33.376720, 23.185080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.378712, 33.813133, 23.932306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.052807, 33.603703, 23.832680>,  <40.857265, 33.478043, 23.772903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.052807, 33.603703, 23.832680>,  <41.378712, 33.813133, 23.932306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.052807, 33.603703, 23.832680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058406, -0.353274, 0.933695,
		-0.576849, 0.775285, 0.257253,
		-0.814760, -0.523576, -0.249067,
		40.808380, 33.446629, 23.757959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.926819, 33.899296, 24.470699>,  <41.378712, 33.813133, 23.932306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.926819, 33.899296, 24.470699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.816925, 33.563629, 24.282944>,  <40.750992, 33.362228, 24.170290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.816925, 33.563629, 24.282944>,  <40.926819, 33.899296, 24.470699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.816925, 33.563629, 24.282944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132472, -0.450482, 0.882903,
		-0.952352, 0.304740, 0.012595,
		-0.274730, -0.839166, -0.469387,
		40.734505, 33.311878, 24.142128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.282761, 33.625835, 24.826660>,  <40.926819, 33.899296, 24.470699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.282761, 33.625835, 24.826660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.432552, 33.316078, 24.622669>,  <40.522427, 33.130222, 24.500275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.432552, 33.316078, 24.622669>,  <40.282761, 33.625835, 24.826660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.432552, 33.316078, 24.622669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083938, -0.576050, 0.813094,
		-0.923429, -0.261680, -0.280719,
		0.374478, -0.774397, -0.509976,
		40.544895, 33.083759, 24.469677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.791515, 33.111649, 24.930464>,  <40.282761, 33.625835, 24.826660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.791515, 33.111649, 24.930464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.146797, 32.959721, 24.827057>,  <40.359966, 32.868565, 24.765013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.146797, 32.959721, 24.827057>,  <39.791515, 33.111649, 24.930464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.146797, 32.959721, 24.827057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016781, -0.589110, 0.807878,
		-0.459143, -0.713222, -0.529624,
		0.888204, -0.379820, -0.258517,
		40.413258, 32.845776, 24.749502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.665482, 32.396973, 25.111010>,  <39.791515, 33.111649, 24.930464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.665482, 32.396973, 25.111010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.057137, 32.462326, 25.062679>,  <40.292130, 32.501537, 25.033682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.057137, 32.462326, 25.062679>,  <39.665482, 32.396973, 25.111010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.057137, 32.462326, 25.062679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184490, -0.465497, 0.865607,
		0.085178, -0.869839, -0.485927,
		0.979136, 0.163380, -0.120826,
		40.350876, 32.511341, 25.026432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.991047, 31.695602, 24.995441>,  <39.665482, 32.396973, 25.111010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.991047, 31.695602, 24.995441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.227234, 31.974468, 25.158077>,  <40.368946, 32.141788, 25.255659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.227234, 31.974468, 25.158077>,  <39.991047, 31.695602, 24.995441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.227234, 31.974468, 25.158077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161860, -0.595846, 0.786618,
		0.790667, -0.398659, -0.464669,
		0.590464, 0.697164, 0.406589,
		40.404373, 32.183617, 25.280054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.347103, 31.178076, 25.238491>,  <39.991047, 31.695602, 24.995441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.347103, 31.178076, 25.238491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.453381, 31.522491, 25.411934>,  <40.517147, 31.729141, 25.515999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.453381, 31.522491, 25.411934>,  <40.347103, 31.178076, 25.238491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.453381, 31.522491, 25.411934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282052, -0.499522, 0.819100,
		0.921874, -0.095333, -0.375579,
		0.265697, 0.861040, 0.433607,
		40.533089, 31.780804, 25.542017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.648628, 30.925331, 25.693075>,  <40.347103, 31.178076, 25.238491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.648628, 30.925331, 25.693075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.679596, 31.307522, 25.806965>,  <40.698177, 31.536837, 25.875299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.679596, 31.307522, 25.806965>,  <40.648628, 30.925331, 25.693075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.679596, 31.307522, 25.806965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201583, -0.294685, 0.934091,
		0.976407, -0.014920, -0.215422,
		0.077418, 0.955478, 0.284725,
		40.702820, 31.594166, 25.892382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.247765, 31.062511, 26.158955>,  <40.648628, 30.925331, 25.693075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.247765, 31.062511, 26.158955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.972195, 31.339100, 26.245903>,  <40.806854, 31.505053, 26.298073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.972195, 31.339100, 26.245903>,  <41.247765, 31.062511, 26.158955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.972195, 31.339100, 26.245903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069379, -0.235607, 0.969369,
		0.721505, 0.682903, 0.114342,
		-0.688924, 0.691472, 0.217370,
		40.765518, 31.546541, 26.311113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.490772, 31.372416, 26.754198>,  <41.247765, 31.062511, 26.158955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.490772, 31.372416, 26.754198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.100071, 31.457951, 26.748123>,  <40.865650, 31.509272, 26.744478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.100071, 31.457951, 26.748123>,  <41.490772, 31.372416, 26.754198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.100071, 31.457951, 26.748123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035695, -0.092369, 0.995085,
		0.211383, 0.972493, 0.097855,
		-0.976751, 0.213837, -0.015188,
		40.807045, 31.522102, 26.743567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.375969, 31.843313, 27.316746>,  <41.490772, 31.372416, 26.754198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.375969, 31.843313, 27.316746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.021420, 31.671455, 27.247761>,  <40.808689, 31.568340, 27.206369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.021420, 31.671455, 27.247761>,  <41.375969, 31.843313, 27.316746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.021420, 31.671455, 27.247761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169428, -0.045637, 0.984485,
		-0.430848, 0.901844, -0.032341,
		-0.886377, -0.429643, -0.172460,
		40.755505, 31.542562, 27.196022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.975330, 32.095440, 27.777033>,  <41.375969, 31.843313, 27.316746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.975330, 32.095440, 27.777033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.762619, 31.773140, 27.672745>,  <40.634991, 31.579760, 27.610172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.762619, 31.773140, 27.672745>,  <40.975330, 32.095440, 27.777033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.762619, 31.773140, 27.672745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200031, -0.179641, 0.963180,
		-0.822922, 0.564350, -0.065647,
		-0.531778, -0.805753, -0.260718,
		40.603085, 31.531414, 27.594530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.443504, 32.083237, 28.296059>,  <40.975330, 32.095440, 27.777033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.443504, 32.083237, 28.296059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.436428, 31.717892, 28.133350>,  <40.432182, 31.498686, 28.035725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.436428, 31.717892, 28.133350>,  <40.443504, 32.083237, 28.296059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.436428, 31.717892, 28.133350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027876, -0.406226, 0.913347,
		-0.999455, 0.027495, -0.018275,
		-0.017689, -0.913359, -0.406771,
		40.431122, 31.443884, 28.011318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.005062, 31.733398, 28.599817>,  <40.443504, 32.083237, 28.296059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.005062, 31.733398, 28.599817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.207783, 31.410782, 28.478065>,  <40.329414, 31.217213, 28.405014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.207783, 31.410782, 28.478065>,  <40.005062, 31.733398, 28.599817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.207783, 31.410782, 28.478065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069011, -0.389907, 0.918265,
		-0.859296, -0.444372, -0.253266,
		0.506802, -0.806539, -0.304379,
		40.359825, 31.168819, 28.386751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.717628, 31.224871, 29.017303>,  <40.005062, 31.733398, 28.599817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.717628, 31.224871, 29.017303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.044506, 31.028526, 28.896473>,  <40.240631, 30.910719, 28.823975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.044506, 31.028526, 28.896473>,  <39.717628, 31.224871, 29.017303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.044506, 31.028526, 28.896473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009981, -0.511977, 0.858941,
		-0.576278, -0.704935, -0.413485,
		0.817193, -0.490862, -0.302077,
		40.289665, 30.881268, 28.805849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.645527, 30.511221, 29.102316>,  <39.717628, 31.224871, 29.017303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.645527, 30.511221, 29.102316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.044403, 30.533676, 29.082470>,  <40.283730, 30.547150, 29.070562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.044403, 30.533676, 29.082470>,  <39.645527, 30.511221, 29.102316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.044403, 30.533676, 29.082470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068731, -0.421883, 0.904041,
		0.029821, -0.904910, -0.424556,
		0.997190, 0.056140, -0.049615,
		40.343559, 30.550518, 29.067585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.956238, 29.786037, 29.178402>,  <39.645527, 30.511221, 29.102316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.956238, 29.786037, 29.178402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.243309, 30.051735, 29.262035>,  <40.415550, 30.211153, 29.312216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.243309, 30.051735, 29.262035>,  <39.956238, 29.786037, 29.178402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.243309, 30.051735, 29.262035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132085, -0.424639, 0.895676,
		0.683734, -0.615191, -0.392491,
		0.717678, 0.664246, 0.209082,
		40.458614, 30.251009, 29.324760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.541241, 29.448029, 29.483826>,  <39.956238, 29.786037, 29.178402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.541241, 29.448029, 29.483826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.573818, 29.828552, 29.602741>,  <40.593365, 30.056866, 29.674091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.573818, 29.828552, 29.602741>,  <40.541241, 29.448029, 29.483826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.573818, 29.828552, 29.602741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035041, -0.300829, 0.953034,
		0.996062, -0.067202, -0.057836,
		0.081444, 0.951308, 0.297289,
		40.598251, 30.113945, 29.691929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.893967, 29.493984, 30.150021>,  <40.541241, 29.448029, 29.483826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.893967, 29.493984, 30.150021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.714630, 29.850433, 30.177982>,  <40.607029, 30.064302, 30.194759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.714630, 29.850433, 30.177982>,  <40.893967, 29.493984, 30.150021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.714630, 29.850433, 30.177982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201872, -0.177131, 0.963261,
		0.870767, 0.417761, 0.259309,
		-0.448344, 0.891123, 0.069906,
		40.580128, 30.117771, 30.198954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.141029, 29.722408, 30.781370>,  <40.893967, 29.493984, 30.150021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.141029, 29.722408, 30.781370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.804878, 29.925064, 30.704353>,  <40.603188, 30.046658, 30.658142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.804878, 29.925064, 30.704353>,  <41.141029, 29.722408, 30.781370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.804878, 29.925064, 30.704353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272655, -0.088159, 0.958064,
		0.468419, 0.857639, 0.212225,
		-0.840383, 0.506640, -0.192544,
		40.552765, 30.077057, 30.646589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.199253, 30.217167, 31.360859>,  <41.141029, 29.722408, 30.781370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.199253, 30.217167, 31.360859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.840828, 30.201195, 31.184006>,  <40.625774, 30.191610, 31.077894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.840828, 30.201195, 31.184006>,  <41.199253, 30.217167, 31.360859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.840828, 30.201195, 31.184006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425876, -0.203817, 0.881526,
		-0.125315, 0.978194, 0.165627,
		-0.896061, -0.039932, -0.442131,
		40.572010, 30.189215, 31.051367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.678871, 30.816137, 31.599594>,  <41.199253, 30.217167, 31.360859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.678871, 30.816137, 31.599594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.511452, 30.471191, 31.485649>,  <40.410999, 30.264225, 31.417282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.511452, 30.471191, 31.485649>,  <40.678871, 30.816137, 31.599594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.511452, 30.471191, 31.485649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359734, -0.130584, 0.923872,
		-0.833912, 0.489160, -0.255565,
		-0.418549, -0.862363, -0.284863,
		40.385887, 30.212482, 31.400190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.980961, 30.790939, 31.793182>,  <40.678871, 30.816137, 31.599594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.980961, 30.790939, 31.793182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.036491, 30.403259, 31.711819>,  <40.069809, 30.170650, 31.663000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.036491, 30.403259, 31.711819>,  <39.980961, 30.790939, 31.793182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.036491, 30.403259, 31.711819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586619, -0.245968, 0.771608,
		-0.797876, 0.012202, -0.602699,
		0.138829, -0.969201, -0.203410,
		40.078140, 30.112499, 31.650795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.349655, 30.607685, 31.749060>,  <39.980961, 30.790939, 31.793182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.349655, 30.607685, 31.749060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.562389, 30.269062, 31.757881>,  <39.690029, 30.065887, 31.763174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.562389, 30.269062, 31.757881>,  <39.349655, 30.607685, 31.749060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.562389, 30.269062, 31.757881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635858, -0.381998, 0.670643,
		-0.559315, -0.370696, -0.741452,
		0.531838, -0.846559, 0.022053,
		39.721939, 30.015095, 31.764498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.851334, 31.121525, 32.099705>,  <39.349655, 30.607685, 31.749060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.851334, 31.121525, 32.099705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.632553, 31.199806, 31.774117>,  <38.501286, 31.246775, 31.578764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.632553, 31.199806, 31.774117>,  <38.851334, 31.121525, 32.099705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.632553, 31.199806, 31.774117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724552, -0.597717, 0.343162,
		-0.419363, 0.777454, 0.468721,
		-0.546955, 0.195704, -0.813966,
		38.468468, 31.258518, 31.529926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.132744, 31.318949, 32.340462>,  <38.851334, 31.121525, 32.099705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.132744, 31.318949, 32.340462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.153507, 31.165771, 31.971535>,  <38.165966, 31.073866, 31.750179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.153507, 31.165771, 31.971535>,  <38.132744, 31.318949, 32.340462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.153507, 31.165771, 31.971535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762500, -0.611608, 0.211020,
		-0.644902, 0.692309, -0.323743,
		0.051912, -0.382941, -0.922313,
		38.169083, 31.050890, 31.694841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.426376, 31.254988, 32.054020>,  <38.132744, 31.318949, 32.340462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.426376, 31.254988, 32.054020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.680122, 30.987698, 31.898556>,  <37.832371, 30.827324, 31.805279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.680122, 30.987698, 31.898556>,  <37.426376, 31.254988, 32.054020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.680122, 30.987698, 31.898556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635560, -0.737042, 0.229853,
		-0.440049, 0.101203, -0.892252,
		0.634366, -0.668226, -0.388655,
		37.870434, 30.787230, 31.781960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.748566, 31.130426, 31.303392>,  <37.426376, 31.254988, 32.054020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.748566, 31.130426, 31.303392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.456520, 31.401867, 31.335484>,  <37.281292, 31.564732, 31.354738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.456520, 31.401867, 31.335484>,  <37.748566, 31.130426, 31.303392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.456520, 31.401867, 31.335484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357427, 0.479326, -0.801557,
		-0.582393, -0.556550, -0.592512,
		-0.730113, 0.678601, 0.080230,
		37.237488, 31.605448, 31.359552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.369331, 31.194927, 30.708050>,  <37.748566, 31.130426, 31.303392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.369331, 31.194927, 30.708050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.334591, 31.547901, 30.892990>,  <37.313747, 31.759686, 31.003954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.334591, 31.547901, 30.892990>,  <37.369331, 31.194927, 30.708050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.334591, 31.547901, 30.892990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172742, 0.470415, -0.865373,
		-0.981131, 0.004712, -0.193288,
		-0.086848, 0.882433, 0.462352,
		37.308537, 31.812632, 31.031696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.780190, 31.672821, 30.339392>,  <37.369331, 31.194927, 30.708050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.780190, 31.672821, 30.339392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.024929, 31.932518, 30.520115>,  <37.171772, 32.088337, 30.628550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.024929, 31.932518, 30.520115>,  <36.780190, 31.672821, 30.339392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.024929, 31.932518, 30.520115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188613, 0.434972, -0.880468,
		-0.768160, 0.623927, 0.143681,
		0.611845, 0.649241, 0.451809,
		37.208481, 32.127289, 30.655657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.549496, 32.390896, 30.248653>,  <36.780190, 31.672821, 30.339392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.549496, 32.390896, 30.248653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.947723, 32.376720, 30.283474>,  <37.186661, 32.368214, 30.304365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.947723, 32.376720, 30.283474>,  <36.549496, 32.390896, 30.248653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.947723, 32.376720, 30.283474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093395, 0.476907, -0.873977,
		-0.010541, 0.878239, 0.478106,
		0.995573, -0.035440, 0.087050,
		37.246395, 32.366089, 30.309589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.841530, 33.026463, 30.020340>,  <36.549496, 32.390896, 30.248653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.841530, 33.026463, 30.020340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.148045, 32.773552, 29.974682>,  <37.331955, 32.621807, 29.947287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.148045, 32.773552, 29.974682>,  <36.841530, 33.026463, 30.020340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.148045, 32.773552, 29.974682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095600, 0.287886, -0.952881,
		0.635341, 0.719272, 0.281050,
		0.766291, -0.632273, -0.114143,
		37.377934, 32.583870, 29.940439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.317360, 33.437061, 29.606873>,  <36.841530, 33.026463, 30.020340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.317360, 33.437061, 29.606873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.447727, 33.060104, 29.576736>,  <37.525948, 32.833931, 29.558655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.447727, 33.060104, 29.576736>,  <37.317360, 33.437061, 29.606873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.447727, 33.060104, 29.576736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300839, 0.178933, -0.936738,
		0.896254, 0.282639, 0.341826,
		0.325922, -0.942390, -0.075341,
		37.545506, 32.777386, 29.554134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.922596, 33.559093, 29.275314>,  <37.317360, 33.437061, 29.606873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.922596, 33.559093, 29.275314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.843052, 33.168530, 29.241680>,  <37.795326, 32.934189, 29.221500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.843052, 33.168530, 29.241680>,  <37.922596, 33.559093, 29.275314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.843052, 33.168530, 29.241680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133596, 0.057989, -0.989338,
		0.970880, -0.207971, 0.118913,
		-0.198858, -0.976415, -0.084085,
		37.783394, 32.875607, 29.216455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.408932, 33.188316, 28.914919>,  <37.922596, 33.559093, 29.275314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.408932, 33.188316, 28.914919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.071396, 32.977905, 28.872532>,  <37.868874, 32.851658, 28.847099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.071396, 32.977905, 28.872532>,  <38.408932, 33.188316, 28.914919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.071396, 32.977905, 28.872532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047909, 0.122835, -0.991270,
		0.534449, -0.841552, -0.078452,
		-0.843842, -0.526025, -0.105967,
		37.818245, 32.820099, 28.840742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.595055, 32.683014, 28.439001>,  <38.408932, 33.188316, 28.914919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.595055, 32.683014, 28.439001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.198135, 32.726723, 28.415638>,  <37.959984, 32.752949, 28.401621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.198135, 32.726723, 28.415638>,  <38.595055, 32.683014, 28.439001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.198135, 32.726723, 28.415638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068898, 0.094827, -0.993107,
		-0.102976, -0.989479, -0.101625,
		-0.992295, 0.109268, -0.058408,
		37.900448, 32.759502, 28.398115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.376961, 32.166790, 27.975595>,  <38.595055, 32.683014, 28.439001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.376961, 32.166790, 27.975595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.084103, 32.437191, 28.009033>,  <37.908390, 32.599430, 28.029097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.084103, 32.437191, 28.009033>,  <38.376961, 32.166790, 27.975595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.084103, 32.437191, 28.009033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146393, -0.036304, -0.988560,
		-0.665236, -0.736003, 0.125541,
		-0.732141, 0.676004, 0.083595,
		37.864460, 32.639992, 28.034111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.706226, 31.888590, 27.580954>,  <38.376961, 32.166790, 27.975595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.706226, 31.888590, 27.580954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.699150, 32.286697, 27.619175>,  <37.694904, 32.525562, 27.642109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.699150, 32.286697, 27.619175>,  <37.706226, 31.888590, 27.580954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.699150, 32.286697, 27.619175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043971, 0.094704, -0.994534,
		-0.998876, -0.021800, 0.042088,
		-0.017695, 0.995267, 0.095556,
		37.693840, 32.585278, 27.647842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.355419, 31.963278, 26.974424>,  <37.706226, 31.888590, 27.580954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.355419, 31.963278, 26.974424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.441395, 32.338959, 27.081528>,  <37.492981, 32.564369, 27.145790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.441395, 32.338959, 27.081528>,  <37.355419, 31.963278, 26.974424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.441395, 32.338959, 27.081528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160637, 0.304433, -0.938891,
		-0.963326, 0.158794, 0.216306,
		0.214941, 0.939204, 0.267760,
		37.505878, 32.620720, 27.161856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.808537, 32.393543, 26.595369>,  <37.355419, 31.963278, 26.974424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.808537, 32.393543, 26.595369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.116127, 32.624001, 26.706169>,  <37.300682, 32.762276, 26.772648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.116127, 32.624001, 26.706169>,  <36.808537, 32.393543, 26.595369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.116127, 32.624001, 26.706169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020696, 0.410638, -0.911564,
		-0.638937, 0.706708, 0.303849,
		0.768981, 0.576143, 0.276998,
		37.346821, 32.796844, 26.789268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.695213, 33.061775, 26.475031>,  <36.808537, 32.393543, 26.595369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.695213, 33.061775, 26.475031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.095108, 33.054562, 26.469326>,  <37.335045, 33.050232, 26.465902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.095108, 33.054562, 26.469326>,  <36.695213, 33.061775, 26.475031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.095108, 33.054562, 26.469326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006366, 0.379007, -0.925372,
		0.022097, 0.925218, 0.378792,
		0.999736, -0.018036, -0.014264,
		37.395027, 33.049152, 26.465046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.911247, 33.728947, 26.119930>,  <36.695213, 33.061775, 26.475031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.911247, 33.728947, 26.119930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.218647, 33.476624, 26.077061>,  <37.403088, 33.325230, 26.051338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.218647, 33.476624, 26.077061>,  <36.911247, 33.728947, 26.119930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.218647, 33.476624, 26.077061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081897, 0.263098, -0.961287,
		0.634584, 0.729974, 0.253852,
		0.768502, -0.630807, -0.107176,
		37.449196, 33.287380, 26.044909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.342010, 34.077541, 25.853827>,  <36.911247, 33.728947, 26.119930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.342010, 34.077541, 25.853827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.489010, 33.717098, 25.761787>,  <37.577209, 33.500832, 25.706564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.489010, 33.717098, 25.761787>,  <37.342010, 34.077541, 25.853827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.489010, 33.717098, 25.761787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025092, 0.256927, -0.966105,
		0.929687, 0.349264, 0.117030,
		0.367494, -0.901112, -0.230098,
		37.599258, 33.446766, 25.692759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963261, 34.226349, 25.376011>,  <37.342010, 34.077541, 25.853827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.963261, 34.226349, 25.376011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.843472, 33.846977, 25.334454>,  <37.771599, 33.619354, 25.309519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.843472, 33.846977, 25.334454>,  <37.963261, 34.226349, 25.376011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.843472, 33.846977, 25.334454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001820, 0.109456, -0.993990,
		0.954103, -0.297484, -0.034505,
		-0.299473, -0.948431, -0.103891,
		37.753628, 33.562447, 25.303286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512554, 34.002018, 25.075098>,  <37.963261, 34.226349, 25.376011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.512554, 34.002018, 25.075098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.198139, 33.765148, 25.004143>,  <38.009491, 33.623024, 24.961569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.198139, 33.765148, 25.004143>,  <38.512554, 34.002018, 25.075098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.198139, 33.765148, 25.004143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180086, 0.055150, -0.982104,
		0.591363, -0.803918, 0.063293,
		-0.786040, -0.592178, -0.177388,
		37.962326, 33.587494, 24.950926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.735928, 33.662052, 24.548590>,  <38.512554, 34.002018, 25.075098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.735928, 33.662052, 24.548590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.350914, 33.555157, 24.530235>,  <38.119904, 33.491020, 24.519222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.350914, 33.555157, 24.530235>,  <38.735928, 33.662052, 24.548590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.350914, 33.555157, 24.530235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076330, -0.104671, -0.991573,
		0.260187, -0.957928, 0.121148,
		-0.962536, -0.267241, -0.045885,
		38.062153, 33.474983, 24.516470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.845730, 33.080276, 24.205408>,  <38.735928, 33.662052, 24.548590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.845730, 33.080276, 24.205408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.492649, 33.263313, 24.162617>,  <38.280800, 33.373135, 24.136942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.492649, 33.263313, 24.162617>,  <38.845730, 33.080276, 24.205408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.492649, 33.263313, 24.162617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109940, -0.020240, -0.993732,
		-0.456885, -0.888934, -0.032441,
		-0.882706, 0.457588, -0.106977,
		38.227837, 33.400589, 24.130524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.431431, 32.782047, 23.644133>,  <38.845730, 33.080276, 24.205408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.431431, 32.782047, 23.644133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.259705, 33.141048, 23.684498>,  <38.156670, 33.356449, 23.708717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.259705, 33.141048, 23.684498>,  <38.431431, 32.782047, 23.644133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.259705, 33.141048, 23.684498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199492, 0.014739, -0.979789,
		-0.880846, -0.440771, 0.172716,
		-0.429317, 0.897499, 0.100913,
		38.130909, 33.410297, 23.714771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.919247, 32.625935, 23.185993>,  <38.431431, 32.782047, 23.644133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.919247, 32.625935, 23.185993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.957588, 33.020081, 23.242371>,  <37.980591, 33.256569, 23.276197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.957588, 33.020081, 23.242371>,  <37.919247, 32.625935, 23.185993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.957588, 33.020081, 23.242371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122805, 0.152219, -0.980688,
		-0.987791, 0.076692, 0.135598,
		0.095851, 0.985367, 0.140942,
		37.986343, 33.315689, 23.284653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.457558, 32.865089, 22.655930>,  <37.919247, 32.625935, 23.185993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.457558, 32.865089, 22.655930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.708797, 33.155041, 22.769100>,  <37.859543, 33.329010, 22.837002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.708797, 33.155041, 22.769100>,  <37.457558, 32.865089, 22.655930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.708797, 33.155041, 22.769100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103641, 0.282426, -0.953674,
		-0.771201, 0.628324, 0.102265,
		0.628099, 0.724875, 0.282927,
		37.897228, 33.372505, 22.853979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.253883, 33.467892, 22.373131>,  <37.457558, 32.865089, 22.655930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.253883, 33.467892, 22.373131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.642365, 33.518337, 22.453979>,  <37.875454, 33.548607, 22.502489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.642365, 33.518337, 22.453979>,  <37.253883, 33.467892, 22.373131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.642365, 33.518337, 22.453979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131998, 0.421416, -0.897209,
		-0.198330, 0.898055, 0.392635,
		0.971206, 0.126116, 0.202121,
		37.933727, 33.556171, 22.514616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.439114, 34.012093, 22.011532>,  <37.253883, 33.467892, 22.373131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.439114, 34.012093, 22.011532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.808804, 33.878944, 22.086376>,  <38.030617, 33.799057, 22.131283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.808804, 33.878944, 22.086376>,  <37.439114, 34.012093, 22.011532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.808804, 33.878944, 22.086376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264866, 0.205864, -0.942054,
		0.275063, 0.920227, 0.278430,
		0.924222, -0.332870, 0.187111,
		38.086071, 33.779083, 22.142509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.583023, 34.479603, 22.516037>,  <37.439114, 34.012093, 22.011532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.583023, 34.479603, 22.516037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.227440, 34.488068, 22.699039>,  <37.014091, 34.493145, 22.808842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.227440, 34.488068, 22.699039>,  <37.583023, 34.479603, 22.516037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.227440, 34.488068, 22.699039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082237, 0.990072, 0.113997,
		-0.450553, 0.138962, -0.881868,
		-0.888954, 0.021160, 0.457508,
		36.960754, 34.494415, 22.836292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.149094, 34.853535, 21.998621>,  <37.583023, 34.479603, 22.516037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.149094, 34.853535, 21.998621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.773537, 34.989632, 22.019474>,  <36.548203, 35.071289, 22.031986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.773537, 34.989632, 22.019474>,  <37.149094, 34.853535, 21.998621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.773537, 34.989632, 22.019474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032549, -0.238532, 0.970589,
		0.342671, 0.909581, 0.235031,
		-0.938892, 0.340242, 0.052132,
		36.491871, 35.091705, 22.035114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050449, 35.549267, 22.335981>,  <37.149094, 34.853535, 21.998621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.050449, 35.549267, 22.335981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.756191, 35.279964, 22.365765>,  <36.579636, 35.118382, 22.383635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.756191, 35.279964, 22.365765>,  <37.050449, 35.549267, 22.335981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.756191, 35.279964, 22.365765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046511, 0.059454, 0.997147,
		-0.675765, 0.737012, -0.012424,
		-0.735648, -0.673259, 0.074456,
		36.535496, 35.077988, 22.388102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.334446, 35.799969, 22.506922>,  <37.050449, 35.549267, 22.335981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.334446, 35.799969, 22.506922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.470280, 35.452766, 22.651836>,  <36.551781, 35.244446, 22.738785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.470280, 35.452766, 22.651836>,  <36.334446, 35.799969, 22.506922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.470280, 35.452766, 22.651836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055943, 0.403131, 0.913431,
		-0.938912, -0.289915, 0.185454,
		0.339580, -0.868006, 0.362286,
		36.572155, 35.192364, 22.760523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.990501, 35.665943, 23.049662>,  <36.334446, 35.799969, 22.506922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.990501, 35.665943, 23.049662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.352058, 35.500927, 23.094875>,  <36.568993, 35.401917, 23.122004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.352058, 35.500927, 23.094875>,  <35.990501, 35.665943, 23.049662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.352058, 35.500927, 23.094875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035073, 0.191883, 0.980791,
		-0.426310, -0.890499, 0.158973,
		0.903897, -0.412545, 0.113034,
		36.623226, 35.377163, 23.128786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.757790, 35.415138, 23.813555>,  <35.990501, 35.665943, 23.049662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.757790, 35.415138, 23.813555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.862942, 35.346416, 24.193317>,  <35.926033, 35.305183, 24.421175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.862942, 35.346416, 24.193317>,  <35.757790, 35.415138, 23.813555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.862942, 35.346416, 24.193317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445401, -0.894501, -0.038540,
		0.855868, -0.412736, -0.311671,
		0.262883, -0.171803, 0.949408,
		35.941807, 35.294876, 24.478140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.089817, 34.749619, 23.814285>,  <35.757790, 35.415138, 23.813555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.089817, 34.749619, 23.814285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.921463, 34.838936, 24.165966>,  <35.820450, 34.892529, 24.376974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.921463, 34.838936, 24.165966>,  <36.089817, 34.749619, 23.814285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.921463, 34.838936, 24.165966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439232, -0.898196, 0.017855,
		0.793682, -0.378658, 0.476117,
		-0.420885, 0.223297, 0.879201,
		35.795197, 34.905926, 24.429726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.308960, 34.306137, 24.382830>,  <36.089817, 34.749619, 23.814285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.308960, 34.306137, 24.382830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.944344, 34.454704, 24.453411>,  <35.725574, 34.543842, 24.495760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.944344, 34.454704, 24.453411>,  <36.308960, 34.306137, 24.382830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.944344, 34.454704, 24.453411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368227, -0.928296, 0.051723,
		0.183012, -0.017827, 0.982949,
		-0.911546, 0.371415, 0.176454,
		35.670879, 34.566128, 24.506348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.035461, 33.908573, 24.918682>,  <36.308960, 34.306137, 24.382830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.035461, 33.908573, 24.918682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.705196, 34.071026, 24.762047>,  <35.507038, 34.168499, 24.668066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.705196, 34.071026, 24.762047>,  <36.035461, 33.908573, 24.918682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.705196, 34.071026, 24.762047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525247, -0.806708, 0.270810,
		-0.205911, 0.429277, 0.879387,
		-0.825661, 0.406133, -0.391586,
		35.457497, 34.192867, 24.644571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.490524, 33.701488, 25.343702>,  <36.035461, 33.908573, 24.918682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.490524, 33.701488, 25.343702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.296028, 33.852238, 25.028351>,  <35.179333, 33.942688, 24.839140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.296028, 33.852238, 25.028351>,  <35.490524, 33.701488, 25.343702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.296028, 33.852238, 25.028351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675734, -0.734203, 0.065790,
		-0.554036, 0.564723, 0.611663,
		-0.486238, 0.376872, -0.788378,
		35.150158, 33.965298, 24.791838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.811844, 33.753429, 25.548267>,  <35.490524, 33.701488, 25.343702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.811844, 33.753429, 25.548267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.811703, 33.723923, 25.149357>,  <34.811619, 33.706219, 24.910011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.811703, 33.723923, 25.149357>,  <34.811844, 33.753429, 25.548267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.811703, 33.723923, 25.149357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579108, -0.813014, 0.060337,
		-0.815251, 0.577552, -0.042434,
		-0.000349, -0.073764, -0.997275,
		34.811600, 33.701794, 24.850174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.122219, 33.805969, 25.293421>,  <34.811844, 33.753429, 25.548267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.122219, 33.805969, 25.293421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.323986, 33.603878, 25.013332>,  <34.445045, 33.482624, 24.845280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.323986, 33.603878, 25.013332>,  <34.122219, 33.805969, 25.293421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.323986, 33.603878, 25.013332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614533, -0.779725, 0.119908,
		-0.606560, 0.369825, -0.703786,
		0.504415, -0.505231, -0.700220,
		34.475311, 33.452309, 24.803267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.596958, 33.536381, 24.865597>,  <34.122219, 33.805969, 25.293421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.596958, 33.536381, 24.865597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926624, 33.324661, 24.785015>,  <34.124424, 33.197628, 24.736666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926624, 33.324661, 24.785015>,  <33.596958, 33.536381, 24.865597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.926624, 33.324661, 24.785015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521425, -0.848008, 0.094861,
		-0.221044, 0.026861, -0.974894,
		0.824170, -0.529302, -0.201453,
		34.173874, 33.165871, 24.724579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.393948, 33.134014, 24.371168>,  <33.596958, 33.536381, 24.865597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.393948, 33.134014, 24.371168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.720436, 32.959892, 24.523109>,  <33.916328, 32.855419, 24.614275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.720436, 32.959892, 24.523109>,  <33.393948, 33.134014, 24.371168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.720436, 32.959892, 24.523109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459445, -0.887698, -0.030035,
		0.350271, -0.150007, -0.924559,
		0.816224, -0.435304, 0.379855,
		33.965302, 32.829300, 24.637066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.466042, 32.446960, 23.996323>,  <33.393948, 33.134014, 24.371168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.466042, 32.446960, 23.996323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.665524, 32.398880, 24.339680>,  <33.785213, 32.370033, 24.545694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.665524, 32.398880, 24.339680>,  <33.466042, 32.446960, 23.996323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.665524, 32.398880, 24.339680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302784, -0.952107, 0.042587,
		0.812165, -0.281147, -0.511219,
		0.498708, -0.120201, 0.858395,
		33.815136, 32.362820, 24.597198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.769390, 31.755306, 24.015629>,  <33.466042, 32.446960, 23.996323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.769390, 31.755306, 24.015629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.754131, 31.880764, 24.395138>,  <33.744976, 31.956039, 24.622843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.754131, 31.880764, 24.395138>,  <33.769390, 31.755306, 24.015629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.754131, 31.880764, 24.395138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223383, -0.928113, 0.297835,
		0.973984, -0.200580, 0.105464,
		-0.038143, 0.313646, 0.948774,
		33.742687, 31.974857, 24.679770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.929001, 31.127470, 24.257463>,  <33.769390, 31.755306, 24.015629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.929001, 31.127470, 24.257463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.864254, 31.332935, 24.594498>,  <33.825405, 31.456215, 24.796719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.864254, 31.332935, 24.594498>,  <33.929001, 31.127470, 24.257463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.864254, 31.332935, 24.594498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176265, -0.855162, 0.487472,
		0.970943, -0.069615, 0.228960,
		-0.161863, 0.513665, 0.842584,
		33.815697, 31.487036, 24.847273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.228615, 30.727160, 24.805473>,  <33.929001, 31.127470, 24.257463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.228615, 30.727160, 24.805473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.936703, 30.936867, 24.981003>,  <33.761555, 31.062691, 25.086321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.936703, 30.936867, 24.981003>,  <34.228615, 30.727160, 24.805473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.936703, 30.936867, 24.981003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157138, -0.753290, 0.638641,
		0.665380, 0.397111, 0.632118,
		-0.729779, 0.524268, 0.438822,
		33.717770, 31.094147, 25.112650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.353657, 30.700394, 25.475981>,  <34.228615, 30.727160, 24.805473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.353657, 30.700394, 25.475981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.973850, 30.825073, 25.461819>,  <33.745964, 30.899881, 25.453321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.973850, 30.825073, 25.461819>,  <34.353657, 30.700394, 25.475981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.973850, 30.825073, 25.461819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225930, -0.601174, 0.766515,
		0.217637, 0.735821, 0.641250,
		-0.949521, 0.311699, -0.035407,
		33.688995, 30.918583, 25.451197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.160782, 30.935078, 26.119385>,  <34.353657, 30.700394, 25.475981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.160782, 30.935078, 26.119385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.810226, 30.850796, 25.946159>,  <33.599892, 30.800226, 25.842224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.810226, 30.850796, 25.946159>,  <34.160782, 30.935078, 26.119385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.810226, 30.850796, 25.946159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195235, -0.666572, 0.719420,
		-0.440253, 0.715042, 0.543040,
		-0.876390, -0.210707, -0.433062,
		33.547310, 30.787584, 25.816240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.680630, 31.104364, 26.611956>,  <34.160782, 30.935078, 26.119385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.680630, 31.104364, 26.611956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.490780, 30.842999, 26.376064>,  <33.376869, 30.686180, 26.234529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.490780, 30.842999, 26.376064>,  <33.680630, 31.104364, 26.611956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.490780, 30.842999, 26.376064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195902, -0.574777, 0.794515,
		-0.858108, 0.492629, 0.144801,
		-0.474629, -0.653413, -0.589728,
		33.348392, 30.646975, 26.199146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.151524, 30.900949, 27.087835>,  <33.680630, 31.104364, 26.611956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.151524, 30.900949, 27.087835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.175888, 30.631443, 26.793262>,  <33.190506, 30.469740, 26.616520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.175888, 30.631443, 26.793262>,  <33.151524, 30.900949, 27.087835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.175888, 30.631443, 26.793262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260827, -0.722908, 0.639822,
		-0.963462, 0.153112, -0.219766,
		0.060907, -0.673766, -0.736431,
		33.194160, 30.429314, 26.572332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.403301, 30.505733, 26.871588>,  <33.151524, 30.900949, 27.087835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.403301, 30.505733, 26.871588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.717632, 30.267548, 26.804787>,  <32.906231, 30.124636, 26.764706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.717632, 30.267548, 26.804787>,  <32.403301, 30.505733, 26.871588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.717632, 30.267548, 26.804787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437298, -0.725967, 0.530794,
		-0.437308, -0.344084, -0.830884,
		0.785832, -0.595465, -0.167004,
		32.953381, 30.088909, 26.754686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.189220, 29.785547, 27.007067>,  <32.403301, 30.505733, 26.871588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.189220, 29.785547, 27.007067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.577156, 29.702511, 26.955956>,  <32.809917, 29.652689, 26.925289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.577156, 29.702511, 26.955956>,  <32.189220, 29.785547, 27.007067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.577156, 29.702511, 26.955956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044896, -0.667342, 0.743397,
		-0.239594, -0.715235, -0.656531,
		0.969835, -0.207589, -0.127780,
		32.868107, 29.640234, 26.917622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.300167, 29.003811, 26.866377>,  <32.189220, 29.785547, 27.007067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.300167, 29.003811, 26.866377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.642853, 29.143337, 27.018356>,  <32.848465, 29.227053, 27.109545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.642853, 29.143337, 27.018356>,  <32.300167, 29.003811, 26.866377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.642853, 29.143337, 27.018356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025023, -0.707667, 0.706103,
		0.515180, -0.614437, -0.597542,
		0.856716, 0.348818, 0.379951,
		32.899868, 29.247982, 27.132341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.645027, 28.386621, 26.886564>,  <32.300167, 29.003811, 26.866377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.645027, 28.386621, 26.886564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.831974, 28.636227, 27.137062>,  <32.944141, 28.785990, 27.287361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.831974, 28.636227, 27.137062>,  <32.645027, 28.386621, 26.886564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.831974, 28.636227, 27.137062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049146, -0.725611, 0.686348,
		0.882699, -0.289996, -0.369791,
		0.467363, 0.624012, 0.626243,
		32.972183, 28.823431, 27.324936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.104794, 27.962513, 27.195171>,  <32.645027, 28.386621, 26.886564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.104794, 27.962513, 27.195171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.127998, 28.280682, 27.436481>,  <33.141922, 28.471582, 27.581268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.127998, 28.280682, 27.436481>,  <33.104794, 27.962513, 27.195171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.127998, 28.280682, 27.436481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116546, -0.605556, 0.787222,
		0.991490, 0.024641, -0.127833,
		0.058012, 0.795421, 0.603275,
		33.145401, 28.519308, 27.617464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.576721, 27.710346, 27.635210>,  <33.104794, 27.962513, 27.195171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.576721, 27.710346, 27.635210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.411064, 28.025879, 27.816864>,  <33.311672, 28.215199, 27.925856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.411064, 28.025879, 27.816864>,  <33.576721, 27.710346, 27.635210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.411064, 28.025879, 27.816864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050328, -0.518012, 0.853891,
		0.908822, 0.330773, 0.254229,
		-0.414138, 0.788830, 0.454134,
		33.286823, 28.262527, 27.953104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977341, 27.885056, 28.339584>,  <33.576721, 27.710346, 27.635210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.977341, 27.885056, 28.339584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.597160, 28.008560, 28.354103>,  <33.369053, 28.082663, 28.362814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.597160, 28.008560, 28.354103>,  <33.977341, 27.885056, 28.339584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.597160, 28.008560, 28.354103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103278, -0.423704, 0.899894,
		0.293232, 0.851552, 0.434596,
		-0.950446, 0.308762, 0.036297,
		33.312027, 28.101189, 28.364992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.780144, 28.048431, 29.080784>,  <33.977341, 27.885056, 28.339584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.780144, 28.048431, 29.080784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.432552, 27.987450, 28.892471>,  <33.223999, 27.950861, 28.779484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.432552, 27.987450, 28.892471>,  <33.780144, 28.048431, 29.080784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.432552, 27.987450, 28.892471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346079, -0.492771, 0.798377,
		-0.353705, 0.856700, 0.375445,
		-0.868978, -0.152456, -0.470781,
		33.171860, 27.941713, 28.751238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.354385, 28.016962, 29.595049>,  <33.780144, 28.048431, 29.080784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.354385, 28.016962, 29.595049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.141796, 27.828114, 29.313728>,  <33.014240, 27.714806, 29.144936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.141796, 27.828114, 29.313728>,  <33.354385, 28.016962, 29.595049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.141796, 27.828114, 29.313728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287779, -0.680254, 0.674119,
		-0.796690, 0.560675, 0.225674,
		-0.531478, -0.472120, -0.703302,
		32.982353, 27.686478, 29.102737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.823174, 27.785027, 30.015104>,  <33.354385, 28.016962, 29.595049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.823174, 27.785027, 30.015104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.834053, 27.560905, 29.683968>,  <32.840580, 27.426434, 29.485285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.834053, 27.560905, 29.683968>,  <32.823174, 27.785027, 30.015104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.834053, 27.560905, 29.683968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269469, -0.801601, 0.533687,
		-0.962625, 0.208564, -0.172784,
		0.027196, -0.560301, -0.827843,
		32.842213, 27.392815, 29.435616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.248463, 27.328829, 30.188662>,  <32.823174, 27.785027, 30.015104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.248463, 27.328829, 30.188662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.456783, 27.166058, 29.888481>,  <32.581776, 27.068396, 29.708372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.456783, 27.166058, 29.888481>,  <32.248463, 27.328829, 30.188662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.456783, 27.166058, 29.888481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320499, -0.907977, 0.269924,
		-0.791232, 0.099943, -0.603294,
		0.520800, -0.406928, -0.750452,
		32.613022, 27.043980, 29.663345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.849489, 26.817852, 30.011265>,  <32.248463, 27.328829, 30.188662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.849489, 26.817852, 30.011265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.202583, 26.710758, 29.856812>,  <32.414440, 26.646502, 29.764139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.202583, 26.710758, 29.856812>,  <31.849489, 26.817852, 30.011265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.202583, 26.710758, 29.856812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169507, -0.947898, 0.269735,
		-0.438232, -0.172652, -0.882125,
		0.882734, -0.267733, -0.386134,
		32.467403, 26.630438, 29.740971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.729486, 26.231777, 29.658154>,  <31.849489, 26.817852, 30.011265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.729486, 26.231777, 29.658154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.121540, 26.195034, 29.728462>,  <32.356773, 26.172987, 29.770647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.121540, 26.195034, 29.728462>,  <31.729486, 26.231777, 29.658154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.121540, 26.195034, 29.728462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140582, -0.946941, 0.289030,
		0.139896, -0.307999, -0.941045,
		0.980136, -0.091860, 0.175772,
		32.415581, 26.167477, 29.781195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.865545, 25.591961, 29.454247>,  <31.729486, 26.231777, 29.658154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.865545, 25.591961, 29.454247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.165455, 25.682850, 29.702827>,  <32.345402, 25.737383, 29.851976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.165455, 25.682850, 29.702827>,  <31.865545, 25.591961, 29.454247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.165455, 25.682850, 29.702827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048340, -0.917871, 0.393925,
		0.659923, -0.325397, -0.677213,
		0.749776, 0.227224, 0.621454,
		32.390388, 25.751017, 29.889263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.272186, 24.917063, 29.567364>,  <31.865545, 25.591961, 29.454247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.272186, 24.917063, 29.567364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.344997, 25.173878, 29.865265>,  <32.388683, 25.327967, 30.044006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.344997, 25.173878, 29.865265>,  <32.272186, 24.917063, 29.567364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.344997, 25.173878, 29.865265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104545, -0.740476, 0.663902,
		0.977720, -0.198707, -0.067663,
		0.182025, 0.642036, 0.744752,
		32.399605, 25.366489, 30.088690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.790668, 24.581987, 29.992336>,  <32.272186, 24.917063, 29.567364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.790668, 24.581987, 29.992336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.622482, 24.866665, 30.217442>,  <32.521572, 25.037472, 30.352505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.622482, 24.866665, 30.217442>,  <32.790668, 24.581987, 29.992336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.622482, 24.866665, 30.217442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125322, -0.659864, 0.740860,
		0.898612, 0.240979, 0.366641,
		-0.420464, 0.711694, 0.562762,
		32.496342, 25.080173, 30.386271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.066753, 24.503729, 30.650394>,  <32.790668, 24.581987, 29.992336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.066753, 24.503729, 30.650394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.724880, 24.693932, 30.733738>,  <32.519756, 24.808054, 30.783745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.724880, 24.693932, 30.733738>,  <33.066753, 24.503729, 30.650394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.724880, 24.693932, 30.733738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222910, -0.698587, 0.679917,
		0.468864, 0.534666, 0.703063,
		-0.854680, 0.475508, 0.208360,
		32.468475, 24.836584, 30.796246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.966785, 24.287045, 31.357660>,  <33.066753, 24.503729, 30.650394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.966785, 24.287045, 31.357660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.624130, 24.490238, 31.321613>,  <32.418537, 24.612154, 31.299986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.624130, 24.490238, 31.321613>,  <32.966785, 24.287045, 31.357660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.624130, 24.490238, 31.321613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259404, -0.273110, 0.926348,
		0.445959, 0.816922, 0.365730,
		-0.856639, 0.507985, -0.090117,
		32.367138, 24.642633, 31.294579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.853382, 24.737909, 32.004398>,  <32.966785, 24.287045, 31.357660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.853382, 24.737909, 32.004398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.504593, 24.631775, 31.839836>,  <32.295319, 24.568094, 31.741098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.504593, 24.631775, 31.839836>,  <32.853382, 24.737909, 32.004398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.504593, 24.631775, 31.839836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212006, -0.552814, 0.805885,
		-0.441261, 0.789933, 0.425787,
		-0.871976, -0.265336, -0.411406,
		32.243000, 24.552174, 31.716413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.473114, 24.640068, 32.481735>,  <32.853382, 24.737909, 32.004398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.473114, 24.640068, 32.481735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.245651, 24.436165, 32.223503>,  <32.109173, 24.313824, 32.068565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.245651, 24.436165, 32.223503>,  <32.473114, 24.640068, 32.481735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.245651, 24.436165, 32.223503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279049, -0.618741, 0.734364,
		-0.773794, 0.597752, 0.209607,
		-0.568661, -0.509756, -0.645580,
		32.075054, 24.283237, 32.029827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.836504, 24.697264, 32.812664>,  <32.473114, 24.640068, 32.481735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.836504, 24.697264, 32.812664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.861738, 24.387272, 32.561131>,  <31.876879, 24.201277, 32.410210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.861738, 24.387272, 32.561131>,  <31.836504, 24.697264, 32.812664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.861738, 24.387272, 32.561131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240160, -0.623359, 0.744142,
		-0.968681, 0.104076, -0.225444,
		0.063085, -0.774979, -0.628831,
		31.880663, 24.154778, 32.372482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.328590, 24.261526, 33.022011>,  <31.836504, 24.697264, 32.812664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.328590, 24.261526, 33.022011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.530666, 24.012886, 32.782547>,  <31.651911, 23.863703, 32.638866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.530666, 24.012886, 32.782547>,  <31.328590, 24.261526, 33.022011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.530666, 24.012886, 32.782547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073747, -0.722250, 0.687689,
		-0.859853, -0.303262, -0.410712,
		0.505187, -0.621600, -0.598665,
		31.682222, 23.826406, 32.602947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.887169, 23.697296, 32.902653>,  <31.328590, 24.261526, 33.022011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.887169, 23.697296, 32.902653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.249016, 23.540325, 32.836121>,  <31.466124, 23.446142, 32.796200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.249016, 23.540325, 32.836121>,  <30.887169, 23.697296, 32.902653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.249016, 23.540325, 32.836121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138619, -0.639910, 0.755844,
		-0.403050, -0.660695, -0.633272,
		0.904619, -0.392426, -0.166331,
		31.520401, 23.422598, 32.786221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.855352, 22.966181, 32.780674>,  <30.887169, 23.697296, 32.902653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.855352, 22.966181, 32.780674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.243727, 22.983871, 32.874763>,  <31.476751, 22.994486, 32.931217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.243727, 22.983871, 32.874763>,  <30.855352, 22.966181, 32.780674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.243727, 22.983871, 32.874763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137783, -0.700330, 0.700395,
		0.195713, -0.712448, -0.673881,
		0.970934, 0.044227, 0.235227,
		31.535007, 22.997139, 32.945332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.087315, 22.327570, 32.807697>,  <30.855352, 22.966181, 32.780674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.087315, 22.327570, 32.807697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.376087, 22.520824, 33.005848>,  <31.549351, 22.636778, 33.124737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.376087, 22.520824, 33.005848>,  <31.087315, 22.327570, 32.807697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.376087, 22.520824, 33.005848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072353, -0.659263, 0.748423,
		0.688174, -0.576150, -0.440985,
		0.721929, 0.483138, 0.495374,
		31.592667, 22.665766, 33.154461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.572334, 21.759354, 33.106586>,  <31.087315, 22.327570, 32.807697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.572334, 21.759354, 33.106586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.645988, 22.073429, 33.343082>,  <31.690182, 22.261875, 33.484982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.645988, 22.073429, 33.343082>,  <31.572334, 21.759354, 33.106586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.645988, 22.073429, 33.343082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222521, -0.619214, 0.753033,
		0.957381, -0.007097, -0.288742,
		0.184137, 0.785191, 0.591244,
		31.701229, 22.308987, 33.520454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.260365, 21.679909, 33.464172>,  <31.572334, 21.759354, 33.106586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.260365, 21.679909, 33.464172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.123566, 21.962467, 33.712059>,  <32.041489, 22.132002, 33.860790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.123566, 21.962467, 33.712059>,  <32.260365, 21.679909, 33.464172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.123566, 21.962467, 33.712059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436311, -0.464715, 0.770501,
		0.832270, 0.533893, -0.149280,
		-0.341993, 0.706398, 0.619712,
		32.020969, 22.174387, 33.897972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.776463, 21.898306, 33.941029>,  <32.260365, 21.679909, 33.464172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.776463, 21.898306, 33.941029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.410534, 21.927032, 34.099995>,  <32.190975, 21.944267, 34.195374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.410534, 21.927032, 34.099995>,  <32.776463, 21.898306, 33.941029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.410534, 21.927032, 34.099995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269144, -0.625254, 0.732542,
		0.301093, 0.777110, 0.552670,
		-0.914825, 0.071815, 0.397414,
		32.136086, 21.948578, 34.219219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.847996, 22.090168, 34.582302>,  <32.776463, 21.898306, 33.941029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.847996, 22.090168, 34.582302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.513493, 21.873989, 34.545223>,  <32.312790, 21.744282, 34.522976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.513493, 21.873989, 34.545223>,  <32.847996, 22.090168, 34.582302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.513493, 21.873989, 34.545223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294422, -0.585164, 0.755579,
		-0.462593, 0.604565, 0.648466,
		-0.836255, -0.540448, -0.092696,
		32.262615, 21.711855, 34.517414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.559952, 21.936253, 35.293480>,  <32.847996, 22.090168, 34.582302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.559952, 21.936253, 35.293480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.493855, 21.641148, 35.031670>,  <32.454197, 21.464085, 34.874584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.493855, 21.641148, 35.031670>,  <32.559952, 21.936253, 35.293480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.493855, 21.641148, 35.031670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424072, -0.652315, 0.628210,
		-0.890425, -0.173755, 0.420658,
		-0.165247, -0.737763, -0.654522,
		32.444279, 21.419819, 34.835312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.272484, 21.423031, 35.714302>,  <32.559952, 21.936253, 35.293480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.272484, 21.423031, 35.714302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.412010, 21.271355, 35.371479>,  <32.495724, 21.180349, 35.165787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.412010, 21.271355, 35.371479>,  <32.272484, 21.423031, 35.714302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.412010, 21.271355, 35.371479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436932, -0.743230, 0.506656,
		-0.829108, -0.551203, -0.093568,
		0.348813, -0.379189, -0.857056,
		32.516655, 21.157598, 35.114361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.578089, 21.572441, 35.513443>,  <32.272484, 21.423031, 35.714302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.578089, 21.572441, 35.513443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.630846, 21.300217, 35.225155>,  <31.662500, 21.136881, 35.052181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.630846, 21.300217, 35.225155>,  <31.578089, 21.572441, 35.513443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.630846, 21.300217, 35.225155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734253, 0.421379, -0.532272,
		0.665940, 0.599395, -0.444127,
		0.131895, -0.680563, -0.720721,
		31.670414, 21.096048, 35.008938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.879311, 22.004969, 35.749847>,  <31.578089, 21.572441, 35.513443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.879311, 22.004969, 35.749847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.552443, 22.201019, 35.871178>,  <30.356321, 22.318649, 35.943977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.552443, 22.201019, 35.871178>,  <30.879311, 22.004969, 35.749847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.552443, 22.201019, 35.871178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404679, 0.862592, -0.303593,
		-0.410448, -0.125337, -0.903229,
		-0.817170, 0.490127, 0.303328,
		30.307291, 22.348057, 35.962177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.783646, 22.491220, 35.337727>,  <30.879311, 22.004969, 35.749847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.783646, 22.491220, 35.337727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.570599, 22.662155, 35.629948>,  <30.442770, 22.764717, 35.805279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.570599, 22.662155, 35.629948>,  <30.783646, 22.491220, 35.337727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.570599, 22.662155, 35.629948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389237, 0.890149, -0.236918,
		-0.751541, 0.158170, -0.640444,
		-0.532617, 0.427338, 0.730548,
		30.410814, 22.790356, 35.849113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.192633, 22.939430, 35.139767>,  <30.783646, 22.491220, 35.337727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.192633, 22.939430, 35.139767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.394569, 23.048977, 35.467213>,  <30.515732, 23.114704, 35.663681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.394569, 23.048977, 35.467213>,  <30.192633, 22.939430, 35.139767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.394569, 23.048977, 35.467213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323869, 0.818966, -0.473713,
		-0.800152, 0.504274, 0.324752,
		0.504842, 0.273865, 0.818616,
		30.546022, 23.131136, 35.712799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.943476, 23.635530, 35.385521>,  <30.192633, 22.939430, 35.139767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.943476, 23.635530, 35.385521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.326113, 23.599018, 35.496227>,  <30.555695, 23.577110, 35.562649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.326113, 23.599018, 35.496227>,  <29.943476, 23.635530, 35.385521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.326113, 23.599018, 35.496227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163155, 0.954645, -0.249066,
		-0.241475, 0.283410, 0.928099,
		0.956593, -0.091281, 0.276762,
		30.613091, 23.571634, 35.579254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.031673, 24.083420, 35.884396>,  <29.943476, 23.635530, 35.385521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.031673, 24.083420, 35.884396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.369890, 24.003544, 35.686329>,  <30.572821, 23.955618, 35.567490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.369890, 24.003544, 35.686329>,  <30.031673, 24.083420, 35.884396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.369890, 24.003544, 35.686329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034234, 0.945793, -0.322961,
		0.532813, 0.256125, 0.806542,
		0.845540, -0.199689, -0.495162,
		30.623552, 23.943638, 35.537781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.495409, 24.644392, 36.086113>,  <30.031673, 24.083420, 35.884396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.495409, 24.644392, 36.086113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.663353, 24.528629, 35.742027>,  <30.764118, 24.459171, 35.535576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.663353, 24.528629, 35.742027>,  <30.495409, 24.644392, 36.086113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.663353, 24.528629, 35.742027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063064, 0.954810, -0.290451,
		0.905396, 0.067700, 0.419135,
		0.419858, -0.289406, -0.860212,
		30.789310, 24.441807, 35.483963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.184208, 25.094851, 35.986588>,  <30.495409, 24.644392, 36.086113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.184208, 25.094851, 35.986588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.057014, 24.938873, 35.640911>,  <30.980700, 24.845287, 35.433506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.057014, 24.938873, 35.640911>,  <31.184208, 25.094851, 35.986588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.057014, 24.938873, 35.640911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337045, 0.805470, -0.487461,
		0.886165, -0.446276, -0.124695,
		-0.317981, -0.389943, -0.864195,
		30.961620, 24.821890, 35.381653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.741983, 24.973059, 35.522591>,  <31.184208, 25.094851, 35.986588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.741983, 24.973059, 35.522591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.420891, 25.019791, 35.288677>,  <31.228235, 25.047829, 35.148327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.420891, 25.019791, 35.288677>,  <31.741983, 24.973059, 35.522591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.420891, 25.019791, 35.288677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472449, 0.722970, -0.504090,
		0.363891, -0.680930, -0.635545,
		-0.802730, 0.116829, -0.584787,
		31.180073, 25.054840, 35.113239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.073860, 25.076788, 34.818089>,  <31.741983, 24.973059, 35.522591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.073860, 25.076788, 34.818089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.690119, 25.178970, 34.770107>,  <31.459875, 25.240280, 34.741318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.690119, 25.178970, 34.770107>,  <32.073860, 25.076788, 34.818089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.690119, 25.178970, 34.770107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266941, 0.683443, -0.679446,
		-0.091586, -0.683848, -0.723853,
		-0.959351, 0.255454, -0.119954,
		31.402313, 25.255606, 34.734119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.012611, 25.195717, 34.059494>,  <32.073860, 25.076788, 34.818089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.012611, 25.195717, 34.059494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.691837, 25.382282, 34.208817>,  <31.499372, 25.494221, 34.298412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.691837, 25.382282, 34.208817>,  <32.012611, 25.195717, 34.059494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.691837, 25.382282, 34.208817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048612, 0.673750, -0.737359,
		-0.595431, -0.573166, -0.562977,
		-0.801935, 0.466413, 0.373308,
		31.451258, 25.522205, 34.320808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.595581, 25.390327, 33.469830>,  <32.012611, 25.195717, 34.059494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.595581, 25.390327, 33.469830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.465403, 25.608135, 33.779045>,  <31.387295, 25.738819, 33.964573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.465403, 25.608135, 33.779045>,  <31.595581, 25.390327, 33.469830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.465403, 25.608135, 33.779045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004149, 0.816711, -0.577032,
		-0.945551, -0.191000, -0.263537,
		-0.325447, 0.544520, 0.773035,
		31.367769, 25.771492, 34.010956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.004911, 25.767208, 33.261547>,  <31.595581, 25.390327, 33.469830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.004911, 25.767208, 33.261547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.150911, 25.965858, 33.576542>,  <31.238512, 26.085049, 33.765537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.150911, 25.965858, 33.576542>,  <31.004911, 25.767208, 33.261547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.150911, 25.965858, 33.576542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052601, 0.855493, -0.515136,
		-0.929521, 0.146602, 0.338378,
		0.365000, 0.496628, 0.787487,
		31.260410, 26.114847, 33.812790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.562996, 26.355164, 33.310200>,  <31.004911, 25.767208, 33.261547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.562996, 26.355164, 33.310200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.885998, 26.437897, 33.531162>,  <31.079800, 26.487537, 33.663738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.885998, 26.437897, 33.531162>,  <30.562996, 26.355164, 33.310200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.885998, 26.437897, 33.531162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010308, 0.941311, -0.337383,
		-0.589768, 0.266745, 0.762247,
		0.807507, 0.206835, 0.552406,
		31.128250, 26.499947, 33.696884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.403370, 26.897894, 33.841831>,  <30.562996, 26.355164, 33.310200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.403370, 26.897894, 33.841831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.795942, 26.915627, 33.767185>,  <31.031487, 26.926266, 33.722397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.795942, 26.915627, 33.767185>,  <30.403370, 26.897894, 33.841831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.795942, 26.915627, 33.767185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105970, 0.936285, -0.334874,
		0.159882, 0.348432, 0.923598,
		0.981432, 0.044333, -0.186618,
		31.090372, 26.928926, 33.711201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.625834, 27.605688, 33.972149>,  <30.403370, 26.897894, 33.841831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.625834, 27.605688, 33.972149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.931831, 27.470108, 33.753098>,  <31.115431, 27.388760, 33.621666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.931831, 27.470108, 33.753098>,  <30.625834, 27.605688, 33.972149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.931831, 27.470108, 33.753098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027755, 0.866863, -0.497773,
		0.643437, 0.365595, 0.672554,
		0.764996, -0.338952, -0.547625,
		31.161329, 27.368422, 33.588810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.140732, 28.192202, 33.912701>,  <30.625834, 27.605688, 33.972149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.140732, 28.192202, 33.912701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.228935, 27.947121, 33.609127>,  <31.281857, 27.800072, 33.426983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.228935, 27.947121, 33.609127>,  <31.140732, 28.192202, 33.912701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.228935, 27.947121, 33.609127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136177, 0.789800, -0.598057,
		0.965832, 0.028527, 0.257593,
		0.220508, -0.612701, -0.758930,
		31.295088, 27.763311, 33.381447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.592705, 28.594055, 33.491608>,  <31.140732, 28.192202, 33.912701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.592705, 28.594055, 33.491608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.491362, 28.298759, 33.241547>,  <31.430555, 28.121582, 33.091511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.491362, 28.298759, 33.241547>,  <31.592705, 28.594055, 33.491608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.491362, 28.298759, 33.241547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200602, 0.592097, -0.780500,
		0.946345, -0.323153, -0.001920,
		-0.253358, -0.738237, -0.625153,
		31.415354, 28.077288, 33.054001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.874336, 28.816978, 32.981956>,  <31.592705, 28.594055, 33.491608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.874336, 28.816978, 32.981956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.714746, 28.494949, 32.806374>,  <31.618992, 28.301733, 32.701023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.714746, 28.494949, 32.806374>,  <31.874336, 28.816978, 32.981956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.714746, 28.494949, 32.806374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144019, 0.417745, -0.897077,
		0.905581, -0.421130, -0.050725,
		-0.398976, -0.805071, -0.438953,
		31.595053, 28.253428, 32.674686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.283142, 28.373188, 32.651237>,  <31.874336, 28.816978, 32.981956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.283142, 28.373188, 32.651237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.916025, 28.391922, 32.493526>,  <31.695755, 28.403162, 32.398899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.916025, 28.391922, 32.493526>,  <32.283142, 28.373188, 32.651237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.916025, 28.391922, 32.493526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363929, 0.496296, -0.788191,
		0.158766, -0.866889, -0.472543,
		-0.917796, 0.046834, -0.394282,
		31.640686, 28.405972, 32.375240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.352470, 28.075232, 31.929373>,  <32.283142, 28.373188, 32.651237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.352470, 28.075232, 31.929373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.011292, 28.282524, 31.954433>,  <31.806585, 28.406900, 31.969469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.011292, 28.282524, 31.954433>,  <32.352470, 28.075232, 31.929373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.011292, 28.282524, 31.954433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222141, 0.468958, -0.854828,
		-0.472380, -0.715202, -0.515114,
		-0.852942, 0.518232, 0.062651,
		31.755409, 28.437994, 31.973228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.123959, 28.042988, 31.227245>,  <32.352470, 28.075232, 31.929373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.123959, 28.042988, 31.227245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.939219, 28.355381, 31.395420>,  <31.828375, 28.542816, 31.496325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.939219, 28.355381, 31.395420>,  <32.123959, 28.042988, 31.227245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.939219, 28.355381, 31.395420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272218, 0.575951, -0.770830,
		-0.844154, -0.241555, -0.478598,
		-0.461847, 0.780981, 0.420435,
		31.800665, 28.589676, 31.521551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.906971, 28.443598, 30.690445>,  <32.123959, 28.042988, 31.227245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.906971, 28.443598, 30.690445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.867411, 28.722218, 30.974709>,  <31.843676, 28.889389, 31.145267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.867411, 28.722218, 30.974709>,  <31.906971, 28.443598, 30.690445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.867411, 28.722218, 30.974709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205408, 0.713070, -0.670327,
		-0.973667, 0.079681, -0.213599,
		-0.098899, 0.696550, 0.710660,
		31.837742, 28.931183, 31.187906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.651939, 29.040966, 30.357153>,  <31.906971, 28.443598, 30.690445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.651939, 29.040966, 30.357153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.810846, 29.160042, 30.704384>,  <31.906191, 29.231487, 30.912724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.810846, 29.160042, 30.704384>,  <31.651939, 29.040966, 30.357153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.810846, 29.160042, 30.704384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372018, 0.812475, -0.448872,
		-0.838916, 0.501263, 0.212024,
		0.397268, 0.297689, 0.868078,
		31.930027, 29.249348, 30.964808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.560978, 29.731277, 30.355246>,  <31.651939, 29.040966, 30.357153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.560978, 29.731277, 30.355246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.832884, 29.690151, 30.645721>,  <31.996027, 29.665476, 30.820007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.832884, 29.690151, 30.645721>,  <31.560978, 29.731277, 30.355246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.832884, 29.690151, 30.645721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457658, 0.833173, -0.310437,
		-0.573122, 0.543370, 0.613416,
		0.679764, -0.102817, 0.726188,
		32.036812, 29.659306, 30.863579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.616795, 30.307728, 30.635162>,  <31.560978, 29.731277, 30.355246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.616795, 30.307728, 30.635162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.961870, 30.140987, 30.749706>,  <32.168915, 30.040943, 30.818432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.961870, 30.140987, 30.749706>,  <31.616795, 30.307728, 30.635162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.961870, 30.140987, 30.749706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501288, 0.779728, -0.375145,
		-0.066902, 0.467183, 0.881626,
		0.862690, -0.416851, 0.286359,
		32.220676, 30.015932, 30.835613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.033932, 30.846533, 30.982672>,  <31.616795, 30.307728, 30.635162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.033932, 30.846533, 30.982672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.328068, 30.592957, 30.886848>,  <32.504551, 30.440811, 30.829355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.328068, 30.592957, 30.886848>,  <32.033932, 30.846533, 30.982672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.328068, 30.592957, 30.886848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569108, 0.769577, -0.289599,
		0.367947, 0.076620, 0.926684,
		0.735344, -0.633941, -0.239559,
		32.548672, 30.402775, 30.814981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.748875, 31.044687, 31.331776>,  <32.033932, 30.846533, 30.982672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.748875, 31.044687, 31.331776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.807014, 30.812035, 31.011631>,  <32.841896, 30.672443, 30.819544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.807014, 30.812035, 31.011631>,  <32.748875, 31.044687, 31.331776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.807014, 30.812035, 31.011631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403528, 0.773460, -0.488800,
		0.903349, -0.251924, 0.347124,
		0.145346, -0.581631, -0.800362,
		32.850616, 30.637545, 30.771523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.334171, 31.319571, 31.120800>,  <32.748875, 31.044687, 31.331776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.334171, 31.319571, 31.120800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.160374, 31.135616, 30.811035>,  <33.056095, 31.025244, 30.625175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.160374, 31.135616, 30.811035>,  <33.334171, 31.319571, 31.120800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.160374, 31.135616, 30.811035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063925, 0.841903, -0.535829,
		0.898402, -0.282320, -0.336405,
		-0.434496, -0.459885, -0.774415,
		33.030025, 30.997650, 30.578711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.847134, 31.467485, 30.626120>,  <33.334171, 31.319571, 31.120800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.847134, 31.467485, 30.626120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.501274, 31.354122, 30.460194>,  <33.293758, 31.286104, 30.360638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.501274, 31.354122, 30.460194>,  <33.847134, 31.467485, 30.626120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.501274, 31.354122, 30.460194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075847, 0.742584, -0.665444,
		0.496626, -0.606835, -0.620576,
		-0.864645, -0.283408, -0.414813,
		33.241882, 31.269100, 30.335751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.057537, 31.469698, 30.006401>,  <33.847134, 31.467485, 30.626120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.057537, 31.469698, 30.006401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.658527, 31.483795, 29.982056>,  <33.419121, 31.492254, 29.967449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.658527, 31.483795, 29.982056>,  <34.057537, 31.469698, 30.006401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.658527, 31.483795, 29.982056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068212, 0.695629, -0.715155,
		0.017134, -0.717536, -0.696310,
		-0.997524, 0.035243, -0.060864,
		33.359272, 31.494368, 29.963797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.949715, 31.259348, 29.412800>,  <34.057537, 31.469698, 30.006401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.949715, 31.259348, 29.412800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.637379, 31.481754, 29.526733>,  <33.449978, 31.615198, 29.595093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.637379, 31.481754, 29.526733>,  <33.949715, 31.259348, 29.412800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.637379, 31.481754, 29.526733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213219, 0.665745, -0.715067,
		-0.587216, -0.497623, -0.638395,
		-0.780842, 0.556017, 0.284834,
		33.403126, 31.648560, 29.612185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.606903, 31.387571, 28.799911>,  <33.949715, 31.259348, 29.412800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.606903, 31.387571, 28.799911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.453770, 31.671066, 29.036934>,  <33.361889, 31.841164, 29.179148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.453770, 31.671066, 29.036934>,  <33.606903, 31.387571, 28.799911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.453770, 31.671066, 29.036934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009647, 0.638323, -0.769708,
		-0.923765, -0.300389, -0.237537,
		-0.382837, 0.708738, 0.592558,
		33.338917, 31.883688, 29.214701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.055946, 31.697281, 28.463419>,  <33.606903, 31.387571, 28.799911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.055946, 31.697281, 28.463419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.169609, 31.959953, 28.742855>,  <33.237808, 32.117558, 28.910517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.169609, 31.959953, 28.742855>,  <33.055946, 31.697281, 28.463419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.169609, 31.959953, 28.742855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090003, 0.743677, -0.662452,
		-0.954544, 0.125366, 0.270424,
		0.284157, 0.656679, 0.698590,
		33.254856, 32.156956, 28.952433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.621365, 32.267536, 28.405622>,  <33.055946, 31.697281, 28.463419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.621365, 32.267536, 28.405622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.940441, 32.405712, 28.603355>,  <33.131886, 32.488617, 28.721994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.940441, 32.405712, 28.603355>,  <32.621365, 32.267536, 28.405622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.940441, 32.405712, 28.603355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025771, 0.838469, -0.544340,
		-0.602520, 0.421474, 0.677739,
		0.797688, 0.345442, 0.494332,
		33.179749, 32.509346, 28.751656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.494019, 33.039013, 28.731909>,  <32.621365, 32.267536, 28.405622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.494019, 33.039013, 28.731909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.886822, 32.976891, 28.688931>,  <33.122505, 32.939617, 28.663143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.886822, 32.976891, 28.688931>,  <32.494019, 33.039013, 28.731909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.886822, 32.976891, 28.688931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101071, 0.912826, -0.395642,
		0.159524, 0.377663, 0.912098,
		0.982006, -0.155301, -0.107447,
		33.181423, 32.930302, 28.656696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.797470, 33.740929, 28.860598>,  <32.494019, 33.039013, 28.731909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.797470, 33.740929, 28.860598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.090851, 33.512394, 28.713291>,  <33.266880, 33.375275, 28.624908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.090851, 33.512394, 28.713291>,  <32.797470, 33.740929, 28.860598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.090851, 33.512394, 28.713291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391735, 0.798040, -0.457904,
		0.555507, 0.191590, 0.809138,
		0.733454, -0.571337, -0.368264,
		33.310886, 33.340992, 28.602812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.436455, 34.078022, 28.932858>,  <32.797470, 33.740929, 28.860598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.436455, 34.078022, 28.932858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.464222, 33.822784, 28.626129>,  <33.480881, 33.669643, 28.442091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.464222, 33.822784, 28.626129>,  <33.436455, 34.078022, 28.932858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.464222, 33.822784, 28.626129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275145, 0.751107, -0.600111,
		0.958893, -0.169330, 0.227707,
		0.069416, -0.638095, -0.766822,
		33.485046, 33.631355, 28.396082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.041328, 34.394653, 28.608448>,  <33.436455, 34.078022, 28.932858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.041328, 34.394653, 28.608448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.859837, 34.144146, 28.354858>,  <33.750942, 33.993843, 28.202705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.859837, 34.144146, 28.354858>,  <34.041328, 34.394653, 28.608448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.859837, 34.144146, 28.354858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309881, 0.556139, -0.771157,
		0.835528, -0.546350, -0.058265,
		-0.453725, -0.626268, -0.633973,
		33.723721, 33.956264, 28.164667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.449455, 34.554661, 28.042027>,  <34.041328, 34.394653, 28.608448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.449455, 34.554661, 28.042027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.146996, 34.344147, 27.886456>,  <33.965519, 34.217838, 27.793114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.146996, 34.344147, 27.886456>,  <34.449455, 34.554661, 28.042027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.146996, 34.344147, 27.886456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054232, 0.541882, -0.838703,
		0.652153, -0.655273, -0.381199,
		-0.756145, -0.526290, -0.388927,
		33.920151, 34.186260, 27.769777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.582626, 34.264679, 27.347359>,  <34.449455, 34.554661, 28.042027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.582626, 34.264679, 27.347359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.186687, 34.312706, 27.377796>,  <33.949123, 34.341522, 27.396059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.186687, 34.312706, 27.377796>,  <34.582626, 34.264679, 27.347359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.186687, 34.312706, 27.377796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006348, 0.497439, -0.867476,
		-0.142008, -0.859150, -0.491625,
		-0.989845, 0.120067, 0.076094,
		33.889732, 34.348724, 27.400625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.405540, 34.128548, 26.739265>,  <34.582626, 34.264679, 27.347359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.405540, 34.128548, 26.739265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.069408, 34.303608, 26.867207>,  <33.867729, 34.408642, 26.943972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.069408, 34.303608, 26.867207>,  <34.405540, 34.128548, 26.739265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.069408, 34.303608, 26.867207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062269, 0.508217, -0.858975,
		-0.538484, -0.741741, -0.399819,
		-0.840331, 0.437648, 0.319854,
		33.817310, 34.434902, 26.963163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.962631, 34.047249, 26.188215>,  <34.405540, 34.128548, 26.739265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.962631, 34.047249, 26.188215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.810791, 34.341431, 26.412720>,  <33.719688, 34.517941, 26.547422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.810791, 34.341431, 26.412720>,  <33.962631, 34.047249, 26.188215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.810791, 34.341431, 26.412720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141388, 0.553427, -0.820809,
		-0.914283, -0.390935, -0.106097,
		-0.379600, 0.735451, 0.561263,
		33.696911, 34.562065, 26.581099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.289967, 34.227657, 25.976364>,  <33.962631, 34.047249, 26.188215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.289967, 34.227657, 25.976364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.423794, 34.569424, 26.135384>,  <33.504089, 34.774483, 26.230795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.423794, 34.569424, 26.135384>,  <33.289967, 34.227657, 25.976364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.423794, 34.569424, 26.135384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240492, 0.485303, -0.840622,
		-0.911170, 0.185634, 0.367845,
		0.334564, 0.854413, 0.397550,
		33.524162, 34.825748, 26.254648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.727077, 34.791756, 25.837206>,  <33.289967, 34.227657, 25.976364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.727077, 34.791756, 25.837206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.052887, 34.999191, 25.941219>,  <33.248371, 35.123653, 26.003628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.052887, 34.999191, 25.941219>,  <32.727077, 34.791756, 25.837206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.052887, 34.999191, 25.941219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074120, 0.537582, -0.839948,
		-0.575377, 0.664883, 0.476311,
		0.814523, 0.518591, 0.260032,
		33.297245, 35.154770, 26.019228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.130310, 34.830917, 26.207354>,  <32.727077, 34.791756, 25.837206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.130310, 34.830917, 26.207354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.896833, 35.155487, 26.219280>,  <31.756746, 35.350231, 26.226437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.896833, 35.155487, 26.219280>,  <32.130310, 34.830917, 26.207354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.896833, 35.155487, 26.219280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577398, -0.440603, 0.687372,
		0.570888, 0.383999, 0.725694,
		-0.583694, 0.811427, 0.029815,
		31.721725, 35.398914, 26.228224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.952784, 34.893627, 26.952686>,  <32.130310, 34.830917, 26.207354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.952784, 34.893627, 26.952686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.689377, 35.113453, 26.747032>,  <31.531332, 35.245346, 26.623640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.689377, 35.113453, 26.747032>,  <31.952784, 34.893627, 26.952686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.689377, 35.113453, 26.747032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693852, -0.178818, 0.697562,
		0.291417, 0.816092, 0.499069,
		-0.658518, 0.549562, -0.514136,
		31.491821, 35.278320, 26.592791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.722591, 35.371059, 27.388561>,  <31.952784, 34.893627, 26.952686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.722591, 35.371059, 27.388561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.421230, 35.361530, 27.125710>,  <31.240414, 35.355812, 26.967999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.421230, 35.361530, 27.125710>,  <31.722591, 35.371059, 27.388561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.421230, 35.361530, 27.125710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650158, -0.122535, 0.749853,
		-0.098386, 0.992178, 0.076829,
		-0.753402, -0.023823, -0.657129,
		31.195210, 35.354382, 26.928572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.099003, 35.592903, 27.776495>,  <31.722591, 35.371059, 27.388561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.099003, 35.592903, 27.776495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.937740, 35.437092, 27.445259>,  <30.840982, 35.343605, 27.246517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.937740, 35.437092, 27.445259>,  <31.099003, 35.592903, 27.776495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.937740, 35.437092, 27.445259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783667, -0.320338, 0.532212,
		-0.472580, 0.863511, -0.176114,
		-0.403155, -0.389528, -0.828091,
		30.816793, 35.320232, 27.196833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.355413, 35.785183, 27.699871>,  <31.099003, 35.592903, 27.776495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.355413, 35.785183, 27.699871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.356678, 35.450367, 27.481018>,  <30.357437, 35.249477, 27.349707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.356678, 35.450367, 27.481018>,  <30.355413, 35.785183, 27.699871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.356678, 35.450367, 27.481018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783896, -0.341782, 0.518356,
		-0.620885, 0.427255, -0.657233,
		0.003161, -0.837041, -0.547131,
		30.357626, 35.199253, 27.316879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.698605, 35.681553, 27.453880>,  <30.355413, 35.785183, 27.699871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.698605, 35.681553, 27.453880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.878569, 35.324436, 27.462814>,  <29.986547, 35.110165, 27.468176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.878569, 35.324436, 27.462814>,  <29.698605, 35.681553, 27.453880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.878569, 35.324436, 27.462814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747544, -0.362795, 0.556380,
		-0.488629, -0.267019, -0.830628,
		0.449912, -0.892794, 0.022336,
		30.013542, 35.056599, 27.469515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.137632, 35.172714, 27.331718>,  <29.698605, 35.681553, 27.453880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.137632, 35.172714, 27.331718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.438307, 34.960709, 27.488716>,  <29.618711, 34.833504, 27.582914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.438307, 34.960709, 27.488716>,  <29.137632, 35.172714, 27.331718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.438307, 34.960709, 27.488716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647056, -0.477520, 0.594384,
		-0.127609, -0.700757, -0.701895,
		0.751688, -0.530014, 0.392493,
		29.663813, 34.801704, 27.606464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.835016, 34.568703, 27.434832>,  <29.137632, 35.172714, 27.331718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.835016, 34.568703, 27.434832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.164356, 34.509392, 27.653961>,  <29.361959, 34.473804, 27.785439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.164356, 34.509392, 27.653961>,  <28.835016, 34.568703, 27.434832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.164356, 34.509392, 27.653961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509196, -0.619264, 0.597688,
		0.250626, -0.771056, -0.585372,
		0.823350, -0.148273, 0.547822,
		29.411362, 34.464909, 27.818308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.784483, 33.915207, 27.600817>,  <28.835016, 34.568703, 27.434832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.784483, 33.915207, 27.600817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.038471, 34.037457, 27.884621>,  <29.190865, 34.110806, 28.054903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.038471, 34.037457, 27.884621>,  <28.784483, 33.915207, 27.600817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.038471, 34.037457, 27.884621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265631, -0.776043, 0.572012,
		0.725433, -0.551678, -0.411580,
		0.634970, 0.305629, 0.709510,
		29.228962, 34.129147, 28.097473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.314211, 33.330666, 27.781578>,  <28.784483, 33.915207, 27.600817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.314211, 33.330666, 27.781578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.278257, 33.553272, 28.111961>,  <29.256685, 33.686836, 28.310192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.278257, 33.553272, 28.111961>,  <29.314211, 33.330666, 27.781578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.278257, 33.553272, 28.111961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177356, -0.825004, 0.536576,
		0.980033, -0.098259, 0.172858,
		-0.089886, 0.556520, 0.825958,
		29.251291, 33.720226, 28.359749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.628759, 32.905975, 28.337614>,  <29.314211, 33.330666, 27.781578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.628759, 32.905975, 28.337614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.407974, 33.189346, 28.513554>,  <29.275503, 33.359367, 28.619118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.407974, 33.189346, 28.513554>,  <29.628759, 32.905975, 28.337614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.407974, 33.189346, 28.513554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236823, -0.638938, 0.731897,
		0.799532, 0.299814, 0.520442,
		-0.551963, 0.708428, 0.439848,
		29.242386, 33.401875, 28.645508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.899517, 32.839088, 29.012962>,  <29.628759, 32.905975, 28.337614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.899517, 32.839088, 29.012962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.560066, 33.049019, 29.039474>,  <29.356396, 33.174976, 29.055382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.560066, 33.049019, 29.039474>,  <29.899517, 32.839088, 29.012962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.560066, 33.049019, 29.039474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254046, -0.514236, 0.819159,
		0.463996, 0.678323, 0.569724,
		-0.848627, 0.524823, 0.066278,
		29.305477, 33.206467, 29.059359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.843258, 32.977753, 29.653484>,  <29.899517, 32.839088, 29.012962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.843258, 32.977753, 29.653484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.474382, 33.024960, 29.506165>,  <29.253057, 33.053284, 29.417772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.474382, 33.024960, 29.506165>,  <29.843258, 32.977753, 29.653484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.474382, 33.024960, 29.506165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375883, -0.497615, 0.781723,
		-0.091016, 0.859332, 0.503254,
		-0.922186, 0.118016, -0.368299,
		29.197727, 33.060364, 29.395676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.403629, 33.265869, 30.133179>,  <29.843258, 32.977753, 29.653484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.403629, 33.265869, 30.133179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.200077, 33.035603, 29.877163>,  <29.077946, 32.897442, 29.723555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.200077, 33.035603, 29.877163>,  <29.403629, 33.265869, 30.133179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.200077, 33.035603, 29.877163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278490, -0.593433, 0.755169,
		-0.814546, 0.562535, 0.141669,
		-0.508880, -0.575666, -0.640039,
		29.047413, 32.862904, 29.685152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.775978, 33.194031, 30.477087>,  <29.403629, 33.265869, 30.133179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.775978, 33.194031, 30.477087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.794495, 32.889538, 30.218357>,  <28.805605, 32.706841, 30.063120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.794495, 32.889538, 30.218357>,  <28.775978, 33.194031, 30.477087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.794495, 32.889538, 30.218357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152345, -0.645325, 0.748563,
		-0.987243, 0.063887, -0.145844,
		0.046293, -0.761232, -0.646825,
		28.808382, 32.661167, 30.024309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.175432, 32.710148, 30.682610>,  <28.775978, 33.194031, 30.477087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.175432, 32.710148, 30.682610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.409254, 32.462326, 30.473061>,  <28.549547, 32.313633, 30.347332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.409254, 32.462326, 30.473061>,  <28.175432, 32.710148, 30.682610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.409254, 32.462326, 30.473061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213366, -0.740337, 0.637477,
		-0.782796, -0.260864, -0.564960,
		0.584556, -0.619558, -0.523873,
		28.584621, 32.276459, 30.315899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.807783, 32.028103, 30.752346>,  <28.175432, 32.710148, 30.682610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.807783, 32.028103, 30.752346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.177204, 31.950939, 30.619781>,  <28.398857, 31.904640, 30.540243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.177204, 31.950939, 30.619781>,  <27.807783, 32.028103, 30.752346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.177204, 31.950939, 30.619781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060258, -0.780498, 0.622247,
		-0.378706, -0.594649, -0.709207,
		0.923553, -0.192914, -0.331412,
		28.454269, 31.893064, 30.520357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.757553, 31.309103, 30.583466>,  <27.807783, 32.028103, 30.752346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.757553, 31.309103, 30.583466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.148869, 31.380508, 30.625584>,  <28.383657, 31.423351, 30.650854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.148869, 31.380508, 30.625584>,  <27.757553, 31.309103, 30.583466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.148869, 31.380508, 30.625584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078913, -0.790619, 0.607202,
		0.191644, -0.585709, -0.787539,
		0.978287, 0.178513, 0.105297,
		28.442354, 31.434063, 30.657173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.191229, 30.601999, 30.480043>,  <27.757553, 31.309103, 30.583466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.191229, 30.601999, 30.480043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.423563, 30.834763, 30.707733>,  <28.562963, 30.974421, 30.844347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.423563, 30.834763, 30.707733>,  <28.191229, 30.601999, 30.480043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.423563, 30.834763, 30.707733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202872, -0.780689, 0.591073,
		0.788335, -0.227837, -0.571505,
		0.580836, 0.581906, 0.569223,
		28.597815, 31.009335, 30.878500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.762672, 30.312174, 30.486071>,  <28.191229, 30.601999, 30.480043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.762672, 30.312174, 30.486071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.780836, 30.537479, 30.816082>,  <28.791735, 30.672663, 31.014090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.780836, 30.537479, 30.816082>,  <28.762672, 30.312174, 30.486071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.780836, 30.537479, 30.816082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278307, -0.800315, 0.531075,
		0.959418, 0.205496, -0.193101,
		0.045408, 0.563265, 0.825028,
		28.794458, 30.706459, 31.063591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.361076, 30.060188, 30.878807>,  <28.762672, 30.312174, 30.486071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.361076, 30.060188, 30.878807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.147682, 30.249851, 31.158970>,  <29.019646, 30.363649, 31.327068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.147682, 30.249851, 31.158970>,  <29.361076, 30.060188, 30.878807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.147682, 30.249851, 31.158970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199298, -0.734305, 0.648904,
		0.821994, 0.485771, 0.297243,
		-0.533485, 0.474155, 0.700407,
		28.987637, 30.392097, 31.369093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.773151, 30.071171, 31.420956>,  <29.361076, 30.060188, 30.878807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.773151, 30.071171, 31.420956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.406334, 30.095825, 31.578552>,  <29.186243, 30.110619, 31.673111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.406334, 30.095825, 31.578552>,  <29.773151, 30.071171, 31.420956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.406334, 30.095825, 31.578552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234034, -0.716768, 0.656865,
		0.322890, 0.694582, 0.642883,
		-0.917044, 0.061638, 0.393993,
		29.131220, 30.114317, 31.696751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.914186, 29.958609, 32.113777>,  <29.773151, 30.071171, 31.420956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.914186, 29.958609, 32.113777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.521357, 29.891644, 32.079128>,  <29.285660, 29.851465, 32.058338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.521357, 29.891644, 32.079128>,  <29.914186, 29.958609, 32.113777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.521357, 29.891644, 32.079128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073289, -0.762532, 0.642786,
		-0.173665, 0.624914, 0.761132,
		-0.982074, -0.167412, -0.086626,
		29.226734, 29.841419, 32.053139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.703077, 29.819374, 32.820717>,  <29.914186, 29.958609, 32.113777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.703077, 29.819374, 32.820717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.443033, 29.652527, 32.566673>,  <29.287006, 29.552418, 32.414246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.443033, 29.652527, 32.566673>,  <29.703077, 29.819374, 32.820717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.443033, 29.652527, 32.566673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023025, -0.824652, 0.565171,
		-0.759492, 0.382046, 0.526510,
		-0.650109, -0.417120, -0.635114,
		29.248001, 29.527391, 32.376141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.226068, 29.346449, 33.207230>,  <29.703077, 29.819374, 32.820717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.226068, 29.346449, 33.207230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.198994, 29.202862, 32.834873>,  <29.182749, 29.116709, 32.611458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.198994, 29.202862, 32.834873>,  <29.226068, 29.346449, 33.207230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.198994, 29.202862, 32.834873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114945, -0.924013, 0.364674,
		-0.991063, 0.131686, 0.021283,
		-0.067688, -0.358968, -0.930892,
		29.178688, 29.095171, 32.555607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.577965, 28.994286, 33.103115>,  <29.226068, 29.346449, 33.207230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.577965, 28.994286, 33.103115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.810717, 28.838772, 32.817387>,  <28.950367, 28.745462, 32.645950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.810717, 28.838772, 32.817387>,  <28.577965, 28.994286, 33.103115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.810717, 28.838772, 32.817387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291454, -0.919681, 0.263140,
		-0.759257, 0.055077, -0.648456,
		0.581880, -0.388785, -0.714326,
		28.985281, 28.722136, 32.603088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.156078, 28.541000, 32.768456>,  <28.577965, 28.994286, 33.103115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.156078, 28.541000, 32.768456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.508986, 28.395821, 32.648540>,  <28.720730, 28.308712, 32.576591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.508986, 28.395821, 32.648540>,  <28.156078, 28.541000, 32.768456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.508986, 28.395821, 32.648540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321688, -0.929780, 0.178959,
		-0.343690, -0.061451, -0.937070,
		0.882267, -0.362951, -0.299788,
		28.773666, 28.286936, 32.558605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.037626, 27.971256, 32.220512>,  <28.156078, 28.541000, 32.768456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.037626, 27.971256, 32.220512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.402084, 27.919144, 32.376892>,  <28.620760, 27.887877, 32.470718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.402084, 27.919144, 32.376892>,  <28.037626, 27.971256, 32.220512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.402084, 27.919144, 32.376892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300177, -0.859809, 0.413065,
		0.282323, -0.493715, -0.822520,
		0.911146, -0.130283, 0.390946,
		28.675428, 27.880058, 32.494175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.214081, 27.325499, 31.922537>,  <28.037626, 27.971256, 32.220512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.214081, 27.325499, 31.922537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.443821, 27.393154, 32.242916>,  <28.581665, 27.433748, 32.435143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.443821, 27.393154, 32.242916>,  <28.214081, 27.325499, 31.922537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.443821, 27.393154, 32.242916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235458, -0.902941, 0.359524,
		0.784017, -0.395081, -0.478777,
		0.574349, 0.169141, 0.800946,
		28.616125, 27.443897, 32.483200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.646225, 26.719124, 31.998110>,  <28.214081, 27.325499, 31.922537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.646225, 26.719124, 31.998110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.649527, 26.890297, 32.359619>,  <28.651508, 26.993000, 32.576527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.649527, 26.890297, 32.359619>,  <28.646225, 26.719124, 31.998110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.649527, 26.890297, 32.359619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099398, -0.898977, 0.426568,
		0.995014, -0.093354, 0.035115,
		0.008254, 0.427932, 0.903774,
		28.652002, 27.018677, 32.630753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.167391, 26.402967, 32.340752>,  <28.646225, 26.719124, 31.998110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.167391, 26.402967, 32.340752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.922968, 26.536839, 32.627693>,  <28.776314, 26.617161, 32.799858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.922968, 26.536839, 32.627693>,  <29.167391, 26.402967, 32.340752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.922968, 26.536839, 32.627693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182366, -0.941369, 0.283846,
		0.770292, 0.042626, 0.636265,
		-0.611059, 0.334677, 0.717355,
		28.739651, 26.637241, 32.842899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.305023, 25.970949, 32.885609>,  <29.167391, 26.402967, 32.340752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.305023, 25.970949, 32.885609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.968586, 26.156273, 32.997257>,  <28.766724, 26.267467, 33.064247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.968586, 26.156273, 32.997257>,  <29.305023, 25.970949, 32.885609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.968586, 26.156273, 32.997257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364131, -0.866598, 0.341198,
		0.399969, 0.185340, 0.897593,
		-0.841091, 0.463310, 0.279124,
		28.716259, 26.295265, 33.080994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.140776, 25.807114, 33.608414>,  <29.305023, 25.970949, 32.885609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.140776, 25.807114, 33.608414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.786364, 25.912998, 33.456161>,  <28.573717, 25.976528, 33.364811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.786364, 25.912998, 33.456161>,  <29.140776, 25.807114, 33.608414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.786364, 25.912998, 33.456161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397198, -0.856849, 0.328700,
		-0.239132, 0.442424, 0.864336,
		-0.886031, 0.264710, -0.380629,
		28.520554, 25.992411, 33.341972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.618723, 25.819630, 34.203617>,  <29.140776, 25.807114, 33.608414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.618723, 25.819630, 34.203617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.413109, 25.768829, 33.864292>,  <28.289740, 25.738350, 33.660698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.413109, 25.768829, 33.864292>,  <28.618723, 25.819630, 34.203617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.413109, 25.768829, 33.864292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455470, -0.797624, 0.395402,
		-0.726852, 0.589633, 0.352164,
		-0.514037, -0.126999, -0.848314,
		28.258898, 25.730730, 33.609798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.877869, 25.724304, 34.425564>,  <28.618723, 25.819630, 34.203617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.877869, 25.724304, 34.425564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.876987, 25.592625, 34.047859>,  <27.876459, 25.513617, 33.821236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.876987, 25.592625, 34.047859>,  <27.877869, 25.724304, 34.425564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.876987, 25.592625, 34.047859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490264, -0.822636, 0.287942,
		-0.871571, 0.463571, -0.159582,
		-0.002203, -0.329200, -0.944258,
		27.876326, 25.493864, 33.764584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.143280, 25.394466, 34.275902>,  <27.877869, 25.724304, 34.425564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.143280, 25.394466, 34.275902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.419600, 25.250439, 34.025097>,  <27.585390, 25.164022, 33.874615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.419600, 25.250439, 34.025097>,  <27.143280, 25.394466, 34.275902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.419600, 25.250439, 34.025097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278015, -0.932791, 0.229367,
		-0.667463, 0.015874, -0.744474,
		0.690797, -0.360069, -0.627016,
		27.626839, 25.142418, 33.836990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.797342, 24.870493, 33.895454>,  <27.143280, 25.394466, 34.275902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.797342, 24.870493, 33.895454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.189255, 24.798290, 33.860935>,  <27.424402, 24.754969, 33.840225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.189255, 24.798290, 33.860935>,  <26.797342, 24.870493, 33.895454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.189255, 24.798290, 33.860935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171078, -0.979492, 0.106433,
		-0.103735, -0.089518, -0.990569,
		0.979782, -0.180505, -0.086293,
		27.483189, 24.744139, 33.835049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.824253, 24.280729, 33.371780>,  <26.797342, 24.870493, 33.895454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.824253, 24.280729, 33.371780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.166491, 24.302952, 33.577644>,  <27.371832, 24.316286, 33.701164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.166491, 24.302952, 33.577644>,  <26.824253, 24.280729, 33.371780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.166491, 24.302952, 33.577644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039135, -0.984437, 0.171325,
		0.516169, -0.166725, -0.840103,
		0.855592, 0.055556, 0.514661,
		27.423168, 24.319618, 33.732044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.468105, 24.227381, 32.727009>,  <26.824253, 24.280729, 33.371780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.468105, 24.227381, 32.727009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.090160, 24.239574, 32.596588>,  <25.863394, 24.246891, 32.518337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.090160, 24.239574, 32.596588>,  <26.468105, 24.227381, 32.727009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.090160, 24.239574, 32.596588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165201, 0.904048, -0.394215,
		0.282748, -0.426342, -0.859236,
		-0.944861, 0.030483, -0.326049,
		25.806702, 24.248720, 32.498772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.469013, 24.329145, 32.023861>,  <26.468105, 24.227381, 32.727009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.469013, 24.329145, 32.023861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.124397, 24.459038, 32.179962>,  <25.917627, 24.536974, 32.273624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.124397, 24.459038, 32.179962>,  <26.469013, 24.329145, 32.023861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.124397, 24.459038, 32.179962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197820, 0.922654, -0.331024,
		-0.467565, -0.207989, -0.859141,
		-0.861540, 0.324731, 0.390256,
		25.865936, 24.556458, 32.297039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.254259, 24.657654, 31.443291>,  <26.469013, 24.329145, 32.023861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.254259, 24.657654, 31.443291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.028204, 24.787025, 31.746872>,  <25.892570, 24.864649, 31.929020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.028204, 24.787025, 31.746872>,  <26.254259, 24.657654, 31.443291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.028204, 24.787025, 31.746872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076750, 0.936571, -0.341971,
		-0.821418, -0.135012, -0.554116,
		-0.565139, 0.323430, 0.758954,
		25.858662, 24.884054, 31.974558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.851868, 25.241196, 31.151163>,  <26.254259, 24.657654, 31.443291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.851868, 25.241196, 31.151163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.799477, 25.294258, 31.544151>,  <25.768042, 25.326096, 31.779943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.799477, 25.294258, 31.544151>,  <25.851868, 25.241196, 31.151163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.799477, 25.294258, 31.544151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043279, 0.989298, -0.139346,
		-0.990440, -0.060772, -0.123836,
		-0.130979, 0.132654, 0.982470,
		25.760183, 25.334055, 31.838892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.318581, 25.797066, 31.256796>,  <25.851868, 25.241196, 31.151163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.318581, 25.797066, 31.256796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.562897, 25.783348, 31.573215>,  <25.709486, 25.775118, 31.763067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.562897, 25.783348, 31.573215>,  <25.318581, 25.797066, 31.256796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.562897, 25.783348, 31.573215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198264, 0.973859, -0.110864,
		-0.766567, 0.224551, 0.601624,
		0.610791, -0.034295, 0.791049,
		25.746134, 25.773060, 31.810530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.060560, 26.403940, 31.709661>,  <25.318581, 25.797066, 31.256796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.060560, 26.403940, 31.709661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.432688, 26.303349, 31.816441>,  <25.655964, 26.242994, 31.880508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.432688, 26.303349, 31.816441>,  <25.060560, 26.403940, 31.709661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.432688, 26.303349, 31.816441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241298, 0.967862, 0.070846,
		-0.276187, -0.001495, 0.961103,
		0.930321, -0.251479, 0.266950,
		25.711784, 26.227905, 31.896526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.192654, 26.767841, 32.367439>,  <25.060560, 26.403940, 31.709661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.192654, 26.767841, 32.367439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.532703, 26.686447, 32.173168>,  <25.736732, 26.637611, 32.056606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.532703, 26.686447, 32.173168>,  <25.192654, 26.767841, 32.367439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.532703, 26.686447, 32.173168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112638, 0.971243, -0.209761,
		0.514395, 0.123617, 0.848597,
		0.850124, -0.203484, -0.485678,
		25.787741, 26.625402, 32.027466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.623268, 27.304190, 32.614498>,  <25.192654, 26.767841, 32.367439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.623268, 27.304190, 32.614498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.842014, 27.167526, 32.308765>,  <25.973261, 27.085529, 32.125324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.842014, 27.167526, 32.308765>,  <25.623268, 27.304190, 32.614498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.842014, 27.167526, 32.308765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196491, 0.939821, -0.279515,
		0.813837, 0.002672, 0.581087,
		0.546864, -0.341658, -0.764336,
		26.006073, 27.065029, 32.079464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.277401, 27.664043, 32.622673>,  <25.623268, 27.304190, 32.614498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.277401, 27.664043, 32.622673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.214827, 27.527420, 32.251972>,  <26.177282, 27.445446, 32.029552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.214827, 27.527420, 32.251972>,  <26.277401, 27.664043, 32.622673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.214827, 27.527420, 32.251972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320012, 0.870159, -0.374721,
		0.934409, -0.355191, -0.026819,
		-0.156435, -0.341560, -0.926750,
		26.167896, 27.424952, 31.973948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.905228, 27.801092, 32.282944>,  <26.277401, 27.664043, 32.622673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.905228, 27.801092, 32.282944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.633549, 27.738319, 31.996151>,  <26.470541, 27.700655, 31.824076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.633549, 27.738319, 31.996151>,  <26.905228, 27.801092, 32.282944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.633549, 27.738319, 31.996151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285617, 0.843358, -0.455160,
		0.676101, -0.513926, -0.527984,
		-0.679198, -0.156933, -0.716981,
		26.429789, 27.691240, 31.781057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.248730, 27.905071, 31.683764>,  <26.905228, 27.801092, 32.282944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.248730, 27.905071, 31.683764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.864676, 27.943974, 31.578934>,  <26.634243, 27.967314, 31.516037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.864676, 27.943974, 31.578934>,  <27.248730, 27.905071, 31.683764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.864676, 27.943974, 31.578934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236273, 0.783358, -0.574913,
		0.149384, -0.613915, -0.775108,
		-0.960135, 0.097255, -0.262073,
		26.576635, 27.973150, 31.500311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.199223, 27.981524, 30.949114>,  <27.248730, 27.905071, 31.683764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.199223, 27.981524, 30.949114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.869522, 28.155178, 31.094517>,  <26.671701, 28.259371, 31.181759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.869522, 28.155178, 31.094517>,  <27.199223, 27.981524, 30.949114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.869522, 28.155178, 31.094517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183995, 0.812501, -0.553161,
		-0.535498, -0.389059, -0.749583,
		-0.824250, 0.434137, 0.363508,
		26.622248, 28.285419, 31.203569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.925665, 28.347404, 30.482708>,  <27.199223, 27.981524, 30.949114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.925665, 28.347404, 30.482708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.712288, 28.517723, 30.775047>,  <26.584263, 28.619915, 30.950451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.712288, 28.517723, 30.775047>,  <26.925665, 28.347404, 30.482708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.712288, 28.517723, 30.775047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069825, 0.838934, -0.539735,
		-0.842950, -0.338948, -0.417791,
		-0.533441, 0.425798, 0.730847,
		26.552256, 28.645462, 30.994301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.314825, 28.482157, 30.246645>,  <26.925665, 28.347404, 30.482708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.314825, 28.482157, 30.246645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.369656, 28.742645, 30.545208>,  <26.402554, 28.898937, 30.724346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.369656, 28.742645, 30.545208>,  <26.314825, 28.482157, 30.246645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.369656, 28.742645, 30.545208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147835, 0.758530, -0.634647,
		-0.979467, -0.023350, 0.200249,
		0.137076, 0.651219, 0.746407,
		26.410778, 28.938011, 30.769131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.836273, 28.988289, 30.147964>,  <26.314825, 28.482157, 30.246645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.836273, 28.988289, 30.147964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.106579, 29.154594, 30.391434>,  <26.268763, 29.254377, 30.537516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.106579, 29.154594, 30.391434>,  <25.836273, 28.988289, 30.147964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.106579, 29.154594, 30.391434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112305, 0.874180, -0.472438,
		-0.728511, 0.250901, 0.637433,
		0.675766, 0.415763, 0.608672,
		26.309309, 29.279324, 30.574036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.493107, 29.439278, 30.496407>,  <25.836273, 28.988289, 30.147964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.493107, 29.439278, 30.496407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.862940, 29.587490, 30.531845>,  <26.084841, 29.676418, 30.553108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.862940, 29.587490, 30.531845>,  <25.493107, 29.439278, 30.496407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.862940, 29.587490, 30.531845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294918, 0.843323, -0.449256,
		-0.241178, 0.389247, 0.889000,
		0.924585, 0.370532, 0.088595,
		26.140316, 29.698650, 30.558424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.388956, 30.180695, 30.535059>,  <25.493107, 29.439278, 30.496407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.388956, 30.180695, 30.535059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.781101, 30.149387, 30.462662>,  <26.016388, 30.130602, 30.419224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.781101, 30.149387, 30.462662>,  <25.388956, 30.180695, 30.535059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.781101, 30.149387, 30.462662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019495, 0.874885, -0.483938,
		0.196227, 0.477964, 0.856181,
		0.980365, -0.078270, -0.180994,
		26.075211, 30.125906, 30.408363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.749966, 30.728643, 30.901369>,  <25.388956, 30.180695, 30.535059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.749966, 30.728643, 30.901369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.982939, 30.603008, 30.601471>,  <26.122723, 30.527626, 30.421532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.982939, 30.603008, 30.601471>,  <25.749966, 30.728643, 30.901369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.982939, 30.603008, 30.601471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000452, 0.922460, -0.386093,
		0.812879, 0.224535, 0.537412,
		0.582432, -0.314090, -0.749747,
		26.157669, 30.508781, 30.376547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.304144, 31.169788, 30.980957>,  <25.749966, 30.728643, 30.901369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.304144, 31.169788, 30.980957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.352997, 31.027077, 30.610489>,  <26.382309, 30.941450, 30.388208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.352997, 31.027077, 30.610489>,  <26.304144, 31.169788, 30.980957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.352997, 31.027077, 30.610489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213170, 0.920808, -0.326605,
		0.969351, -0.157543, 0.188516,
		0.122133, -0.356781, -0.926170,
		26.389637, 30.920042, 30.332638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.860716, 31.498051, 30.716234>,  <26.304144, 31.169788, 30.980957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.860716, 31.498051, 30.716234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.675776, 31.373283, 30.384224>,  <26.564812, 31.298424, 30.185019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.675776, 31.373283, 30.384224>,  <26.860716, 31.498051, 30.716234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.675776, 31.373283, 30.384224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217662, 0.867520, -0.447250,
		0.859570, -0.387449, -0.333201,
		-0.462345, -0.311918, -0.830027,
		26.537071, 31.279709, 30.135216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.254549, 31.640554, 30.122416>,  <26.860716, 31.498051, 30.716234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.254549, 31.640554, 30.122416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.879431, 31.618782, 29.985256>,  <26.654360, 31.605719, 29.902962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.879431, 31.618782, 29.985256>,  <27.254549, 31.640554, 30.122416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.879431, 31.618782, 29.985256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186538, 0.753985, -0.629850,
		0.292821, -0.654633, -0.696930,
		-0.937795, -0.054429, -0.342897,
		26.598093, 31.602453, 29.882387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.409929, 31.830252, 29.558374>,  <27.254549, 31.640554, 30.122416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.409929, 31.830252, 29.558374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.011602, 31.864479, 29.571178>,  <26.772606, 31.885015, 29.578861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.011602, 31.864479, 29.571178>,  <27.409929, 31.830252, 29.558374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.011602, 31.864479, 29.571178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059336, 0.872167, -0.485596,
		-0.069469, -0.481666, -0.873598,
		-0.995818, 0.085570, 0.032008,
		26.712856, 31.890150, 29.580780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.082792, 32.004292, 28.839672>,  <27.409929, 31.830252, 29.558374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.082792, 32.004292, 28.839672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.845737, 32.118984, 29.140755>,  <26.703505, 32.187798, 29.321404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.845737, 32.118984, 29.140755>,  <27.082792, 32.004292, 28.839672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.845737, 32.118984, 29.140755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135169, 0.885839, -0.443867,
		-0.794047, -0.364795, -0.486224,
		-0.592637, 0.286729, 0.752707,
		26.667946, 32.205002, 29.366568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.640081, 32.383434, 28.498098>,  <27.082792, 32.004292, 28.839672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.640081, 32.383434, 28.498098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.545107, 32.479919, 28.874489>,  <26.488123, 32.537811, 29.100323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.545107, 32.479919, 28.874489>,  <26.640081, 32.383434, 28.498098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.545107, 32.479919, 28.874489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244648, 0.922606, -0.298239,
		-0.940091, -0.301021, -0.160045,
		-0.237435, 0.241217, 0.940978,
		26.473877, 32.552284, 29.156782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.995667, 32.686081, 28.470322>,  <26.640081, 32.383434, 28.498098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.995667, 32.686081, 28.470322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.193611, 32.813095, 28.793873>,  <26.312378, 32.889305, 28.988003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.193611, 32.813095, 28.793873>,  <25.995667, 32.686081, 28.470322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.193611, 32.813095, 28.793873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171154, 0.948227, -0.267530,
		-0.851950, -0.006053, 0.523588,
		0.494861, 0.317537, 0.808877,
		26.342070, 32.908356, 29.036535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.615198, 33.115841, 28.688597>,  <25.995667, 32.686081, 28.470322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.615198, 33.115841, 28.688597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.975784, 33.211136, 28.833153>,  <26.192137, 33.268314, 28.919886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.975784, 33.211136, 28.833153>,  <25.615198, 33.115841, 28.688597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.975784, 33.211136, 28.833153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123442, 0.941731, -0.312897,
		-0.414874, 0.237456, 0.878347,
		0.901466, 0.238238, 0.361388,
		26.246223, 33.282608, 28.941568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.561169, 33.742447, 28.968102>,  <25.615198, 33.115841, 28.688597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.561169, 33.742447, 28.968102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.957058, 33.733818, 28.911560>,  <26.194592, 33.728642, 28.877634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.957058, 33.733818, 28.911560>,  <25.561169, 33.742447, 28.968102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.957058, 33.733818, 28.911560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021928, 0.953970, -0.299101,
		0.141300, 0.299127, 0.943694,
		0.989724, -0.021569, -0.141355,
		26.253975, 33.727348, 28.869154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.770742, 34.388538, 29.172884>,  <25.561169, 33.742447, 28.968102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.770742, 34.388538, 29.172884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.099506, 34.287724, 28.968555>,  <26.296764, 34.227234, 28.845959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.099506, 34.287724, 28.968555>,  <25.770742, 34.388538, 29.172884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.099506, 34.287724, 28.968555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009590, 0.890532, -0.454819,
		0.569537, 0.378719, 0.729520,
		0.821910, -0.252040, -0.510823,
		26.346079, 34.212112, 28.815310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.326637, 34.937393, 29.136440>,  <25.770742, 34.388538, 29.172884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.326637, 34.937393, 29.136440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.395658, 34.698360, 28.823231>,  <26.437071, 34.554943, 28.635305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.395658, 34.698360, 28.823231>,  <26.326637, 34.937393, 29.136440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.395658, 34.698360, 28.823231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135124, 0.801792, -0.582127,
		0.975688, -0.005358, 0.219097,
		0.172551, -0.597580, -0.783023,
		26.447424, 34.519085, 28.588324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.880716, 35.227768, 28.951313>,  <26.326637, 34.937393, 29.136440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.880716, 35.227768, 28.951313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.770288, 35.003246, 28.639229>,  <26.704033, 34.868534, 28.451979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.770288, 35.003246, 28.639229>,  <26.880716, 35.227768, 28.951313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.770288, 35.003246, 28.639229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351766, 0.696430, -0.625497,
		0.894454, -0.447131, 0.005185,
		-0.276068, -0.561302, -0.780210,
		26.687468, 34.834854, 28.405167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.424198, 35.250240, 28.483000>,  <26.880716, 35.227768, 28.951313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.424198, 35.250240, 28.483000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.116964, 35.139576, 28.251999>,  <26.932625, 35.073177, 28.113398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.116964, 35.139576, 28.251999>,  <27.424198, 35.250240, 28.483000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.116964, 35.139576, 28.251999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326159, 0.607078, -0.724621,
		0.551058, -0.744928, -0.376055,
		-0.768085, -0.276655, -0.577501,
		26.886539, 35.056580, 28.078749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.650877, 34.965439, 27.785862>,  <27.424198, 35.250240, 28.483000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.650877, 34.965439, 27.785862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.269148, 35.073845, 27.735542>,  <27.040112, 35.138889, 27.705351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.269148, 35.073845, 27.735542>,  <27.650877, 34.965439, 27.785862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.269148, 35.073845, 27.735542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232447, 0.408897, -0.882481,
		-0.187724, -0.871411, -0.453214,
		-0.954321, 0.271011, -0.125797,
		26.982851, 35.155148, 27.697803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.523148, 34.695824, 27.132862>,  <27.650877, 34.965439, 27.785862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.523148, 34.695824, 27.132862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.230680, 34.961105, 27.196804>,  <27.055201, 35.120274, 27.235168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.230680, 34.961105, 27.196804>,  <27.523148, 34.695824, 27.132862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.230680, 34.961105, 27.196804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236852, 0.466533, -0.852202,
		-0.639762, -0.585240, -0.498195,
		-0.731167, 0.663205, 0.159855,
		27.011330, 35.160069, 27.244761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.139788, 34.657459, 26.472525>,  <27.523148, 34.695824, 27.132862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.139788, 34.657459, 26.472525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.029160, 34.994759, 26.656891>,  <26.962782, 35.197136, 26.767511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.029160, 34.994759, 26.656891>,  <27.139788, 34.657459, 26.472525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.029160, 34.994759, 26.656891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118172, 0.505827, -0.854502,
		-0.953700, -0.181864, -0.239546,
		-0.276572, 0.843246, 0.460916,
		26.946188, 35.247734, 26.795166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.590910, 34.914837, 26.139275>,  <27.139788, 34.657459, 26.472525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.590910, 34.914837, 26.139275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.723255, 35.245441, 26.321442>,  <26.802662, 35.443806, 26.430742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.723255, 35.245441, 26.321442>,  <26.590910, 34.914837, 26.139275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.723255, 35.245441, 26.321442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071682, 0.459193, -0.885440,
		-0.940952, 0.325606, 0.092685,
		0.330864, 0.826512, 0.455419,
		26.822514, 35.493397, 26.458067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.255060, 35.432037, 25.774271>,  <26.590910, 34.914837, 26.139275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.255060, 35.432037, 25.774271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.576490, 35.591862, 25.950733>,  <26.769348, 35.687756, 26.056610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.576490, 35.591862, 25.950733>,  <26.255060, 35.432037, 25.774271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.576490, 35.591862, 25.950733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196253, 0.521873, -0.830141,
		-0.561916, 0.753660, 0.340951,
		0.803577, 0.399556, 0.441157,
		26.817564, 35.711727, 26.083080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.255093, 36.078056, 25.442007>,  <26.255060, 35.432037, 25.774271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.255093, 36.078056, 25.442007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.616482, 36.012180, 25.600304>,  <26.833315, 35.972656, 25.695282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.616482, 36.012180, 25.600304>,  <26.255093, 36.078056, 25.442007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.616482, 36.012180, 25.600304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428416, 0.376911, -0.821217,
		-0.013915, 0.911491, 0.411085,
		0.903474, -0.164688, 0.395742,
		26.887524, 35.962772, 25.719027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.523928, 36.661095, 25.347206>,  <26.255093, 36.078056, 25.442007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.523928, 36.661095, 25.347206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.831726, 36.409103, 25.389160>,  <27.016405, 36.257908, 25.414333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.831726, 36.409103, 25.389160>,  <26.523928, 36.661095, 25.347206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.831726, 36.409103, 25.389160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421782, 0.377980, -0.824155,
		0.479556, 0.678423, 0.556569,
		0.769497, -0.629979, 0.104884,
		27.062574, 36.220108, 25.420626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.041122, 37.133339, 25.244490>,  <26.523928, 36.661095, 25.347206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.041122, 37.133339, 25.244490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.162945, 36.760883, 25.164257>,  <27.236038, 36.537411, 25.116117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.162945, 36.760883, 25.164257>,  <27.041122, 37.133339, 25.244490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.162945, 36.760883, 25.164257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082407, 0.235555, -0.968361,
		0.948922, 0.278392, 0.148472,
		0.304558, -0.931134, -0.200582,
		27.254313, 36.481544, 25.104082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.616201, 37.176132, 24.741001>,  <27.041122, 37.133339, 25.244490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.616201, 37.176132, 24.741001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.415203, 36.834023, 24.690403>,  <27.294603, 36.628757, 24.660044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.415203, 36.834023, 24.690403>,  <27.616201, 37.176132, 24.741001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.415203, 36.834023, 24.690403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138274, 0.223928, -0.964747,
		0.853450, -0.467292, -0.230786,
		-0.502497, -0.855275, -0.126497,
		27.264454, 36.577438, 24.652454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.930300, 36.730618, 24.163063>,  <27.616201, 37.176132, 24.741001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.930300, 36.730618, 24.163063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.534361, 36.707527, 24.215012>,  <27.296797, 36.693672, 24.246181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.534361, 36.707527, 24.215012>,  <27.930300, 36.730618, 24.163063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.534361, 36.707527, 24.215012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140240, 0.544980, -0.826637,
		-0.023058, -0.836459, -0.547544,
		-0.989849, -0.057728, 0.129871,
		27.237406, 36.690208, 24.253973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.539345, 37.102459, 23.780247>,  <27.930300, 36.730618, 24.163063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.539345, 37.102459, 23.780247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.166197, 36.958374, 23.779869>,  <26.942308, 36.871922, 23.779642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.166197, 36.958374, 23.779869>,  <27.539345, 37.102459, 23.780247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.166197, 36.958374, 23.779869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194925, 0.502599, 0.842258,
		-0.302919, 0.785901, -0.539073,
		-0.932869, -0.360215, -0.000945,
		26.886335, 36.850311, 23.779585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.881540, 37.669334, 23.636440>,  <27.539345, 37.102459, 23.780247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.881540, 37.669334, 23.636440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.857368, 37.354912, 23.882519>,  <26.842865, 37.166260, 24.030165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.857368, 37.354912, 23.882519>,  <26.881540, 37.669334, 23.636440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.857368, 37.354912, 23.882519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342737, 0.595191, 0.726829,
		-0.937486, -0.166927, -0.305379,
		-0.060431, -0.786056, 0.615195,
		26.839239, 37.119095, 24.067078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.208614, 37.591644, 23.836031>,  <26.881540, 37.669334, 23.636440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.208614, 37.591644, 23.836031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.440811, 37.459972, 24.133934>,  <26.580130, 37.380970, 24.312675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.440811, 37.459972, 24.133934>,  <26.208614, 37.591644, 23.836031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.440811, 37.459972, 24.133934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502018, 0.575441, 0.645636,
		-0.641098, -0.748670, 0.168784,
		0.580493, -0.329184, 0.744759,
		26.614960, 37.361217, 24.357361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.530724, 37.611713, 24.050722>,  <26.208614, 37.591644, 23.836031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.530724, 37.611713, 24.050722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.668423, 37.976597, 23.961838>,  <25.751041, 38.195526, 23.908508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.668423, 37.976597, 23.961838>,  <25.530724, 37.611713, 24.050722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.668423, 37.976597, 23.961838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885342, -0.394174, -0.246569,
		-0.312511, -0.111851, -0.943306,
		0.344248, 0.912204, -0.222210,
		25.771698, 38.250259, 23.895174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.814785, 37.843925, 23.700199>,  <25.530724, 37.611713, 24.050722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.814785, 37.843925, 23.700199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.644171, 37.771862, 24.054737>,  <24.541801, 37.728622, 24.267460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.644171, 37.771862, 24.054737>,  <24.814785, 37.843925, 23.700199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.644171, 37.771862, 24.054737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636850, -0.636035, -0.435755,
		0.642252, -0.750334, 0.156558,
		-0.426538, -0.180161, 0.886345,
		24.516209, 37.717815, 24.320641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.795748, 37.113438, 23.915342>,  <24.814785, 37.843925, 23.700199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.795748, 37.113438, 23.915342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.491459, 37.318562, 24.074501>,  <24.308886, 37.441635, 24.169996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.491459, 37.318562, 24.074501>,  <24.795748, 37.113438, 23.915342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.491459, 37.318562, 24.074501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630543, -0.729304, -0.265577,
		0.153998, -0.452923, 0.878149,
		-0.760723, 0.512812, 0.397898,
		24.263243, 37.472404, 24.193871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.466570, 36.649090, 24.360931>,  <24.795748, 37.113438, 23.915342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.466570, 36.649090, 24.360931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.192675, 36.921970, 24.258377>,  <24.028337, 37.085701, 24.196844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.192675, 36.921970, 24.258377>,  <24.466570, 36.649090, 24.360931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.192675, 36.921970, 24.258377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656792, -0.730108, -0.188590,
		-0.315845, 0.039257, 0.947998,
		-0.684738, 0.682203, -0.256385,
		23.987253, 37.126633, 24.181461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.796680, 36.436901, 24.582457>,  <24.466570, 36.649090, 24.360931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.796680, 36.436901, 24.582457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.732531, 36.682938, 24.273666>,  <23.694040, 36.830559, 24.088392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.732531, 36.682938, 24.273666>,  <23.796680, 36.436901, 24.582457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.732531, 36.682938, 24.273666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716291, -0.610629, -0.337726,
		-0.679123, 0.498797, 0.538510,
		-0.160373, 0.615088, -0.771976,
		23.684418, 36.867462, 24.042074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.013918, 36.513149, 24.509682>,  <23.796680, 36.436901, 24.582457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.013918, 36.513149, 24.509682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.209953, 36.571007, 24.165848>,  <23.327576, 36.605721, 23.959547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.209953, 36.571007, 24.165848>,  <23.013918, 36.513149, 24.509682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.209953, 36.571007, 24.165848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663060, -0.578269, -0.475349,
		-0.565829, 0.802922, -0.187495,
		0.490091, 0.144646, -0.859586,
		23.356981, 36.614399, 23.907972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.496475, 36.500065, 24.127769>,  <23.013918, 36.513149, 24.509682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.496475, 36.500065, 24.127769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.784924, 36.437519, 23.857796>,  <22.957993, 36.399990, 23.695812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.784924, 36.437519, 23.857796>,  <22.496475, 36.500065, 24.127769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.784924, 36.437519, 23.857796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664827, -0.430254, -0.610644,
		-0.194908, 0.889062, -0.414222,
		0.721121, -0.156367, -0.674932,
		23.001261, 36.390610, 23.655315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.136629, 36.520073, 23.522093>,  <22.496475, 36.500065, 24.127769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.136629, 36.520073, 23.522093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.481543, 36.347576, 23.415886>,  <22.688490, 36.244080, 23.352161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.481543, 36.347576, 23.415886>,  <22.136629, 36.520073, 23.522093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.481543, 36.347576, 23.415886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499581, -0.638419, -0.585525,
		0.082991, 0.637536, -0.765937,
		0.862282, -0.431242, -0.265518,
		22.740227, 36.218204, 23.336231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.090643, 36.370083, 22.809042>,  <22.136629, 36.520073, 23.522093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.090643, 36.370083, 22.809042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.372845, 36.107193, 22.915115>,  <22.542166, 35.949459, 22.978760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.372845, 36.107193, 22.915115>,  <22.090643, 36.370083, 22.809042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.372845, 36.107193, 22.915115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421047, -0.689682, -0.589116,
		0.570071, 0.303971, -0.763296,
		0.705506, -0.657222, 0.265182,
		22.584496, 35.910027, 22.994671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.125454, 35.996162, 22.147806>,  <22.090643, 36.370083, 22.809042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.125454, 35.996162, 22.147806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.280523, 35.774792, 22.442677>,  <22.373564, 35.641968, 22.619598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.280523, 35.774792, 22.442677>,  <22.125454, 35.996162, 22.147806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.280523, 35.774792, 22.442677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420403, -0.817851, -0.392913,
		0.820349, -0.157589, -0.549721,
		0.387671, -0.553430, 0.737175,
		22.396824, 35.608765, 22.663830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.620653, 35.493034, 21.849041>,  <22.125454, 35.996162, 22.147806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.620653, 35.493034, 21.849041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.465965, 35.347443, 22.187973>,  <22.373152, 35.260090, 22.391333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.465965, 35.347443, 22.187973>,  <22.620653, 35.493034, 21.849041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.465965, 35.347443, 22.187973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181591, -0.870773, -0.456925,
		0.904142, -0.330569, 0.270649,
		-0.386719, -0.363977, 0.847331,
		22.349949, 35.238251, 22.442173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.792557, 34.901802, 21.740387>,  <22.620653, 35.493034, 21.849041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.792557, 34.901802, 21.740387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.545097, 34.851028, 22.050526>,  <22.396622, 34.820564, 22.236609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.545097, 34.851028, 22.050526>,  <22.792557, 34.901802, 21.740387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.545097, 34.851028, 22.050526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379438, -0.815875, -0.436320,
		0.687970, -0.564124, 0.456576,
		-0.618648, -0.126933, 0.775347,
		22.359503, 34.812950, 22.283131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.750681, 34.194195, 21.851488>,  <22.792557, 34.901802, 21.740387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.750681, 34.194195, 21.851488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.432949, 34.333157, 22.050827>,  <22.242310, 34.416534, 22.170431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.432949, 34.333157, 22.050827>,  <22.750681, 34.194195, 21.851488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.432949, 34.333157, 22.050827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563612, -0.727552, -0.391165,
		0.226680, -0.591588, 0.773718,
		-0.794328, 0.347408, 0.498347,
		22.194651, 34.437378, 22.200331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.477695, 33.621212, 22.199993>,  <22.750681, 34.194195, 21.851488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.477695, 33.621212, 22.199993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.207355, 33.903698, 22.115627>,  <22.045151, 34.073189, 22.065008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.207355, 33.903698, 22.115627>,  <22.477695, 33.621212, 22.199993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.207355, 33.903698, 22.115627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608818, -0.696219, -0.380291,
		-0.415409, -0.128612, 0.900497,
		-0.675852, 0.706214, -0.210914,
		22.004601, 34.115562, 22.052353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.827974, 33.293201, 22.341553>,  <22.477695, 33.621212, 22.199993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.827974, 33.293201, 22.341553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.756420, 33.615959, 22.116371>,  <21.713488, 33.809616, 21.981262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.756420, 33.615959, 22.116371>,  <21.827974, 33.293201, 22.341553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.756420, 33.615959, 22.116371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651148, -0.526036, -0.547075,
		-0.737568, 0.268704, 0.619509,
		-0.178883, 0.806898, -0.562954,
		21.702755, 33.858028, 21.947485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.063808, 33.361271, 22.164186>,  <21.827974, 33.293201, 22.341553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.063808, 33.361271, 22.164186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.242359, 33.589718, 21.888630>,  <21.349489, 33.726788, 21.723297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.242359, 33.589718, 21.888630>,  <21.063808, 33.361271, 22.164186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.242359, 33.589718, 21.888630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629073, -0.347229, -0.695485,
		-0.636407, 0.743812, 0.204280,
		0.446378, 0.571118, -0.688890,
		21.376272, 33.761055, 21.681963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.546310, 33.622555, 21.785917>,  <21.063808, 33.361271, 22.164186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.546310, 33.622555, 21.785917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.871067, 33.645847, 21.553558>,  <21.065922, 33.659824, 21.414143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.871067, 33.645847, 21.553558>,  <20.546310, 33.622555, 21.785917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.871067, 33.645847, 21.553558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554438, -0.234717, -0.798440,
		-0.182841, 0.970318, -0.158279,
		0.811891, 0.058232, -0.580898,
		21.114634, 33.663319, 21.379290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.266069, 33.758175, 21.159616>,  <20.546310, 33.622555, 21.785917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.266069, 33.758175, 21.159616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.639442, 33.677917, 21.040653>,  <20.863466, 33.629765, 20.969275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.639442, 33.677917, 21.040653>,  <20.266069, 33.758175, 21.159616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.639442, 33.677917, 21.040653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328807, -0.146849, -0.932910,
		0.143505, 0.968596, -0.203045,
		0.933430, -0.200640, -0.297408,
		20.919472, 33.617725, 20.951431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.351307, 34.163517, 20.610277>,  <20.266069, 33.758175, 21.159616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.351307, 34.163517, 20.610277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.618212, 33.869854, 20.560051>,  <20.778355, 33.693657, 20.529915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.618212, 33.869854, 20.560051>,  <20.351307, 34.163517, 20.610277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.618212, 33.869854, 20.560051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273777, -0.084972, -0.958032,
		0.692680, 0.673638, -0.257695,
		0.667264, -0.734160, -0.125568,
		20.818392, 33.649605, 20.522381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.769844, 34.236969, 20.023378>,  <20.351307, 34.163517, 20.610277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.769844, 34.236969, 20.023378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.816755, 33.843815, 20.080212>,  <20.844902, 33.607922, 20.114311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.816755, 33.843815, 20.080212>,  <20.769844, 34.236969, 20.023378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.816755, 33.843815, 20.080212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313258, -0.172382, -0.933892,
		0.942398, 0.065018, -0.328113,
		0.117280, -0.982882, 0.142085,
		20.851940, 33.548950, 20.122837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.046711, 34.009617, 19.414375>,  <20.769844, 34.236969, 20.023378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.046711, 34.009617, 19.414375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.940594, 33.654213, 19.564137>,  <20.876923, 33.440971, 19.653994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.940594, 33.654213, 19.564137>,  <21.046711, 34.009617, 19.414375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.940594, 33.654213, 19.564137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259118, -0.308329, -0.915309,
		0.928696, -0.339841, -0.148430,
		-0.265294, -0.888505, 0.374403,
		20.861006, 33.387661, 19.676456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.437376, 33.491688, 19.014597>,  <21.046711, 34.009617, 19.414375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.437376, 33.491688, 19.014597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.119154, 33.314728, 19.180187>,  <20.928221, 33.208549, 19.279541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.119154, 33.314728, 19.180187>,  <21.437376, 33.491688, 19.014597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.119154, 33.314728, 19.180187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302716, -0.301633, -0.904091,
		0.524841, -0.844569, 0.106042,
		-0.795553, -0.442403, 0.413974,
		20.880487, 33.182007, 19.304380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.319014, 32.840897, 18.556688>,  <21.437376, 33.491688, 19.014597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.319014, 32.840897, 18.556688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.981153, 32.929379, 18.751678>,  <20.778437, 32.982468, 18.868673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.981153, 32.929379, 18.751678>,  <21.319014, 32.840897, 18.556688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.981153, 32.929379, 18.751678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531178, -0.233297, -0.814508,
		-0.066449, -0.946911, 0.314555,
		-0.844651, 0.221208, 0.487475,
		20.727758, 32.995743, 18.897921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.903625, 32.428024, 18.300053>,  <21.319014, 32.840897, 18.556688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.903625, 32.428024, 18.300053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.628376, 32.661095, 18.473019>,  <20.463226, 32.800938, 18.576797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.628376, 32.661095, 18.473019>,  <20.903625, 32.428024, 18.300053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.628376, 32.661095, 18.473019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597420, -0.116748, -0.793385,
		-0.411800, -0.804278, 0.428436,
		-0.688121, 0.582672, 0.432415,
		20.421940, 32.835896, 18.602743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.242403, 32.141510, 18.297472>,  <20.903625, 32.428024, 18.300053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.242403, 32.141510, 18.297472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.252201, 32.539825, 18.262138>,  <20.258080, 32.778816, 18.240938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.252201, 32.539825, 18.262138>,  <20.242403, 32.141510, 18.297472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.252201, 32.539825, 18.262138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486101, -0.065346, -0.871456,
		-0.873559, 0.064287, 0.482453,
		0.024497, 0.995790, -0.088334,
		20.259550, 32.838562, 18.235638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.225821, 31.450420, 17.981678>,  <20.242403, 32.141510, 18.297472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.225821, 31.450420, 17.981678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.987566, 31.175961, 17.814625>,  <19.844614, 31.011284, 17.714394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.987566, 31.175961, 17.814625>,  <20.225821, 31.450420, 17.981678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.987566, 31.175961, 17.814625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411859, -0.707258, 0.574594,
		-0.689631, 0.170243, 0.703865,
		-0.595635, -0.686151, -0.417631,
		19.808876, 30.970116, 17.689335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.549370, 31.594858, 17.303974>,  <20.225821, 31.450420, 17.981678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.549370, 31.594858, 17.303974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.460335, 31.979897, 17.242188>,  <20.406914, 32.210918, 17.205114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.460335, 31.979897, 17.242188>,  <20.549370, 31.594858, 17.303974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.460335, 31.979897, 17.242188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695914, -0.045920, 0.716655,
		0.682757, 0.267017, 0.680106,
		-0.222590, 0.962597, -0.154469,
		20.393559, 32.268677, 17.195847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.145100, 32.077530, 17.109243>,  <20.549370, 31.594858, 17.303974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.145100, 32.077530, 17.109243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.305956, 32.441711, 17.147949>,  <21.402470, 32.660221, 17.171173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.305956, 32.441711, 17.147949>,  <21.145100, 32.077530, 17.109243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.305956, 32.441711, 17.147949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167337, 0.176995, -0.969882,
		-0.900157, 0.373835, 0.223529,
		0.402139, 0.910451, 0.096767,
		21.426598, 32.714848, 17.176979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.573381, 31.796701, 16.443621>,  <21.145100, 32.077530, 17.109243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.573381, 31.796701, 16.443621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.768171, 31.784382, 16.792770>,  <21.885044, 31.776991, 17.002260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.768171, 31.784382, 16.792770>,  <21.573381, 31.796701, 16.443621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.768171, 31.784382, 16.792770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130994, -0.985499, -0.107853,
		0.863538, 0.166863, -0.475876,
		0.486972, -0.030798, 0.872874,
		21.914263, 31.775143, 17.054632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.780546, 32.128048, 15.857155>,  <21.573381, 31.796701, 16.443621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.780546, 32.128048, 15.857155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.835617, 32.446449, 15.621385>,  <21.868660, 32.637489, 15.479922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.835617, 32.446449, 15.621385>,  <21.780546, 32.128048, 15.857155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.835617, 32.446449, 15.621385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192115, 0.562331, 0.804286,
		0.971667, -0.223968, -0.075505,
		0.137675, 0.796004, -0.589426,
		21.876919, 32.685249, 15.444556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.388924, 32.576794, 15.949761>,  <21.780546, 32.128048, 15.857155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.388924, 32.576794, 15.949761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.121651, 32.830933, 15.794911>,  <21.961287, 32.983418, 15.702002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.121651, 32.830933, 15.794911>,  <22.388924, 32.576794, 15.949761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.121651, 32.830933, 15.794911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134829, 0.615123, 0.776817,
		0.731677, 0.466861, -0.496679,
		-0.668184, 0.635346, -0.387125,
		21.921196, 33.021538, 15.678774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.763678, 33.283226, 15.774035>,  <22.388924, 32.576794, 15.949761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.763678, 33.283226, 15.774035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.372984, 33.250320, 15.853255>,  <22.138567, 33.230579, 15.900787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.372984, 33.250320, 15.853255>,  <22.763678, 33.283226, 15.774035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.372984, 33.250320, 15.853255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112143, 0.591262, 0.798645,
		-0.182797, 0.802273, -0.568280,
		-0.976734, -0.082262, 0.198050,
		22.079964, 33.225643, 15.912670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.467884, 33.935780, 15.880541>,  <22.763678, 33.283226, 15.774035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.467884, 33.935780, 15.880541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.318140, 33.626122, 16.084717>,  <22.228292, 33.440327, 16.207222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.318140, 33.626122, 16.084717>,  <22.467884, 33.935780, 15.880541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.318140, 33.626122, 16.084717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029518, 0.540240, 0.840993,
		-0.926813, 0.329902, -0.179394,
		-0.374361, -0.774148, 0.510440,
		22.205832, 33.393879, 16.237848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.743021, 34.096619, 16.250826>,  <22.467884, 33.935780, 15.880541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.743021, 34.096619, 16.250826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.017399, 33.847324, 16.401054>,  <22.182026, 33.697746, 16.491192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.017399, 33.847324, 16.401054>,  <21.743021, 34.096619, 16.250826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.017399, 33.847324, 16.401054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057601, 0.561027, 0.825791,
		-0.725372, -0.544812, 0.420732,
		0.685943, -0.623240, 0.375571,
		22.223183, 33.660351, 16.513725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.527309, 33.946011, 16.992245>,  <21.743021, 34.096619, 16.250826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.527309, 33.946011, 16.992245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.915817, 33.957047, 16.897694>,  <22.148922, 33.963669, 16.840963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.915817, 33.957047, 16.897694>,  <21.527309, 33.946011, 16.992245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.915817, 33.957047, 16.897694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172345, 0.603406, 0.778588,
		0.164113, -0.796957, 0.581315,
		0.971269, 0.027589, -0.236378,
		22.207197, 33.965324, 16.826780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.895218, 33.800072, 17.604626>,  <21.527309, 33.946011, 16.992245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.895218, 33.800072, 17.604626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.143385, 33.993813, 17.357891>,  <22.292286, 34.110058, 17.209850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.143385, 33.993813, 17.357891>,  <21.895218, 33.800072, 17.604626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.143385, 33.993813, 17.357891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054373, 0.758053, 0.649923,
		0.782383, -0.436764, 0.443975,
		0.620419, 0.484349, -0.616836,
		22.329512, 34.139118, 17.172840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.528585, 33.797649, 18.008827>,  <21.895218, 33.800072, 17.604626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.528585, 33.797649, 18.008827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.592413, 34.084442, 17.737396>,  <22.630709, 34.256519, 17.574537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.592413, 34.084442, 17.737396>,  <22.528585, 33.797649, 18.008827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.592413, 34.084442, 17.737396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244980, 0.637125, 0.730792,
		0.956307, -0.282848, -0.073984,
		0.159566, 0.716986, -0.678579,
		22.640284, 34.299538, 17.533823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.157440, 34.105392, 18.141594>,  <22.528585, 33.797649, 18.008827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.157440, 34.105392, 18.141594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.935308, 34.378349, 17.951458>,  <22.802031, 34.542126, 17.837376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.935308, 34.378349, 17.951458>,  <23.157440, 34.105392, 18.141594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.935308, 34.378349, 17.951458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252240, 0.682860, 0.685621,
		0.792455, 0.260845, -0.551339,
		-0.555328, 0.682394, -0.475341,
		22.768709, 34.583069, 17.808855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.512890, 34.772812, 18.227556>,  <23.157440, 34.105392, 18.141594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.512890, 34.772812, 18.227556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.141047, 34.883041, 18.129669>,  <22.917940, 34.949177, 18.070936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.141047, 34.883041, 18.129669>,  <23.512890, 34.772812, 18.227556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.141047, 34.883041, 18.129669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025198, 0.614933, 0.788177,
		0.367684, 0.738863, -0.564704,
		-0.929610, 0.275570, -0.244719,
		22.862164, 34.965714, 18.056253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.456774, 35.368469, 18.520967>,  <23.512890, 34.772812, 18.227556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.456774, 35.368469, 18.520967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.071693, 35.334419, 18.418236>,  <22.840645, 35.313992, 18.356596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.071693, 35.334419, 18.418236>,  <23.456774, 35.368469, 18.520967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.071693, 35.334419, 18.418236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240252, 0.705521, 0.666723,
		0.124446, 0.703559, -0.699656,
		-0.962701, -0.085123, -0.256830,
		22.782883, 35.308884, 18.341187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.238939, 36.041367, 18.207098>,  <23.456774, 35.368469, 18.520967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.238939, 36.041367, 18.207098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.923429, 35.843094, 18.352497>,  <22.734123, 35.724129, 18.439737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.923429, 35.843094, 18.352497>,  <23.238939, 36.041367, 18.207098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.923429, 35.843094, 18.352497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230036, 0.786433, 0.573242,
		-0.570013, 0.368542, -0.734344,
		-0.788777, -0.495681, 0.363499,
		22.686796, 35.694389, 18.461548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.785957, 36.579582, 18.408272>,  <23.238939, 36.041367, 18.207098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.785957, 36.579582, 18.408272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.618547, 36.269020, 18.596752>,  <22.518101, 36.082684, 18.709841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.618547, 36.269020, 18.596752>,  <22.785957, 36.579582, 18.408272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.618547, 36.269020, 18.596752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250537, 0.597395, 0.761807,
		-0.872965, 0.200782, -0.444544,
		-0.418526, -0.776405, 0.471202,
		22.492990, 36.036098, 18.738113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.202192, 36.896458, 18.740761>,  <22.785957, 36.579582, 18.408272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.202192, 36.896458, 18.740761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.297770, 36.563171, 18.940220>,  <22.355116, 36.363197, 19.059896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.297770, 36.563171, 18.940220>,  <22.202192, 36.896458, 18.740761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.297770, 36.563171, 18.940220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171450, 0.469256, 0.866259,
		-0.955778, -0.292480, -0.030730,
		0.238943, -0.833219, 0.498650,
		22.369452, 36.313206, 19.089815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.751446, 36.914165, 19.284452>,  <22.202192, 36.896458, 18.740761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.751446, 36.914165, 19.284452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.059828, 36.680199, 19.385254>,  <22.244858, 36.539818, 19.445734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.059828, 36.680199, 19.385254>,  <21.751446, 36.914165, 19.284452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.059828, 36.680199, 19.385254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069748, 0.470837, 0.879459,
		-0.633059, -0.660447, 0.403791,
		0.770955, -0.584913, 0.252002,
		22.291115, 36.504726, 19.460855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.644405, 36.899460, 19.914326>,  <21.751446, 36.914165, 19.284452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.644405, 36.899460, 19.914326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.017385, 36.756321, 19.934258>,  <22.241173, 36.670437, 19.946217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.017385, 36.756321, 19.934258>,  <21.644405, 36.899460, 19.914326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.017385, 36.756321, 19.934258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124659, 0.448092, 0.885254,
		-0.339113, -0.819243, 0.462432,
		0.932450, -0.357847, 0.049828,
		22.297121, 36.648968, 19.949205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.642719, 36.577324, 20.558716>,  <21.644405, 36.899460, 19.914326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.642719, 36.577324, 20.558716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.030428, 36.642330, 20.484848>,  <22.263054, 36.681332, 20.440527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.030428, 36.642330, 20.484848>,  <21.642719, 36.577324, 20.558716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.030428, 36.642330, 20.484848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107594, 0.395030, 0.912346,
		0.221217, -0.904180, 0.365406,
		0.969271, 0.162510, -0.184672,
		22.321209, 36.691082, 20.429447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.966942, 36.331287, 21.125565>,  <21.642719, 36.577324, 20.558716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.966942, 36.331287, 21.125565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.202456, 36.603100, 20.950489>,  <22.343763, 36.766186, 20.845444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.202456, 36.603100, 20.950489>,  <21.966942, 36.331287, 21.125565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.202456, 36.603100, 20.950489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130091, 0.454776, 0.881053,
		0.797752, -0.575690, 0.179365,
		0.588785, 0.679529, -0.437691,
		22.379091, 36.806957, 20.819181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.517176, 36.346146, 21.636776>,  <21.966942, 36.331287, 21.125565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.517176, 36.346146, 21.636776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.518557, 36.677971, 21.413414>,  <22.519386, 36.877064, 21.279396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.518557, 36.677971, 21.413414>,  <22.517176, 36.346146, 21.636776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.518557, 36.677971, 21.413414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061410, 0.557178, 0.828119,
		0.998107, -0.037152, -0.049019,
		0.003454, 0.829561, -0.558405,
		22.519592, 36.926838, 21.245892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.037603, 36.701218, 21.947197>,  <22.517176, 36.346146, 21.636776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.037603, 36.701218, 21.947197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.794847, 36.948517, 21.747414>,  <22.649193, 37.096897, 21.627544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.794847, 36.948517, 21.747414>,  <23.037603, 36.701218, 21.947197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.794847, 36.948517, 21.747414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136273, 0.538167, 0.831749,
		0.783015, 0.572843, -0.242358,
		-0.606891, 0.618245, -0.499456,
		22.612780, 37.133991, 21.597576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.328995, 37.301708, 22.123253>,  <23.037603, 36.701218, 21.947197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.328995, 37.301708, 22.123253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.964840, 37.397156, 21.988045>,  <22.746347, 37.454426, 21.906919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.964840, 37.397156, 21.988045>,  <23.328995, 37.301708, 22.123253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.964840, 37.397156, 21.988045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108108, 0.651389, 0.751002,
		0.399386, 0.720245, -0.567219,
		-0.910387, 0.238618, -0.338020,
		22.691725, 37.468742, 21.886639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.265154, 37.956596, 22.198629>,  <23.328995, 37.301708, 22.123253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.265154, 37.956596, 22.198629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.880560, 37.846973, 22.190289>,  <22.649803, 37.781200, 22.185284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.880560, 37.846973, 22.190289>,  <23.265154, 37.956596, 22.198629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.880560, 37.846973, 22.190289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173805, 0.547486, 0.818566,
		-0.212921, 0.790664, -0.574034,
		-0.961487, -0.274060, -0.020850,
		22.592113, 37.764755, 22.184034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.878349, 38.614326, 22.299141>,  <23.265154, 37.956596, 22.198629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.878349, 38.614326, 22.299141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.596891, 38.337860, 22.365070>,  <22.428017, 38.171978, 22.404629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.596891, 38.337860, 22.365070>,  <22.878349, 38.614326, 22.299141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.596891, 38.337860, 22.365070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368166, 0.553044, 0.747393,
		-0.607729, 0.465218, -0.643613,
		-0.703647, -0.691169, 0.164823,
		22.385798, 38.130508, 22.414516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.270563, 38.960529, 22.367794>,  <22.878349, 38.614326, 22.299141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.270563, 38.960529, 22.367794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.191849, 38.612492, 22.548557>,  <22.144621, 38.403671, 22.657015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.191849, 38.612492, 22.548557>,  <22.270563, 38.960529, 22.367794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.191849, 38.612492, 22.548557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337882, 0.492866, 0.801822,
		-0.920387, 0.005095, -0.390976,
		-0.196784, -0.870090, 0.451906,
		22.132814, 38.351463, 22.684130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.662403, 39.102055, 22.661377>,  <22.270563, 38.960529, 22.367794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.662403, 39.102055, 22.661377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.766890, 38.772324, 22.862278>,  <21.829580, 38.574486, 22.982819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.766890, 38.772324, 22.862278>,  <21.662403, 39.102055, 22.661377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.766890, 38.772324, 22.862278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302141, 0.424348, 0.853604,
		-0.916776, -0.374725, -0.138216,
		0.261215, -0.824324, 0.502252,
		21.845255, 38.525028, 23.012953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.044083, 38.949730, 23.113127>,  <21.662403, 39.102055, 22.661377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.044083, 38.949730, 23.113127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.385120, 38.796196, 23.254971>,  <21.589743, 38.704075, 23.340076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.385120, 38.796196, 23.254971>,  <21.044083, 38.949730, 23.113127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.385120, 38.796196, 23.254971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056735, 0.606588, 0.792989,
		-0.519482, -0.696218, 0.495397,
		0.852596, -0.383837, 0.354611,
		21.640900, 38.681046, 23.361355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.334614, 38.744476, 23.207117>,  <21.044083, 38.949730, 23.113127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.334614, 38.744476, 23.207117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.033443, 38.888962, 23.427162>,  <19.852741, 38.975655, 23.559189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.033443, 38.888962, 23.427162>,  <20.334614, 38.744476, 23.207117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.033443, 38.888962, 23.427162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530592, -0.827698, -0.182726,
		0.389323, -0.429465, 0.814854,
		-0.752927, 0.361216, 0.550112,
		19.807566, 38.997326, 23.592196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.179947, 38.261524, 23.791254>,  <20.334614, 38.744476, 23.207117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.179947, 38.261524, 23.791254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.852062, 38.451572, 23.663296>,  <19.655331, 38.565601, 23.586521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.852062, 38.451572, 23.663296>,  <20.179947, 38.261524, 23.791254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.852062, 38.451572, 23.663296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347652, -0.856565, -0.381358,
		-0.455200, -0.201393, 0.867314,
		-0.819714, 0.475118, -0.319894,
		19.606148, 38.594109, 23.567327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.560795, 37.853001, 23.933975>,  <20.179947, 38.261524, 23.791254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.560795, 37.853001, 23.933975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.454081, 38.101532, 23.639282>,  <19.390053, 38.250652, 23.462465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.454081, 38.101532, 23.639282>,  <19.560795, 37.853001, 23.933975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.454081, 38.101532, 23.639282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685677, -0.659558, -0.307945,
		-0.677254, 0.423007, 0.601990,
		-0.266784, 0.621328, -0.736735,
		19.374044, 38.287930, 23.418262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.831743, 38.025021, 23.958731>,  <19.560795, 37.853001, 23.933975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.831743, 38.025021, 23.958731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.974072, 38.051361, 23.585838>,  <19.059469, 38.067165, 23.362103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.974072, 38.051361, 23.585838>,  <18.831743, 38.025021, 23.958731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.974072, 38.051361, 23.585838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616112, -0.733518, -0.286978,
		-0.702707, 0.676472, -0.220429,
		0.355822, 0.065852, -0.932231,
		19.080818, 38.071117, 23.306170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.227926, 38.001232, 23.511742>,  <18.831743, 38.025021, 23.958731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.227926, 38.001232, 23.511742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.559654, 37.843658, 23.353226>,  <18.758692, 37.749115, 23.258116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.559654, 37.843658, 23.353226>,  <18.227926, 38.001232, 23.511742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.559654, 37.843658, 23.353226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503178, -0.834894, -0.223076,
		-0.242982, 0.384405, -0.890613,
		0.829320, -0.393933, -0.396289,
		18.808451, 37.725479, 23.234339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<29.582464, 26.864872, 26.479692> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.924936, 26.763065, 26.659550>,  <30.130419, 26.701982, 26.767464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.924936, 26.763065, 26.659550>,  <29.582464, 26.864872, 26.479692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.924936, 26.763065, 26.659550> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437422, 0.820227, -0.368632,
		-0.274985, 0.512298, 0.813593,
		0.856180, -0.254515, 0.449641,
		30.181791, 26.686710, 26.794441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.793434, 27.483202, 26.879314>,  <29.582464, 26.864872, 26.479692>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.793434, 27.483202, 26.879314> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.118963, 27.258537, 26.819679>,  <30.314281, 27.123737, 26.783897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.118963, 27.258537, 26.819679>,  <29.793434, 27.483202, 26.879314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.118963, 27.258537, 26.819679> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442431, 0.765201, -0.467676,
		0.376759, 0.314644, 0.871236,
		0.813823, -0.561663, -0.149088,
		30.363110, 27.090038, 26.774952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.299562, 27.931231, 27.087013>,  <29.793434, 27.483202, 26.879314>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.299562, 27.931231, 27.087013> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.450315, 27.640308, 26.857582>,  <30.540768, 27.465755, 26.719923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.450315, 27.640308, 26.857582>,  <30.299562, 27.931231, 27.087013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.450315, 27.640308, 26.857582> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478174, 0.683113, -0.552002,
		0.793290, -0.066229, 0.605231,
		0.376883, -0.727303, -0.573576,
		30.563381, 27.422117, 26.685509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.979984, 28.081261, 27.045118>,  <30.299562, 27.931231, 27.087013>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.979984, 28.081261, 27.045118> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.921883, 27.842010, 26.729866>,  <30.887022, 27.698462, 26.540714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.921883, 27.842010, 26.729866>,  <30.979984, 28.081261, 27.045118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.921883, 27.842010, 26.729866> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470442, 0.659016, -0.586841,
		0.870394, -0.456011, 0.185657,
		-0.145255, -0.598124, -0.788130,
		30.878305, 27.662573, 26.493427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.676420, 27.816452, 26.700211>,  <30.979984, 28.081261, 27.045118>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.676420, 27.816452, 26.700211> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.379393, 27.795979, 26.433086>,  <31.201176, 27.783695, 26.272812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.379393, 27.795979, 26.433086>,  <31.676420, 27.816452, 26.700211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.379393, 27.795979, 26.433086> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406250, 0.758300, -0.509846,
		0.532494, -0.649894, -0.542299,
		-0.742571, -0.051181, -0.667809,
		31.156622, 27.780624, 26.232744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.990995, 27.946020, 25.983187>,  <31.676420, 27.816452, 26.700211>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.990995, 27.946020, 25.983187> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.600397, 28.021286, 25.941135>,  <31.366039, 28.066446, 25.915905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.600397, 28.021286, 25.941135>,  <31.990995, 27.946020, 25.983187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.600397, 28.021286, 25.941135> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214568, 0.802322, -0.556991,
		-0.020461, -0.566456, -0.823838,
		-0.976495, 0.188166, -0.105128,
		31.307449, 28.077736, 25.909597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.831469, 28.063065, 25.259357>,  <31.990995, 27.946020, 25.983187>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.831469, 28.063065, 25.259357> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.521055, 28.238686, 25.440468>,  <31.334808, 28.344059, 25.549133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.521055, 28.238686, 25.440468>,  <31.831469, 28.063065, 25.259357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.521055, 28.238686, 25.440468> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056537, 0.763439, -0.643400,
		-0.628155, -0.473700, -0.617276,
		-0.776032, 0.439054, 0.452776,
		31.288246, 28.370401, 25.576302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.435011, 28.185503, 24.742493>,  <31.831469, 28.063065, 25.259357>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.435011, 28.185503, 24.742493> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.343855, 28.434120, 25.042294>,  <31.289162, 28.583290, 25.222174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.343855, 28.434120, 25.042294>,  <31.435011, 28.185503, 24.742493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.343855, 28.434120, 25.042294> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065116, 0.777761, -0.625179,
		-0.971508, -0.093666, -0.217715,
		-0.227888, 0.621542, 0.749501,
		31.275488, 28.620583, 25.267143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.092632, 28.773750, 24.378998>,  <31.435011, 28.185503, 24.742493>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.092632, 28.773750, 24.378998> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.154985, 28.922268, 24.745132>,  <31.192396, 29.011379, 24.964813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.154985, 28.922268, 24.745132>,  <31.092632, 28.773750, 24.378998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.154985, 28.922268, 24.745132> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187107, 0.920987, -0.341722,
		-0.969893, -0.117998, 0.213036,
		0.155881, 0.371294, 0.915337,
		31.201750, 29.033657, 25.019733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.557747, 29.210226, 24.498718>,  <31.092632, 28.773750, 24.378998>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.557747, 29.210226, 24.498718> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.849669, 29.351265, 24.733006>,  <31.024820, 29.435888, 24.873577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.849669, 29.351265, 24.733006>,  <30.557747, 29.210226, 24.498718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.849669, 29.351265, 24.733006> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166901, 0.922707, -0.347501,
		-0.662972, 0.155851, 0.732242,
		0.729802, 0.352595, 0.585717,
		31.068609, 29.457043, 24.908720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.320709, 29.912924, 24.790848>,  <30.557747, 29.210226, 24.498718>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.320709, 29.912924, 24.790848> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.719925, 29.930077, 24.809105>,  <30.959454, 29.940369, 24.820059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.719925, 29.930077, 24.809105>,  <30.320709, 29.912924, 24.790848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.719925, 29.930077, 24.809105> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028878, 0.961815, -0.272172,
		-0.055571, 0.270320, 0.961166,
		0.998037, 0.042881, 0.045643,
		31.019337, 29.942942, 24.822798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.416460, 30.478397, 25.147257>,  <30.320709, 29.912924, 24.790848>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.416460, 30.478397, 25.147257> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.750271, 30.420601, 24.934582>,  <30.950558, 30.385923, 24.806976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.750271, 30.420601, 24.934582>,  <30.416460, 30.478397, 25.147257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.750271, 30.420601, 24.934582> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003761, 0.963484, -0.267741,
		0.550958, 0.225436, 0.803507,
		0.834525, -0.144492, -0.531686,
		31.000628, 30.377253, 24.775076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.786337, 31.063913, 25.245295>,  <30.416460, 30.478397, 25.147257>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.786337, 31.063913, 25.245295> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.953968, 30.911716, 24.915543>,  <31.054546, 30.820398, 24.717691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.953968, 30.911716, 24.915543>,  <30.786337, 31.063913, 25.245295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.953968, 30.911716, 24.915543> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020966, 0.903659, -0.427740,
		0.907709, 0.196540, 0.370725,
		0.419077, -0.380491, -0.824380,
		31.079691, 30.797569, 24.668228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.291767, 31.480858, 25.192732>,  <30.786337, 31.063913, 25.245295>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.291767, 31.480858, 25.192732> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.181534, 31.303101, 24.851776>,  <31.115395, 31.196445, 24.647203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.181534, 31.303101, 24.851776>,  <31.291767, 31.480858, 25.192732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.181534, 31.303101, 24.851776> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125298, 0.895767, -0.426500,
		0.953076, -0.010734, -0.302539,
		-0.275583, -0.444394, -0.852389,
		31.098860, 31.169783, 24.596060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.691761, 31.916462, 24.682745>,  <31.291767, 31.480858, 25.192732>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.691761, 31.916462, 24.682745> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.416016, 31.723156, 24.466881>,  <31.250568, 31.607172, 24.337362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.416016, 31.723156, 24.466881>,  <31.691761, 31.916462, 24.682745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.416016, 31.723156, 24.466881> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115603, 0.808802, -0.576607,
		0.715132, -0.335105, -0.613425,
		-0.689363, -0.483263, -0.539661,
		31.209206, 31.578176, 24.304983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.799797, 32.121094, 23.975653>,  <31.691761, 31.916462, 24.682745>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.799797, 32.121094, 23.975653> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.433146, 31.961815, 23.989697>,  <31.213156, 31.866247, 23.998123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.433146, 31.961815, 23.989697>,  <31.799797, 32.121094, 23.975653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.433146, 31.961815, 23.989697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371481, 0.816091, -0.442716,
		0.147638, -0.418848, -0.895974,
		-0.916627, -0.398199, 0.035108,
		31.158157, 31.842356, 24.000229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.605789, 32.421967, 23.435701>,  <31.799797, 32.121094, 23.975653>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.605789, 32.421967, 23.435701> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.249954, 32.288410, 23.560375>,  <31.036453, 32.208275, 23.635180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.249954, 32.288410, 23.560375>,  <31.605789, 32.421967, 23.435701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.249954, 32.288410, 23.560375> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430162, 0.841890, -0.325856,
		-0.153603, -0.423953, -0.892564,
		-0.889588, -0.333895, 0.311685,
		30.983078, 32.188240, 23.653881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.113430, 32.447281, 22.773411>,  <31.605789, 32.421967, 23.435701>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.113430, 32.447281, 22.773411> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.922398, 32.451103, 23.124825>,  <30.807777, 32.453396, 23.335672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.922398, 32.451103, 23.124825>,  <31.113430, 32.447281, 22.773411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.922398, 32.451103, 23.124825> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473036, 0.839841, -0.266279,
		-0.740374, -0.542749, -0.396573,
		-0.477581, 0.009553, 0.878536,
		30.779123, 32.453968, 23.388386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.555502, 32.652325, 22.560844>,  <31.113430, 32.447281, 22.773411>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.555502, 32.652325, 22.560844> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.525040, 32.723640, 22.953255>,  <30.506762, 32.766430, 23.188702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.525040, 32.723640, 22.953255>,  <30.555502, 32.652325, 22.560844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.525040, 32.723640, 22.953255> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620044, 0.762047, -0.186629,
		-0.780862, -0.622492, 0.052516,
		-0.076156, 0.178294, 0.981026,
		30.502193, 32.777130, 23.247562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.864426, 32.878746, 22.643518>,  <30.555502, 32.652325, 22.560844>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.864426, 32.878746, 22.643518> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.081738, 33.024120, 22.946243>,  <30.212124, 33.111343, 23.127878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.081738, 33.024120, 22.946243>,  <29.864426, 32.878746, 22.643518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.081738, 33.024120, 22.946243> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450985, 0.886677, -0.102056,
		-0.708138, -0.285866, 0.645616,
		0.543279, 0.363433, 0.756812,
		30.244720, 33.133152, 23.173286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.389198, 33.395401, 22.878843>,  <29.864426, 32.878746, 22.643518>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.389198, 33.395401, 22.878843> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.727821, 33.485802, 23.071617>,  <29.930996, 33.540043, 23.187281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.727821, 33.485802, 23.071617>,  <29.389198, 33.395401, 22.878843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.727821, 33.485802, 23.071617> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198939, 0.974113, -0.107362,
		-0.493723, -0.004987, 0.869605,
		0.846559, 0.226005, 0.481934,
		29.981789, 33.553604, 23.216198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.225084, 34.013821, 23.360979>,  <29.389198, 33.395401, 22.878843>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.225084, 34.013821, 23.360979> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.616390, 34.023228, 23.278572>,  <29.851173, 34.028870, 23.229128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.616390, 34.023228, 23.278572>,  <29.225084, 34.013821, 23.360979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.616390, 34.023228, 23.278572> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071217, 0.971214, -0.227314,
		0.194740, 0.237045, 0.951780,
		0.978266, 0.023516, -0.206015,
		29.909870, 34.030281, 23.216768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.091028, 34.770737, 23.499336>,  <29.225084, 34.013821, 23.360979>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.091028, 34.770737, 23.499336> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.704103, 34.721283, 23.410774>,  <28.471949, 34.691612, 23.357637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.704103, 34.721283, 23.410774>,  <29.091028, 34.770737, 23.499336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.704103, 34.721283, 23.410774> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017806, -0.837833, 0.545637,
		-0.252957, 0.531744, 0.808246,
		-0.967314, -0.123631, -0.221404,
		28.413910, 34.684193, 23.344353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.648293, 34.642563, 24.147751>,  <29.091028, 34.770737, 23.499336>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.648293, 34.642563, 24.147751> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.431549, 34.467716, 23.860607>,  <28.301502, 34.362808, 23.688322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.431549, 34.467716, 23.860607>,  <28.648293, 34.642563, 24.147751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.431549, 34.467716, 23.860607> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119691, -0.805277, 0.580693,
		-0.831903, 0.400574, 0.384028,
		-0.541859, -0.437116, -0.717857,
		28.268991, 34.336582, 23.645250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.101221, 34.356319, 24.551718>,  <28.648293, 34.642563, 24.147751>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.101221, 34.356319, 24.551718> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.067070, 34.188301, 24.190327>,  <28.046579, 34.087490, 23.973492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.067070, 34.188301, 24.190327>,  <28.101221, 34.356319, 24.551718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.067070, 34.188301, 24.190327> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373438, -0.827198, 0.419866,
		-0.923718, 0.373240, -0.086236,
		-0.085377, -0.420042, -0.903480,
		28.041456, 34.062290, 23.919283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.459457, 34.000523, 24.504261>,  <28.101221, 34.356319, 24.551718>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.459457, 34.000523, 24.504261> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.697126, 33.832001, 24.230194>,  <27.839727, 33.730888, 24.065754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.697126, 33.832001, 24.230194>,  <27.459457, 34.000523, 24.504261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.697126, 33.832001, 24.230194> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350962, -0.902274, 0.250454,
		-0.723729, 0.091656, -0.683970,
		0.594173, -0.421309, -0.685170,
		27.875378, 33.705608, 24.024643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.091051, 33.523552, 24.034138>,  <27.459457, 34.000523, 24.504261>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.091051, 33.523552, 24.034138> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.471132, 33.405903, 23.992954>,  <27.699181, 33.335312, 23.968245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.471132, 33.405903, 23.992954>,  <27.091051, 33.523552, 24.034138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.471132, 33.405903, 23.992954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278783, -0.949961, 0.140901,
		-0.139248, -0.105182, -0.984655,
		0.950205, -0.294125, -0.102958,
		27.756193, 33.317665, 23.962067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.093637, 32.909950, 23.572510>,  <27.091051, 33.523552, 24.034138>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.093637, 32.909950, 23.572510> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.435707, 32.887749, 23.778652>,  <27.640949, 32.874428, 23.902338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.435707, 32.887749, 23.778652>,  <27.093637, 32.909950, 23.572510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.435707, 32.887749, 23.778652> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144475, -0.980373, 0.134147,
		0.497797, -0.189176, -0.846410,
		0.855176, -0.055507, 0.515358,
		27.692259, 32.871098, 23.933260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.313797, 32.255833, 23.379969>,  <27.093637, 32.909950, 23.572510>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.313797, 32.255833, 23.379969> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.527752, 32.342136, 23.706734>,  <27.656124, 32.393917, 23.902792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.527752, 32.342136, 23.706734>,  <27.313797, 32.255833, 23.379969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.527752, 32.342136, 23.706734> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151341, -0.926746, 0.343856,
		0.831259, -0.307557, -0.463053,
		0.534888, 0.215755, 0.816912,
		27.688219, 32.406864, 23.951807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.923922, 31.784393, 23.401966>,  <27.313797, 32.255833, 23.379969>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.923922, 31.784393, 23.401966> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.849134, 31.915184, 23.772507>,  <27.804262, 31.993658, 23.994831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.849134, 31.915184, 23.772507>,  <27.923922, 31.784393, 23.401966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.849134, 31.915184, 23.772507> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025095, -0.941084, 0.337241,
		0.982045, 0.086300, 0.167748,
		-0.186969, 0.326976, 0.926353,
		27.793043, 32.013275, 24.050413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.216415, 31.339743, 23.826321>,  <27.923922, 31.784393, 23.401966>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.216415, 31.339743, 23.826321> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.980141, 31.504940, 24.103600>,  <27.838375, 31.604059, 24.269966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.980141, 31.504940, 24.103600>,  <28.216415, 31.339743, 23.826321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.980141, 31.504940, 24.103600> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129888, -0.896551, 0.423469,
		0.796377, 0.160100, 0.583225,
		-0.590688, 0.412995, 0.693198,
		27.802935, 31.628838, 24.311560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.425144, 31.134638, 24.510567>,  <28.216415, 31.339743, 23.826321>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.425144, 31.134638, 24.510567> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.048290, 31.234848, 24.599667>,  <27.822178, 31.294973, 24.653128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.048290, 31.234848, 24.599667>,  <28.425144, 31.134638, 24.510567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.048290, 31.234848, 24.599667> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110488, -0.859393, 0.499235,
		0.316501, 0.445735, 0.837345,
		-0.942135, 0.250525, 0.222750,
		27.765650, 31.310005, 24.666492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.293354, 30.993290, 25.199472>,  <28.425144, 31.134638, 24.510567>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.293354, 30.993290, 25.199472> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.913361, 31.034462, 25.081532>,  <27.685364, 31.059166, 25.010767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.913361, 31.034462, 25.081532>,  <28.293354, 30.993290, 25.199472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.913361, 31.034462, 25.081532> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248128, -0.822080, 0.512462,
		-0.189644, 0.559991, 0.806502,
		-0.949983, 0.102931, -0.294852,
		27.628366, 31.065342, 24.993076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.861130, 30.852327, 25.794815>,  <28.293354, 30.993290, 25.199472>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.861130, 30.852327, 25.794815> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.631800, 30.792145, 25.472656>,  <27.494202, 30.756035, 25.279362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.631800, 30.792145, 25.472656>,  <27.861130, 30.852327, 25.794815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.631800, 30.792145, 25.472656> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344231, -0.847794, 0.403422,
		-0.743507, 0.508534, 0.434269,
		-0.573325, -0.150459, -0.805395,
		27.459803, 30.747007, 25.231037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.121733, 30.724722, 25.984951>,  <27.861130, 30.852327, 25.794815>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.121733, 30.724722, 25.984951> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.157269, 30.535458, 25.634357>,  <27.178591, 30.421900, 25.424002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.157269, 30.535458, 25.634357>,  <27.121733, 30.724722, 25.984951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.157269, 30.535458, 25.634357> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146212, -0.876627, 0.458417,
		-0.985256, 0.087426, -0.147062,
		0.088840, -0.473161, -0.876485,
		27.183920, 30.393509, 25.371412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.684164, 30.235594, 26.116928>,  <27.121733, 30.724722, 25.984951>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.684164, 30.235594, 26.116928> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.892494, 30.101875, 25.802734>,  <27.017492, 30.021645, 25.614218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.892494, 30.101875, 25.802734>,  <26.684164, 30.235594, 26.116928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.892494, 30.101875, 25.802734> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153014, -0.941790, 0.299363,
		-0.839838, -0.035726, -0.541660,
		0.520825, -0.334298, -0.785485,
		27.048742, 30.001585, 25.567089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.301292, 29.728619, 25.922188>,  <26.684164, 30.235594, 26.116928>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.301292, 29.728619, 25.922188> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.649954, 29.638336, 25.748165>,  <26.859150, 29.584166, 25.643751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.649954, 29.638336, 25.748165>,  <26.301292, 29.728619, 25.922188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.649954, 29.638336, 25.748165> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126381, -0.961141, 0.245429,
		-0.473548, -0.158946, -0.866308,
		0.871654, -0.225707, -0.435059,
		26.911449, 29.570623, 25.617647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.196306, 29.070148, 25.556311>,  <26.301292, 29.728619, 25.922188>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.196306, 29.070148, 25.556311> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.590769, 29.125664, 25.592598>,  <26.827446, 29.158974, 25.614370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.590769, 29.125664, 25.592598>,  <26.196306, 29.070148, 25.556311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.590769, 29.125664, 25.592598> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112940, -0.962842, 0.245317,
		0.121397, -0.231675, -0.965189,
		0.986158, 0.138789, 0.090721,
		26.886616, 29.167301, 25.619814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.570236, 28.519127, 25.195030>,  <26.196306, 29.070148, 25.556311>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.570236, 28.519127, 25.195030> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.834730, 28.659798, 25.460087>,  <26.993425, 28.744200, 25.619122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.834730, 28.659798, 25.460087>,  <26.570236, 28.519127, 25.195030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.834730, 28.659798, 25.460087> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195379, -0.933557, 0.300496,
		0.724292, -0.069232, -0.686009,
		0.661233, 0.351678, 0.662642,
		27.033100, 28.765301, 25.658878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.245312, 28.192593, 25.099457>,  <26.570236, 28.519127, 25.195030>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.245312, 28.192593, 25.099457> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.263683, 28.335495, 25.472607>,  <27.274706, 28.421236, 25.696497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.263683, 28.335495, 25.472607>,  <27.245312, 28.192593, 25.099457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.263683, 28.335495, 25.472607> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380533, -0.869708, 0.314329,
		0.923626, 0.340552, -0.175894,
		0.045931, 0.357256, 0.932877,
		27.277462, 28.442673, 25.752470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<27.988272, 28.035053, 25.421217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.754236, 28.100498, 25.738934>,  <27.613815, 28.139765, 25.929564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.754236, 28.100498, 25.738934>,  <27.988272, 28.035053, 25.421217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.754236, 28.100498, 25.738934> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209525, -0.915685, 0.342959,
		0.783435, 0.367085, 0.501476,
		-0.585089, 0.163614, 0.794293,
		27.578709, 28.149582, 25.977222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.421085, 27.776775, 25.881567>,  <27.988272, 28.035053, 25.421217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.421085, 27.776775, 25.881567> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.075441, 27.830318, 26.075638>,  <27.868055, 27.862444, 26.192081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.075441, 27.830318, 26.075638>,  <28.421085, 27.776775, 25.881567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.075441, 27.830318, 26.075638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150110, -0.851568, 0.502294,
		0.480399, 0.506866, 0.715754,
		-0.864109, 0.133860, 0.485178,
		27.816208, 27.870476, 26.221191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.513659, 27.709921, 26.589832>,  <28.421085, 27.776775, 25.881567>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.513659, 27.709921, 26.589832> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.125750, 27.637005, 26.524948>,  <27.893003, 27.593254, 26.486017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.125750, 27.637005, 26.524948>,  <28.513659, 27.709921, 26.589832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.125750, 27.637005, 26.524948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100282, -0.903766, 0.416114,
		-0.222454, 0.387268, 0.894727,
		-0.969772, -0.182292, -0.162210,
		27.834818, 27.582317, 26.476284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.288481, 27.503040, 27.218010>,  <28.513659, 27.709921, 26.589832>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.288481, 27.503040, 27.218010> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.034302, 27.386234, 26.932091>,  <27.881794, 27.316151, 26.760540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.034302, 27.386234, 26.932091>,  <28.288481, 27.503040, 27.218010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.034302, 27.386234, 26.932091> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021996, -0.918508, 0.394789,
		-0.771831, 0.266591, 0.577241,
		-0.635447, -0.292014, -0.714797,
		27.843668, 27.298630, 26.717651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.677633, 27.208479, 27.613602>,  <28.288481, 27.503040, 27.218010>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.677633, 27.208479, 27.613602> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.608912, 27.050747, 27.252495>,  <27.567678, 26.956108, 27.035831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.608912, 27.050747, 27.252495>,  <27.677633, 27.208479, 27.613602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.608912, 27.050747, 27.252495> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183972, -0.887427, 0.422644,
		-0.967801, 0.238695, 0.079917,
		-0.171803, -0.394332, -0.902766,
		27.557371, 26.932447, 26.981665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.065760, 26.834352, 27.644676>,  <27.677633, 27.208479, 27.613602>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.065760, 26.834352, 27.644676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.271351, 26.686039, 27.335266>,  <27.394707, 26.597050, 27.149620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.271351, 26.686039, 27.335266>,  <27.065760, 26.834352, 27.644676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.271351, 26.686039, 27.335266> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113484, -0.923219, 0.367135,
		-0.850262, -0.100917, -0.516594,
		0.513980, -0.370786, -0.773526,
		27.425545, 26.574802, 27.103209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.674265, 26.238743, 27.355350>,  <27.065760, 26.834352, 27.644676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.674265, 26.238743, 27.355350> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.046764, 26.174854, 27.224346>,  <27.270264, 26.136522, 27.145744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.046764, 26.174854, 27.224346>,  <26.674265, 26.238743, 27.355350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.046764, 26.174854, 27.224346> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071403, -0.961377, 0.265813,
		-0.357317, -0.224154, -0.906686,
		0.931250, -0.159719, -0.327511,
		27.326139, 26.126938, 27.126093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.648584, 25.667355, 26.853054>,  <26.674265, 26.238743, 27.355350>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.648584, 25.667355, 26.853054> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.023794, 25.672859, 26.991573>,  <27.248920, 25.676163, 27.074684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.023794, 25.672859, 26.991573>,  <26.648584, 25.667355, 26.853054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.023794, 25.672859, 26.991573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071632, -0.969936, 0.232581,
		0.339087, -0.242972, -0.908837,
		0.938024, 0.013763, 0.346297,
		27.305201, 25.676989, 27.095463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.029026, 24.987684, 26.699896>,  <26.648584, 25.667355, 26.853054>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.029026, 24.987684, 26.699896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.262959, 25.133038, 26.989979>,  <27.403318, 25.220249, 27.164028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.262959, 25.133038, 26.989979>,  <27.029026, 24.987684, 26.699896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.262959, 25.133038, 26.989979> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030118, -0.883698, 0.467087,
		0.810594, -0.295010, -0.505871,
		0.584833, 0.363383, 0.725206,
		27.438408, 25.242052, 27.207541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.473761, 24.424463, 26.944952>,  <27.029026, 24.987684, 26.699896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.473761, 24.424463, 26.944952> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.483559, 24.678886, 27.253452>,  <27.489437, 24.831541, 27.438553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.483559, 24.678886, 27.253452>,  <27.473761, 24.424463, 26.944952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.483559, 24.678886, 27.253452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091315, -0.766835, 0.635315,
		0.995521, -0.085988, 0.039299,
		0.024494, 0.636058, 0.771253,
		27.490908, 24.869703, 27.484829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.881502, 24.101418, 27.303637>,  <27.473761, 24.424463, 26.944952>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.881502, 24.101418, 27.303637> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.729971, 24.375542, 27.552422>,  <27.639051, 24.540016, 27.701693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.729971, 24.375542, 27.552422>,  <27.881502, 24.101418, 27.303637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.729971, 24.375542, 27.552422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094934, -0.639732, 0.762713,
		0.920585, 0.347982, 0.177289,
		-0.378828, 0.685312, 0.621963,
		27.616323, 24.581135, 27.739010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.257185, 24.016054, 27.952923>,  <27.881502, 24.101418, 27.303637>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.257185, 24.016054, 27.952923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.929228, 24.205078, 28.082207>,  <27.732454, 24.318493, 28.159777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.929228, 24.205078, 28.082207>,  <28.257185, 24.016054, 27.952923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.929228, 24.205078, 28.082207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028242, -0.597237, 0.801568,
		0.571820, 0.648071, 0.503016,
		-0.819893, 0.472559, 0.323209,
		27.683260, 24.346846, 28.179169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.367403, 24.149107, 28.715986>,  <28.257185, 24.016054, 27.952923>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.367403, 24.149107, 28.715986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.972322, 24.153225, 28.653584>,  <27.735273, 24.155695, 28.616142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.972322, 24.153225, 28.653584>,  <28.367403, 24.149107, 28.715986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.972322, 24.153225, 28.653584> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144636, -0.439037, 0.886751,
		-0.059365, 0.898410, 0.435127,
		-0.987702, 0.010293, -0.156006,
		27.676012, 24.156313, 28.606781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.035250, 24.400555, 29.276974>,  <28.367403, 24.149107, 28.715986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.035250, 24.400555, 29.276974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.722301, 24.219170, 29.106201>,  <27.534533, 24.110338, 29.003738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.722301, 24.219170, 29.106201>,  <28.035250, 24.400555, 29.276974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.722301, 24.219170, 29.106201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212866, -0.449517, 0.867538,
		-0.585308, 0.769615, 0.255161,
		-0.782370, -0.453462, -0.426931,
		27.487591, 24.083132, 28.978123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.490593, 24.453138, 29.725683>,  <28.035250, 24.400555, 29.276974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.490593, 24.453138, 29.725683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.401709, 24.146664, 29.484493>,  <27.348377, 23.962778, 29.339779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.401709, 24.146664, 29.484493>,  <27.490593, 24.453138, 29.725683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.401709, 24.146664, 29.484493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410769, -0.487306, 0.770586,
		-0.884246, 0.418916, -0.206441,
		-0.222211, -0.766187, -0.602976,
		27.335045, 23.916807, 29.303600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.786545, 24.230227, 29.896791>,  <27.490593, 24.453138, 29.725683>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.786545, 24.230227, 29.896791> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.993780, 23.942711, 29.711349>,  <27.118120, 23.770203, 29.600084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.993780, 23.942711, 29.711349>,  <26.786545, 24.230227, 29.896791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.993780, 23.942711, 29.711349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360677, -0.675068, 0.643580,
		-0.775564, -0.166217, -0.608993,
		0.518086, -0.718787, -0.463608,
		27.149206, 23.727076, 29.572268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.341436, 23.744127, 29.960491>,  <26.786545, 24.230227, 29.896791>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.341436, 23.744127, 29.960491> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.688761, 23.565205, 29.874744>,  <26.897156, 23.457851, 29.823296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.688761, 23.565205, 29.874744>,  <26.341436, 23.744127, 29.960491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.688761, 23.565205, 29.874744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194973, -0.705179, 0.681695,
		-0.456092, -0.550128, -0.699528,
		0.868312, -0.447305, -0.214366,
		26.949255, 23.431013, 29.810434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.163006, 22.958439, 29.973219>,  <26.341436, 23.744127, 29.960491>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.163006, 22.958439, 29.973219> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.562500, 22.949982, 29.991463>,  <26.802197, 22.944908, 30.002409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.562500, 22.949982, 29.991463>,  <26.163006, 22.958439, 29.973219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.562500, 22.949982, 29.991463> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049362, -0.584331, 0.810013,
		0.009526, -0.811240, -0.584636,
		0.998735, -0.021143, 0.045611,
		26.862122, 22.943638, 30.005146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.419548, 22.286709, 29.991817>,  <26.163006, 22.958439, 29.973219>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.419548, 22.286709, 29.991817> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.702826, 22.502666, 30.173794>,  <26.872793, 22.632242, 30.282980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.702826, 22.502666, 30.173794>,  <26.419548, 22.286709, 29.991817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.702826, 22.502666, 30.173794> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056539, -0.598940, 0.798796,
		0.703750, -0.591425, -0.393640,
		0.708194, 0.539896, 0.454942,
		26.915283, 22.664635, 30.310276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.644026, 21.839808, 30.320656>,  <26.419548, 22.286709, 29.991817>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.644026, 21.839808, 30.320656> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.822491, 22.149338, 30.500492>,  <26.929569, 22.335056, 30.608393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.822491, 22.149338, 30.500492>,  <26.644026, 21.839808, 30.320656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.822491, 22.149338, 30.500492> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059706, -0.475506, 0.877684,
		0.892958, -0.418434, -0.165952,
		0.446164, 0.773826, 0.449590,
		26.956341, 22.381485, 30.635368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.236006, 21.613657, 30.619812>,  <26.644026, 21.839808, 30.320656>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.236006, 21.613657, 30.619812> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.137554, 21.949680, 30.813190>,  <27.078484, 22.151295, 30.929216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.137554, 21.949680, 30.813190>,  <27.236006, 21.613657, 30.619812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.137554, 21.949680, 30.813190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142729, -0.524765, 0.839196,
		0.958670, 0.137550, 0.249062,
		-0.246131, 0.840061, 0.483444,
		27.063715, 22.201698, 30.958223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.375170, 21.418587, 31.175516>,  <27.236006, 21.613657, 30.619812>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.375170, 21.418587, 31.175516> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.193430, 21.753628, 31.296837>,  <27.084387, 21.954653, 31.369629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.193430, 21.753628, 31.296837>,  <27.375170, 21.418587, 31.175516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.193430, 21.753628, 31.296837> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200237, -0.427785, 0.881422,
		0.868027, 0.339741, 0.362083,
		-0.454349, 0.837601, 0.303301,
		27.057125, 22.004908, 31.387827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.712070, 21.609322, 31.738274>,  <27.375170, 21.418587, 31.175516>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.712070, 21.609322, 31.738274> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.327961, 21.720760, 31.744736>,  <27.097496, 21.787622, 31.748613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.327961, 21.720760, 31.744736>,  <27.712070, 21.609322, 31.738274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.327961, 21.720760, 31.744736> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167973, -0.623269, 0.763754,
		0.222848, 0.730699, 0.645305,
		-0.960273, 0.278595, 0.016156,
		27.039879, 21.804338, 31.749582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.631582, 21.494717, 32.493572>,  <27.712070, 21.609322, 31.738274>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.631582, 21.494717, 32.493572> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.990240, 21.318138, 32.507137>,  <28.205435, 21.212191, 32.515274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.990240, 21.318138, 32.507137>,  <27.631582, 21.494717, 32.493572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.990240, 21.318138, 32.507137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430914, 0.852529, -0.295817,
		0.101679, 0.279855, 0.954643,
		0.896646, -0.441447, 0.033909,
		28.259233, 21.185703, 32.517311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.029039, 22.069202, 32.486687>,  <27.631582, 21.494717, 32.493572>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.029039, 22.069202, 32.486687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.285328, 21.769650, 32.418983>,  <28.439102, 21.589918, 32.378361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.285328, 21.769650, 32.418983>,  <28.029039, 22.069202, 32.486687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.285328, 21.769650, 32.418983> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657676, 0.649089, -0.382291,
		0.396152, 0.133629, 0.908409,
		0.640723, -0.748884, -0.169254,
		28.477545, 21.544985, 32.368206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.680367, 22.216406, 32.722065>,  <28.029039, 22.069202, 32.486687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.680367, 22.216406, 32.722065> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.722403, 21.948162, 32.428333>,  <28.747625, 21.787216, 32.252094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.722403, 21.948162, 32.428333>,  <28.680367, 22.216406, 32.722065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.722403, 21.948162, 32.428333> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639599, 0.611009, -0.466456,
		0.761491, -0.420655, 0.493134,
		0.105093, -0.670610, -0.734328,
		28.753931, 21.746979, 32.208035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.366541, 22.232153, 32.546383>,  <28.680367, 22.216406, 32.722065>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.366541, 22.232153, 32.546383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.234644, 22.053482, 32.213696>,  <29.155506, 21.946280, 32.014084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.234644, 22.053482, 32.213696>,  <29.366541, 22.232153, 32.546383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.234644, 22.053482, 32.213696> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650133, 0.531364, -0.543120,
		0.684543, -0.719815, 0.115186,
		-0.329740, -0.446675, -0.831717,
		29.135721, 21.919479, 31.964180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.969685, 22.018759, 32.216011>,  <29.366541, 22.232153, 32.546383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.969685, 22.018759, 32.216011> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.681913, 22.042328, 31.939186>,  <29.509251, 22.056469, 31.773090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.681913, 22.042328, 31.939186>,  <29.969685, 22.018759, 32.216011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.681913, 22.042328, 31.939186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626435, 0.485419, -0.609875,
		0.300004, -0.872294, -0.386137,
		-0.719428, 0.058924, -0.692063,
		29.466085, 22.060005, 31.731567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.316010, 22.028881, 31.554684>,  <29.969685, 22.018759, 32.216011>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.316010, 22.028881, 31.554684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.954876, 22.134251, 31.418743>,  <29.738195, 22.197472, 31.337179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.954876, 22.134251, 31.418743>,  <30.316010, 22.028881, 31.554684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.954876, 22.134251, 31.418743> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429987, 0.550319, -0.715723,
		-0.001512, -0.792311, -0.610116,
		-0.902834, 0.263424, -0.339852,
		29.684027, 22.213278, 31.316788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.328196, 21.980341, 30.815779>,  <30.316010, 22.028881, 31.554684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.328196, 21.980341, 30.815779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.024189, 22.216709, 30.923992>,  <29.841785, 22.358530, 30.988920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.024189, 22.216709, 30.923992>,  <30.328196, 21.980341, 30.815779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.024189, 22.216709, 30.923992> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309950, 0.695443, -0.648297,
		-0.571234, -0.408863, -0.711703,
		-0.760015, 0.590923, 0.270534,
		29.796185, 22.393986, 31.005152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.950525, 22.114649, 30.234221>,  <30.328196, 21.980341, 30.815779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.950525, 22.114649, 30.234221> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.881262, 22.401443, 30.504314>,  <29.839703, 22.573521, 30.666370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.881262, 22.401443, 30.504314>,  <29.950525, 22.114649, 30.234221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.881262, 22.401443, 30.504314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256923, 0.694738, -0.671811,
		-0.950792, 0.057153, -0.304512,
		-0.173160, 0.716989, 0.675235,
		29.829313, 22.616541, 30.706884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.610668, 22.548079, 29.940086>,  <29.950525, 22.114649, 30.234221>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.610668, 22.548079, 29.940086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.712358, 22.786037, 30.245102>,  <29.773373, 22.928814, 30.428112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.712358, 22.786037, 30.245102>,  <29.610668, 22.548079, 29.940086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.712358, 22.786037, 30.245102> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028130, 0.783560, -0.620678,
		-0.966736, 0.179242, 0.182466,
		0.254225, 0.594899, 0.762538,
		29.788626, 22.964508, 30.473864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.200796, 23.085201, 29.835407>,  <29.610668, 22.548079, 29.940086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.200796, 23.085201, 29.835407> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.465731, 23.245186, 30.088814>,  <29.624691, 23.341177, 30.240858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.465731, 23.245186, 30.088814>,  <29.200796, 23.085201, 29.835407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.465731, 23.245186, 30.088814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134706, 0.895376, -0.424448,
		-0.736999, 0.195788, 0.646916,
		0.662335, 0.399961, 0.633517,
		29.664431, 23.365173, 30.278870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.907049, 23.666960, 30.000059>,  <29.200796, 23.085201, 29.835407>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.907049, 23.666960, 30.000059> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.297756, 23.709339, 30.074570>,  <29.532181, 23.734766, 30.119276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.297756, 23.709339, 30.074570>,  <28.907049, 23.666960, 30.000059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.297756, 23.709339, 30.074570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042448, 0.947671, -0.316415,
		-0.210051, 0.301157, 0.930152,
		0.976768, 0.105947, 0.186276,
		29.590786, 23.741123, 30.130453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.831398, 24.302750, 30.171461>,  <28.907049, 23.666960, 30.000059>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.831398, 24.302750, 30.171461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.221601, 24.245010, 30.105068>,  <29.455723, 24.210367, 30.065231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.221601, 24.245010, 30.105068>,  <28.831398, 24.302750, 30.171461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.221601, 24.245010, 30.105068> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045648, 0.870993, -0.489171,
		0.215181, 0.469613, 0.856248,
		0.975507, -0.144346, -0.165984,
		29.514254, 24.201706, 30.055273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.982470, 24.974396, 30.083654>,  <28.831398, 24.302750, 30.171461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.982470, 24.974396, 30.083654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.276043, 24.776447, 29.897560>,  <29.452187, 24.657679, 29.785904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.276043, 24.776447, 29.897560>,  <28.982470, 24.974396, 30.083654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.276043, 24.776447, 29.897560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134449, 0.777251, -0.614658,
		0.665780, 0.388569, 0.636986,
		0.733935, -0.494869, -0.465236,
		29.496223, 24.627987, 29.757990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.463749, 25.548920, 29.868923>,  <28.982470, 24.974396, 30.083654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.463749, 25.548920, 29.868923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.586924, 25.224590, 29.669830>,  <29.660828, 25.029993, 29.550375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.586924, 25.224590, 29.669830>,  <29.463749, 25.548920, 29.868923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.586924, 25.224590, 29.669830> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272195, 0.576370, -0.770524,
		0.911639, 0.101791, 0.398188,
		0.307936, -0.810824, -0.497734,
		29.679304, 24.981342, 29.520510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.140425, 25.657902, 29.718031>,  <29.463749, 25.548920, 29.868923>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.140425, 25.657902, 29.718031> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.947992, 25.414917, 29.465191>,  <29.832533, 25.269127, 29.313486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.947992, 25.414917, 29.465191>,  <30.140425, 25.657902, 29.718031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.947992, 25.414917, 29.465191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189185, 0.632095, -0.751442,
		0.856021, -0.481087, -0.189165,
		-0.481079, -0.607463, -0.632101,
		29.803669, 25.232677, 29.275560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.586033, 25.540674, 29.198421>,  <30.140425, 25.657902, 29.718031>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.586033, 25.540674, 29.198421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.236416, 25.451511, 29.025745>,  <30.026646, 25.398014, 28.922140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.236416, 25.451511, 29.025745>,  <30.586033, 25.540674, 29.198421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.236416, 25.451511, 29.025745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283287, 0.488037, -0.825572,
		0.394705, -0.843880, -0.363421,
		-0.874046, -0.222905, -0.431691,
		29.974203, 25.384640, 28.896238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.765293, 25.592230, 28.488943>,  <30.586033, 25.540674, 29.198421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.765293, 25.592230, 28.488943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.369671, 25.542912, 28.456520>,  <30.132298, 25.513321, 28.437065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.369671, 25.542912, 28.456520>,  <30.765293, 25.592230, 28.488943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.369671, 25.542912, 28.456520> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034093, 0.343533, -0.938521,
		0.143560, -0.931012, -0.335570,
		-0.989054, -0.123293, -0.081059,
		30.072954, 25.505922, 28.432201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.651722, 25.107178, 27.895718>,  <30.765293, 25.592230, 28.488943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.651722, 25.107178, 27.895718> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.322966, 25.322006, 27.971668>,  <30.125711, 25.450903, 28.017239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.322966, 25.322006, 27.971668>,  <30.651722, 25.107178, 27.895718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.322966, 25.322006, 27.971668> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042669, 0.390429, -0.919644,
		-0.568047, -0.747744, -0.343805,
		-0.821889, 0.537071, 0.189877,
		30.076399, 25.483128, 28.028631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.326391, 25.094404, 27.211357>,  <30.651722, 25.107178, 27.895718>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.326391, 25.094404, 27.211357> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.137384, 25.391232, 27.401543>,  <30.023981, 25.569328, 27.515654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.137384, 25.391232, 27.401543>,  <30.326391, 25.094404, 27.211357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.137384, 25.391232, 27.401543> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180324, 0.609478, -0.772023,
		-0.862678, -0.279055, -0.421800,
		-0.472515, 0.742068, 0.475463,
		29.995630, 25.613852, 27.544182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.000713, 25.451975, 26.603973>,  <30.326391, 25.094404, 27.211357>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.000713, 25.451975, 26.603973> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.998646, 25.710766, 26.908970>,  <29.997404, 25.866041, 27.091969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.998646, 25.710766, 26.908970>,  <30.000713, 25.451975, 26.603973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.998646, 25.710766, 26.908970> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212923, 0.745729, -0.631310,
		-0.977055, 0.159088, -0.141612,
		-0.005170, 0.646977, 0.762492,
		29.997095, 25.904860, 27.137718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.590673, 26.052275, 26.385904>,  <30.000713, 25.451975, 26.603973>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.590673, 26.052275, 26.385904> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.845486, 26.167839, 26.671764>,  <29.998373, 26.237177, 26.843281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.845486, 26.167839, 26.671764>,  <29.590673, 26.052275, 26.385904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.845486, 26.167839, 26.671764> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130085, 0.873517, -0.469091,
		-0.759784, 0.391790, 0.518872,
		0.637029, 0.288911, 0.714650,
		30.036594, 26.254513, 26.886160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<19.653692, 33.740704, 19.055992> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.878387, 33.440651, 18.916424>,  <20.013205, 33.260620, 18.832682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.878387, 33.440651, 18.916424>,  <19.653692, 33.740704, 19.055992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.878387, 33.440651, 18.916424> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489078, -0.039068, 0.871365,
		-0.667273, -0.660129, 0.344929,
		0.561738, -0.750136, -0.348923,
		20.046909, 33.215611, 18.811747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.685110, 33.313843, 19.531055>,  <19.653692, 33.740704, 19.055992>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.685110, 33.313843, 19.531055> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.011320, 33.210548, 19.323891>,  <20.207047, 33.148571, 19.199593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.011320, 33.210548, 19.323891>,  <19.685110, 33.313843, 19.531055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.011320, 33.210548, 19.323891> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494471, -0.154064, 0.855431,
		-0.300693, -0.953719, 0.002046,
		0.815526, -0.258234, -0.517912,
		20.255978, 33.133080, 19.168516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.835588, 32.714924, 19.872398>,  <19.685110, 33.313843, 19.531055>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.835588, 32.714924, 19.872398> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.161415, 32.847286, 19.681828>,  <20.356911, 32.926704, 19.567486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.161415, 32.847286, 19.681828>,  <19.835588, 32.714924, 19.872398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.161415, 32.847286, 19.681828> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517007, -0.041734, 0.854963,
		0.263031, -0.942740, -0.205077,
		0.814567, 0.330908, -0.476426,
		20.405785, 32.946560, 19.538900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.395746, 32.302452, 20.155523>,  <19.835588, 32.714924, 19.872398>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.395746, 32.302452, 20.155523> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.560165, 32.630959, 19.997253>,  <20.658817, 32.828064, 19.902290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.560165, 32.630959, 19.997253>,  <20.395746, 32.302452, 20.155523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.560165, 32.630959, 19.997253> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359439, 0.252867, 0.898255,
		0.837761, -0.511447, -0.191255,
		0.411048, 0.821268, -0.395675,
		20.683479, 32.877338, 19.878551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.064528, 32.291965, 20.293434>,  <20.395746, 32.302452, 20.155523>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.064528, 32.291965, 20.293434> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.972469, 32.678371, 20.246353>,  <20.917234, 32.910213, 20.218103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.972469, 32.678371, 20.246353>,  <21.064528, 32.291965, 20.293434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.972469, 32.678371, 20.246353> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486799, 0.219011, 0.845613,
		0.842650, 0.137315, -0.520658,
		-0.230145, 0.966012, -0.117705,
		20.903425, 32.968174, 20.211042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.702772, 32.684082, 20.345047>,  <21.064528, 32.291965, 20.293434>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.702772, 32.684082, 20.345047> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.429352, 32.971157, 20.398239>,  <21.265299, 33.143402, 20.430155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.429352, 32.971157, 20.398239>,  <21.702772, 32.684082, 20.345047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.429352, 32.971157, 20.398239> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506216, 0.334884, 0.794731,
		0.525834, 0.610558, -0.592214,
		-0.683553, 0.717685, 0.132981,
		21.224285, 33.186462, 20.438133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.116159, 33.201183, 20.615749>,  <21.702772, 32.684082, 20.345047>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.116159, 33.201183, 20.615749> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.747705, 33.327122, 20.707294>,  <21.526632, 33.402683, 20.762222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.747705, 33.327122, 20.707294>,  <22.116159, 33.201183, 20.615749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.747705, 33.327122, 20.707294> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368002, 0.512871, 0.775589,
		0.126812, 0.798646, -0.588288,
		-0.921137, 0.314845, 0.228865,
		21.471365, 33.421574, 20.775953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.188316, 33.911858, 20.618729>,  <22.116159, 33.201183, 20.615749>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.188316, 33.911858, 20.618729> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.859625, 33.849277, 20.837921>,  <21.662411, 33.811729, 20.969437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.859625, 33.849277, 20.837921>,  <22.188316, 33.911858, 20.618729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.859625, 33.849277, 20.837921> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310358, 0.683612, 0.660570,
		-0.477953, 0.712880, -0.513189,
		-0.821729, -0.156449, 0.547982,
		21.613106, 33.802341, 21.002316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.868263, 34.608837, 20.796354>,  <22.188316, 33.911858, 20.618729>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.868263, 34.608837, 20.796354> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.715742, 34.356182, 21.066357>,  <21.624229, 34.204590, 21.228359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.715742, 34.356182, 21.066357>,  <21.868263, 34.608837, 20.796354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.715742, 34.356182, 21.066357> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433610, 0.522668, 0.734030,
		-0.816450, 0.572578, 0.074591,
		-0.381304, -0.631642, 0.675008,
		21.601351, 34.166691, 21.268860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.417591, 34.953850, 21.213964>,  <21.868263, 34.608837, 20.796354>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.417591, 34.953850, 21.213964> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.493937, 34.627071, 21.431652>,  <21.539743, 34.431004, 21.562265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.493937, 34.627071, 21.431652>,  <21.417591, 34.953850, 21.213964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.493937, 34.627071, 21.431652> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304964, 0.576326, 0.758186,
		-0.933042, 0.021258, 0.359138,
		0.190863, -0.816944, 0.544219,
		21.551195, 34.381989, 21.594917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.108231, 35.072582, 21.955790>,  <21.417591, 34.953850, 21.213964>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.108231, 35.072582, 21.955790> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.382982, 34.782776, 21.978668>,  <21.547832, 34.608891, 21.992395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.382982, 34.782776, 21.978668>,  <21.108231, 35.072582, 21.955790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.382982, 34.782776, 21.978668> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437592, 0.475122, 0.763396,
		-0.580270, -0.499331, 0.643394,
		0.686877, -0.724519, 0.057196,
		21.589045, 34.565418, 21.995827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.100080, 34.941525, 22.709053>,  <21.108231, 35.072582, 21.955790>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.100080, 34.941525, 22.709053> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.434578, 34.801792, 22.539982>,  <21.635277, 34.717953, 22.438540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.434578, 34.801792, 22.539982>,  <21.100080, 34.941525, 22.709053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.434578, 34.801792, 22.539982> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546678, 0.470869, 0.692406,
		-0.042854, -0.810091, 0.584735,
		0.836246, -0.349334, -0.422680,
		21.685452, 34.696991, 22.413177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.446993, 34.680584, 23.236755>,  <21.100080, 34.941525, 22.709053>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.446993, 34.680584, 23.236755> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.714214, 34.747955, 22.946835>,  <21.874548, 34.788380, 22.772882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.714214, 34.747955, 22.946835>,  <21.446993, 34.680584, 23.236755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.714214, 34.747955, 22.946835> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550305, 0.543807, 0.633591,
		0.500866, -0.822135, 0.270607,
		0.668055, 0.168428, -0.724800,
		21.914631, 34.798485, 22.729395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.078094, 34.650478, 23.549898>,  <21.446993, 34.680584, 23.236755>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.078094, 34.650478, 23.549898> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.157753, 34.840416, 23.207001>,  <22.205547, 34.954376, 23.001263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.157753, 34.840416, 23.207001>,  <22.078094, 34.650478, 23.549898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.157753, 34.840416, 23.207001> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713937, 0.528928, 0.458834,
		0.671293, -0.703393, -0.233673,
		0.199145, 0.474841, -0.857244,
		22.217497, 34.982868, 22.949827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.830969, 34.825722, 23.580101>,  <22.078094, 34.650478, 23.549898>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.830969, 34.825722, 23.580101> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.714203, 35.057022, 23.275360>,  <22.644144, 35.195801, 23.092516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.714203, 35.057022, 23.275360>,  <22.830969, 34.825722, 23.580101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.714203, 35.057022, 23.275360> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666104, 0.694525, 0.271920,
		0.686362, -0.428095, -0.587914,
		-0.291913, 0.578247, -0.761851,
		22.626629, 35.230495, 23.046804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.526846, 35.142319, 23.343647>,  <22.830969, 34.825722, 23.580101>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.526846, 35.142319, 23.343647> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.215525, 35.375797, 23.251087>,  <23.028732, 35.515884, 23.195551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.215525, 35.375797, 23.251087>,  <23.526846, 35.142319, 23.343647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.215525, 35.375797, 23.251087> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484031, 0.792496, 0.371030,
		0.399951, 0.176769, -0.899328,
		-0.778301, 0.583697, -0.231398,
		22.982035, 35.550907, 23.181667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.884096, 35.614044, 23.073624>,  <23.526846, 35.142319, 23.343647>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.884096, 35.614044, 23.073624> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.528625, 35.791794, 23.118855>,  <23.315344, 35.898445, 23.145992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.528625, 35.791794, 23.118855>,  <23.884096, 35.614044, 23.073624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.528625, 35.791794, 23.118855> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457858, 0.846536, 0.271556,
		0.024951, 0.293097, -0.955757,
		-0.888675, 0.444377, 0.113075,
		23.262022, 35.925106, 23.152777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.978495, 36.278851, 22.866835>,  <23.884096, 35.614044, 23.073624>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.978495, 36.278851, 22.866835> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.652731, 36.301567, 23.097836>,  <23.457272, 36.315197, 23.236437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.652731, 36.301567, 23.097836>,  <23.978495, 36.278851, 22.866835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.652731, 36.301567, 23.097836> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399340, 0.776914, 0.486756,
		-0.421025, 0.627039, -0.655408,
		-0.814411, 0.056794, 0.577502,
		23.408407, 36.318604, 23.271086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.787151, 36.978291, 22.791166>,  <23.978495, 36.278851, 22.866835>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.787151, 36.978291, 22.791166> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.657465, 36.829460, 23.139061>,  <23.579653, 36.740162, 23.347797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.657465, 36.829460, 23.139061>,  <23.787151, 36.978291, 22.791166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.657465, 36.829460, 23.139061> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475368, 0.730806, 0.489844,
		-0.817870, 0.572260, -0.060064,
		-0.324214, -0.372076, 0.869739,
		23.560202, 36.717838, 23.399982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.437733, 37.644455, 23.103294>,  <23.787151, 36.978291, 22.791166>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.437733, 37.644455, 23.103294> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.505188, 37.391788, 23.405964>,  <23.545662, 37.240189, 23.587566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.505188, 37.391788, 23.405964>,  <23.437733, 37.644455, 23.103294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.505188, 37.391788, 23.405964> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530053, 0.705338, 0.470682,
		-0.831026, 0.321702, 0.453765,
		0.168638, -0.631669, 0.756674,
		23.555780, 37.202290, 23.632967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.334570, 38.079750, 23.616175>,  <23.437733, 37.644455, 23.103294>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.334570, 38.079750, 23.616175> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.528957, 37.762119, 23.762203>,  <23.645590, 37.571541, 23.849819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.528957, 37.762119, 23.762203>,  <23.334570, 38.079750, 23.616175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.528957, 37.762119, 23.762203> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619234, 0.607616, 0.497345,
		-0.616753, -0.015630, 0.787002,
		0.485968, -0.794077, 0.365070,
		23.674747, 37.523895, 23.871725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.711502, 38.029213, 23.797325>,  <23.334570, 38.079750, 23.616175>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.711502, 38.029213, 23.797325> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.359568, 38.194973, 23.704235>,  <22.148407, 38.294430, 23.648380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.359568, 38.194973, 23.704235>,  <22.711502, 38.029213, 23.797325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.359568, 38.194973, 23.704235> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012052, -0.508962, -0.860704,
		-0.475122, -0.754475, 0.452798,
		-0.879837, 0.414397, -0.232726,
		22.095617, 38.319294, 23.634417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.294374, 37.514141, 23.654123>,  <22.711502, 38.029213, 23.797325>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.294374, 37.514141, 23.654123> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.165031, 37.831829, 23.448345>,  <22.087425, 38.022442, 23.324879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.165031, 37.831829, 23.448345>,  <22.294374, 37.514141, 23.654123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.165031, 37.831829, 23.448345> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008677, -0.546120, -0.837662,
		-0.946237, -0.266401, 0.183483,
		-0.323358, 0.794219, -0.514447,
		22.068024, 38.070095, 23.294010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.859297, 37.195320, 23.195999>,  <22.294374, 37.514141, 23.654123>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.859297, 37.195320, 23.195999> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.923283, 37.558327, 23.040653>,  <21.961674, 37.776131, 22.947445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.923283, 37.558327, 23.040653>,  <21.859297, 37.195320, 23.195999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.923283, 37.558327, 23.040653> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131000, -0.409469, -0.902870,
		-0.978391, 0.093553, -0.184386,
		0.159966, 0.907515, -0.388365,
		21.971273, 37.830582, 22.924143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.470743, 37.287457, 22.631386>,  <21.859297, 37.195320, 23.195999>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.470743, 37.287457, 22.631386> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.755192, 37.558899, 22.557854>,  <21.925861, 37.721764, 22.513735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.755192, 37.558899, 22.557854>,  <21.470743, 37.287457, 22.631386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.755192, 37.558899, 22.557854> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058120, -0.317315, -0.946537,
		-0.700660, 0.662421, -0.265091,
		0.711124, 0.678609, -0.183830,
		21.968529, 37.762482, 22.502705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.363127, 37.611454, 21.998634>,  <21.470743, 37.287457, 22.631386>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.363127, 37.611454, 21.998634> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.758757, 37.659687, 22.032555>,  <21.996134, 37.688625, 22.052908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.758757, 37.659687, 22.032555>,  <21.363127, 37.611454, 21.998634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.758757, 37.659687, 22.032555> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133225, -0.484890, -0.864368,
		-0.063107, 0.866223, -0.495657,
		0.989075, 0.120581, 0.084803,
		22.055479, 37.695862, 22.057995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.586018, 37.937077, 21.390448>,  <21.363127, 37.611454, 21.998634>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.586018, 37.937077, 21.390448> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.913790, 37.774120, 21.551723>,  <22.110453, 37.676346, 21.648489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.913790, 37.774120, 21.551723>,  <21.586018, 37.937077, 21.390448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.913790, 37.774120, 21.551723> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292982, -0.306879, -0.905531,
		0.492637, 0.860149, -0.132107,
		0.819433, -0.407393, 0.403188,
		22.159620, 37.651901, 21.672680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.077854, 38.028767, 20.869364>,  <21.586018, 37.937077, 21.390448>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.077854, 38.028767, 20.869364> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.243639, 37.755962, 21.110390>,  <22.343109, 37.592281, 21.255005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.243639, 37.755962, 21.110390>,  <22.077854, 38.028767, 20.869364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.243639, 37.755962, 21.110390> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299640, -0.522930, -0.797973,
		0.859324, 0.511282, -0.012377,
		0.414462, -0.682008, 0.602567,
		22.367977, 37.551361, 21.291161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.693735, 38.097153, 20.639179>,  <22.077854, 38.028767, 20.869364>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.693735, 38.097153, 20.639179> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.653065, 37.738579, 20.811718>,  <22.628662, 37.523434, 20.915241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.653065, 37.738579, 20.811718>,  <22.693735, 38.097153, 20.639179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.653065, 37.738579, 20.811718> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145129, -0.442319, -0.885037,
		0.984175, -0.027384, 0.175072,
		-0.101674, -0.896439, 0.431345,
		22.622562, 37.469646, 20.941122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.183044, 37.673016, 20.321100>,  <22.693735, 38.097153, 20.639179>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.183044, 37.673016, 20.321100> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.910374, 37.412933, 20.455296>,  <22.746771, 37.256886, 20.535812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.910374, 37.412933, 20.455296>,  <23.183044, 37.673016, 20.321100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.910374, 37.412933, 20.455296> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083801, -0.524904, -0.847026,
		0.726837, -0.549285, 0.412303,
		-0.681679, -0.650201, 0.335489,
		22.705870, 37.217873, 20.555943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.501026, 37.085197, 20.079342>,  <23.183044, 37.673016, 20.321100>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.501026, 37.085197, 20.079342> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.127197, 36.969791, 20.162609>,  <22.902901, 36.900547, 20.212570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.127197, 36.969791, 20.162609>,  <23.501026, 37.085197, 20.079342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.127197, 36.969791, 20.162609> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032035, -0.650988, -0.758412,
		0.354326, -0.702122, 0.617638,
		-0.934573, -0.288511, 0.208170,
		22.846825, 36.883240, 20.225060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.546391, 36.310955, 19.873106>,  <23.501026, 37.085197, 20.079342>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.546391, 36.310955, 19.873106> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.155865, 36.392563, 19.901928>,  <22.921549, 36.441528, 19.919220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.155865, 36.392563, 19.901928>,  <23.546391, 36.310955, 19.873106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.155865, 36.392563, 19.901928> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201040, -0.732281, -0.650651,
		-0.079980, -0.649724, 0.755951,
		-0.976312, 0.204015, 0.072053,
		22.862970, 36.453766, 19.923544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.169434, 35.644218, 19.927919>,  <23.546391, 36.310955, 19.873106>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.169434, 35.644218, 19.927919> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.890831, 35.894680, 19.787743>,  <22.723669, 36.044956, 19.703636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.890831, 35.894680, 19.787743>,  <23.169434, 35.644218, 19.927919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.890831, 35.894680, 19.787743> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112560, -0.577682, -0.808463,
		-0.708670, -0.523652, 0.472838,
		-0.696504, 0.626156, -0.350444,
		22.681879, 36.082527, 19.682610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.518763, 35.223228, 19.822145>,  <23.169434, 35.644218, 19.927919>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.518763, 35.223228, 19.822145> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.482792, 35.560120, 19.609520>,  <22.461210, 35.762257, 19.481945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.482792, 35.560120, 19.609520>,  <22.518763, 35.223228, 19.822145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.482792, 35.560120, 19.609520> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263860, -0.534801, -0.802724,
		-0.960360, 0.068073, 0.270324,
		-0.089926, 0.842232, -0.531563,
		22.455814, 35.812790, 19.450050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.917341, 35.061909, 19.407640>,  <22.518763, 35.223228, 19.822145>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.917341, 35.061909, 19.407640> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.092001, 35.364769, 19.213295>,  <22.196796, 35.546486, 19.096687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.092001, 35.364769, 19.213295>,  <21.917341, 35.061909, 19.407640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.092001, 35.364769, 19.213295> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126232, -0.483162, -0.866383,
		-0.890731, 0.439638, -0.115397,
		0.436651, 0.757148, -0.485864,
		22.222996, 35.591915, 19.067535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.515255, 35.271511, 18.802744>,  <21.917341, 35.061909, 19.407640>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.515255, 35.271511, 18.802744> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.894114, 35.364368, 18.714184>,  <22.121429, 35.420082, 18.661047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.894114, 35.364368, 18.714184>,  <21.515255, 35.271511, 18.802744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.894114, 35.364368, 18.714184> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119133, -0.386270, -0.914660,
		-0.297855, 0.892695, -0.338198,
		0.947148, 0.232146, -0.221402,
		22.178259, 35.434013, 18.647762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.502050, 35.233425, 18.114809>,  <21.515255, 35.271511, 18.802744>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.502050, 35.233425, 18.114809> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.896170, 35.251186, 18.180801>,  <22.132641, 35.261841, 18.220396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.896170, 35.251186, 18.180801>,  <21.502050, 35.233425, 18.114809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.896170, 35.251186, 18.180801> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168551, -0.410534, -0.896132,
		0.027942, 0.910764, -0.411981,
		0.985297, 0.044401, 0.164981,
		22.191759, 35.264507, 18.230295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.810463, 35.498760, 17.571917>,  <21.502050, 35.233425, 18.114809>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.810463, 35.498760, 17.571917> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.114439, 35.296730, 17.735569>,  <22.296824, 35.175510, 17.833761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.114439, 35.296730, 17.735569>,  <21.810463, 35.498760, 17.571917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.114439, 35.296730, 17.735569> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155081, -0.470370, -0.868736,
		0.631223, 0.723634, -0.279124,
		0.759939, -0.505080, 0.409130,
		22.342421, 35.145206, 17.858309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.156784, 35.417564, 17.000977>,  <21.810463, 35.498760, 17.571917>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.156784, 35.417564, 17.000977> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.312023, 35.157265, 17.262024>,  <22.405167, 35.001087, 17.418652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.312023, 35.157265, 17.262024>,  <22.156784, 35.417564, 17.000977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.312023, 35.157265, 17.262024> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052976, -0.691198, -0.720721,
		0.920094, 0.314285, -0.233780,
		0.388100, -0.650747, 0.652616,
		22.428453, 34.962040, 17.457809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.574158, 35.239170, 16.573654>,  <22.156784, 35.417564, 17.000977>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.574158, 35.239170, 16.573654> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.577269, 34.958111, 16.858253>,  <22.579134, 34.789474, 17.029013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.577269, 34.958111, 16.858253>,  <22.574158, 35.239170, 16.573654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.577269, 34.958111, 16.858253> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247221, -0.688081, -0.682222,
		0.968928, 0.181202, 0.168359,
		0.007775, -0.702646, 0.711497,
		22.579601, 34.747318, 17.071703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.064243, 34.744957, 16.309099>,  <22.574158, 35.239170, 16.573654>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.064243, 34.744957, 16.309099> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.867161, 34.548370, 16.596348>,  <22.748911, 34.430416, 16.768696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.867161, 34.548370, 16.596348>,  <23.064243, 34.744957, 16.309099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.867161, 34.548370, 16.596348> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053297, -0.806647, -0.588625,
		0.868562, -0.328293, 0.371246,
		-0.492706, -0.491471, 0.718120,
		22.719349, 34.400928, 16.811785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.486162, 34.219200, 16.458136>,  <23.064243, 34.744957, 16.309099>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.486162, 34.219200, 16.458136> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.109533, 34.131538, 16.560436>,  <22.883556, 34.078941, 16.621817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.109533, 34.131538, 16.560436>,  <23.486162, 34.219200, 16.458136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.109533, 34.131538, 16.560436> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012089, -0.780845, -0.624608,
		0.336590, -0.585022, 0.737873,
		-0.941574, -0.219157, 0.255753,
		22.827061, 34.065792, 16.637161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<26.647533, 30.485527, 24.206051> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.887339, 30.571712, 24.514378>,  <27.031221, 30.623423, 24.699373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.887339, 30.571712, 24.514378>,  <26.647533, 30.485527, 24.206051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.887339, 30.571712, 24.514378> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102794, 0.934378, -0.341131,
		-0.793736, 0.283748, 0.538024,
		0.599513, 0.215462, 0.770818,
		27.067192, 30.636351, 24.745623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.481077, 31.134193, 24.338968>,  <26.647533, 30.485527, 24.206051>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.481077, 31.134193, 24.338968> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.818188, 31.107346, 24.552593>,  <27.020454, 31.091236, 24.680767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.818188, 31.107346, 24.552593>,  <26.481077, 31.134193, 24.338968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.818188, 31.107346, 24.552593> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251405, 0.926405, -0.280302,
		-0.475943, 0.370497, 0.797628,
		0.842778, -0.067120, 0.534061,
		27.071020, 31.087210, 24.712811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.515236, 31.725176, 24.674603>,  <26.481077, 31.134193, 24.338968>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.515236, 31.725176, 24.674603> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.887264, 31.579651, 24.654179>,  <27.110481, 31.492336, 24.641924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.887264, 31.579651, 24.654179>,  <26.515236, 31.725176, 24.674603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.887264, 31.579651, 24.654179> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321857, 0.873932, -0.364214,
		0.177126, 0.322312, 0.929915,
		0.930072, -0.363811, -0.051058,
		27.166286, 31.470507, 24.638861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.926950, 32.289597, 24.973099>,  <26.515236, 31.725176, 24.674603>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.926950, 32.289597, 24.973099> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.208679, 32.073483, 24.788914>,  <27.377716, 31.943813, 24.678402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.208679, 32.073483, 24.788914>,  <26.926950, 32.289597, 24.973099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.208679, 32.073483, 24.788914> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466295, 0.841198, -0.273779,
		0.535258, -0.021883, 0.844405,
		0.704320, -0.540285, -0.460462,
		27.419975, 31.911398, 24.650776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.576275, 32.551727, 25.247139>,  <26.926950, 32.289597, 24.973099>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.576275, 32.551727, 25.247139> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.660583, 32.365528, 24.903305>,  <27.711168, 32.253807, 24.697004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.660583, 32.365528, 24.903305>,  <27.576275, 32.551727, 25.247139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.660583, 32.365528, 24.903305> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584417, 0.764892, -0.270920,
		0.783602, -0.445252, 0.433265,
		0.210774, -0.465501, -0.859583,
		27.723816, 32.225880, 24.645430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.305641, 32.584259, 25.028360>,  <27.576275, 32.551727, 25.247139>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.305641, 32.584259, 25.028360> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.113445, 32.538681, 24.680534>,  <27.998127, 32.511333, 24.471838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.113445, 32.538681, 24.680534>,  <28.305641, 32.584259, 25.028360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.113445, 32.538681, 24.680534> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461942, 0.809946, -0.361382,
		0.745478, -0.575330, -0.336538,
		-0.480491, -0.113941, -0.869566,
		27.969297, 32.504498, 24.419664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.813683, 32.769058, 24.547239>,  <28.305641, 32.584259, 25.028360>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.813683, 32.769058, 24.547239> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.460350, 32.809994, 24.364262>,  <28.248350, 32.834557, 24.254475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.460350, 32.809994, 24.364262>,  <28.813683, 32.769058, 24.547239>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.460350, 32.809994, 24.364262> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363934, 0.764781, -0.531659,
		0.295434, -0.636110, -0.712800,
		-0.883330, 0.102342, -0.457444,
		28.195351, 32.840698, 24.227028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.997379, 33.138027, 23.940294>,  <28.813683, 32.769058, 24.547239>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.997379, 33.138027, 23.940294> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.598150, 33.161251, 23.949097>,  <28.358614, 33.175186, 23.954378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.598150, 33.161251, 23.949097>,  <28.997379, 33.138027, 23.940294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.598150, 33.161251, 23.949097> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033497, 0.801892, -0.596529,
		-0.052284, -0.594641, -0.802289,
		-0.998070, 0.058063, 0.022007,
		28.298729, 33.178669, 23.955698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.707571, 33.069805, 23.209272>,  <28.997379, 33.138027, 23.940294>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.707571, 33.069805, 23.209272> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.458288, 33.266884, 23.452209>,  <28.308718, 33.385132, 23.597971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.458288, 33.266884, 23.452209>,  <28.707571, 33.069805, 23.209272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.458288, 33.266884, 23.452209> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001720, 0.777455, -0.628936,
		-0.782055, -0.390912, -0.485363,
		-0.623206, 0.492698, 0.607341,
		28.271326, 33.414692, 23.634411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.142256, 33.354359, 22.840504>,  <28.707571, 33.069805, 23.209272>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.142256, 33.354359, 22.840504> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.081545, 33.571728, 23.170753>,  <28.045118, 33.702148, 23.368902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.081545, 33.571728, 23.170753>,  <28.142256, 33.354359, 22.840504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.081545, 33.571728, 23.170753> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068442, 0.827517, -0.557253,
		-0.986042, -0.141086, -0.088406,
		-0.151778, 0.543424, 0.825623,
		28.036011, 33.734756, 23.418440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.549915, 33.781746, 22.750593>,  <28.142256, 33.354359, 22.840504>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.549915, 33.781746, 22.750593> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.779615, 33.956009, 23.027847>,  <27.917437, 34.060566, 23.194201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.779615, 33.956009, 23.027847>,  <27.549915, 33.781746, 22.750593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.779615, 33.956009, 23.027847> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024054, 0.855266, -0.517630,
		-0.818326, 0.280577, 0.501617,
		0.574251, 0.435656, 0.693137,
		27.951891, 34.086704, 23.235788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.240528, 34.406059, 22.873121>,  <27.549915, 33.781746, 22.750593>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.240528, 34.406059, 22.873121> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.606634, 34.492203, 23.009304>,  <27.826298, 34.543888, 23.091013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.606634, 34.492203, 23.009304>,  <27.240528, 34.406059, 22.873121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.606634, 34.492203, 23.009304> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059439, 0.908058, -0.414605,
		-0.398442, 0.359237, 0.843915,
		0.915265, 0.215358, 0.340456,
		27.881214, 34.556808, 23.111441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.228178, 34.949383, 23.397930>,  <27.240528, 34.406059, 22.873121>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.228178, 34.949383, 23.397930> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.567402, 34.952305, 23.185989>,  <27.770937, 34.954060, 23.058825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.567402, 34.952305, 23.185989>,  <27.228178, 34.949383, 23.397930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.567402, 34.952305, 23.185989> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170851, 0.950277, -0.260352,
		0.501603, 0.311320, 0.807139,
		0.848059, 0.007307, -0.529851,
		27.821819, 34.954498, 23.027035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.433464, 35.515972, 23.652227>,  <27.228178, 34.949383, 23.397930>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.433464, 35.515972, 23.652227> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.563677, 35.474499, 23.276295>,  <27.641804, 35.449615, 23.050735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.563677, 35.474499, 23.276295>,  <27.433464, 35.515972, 23.652227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.563677, 35.474499, 23.276295> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341011, 0.914201, -0.218970,
		0.881897, 0.391773, 0.262244,
		0.325530, -0.103681, -0.939830,
		27.661335, 35.443394, 22.994347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.190605, 35.432281, 24.385256>,  <27.433464, 35.515972, 23.652227>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.190605, 35.432281, 24.385256> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.379009, 35.766647, 24.497967>,  <27.492052, 35.967266, 24.565594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.379009, 35.766647, 24.497967>,  <27.190605, 35.432281, 24.385256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.379009, 35.766647, 24.497967> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096263, -0.268814, 0.958370,
		0.876859, -0.478528, -0.046147,
		0.471011, 0.835913, 0.281777,
		27.520313, 36.017422, 24.582500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.712379, 35.299831, 24.760641>,  <27.190605, 35.432281, 24.385256>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.712379, 35.299831, 24.760641> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.580345, 35.660107, 24.873634>,  <27.501123, 35.876274, 24.941431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.580345, 35.660107, 24.873634>,  <27.712379, 35.299831, 24.760641>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.580345, 35.660107, 24.873634> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115202, -0.335460, 0.934984,
		0.936894, 0.276084, 0.214493,
		-0.330088, 0.900691, 0.282485,
		27.481319, 35.930313, 24.958380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.116098, 35.531803, 25.515003>,  <27.712379, 35.299831, 24.760641>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.116098, 35.531803, 25.515003> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.772726, 35.735039, 25.486900>,  <27.566702, 35.856979, 25.470039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.772726, 35.735039, 25.486900>,  <28.116098, 35.531803, 25.515003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.772726, 35.735039, 25.486900> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199890, -0.205239, 0.958082,
		0.472374, 0.836493, 0.277746,
		-0.858433, 0.508092, -0.070258,
		27.515196, 35.887466, 25.465822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.083586, 35.758194, 26.120306>,  <28.116098, 35.531803, 25.515003>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.083586, 35.758194, 26.120306> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.715704, 35.843407, 25.988388>,  <27.494976, 35.894535, 25.909237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.715704, 35.843407, 25.988388>,  <28.083586, 35.758194, 26.120306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.715704, 35.843407, 25.988388> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376724, -0.242254, 0.894087,
		0.110574, 0.946536, 0.303056,
		-0.919702, 0.213032, -0.329796,
		27.439793, 35.907318, 25.889450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.929605, 36.190891, 26.611191>,  <28.083586, 35.758194, 26.120306>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.929605, 36.190891, 26.611191> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.581875, 36.068867, 26.455650>,  <27.373236, 35.995651, 26.362326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.581875, 36.068867, 26.455650>,  <27.929605, 36.190891, 26.611191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.581875, 36.068867, 26.455650> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360095, -0.147955, 0.921109,
		-0.338530, 0.940768, 0.018769,
		-0.869327, -0.305064, -0.388853,
		27.321077, 35.977348, 26.338995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.427570, 36.438072, 27.060808>,  <27.929605, 36.190891, 26.611191>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.427570, 36.438072, 27.060808> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.227846, 36.136600, 26.889854>,  <27.108011, 35.955719, 26.787283>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.227846, 36.136600, 26.889854>,  <27.427570, 36.438072, 27.060808>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.227846, 36.136600, 26.889854> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377175, -0.255005, 0.890344,
		-0.780017, 0.605758, -0.156942,
		-0.499311, -0.753678, -0.427385,
		27.078053, 35.910496, 26.761639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.787130, 36.354733, 27.374922>,  <27.427570, 36.438072, 27.060808>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.787130, 36.354733, 27.374922> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.812679, 35.999710, 27.192421>,  <26.828009, 35.786697, 27.082920>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.812679, 35.999710, 27.192421>,  <26.787130, 36.354733, 27.374922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.812679, 35.999710, 27.192421> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424244, -0.437969, 0.792591,
		-0.903293, 0.142938, -0.404514,
		0.063873, -0.887554, -0.456254,
		26.831841, 35.733444, 27.055544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.014465, 36.052483, 27.321381>,  <26.787130, 36.354733, 27.374922>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.014465, 36.052483, 27.321381> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.326054, 35.801693, 27.317268>,  <26.513006, 35.651218, 27.314800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.326054, 35.801693, 27.317268>,  <26.014465, 36.052483, 27.321381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.326054, 35.801693, 27.317268> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345025, -0.442244, 0.827876,
		-0.523606, -0.641343, -0.560817,
		0.778971, -0.626977, -0.010282,
		26.559746, 35.613602, 27.314184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.726727, 35.383720, 27.400074>,  <26.014465, 36.052483, 27.321381>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.726727, 35.383720, 27.400074> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.111700, 35.339989, 27.499485>,  <26.342684, 35.313751, 27.559132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.111700, 35.339989, 27.499485>,  <25.726727, 35.383720, 27.400074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.111700, 35.339989, 27.499485> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254111, -0.685110, 0.682680,
		0.095636, -0.720189, -0.687155,
		0.962435, -0.109325, 0.248529,
		26.400431, 35.307190, 27.574043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.850483, 34.656498, 27.350086>,  <25.726727, 35.383720, 27.400074>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.850483, 34.656498, 27.350086> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.174988, 34.766346, 27.556557>,  <26.369690, 34.832256, 27.680439>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.174988, 34.766346, 27.556557>,  <25.850483, 34.656498, 27.350086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.174988, 34.766346, 27.556557> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187806, -0.713655, 0.674853,
		0.553699, -0.644423, -0.527386,
		0.811262, 0.274619, 0.516176,
		26.418367, 34.848732, 27.711411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.252054, 34.119408, 27.361458>,  <25.850483, 34.656498, 27.350086>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.252054, 34.119408, 27.361458> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.377024, 34.333996, 27.675041>,  <26.452005, 34.462749, 27.863192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.377024, 34.333996, 27.675041>,  <26.252054, 34.119408, 27.361458>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.377024, 34.333996, 27.675041> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090001, -0.838273, 0.537773,
		0.945670, -0.097455, -0.310178,
		0.312422, 0.536472, 0.783958,
		26.470751, 34.494938, 27.910229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.864662, 33.747204, 27.626268>,  <26.252054, 34.119408, 27.361458>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.864662, 33.747204, 27.626268> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.728233, 33.986889, 27.915989>,  <26.646376, 34.130699, 28.089821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.728233, 33.986889, 27.915989>,  <26.864662, 33.747204, 27.626268>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.728233, 33.986889, 27.915989> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105030, -0.741388, 0.662807,
		0.934151, 0.302139, 0.189933,
		-0.341074, 0.599213, 0.724302,
		26.625912, 34.166653, 28.133280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.334612, 33.729599, 28.101074>,  <26.864662, 33.747204, 27.626268>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.334612, 33.729599, 28.101074> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.014442, 33.871010, 28.294708>,  <26.822340, 33.955856, 28.410889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.014442, 33.871010, 28.294708>,  <27.334612, 33.729599, 28.101074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.014442, 33.871010, 28.294708> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111022, -0.706168, 0.699286,
		0.589062, 0.613470, 0.525986,
		-0.800425, 0.353526, 0.484086,
		26.774315, 33.977066, 28.439934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.537767, 33.658138, 28.733257>,  <27.334612, 33.729599, 28.101074>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.537767, 33.658138, 28.733257> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.139040, 33.672581, 28.761688>,  <26.899803, 33.681248, 28.778748>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.139040, 33.672581, 28.761688>,  <27.537767, 33.658138, 28.733257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.139040, 33.672581, 28.761688> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007842, -0.842839, 0.538109,
		0.079338, 0.536954, 0.839873,
		-0.996817, 0.036106, 0.071080,
		26.839994, 33.683411, 28.783012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.085262, 33.741966, 29.221785>,  <27.537767, 33.658138, 28.733257>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.085262, 33.741966, 29.221785> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.437986, 33.573643, 29.136616>,  <28.649620, 33.472649, 29.085514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.437986, 33.573643, 29.136616>,  <28.085262, 33.741966, 29.221785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.437986, 33.573643, 29.136616> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287573, 0.837611, -0.464445,
		0.373787, 0.348321, 0.859626,
		0.881808, -0.420808, -0.212920,
		28.702528, 33.447399, 29.072741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.599613, 34.305676, 29.329847>,  <28.085262, 33.741966, 29.221785>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.599613, 34.305676, 29.329847> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.772516, 34.033401, 29.093266>,  <28.876257, 33.870037, 28.951317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.772516, 34.033401, 29.093266>,  <28.599613, 34.305676, 29.329847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.772516, 34.033401, 29.093266> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446579, 0.731404, -0.515378,
		0.783404, -0.041356, 0.620135,
		0.432256, -0.680689, -0.591454,
		28.902193, 33.829193, 28.915829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.328367, 34.463322, 29.294708>,  <28.599613, 34.305676, 29.329847>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.328367, 34.463322, 29.294708> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.240332, 34.247849, 28.969406>,  <29.187511, 34.118565, 28.774225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.240332, 34.247849, 28.969406>,  <29.328367, 34.463322, 29.294708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.240332, 34.247849, 28.969406> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421967, 0.699088, -0.577252,
		0.879492, -0.470213, 0.073445,
		-0.220087, -0.538679, -0.813257,
		29.174305, 34.086246, 28.725430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.964870, 34.528767, 29.092459>,  <29.328367, 34.463322, 29.294708>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.964870, 34.528767, 29.092459> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.757669, 34.419376, 28.768265>,  <29.633348, 34.353745, 28.573748>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.757669, 34.419376, 28.768265>,  <29.964870, 34.528767, 29.092459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.757669, 34.419376, 28.768265> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708325, 0.394048, -0.585664,
		0.479533, -0.877462, -0.010409,
		-0.518000, -0.273472, -0.810487,
		29.602270, 34.337334, 28.525118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.397881, 34.247124, 28.666777>,  <29.964870, 34.528767, 29.092459>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.397881, 34.247124, 28.666777> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.105562, 34.288860, 28.396946>,  <29.930172, 34.313900, 28.235048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.105562, 34.288860, 28.396946>,  <30.397881, 34.247124, 28.666777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.105562, 34.288860, 28.396946> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676215, 0.245478, -0.694603,
		0.093121, -0.963771, -0.249948,
		-0.730795, 0.104336, -0.674575,
		29.886324, 34.320160, 28.194572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.669994, 34.017220, 28.047308>,  <30.397881, 34.247124, 28.666777>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.669994, 34.017220, 28.047308> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.351906, 34.215038, 27.906994>,  <30.161053, 34.333729, 27.822805>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.351906, 34.215038, 27.906994>,  <30.669994, 34.017220, 28.047308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.351906, 34.215038, 27.906994> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518776, 0.255506, -0.815836,
		-0.313839, -0.830749, -0.459741,
		-0.795221, 0.494544, -0.350784,
		30.113338, 34.363400, 27.801758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.546261, 33.873390, 27.293394>,  <30.669994, 34.017220, 28.047308>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.546261, 33.873390, 27.293394> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.370113, 34.227562, 27.352833>,  <30.264425, 34.440067, 27.388496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.370113, 34.227562, 27.352833>,  <30.546261, 33.873390, 27.293394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.370113, 34.227562, 27.352833> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527033, 0.388934, -0.755623,
		-0.726849, -0.254438, -0.637928,
		-0.440371, 0.885433, 0.148599,
		30.238003, 34.493191, 27.397413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.417904, 34.076279, 26.621775>,  <30.546261, 33.873390, 27.293394>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.417904, 34.076279, 26.621775> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.394627, 34.418556, 26.827457>,  <30.380661, 34.623920, 26.950867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.394627, 34.418556, 26.827457>,  <30.417904, 34.076279, 26.621775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.394627, 34.418556, 26.827457> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651361, 0.422880, -0.630001,
		-0.756533, 0.298271, -0.581972,
		-0.058193, 0.855691, 0.514205,
		30.377169, 34.675262, 26.981718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.431231, 34.671024, 26.125237>,  <30.417904, 34.076279, 26.621775>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.431231, 34.671024, 26.125237> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.537481, 34.893341, 26.440334>,  <30.601231, 35.026730, 26.629393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.537481, 34.893341, 26.440334>,  <30.431231, 34.671024, 26.125237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.537481, 34.893341, 26.440334> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705547, 0.444768, -0.551711,
		-0.656998, 0.702340, -0.273993,
		0.265625, 0.555788, 0.787746,
		30.617168, 35.060078, 26.676659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.388212, 35.369865, 25.922224>,  <30.431231, 34.671024, 26.125237>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.388212, 35.369865, 25.922224> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.607891, 35.380009, 26.256348>,  <30.739698, 35.386093, 26.456821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.607891, 35.380009, 26.256348>,  <30.388212, 35.369865, 25.922224>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.607891, 35.380009, 26.256348> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691754, 0.547027, -0.471421,
		-0.468891, 0.836731, 0.282884,
		0.549197, 0.025359, 0.835308,
		30.772650, 35.387615, 26.506941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.666344, 36.076084, 25.940025>,  <30.388212, 35.369865, 25.922224>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.666344, 36.076084, 25.940025> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.899033, 35.836357, 26.159996>,  <31.038647, 35.692520, 26.291979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.899033, 35.836357, 26.159996>,  <30.666344, 36.076084, 25.940025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.899033, 35.836357, 26.159996> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811931, 0.387438, -0.436646,
		0.048625, 0.700510, 0.711984,
		0.581724, -0.599314, 0.549927,
		31.073549, 35.656563, 26.324974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.110155, 36.515205, 26.259300>,  <30.666344, 36.076084, 25.940025>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.110155, 36.515205, 26.259300> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.300978, 36.164059, 26.276138>,  <31.415472, 35.953373, 26.286242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.300978, 36.164059, 26.276138>,  <31.110155, 36.515205, 26.259300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.300978, 36.164059, 26.276138> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806882, 0.418491, -0.416902,
		0.348367, 0.232852, 0.907976,
		0.477056, -0.877864, 0.042095,
		31.444094, 35.900700, 26.288767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<28.410551, 30.970379, 32.346039> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.617352, 30.808205, 32.044487>,  <28.741432, 30.710899, 31.863556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.617352, 30.808205, 32.044487>,  <28.410551, 30.970379, 32.346039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.617352, 30.808205, 32.044487> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202324, 0.797878, -0.567852,
		0.831729, 0.446108, 0.330476,
		0.517002, -0.405436, -0.753877,
		28.772451, 30.686573, 31.818323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.892176, 31.465492, 32.051041>,  <28.410551, 30.970379, 32.346039>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.892176, 31.465492, 32.051041> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.831327, 31.211487, 31.748089>,  <28.794819, 31.059084, 31.566319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.831327, 31.211487, 31.748089>,  <28.892176, 31.465492, 32.051041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.831327, 31.211487, 31.748089> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074802, 0.771493, -0.631825,
		0.985527, -0.039462, -0.164861,
		-0.152122, -0.635012, -0.757376,
		28.785690, 31.020983, 31.520876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.285490, 31.801477, 31.623663>,  <28.892176, 31.465492, 32.051041>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.285490, 31.801477, 31.623663> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.062817, 31.554062, 31.401848>,  <28.929213, 31.405613, 31.268759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.062817, 31.554062, 31.401848>,  <29.285490, 31.801477, 31.623663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.062817, 31.554062, 31.401848> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044693, 0.644268, -0.763493,
		0.829522, -0.449807, -0.331009,
		-0.556683, -0.618540, -0.554537,
		28.895811, 31.368500, 31.235487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.681028, 31.711245, 30.998898>,  <29.285490, 31.801477, 31.623663>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.681028, 31.711245, 30.998898> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.302034, 31.629112, 30.900826>,  <29.074638, 31.579834, 30.841982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.302034, 31.629112, 30.900826>,  <29.681028, 31.711245, 30.998898>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.302034, 31.629112, 30.900826> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076067, 0.599968, -0.796400,
		0.310625, -0.773226, -0.552841,
		-0.947484, -0.205328, -0.245182,
		29.017790, 31.567514, 30.827271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.732647, 31.599716, 30.236807>,  <29.681028, 31.711245, 30.998898>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.732647, 31.599716, 30.236807> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.350712, 31.679916, 30.324520>,  <29.121552, 31.728037, 30.377148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.350712, 31.679916, 30.324520>,  <29.732647, 31.599716, 30.236807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.350712, 31.679916, 30.324520> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081662, 0.532510, -0.842475,
		-0.285688, -0.822334, -0.492087,
		-0.954837, 0.200500, 0.219285,
		29.064260, 31.740067, 30.390306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.306847, 31.494118, 29.608675>,  <29.732647, 31.599716, 30.236807>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.306847, 31.494118, 29.608675> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.093206, 31.741005, 29.839771>,  <28.965023, 31.889137, 29.978428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.093206, 31.741005, 29.839771>,  <29.306847, 31.494118, 29.608675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.093206, 31.741005, 29.839771> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067724, 0.649942, -0.756960,
		-0.842705, -0.443418, -0.305333,
		-0.534099, 0.617216, 0.577739,
		28.932978, 31.926170, 30.013094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.915043, 31.762688, 29.084280>,  <29.306847, 31.494118, 29.608675>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.915043, 31.762688, 29.084280> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.868143, 32.038181, 29.370468>,  <28.840004, 32.203476, 29.542181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.868143, 32.038181, 29.370468>,  <28.915043, 31.762688, 29.084280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.868143, 32.038181, 29.370468> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159045, 0.698117, -0.698095,
		-0.980284, -0.195642, 0.027686,
		-0.117249, 0.688736, 0.715469,
		28.832968, 32.244801, 29.585110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.301302, 32.262722, 28.836988>,  <28.915043, 31.762688, 29.084280>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.301302, 32.262722, 28.836988> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.535557, 32.435707, 29.111217>,  <28.676109, 32.539497, 29.275755>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.535557, 32.435707, 29.111217>,  <28.301302, 32.262722, 28.836988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.535557, 32.435707, 29.111217> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003718, 0.847210, -0.531246,
		-0.810565, 0.308568, 0.497765,
		0.585637, 0.432460, 0.685571,
		28.711248, 32.565445, 29.316889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.969723, 32.926102, 28.962009>,  <28.301302, 32.262722, 28.836988>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.969723, 32.926102, 28.962009> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.355034, 32.968666, 29.060616>,  <28.586222, 32.994205, 29.119780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.355034, 32.968666, 29.060616>,  <27.969723, 32.926102, 28.962009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.355034, 32.968666, 29.060616> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030786, 0.868293, -0.495095,
		-0.266729, 0.484505, 0.833133,
		0.963280, 0.106407, 0.246515,
		28.644018, 33.000587, 29.134569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.413855, 33.392635, 29.453667>,  <27.969723, 32.926102, 28.962009>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.413855, 33.392635, 29.453667> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.040304, 33.377747, 29.311405>,  <26.816174, 33.368813, 29.226049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.040304, 33.377747, 29.311405>,  <27.413855, 33.392635, 29.453667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.040304, 33.377747, 29.311405> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183880, -0.803011, 0.566888,
		-0.306695, 0.594801, 0.743068,
		-0.933877, -0.037226, -0.355652,
		26.760141, 33.366577, 29.204710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.014231, 33.225700, 30.075579>,  <27.413855, 33.392635, 29.453667>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.014231, 33.225700, 30.075579> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.813601, 33.147381, 29.738514>,  <26.693222, 33.100388, 29.536274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.813601, 33.147381, 29.738514>,  <27.014231, 33.225700, 30.075579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.813601, 33.147381, 29.738514> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234676, -0.906733, 0.350375,
		-0.832676, 0.373493, 0.408846,
		-0.501576, -0.195803, -0.842664,
		26.663128, 33.088638, 29.485714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.288570, 32.969349, 30.368002>,  <27.014231, 33.225700, 30.075579>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.288570, 32.969349, 30.368002> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.343683, 32.841835, 29.992897>,  <26.376751, 32.765327, 29.767834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.343683, 32.841835, 29.992897>,  <26.288570, 32.969349, 30.368002>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.343683, 32.841835, 29.992897> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331826, -0.906933, 0.259546,
		-0.933224, 0.275413, -0.230739,
		0.137783, -0.318780, -0.937761,
		26.385017, 32.746201, 29.711569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.613209, 32.541943, 30.147898>,  <26.288570, 32.969349, 30.368002>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.613209, 32.541943, 30.147898> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.937330, 32.448719, 29.932827>,  <26.131804, 32.392784, 29.803785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.937330, 32.448719, 29.932827>,  <25.613209, 32.541943, 30.147898>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.937330, 32.448719, 29.932827> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154274, -0.969988, 0.187945,
		-0.565340, -0.069343, -0.821938,
		0.810302, -0.233057, -0.537675,
		26.180422, 32.378803, 29.771524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.380440, 32.012367, 29.716652>,  <25.613209, 32.541943, 30.147898>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.380440, 32.012367, 29.716652> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.773853, 31.963749, 29.663158>,  <26.009901, 31.934578, 29.631063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.773853, 31.963749, 29.663158>,  <25.380440, 32.012367, 29.716652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.773853, 31.963749, 29.663158> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104001, -0.985889, 0.131172,
		-0.147789, -0.115104, -0.982298,
		0.983536, -0.121546, -0.133733,
		26.068914, 31.927284, 29.623039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.480850, 31.425049, 29.229971>,  <25.380440, 32.012367, 29.716652>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.480850, 31.425049, 29.229971> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.826176, 31.469753, 29.426826>,  <26.033371, 31.496576, 29.544941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.826176, 31.469753, 29.426826>,  <25.480850, 31.425049, 29.229971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.826176, 31.469753, 29.426826> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012313, -0.970216, 0.241928,
		0.504520, -0.214919, -0.836223,
		0.863312, 0.111761, 0.492140,
		26.085169, 31.503281, 29.574469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.914745, 30.888899, 29.066656>,  <25.480850, 31.425049, 29.229971>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.914745, 30.888899, 29.066656> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.110409, 31.019073, 29.390339>,  <26.227808, 31.097178, 29.584549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.110409, 31.019073, 29.390339>,  <25.914745, 30.888899, 29.066656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.110409, 31.019073, 29.390339> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198226, -0.944984, 0.260215,
		0.849370, 0.033119, -0.526758,
		0.489160, 0.325436, 0.809206,
		26.257156, 31.116705, 29.633101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.412720, 30.404587, 29.062387>,  <25.914745, 30.888899, 29.066656>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.412720, 30.404587, 29.062387> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.426638, 30.563507, 29.429199>,  <26.434988, 30.658859, 29.649286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.426638, 30.563507, 29.429199>,  <26.412720, 30.404587, 29.062387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.426638, 30.563507, 29.429199> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310114, -0.876582, 0.368013,
		0.950063, 0.271578, -0.153710,
		0.034796, 0.397303, 0.917028,
		26.437077, 30.682697, 29.704308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.011461, 30.079296, 29.466753>,  <26.412720, 30.404587, 29.062387>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.011461, 30.079296, 29.466753> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.758717, 30.224701, 29.740574>,  <26.607069, 30.311943, 29.904867>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.758717, 30.224701, 29.740574>,  <27.011461, 30.079296, 29.466753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.758717, 30.224701, 29.740574> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213737, -0.767236, 0.604702,
		0.745028, 0.528402, 0.407092,
		-0.631862, 0.363510, 0.684552,
		26.569159, 30.333754, 29.945940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.383183, 30.114822, 30.126482>,  <27.011461, 30.079296, 29.466753>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.383183, 30.114822, 30.126482> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.991270, 30.105923, 30.206017>,  <26.756123, 30.100582, 30.253738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.991270, 30.105923, 30.206017>,  <27.383183, 30.114822, 30.126482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.991270, 30.105923, 30.206017> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155890, -0.707850, 0.688947,
		0.125419, 0.706013, 0.697005,
		-0.979780, -0.022249, 0.198838,
		26.697336, 30.099249, 30.265667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.324633, 30.120537, 30.849089>,  <27.383183, 30.114822, 30.126482>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.324633, 30.120537, 30.849089> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.964340, 29.979553, 30.747532>,  <26.748165, 29.894964, 30.686598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.964340, 29.979553, 30.747532>,  <27.324633, 30.120537, 30.849089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.964340, 29.979553, 30.747532> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121605, -0.765719, 0.631574,
		-0.417012, 0.538003, 0.732566,
		-0.900729, -0.352458, -0.253890,
		26.694122, 29.873816, 30.671364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.133459, 29.737667, 31.460361>,  <27.324633, 30.120537, 30.849089>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.133459, 29.737667, 31.460361> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.866764, 29.625973, 31.183960>,  <26.706747, 29.558956, 31.018120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.866764, 29.625973, 31.183960>,  <27.133459, 29.737667, 31.460361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.866764, 29.625973, 31.183960> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284631, -0.761482, 0.582349,
		-0.688799, 0.584957, 0.428231,
		-0.666740, -0.279233, -0.691004,
		26.666742, 29.542202, 30.976658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.541220, 29.722067, 31.774559>,  <27.133459, 29.737667, 31.460361>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.541220, 29.722067, 31.774559> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.528009, 29.461540, 31.471325>,  <26.520082, 29.305223, 31.289385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.528009, 29.461540, 31.471325>,  <26.541220, 29.722067, 31.774559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.528009, 29.461540, 31.471325> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277765, -0.722638, 0.632963,
		-0.960081, 0.231474, -0.157047,
		-0.033027, -0.651318, -0.758086,
		26.518101, 29.266146, 31.243898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.077055, 29.203896, 32.059666>,  <26.541220, 29.722067, 31.774559>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.077055, 29.203896, 32.059666> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.233282, 29.027073, 31.736668>,  <26.327019, 28.920979, 31.542870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.233282, 29.027073, 31.736668>,  <26.077055, 29.203896, 32.059666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.233282, 29.027073, 31.736668> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105799, -0.892902, 0.437643,
		-0.914475, -0.085496, -0.395506,
		0.390565, -0.442058, -0.807492,
		26.350452, 28.894455, 31.494421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.684883, 26.277290, 29.385065> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.301392, 26.370129, 29.450756>,  <33.071297, 26.425831, 29.490171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.301392, 26.370129, 29.450756>,  <33.684883, 26.277290, 29.385065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.301392, 26.370129, 29.450756> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086401, 0.788126, -0.609420,
		-0.270875, -0.570079, -0.775652,
		-0.958729, 0.232094, 0.164228,
		33.013771, 26.439756, 29.500025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.283192, 26.424793, 28.737396>,  <33.684883, 26.277290, 29.385065>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.283192, 26.424793, 28.737396> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.082443, 26.626122, 29.018764>,  <32.961994, 26.746918, 29.187586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.082443, 26.626122, 29.018764>,  <33.283192, 26.424793, 28.737396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.082443, 26.626122, 29.018764> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132844, 0.758751, -0.637691,
		-0.854682, -0.413482, -0.313930,
		-0.501868, 0.503319, 0.703419,
		32.931881, 26.777117, 29.229790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.724888, 26.644979, 28.358997>,  <33.283192, 26.424793, 28.737396>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.724888, 26.644979, 28.358997> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.764755, 26.882763, 28.678169>,  <32.788677, 27.025433, 28.869673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.764755, 26.882763, 28.678169>,  <32.724888, 26.644979, 28.358997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.764755, 26.882763, 28.678169> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138458, 0.802404, -0.580497,
		-0.985341, -0.052622, 0.162281,
		0.099667, 0.594456, 0.797927,
		32.794655, 27.061100, 28.917547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.269241, 27.155384, 28.166716>,  <32.724888, 26.644979, 28.358997>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.269241, 27.155384, 28.166716> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.487995, 27.318493, 28.459190>,  <32.619247, 27.416357, 28.634676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.487995, 27.318493, 28.459190>,  <32.269241, 27.155384, 28.166716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.487995, 27.318493, 28.459190> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003364, 0.874431, -0.485139,
		-0.837199, 0.262857, 0.479587,
		0.546888, 0.407771, 0.731188,
		32.652061, 27.440825, 28.678547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.958088, 27.818615, 28.290777>,  <32.269241, 27.155384, 28.166716>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.958088, 27.818615, 28.290777> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.334705, 27.841885, 28.423508>,  <32.560677, 27.855846, 28.503147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.334705, 27.841885, 28.423508>,  <31.958088, 27.818615, 28.290777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.334705, 27.841885, 28.423508> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101947, 0.889591, -0.445236,
		-0.321093, 0.453038, 0.831659,
		0.941545, 0.058176, 0.331827,
		32.617168, 27.859337, 28.523056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.111008, 28.506851, 28.488350>,  <31.958088, 27.818615, 28.290777>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.111008, 28.506851, 28.488350> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.476723, 28.358135, 28.424038>,  <32.696152, 28.268906, 28.385450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.476723, 28.358135, 28.424038>,  <32.111008, 28.506851, 28.488350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.476723, 28.358135, 28.424038> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246779, 0.826016, -0.506752,
		0.321211, 0.423641, 0.846966,
		0.914289, -0.371788, -0.160780,
		32.751011, 28.246599, 28.375805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.490849, 29.135597, 28.595482>,  <32.111008, 28.506851, 28.488350>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.490849, 29.135597, 28.595482> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.736649, 28.892349, 28.394451>,  <32.884129, 28.746401, 28.273832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.736649, 28.892349, 28.394451>,  <32.490849, 29.135597, 28.595482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.736649, 28.892349, 28.394451> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265494, 0.759294, -0.594126,
		0.742903, 0.231658, 0.628037,
		0.614498, -0.608118, -0.502578,
		32.920998, 28.709913, 28.243677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.010452, 29.596828, 28.369429>,  <32.490849, 29.135597, 28.595482>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.010452, 29.596828, 28.369429> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.082939, 29.265003, 28.158154>,  <33.126431, 29.065908, 28.031387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.082939, 29.265003, 28.158154>,  <33.010452, 29.596828, 28.369429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.082939, 29.265003, 28.158154> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297791, 0.558154, -0.774458,
		0.937273, -0.016944, 0.348184,
		0.181218, -0.829564, -0.528189,
		33.137306, 29.016134, 27.999697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.630608, 29.717062, 28.075127>,  <33.010452, 29.596828, 28.369429>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.630608, 29.717062, 28.075127> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.453178, 29.444855, 27.841843>,  <33.346722, 29.281530, 27.701872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.453178, 29.444855, 27.841843>,  <33.630608, 29.717062, 28.075127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.453178, 29.444855, 27.841843> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167146, 0.576499, -0.799819,
		0.880513, -0.452262, -0.141975,
		-0.443576, -0.680520, -0.583208,
		33.320107, 29.240698, 27.666880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.073421, 29.562862, 27.504869>,  <33.630608, 29.717062, 28.075127>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.073421, 29.562862, 27.504869> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.692898, 29.492023, 27.403954>,  <33.464584, 29.449520, 27.343403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.692898, 29.492023, 27.403954>,  <34.073421, 29.562862, 27.504869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.692898, 29.492023, 27.403954> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140901, 0.478127, -0.866915,
		0.274153, -0.860251, -0.429893,
		-0.951308, -0.177095, -0.252290,
		33.407505, 29.438894, 27.328266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.166313, 29.534355, 26.798573>,  <34.073421, 29.562862, 27.504869>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.166313, 29.534355, 26.798573> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.769917, 29.567039, 26.841019>,  <33.532078, 29.586651, 26.866488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.769917, 29.567039, 26.841019>,  <34.166313, 29.534355, 26.798573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.769917, 29.567039, 26.841019> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075241, 0.315814, -0.945833,
		-0.110799, -0.945296, -0.306821,
		-0.990991, 0.081712, 0.106117,
		33.472618, 29.591553, 26.872854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.906990, 29.350264, 26.209629>,  <34.166313, 29.534355, 26.798573>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.906990, 29.350264, 26.209629> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.616898, 29.565521, 26.381413>,  <33.442841, 29.694675, 26.484484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.616898, 29.565521, 26.381413>,  <33.906990, 29.350264, 26.209629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.616898, 29.565521, 26.381413> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188228, 0.445027, -0.875512,
		-0.662271, -0.715789, -0.221456,
		-0.725236, 0.538142, 0.429461,
		33.399326, 29.726963, 26.510250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.371437, 29.474304, 25.646887>,  <33.906990, 29.350264, 26.209629>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.371437, 29.474304, 25.646887> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.338863, 29.771599, 25.912510>,  <33.319321, 29.949976, 26.071884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.338863, 29.771599, 25.912510>,  <33.371437, 29.474304, 25.646887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.338863, 29.771599, 25.912510> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235623, 0.633027, -0.737400,
		-0.968427, -0.216514, 0.123576,
		-0.081430, 0.743236, 0.664056,
		33.314434, 29.994570, 26.111727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.733532, 29.791395, 25.481285>,  <33.371437, 29.474304, 25.646887>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.733532, 29.791395, 25.481285> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.945534, 30.055458, 25.694183>,  <33.072735, 30.213896, 25.821922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.945534, 30.055458, 25.694183>,  <32.733532, 29.791395, 25.481285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.945534, 30.055458, 25.694183> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131303, 0.683970, -0.717596,
		-0.837765, 0.310447, 0.449191,
		0.530009, 0.660157, 0.532243,
		33.104538, 30.253506, 25.853857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.072140, 29.837336, 25.722181>,  <32.733532, 29.791395, 25.481285>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.072140, 29.837336, 25.722181> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.757627, 29.734978, 25.497223>,  <31.568920, 29.673563, 25.362247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.757627, 29.734978, 25.497223>,  <32.072140, 29.837336, 25.722181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.757627, 29.734978, 25.497223> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261862, -0.686411, 0.678430,
		-0.559640, 0.680704, 0.472700,
		-0.786277, -0.255894, -0.562394,
		31.521744, 29.658209, 25.328505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.698448, 29.487087, 26.123108>,  <32.072140, 29.837336, 25.722181>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.698448, 29.487087, 26.123108> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.525772, 29.343216, 25.792225>,  <31.422167, 29.256893, 25.593695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.525772, 29.343216, 25.792225>,  <31.698448, 29.487087, 26.123108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.525772, 29.343216, 25.792225> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324808, -0.793557, 0.514554,
		-0.841512, 0.490813, 0.225745,
		-0.431691, -0.359680, -0.827208,
		31.396265, 29.235312, 25.544062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.112730, 29.144810, 26.428467>,  <31.698448, 29.487087, 26.123108>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.112730, 29.144810, 26.428467> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.090738, 29.027252, 26.046764>,  <31.077543, 28.956717, 25.817743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.090738, 29.027252, 26.046764>,  <31.112730, 29.144810, 26.428467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.090738, 29.027252, 26.046764> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450108, -0.845792, 0.286424,
		-0.891280, 0.445266, -0.085783,
		-0.054980, -0.293896, -0.954255,
		31.074244, 28.939083, 25.760489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.385269, 28.872324, 26.277132>,  <31.112730, 29.144810, 26.428467>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.385269, 28.872324, 26.277132> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.640554, 28.713772, 26.013142>,  <30.793726, 28.618641, 25.854748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.640554, 28.713772, 26.013142>,  <30.385269, 28.872324, 26.277132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.640554, 28.713772, 26.013142> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325106, -0.915842, 0.235668,
		-0.697846, 0.064155, -0.713368,
		0.638213, -0.396381, -0.659974,
		30.832018, 28.594858, 25.815149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.070007, 28.348873, 25.738810>,  <30.385269, 28.872324, 26.277132>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.070007, 28.348873, 25.738810> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.456188, 28.258842, 25.791328>,  <30.687897, 28.204824, 25.822840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.456188, 28.258842, 25.791328>,  <30.070007, 28.348873, 25.738810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.456188, 28.258842, 25.791328> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255337, -0.917687, 0.304389,
		0.051980, -0.327399, -0.943455,
		0.965454, -0.225077, 0.131299,
		30.745825, 28.191319, 25.830719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.146198, 27.605747, 25.483746>,  <30.070007, 28.348873, 25.738810>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.146198, 27.605747, 25.483746> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.477167, 27.661602, 25.701324>,  <30.675749, 27.695114, 25.831871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.477167, 27.661602, 25.701324>,  <30.146198, 27.605747, 25.483746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.477167, 27.661602, 25.701324> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109433, -0.909936, 0.400052,
		0.550818, -0.390537, -0.737618,
		0.827420, 0.139636, 0.543946,
		30.725393, 27.703493, 25.864508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.623348, 26.975214, 25.437502>,  <30.146198, 27.605747, 25.483746>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.623348, 26.975214, 25.437502> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.685686, 27.199482, 25.762798>,  <30.723089, 27.334044, 25.957975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.685686, 27.199482, 25.762798>,  <30.623348, 26.975214, 25.437502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.685686, 27.199482, 25.762798> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204138, -0.787247, 0.581868,
		0.966458, -0.256694, -0.008234,
		0.155845, 0.560670, 0.813241,
		30.732439, 27.367683, 26.006771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.040564, 26.445988, 25.908747>,  <30.623348, 26.975214, 25.437502>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.040564, 26.445988, 25.908747> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.902069, 26.754158, 26.122875>,  <30.818974, 26.939060, 26.251352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.902069, 26.754158, 26.122875>,  <31.040564, 26.445988, 25.908747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.902069, 26.754158, 26.122875> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184455, -0.615382, 0.766343,
		0.919835, 0.166592, 0.355176,
		-0.346235, 0.770424, 0.535321,
		30.798199, 26.985285, 26.283472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.333858, 26.265629, 26.545868>,  <31.040564, 26.445988, 25.908747>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.333858, 26.265629, 26.545868> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.047222, 26.533733, 26.623066>,  <30.875240, 26.694597, 26.669384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.047222, 26.533733, 26.623066>,  <31.333858, 26.265629, 26.545868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.047222, 26.533733, 26.623066> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314911, -0.557790, 0.767920,
		0.622358, 0.489509, 0.610780,
		-0.716591, 0.670262, 0.192993,
		30.832245, 26.734812, 26.680964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.341377, 26.529896, 27.304724>,  <31.333858, 26.265629, 26.545868>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.341377, 26.529896, 27.304724> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.974434, 26.576283, 27.152405>,  <30.754269, 26.604115, 27.061014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.974434, 26.576283, 27.152405>,  <31.341377, 26.529896, 27.304724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.974434, 26.576283, 27.152405> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384721, -0.503895, 0.773356,
		-0.102199, 0.855945, 0.506866,
		-0.917357, 0.115966, -0.380798,
		30.699226, 26.611073, 27.038166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.810369, 26.694408, 27.813610>,  <31.341377, 26.529896, 27.304724>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.810369, 26.694408, 27.813610> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.566515, 26.564026, 27.524586>,  <30.420202, 26.485796, 27.351171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.566515, 26.564026, 27.524586>,  <30.810369, 26.694408, 27.813610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.566515, 26.564026, 27.524586> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430763, -0.628972, 0.647176,
		-0.665421, 0.705796, 0.243035,
		-0.609637, -0.325954, -0.722562,
		30.383623, 26.466240, 27.307817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.229542, 26.771692, 28.090689>,  <30.810369, 26.694408, 27.813610>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.229542, 26.771692, 28.090689> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.130138, 26.514259, 27.801125>,  <30.070496, 26.359800, 27.627386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.130138, 26.514259, 27.801125>,  <30.229542, 26.771692, 28.090689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.130138, 26.514259, 27.801125> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446945, -0.586853, 0.675162,
		-0.859350, 0.491333, -0.141807,
		-0.248509, -0.643581, -0.723911,
		30.055586, 26.321186, 27.583952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.472094, 26.623552, 28.107872>,  <30.229542, 26.771692, 28.090689>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.472094, 26.623552, 28.107872> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.636761, 26.301369, 27.937336>,  <29.735561, 26.108059, 27.835014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.636761, 26.301369, 27.937336>,  <29.472094, 26.623552, 28.107872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.636761, 26.301369, 27.937336> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430834, -0.584249, 0.687776,
		-0.803064, -0.099452, -0.587535,
		0.411667, -0.805458, -0.426342,
		29.760262, 26.059731, 27.809433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.950272, 26.164885, 27.873035>,  <29.472094, 26.623552, 28.107872>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.950272, 26.164885, 27.873035> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.284954, 25.971634, 27.976192>,  <29.485764, 25.855682, 28.038086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.284954, 25.971634, 27.976192>,  <28.950272, 26.164885, 27.873035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.284954, 25.971634, 27.976192> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475584, -0.407498, 0.779593,
		-0.271551, -0.774941, -0.570724,
		0.836708, -0.483127, 0.257893,
		29.535967, 25.826694, 28.053560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.539585, 25.761311, 27.477467>,  <28.950272, 26.164885, 27.873035>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.539585, 25.761311, 27.477467> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.152966, 25.749599, 27.375546>,  <27.920994, 25.742573, 27.314394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.152966, 25.749599, 27.375546>,  <28.539585, 25.761311, 27.477467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.152966, 25.749599, 27.375546> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133363, 0.791222, -0.596810,
		0.219078, -0.610828, -0.760851,
		-0.966550, -0.029279, -0.254801,
		27.863001, 25.740816, 27.299105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.494991, 25.833500, 26.677773>,  <28.539585, 25.761311, 27.477467>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.494991, 25.833500, 26.677773> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.129845, 25.936008, 26.804893>,  <27.910757, 25.997513, 26.881166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.129845, 25.936008, 26.804893>,  <28.494991, 25.833500, 26.677773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.129845, 25.936008, 26.804893> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052312, 0.845447, -0.531491,
		-0.404892, -0.468555, -0.785187,
		-0.912867, 0.256271, 0.317804,
		27.855984, 26.012890, 26.900234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.127865, 26.142101, 26.139597>,  <28.494991, 25.833500, 26.677773>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.127865, 26.142101, 26.139597> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.900423, 26.270584, 26.442520>,  <27.763958, 26.347673, 26.624273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.900423, 26.270584, 26.442520>,  <28.127865, 26.142101, 26.139597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.900423, 26.270584, 26.442520> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011084, 0.917540, -0.397489,
		-0.822537, -0.234408, -0.518156,
		-0.568604, 0.321206, 0.757309,
		27.729841, 26.366945, 26.669712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.526247, 26.369158, 25.817259>,  <28.127865, 26.142101, 26.139597>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.526247, 26.369158, 25.817259> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.560690, 26.545795, 26.174488>,  <27.581356, 26.651777, 26.388826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.560690, 26.545795, 26.174488>,  <27.526247, 26.369158, 25.817259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.560690, 26.545795, 26.174488> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051149, 0.893261, -0.446618,
		-0.994972, 0.084138, 0.054331,
		0.086109, 0.441593, 0.893074,
		27.586523, 26.678274, 26.442410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.944223, 26.903086, 25.852661>,  <27.526247, 26.369158, 25.817259>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.944223, 26.903086, 25.852661> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.212425, 27.011349, 26.128971>,  <27.373346, 27.076307, 26.294756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.212425, 27.011349, 26.128971>,  <26.944223, 26.903086, 25.852661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.212425, 27.011349, 26.128971> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307719, 0.948672, -0.073015,
		-0.675079, -0.163607, 0.719376,
		0.670506, 0.270657, 0.690773,
		27.413576, 27.092546, 26.336203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.568666, 27.179829, 26.298626>,  <26.944223, 26.903086, 25.852661>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.568666, 27.179829, 26.298626> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.941481, 27.314606, 26.351955>,  <27.165169, 27.395472, 26.383953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.941481, 27.314606, 26.351955>,  <26.568666, 27.179829, 26.298626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.941481, 27.314606, 26.351955> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335743, 0.941407, -0.032074,
		-0.136319, -0.014868, 0.990553,
		0.932038, 0.336944, 0.133324,
		27.221092, 27.415689, 26.391953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.604342, 27.864902, 26.782209>,  <26.568666, 27.179829, 26.298626>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.604342, 27.864902, 26.782209> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.964737, 27.867935, 26.608700>,  <27.180975, 27.869755, 26.504595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.964737, 27.867935, 26.608700>,  <26.604342, 27.864902, 26.782209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.964737, 27.867935, 26.608700> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118557, 0.966091, -0.229374,
		0.417324, 0.258091, 0.871337,
		0.900991, 0.007580, -0.433772,
		27.235035, 27.870209, 26.478569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.879503, 28.391779, 27.025236>,  <26.604342, 27.864902, 26.782209>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.879503, 28.391779, 27.025236> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.104168, 28.313854, 26.703594>,  <27.238966, 28.267099, 26.510609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.104168, 28.313854, 26.703594>,  <26.879503, 28.391779, 27.025236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.104168, 28.313854, 26.703594> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201108, 0.910590, -0.361083,
		0.802554, 0.364518, 0.472264,
		0.561660, -0.194812, -0.804105,
		27.272667, 28.255411, 26.462362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.405716, 28.960663, 26.968067>,  <26.879503, 28.391779, 27.025236>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.405716, 28.960663, 26.968067> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.389996, 28.796135, 26.603809>,  <27.380564, 28.697418, 26.385256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.389996, 28.796135, 26.603809>,  <27.405716, 28.960663, 26.968067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.389996, 28.796135, 26.603809> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023587, 0.911475, -0.410677,
		0.998949, 0.005339, -0.045522,
		-0.039300, -0.411320, -0.910643,
		27.378206, 28.672739, 26.330616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.952778, 29.152599, 26.487463>,  <27.405716, 28.960663, 26.968067>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.952778, 29.152599, 26.487463> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.669876, 29.043369, 26.226627>,  <27.500135, 28.977831, 26.070126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.669876, 29.043369, 26.226627>,  <27.952778, 29.152599, 26.487463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.669876, 29.043369, 26.226627> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040440, 0.905248, -0.422954,
		0.705801, -0.325507, -0.629198,
		-0.707255, -0.273076, -0.652088,
		27.457699, 28.961447, 26.031000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.189192, 29.388447, 25.829288>,  <27.952778, 29.152599, 26.487463>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.189192, 29.388447, 25.829288> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.805473, 29.292553, 25.769585>,  <27.575243, 29.235016, 25.733763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.805473, 29.292553, 25.769585>,  <28.189192, 29.388447, 25.829288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.805473, 29.292553, 25.769585> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127053, 0.838400, -0.530041,
		0.252208, -0.489502, -0.834733,
		-0.959296, -0.239736, -0.149258,
		27.517685, 29.220633, 25.724808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.078796, 29.346828, 25.091301>,  <28.189192, 29.388447, 25.829288>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.078796, 29.346828, 25.091301> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.719234, 29.427689, 25.246792>,  <27.503498, 29.476204, 25.340086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.719234, 29.427689, 25.246792>,  <28.078796, 29.346828, 25.091301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.719234, 29.427689, 25.246792> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086568, 0.787776, -0.609848,
		-0.429510, -0.581846, -0.690635,
		-0.898903, 0.202149, 0.388727,
		27.449564, 29.488333, 25.363409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.645792, 29.486361, 24.520399>,  <28.078796, 29.346828, 25.091301>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.645792, 29.486361, 24.520399> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.478481, 29.674919, 24.830967>,  <27.378094, 29.788054, 25.017307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.478481, 29.674919, 24.830967>,  <27.645792, 29.486361, 24.520399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.478481, 29.674919, 24.830967> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127998, 0.815669, -0.564181,
		-0.899255, -0.335365, -0.280839,
		-0.418278, 0.471396, 0.776421,
		27.352997, 29.816338, 25.063892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.106209, 29.880510, 24.244707>,  <27.645792, 29.486361, 24.520399>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.106209, 29.880510, 24.244707> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.172628, 30.035522, 24.607418>,  <27.212481, 30.128531, 24.825045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.172628, 30.035522, 24.607418>,  <27.106209, 29.880510, 24.244707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.172628, 30.035522, 24.607418> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124441, 0.920428, -0.370576,
		-0.978235, -0.051308, 0.201059,
		0.166047, 0.387530, 0.906779,
		27.222443, 30.151781, 24.879452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<39.492664, 30.814030, 30.550634> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.846878, 30.630054, 30.576809>,  <40.059406, 30.519670, 30.592514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.846878, 30.630054, 30.576809>,  <39.492664, 30.814030, 30.550634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.846878, 30.630054, 30.576809> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107405, 0.065656, -0.992045,
		0.451981, 0.885521, 0.107540,
		0.885538, -0.459936, 0.065434,
		40.112541, 30.492073, 30.596439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.973431, 31.250591, 30.276278>,  <39.492664, 30.814030, 30.550634>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.973431, 31.250591, 30.276278> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.146336, 30.893299, 30.226826>,  <40.250080, 30.678925, 30.197155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.146336, 30.893299, 30.226826>,  <39.973431, 31.250591, 30.276278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.146336, 30.893299, 30.226826> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279019, 0.262860, -0.923609,
		0.857493, 0.364751, 0.362854,
		0.432267, -0.893231, -0.123628,
		40.276016, 30.625330, 30.189737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.688992, 31.380466, 30.157709>,  <39.973431, 31.250591, 30.276278>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.688992, 31.380466, 30.157709> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.624058, 31.018631, 30.000042>,  <40.585098, 30.801531, 29.905441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.624058, 31.018631, 30.000042>,  <40.688992, 31.380466, 30.157709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.624058, 31.018631, 30.000042> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256470, 0.347058, -0.902094,
		0.952822, -0.247536, 0.175659,
		-0.162337, -0.904586, -0.394170,
		40.575356, 30.747255, 29.881790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.401932, 31.117260, 29.696522>,  <40.688992, 31.380466, 30.157709>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.401932, 31.117260, 29.696522> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.106915, 30.873501, 29.580139>,  <40.929905, 30.727245, 29.510309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.106915, 30.873501, 29.580139>,  <41.401932, 31.117260, 29.696522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.106915, 30.873501, 29.580139> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263045, 0.137571, -0.954925,
		0.621959, -0.780837, 0.058834,
		-0.737547, -0.609400, -0.290959,
		40.885651, 30.690681, 29.492851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.622559, 30.773373, 29.042915>,  <41.401932, 31.117260, 29.696522>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.622559, 30.773373, 29.042915> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.230377, 30.694672, 29.043930>,  <40.995068, 30.647451, 29.044538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.230377, 30.694672, 29.043930>,  <41.622559, 30.773373, 29.042915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.230377, 30.694672, 29.043930> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045008, 0.211705, -0.976297,
		0.191540, -0.957327, -0.216421,
		-0.980452, -0.196740, 0.002538,
		40.936241, 30.635647, 29.044691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.412704, 30.430016, 28.363865>,  <41.622559, 30.773373, 29.042915>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.412704, 30.430016, 28.363865> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.056438, 30.556976, 28.494080>,  <40.842678, 30.633154, 28.572208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.056438, 30.556976, 28.494080>,  <41.412704, 30.430016, 28.363865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.056438, 30.556976, 28.494080> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269864, 0.207179, -0.940346,
		-0.365914, -0.925382, -0.098871,
		-0.890663, 0.317404, 0.325537,
		40.789238, 30.652197, 28.591742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.929741, 30.095741, 27.910311>,  <41.412704, 30.430016, 28.363865>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.929741, 30.095741, 27.910311> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.773151, 30.423618, 28.077572>,  <40.679199, 30.620344, 28.177929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.773151, 30.423618, 28.077572>,  <40.929741, 30.095741, 27.910311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.773151, 30.423618, 28.077572> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416499, 0.247368, -0.874835,
		-0.820536, -0.516633, 0.244564,
		-0.391471, 0.819694, 0.418152,
		40.655708, 30.669527, 28.203018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.250561, 30.236483, 27.555925>,  <40.929741, 30.095741, 27.910311>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.250561, 30.236483, 27.555925> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.325081, 30.603081, 27.697533>,  <40.369793, 30.823040, 27.782497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.325081, 30.603081, 27.697533>,  <40.250561, 30.236483, 27.555925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.325081, 30.603081, 27.697533> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326249, 0.397591, -0.857603,
		-0.926743, 0.044275, 0.373078,
		0.186303, 0.916494, 0.354020,
		40.380970, 30.878029, 27.803738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.755749, 30.632553, 27.245453>,  <40.250561, 30.236483, 27.555925>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.755749, 30.632553, 27.245453> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.033062, 30.901642, 27.348839>,  <40.199451, 31.063095, 27.410872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.033062, 30.901642, 27.348839>,  <39.755749, 30.632553, 27.245453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.033062, 30.901642, 27.348839> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064502, 0.415132, -0.907472,
		-0.717774, 0.612462, 0.331195,
		0.693282, 0.672723, 0.258466,
		40.241047, 31.103458, 27.426378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.511738, 31.240583, 26.979933>,  <39.755749, 30.632553, 27.245453>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.511738, 31.240583, 26.979933> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.902565, 31.307243, 27.032940>,  <40.137062, 31.347239, 27.064745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.902565, 31.307243, 27.032940>,  <39.511738, 31.240583, 26.979933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.902565, 31.307243, 27.032940> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058237, 0.389484, -0.919190,
		-0.204794, 0.905831, 0.370849,
		0.977071, 0.166648, 0.132517,
		40.195686, 31.357237, 27.072695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.578613, 31.824493, 26.634283>,  <39.511738, 31.240583, 26.979933>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.578613, 31.824493, 26.634283> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.959774, 31.707409, 26.666027>,  <40.188469, 31.637157, 26.685074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.959774, 31.707409, 26.666027>,  <39.578613, 31.824493, 26.634283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.959774, 31.707409, 26.666027> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233928, 0.542855, -0.806589,
		0.193018, 0.787164, 0.585761,
		0.952902, -0.292712, 0.079358,
		40.245644, 31.619595, 26.689835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.836597, 32.439198, 26.508194>,  <39.578613, 31.824493, 26.634283>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.836597, 32.439198, 26.508194> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.120789, 32.161728, 26.460796>,  <40.291302, 31.995247, 26.432358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.120789, 32.161728, 26.460796>,  <39.836597, 32.439198, 26.508194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.120789, 32.161728, 26.460796> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416933, 0.550574, -0.723212,
		0.566913, 0.464420, 0.680385,
		0.710477, -0.693673, -0.118496,
		40.333931, 31.953627, 26.425247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.399418, 32.801331, 26.378664>,  <39.836597, 32.439198, 26.508194>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.399418, 32.801331, 26.378664> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.497734, 32.439476, 26.239399>,  <40.556725, 32.222363, 26.155840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.497734, 32.439476, 26.239399>,  <40.399418, 32.801331, 26.378664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.497734, 32.439476, 26.239399> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393775, 0.421397, -0.816925,
		0.885736, 0.063695, 0.459799,
		0.245792, -0.904637, -0.348165,
		40.571472, 32.168083, 26.134949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.117428, 32.787891, 26.136620>,  <40.399418, 32.801331, 26.378664>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.117428, 32.787891, 26.136620> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.929417, 32.491745, 25.944401>,  <40.816608, 32.314056, 25.829069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.929417, 32.491745, 25.944401>,  <41.117428, 32.787891, 26.136620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.929417, 32.491745, 25.944401> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328249, 0.358766, -0.873808,
		0.819343, -0.568456, 0.074393,
		-0.470032, -0.740368, -0.480547,
		40.788406, 32.269634, 25.800236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.475021, 32.839531, 25.518391>,  <41.117428, 32.787891, 26.136620>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.475021, 32.839531, 25.518391> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.156525, 32.615646, 25.426544>,  <40.965427, 32.481316, 25.371437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.156525, 32.615646, 25.426544>,  <41.475021, 32.839531, 25.518391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.156525, 32.615646, 25.426544> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006835, 0.371195, -0.928530,
		0.604939, -0.740904, -0.291736,
		-0.796243, -0.559710, -0.229614,
		40.917652, 32.447735, 25.357660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.625130, 32.589973, 24.911873>,  <41.475021, 32.839531, 25.518391>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.625130, 32.589973, 24.911873> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.228134, 32.547943, 24.936951>,  <40.989937, 32.522724, 24.951998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.228134, 32.547943, 24.936951>,  <41.625130, 32.589973, 24.911873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.228134, 32.547943, 24.936951> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091667, 0.299118, -0.949803,
		0.081049, -0.948413, -0.306502,
		-0.992486, -0.105076, 0.062695,
		40.930389, 32.516418, 24.955759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.396572, 32.104340, 24.335497>,  <41.625130, 32.589973, 24.911873>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.396572, 32.104340, 24.335497> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.105869, 32.354347, 24.449455>,  <40.931446, 32.504353, 24.517830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.105869, 32.354347, 24.449455>,  <41.396572, 32.104340, 24.335497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.105869, 32.354347, 24.449455> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054345, 0.361141, -0.930926,
		-0.684737, -0.692044, -0.228497,
		-0.726761, 0.625022, 0.284896,
		40.887840, 32.541855, 24.534924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.985867, 32.065121, 23.828325>,  <41.396572, 32.104340, 24.335497>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.985867, 32.065121, 23.828325> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.818653, 32.373505, 24.020519>,  <40.718323, 32.558533, 24.135836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.818653, 32.373505, 24.020519>,  <40.985867, 32.065121, 23.828325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.818653, 32.373505, 24.020519> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183315, 0.446448, -0.875831,
		-0.889741, -0.454211, -0.045305,
		-0.418038, 0.770958, 0.480487,
		40.693241, 32.604794, 24.164665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.282291, 32.244240, 23.553125>,  <40.985867, 32.065121, 23.828325>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.282291, 32.244240, 23.553125> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.434052, 32.570461, 23.727909>,  <40.525108, 32.766193, 23.832779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.434052, 32.570461, 23.727909>,  <40.282291, 32.244240, 23.553125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.434052, 32.570461, 23.727909> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224540, 0.539311, -0.811619,
		-0.897575, 0.209811, 0.387736,
		0.379397, 0.815551, 0.436961,
		40.547871, 32.815128, 23.858997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.786621, 32.772217, 23.379450>,  <40.282291, 32.244240, 23.553125>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.786621, 32.772217, 23.379450> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.111706, 32.964611, 23.511002>,  <40.306755, 33.080048, 23.589933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.111706, 32.964611, 23.511002>,  <39.786621, 32.772217, 23.379450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.111706, 32.964611, 23.511002> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098725, 0.669943, -0.735819,
		-0.574246, 0.565538, 0.591954,
		0.812709, 0.480981, 0.328879,
		40.355518, 33.108906, 23.609665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.622032, 33.552620, 23.448433>,  <39.786621, 32.772217, 23.379450>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.622032, 33.552620, 23.448433> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.007072, 33.466419, 23.382751>,  <40.238094, 33.414700, 23.343342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.007072, 33.466419, 23.382751>,  <39.622032, 33.552620, 23.448433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.007072, 33.466419, 23.382751> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031633, 0.691314, -0.721862,
		0.269080, 0.689669, 0.672274,
		0.962598, -0.215505, -0.164203,
		40.295853, 33.401768, 23.333490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.146088, 33.926159, 22.894867>,  <39.622032, 33.552620, 23.448433>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.146088, 33.926159, 22.894867> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.786671, 33.807972, 22.765053>,  <38.571022, 33.737061, 22.687164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.786671, 33.807972, 22.765053>,  <39.146088, 33.926159, 22.894867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.786671, 33.807972, 22.765053> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290785, -0.153079, 0.944463,
		-0.328734, 0.943010, 0.051632,
		-0.898542, -0.295464, -0.324536,
		38.517109, 33.719334, 22.667692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.678001, 34.304825, 23.171736>,  <39.146088, 33.926159, 22.894867>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.678001, 34.304825, 23.171736> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.443317, 33.993965, 23.080688>,  <38.302509, 33.807449, 23.026060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.443317, 33.993965, 23.080688>,  <38.678001, 34.304825, 23.171736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.443317, 33.993965, 23.080688> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434960, 0.065337, 0.898077,
		-0.683071, 0.625911, -0.376364,
		-0.586707, -0.777153, -0.227616,
		38.267307, 33.760818, 23.012403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.132122, 34.604698, 23.465599>,  <38.678001, 34.304825, 23.171736>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.132122, 34.604698, 23.465599> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.060535, 34.214520, 23.414261>,  <38.017582, 33.980412, 23.383457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.060535, 34.214520, 23.414261>,  <38.132122, 34.604698, 23.465599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.060535, 34.214520, 23.414261> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268233, -0.077136, 0.960261,
		-0.946584, 0.206283, -0.247842,
		-0.178968, -0.975447, -0.128347,
		38.006844, 33.921886, 23.375757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528259, 34.577137, 23.835829>,  <38.132122, 34.604698, 23.465599>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.528259, 34.577137, 23.835829> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.694740, 34.216537, 23.788357>,  <37.794628, 34.000179, 23.759874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.694740, 34.216537, 23.788357>,  <37.528259, 34.577137, 23.835829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.694740, 34.216537, 23.788357> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279593, -0.251080, 0.926707,
		-0.865219, -0.352514, -0.356552,
		0.416200, -0.901495, -0.118679,
		37.819599, 33.946091, 23.752752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.065926, 34.068443, 24.072344>,  <37.528259, 34.577137, 23.835829>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.065926, 34.068443, 24.072344> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.403786, 33.854404, 24.078445>,  <37.606503, 33.725983, 24.082106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.403786, 33.854404, 24.078445>,  <37.065926, 34.068443, 24.072344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.403786, 33.854404, 24.078445> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250625, -0.370115, 0.894540,
		-0.473023, -0.759397, -0.446728,
		0.844652, -0.535099, 0.015252,
		37.657181, 33.693874, 24.083021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.820549, 33.440388, 24.316679>,  <37.065926, 34.068443, 24.072344>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.820549, 33.440388, 24.316679> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.216663, 33.442921, 24.372242>,  <37.454330, 33.444439, 24.405581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.216663, 33.442921, 24.372242>,  <36.820549, 33.440388, 24.316679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.216663, 33.442921, 24.372242> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112283, -0.552864, 0.825672,
		0.082027, -0.833247, -0.546782,
		0.990285, 0.006333, 0.138910,
		37.513748, 33.444820, 24.413916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.001122, 32.762554, 24.591778>,  <36.820549, 33.440388, 24.316679>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.001122, 32.762554, 24.591778> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.299229, 32.999454, 24.714294>,  <37.478092, 33.141594, 24.787804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.299229, 32.999454, 24.714294>,  <37.001122, 32.762554, 24.591778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.299229, 32.999454, 24.714294> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139546, -0.587738, 0.796926,
		0.652002, -0.551179, -0.520668,
		0.745265, 0.592255, 0.306292,
		37.522808, 33.177132, 24.806181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.448944, 32.338963, 24.974586>,  <37.001122, 32.762554, 24.591778>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.448944, 32.338963, 24.974586> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.571045, 32.702579, 25.088047>,  <37.644306, 32.920750, 25.156124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.571045, 32.702579, 25.088047>,  <37.448944, 32.338963, 24.974586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.571045, 32.702579, 25.088047> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214359, -0.355819, 0.909639,
		0.927832, -0.216865, -0.303476,
		0.305251, 0.909045, 0.283653,
		37.662621, 32.975292, 25.173143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072842, 32.302696, 25.315086>,  <37.448944, 32.338963, 24.974586>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.072842, 32.302696, 25.315086> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.889740, 32.634117, 25.444057>,  <37.779877, 32.832970, 25.521441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.889740, 32.634117, 25.444057>,  <38.072842, 32.302696, 25.315086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.889740, 32.634117, 25.444057> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250601, -0.227707, 0.940930,
		0.853029, 0.511517, -0.103402,
		-0.457756, 0.828553, 0.322428,
		37.752415, 32.882683, 25.540785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.386024, 32.392685, 25.990219>,  <38.072842, 32.302696, 25.315086>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.386024, 32.392685, 25.990219> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.106758, 32.678978, 25.997116>,  <37.939198, 32.850754, 26.001255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.106758, 32.678978, 25.997116>,  <38.386024, 32.392685, 25.990219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.106758, 32.678978, 25.997116> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072804, 0.047014, 0.996238,
		0.712224, 0.696795, -0.084931,
		-0.698166, 0.715728, 0.017244,
		37.897308, 32.893696, 26.002289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.655182, 33.069359, 26.340839>,  <38.386024, 32.392685, 25.990219>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.655182, 33.069359, 26.340839> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.258488, 33.076675, 26.391624>,  <38.020470, 33.081066, 26.422094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.258488, 33.076675, 26.391624>,  <38.655182, 33.069359, 26.340839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.258488, 33.076675, 26.391624> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123628, -0.127608, 0.984090,
		0.034202, 0.991656, 0.124293,
		-0.991739, 0.018292, 0.126961,
		37.960964, 33.082165, 26.429712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.514301, 33.529045, 26.962629>,  <38.655182, 33.069359, 26.340839>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.514301, 33.529045, 26.962629> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.169876, 33.328781, 26.927063>,  <37.963223, 33.208622, 26.905724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.169876, 33.328781, 26.927063>,  <38.514301, 33.529045, 26.962629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.169876, 33.328781, 26.927063> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098332, -0.007618, 0.995125,
		-0.498901, 0.865608, -0.042671,
		-0.861062, -0.500665, -0.088918,
		37.911556, 33.178581, 26.900387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.864849, 33.884674, 27.256872>,  <38.514301, 33.529045, 26.962629>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.864849, 33.884674, 27.256872> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.750057, 33.501759, 27.242794>,  <37.681183, 33.272011, 27.234346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.750057, 33.501759, 27.242794>,  <37.864849, 33.884674, 27.256872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.750057, 33.501759, 27.242794> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284471, 0.050080, 0.957376,
		-0.914723, 0.284762, -0.286693,
		-0.286982, -0.957289, -0.035198,
		37.663963, 33.214573, 27.232235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.406479, 33.850727, 27.752882>,  <37.864849, 33.884674, 27.256872>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.406479, 33.850727, 27.752882> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.499512, 33.463867, 27.711845>,  <37.555332, 33.231750, 27.687223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.499512, 33.463867, 27.711845>,  <37.406479, 33.850727, 27.752882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.499512, 33.463867, 27.711845> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317975, -0.175306, 0.931751,
		-0.919128, -0.184088, -0.348303,
		0.232584, -0.967150, -0.102593,
		37.569286, 33.173721, 27.681068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.842827, 33.435055, 28.162518>,  <37.406479, 33.850727, 27.752882>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.842827, 33.435055, 28.162518> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.131802, 33.162682, 28.114494>,  <37.305187, 32.999260, 28.085680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.131802, 33.162682, 28.114494>,  <36.842827, 33.435055, 28.162518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.131802, 33.162682, 28.114494> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101172, -0.275872, 0.955855,
		-0.683990, -0.678403, -0.268192,
		0.722442, -0.680929, -0.120058,
		37.348534, 32.958405, 28.078478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.603073, 32.775703, 28.495338>,  <36.842827, 33.435055, 28.162518>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.603073, 32.775703, 28.495338> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.999367, 32.754559, 28.445290>,  <37.237141, 32.741871, 28.415260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.999367, 32.754559, 28.445290>,  <36.603073, 32.775703, 28.495338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.999367, 32.754559, 28.445290> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082176, -0.500182, 0.862012,
		-0.108151, -0.864305, -0.491202,
		0.990732, -0.052862, -0.125120,
		37.296585, 32.738701, 28.407753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.769299, 32.075546, 28.710604>,  <36.603073, 32.775703, 28.495338>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.769299, 32.075546, 28.710604> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.095753, 32.304649, 28.741253>,  <37.291626, 32.442112, 28.759644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.095753, 32.304649, 28.741253>,  <36.769299, 32.075546, 28.710604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.095753, 32.304649, 28.741253> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112107, -0.287017, 0.951343,
		0.566878, -0.767837, -0.298455,
		0.816138, 0.572754, 0.076624,
		37.340595, 32.476475, 28.764240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.272411, 31.658657, 28.989914>,  <36.769299, 32.075546, 28.710604>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.272411, 31.658657, 28.989914> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.409763, 32.024269, 29.076298>,  <37.492172, 32.243637, 29.128128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.409763, 32.024269, 29.076298>,  <37.272411, 31.658657, 28.989914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.409763, 32.024269, 29.076298> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193822, -0.293956, 0.935961,
		0.918981, -0.279528, -0.278097,
		0.343376, 0.914032, 0.215961,
		37.512775, 32.298477, 29.141087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.841228, 31.530611, 29.435751>,  <37.272411, 31.658657, 28.989914>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.841228, 31.530611, 29.435751> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.792160, 31.925915, 29.472176>,  <37.762718, 32.163097, 29.494030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.792160, 31.925915, 29.472176>,  <37.841228, 31.530611, 29.435751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.792160, 31.925915, 29.472176> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118235, -0.076551, 0.990030,
		0.985379, 0.132213, -0.107457,
		-0.122669, 0.988261, 0.091064,
		37.755360, 32.222393, 29.499495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.392197, 31.832552, 29.829821>,  <37.841228, 31.530611, 29.435751>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.392197, 31.832552, 29.829821> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.072128, 32.067921, 29.876263>,  <37.880085, 32.209141, 29.904127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.072128, 32.067921, 29.876263>,  <38.392197, 31.832552, 29.829821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.072128, 32.067921, 29.876263> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043882, -0.135629, 0.989787,
		0.598158, 0.797099, 0.082706,
		-0.800176, 0.588420, 0.116106,
		37.832077, 32.244446, 29.911095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504917, 32.275013, 30.448515>,  <38.392197, 31.832552, 29.829821>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.504917, 32.275013, 30.448515> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.109734, 32.317387, 30.403423>,  <37.872623, 32.342812, 30.376368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.109734, 32.317387, 30.403423>,  <38.504917, 32.275013, 30.448515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.109734, 32.317387, 30.403423> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093781, 0.169395, 0.981076,
		0.123030, 0.979838, -0.157421,
		-0.987962, 0.105938, -0.112731,
		37.813347, 32.349167, 30.369604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<25.483770, 28.802937, 31.555296> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.831453, 28.635586, 31.449890>,  <26.040064, 28.535175, 31.386646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.831453, 28.635586, 31.449890>,  <25.483770, 28.802937, 31.555296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.831453, 28.635586, 31.449890> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338198, -0.891842, 0.300401,
		-0.360695, -0.171990, -0.916689,
		0.869207, -0.418376, -0.263516,
		26.092215, 28.510073, 31.370836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.312561, 28.132673, 31.193779>,  <25.483770, 28.802937, 31.555296>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.312561, 28.132673, 31.193779> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.696264, 28.098648, 31.301552>,  <25.926485, 28.078234, 31.366215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.696264, 28.098648, 31.301552>,  <25.312561, 28.132673, 31.193779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.696264, 28.098648, 31.301552> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156037, -0.954483, 0.254196,
		0.235543, -0.285880, -0.928866,
		0.959256, -0.085064, 0.269430,
		25.984041, 28.073130, 31.382381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.510092, 27.435108, 30.846302>,  <25.312561, 28.132673, 31.193779>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.510092, 27.435108, 30.846302> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.785152, 27.532383, 31.119942>,  <25.950190, 27.590748, 31.284126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.785152, 27.532383, 31.119942>,  <25.510092, 27.435108, 30.846302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.785152, 27.532383, 31.119942> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124557, -0.967781, 0.218827,
		0.715275, -0.065268, -0.695788,
		0.687653, 0.243187, 0.684100,
		25.991449, 27.605339, 31.325172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.088287, 26.931961, 30.788448>,  <25.510092, 27.435108, 30.846302>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.088287, 26.931961, 30.788448> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.147795, 27.082893, 31.154068>,  <26.183498, 27.173452, 31.373440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.147795, 27.082893, 31.154068>,  <26.088287, 26.931961, 30.788448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.147795, 27.082893, 31.154068> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275891, -0.903471, 0.328060,
		0.949606, 0.203373, -0.238510,
		0.148768, 0.377331, 0.914051,
		26.192425, 27.196093, 31.428284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.641092, 26.616541, 31.086243>,  <26.088287, 26.931961, 30.788448>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.641092, 26.616541, 31.086243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.411963, 26.749363, 31.386005>,  <26.274485, 26.829056, 31.565863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.411963, 26.749363, 31.386005>,  <26.641092, 26.616541, 31.086243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.411963, 26.749363, 31.386005> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051284, -0.926999, 0.371542,
		0.818073, 0.174395, 0.548036,
		-0.572823, 0.332054, 0.749409,
		26.240116, 26.848978, 31.610828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.005268, 26.380489, 31.723349>,  <26.641092, 26.616541, 31.086243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.005268, 26.380489, 31.723349> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.619810, 26.459167, 31.795681>,  <26.388536, 26.506374, 31.839081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.619810, 26.459167, 31.795681>,  <27.005268, 26.380489, 31.723349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.619810, 26.459167, 31.795681> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088462, -0.873497, 0.478725,
		0.252120, 0.445323, 0.859140,
		-0.963644, 0.196698, 0.180832,
		26.330717, 26.518177, 31.849930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.855665, 25.847698, 32.310940>,  <27.005268, 26.380489, 31.723349>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.855665, 25.847698, 32.310940> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.495485, 25.989594, 32.210262>,  <26.279377, 26.074732, 32.149857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.495485, 25.989594, 32.210262>,  <26.855665, 25.847698, 32.310940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.495485, 25.989594, 32.210262> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417274, -0.867845, 0.269678,
		-0.122765, 0.347857, 0.929475,
		-0.900450, 0.354739, -0.251693,
		26.225349, 26.096016, 32.134754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.455210, 25.721964, 32.868221>,  <26.855665, 25.847698, 32.310940>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.455210, 25.721964, 32.868221> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.214058, 25.748814, 32.550220>,  <26.069366, 25.764923, 32.359421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.214058, 25.748814, 32.550220>,  <26.455210, 25.721964, 32.868221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.214058, 25.748814, 32.550220> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344249, -0.920810, 0.183309,
		-0.719742, 0.384192, 0.578245,
		-0.602880, 0.067125, -0.795003,
		26.033194, 25.768951, 32.311718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.840496, 25.535393, 33.095966>,  <26.455210, 25.721964, 32.868221>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.840496, 25.535393, 33.095966> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.809076, 25.471188, 32.702404>,  <25.790224, 25.432665, 32.466267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.809076, 25.471188, 32.702404>,  <25.840496, 25.535393, 33.095966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.809076, 25.471188, 32.702404> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453232, -0.873306, 0.178652,
		-0.887925, 0.459970, -0.004152,
		-0.078549, -0.160512, -0.983903,
		25.785511, 25.423035, 32.407234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.161999, 25.308920, 32.998394>,  <25.840496, 25.535393, 33.095966>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.161999, 25.308920, 32.998394> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.366873, 25.171432, 32.683556>,  <25.489798, 25.088940, 32.494652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.366873, 25.171432, 32.683556>,  <25.161999, 25.308920, 32.998394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.366873, 25.171432, 32.683556> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431807, -0.895239, 0.109956,
		-0.742436, 0.283557, -0.606947,
		0.512184, -0.343719, -0.787099,
		25.520529, 25.068317, 32.447426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.683332, 24.895229, 32.573624>,  <25.161999, 25.308920, 32.998394>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.683332, 24.895229, 32.573624> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.058495, 24.791306, 32.481682>,  <25.283592, 24.728951, 32.426517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.058495, 24.791306, 32.481682>,  <24.683332, 24.895229, 32.573624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.058495, 24.791306, 32.481682> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270916, -0.962442, -0.017578,
		-0.216659, 0.078759, -0.973065,
		0.937904, -0.259811, -0.229859,
		25.339867, 24.713362, 32.412724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.595310, 24.361334, 32.037361>,  <24.683332, 24.895229, 32.573624>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.595310, 24.361334, 32.037361> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.956039, 24.322495, 32.205780>,  <25.172478, 24.299191, 32.306831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.956039, 24.322495, 32.205780>,  <24.595310, 24.361334, 32.037361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.956039, 24.322495, 32.205780> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199680, -0.957788, 0.206809,
		0.383197, -0.270581, -0.883146,
		0.901825, -0.097098, 0.421051,
		25.226587, 24.293365, 32.332096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.108494, 23.882477, 31.697058>,  <24.595310, 24.361334, 32.037361>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.108494, 23.882477, 31.697058> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.160501, 23.890285, 32.093586>,  <25.191706, 23.894970, 32.331501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.160501, 23.890285, 32.093586>,  <25.108494, 23.882477, 31.697058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.160501, 23.890285, 32.093586> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051579, -0.998319, 0.026424,
		0.990169, -0.054567, -0.128792,
		0.130017, 0.019522, 0.991320,
		25.199507, 23.896141, 32.390984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.595118, 23.318392, 31.748415>,  <25.108494, 23.882477, 31.697058>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.595118, 23.318392, 31.748415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.371187, 23.409378, 32.067127>,  <25.236830, 23.463970, 32.258354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.371187, 23.409378, 32.067127>,  <25.595118, 23.318392, 31.748415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.371187, 23.409378, 32.067127> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268754, -0.959445, 0.085073,
		0.783816, -0.166511, 0.598253,
		-0.559825, 0.227465, 0.796778,
		25.203239, 23.477617, 32.306160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.331961, 23.016548, 31.673027>,  <25.595118, 23.318392, 31.748415>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.331961, 23.016548, 31.673027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.585670, 22.717258, 31.595200>,  <26.737896, 22.537685, 31.548504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.585670, 22.717258, 31.595200>,  <26.331961, 23.016548, 31.673027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.585670, 22.717258, 31.595200> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411706, 0.539917, -0.734158,
		0.654367, 0.385551, 0.650503,
		0.634273, -0.748225, -0.194569,
		26.775953, 22.492790, 31.536829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.022419, 23.218561, 31.762842>,  <26.331961, 23.016548, 31.673027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.022419, 23.218561, 31.762842> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.988775, 22.924290, 31.494007>,  <26.968590, 22.747726, 31.332706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.988775, 22.924290, 31.494007>,  <27.022419, 23.218561, 31.762842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.988775, 22.924290, 31.494007> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374230, 0.601785, -0.705554,
		0.923514, -0.310858, 0.224698,
		-0.084107, -0.735678, -0.672089,
		26.963543, 22.703587, 31.292381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.522919, 23.519043, 31.193735>,  <27.022419, 23.218561, 31.762842>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.522919, 23.519043, 31.193735> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.352795, 23.188499, 31.046093>,  <27.250721, 22.990173, 30.957508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.352795, 23.188499, 31.046093>,  <27.522919, 23.519043, 31.193735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.352795, 23.188499, 31.046093> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156420, 0.334578, -0.929296,
		0.891428, -0.452975, -0.013041,
		-0.425310, -0.826360, -0.369107,
		27.225201, 22.940592, 30.935362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.044119, 23.340427, 30.641851>,  <27.522919, 23.519043, 31.193735>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.044119, 23.340427, 30.641851> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.723713, 23.115520, 30.559654>,  <27.531469, 22.980576, 30.510336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.723713, 23.115520, 30.559654>,  <28.044119, 23.340427, 30.641851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.723713, 23.115520, 30.559654> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091633, 0.224060, -0.970258,
		0.591588, -0.796022, -0.127954,
		-0.801016, -0.562268, -0.205493,
		27.483408, 22.946840, 30.498007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.177490, 23.188822, 30.045298>,  <28.044119, 23.340427, 30.641851>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.177490, 23.188822, 30.045298> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.786606, 23.104004, 30.049168>,  <27.552074, 23.053114, 30.051489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.786606, 23.104004, 30.049168>,  <28.177490, 23.188822, 30.045298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.786606, 23.104004, 30.049168> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084993, 0.349115, -0.933218,
		0.194504, -0.912774, -0.359181,
		-0.977213, -0.212043, 0.009675,
		27.493443, 23.040390, 30.052071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.083656, 23.000292, 29.372442>,  <28.177490, 23.188822, 30.045298>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.083656, 23.000292, 29.372442> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.728233, 23.110428, 29.519226>,  <27.514980, 23.176510, 29.607296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.728233, 23.110428, 29.519226>,  <28.083656, 23.000292, 29.372442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.728233, 23.110428, 29.519226> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225451, 0.434558, -0.871970,
		-0.399552, -0.857524, -0.324053,
		-0.888555, 0.275339, 0.366958,
		27.461666, 23.193029, 29.629314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.634657, 22.747814, 28.859596>,  <28.083656, 23.000292, 29.372442>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.634657, 22.747814, 28.859596> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.476568, 23.045341, 29.075203>,  <27.381716, 23.223858, 29.204567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.476568, 23.045341, 29.075203>,  <27.634657, 22.747814, 28.859596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.476568, 23.045341, 29.075203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209297, 0.498436, -0.841282,
		-0.894424, -0.445308, -0.041314,
		-0.395222, 0.743816, 0.539015,
		27.358002, 23.268486, 29.236908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.100943, 22.975801, 28.407131>,  <27.634657, 22.747814, 28.859596>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.100943, 22.975801, 28.407131> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.146233, 23.264370, 28.680401>,  <27.173407, 23.437511, 28.844362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.146233, 23.264370, 28.680401>,  <27.100943, 22.975801, 28.407131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.146233, 23.264370, 28.680401> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245049, 0.686633, -0.684461,
		-0.962877, -0.089915, 0.254526,
		0.113223, 0.721423, 0.683176,
		27.180199, 23.480797, 28.885353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.546230, 23.444202, 28.280806>,  <27.100943, 22.975801, 28.407131>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.546230, 23.444202, 28.280806> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.822187, 23.648788, 28.485725>,  <26.987762, 23.771540, 28.608677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.822187, 23.648788, 28.485725>,  <26.546230, 23.444202, 28.280806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.822187, 23.648788, 28.485725> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036459, 0.731336, -0.681043,
		-0.722993, 0.451168, 0.523190,
		0.689892, 0.511464, 0.512302,
		27.029156, 23.802227, 28.639416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.411203, 24.160728, 28.246996>,  <26.546230, 23.444202, 28.280806>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.411203, 24.160728, 28.246996> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.791332, 24.183834, 28.369339>,  <27.019409, 24.197699, 28.442745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.791332, 24.183834, 28.369339>,  <26.411203, 24.160728, 28.246996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.791332, 24.183834, 28.369339> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121173, 0.836457, -0.534469,
		-0.286713, 0.544980, 0.787904,
		0.950322, 0.057766, 0.305860,
		27.076429, 24.201164, 28.461098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.527140, 24.855604, 28.251865>,  <26.411203, 24.160728, 28.246996>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.527140, 24.855604, 28.251865> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.901627, 24.717358, 28.277313>,  <27.126318, 24.634409, 28.292582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.901627, 24.717358, 28.277313>,  <26.527140, 24.855604, 28.251865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.901627, 24.717358, 28.277313> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329548, 0.800555, -0.500509,
		0.122054, 0.489550, 0.863391,
		0.936216, -0.345618, 0.063620,
		27.182491, 24.613672, 28.296398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.006750, 25.418318, 28.476149>,  <26.527140, 24.855604, 28.251865>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.006750, 25.418318, 28.476149> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.204117, 25.149651, 28.255096>,  <27.322536, 24.988449, 28.122465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.204117, 25.149651, 28.255096>,  <27.006750, 25.418318, 28.476149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.204117, 25.149651, 28.255096> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273842, 0.723008, -0.634247,
		0.825561, 0.161614, 0.540675,
		0.493416, -0.671670, -0.552631,
		27.352142, 24.948151, 28.089308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.632566, 25.681448, 28.510185>,  <27.006750, 25.418318, 28.476149>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.632566, 25.681448, 28.510185> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.617088, 25.426266, 28.202545>,  <27.607801, 25.273155, 28.017962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.617088, 25.426266, 28.202545>,  <27.632566, 25.681448, 28.510185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.617088, 25.426266, 28.202545> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306790, 0.724918, -0.616745,
		0.950990, -0.259817, 0.167669,
		-0.038694, -0.637957, -0.769099,
		27.605480, 25.234879, 27.971815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.190395, 25.820023, 28.129332>,  <27.632566, 25.681448, 28.510185>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.190395, 25.820023, 28.129332> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.959980, 25.639481, 27.856728>,  <27.821730, 25.531157, 27.693165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.959980, 25.639481, 27.856728>,  <28.190395, 25.820023, 28.129332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.959980, 25.639481, 27.856728> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120378, 0.777802, -0.616874,
		0.808510, -0.437383, -0.393711,
		-0.576039, -0.451354, -0.681512,
		27.787169, 25.504074, 27.652275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.783958, 25.445257, 28.319130>,  <28.190395, 25.820023, 28.129332>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.783958, 25.445257, 28.319130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.182281, 25.459763, 28.352715>,  <29.421276, 25.468466, 28.372866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.182281, 25.459763, 28.352715>,  <28.783958, 25.445257, 28.319130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.182281, 25.459763, 28.352715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038644, -0.665230, 0.745638,
		0.082891, -0.745758, -0.661040,
		0.995809, 0.036262, 0.083961,
		29.481024, 25.470640, 28.377903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.821384, 24.823137, 28.487471>,  <28.783958, 25.445257, 28.319130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.821384, 24.823137, 28.487471> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.176380, 24.972500, 28.595493>,  <29.389378, 25.062117, 28.660307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.176380, 24.972500, 28.595493>,  <28.821384, 24.823137, 28.487471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.176380, 24.972500, 28.595493> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094434, -0.720953, 0.686519,
		0.451049, -0.583776, -0.675101,
		0.887489, 0.373406, 0.270057,
		29.442627, 25.084522, 28.676510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.251139, 24.286705, 28.475473>,  <28.821384, 24.823137, 28.487471>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.251139, 24.286705, 28.475473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.421312, 24.552967, 28.720718>,  <29.523417, 24.712725, 28.867865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.421312, 24.552967, 28.720718>,  <29.251139, 24.286705, 28.475473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.421312, 24.552967, 28.720718> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138132, -0.717306, 0.682929,
		0.894384, -0.205853, -0.397116,
		0.425436, 0.665656, 0.613112,
		29.548943, 24.752665, 28.904652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.776014, 23.944000, 28.671888>,  <29.251139, 24.286705, 28.475473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.776014, 23.944000, 28.671888> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.759632, 24.245049, 28.934761>,  <29.749804, 24.425676, 29.092485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.759632, 24.245049, 28.934761>,  <29.776014, 23.944000, 28.671888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.759632, 24.245049, 28.934761> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210653, -0.636445, 0.741999,
		0.976703, 0.168826, -0.132475,
		-0.040956, 0.752619, 0.657182,
		29.747345, 24.470835, 29.131916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.360643, 23.910686, 29.119564>,  <29.776014, 23.944000, 28.671888>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.360643, 23.910686, 29.119564> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.087952, 24.114853, 29.329220>,  <29.924337, 24.237352, 29.455013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.087952, 24.114853, 29.329220>,  <30.360643, 23.910686, 29.119564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.087952, 24.114853, 29.329220> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142025, -0.610466, 0.779205,
		0.717687, 0.605648, 0.343681,
		-0.681729, 0.510414, 0.524140,
		29.883432, 24.267977, 29.486462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.776541, 24.026966, 29.721315>,  <30.360643, 23.910686, 29.119564>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.776541, 24.026966, 29.721315> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.390306, 24.047050, 29.823395>,  <30.158566, 24.059101, 29.884644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.390306, 24.047050, 29.823395>,  <30.776541, 24.026966, 29.721315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.390306, 24.047050, 29.823395> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130895, -0.754068, 0.643621,
		0.224754, 0.654874, 0.721544,
		-0.965584, 0.050209, 0.255200,
		30.100632, 24.062113, 29.899954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.818890, 24.051350, 30.421310>,  <30.776541, 24.026966, 29.721315>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.818890, 24.051350, 30.421310> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.450186, 23.939648, 30.313698>,  <30.228964, 23.872625, 30.249130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.450186, 23.939648, 30.313698>,  <30.818890, 24.051350, 30.421310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.450186, 23.939648, 30.313698> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001564, -0.691116, 0.722742,
		-0.387763, 0.666613, 0.636605,
		-0.921758, -0.279257, -0.269032,
		30.173658, 23.855871, 30.232988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.032536, 24.256073, 31.152040>,  <30.818890, 24.051350, 30.421310>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.032536, 24.256073, 31.152040> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.393646, 24.319389, 31.312008>,  <31.610313, 24.357380, 31.407988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.393646, 24.319389, 31.312008>,  <31.032536, 24.256073, 31.152040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.393646, 24.319389, 31.312008> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192926, 0.681992, -0.705455,
		-0.384409, 0.714024, 0.585149,
		0.902778, 0.158293, 0.399918,
		31.664480, 24.366877, 31.431984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.136595, 24.974812, 31.122450>,  <31.032536, 24.256073, 31.152040>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.136595, 24.974812, 31.122450> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.523035, 24.879604, 31.162441>,  <31.754900, 24.822479, 31.186436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.523035, 24.879604, 31.162441>,  <31.136595, 24.974812, 31.122450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.523035, 24.879604, 31.162441> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242907, 0.706922, -0.664272,
		0.087434, 0.666039, 0.740775,
		0.966101, -0.238019, 0.099977,
		31.812866, 24.808199, 31.192434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.474586, 25.577932, 31.115734>,  <31.136595, 24.974812, 31.122450>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.474586, 25.577932, 31.115734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.788408, 25.351013, 31.015617>,  <31.976702, 25.214863, 30.955547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.788408, 25.351013, 31.015617>,  <31.474586, 25.577932, 31.115734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.788408, 25.351013, 31.015617> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353715, 0.741010, -0.570781,
		0.509271, 0.359277, 0.782025,
		0.784557, -0.567296, -0.250293,
		32.023777, 25.180824, 30.940529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.983850, 26.079226, 31.053019>,  <31.474586, 25.577932, 31.115734>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.983850, 26.079226, 31.053019> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.164810, 25.766396, 30.881580>,  <32.273388, 25.578697, 30.778717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.164810, 25.766396, 30.881580>,  <31.983850, 26.079226, 31.053019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.164810, 25.766396, 30.881580> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499833, 0.620367, -0.604410,
		0.738581, 0.059208, 0.671560,
		0.452399, -0.782074, -0.428597,
		32.300529, 25.531773, 30.753000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.775059, 26.206863, 31.112497>,  <31.983850, 26.079226, 31.053019>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.775059, 26.206863, 31.112497> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.683964, 25.946510, 30.822811>,  <32.629307, 25.790298, 30.648998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.683964, 25.946510, 30.822811>,  <32.775059, 26.206863, 31.112497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.683964, 25.946510, 30.822811> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480463, 0.571798, -0.664983,
		0.846931, -0.499400, 0.182506,
		-0.227735, -0.650882, -0.724217,
		32.615643, 25.751245, 30.605547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.399632, 26.275307, 30.553949>,  <32.775059, 26.206863, 31.112497>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.399632, 26.275307, 30.553949> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.115913, 26.089008, 30.342297>,  <32.945683, 25.977230, 30.215305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.115913, 26.089008, 30.342297>,  <33.399632, 26.275307, 30.553949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.115913, 26.089008, 30.342297> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243243, 0.542818, -0.803854,
		0.661615, -0.698877, -0.271728,
		-0.709294, -0.465746, -0.529134,
		32.903126, 25.949286, 30.183556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.694870, 25.877802, 29.999670>,  <33.399632, 26.275307, 30.553949>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.694870, 25.877802, 29.999670> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.316845, 25.998768, 29.950035>,  <33.090031, 26.071348, 29.920254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.316845, 25.998768, 29.950035>,  <33.694870, 25.877802, 29.999670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.316845, 25.998768, 29.950035> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290748, 0.604180, -0.741911,
		-0.149394, -0.737232, -0.658916,
		-0.945065, 0.302416, -0.124088,
		33.033325, 26.089493, 29.912809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<28.613096, 24.440182, 34.230053> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.253435, 24.387035, 34.063263>,  <28.037638, 24.355146, 33.963188>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.253435, 24.387035, 34.063263>,  <28.613096, 24.440182, 34.230053>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.253435, 24.387035, 34.063263> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125432, 0.834583, -0.536412,
		0.419274, -0.534618, -0.733752,
		-0.899153, -0.132868, -0.416978,
		27.983688, 24.347176, 33.938171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.707947, 24.481125, 33.474571>,  <28.613096, 24.440182, 34.230053>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.707947, 24.481125, 33.474571> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.329689, 24.561428, 33.576904>,  <28.102734, 24.609610, 33.638306>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.329689, 24.561428, 33.576904>,  <28.707947, 24.481125, 33.474571>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.329689, 24.561428, 33.576904> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077484, 0.903135, -0.422308,
		-0.315834, -0.379531, -0.869601,
		-0.945645, 0.200760, 0.255833,
		28.045996, 24.621656, 33.653656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.349180, 24.624212, 32.844723>,  <28.707947, 24.481125, 33.474571>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.349180, 24.624212, 32.844723> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.149633, 24.795933, 33.145874>,  <28.029905, 24.898966, 33.326565>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.149633, 24.795933, 33.145874>,  <28.349180, 24.624212, 32.844723>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.149633, 24.795933, 33.145874> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141501, 0.897387, -0.417940,
		-0.855050, -0.101963, -0.508423,
		-0.498866, 0.429302, 0.752883,
		27.999973, 24.924723, 33.371738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.873407, 25.052696, 32.560310>,  <28.349180, 24.624212, 32.844723>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.873407, 25.052696, 32.560310> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.890436, 25.180119, 32.939091>,  <27.900654, 25.256573, 33.166359>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.890436, 25.180119, 32.939091>,  <27.873407, 25.052696, 32.560310>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.890436, 25.180119, 32.939091> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001326, 0.947824, -0.318791,
		-0.999093, 0.012315, 0.040772,
		0.042571, 0.318556, 0.946948,
		27.903208, 25.275684, 33.223175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.528259, 25.631138, 32.555740>,  <27.873407, 25.052696, 32.560310>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.528259, 25.631138, 32.555740> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.752264, 25.666351, 32.885258>,  <27.886667, 25.687479, 33.082970>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.752264, 25.666351, 32.885258>,  <27.528259, 25.631138, 32.555740>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.752264, 25.666351, 32.885258> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204123, 0.949025, -0.240177,
		-0.802945, 0.302657, 0.513495,
		0.560011, 0.088033, 0.823795,
		27.920267, 25.692760, 33.132397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.331726, 26.319691, 32.965546>,  <27.528259, 25.631138, 32.555740>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.331726, 26.319691, 32.965546> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.706547, 26.233154, 33.075188>,  <27.931438, 26.181232, 33.140972>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.706547, 26.233154, 33.075188>,  <27.331726, 26.319691, 32.965546>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.706547, 26.233154, 33.075188> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237697, 0.970210, -0.046837,
		-0.255807, 0.109043, 0.960558,
		0.937050, -0.216340, 0.274105,
		27.987661, 26.168253, 33.157417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.629084, 26.872490, 33.579834>,  <27.331726, 26.319691, 32.965546>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.629084, 26.872490, 33.579834> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.939402, 26.694168, 33.401218>,  <28.125593, 26.587175, 33.294048>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.939402, 26.694168, 33.401218>,  <27.629084, 26.872490, 33.579834>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.939402, 26.694168, 33.401218> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472389, 0.879521, -0.057368,
		0.418317, -0.166435, 0.892922,
		0.775796, -0.445804, -0.446541,
		28.172140, 26.560427, 33.267258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.229185, 27.154718, 33.899597>,  <27.629084, 26.872490, 33.579834>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.229185, 27.154718, 33.899597> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.329964, 27.016758, 33.537918>,  <28.390430, 26.933981, 33.320911>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.329964, 27.016758, 33.537918>,  <28.229185, 27.154718, 33.899597>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.329964, 27.016758, 33.537918> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420760, 0.880440, -0.218601,
		0.871484, -0.325373, 0.366944,
		0.251945, -0.344902, -0.904194,
		28.405548, 26.913288, 33.266659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.607119, 27.672935, 33.733742>,  <28.229185, 27.154718, 33.899597>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.607119, 27.672935, 33.733742> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.662886, 27.449497, 33.406685>,  <28.696346, 27.315434, 33.210453>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.662886, 27.449497, 33.406685>,  <28.607119, 27.672935, 33.733742>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.662886, 27.449497, 33.406685> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425796, 0.779288, -0.459792,
		0.894013, -0.284043, 0.346497,
		0.139420, -0.558597, -0.817638,
		28.704712, 27.281918, 33.161392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.348530, 27.695635, 33.495007>,  <28.607119, 27.672935, 33.733742>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.348530, 27.695635, 33.495007> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.122406, 27.617760, 33.174377>,  <28.986732, 27.571035, 32.981998>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.122406, 27.617760, 33.174377>,  <29.348530, 27.695635, 33.495007>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.122406, 27.617760, 33.174377> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383859, 0.798030, -0.464543,
		0.730121, -0.570303, -0.376402,
		-0.565310, -0.194687, -0.801574,
		28.952812, 27.559353, 32.933907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.867878, 27.648726, 32.922962>,  <29.348530, 27.695635, 33.495007>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.867878, 27.648726, 32.922962> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.497128, 27.724049, 32.793072>,  <29.274677, 27.769241, 32.715137>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.497128, 27.724049, 32.793072>,  <29.867878, 27.648726, 32.922962>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.497128, 27.724049, 32.793072> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346616, 0.761409, -0.547827,
		0.144086, -0.620320, -0.771001,
		-0.926874, 0.188307, -0.324722,
		29.219065, 27.780540, 32.695656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.991175, 27.861340, 32.204708>,  <29.867878, 27.648726, 32.922962>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.991175, 27.861340, 32.204708> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.623812, 27.982967, 32.305958>,  <29.403395, 28.055944, 32.366707>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.623812, 27.982967, 32.305958>,  <29.991175, 27.861340, 32.204708>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.623812, 27.982967, 32.305958> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181665, 0.892454, -0.412945,
		-0.351463, -0.333268, -0.874875,
		-0.918407, 0.304069, 0.253122,
		29.348289, 28.074188, 32.381893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.703594, 27.517809, 32.090809>,  <29.991175, 27.861340, 32.204708>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.703594, 27.517809, 32.090809> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.988977, 27.724018, 32.280636>,  <31.160208, 27.847744, 32.394531>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.988977, 27.724018, 32.280636>,  <30.703594, 27.517809, 32.090809>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.988977, 27.724018, 32.280636> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087109, -0.737282, 0.669946,
		0.695264, -0.436638, -0.570925,
		0.713456, 0.515522, 0.474570,
		31.203014, 27.878675, 32.423008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.218479, 27.138216, 32.201790>,  <30.703594, 27.517809, 32.090809>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.218479, 27.138216, 32.201790> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.274029, 27.417892, 32.482315>,  <31.307360, 27.585699, 32.650631>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.274029, 27.417892, 32.482315>,  <31.218479, 27.138216, 32.201790>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.274029, 27.417892, 32.482315> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177550, -0.714281, 0.676962,
		0.974264, 0.030505, -0.223338,
		0.138875, 0.699193, 0.701315,
		31.315691, 27.627651, 32.692711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.753389, 26.937103, 32.488144>,  <31.218479, 27.138216, 32.201790>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.753389, 26.937103, 32.488144> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.607422, 27.181427, 32.769211>,  <31.519840, 27.328022, 32.937851>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.607422, 27.181427, 32.769211>,  <31.753389, 26.937103, 32.488144>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.607422, 27.181427, 32.769211> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296654, -0.639099, 0.709611,
		0.882513, 0.467401, 0.052021,
		-0.364920, 0.610809, 0.702670,
		31.497946, 27.364670, 32.980011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.223812, 26.954309, 32.978394>,  <31.753389, 26.937103, 32.488144>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.223812, 26.954309, 32.978394> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.906488, 27.092823, 33.178692>,  <31.716093, 27.175932, 33.298870>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.906488, 27.092823, 33.178692>,  <32.223812, 26.954309, 32.978394>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.906488, 27.092823, 33.178692> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161520, -0.673306, 0.721506,
		0.587001, 0.653258, 0.478208,
		-0.793310, 0.346284, 0.500746,
		31.668495, 27.196709, 33.328915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.388130, 26.913815, 33.637730>,  <32.223812, 26.954309, 32.978394>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.388130, 26.913815, 33.637730> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.989531, 26.921581, 33.670277>,  <31.750372, 26.926241, 33.689804>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.989531, 26.921581, 33.670277>,  <32.388130, 26.913815, 33.637730>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.989531, 26.921581, 33.670277> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046000, -0.685197, 0.726904,
		0.069867, 0.728099, 0.681902,
		-0.996495, 0.019419, 0.081365,
		31.690582, 26.927406, 33.694687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.243828, 26.812323, 34.302937>,  <32.388130, 26.913815, 33.637730>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.243828, 26.812323, 34.302937> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.902693, 26.714428, 34.118427>,  <31.698011, 26.655691, 34.007721>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.902693, 26.714428, 34.118427>,  <32.243828, 26.812323, 34.302937>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.902693, 26.714428, 34.118427> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104853, -0.785110, 0.610417,
		-0.511537, 0.568953, 0.643912,
		-0.852840, -0.244735, -0.461269,
		31.646841, 26.641008, 33.980045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.895107, 26.731075, 34.825081>,  <32.243828, 26.812323, 34.302937>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.895107, 26.731075, 34.825081> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.695505, 26.545387, 34.532372>,  <31.575745, 26.433973, 34.356747>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.695505, 26.545387, 34.532372>,  <31.895107, 26.731075, 34.825081>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.695505, 26.545387, 34.532372> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245098, -0.734341, 0.632985,
		-0.831217, 0.495218, 0.252659,
		-0.499004, -0.464222, -0.731774,
		31.545805, 26.406120, 34.312840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.168489, 26.435156, 35.087715>,  <31.895107, 26.731075, 34.825081>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.168489, 26.435156, 35.087715> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.225285, 26.238247, 34.744202>,  <31.259361, 26.120102, 34.538094>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.225285, 26.238247, 34.744202>,  <31.168489, 26.435156, 35.087715>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.225285, 26.238247, 34.744202> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289093, -0.850371, 0.439652,
		-0.946713, 0.185843, -0.263053,
		0.141987, -0.492271, -0.858783,
		31.267881, 26.090565, 34.486568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.474449, 26.182451, 34.872593>,  <31.168489, 26.435156, 35.087715>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.474449, 26.182451, 34.872593> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.759981, 25.954121, 34.710308>,  <30.931299, 25.817122, 34.612938>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.759981, 25.954121, 34.710308>,  <30.474449, 26.182451, 34.872593>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.759981, 25.954121, 34.710308> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487202, -0.820934, 0.297828,
		-0.503073, -0.014933, -0.864115,
		0.713829, -0.570828, -0.405715,
		30.974129, 25.782873, 34.588593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.118727, 25.608700, 34.580322>,  <30.474449, 26.182451, 34.872593>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.118727, 25.608700, 34.580322> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.501034, 25.501064, 34.627819>,  <30.730417, 25.436483, 34.656319>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.501034, 25.501064, 34.627819>,  <30.118727, 25.608700, 34.580322>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.501034, 25.501064, 34.627819> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293799, -0.892474, 0.342305,
		0.013865, -0.362051, -0.932055,
		0.955767, -0.269090, 0.118745,
		30.787764, 25.420338, 34.663441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.170771, 24.908697, 34.295670>,  <30.118727, 25.608700, 34.580322>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.170771, 24.908697, 34.295670> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.489479, 24.956425, 34.532623>,  <30.680704, 24.985062, 34.674797>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.489479, 24.956425, 34.532623>,  <30.170771, 24.908697, 34.295670>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.489479, 24.956425, 34.532623> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086616, -0.947639, 0.307372,
		0.598042, -0.296215, -0.744716,
		0.796771, 0.119317, 0.592385,
		30.728510, 24.992220, 34.710339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.640728, 24.313269, 34.235138>,  <30.170771, 24.908697, 34.295670>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.640728, 24.313269, 34.235138> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.716051, 24.486649, 34.587650>,  <30.761246, 24.590675, 34.799160>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.716051, 24.486649, 34.587650>,  <30.640728, 24.313269, 34.235138>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.716051, 24.486649, 34.587650> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006047, -0.896809, 0.442376,
		0.982091, -0.088632, -0.166256,
		0.188309, 0.433448, 0.881284,
		30.772543, 24.616684, 34.852036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.297049, 23.975687, 34.405807>,  <30.640728, 24.313269, 34.235138>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.297049, 23.975687, 34.405807> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.173796, 24.135849, 34.750999>,  <31.099844, 24.231947, 34.958115>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.173796, 24.135849, 34.750999>,  <31.297049, 23.975687, 34.405807>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.173796, 24.135849, 34.750999> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053368, -0.912962, 0.404541,
		0.949845, 0.078597, 0.302683,
		-0.308134, 0.400404, 0.862978,
		31.081356, 24.255970, 35.009892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.703543, 23.745222, 34.842537>,  <31.297049, 23.975687, 34.405807>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.703543, 23.745222, 34.842537> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.354082, 23.804871, 35.027794>,  <31.144405, 23.840660, 35.138947>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.354082, 23.804871, 35.027794>,  <31.703543, 23.745222, 34.842537>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.354082, 23.804871, 35.027794> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006105, -0.955162, 0.296021,
		0.486515, 0.255791, 0.835388,
		-0.873651, 0.149119, 0.463139,
		31.091988, 23.849606, 35.166737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.906673, 23.332533, 34.337486>,  <31.703543, 23.745222, 34.842537>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.906673, 23.332533, 34.337486> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.851233, 23.024017, 34.089001>,  <31.817968, 22.838907, 33.939911>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.851233, 23.024017, 34.089001>,  <31.906673, 23.332533, 34.337486>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.851233, 23.024017, 34.089001> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383336, 0.536588, -0.751749,
		0.913150, -0.342327, 0.221290,
		-0.138603, -0.771289, -0.621211,
		31.809652, 22.792631, 33.902637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.518604, 23.240883, 33.863335>,  <31.906673, 23.332533, 34.337486>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.518604, 23.240883, 33.863335> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.224682, 23.068981, 33.653431>,  <32.048328, 22.965839, 33.527489>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.224682, 23.068981, 33.653431>,  <32.518604, 23.240883, 33.863335>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.224682, 23.068981, 33.653431> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280607, 0.511747, -0.812019,
		0.617516, -0.743925, -0.255439,
		-0.734802, -0.429757, -0.524763,
		32.004242, 22.940054, 33.496002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.794765, 23.124058, 33.212105>,  <32.518604, 23.240883, 33.863335>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.794765, 23.124058, 33.212105> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.399052, 23.110531, 33.155293>,  <32.161625, 23.102415, 33.121204>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.399052, 23.110531, 33.155293>,  <32.794765, 23.124058, 33.212105>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.399052, 23.110531, 33.155293> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105147, 0.509918, -0.853773,
		0.101296, -0.859558, -0.500898,
		-0.989284, -0.033816, -0.142032,
		32.102268, 23.100386, 33.112682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.738583, 23.041496, 32.538391>,  <32.794765, 23.124058, 33.212105>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.738583, 23.041496, 32.538391> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.362911, 23.155293, 32.615341>,  <32.137508, 23.223570, 32.661510>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.362911, 23.155293, 32.615341>,  <32.738583, 23.041496, 32.538391>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.362911, 23.155293, 32.615341> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018161, 0.600517, -0.799405,
		-0.342950, -0.747290, -0.569159,
		-0.939178, 0.284493, 0.192375,
		32.081158, 23.240641, 32.673054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.435184, 23.082472, 31.853758>,  <32.738583, 23.041496, 32.538391>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.435184, 23.082472, 31.853758> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.187725, 23.285934, 32.093273>,  <32.039249, 23.408012, 32.236980>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.187725, 23.285934, 32.093273>,  <32.435184, 23.082472, 31.853758>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.187725, 23.285934, 32.093273> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255413, 0.590534, -0.765528,
		-0.742996, -0.626528, -0.235412,
		-0.618644, 0.508657, 0.598788,
		32.002132, 23.438532, 32.272911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.795296, 23.126535, 31.609407>,  <32.435184, 23.082472, 31.853758>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.795296, 23.126535, 31.609407> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.856611, 23.457985, 31.824772>,  <31.893400, 23.656855, 31.953991>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.856611, 23.457985, 31.824772>,  <31.795296, 23.126535, 31.609407>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.856611, 23.457985, 31.824772> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153374, 0.558199, -0.815408,
		-0.976207, 0.042414, 0.212654,
		0.153287, 0.828623, 0.538412,
		31.902597, 23.706572, 31.986296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.407970, 23.559813, 31.229443>,  <31.795296, 23.126535, 31.609407>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.407970, 23.559813, 31.229443> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.596689, 23.795650, 31.491676>,  <31.709921, 23.937153, 31.649015>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.596689, 23.795650, 31.491676>,  <31.407970, 23.559813, 31.229443>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.596689, 23.795650, 31.491676> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082042, 0.710956, -0.698434,
		-0.877883, 0.383304, 0.287054,
		0.471795, 0.589593, 0.655583,
		31.738228, 23.972528, 31.688351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.676399, 23.643353, 31.012815>,  <31.407970, 23.559813, 31.229443>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.676399, 23.643353, 31.012815> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.346399, 23.608879, 30.789406>,  <30.148399, 23.588196, 30.655361>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.346399, 23.608879, 30.789406>,  <30.676399, 23.643353, 31.012815>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.346399, 23.608879, 30.789406> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372184, -0.660853, 0.651730,
		-0.425269, 0.745551, 0.513129,
		-0.825000, -0.086182, -0.558522,
		30.098900, 23.583025, 30.621849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.265903, 23.605520, 31.465630>,  <30.676399, 23.643353, 31.012815>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.265903, 23.605520, 31.465630> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.072950, 23.444481, 31.154446>,  <29.957178, 23.347857, 30.967735>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.072950, 23.444481, 31.154446>,  <30.265903, 23.605520, 31.465630>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.072950, 23.444481, 31.154446> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342071, -0.731026, 0.590414,
		-0.806409, 0.550923, 0.214916,
		-0.482382, -0.402599, -0.777960,
		29.928236, 23.323702, 30.921057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.537104, 23.557333, 31.589828>,  <30.265903, 23.605520, 31.465630>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.537104, 23.557333, 31.589828> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.630131, 23.278492, 31.318546>,  <29.685947, 23.111187, 31.155777>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.630131, 23.278492, 31.318546>,  <29.537104, 23.557333, 31.589828>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.630131, 23.278492, 31.318546> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483888, -0.687827, 0.541061,
		-0.843662, 0.202341, -0.497286,
		0.232568, -0.697103, -0.678204,
		29.699902, 23.069361, 31.115086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.930798, 23.306425, 31.402750>,  <29.537104, 23.557333, 31.589828>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.930798, 23.306425, 31.402750> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.192245, 23.031441, 31.276146>,  <29.349115, 22.866451, 31.200184>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.192245, 23.031441, 31.276146>,  <28.930798, 23.306425, 31.402750>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.192245, 23.031441, 31.276146> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595064, -0.725226, 0.346333,
		-0.467631, -0.038027, -0.883105,
		0.653621, -0.687460, -0.316510,
		29.388332, 22.825203, 31.181192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.524717, 22.662727, 31.009409>,  <28.930798, 23.306425, 31.402750>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.524717, 22.662727, 31.009409> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.885807, 22.514782, 31.097309>,  <29.102461, 22.426014, 31.150049>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.885807, 22.514782, 31.097309>,  <28.524717, 22.662727, 31.009409>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.885807, 22.514782, 31.097309> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425100, -0.845423, 0.323343,
		0.066190, -0.385306, -0.920412,
		0.902723, -0.369865, 0.219752,
		29.156624, 22.403822, 31.163235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.577690, 21.950762, 30.790012>,  <28.524717, 22.662727, 31.009409>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.577690, 21.950762, 30.790012> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.849983, 22.013771, 31.076172>,  <29.013359, 22.051577, 31.247868>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.849983, 22.013771, 31.076172>,  <28.577690, 21.950762, 30.790012>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.849983, 22.013771, 31.076172> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399019, -0.739268, 0.542463,
		0.614321, -0.654728, -0.440388,
		0.680730, 0.157523, 0.715397,
		29.054203, 22.061028, 31.290791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.719942, 21.250313, 30.931850>,  <28.577690, 21.950762, 30.790012>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.719942, 21.250313, 30.931850> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.848370, 21.460007, 31.247341>,  <28.925426, 21.585823, 31.436636>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.848370, 21.460007, 31.247341>,  <28.719942, 21.250313, 30.931850>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.848370, 21.460007, 31.247341> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375163, -0.694286, 0.614183,
		0.869579, -0.493097, -0.026240,
		0.321070, 0.524236, 0.788727,
		28.944691, 21.617277, 31.483959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.164263, 20.897348, 31.362289>,  <28.719942, 21.250313, 30.931850>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.164263, 20.897348, 31.362289> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.020262, 21.165852, 31.621460>,  <28.933861, 21.326954, 31.776962>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.020262, 21.165852, 31.621460>,  <29.164263, 20.897348, 31.362289>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.020262, 21.165852, 31.621460> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251935, -0.738639, 0.625253,
		0.898290, 0.061859, 0.435026,
		-0.360005, 0.671257, 0.647928,
		28.912260, 21.367229, 31.815838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.412401, 20.618862, 32.047653>,  <29.164263, 20.897348, 31.362289>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.412401, 20.618862, 32.047653> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.140726, 20.891125, 32.157497>,  <28.977722, 21.054482, 32.223404>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.140726, 20.891125, 32.157497>,  <29.412401, 20.618862, 32.047653>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.140726, 20.891125, 32.157497> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148922, -0.494165, 0.856518,
		0.718700, 0.540839, 0.436995,
		-0.679186, 0.680657, 0.274613,
		28.936970, 21.095322, 32.239880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<31.179964, 33.927090, 23.006847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.786343, 33.960339, 23.069748>,  <30.550169, 33.980289, 23.107489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.786343, 33.960339, 23.069748>,  <31.179964, 33.927090, 23.006847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.786343, 33.960339, 23.069748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043347, -0.745347, 0.665266,
		0.172505, 0.661475, 0.729858,
		-0.984054, 0.083124, 0.157249,
		30.491127, 33.985275, 23.116922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.140835, 33.914642, 23.711451>,  <31.179964, 33.927090, 23.006847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.140835, 33.914642, 23.711451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.779474, 33.808216, 23.576946>,  <30.562658, 33.744362, 23.496243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.779474, 33.808216, 23.576946>,  <31.140835, 33.914642, 23.711451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.779474, 33.808216, 23.576946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070611, -0.865814, 0.495358,
		-0.422938, 0.423765, 0.800966,
		-0.903403, -0.266063, -0.336263,
		30.508453, 33.728397, 23.476067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.920906, 33.527634, 24.272562>,  <31.140835, 33.914642, 23.711451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.920906, 33.527634, 24.272562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.705797, 33.424900, 23.951355>,  <30.576733, 33.363258, 23.758631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.705797, 33.424900, 23.951355>,  <30.920906, 33.527634, 24.272562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.705797, 33.424900, 23.951355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119522, -0.966074, 0.228945,
		-0.834574, 0.027142, 0.550226,
		-0.537773, -0.256835, -0.803017,
		30.544466, 33.347851, 23.710449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.463467, 33.115917, 24.545523>,  <30.920906, 33.527634, 24.272562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.463467, 33.115917, 24.545523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.480545, 33.022942, 24.156853>,  <30.490793, 32.967155, 23.923651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.480545, 33.022942, 24.156853>,  <30.463467, 33.115917, 24.545523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.480545, 33.022942, 24.156853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302501, -0.923902, 0.234304,
		-0.952192, -0.303936, 0.030865,
		0.042697, -0.232439, -0.971673,
		30.493355, 32.953209, 23.865351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.025000, 32.576454, 24.451403>,  <30.463467, 33.115917, 24.545523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.025000, 32.576454, 24.451403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.255035, 32.543377, 24.125843>,  <30.393057, 32.523529, 23.930508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.255035, 32.543377, 24.125843>,  <30.025000, 32.576454, 24.451403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.255035, 32.543377, 24.125843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135069, -0.971627, 0.194158,
		-0.806864, -0.221591, -0.547603,
		0.575089, -0.082695, -0.813901,
		30.427563, 32.518570, 23.881672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.867302, 31.872366, 24.244373>,  <30.025000, 32.576454, 24.451403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.867302, 31.872366, 24.244373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.208944, 31.960690, 24.056015>,  <30.413929, 32.013683, 23.942999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.208944, 31.960690, 24.056015>,  <29.867302, 31.872366, 24.244373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.208944, 31.960690, 24.056015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383414, -0.879081, 0.283216,
		-0.351420, -0.422445, -0.835491,
		0.854107, 0.220811, -0.470897,
		30.465176, 32.026932, 23.914745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.968416, 31.320866, 23.842602>,  <29.867302, 31.872366, 24.244373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.968416, 31.320866, 23.842602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.334005, 31.477409, 23.885479>,  <30.553360, 31.571335, 23.911205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.334005, 31.477409, 23.885479>,  <29.968416, 31.320866, 23.842602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.334005, 31.477409, 23.885479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374653, -0.915358, 0.147494,
		0.155844, -0.094645, -0.983237,
		0.913974, 0.391359, 0.107194,
		30.608198, 31.594816, 23.917637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.373650, 30.847042, 23.538826>,  <29.968416, 31.320866, 23.842602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.373650, 30.847042, 23.538826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.621702, 31.064735, 23.764835>,  <30.770533, 31.195351, 23.900440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.621702, 31.064735, 23.764835>,  <30.373650, 30.847042, 23.538826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.621702, 31.064735, 23.764835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465191, -0.835047, 0.293759,
		0.631693, 0.080674, -0.771010,
		0.620130, 0.544232, 0.565022,
		30.807741, 31.228004, 23.934341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.937067, 30.545580, 23.424963>,  <30.373650, 30.847042, 23.538826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.937067, 30.545580, 23.424963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.011475, 30.744694, 23.763809>,  <31.056120, 30.864162, 23.967117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.011475, 30.744694, 23.763809>,  <30.937067, 30.545580, 23.424963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.011475, 30.744694, 23.763809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384634, -0.830250, 0.403411,
		0.904131, 0.250788, -0.345908,
		0.186020, 0.497785, 0.847117,
		31.067280, 30.894030, 24.017944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.596245, 30.435240, 23.558161>,  <30.937067, 30.545580, 23.424963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.596245, 30.435240, 23.558161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.421492, 30.532982, 23.904438>,  <31.316641, 30.591627, 24.112204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.421492, 30.532982, 23.904438>,  <31.596245, 30.435240, 23.558161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.421492, 30.532982, 23.904438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329670, -0.851936, 0.406845,
		0.836930, 0.463137, 0.291638,
		-0.436882, 0.244357, 0.865693,
		31.290426, 30.606289, 24.164146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.047470, 30.237473, 24.073345>,  <31.596245, 30.435240, 23.558161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.047470, 30.237473, 24.073345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.710354, 30.264473, 24.286942>,  <31.508083, 30.280674, 24.415100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.710354, 30.264473, 24.286942>,  <32.047470, 30.237473, 24.073345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.710354, 30.264473, 24.286942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173604, -0.904993, 0.388394,
		0.509476, 0.420038, 0.751001,
		-0.842791, 0.067501, 0.533992,
		31.457516, 30.284723, 24.447140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.297806, 30.059624, 24.753521>,  <32.047470, 30.237473, 24.073345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.297806, 30.059624, 24.753521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.901022, 30.010658, 24.740654>,  <31.662952, 29.981279, 24.732933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.901022, 30.010658, 24.740654>,  <32.297806, 30.059624, 24.753521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.901022, 30.010658, 24.740654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099631, -0.911952, 0.398016,
		-0.078058, 0.391610, 0.916815,
		-0.991958, -0.122412, -0.032168,
		31.603436, 29.973934, 24.731003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.421787, 30.497957, 25.334249>,  <32.297806, 30.059624, 24.753521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.421787, 30.497957, 25.334249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.774338, 30.608521, 25.487495>,  <32.985867, 30.674858, 25.579443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.774338, 30.608521, 25.487495>,  <32.421787, 30.497957, 25.334249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.774338, 30.608521, 25.487495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009144, 0.800836, -0.598814,
		-0.472329, 0.531283, 0.703309,
		0.881375, 0.276406, 0.383116,
		33.038750, 30.691442, 25.602430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.397194, 31.188633, 25.295813>,  <32.421787, 30.497957, 25.334249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.397194, 31.188633, 25.295813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.782707, 31.099991, 25.355152>,  <33.014015, 31.046804, 25.390757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.782707, 31.099991, 25.355152>,  <32.397194, 31.188633, 25.295813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.782707, 31.099991, 25.355152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266315, 0.770762, -0.578794,
		0.013923, 0.597341, 0.801867,
		0.963786, -0.221607, 0.148349,
		33.071842, 31.033508, 25.399656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.690315, 31.857801, 25.438196>,  <32.397194, 31.188633, 25.295813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.690315, 31.857801, 25.438196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.007072, 31.625790, 25.361805>,  <33.197124, 31.486582, 25.315971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.007072, 31.625790, 25.361805>,  <32.690315, 31.857801, 25.438196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.007072, 31.625790, 25.361805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534943, 0.809738, -0.241163,
		0.294523, 0.088813, 0.951508,
		0.791891, -0.580031, -0.190976,
		33.244640, 31.451780, 25.304512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.233261, 32.316853, 25.645338>,  <32.690315, 31.857801, 25.438196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.233261, 32.316853, 25.645338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.395428, 32.022923, 25.427837>,  <33.492729, 31.846563, 25.297337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.395428, 32.022923, 25.427837>,  <33.233261, 32.316853, 25.645338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.395428, 32.022923, 25.427837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648497, 0.650427, -0.395470,
		0.644271, -0.192288, 0.740230,
		0.405421, -0.734827, -0.543749,
		33.517056, 31.802475, 25.264713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.941612, 32.131851, 25.905355>,  <33.233261, 32.316853, 25.645338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.941612, 32.131851, 25.905355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.856281, 32.097591, 25.516068>,  <33.805080, 32.077038, 25.282495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.856281, 32.097591, 25.516068>,  <33.941612, 32.131851, 25.905355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.856281, 32.097591, 25.516068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650276, 0.730989, -0.206872,
		0.729132, -0.676992, -0.100238,
		-0.213323, -0.085655, -0.973220,
		33.792282, 32.071896, 25.224102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.575985, 32.302830, 25.691029>,  <33.941612, 32.131851, 25.905355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.575985, 32.302830, 25.691029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.345989, 32.309319, 25.363827>,  <34.207993, 32.313213, 25.167505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.345989, 32.309319, 25.363827>,  <34.575985, 32.302830, 25.691029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.345989, 32.309319, 25.363827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520568, 0.778573, -0.350475,
		0.631189, -0.627344, -0.456113,
		-0.574985, 0.016222, -0.818003,
		34.173492, 32.314186, 25.118425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.945354, 32.205482, 25.119127>,  <34.575985, 32.302830, 25.691029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.945354, 32.205482, 25.119127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.630360, 32.400043, 24.967716>,  <34.441364, 32.516781, 24.876869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.630360, 32.400043, 24.967716>,  <34.945354, 32.205482, 25.119127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.630360, 32.400043, 24.967716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609181, 0.707556, -0.358137,
		0.093629, -0.512618, -0.853497,
		-0.787485, 0.486402, -0.378525,
		34.394115, 32.545963, 24.854158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.183098, 32.432114, 24.415951>,  <34.945354, 32.205482, 25.119127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.183098, 32.432114, 24.415951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.869419, 32.661671, 24.510338>,  <34.681213, 32.799404, 24.566971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.869419, 32.661671, 24.510338>,  <35.183098, 32.432114, 24.415951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.869419, 32.661671, 24.510338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455026, 0.790405, -0.410136,
		-0.421886, -0.214255, -0.880969,
		-0.784196, 0.573895, 0.235969,
		34.634159, 32.833839, 24.581129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.196354, 32.900139, 23.865063>,  <35.183098, 32.432114, 24.415951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.196354, 32.900139, 23.865063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.954369, 33.072052, 24.133186>,  <34.809177, 33.175198, 24.294060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.954369, 33.072052, 24.133186>,  <35.196354, 32.900139, 23.865063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.954369, 33.072052, 24.133186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453179, 0.878023, -0.153961,
		-0.654715, 0.210629, -0.725937,
		-0.604960, 0.429780, 0.670307,
		34.772881, 33.200985, 24.334278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.933376, 33.558163, 23.566946>,  <35.196354, 32.900139, 23.865063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.933376, 33.558163, 23.566946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.880936, 33.599190, 23.961365>,  <34.849472, 33.623806, 24.198017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.880936, 33.599190, 23.961365>,  <34.933376, 33.558163, 23.566946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.880936, 33.599190, 23.961365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300674, 0.951898, -0.059034,
		-0.944673, 0.288740, -0.155637,
		-0.131105, 0.102564, 0.986049,
		34.841602, 33.629959, 24.257179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.597290, 34.242096, 23.689907>,  <34.933376, 33.558163, 23.566946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.597290, 34.242096, 23.689907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.787064, 34.126232, 24.022415>,  <34.900928, 34.056713, 24.221920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.787064, 34.126232, 24.022415>,  <34.597290, 34.242096, 23.689907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.787064, 34.126232, 24.022415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433579, 0.898718, 0.065700,
		-0.766109, 0.329251, 0.551970,
		0.474433, -0.289656, 0.831271,
		34.929394, 34.039337, 24.271797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.433346, 34.731380, 24.109985>,  <34.597290, 34.242096, 23.689907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.433346, 34.731380, 24.109985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.735004, 34.550285, 24.300266>,  <34.916000, 34.441628, 24.414434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.735004, 34.550285, 24.300266>,  <34.433346, 34.731380, 24.109985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.735004, 34.550285, 24.300266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397078, 0.891323, 0.218795,
		-0.523062, 0.023888, 0.851960,
		0.754145, -0.452738, 0.475703,
		34.961246, 34.414463, 24.442978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.499245, 34.981548, 24.777554>,  <34.433346, 34.731380, 24.109985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.499245, 34.981548, 24.777554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.865437, 34.845615, 24.691383>,  <35.085152, 34.764053, 24.639681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.865437, 34.845615, 24.691383>,  <34.499245, 34.981548, 24.777554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.865437, 34.845615, 24.691383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376330, 0.912639, 0.159577,
		0.142375, -0.227160, 0.963394,
		0.915481, -0.339835, -0.215424,
		35.140079, 34.743664, 24.626757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.989761, 35.256187, 25.331005>,  <34.499245, 34.981548, 24.777554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.989761, 35.256187, 25.331005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.187084, 35.184982, 24.990429>,  <35.305477, 35.142258, 24.786083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.187084, 35.184982, 24.990429>,  <34.989761, 35.256187, 25.331005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.187084, 35.184982, 24.990429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629940, 0.748115, 0.208563,
		0.599849, -0.639245, 0.481193,
		0.493311, -0.178017, -0.851442,
		35.335079, 35.131577, 24.734997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.081203, 35.343655, 26.151146>,  <34.989761, 35.256187, 25.331005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.081203, 35.343655, 26.151146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.054768, 34.978062, 26.311283>,  <35.038906, 34.758705, 26.407366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.054768, 34.978062, 26.311283>,  <35.081203, 35.343655, 26.151146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.054768, 34.978062, 26.311283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311578, 0.400058, 0.861900,
		-0.947920, -0.067777, -0.311215,
		-0.066087, -0.913980, 0.400341,
		35.034943, 34.703869, 26.431385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.468887, 35.131359, 26.499655>,  <35.081203, 35.343655, 26.151146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.468887, 35.131359, 26.499655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.729366, 34.889023, 26.682476>,  <34.885654, 34.743622, 26.792170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.729366, 34.889023, 26.682476>,  <34.468887, 35.131359, 26.499655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.729366, 34.889023, 26.682476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378013, 0.263285, 0.887574,
		-0.658062, -0.750760, -0.057564,
		0.651199, -0.605839, 0.457055,
		34.924725, 34.707272, 26.819593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.307659, 35.915684, 26.438711>,  <34.468887, 35.131359, 26.499655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.307659, 35.915684, 26.438711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.010002, 35.689465, 26.296501>,  <33.831406, 35.553734, 26.211174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.010002, 35.689465, 26.296501>,  <34.307659, 35.915684, 26.438711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.010002, 35.689465, 26.296501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090733, -0.441709, 0.892558,
		-0.661825, 0.696453, 0.277382,
		-0.744147, -0.565550, -0.355526,
		33.786758, 35.519798, 26.189844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.890366, 35.768288, 27.003704>,  <34.307659, 35.915684, 26.438711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.890366, 35.768288, 27.003704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.742920, 35.491016, 26.755955>,  <33.654453, 35.324654, 26.607306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.742920, 35.491016, 26.755955>,  <33.890366, 35.768288, 27.003704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.742920, 35.491016, 26.755955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304349, -0.539575, 0.785004,
		-0.878347, 0.477871, -0.012073,
		-0.368616, -0.693180, -0.619374,
		33.632336, 35.283062, 26.570143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.269711, 35.604141, 27.334053>,  <33.890366, 35.768288, 27.003704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.269711, 35.604141, 27.334053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.382717, 35.298813, 27.101665>,  <33.450520, 35.115616, 26.962233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.382717, 35.298813, 27.101665>,  <33.269711, 35.604141, 27.334053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.382717, 35.298813, 27.101665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267427, -0.644302, 0.716489,
		-0.921231, -0.047053, -0.386159,
		0.282516, -0.763322, -0.580968,
		33.467472, 35.069817, 26.927376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.805759, 35.100510, 27.496731>,  <33.269711, 35.604141, 27.334053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.805759, 35.100510, 27.496731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.101498, 34.891739, 27.326572>,  <33.278942, 34.766476, 27.224478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.101498, 34.891739, 27.326572>,  <32.805759, 35.100510, 27.496731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.101498, 34.891739, 27.326572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097442, -0.708071, 0.699386,
		-0.666234, -0.475639, -0.574369,
		0.739350, -0.521922, -0.425393,
		33.323303, 34.735161, 27.198954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.590443, 34.469540, 27.430878>,  <32.805759, 35.100510, 27.496731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.590443, 34.469540, 27.430878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.985207, 34.408947, 27.408722>,  <33.222065, 34.372593, 27.395430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.985207, 34.408947, 27.408722>,  <32.590443, 34.469540, 27.430878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.985207, 34.408947, 27.408722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080192, -0.758796, 0.646372,
		-0.139941, -0.633468, -0.761009,
		0.986907, -0.151481, -0.055388,
		33.281281, 34.363503, 27.392105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.733669, 33.781570, 27.301460>,  <32.590443, 34.469540, 27.430878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.733669, 33.781570, 27.301460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.090096, 33.895741, 27.442623>,  <33.303951, 33.964241, 27.527321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.090096, 33.895741, 27.442623>,  <32.733669, 33.781570, 27.301460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.090096, 33.895741, 27.442623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026728, -0.743184, 0.668553,
		0.453093, -0.605155, -0.654595,
		0.891063, 0.285421, 0.352906,
		33.357414, 33.981365, 27.548494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.180508, 33.172611, 27.248304>,  <32.733669, 33.781570, 27.301460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.180508, 33.172611, 27.248304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.326908, 33.411812, 27.533524>,  <33.414749, 33.555332, 27.704655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.326908, 33.411812, 27.533524>,  <33.180508, 33.172611, 27.248304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.326908, 33.411812, 27.533524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084579, -0.784414, 0.614444,
		0.926763, -0.164577, -0.337674,
		0.366000, 0.598004, 0.713046,
		33.436707, 33.591213, 27.747437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.545681, 32.655998, 27.578707>,  <33.180508, 33.172611, 27.248304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.545681, 32.655998, 27.578707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.542744, 32.972538, 27.823235>,  <33.540981, 33.162464, 27.969952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.542744, 32.972538, 27.823235>,  <33.545681, 32.655998, 27.578707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.542744, 32.972538, 27.823235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000929, -0.611339, 0.791368,
		0.999973, 0.005241, 0.005222,
		-0.007340, 0.791351, 0.611318,
		33.540543, 33.209942, 28.006630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.163193, 32.615608, 27.969198>,  <33.545681, 32.655998, 27.578707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.163193, 32.615608, 27.969198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.887653, 32.827320, 28.167328>,  <33.722328, 32.954346, 28.286205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.887653, 32.827320, 28.167328>,  <34.163193, 32.615608, 27.969198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.887653, 32.827320, 28.167328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078326, -0.624955, 0.776721,
		0.720658, 0.573843, 0.389045,
		-0.688852, 0.529278, 0.495326,
		33.681000, 32.986103, 28.315926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.425972, 32.624767, 28.699320>,  <34.163193, 32.615608, 27.969198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.425972, 32.624767, 28.699320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.044506, 32.744358, 28.712841>,  <33.815628, 32.816113, 28.720953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.044506, 32.744358, 28.712841>,  <34.425972, 32.624767, 28.699320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.044506, 32.744358, 28.712841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142676, -0.548255, 0.824051,
		0.264907, 0.781042, 0.565506,
		-0.953660, 0.298981, 0.033801,
		33.758408, 32.834053, 28.722980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.268524, 32.916725, 29.408701>,  <34.425972, 32.624767, 28.699320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.268524, 32.916725, 29.408701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.929089, 32.799877, 29.232265>,  <33.725426, 32.729767, 29.126404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.929089, 32.799877, 29.232265>,  <34.268524, 32.916725, 29.408701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.929089, 32.799877, 29.232265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204678, -0.587538, 0.782883,
		-0.487850, 0.754630, 0.438790,
		-0.848593, -0.292118, -0.441087,
		33.674511, 32.712242, 29.099939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.628471, 32.836880, 29.925804>,  <34.268524, 32.916725, 29.408701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.628471, 32.836880, 29.925804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.497265, 32.620667, 29.615906>,  <33.418541, 32.490936, 29.429968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.497265, 32.620667, 29.615906>,  <33.628471, 32.836880, 29.925804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.497265, 32.620667, 29.615906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366687, -0.682961, 0.631748,
		-0.870602, 0.491310, 0.025812,
		-0.328012, -0.540536, -0.774744,
		33.398861, 32.458508, 29.383482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.939835, 32.712570, 30.113131>,  <33.628471, 32.836880, 29.925804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.939835, 32.712570, 30.113131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.045528, 32.470238, 29.812958>,  <33.108944, 32.324837, 29.632854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.045528, 32.470238, 29.812958>,  <32.939835, 32.712570, 30.113131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.045528, 32.470238, 29.812958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384462, -0.779757, 0.494133,
		-0.884517, 0.157948, -0.438956,
		0.264232, -0.605831, -0.750434,
		33.124798, 32.288486, 29.587828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.356533, 32.293900, 29.971006>,  <32.939835, 32.712570, 30.113131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.356533, 32.293900, 29.971006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.678642, 32.093204, 29.844646>,  <32.871906, 31.972788, 29.768829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.678642, 32.093204, 29.844646>,  <32.356533, 32.293900, 29.971006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.678642, 32.093204, 29.844646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228489, -0.754265, 0.615529,
		-0.547106, -0.423490, -0.722032,
		0.805275, -0.501736, -0.315900,
		32.920223, 31.942684, 29.749876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.069950, 31.620850, 29.851534>,  <32.356533, 32.293900, 29.971006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.069950, 31.620850, 29.851534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.465618, 31.571255, 29.882935>,  <32.703018, 31.541498, 29.901775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.465618, 31.571255, 29.882935>,  <32.069950, 31.620850, 29.851534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.465618, 31.571255, 29.882935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141798, -0.945312, 0.293731,
		0.037790, -0.301682, -0.952659,
		0.989174, -0.123985, 0.078502,
		32.762371, 31.534060, 29.906485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.204216, 30.924530, 29.593809>,  <32.069950, 31.620850, 29.851534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.204216, 30.924530, 29.593809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.518486, 31.022655, 29.820976>,  <32.707050, 31.081530, 29.957275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.518486, 31.022655, 29.820976>,  <32.204216, 30.924530, 29.593809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.518486, 31.022655, 29.820976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000537, -0.918288, 0.395912,
		0.618633, -0.310755, -0.721612,
		0.785680, 0.245312, 0.567917,
		32.754189, 31.096249, 29.991352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.695011, 30.427797, 29.419495>,  <32.204216, 30.924530, 29.593809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.695011, 30.427797, 29.419495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.810345, 30.594440, 29.764355>,  <32.879543, 30.694426, 29.971272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.810345, 30.594440, 29.764355>,  <32.695011, 30.427797, 29.419495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.810345, 30.594440, 29.764355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055050, -0.906113, 0.419439,
		0.955946, -0.073478, -0.284198,
		0.288335, 0.416606, 0.862150,
		32.896847, 30.719421, 30.022999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.982273, 29.912846, 29.720829>,  <32.695011, 30.427797, 29.419495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.982273, 29.912846, 29.720829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.963730, 30.154297, 30.039196>,  <32.952602, 30.299168, 30.230217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.963730, 30.154297, 30.039196>,  <32.982273, 29.912846, 29.720829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.963730, 30.154297, 30.039196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140480, -0.792796, 0.593077,
		0.988997, -0.084314, 0.121554,
		-0.046363, 0.603628, 0.795917,
		32.949821, 30.335384, 30.277971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.345909, 29.531279, 30.344826>,  <32.982273, 29.912846, 29.720829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.345909, 29.531279, 30.344826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.083347, 29.792263, 30.496311>,  <32.925808, 29.948853, 30.587202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.083347, 29.792263, 30.496311>,  <33.345909, 29.531279, 30.344826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.083347, 29.792263, 30.496311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237850, -0.655387, 0.716865,
		0.715930, 0.380479, 0.585389,
		-0.656409, 0.652460, 0.378714,
		32.886425, 29.988001, 30.609926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.306469, 29.360149, 31.089903>,  <33.345909, 29.531279, 30.344826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.306469, 29.360149, 31.089903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.979172, 29.579617, 31.021267>,  <32.782795, 29.711296, 30.980085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.979172, 29.579617, 31.021267>,  <33.306469, 29.360149, 31.089903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.979172, 29.579617, 31.021267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532408, -0.610669, 0.586196,
		0.216844, 0.571005, 0.791790,
		-0.818242, 0.548669, -0.171588,
		32.733700, 29.744217, 30.969791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.028709, 29.552334, 31.705252>,  <33.306469, 29.360149, 31.089903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.028709, 29.552334, 31.705252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.716927, 29.572479, 31.455479>,  <32.529858, 29.584566, 31.305614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.716927, 29.572479, 31.455479>,  <33.028709, 29.552334, 31.705252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.716927, 29.572479, 31.455479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554669, -0.518802, 0.650528,
		-0.291194, 0.853409, 0.432317,
		-0.779454, 0.050363, -0.624432,
		32.483089, 29.587587, 31.268148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.386875, 29.585335, 32.159084>,  <33.028709, 29.552334, 31.705252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.386875, 29.585335, 32.159084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.238548, 29.498566, 31.797878>,  <32.149551, 29.446505, 31.581154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.238548, 29.498566, 31.797878>,  <32.386875, 29.585335, 32.159084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.238548, 29.498566, 31.797878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697374, -0.577099, 0.425002,
		-0.613324, 0.787337, 0.062721,
		-0.370816, -0.216924, -0.903017,
		32.127304, 29.433489, 31.526974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.672783, 29.751301, 32.155731>,  <32.386875, 29.585335, 32.159084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.672783, 29.751301, 32.155731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.729940, 29.476482, 31.870762>,  <31.764235, 29.311590, 31.699780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.729940, 29.476482, 31.870762>,  <31.672783, 29.751301, 32.155731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.729940, 29.476482, 31.870762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713025, -0.570678, 0.407335,
		-0.686423, 0.449770, -0.571429,
		0.142895, -0.687047, -0.712424,
		31.772808, 29.270369, 31.657034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.012173, 29.535179, 31.947037>,  <31.672783, 29.751301, 32.155731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.012173, 29.535179, 31.947037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.264206, 29.244297, 31.838104>,  <31.415426, 29.069767, 31.772745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.264206, 29.244297, 31.838104>,  <31.012173, 29.535179, 31.947037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.264206, 29.244297, 31.838104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576759, -0.673089, 0.462926,
		-0.519945, -0.134614, -0.843526,
		0.630085, -0.727206, -0.272329,
		31.453232, 29.026134, 31.756405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.564972, 28.988043, 31.957098>,  <31.012173, 29.535179, 31.947037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.564972, 28.988043, 31.957098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.936819, 28.840843, 31.949268>,  <31.159927, 28.752523, 31.944571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.936819, 28.840843, 31.949268>,  <30.564972, 28.988043, 31.957098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.936819, 28.840843, 31.949268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285680, -0.753184, 0.592537,
		-0.232798, -0.545242, -0.805305,
		0.929620, -0.368001, -0.019575,
		31.215704, 28.730442, 31.943396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.448107, 28.316475, 31.820524>,  <30.564972, 28.988043, 31.957098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.448107, 28.316475, 31.820524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.810757, 28.353649, 31.985157>,  <31.028347, 28.375954, 32.083935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.810757, 28.353649, 31.985157>,  <30.448107, 28.316475, 31.820524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.810757, 28.353649, 31.985157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248428, -0.670879, 0.698717,
		0.341056, -0.735721, -0.585146,
		0.906623, 0.092935, 0.411580,
		31.082743, 28.381529, 32.108631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.699400, 28.304607, 31.649231>,  <30.448107, 28.316475, 31.820524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.699400, 28.304607, 31.649231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.463121, 28.426071, 31.948261>,  <29.321354, 28.498949, 32.127678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.463121, 28.426071, 31.948261>,  <29.699400, 28.304607, 31.649231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.463121, 28.426071, 31.948261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104014, 0.890099, -0.443739,
		-0.800161, -0.339874, -0.494195,
		-0.590698, 0.303659, 0.747574,
		29.285912, 28.517170, 32.172535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.076056, 28.648346, 31.378937>,  <29.699400, 28.304607, 31.649231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.076056, 28.648346, 31.378937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.080425, 28.789188, 31.753296>,  <29.083048, 28.873693, 31.977911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.080425, 28.789188, 31.753296>,  <29.076056, 28.648346, 31.378937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.080425, 28.789188, 31.753296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245381, 0.908277, -0.338852,
		-0.969365, -0.225948, 0.096325,
		0.010926, 0.352108, 0.935896,
		29.083704, 28.894821, 32.034065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.411100, 28.937248, 31.524857>,  <29.076056, 28.648346, 31.378937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.411100, 28.937248, 31.524857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.659031, 29.116322, 31.782661>,  <28.807789, 29.223766, 31.937344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.659031, 29.116322, 31.782661>,  <28.411100, 28.937248, 31.524857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.659031, 29.116322, 31.782661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419746, 0.883079, -0.209724,
		-0.663045, -0.140539, 0.735268,
		0.619826, 0.447683, 0.644512,
		28.844978, 29.250626, 31.976015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.984253, 29.403799, 31.840202>,  <28.411100, 28.937248, 31.524857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.984253, 29.403799, 31.840202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.355902, 29.547001, 31.877224>,  <28.578890, 29.632921, 31.899437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.355902, 29.547001, 31.877224>,  <27.984253, 29.403799, 31.840202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.355902, 29.547001, 31.877224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308112, 0.887932, -0.341532,
		-0.204454, 0.288807, 0.935302,
		0.929121, 0.358005, 0.092556,
		28.634638, 29.654402, 31.904991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.966690, 29.991554, 32.189663>,  <27.984253, 29.403799, 31.840202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.966690, 29.991554, 32.189663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.322994, 30.044659, 32.015800>,  <28.536776, 30.076521, 31.911484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.322994, 30.044659, 32.015800>,  <27.966690, 29.991554, 32.189663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.322994, 30.044659, 32.015800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331136, 0.844643, -0.420627,
		0.311283, 0.518606, 0.796336,
		0.890759, 0.132762, -0.434652,
		28.590221, 30.084488, 31.885405>
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
