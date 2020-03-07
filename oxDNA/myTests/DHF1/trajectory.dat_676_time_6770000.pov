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
	<5.012076, 1.092443, 2.717080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.933615, 0.734316, 2.877046>,  <4.886538, 0.519440, 2.973025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.933615, 0.734316, 2.877046>,  <5.012076, 1.092443, 2.717080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.933615, 0.734316, 2.877046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567618, -0.228887, -0.790836,
		0.799584, -0.382123, -0.463301,
		-0.196153, -0.895317, 0.399914,
		4.874769, 0.465721, 2.997020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.027102, 0.619287, 2.137348>,  <5.012076, 1.092443, 2.717080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.027102, 0.619287, 2.137348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.778671, 0.490040, 2.422965>,  <4.629613, 0.412491, 2.594336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.778671, 0.490040, 2.422965>,  <5.027102, 0.619287, 2.137348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.778671, 0.490040, 2.422965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649103, -0.298523, -0.699678,
		0.439238, -0.898041, -0.024332,
		-0.621076, -0.323120, 0.714044,
		4.592349, 0.393104, 2.637178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.759784, -0.018895, 1.890376>,  <5.027102, 0.619287, 2.137348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.759784, -0.018895, 1.890376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.497454, 0.099035, 2.168361>,  <4.340055, 0.169793, 2.335151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.497454, 0.099035, 2.168361>,  <4.759784, -0.018895, 1.890376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.497454, 0.099035, 2.168361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744382, -0.099337, -0.660323,
		-0.125654, -0.950369, 0.284621,
		-0.655824, 0.294839, 0.694956,
		4.300706, 0.187483, 2.376849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.257333, -0.450488, 2.053710>,  <4.759784, -0.018895, 1.890376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.257333, -0.450488, 2.053710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.118275, -0.081764, 2.122308>,  <4.034840, 0.139470, 2.163467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.118275, -0.081764, 2.122308>,  <4.257333, -0.450488, 2.053710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.118275, -0.081764, 2.122308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755990, -0.167377, -0.632822,
		-0.554637, -0.349646, 0.755067,
		-0.347645, 0.921809, 0.171495,
		4.013981, 0.194779, 2.173757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.524762, -0.482545, 2.204484>,  <4.257333, -0.450488, 2.053710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.524762, -0.482545, 2.204484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.579420, -0.103846, 2.087869>,  <3.612215, 0.123374, 2.017900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.579420, -0.103846, 2.087869>,  <3.524762, -0.482545, 2.204484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.579420, -0.103846, 2.087869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817317, -0.058547, -0.573205,
		-0.559750, 0.316605, 0.765794,
		0.136645, 0.946749, -0.291538,
		3.620414, 0.180179, 2.000407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.869636, -0.069664, 2.371697>,  <3.524762, -0.482545, 2.204484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.869636, -0.069664, 2.371697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.073673, 0.110620, 2.078668>,  <3.196096, 0.218791, 1.902850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.073673, 0.110620, 2.078668>,  <2.869636, -0.069664, 2.371697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.073673, 0.110620, 2.078668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854525, 0.168580, -0.491291,
		-0.097933, 0.876607, 0.471136,
		0.510094, 0.450712, -0.732573,
		3.226701, 0.245834, 1.858896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.461920, 0.497509, 2.207958>,  <2.869636, -0.069664, 2.371697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.461920, 0.497509, 2.207958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.698393, 0.429502, 1.892591>,  <2.840276, 0.388699, 1.703372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.698393, 0.429502, 1.892591>,  <2.461920, 0.497509, 2.207958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.698393, 0.429502, 1.892591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783298, 0.111948, -0.611484,
		0.192224, 0.979062, -0.066992,
		0.591181, -0.170016, -0.788416,
		2.875747, 0.378498, 1.656067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.410635, 1.082728, 1.746817>,  <2.461920, 0.497509, 2.207958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.410635, 1.082728, 1.746817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.513653, 0.770266, 1.519320>,  <2.575464, 0.582788, 1.382822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.513653, 0.770266, 1.519320>,  <2.410635, 1.082728, 1.746817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.513653, 0.770266, 1.519320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710571, 0.245757, -0.659312,
		0.654797, 0.573934, -0.491772,
		0.257545, -0.781155, -0.568742,
		2.590916, 0.535919, 1.348698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.499627, -0.045893, 0.939119> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.725441, -0.078816, 0.610601>,  <1.860930, -0.098570, 0.413490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.725441, -0.078816, 0.610601>,  <1.499627, -0.045893, 0.939119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.725441, -0.078816, 0.610601> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821132, 0.157163, 0.548674,
		0.083916, -0.984137, 0.156311,
		0.564536, -0.082310, -0.821294,
		1.894802, -0.103509, 0.364213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.957466, -0.562354, 1.095197>,  <1.499627, -0.045893, 0.939119>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.957466, -0.562354, 1.095197> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.097282, -0.283704, 0.844587>,  <2.181172, -0.116515, 0.694220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.097282, -0.283704, 0.844587>,  <1.957466, -0.562354, 1.095197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.097282, -0.283704, 0.844587> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772792, 0.163718, 0.613179,
		0.529729, -0.698506, -0.481120,
		0.349541, 0.696624, -0.626527,
		2.202145, -0.074717, 0.656629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.630736, -0.702124, 0.710076>,  <1.957466, -0.562354, 1.095197>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.630736, -0.702124, 0.710076> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.565334, -0.312727, 0.774049>,  <2.526093, -0.079089, 0.812433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.565334, -0.312727, 0.774049>,  <2.630736, -0.702124, 0.710076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.565334, -0.312727, 0.774049> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866884, 0.064386, 0.494334,
		0.470933, 0.219469, -0.854433,
		-0.163505, 0.973493, 0.159932,
		2.516283, -0.020679, 0.822028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.374280, -0.385928, 0.714253>,  <2.630736, -0.702124, 0.710076>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.374280, -0.385928, 0.714253> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.149384, -0.082897, 0.846895>,  <3.014446, 0.098922, 0.926480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.149384, -0.082897, 0.846895>,  <3.374280, -0.385928, 0.714253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.149384, -0.082897, 0.846895> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777111, 0.346873, 0.525146,
		0.282815, 0.552951, -0.783748,
		-0.562241, 0.757578, 0.331604,
		2.980711, 0.144376, 0.946376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.694522, 0.222465, 0.593956>,  <3.374280, -0.385928, 0.714253>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.694522, 0.222465, 0.593956> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.451729, 0.280593, 0.906481>,  <3.306053, 0.315470, 1.093997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.451729, 0.280593, 0.906481>,  <3.694522, 0.222465, 0.593956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.451729, 0.280593, 0.906481> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793705, 0.160388, 0.586778,
		-0.040042, 0.976298, -0.212695,
		-0.606984, 0.145321, 0.781314,
		3.269634, 0.324190, 1.140876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.824213, 0.897815, 0.945640>,  <3.694522, 0.222465, 0.593956>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.824213, 0.897815, 0.945640> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.645866, 0.674926, 1.225842>,  <3.538859, 0.541193, 1.393964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.645866, 0.674926, 1.225842>,  <3.824213, 0.897815, 0.945640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.645866, 0.674926, 1.225842> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696127, 0.276099, 0.662704,
		-0.562682, 0.783118, 0.264794,
		-0.445866, -0.557222, 0.700505,
		3.512107, 0.507759, 1.435994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.834269, 1.324106, 1.507298>,  <3.824213, 0.897815, 0.945640>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.834269, 1.324106, 1.507298> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.750515, 0.973202, 1.680074>,  <3.700262, 0.762659, 1.783739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.750515, 0.973202, 1.680074>,  <3.834269, 1.324106, 1.507298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.750515, 0.973202, 1.680074> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659063, 0.199708, 0.725088,
		-0.722353, 0.436499, 0.536353,
		-0.209386, -0.877260, 0.431940,
		3.687699, 0.710024, 1.809656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.717896, 1.457549, 2.261190>,  <3.834269, 1.324106, 1.507298>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.717896, 1.457549, 2.261190> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.833790, 1.078792, 2.205405>,  <3.903326, 0.851538, 2.171933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.833790, 1.078792, 2.205405>,  <3.717896, 1.457549, 2.261190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.833790, 1.078792, 2.205405> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838182, 0.180679, 0.514593,
		-0.462066, -0.265991, 0.846016,
		0.289735, -0.946892, -0.139463,
		3.920710, 0.794725, 2.163566>
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
