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
	right 1.6 * <0.99995, 0, 0.00999983>
	location <54.4867, 55, 106.329>
	look_at <55, 55, 55.0001>
	direction <0.513302, 0, -51.3289>
	angle 67.0682
}


# declare cpy_camera_pos = <54.4867, 55, 106.329>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 88
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.98995, -1, 1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.98995, 1, -1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<36.835167, 53.270679, 49.525928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.885628, 52.874054, 49.513966>,  <36.915905, 52.636078, 49.506786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.885628, 52.874054, 49.513966>,  <36.835167, 53.270679, 49.525928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.885628, 52.874054, 49.513966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985698, 0.128686, -0.108809,
		0.111740, -0.015757, 0.993613,
		0.126149, -0.991560, -0.029911,
		36.923473, 52.576588, 49.504993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.327923, 53.032539, 50.067009>,  <36.835167, 53.270679, 49.525928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.327923, 53.032539, 50.067009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.326283, 52.771484, 49.763947>,  <37.325298, 52.614849, 49.582108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.326283, 52.771484, 49.763947>,  <37.327923, 53.032539, 50.067009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.326283, 52.771484, 49.763947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991107, 0.098123, -0.089883,
		0.133005, -0.751286, 0.646435,
		-0.004098, -0.652641, -0.757656,
		37.325054, 52.575691, 49.536648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.846058, 52.449181, 50.215832>,  <37.327923, 53.032539, 50.067009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.846058, 52.449181, 50.215832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.780994, 52.532593, 49.830074>,  <37.741959, 52.582638, 49.598618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.780994, 52.532593, 49.830074>,  <37.846058, 52.449181, 50.215832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.780994, 52.532593, 49.830074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979159, 0.154590, -0.131718,
		0.121620, -0.965722, -0.229325,
		-0.162654, 0.208527, -0.964396,
		37.732197, 52.595150, 49.540756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.123257, 51.953354, 49.744377>,  <37.846058, 52.449181, 50.215832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.123257, 51.953354, 49.744377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.119766, 52.332161, 49.615952>,  <38.117672, 52.559444, 49.538895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.119766, 52.332161, 49.615952>,  <38.123257, 51.953354, 49.744377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.119766, 52.332161, 49.615952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997483, 0.030838, 0.063854,
		0.070372, -0.319700, -0.944902,
		-0.008725, 0.947017, -0.321065,
		38.117149, 52.616264, 49.519630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.763233, 52.090805, 49.242641>,  <38.123257, 51.953354, 49.744377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.763233, 52.090805, 49.242641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.649143, 52.452450, 49.369904>,  <38.580688, 52.669437, 49.446262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.649143, 52.452450, 49.369904>,  <38.763233, 52.090805, 49.242641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.649143, 52.452450, 49.369904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958007, 0.258694, 0.123692,
		0.029527, 0.340077, -0.939934,
		-0.285220, 0.904116, 0.318157,
		38.563576, 52.723686, 49.465351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.128365, 52.572433, 48.794041>,  <38.763233, 52.090805, 49.242641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.128365, 52.572433, 48.794041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.064335, 52.704018, 49.166313>,  <39.025917, 52.782967, 49.389675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.064335, 52.704018, 49.166313>,  <39.128365, 52.572433, 48.794041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.064335, 52.704018, 49.166313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984711, 0.118837, 0.127363,
		-0.068702, 0.936837, -0.342951,
		-0.160074, 0.328958, 0.930679,
		39.016312, 52.802704, 49.445518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.211887, 53.287453, 48.756191>,  <39.128365, 52.572433, 48.794041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.211887, 53.287453, 48.756191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.297413, 53.107899, 49.103245>,  <39.348728, 53.000168, 49.311478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.297413, 53.107899, 49.103245>,  <39.211887, 53.287453, 48.756191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.297413, 53.107899, 49.103245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924535, 0.379806, -0.031341,
		-0.315464, 0.808857, 0.496218,
		0.213817, -0.448884, 0.867632,
		39.361557, 52.973232, 49.363533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.350937, 53.827583, 49.112900>,  <39.211887, 53.287453, 48.756191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.350937, 53.827583, 49.112900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.622261, 53.543365, 49.187752>,  <39.785057, 53.372833, 49.232662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.622261, 53.543365, 49.187752>,  <39.350937, 53.827583, 49.112900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.622261, 53.543365, 49.187752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724014, 0.602918, -0.335101,
		0.125282, 0.362787, 0.923412,
		0.678312, -0.710546, 0.187128,
		39.825756, 53.330200, 49.243889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.798550, 54.120419, 49.645271>,  <39.350937, 53.827583, 49.112900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.798550, 54.120419, 49.645271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.959156, 53.853420, 49.394440>,  <40.055519, 53.693222, 49.243942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.959156, 53.853420, 49.394440>,  <39.798550, 54.120419, 49.645271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.959156, 53.853420, 49.394440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770311, 0.616486, -0.162991,
		0.495382, -0.417602, 0.761712,
		0.401520, -0.667498, -0.627079,
		40.079613, 53.653172, 49.206314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.481785, 53.843842, 49.871426>,  <39.798550, 54.120419, 49.645271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.481785, 53.843842, 49.871426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.420277, 53.883755, 49.478203>,  <40.383373, 53.907703, 49.242268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.420277, 53.883755, 49.478203>,  <40.481785, 53.843842, 49.871426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.420277, 53.883755, 49.478203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772059, 0.633034, -0.056514,
		0.616669, -0.767667, -0.174378,
		-0.153771, 0.099780, -0.983056,
		40.374146, 53.913689, 49.183285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.071079, 53.634239, 49.438416>,  <40.481785, 53.843842, 49.871426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.071079, 53.634239, 49.438416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.859169, 53.906723, 49.236313>,  <40.732021, 54.070213, 49.115051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.859169, 53.906723, 49.236313>,  <41.071079, 53.634239, 49.438416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.859169, 53.906723, 49.236313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828449, 0.543246, -0.136221,
		0.181684, -0.490749, -0.852148,
		-0.529776, 0.681212, -0.505259,
		40.700237, 54.111088, 49.084736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.576675, 53.607388, 48.918423>,  <41.071079, 53.634239, 49.438416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.576675, 53.607388, 48.918423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.825653, 53.639442, 48.607002>,  <41.975040, 53.658676, 48.420151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.825653, 53.639442, 48.607002>,  <41.576675, 53.607388, 48.918423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.825653, 53.639442, 48.607002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739315, 0.266256, 0.618482,
		0.256846, -0.960567, 0.106497,
		0.622449, 0.080120, -0.778548,
		42.012386, 53.663483, 48.373436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.233444, 53.275452, 49.034805>,  <41.576675, 53.607388, 48.918423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.233444, 53.275452, 49.034805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.299072, 53.563801, 48.765461>,  <42.338448, 53.736813, 48.603855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.299072, 53.563801, 48.765461>,  <42.233444, 53.275452, 49.034805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.299072, 53.563801, 48.765461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746732, 0.355277, 0.562290,
		0.644572, -0.595076, -0.480012,
		0.164068, 0.720876, -0.673364,
		42.348293, 53.780064, 48.563454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.950699, 53.120602, 48.641869>,  <42.233444, 53.275452, 49.034805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.950699, 53.120602, 48.641869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.816006, 53.493023, 48.698093>,  <42.735191, 53.716476, 48.731831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.816006, 53.493023, 48.698093>,  <42.950699, 53.120602, 48.641869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.816006, 53.493023, 48.698093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864272, 0.246367, 0.438563,
		0.373694, 0.269164, -0.887639,
		-0.336730, 0.931050, 0.140565,
		42.714985, 53.772339, 48.740265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.493179, 53.502563, 48.409561>,  <42.950699, 53.120602, 48.641869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.493179, 53.502563, 48.409561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.291080, 53.728798, 48.670280>,  <43.169819, 53.864536, 48.826714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.291080, 53.728798, 48.670280>,  <43.493179, 53.502563, 48.409561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.291080, 53.728798, 48.670280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854262, 0.220746, 0.470646,
		0.122308, 0.794599, -0.594687,
		-0.505250, 0.565582, 0.651797,
		43.139507, 53.898472, 48.865818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.026917, 54.155987, 48.526031>,  <43.493179, 53.502563, 48.409561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.026917, 54.155987, 48.526031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.771374, 54.117981, 48.831406>,  <43.618046, 54.095177, 49.014629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.771374, 54.117981, 48.831406>,  <44.026917, 54.155987, 48.526031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.771374, 54.117981, 48.831406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694948, 0.354404, 0.625656,
		-0.330009, 0.930253, -0.160387,
		-0.638860, -0.095011, 0.763434,
		43.579716, 54.089478, 49.060436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.980827, 54.841366, 48.834286>,  <44.026917, 54.155987, 48.526031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.980827, 54.841366, 48.834286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.980663, 54.529171, 49.084354>,  <43.980564, 54.341854, 49.234394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.980663, 54.529171, 49.084354>,  <43.980827, 54.841366, 48.834286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.980663, 54.529171, 49.084354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773004, 0.396363, 0.495339,
		-0.634401, 0.483463, 0.603158,
		-0.000409, -0.780487, 0.625172,
		43.980541, 54.295025, 49.271908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.743023, 54.679344, 48.789661>,  <43.980827, 54.841366, 48.834286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.743023, 54.679344, 48.789661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.041245, 54.499634, 48.986557>,  <45.220177, 54.391808, 49.104694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.041245, 54.499634, 48.986557>,  <44.743023, 54.679344, 48.789661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.041245, 54.499634, 48.986557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348726, 0.892412, 0.286342,
		-0.567923, -0.041828, 0.822018,
		0.745555, -0.449280, 0.492235,
		45.264912, 54.364849, 49.134228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.749660, 54.640705, 49.581547>,  <44.743023, 54.679344, 48.789661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.749660, 54.640705, 49.581547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.104813, 54.708050, 49.410286>,  <45.317905, 54.748459, 49.307529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.104813, 54.708050, 49.410286>,  <44.749660, 54.640705, 49.581547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.104813, 54.708050, 49.410286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024321, 0.912152, 0.409131,
		0.459423, -0.373674, 0.805791,
		0.887885, 0.168366, -0.428151,
		45.371178, 54.758560, 49.281841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.268444, 54.670326, 50.042206>,  <44.749660, 54.640705, 49.581547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.268444, 54.670326, 50.042206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.356300, 54.899750, 49.726540>,  <45.409012, 55.037403, 49.537140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.356300, 54.899750, 49.726540>,  <45.268444, 54.670326, 50.042206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.356300, 54.899750, 49.726540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040665, 0.802836, 0.594811,
		0.974734, -0.162734, 0.153008,
		0.219637, 0.573560, -0.789169,
		45.422192, 55.071819, 49.489788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.353306, 53.937450, 50.391212>,  <45.268444, 54.670326, 50.042206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.353306, 53.937450, 50.391212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.403748, 53.695671, 50.705853>,  <45.434013, 53.550602, 50.894634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.403748, 53.695671, 50.705853>,  <45.353306, 53.937450, 50.391212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.403748, 53.695671, 50.705853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018707, 0.794235, 0.607323,
		-0.991840, -0.061871, 0.111465,
		0.126105, -0.604453, 0.786597,
		45.441578, 53.514336, 50.941830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.975773, 54.341545, 50.865482>,  <45.353306, 53.937450, 50.391212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.975773, 54.341545, 50.865482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.225136, 54.082199, 51.040287>,  <45.374756, 53.926590, 51.145172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.225136, 54.082199, 51.040287>,  <44.975773, 54.341545, 50.865482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.225136, 54.082199, 51.040287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152693, 0.649107, 0.745215,
		-0.766841, -0.397845, 0.503661,
		0.623410, -0.648367, 0.437014,
		45.412159, 53.887688, 51.171391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.744072, 54.339993, 51.546337>,  <44.975773, 54.341545, 50.865482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.744072, 54.339993, 51.546337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.127106, 54.233349, 51.502609>,  <45.356926, 54.169365, 51.476372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.127106, 54.233349, 51.502609>,  <44.744072, 54.339993, 51.546337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.127106, 54.233349, 51.502609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271704, 0.709095, 0.650662,
		-0.095949, -0.652768, 0.751457,
		0.957586, -0.266605, -0.109323,
		45.414383, 54.153366, 51.469810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.975262, 54.146408, 52.046806>,  <44.744072, 54.339993, 51.546337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.975262, 54.146408, 52.046806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.278484, 54.310089, 51.843670>,  <45.460419, 54.408298, 51.721786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.278484, 54.310089, 51.843670>,  <44.975262, 54.146408, 52.046806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.278484, 54.310089, 51.843670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056177, 0.816747, 0.574254,
		0.649765, -0.406788, 0.642129,
		0.758057, 0.409203, -0.507841,
		45.505901, 54.432850, 51.691319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.482815, 54.447384, 52.487125>,  <44.975262, 54.146408, 52.046806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.482815, 54.447384, 52.487125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.548515, 54.626202, 52.135403>,  <45.587936, 54.733494, 51.924370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.548515, 54.626202, 52.135403>,  <45.482815, 54.447384, 52.487125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.548515, 54.626202, 52.135403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281163, 0.833214, 0.476133,
		0.945499, -0.325433, 0.011164,
		0.164251, 0.447044, -0.879302,
		45.597790, 54.760315, 51.871613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.305065, 54.611347, 52.247150>,  <45.482815, 54.447384, 52.487125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.305065, 54.611347, 52.247150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.029713, 54.877136, 52.130798>,  <45.864502, 55.036610, 52.060986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.029713, 54.877136, 52.130798>,  <46.305065, 54.611347, 52.247150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.029713, 54.877136, 52.130798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510719, 0.728774, 0.456130,
		0.515073, 0.165431, -0.841031,
		-0.688379, 0.664471, -0.290883,
		45.823200, 55.076477, 52.043533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.696606, 55.178585, 52.523746>,  <46.305065, 54.611347, 52.247150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.696606, 55.178585, 52.523746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.352276, 55.312744, 52.370651>,  <46.145676, 55.393238, 52.278793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.352276, 55.312744, 52.370651>,  <46.696606, 55.178585, 52.523746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.352276, 55.312744, 52.370651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204841, 0.916837, 0.342711,
		0.465850, 0.216614, -0.857940,
		-0.860827, 0.335393, -0.382737,
		46.094028, 55.413361, 52.255829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.783852, 55.684685, 52.008411>,  <46.696606, 55.178585, 52.523746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.783852, 55.684685, 52.008411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.426414, 55.735374, 52.180656>,  <46.211952, 55.765789, 52.284004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.426414, 55.735374, 52.180656>,  <46.783852, 55.684685, 52.008411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.426414, 55.735374, 52.180656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241396, 0.944460, 0.222986,
		-0.378441, 0.303208, -0.874555,
		-0.893594, 0.126727, 0.430616,
		46.158337, 55.773392, 52.309841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.774414, 56.422142, 52.095985>,  <46.783852, 55.684685, 52.008411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.774414, 56.422142, 52.095985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.413605, 56.296173, 52.214092>,  <46.197121, 56.220592, 52.284954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.413605, 56.296173, 52.214092>,  <46.774414, 56.422142, 52.095985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.413605, 56.296173, 52.214092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260113, 0.942360, 0.210471,
		-0.344527, 0.113048, -0.931945,
		-0.902021, -0.314924, 0.295263,
		46.142998, 56.201694, 52.302670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.558647, 56.191036, 52.185028>,  <46.774414, 56.422142, 52.095985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.558647, 56.191036, 52.185028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.426197, 56.566078, 52.227470>,  <47.346725, 56.791103, 52.252934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.426197, 56.566078, 52.227470>,  <47.558647, 56.191036, 52.185028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.426197, 56.566078, 52.227470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457006, 0.257733, -0.851304,
		-0.825531, -0.233400, -0.513832,
		-0.331126, 0.937602, 0.106101,
		47.326859, 56.847359, 52.259300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.336472, 56.507359, 52.348362>,  <47.558647, 56.191036, 52.185028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.336472, 56.507359, 52.348362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.470692, 56.139889, 52.431728>,  <48.551224, 55.919407, 52.481750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.470692, 56.139889, 52.431728>,  <48.336472, 56.507359, 52.348362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.470692, 56.139889, 52.431728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405149, -0.059000, -0.912345,
		0.850448, 0.390577, 0.352404,
		0.335549, -0.918678, 0.208418,
		48.571358, 55.864285, 52.494255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.120083, 56.393982, 52.312836>,  <48.336472, 56.507359, 52.348362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.120083, 56.393982, 52.312836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.897789, 56.070038, 52.237698>,  <48.764412, 55.875671, 52.192616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.897789, 56.070038, 52.237698>,  <49.120083, 56.393982, 52.312836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.897789, 56.070038, 52.237698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353833, -0.025947, -0.934948,
		0.752305, -0.586046, 0.300976,
		-0.555732, -0.809862, -0.187843,
		48.731068, 55.827080, 52.181343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.478951, 56.085590, 51.799843>,  <49.120083, 56.393982, 52.312836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.478951, 56.085590, 51.799843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.123108, 55.902924, 51.802803>,  <48.909603, 55.793324, 51.804581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.123108, 55.902924, 51.802803>,  <49.478951, 56.085590, 51.799843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.123108, 55.902924, 51.802803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002713, -0.010922, -0.999937,
		0.456721, -0.889570, 0.008477,
		-0.889606, -0.456669, 0.007401,
		48.856228, 55.765923, 51.805023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.409565, 55.736179, 51.093857>,  <49.478951, 56.085590, 51.799843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.409565, 55.736179, 51.093857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.718582, 55.940239, 50.942638>,  <49.903992, 56.062675, 50.851910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.718582, 55.940239, 50.942638>,  <49.409565, 55.736179, 51.093857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.718582, 55.940239, 50.942638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628779, -0.531800, 0.567297,
		0.088366, -0.675968, -0.731614,
		0.772547, 0.510153, -0.378041,
		49.950348, 56.093285, 50.829227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.929874, 55.233067, 50.861103>,  <49.409565, 55.736179, 51.093857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.929874, 55.233067, 50.861103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.049568, 55.587643, 51.002342>,  <50.121384, 55.800388, 51.087086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.049568, 55.587643, 51.002342>,  <49.929874, 55.233067, 50.861103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.049568, 55.587643, 51.002342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463700, -0.458516, 0.758120,
		0.833930, -0.063125, -0.548248,
		0.299237, 0.886441, 0.353099,
		50.139339, 55.853577, 51.108273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.661308, 55.231171, 50.897690>,  <49.929874, 55.233067, 50.861103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.661308, 55.231171, 50.897690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.516632, 55.470417, 51.183750>,  <50.429825, 55.613964, 51.355385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.516632, 55.470417, 51.183750>,  <50.661308, 55.231171, 50.897690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.516632, 55.470417, 51.183750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533930, -0.495934, 0.684813,
		0.764262, 0.629533, -0.139973,
		-0.361694, 0.598112, 0.715150,
		50.408123, 55.649849, 51.398296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.230984, 55.323898, 51.383839>,  <50.661308, 55.231171, 50.897690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.230984, 55.323898, 51.383839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.910484, 55.478680, 51.566383>,  <50.718185, 55.571548, 51.675911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.910484, 55.478680, 51.566383>,  <51.230984, 55.323898, 51.383839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.910484, 55.478680, 51.566383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274896, -0.439391, 0.855200,
		0.531444, 0.810681, 0.245689,
		-0.801248, 0.386952, 0.456365,
		50.670109, 55.594765, 51.703293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.321774, 55.624954, 52.049675>,  <51.230984, 55.323898, 51.383839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.321774, 55.624954, 52.049675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.940212, 55.505005, 52.054405>,  <50.711273, 55.433033, 52.057243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.940212, 55.505005, 52.054405>,  <51.321774, 55.624954, 52.049675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.940212, 55.505005, 52.054405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151568, -0.447385, 0.881404,
		-0.259021, 0.842568, 0.472215,
		-0.953905, -0.299875, 0.011824,
		50.654041, 55.415043, 52.057953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.044235, 55.717854, 52.716534>,  <51.321774, 55.624954, 52.049675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.044235, 55.717854, 52.716534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.838196, 55.410614, 52.564377>,  <50.714573, 55.226269, 52.473083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.838196, 55.410614, 52.564377>,  <51.044235, 55.717854, 52.716534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.838196, 55.410614, 52.564377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111084, -0.499871, 0.858947,
		-0.849905, 0.400184, 0.342805,
		-0.515095, -0.768103, -0.380388,
		50.683666, 55.180183, 52.450260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.467560, 55.531719, 53.165428>,  <51.044235, 55.717854, 52.716534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.467560, 55.531719, 53.165428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.577469, 55.198471, 52.973427>,  <50.643414, 54.998520, 52.858227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.577469, 55.198471, 52.973427>,  <50.467560, 55.531719, 53.165428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.577469, 55.198471, 52.973427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172762, -0.448315, 0.877022,
		-0.945860, -0.323910, 0.020747,
		0.274775, -0.833125, -0.480002,
		50.659901, 54.948532, 52.829426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.045208, 54.962036, 53.318840>,  <50.467560, 55.531719, 53.165428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.045208, 54.962036, 53.318840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.437382, 54.901131, 53.268951>,  <50.672688, 54.864586, 53.239017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.437382, 54.901131, 53.268951>,  <50.045208, 54.962036, 53.318840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.437382, 54.901131, 53.268951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009369, -0.596861, 0.802290,
		-0.196602, -0.787765, -0.583759,
		0.980439, -0.152262, -0.124725,
		50.731514, 54.855453, 53.231533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.291637, 54.357285, 53.044197>,  <50.045208, 54.962036, 53.318840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.291637, 54.357285, 53.044197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.565609, 54.503815, 53.296127>,  <50.729992, 54.591732, 53.447285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.565609, 54.503815, 53.296127>,  <50.291637, 54.357285, 53.044197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.565609, 54.503815, 53.296127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090984, -0.900655, 0.424903,
		0.722905, -0.233726, -0.650216,
		0.684931, 0.366324, 0.629822,
		50.771088, 54.613712, 53.485073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.053776, 54.214069, 53.855858>,  <50.291637, 54.357285, 53.044197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.053776, 54.214069, 53.855858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.304718, 54.390717, 54.112419>,  <50.455284, 54.496704, 54.266357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.304718, 54.390717, 54.112419>,  <50.053776, 54.214069, 53.855858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.304718, 54.390717, 54.112419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032676, -0.837851, 0.544920,
		0.778049, -0.320899, -0.540059,
		0.627353, 0.441621, 0.641404,
		50.492924, 54.523205, 54.304840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.608494, 53.721893, 53.973835>,  <50.053776, 54.214069, 53.855858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.608494, 53.721893, 53.973835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.658173, 53.994995, 54.261841>,  <50.687981, 54.158855, 54.434643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.658173, 53.994995, 54.261841>,  <50.608494, 53.721893, 53.973835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.658173, 53.994995, 54.261841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365495, -0.706089, 0.606507,
		0.922490, 0.187834, -0.337239,
		0.124198, 0.682756, 0.720013,
		50.695431, 54.199821, 54.477844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.317753, 53.719124, 54.318645>,  <50.608494, 53.721893, 53.973835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.317753, 53.719124, 54.318645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.046642, 53.845222, 54.584351>,  <50.883976, 53.920879, 54.743774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.046642, 53.845222, 54.584351>,  <51.317753, 53.719124, 54.318645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.046642, 53.845222, 54.584351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351606, -0.654476, 0.669353,
		0.645754, 0.687228, 0.332745,
		-0.677772, 0.315243, 0.664264,
		50.843311, 53.939796, 54.783630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.402157, 54.022343, 53.597553>,  <51.317753, 53.719124, 54.318645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.402157, 54.022343, 53.597553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.427597, 53.823936, 53.251160>,  <51.442860, 53.704891, 53.043324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.427597, 53.823936, 53.251160>,  <51.402157, 54.022343, 53.597553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.427597, 53.823936, 53.251160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657344, -0.673730, 0.337618,
		-0.750901, 0.547775, -0.368903,
		0.063602, -0.496015, -0.865982,
		51.446678, 53.675133, 52.991364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.102894, 53.807499, 53.703571>,  <51.402157, 54.022343, 53.597553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.102894, 53.807499, 53.703571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.260719, 53.451778, 53.796059>,  <52.355415, 53.238346, 53.851551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.260719, 53.451778, 53.796059>,  <52.102894, 53.807499, 53.703571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.260719, 53.451778, 53.796059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412958, -0.053172, -0.909196,
		0.820845, 0.454218, 0.346265,
		0.394562, -0.889302, 0.231219,
		52.379089, 53.184986, 53.865425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.884357, 53.819935, 53.597794>,  <52.102894, 53.807499, 53.703571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.884357, 53.819935, 53.597794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.788929, 53.431576, 53.589310>,  <52.731674, 53.198563, 53.584221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.788929, 53.431576, 53.589310>,  <52.884357, 53.819935, 53.597794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.788929, 53.431576, 53.589310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589371, -0.127395, -0.797755,
		0.771833, -0.202819, 0.602609,
		-0.238569, -0.970894, -0.021208,
		52.717358, 53.140308, 53.582947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.685410, 53.854950, 53.635048>,  <52.884357, 53.819935, 53.597794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.685410, 53.854950, 53.635048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.067444, 53.917850, 53.735519>,  <54.296665, 53.955593, 53.795803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.067444, 53.917850, 53.735519>,  <53.685410, 53.854950, 53.635048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.067444, 53.917850, 53.735519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223920, -0.172218, 0.959271,
		0.194107, -0.972426, -0.129270,
		0.955082, 0.157255, 0.251174,
		54.353970, 53.965027, 53.810871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.008827, 53.238735, 54.030525>,  <53.685410, 53.854950, 53.635048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.008827, 53.238735, 54.030525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.126991, 53.610237, 54.120102>,  <54.197891, 53.833138, 54.173847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.126991, 53.610237, 54.120102>,  <54.008827, 53.238735, 54.030525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.126991, 53.610237, 54.120102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353361, -0.111563, 0.928811,
		0.887620, -0.353511, 0.295229,
		0.295409, 0.928754, 0.223943,
		54.215614, 53.888863, 54.187286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.737724, 53.352356, 53.944046>,  <54.008827, 53.238735, 54.030525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.737724, 53.352356, 53.944046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.637283, 52.968437, 53.893867>,  <54.577019, 52.738087, 53.863762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.637283, 52.968437, 53.893867>,  <54.737724, 53.352356, 53.944046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.637283, 52.968437, 53.893867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134836, 0.163015, -0.977367,
		0.958522, -0.228509, -0.170349,
		-0.251106, -0.959797, -0.125442,
		54.561951, 52.680496, 53.856236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.028152, 53.060005, 53.446751>,  <54.737724, 53.352356, 53.944046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.028152, 53.060005, 53.446751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.687752, 52.853146, 53.410187>,  <54.483513, 52.729031, 53.388248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.687752, 52.853146, 53.410187>,  <55.028152, 53.060005, 53.446751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.687752, 52.853146, 53.410187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012607, 0.194134, -0.980894,
		0.525018, -0.833586, -0.171727,
		-0.850998, -0.517152, -0.091415,
		54.432453, 52.698002, 53.382763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.601715, 52.583977, 53.614166>,  <55.028152, 53.060005, 53.446751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.601715, 52.583977, 53.614166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.351746, 52.737873, 53.885887>,  <55.201763, 52.830212, 54.048920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.351746, 52.737873, 53.885887>,  <55.601715, 52.583977, 53.614166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.351746, 52.737873, 53.885887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704166, -0.097907, 0.703253,
		0.337076, 0.917819, -0.209735,
		-0.624925, 0.384738, 0.679298,
		55.164268, 52.853294, 54.089676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.813393, 53.169418, 53.912819>,  <55.601715, 52.583977, 53.614166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.813393, 53.169418, 53.912819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.581490, 52.981884, 54.179375>,  <55.442348, 52.869362, 54.339310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.581490, 52.981884, 54.179375>,  <55.813393, 53.169418, 53.912819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.581490, 52.981884, 54.179375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773854, -0.060850, 0.630435,
		-0.255022, 0.881186, 0.398090,
		-0.579754, -0.468838, 0.666391,
		55.407562, 52.841232, 54.379292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.817635, 53.510658, 54.654903>,  <55.813393, 53.169418, 53.912819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.817635, 53.510658, 54.654903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.759682, 53.115395, 54.675110>,  <55.724911, 52.878235, 54.687233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.759682, 53.115395, 54.675110>,  <55.817635, 53.510658, 54.654903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.759682, 53.115395, 54.675110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787602, -0.084266, 0.610395,
		-0.598910, 0.128223, 0.790485,
		-0.144878, -0.988159, 0.050521,
		55.716217, 52.818947, 54.690266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.925171, 53.251637, 55.359352>,  <55.817635, 53.510658, 54.654903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.925171, 53.251637, 55.359352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.997398, 52.933933, 55.127304>,  <56.040737, 52.743309, 54.988075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.997398, 52.933933, 55.127304>,  <55.925171, 53.251637, 55.359352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.997398, 52.933933, 55.127304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904687, -0.097303, 0.414818,
		-0.385922, -0.599733, 0.700988,
		0.180572, -0.794262, -0.580122,
		56.051571, 52.695656, 54.953266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.179726, 52.782047, 55.744328>,  <55.925171, 53.251637, 55.359352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.179726, 52.782047, 55.744328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.331749, 52.741909, 55.376526>,  <56.422962, 52.717827, 55.155846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.331749, 52.741909, 55.376526>,  <56.179726, 52.782047, 55.744328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.331749, 52.741909, 55.376526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902480, -0.177621, 0.392404,
		-0.202700, -0.978969, 0.023057,
		0.380056, -0.100349, -0.919504,
		56.445766, 52.711803, 55.100674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.758373, 52.476357, 55.846397>,  <56.179726, 52.782047, 55.744328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.758373, 52.476357, 55.846397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.864075, 52.589237, 55.477501>,  <56.927494, 52.656967, 55.256161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.864075, 52.589237, 55.477501>,  <56.758373, 52.476357, 55.846397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.864075, 52.589237, 55.477501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963806, -0.042211, 0.263243,
		0.035359, -0.958426, -0.283144,
		0.264250, 0.282204, -0.922243,
		56.943348, 52.673897, 55.200829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.252720, 52.038857, 55.439655>,  <56.758373, 52.476357, 55.846397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.252720, 52.038857, 55.439655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.312622, 52.419403, 55.331963>,  <57.348564, 52.647732, 55.267349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.312622, 52.419403, 55.331963>,  <57.252720, 52.038857, 55.439655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.312622, 52.419403, 55.331963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879418, -0.003713, 0.476036,
		0.451883, -0.308054, -0.837200,
		0.149753, 0.951362, -0.269230,
		57.357548, 52.704811, 55.251194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.863297, 52.128090, 55.001244>,  <57.252720, 52.038857, 55.439655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.863297, 52.128090, 55.001244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.811920, 52.469582, 55.203094>,  <57.781094, 52.674477, 55.324203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.811920, 52.469582, 55.203094>,  <57.863297, 52.128090, 55.001244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.811920, 52.469582, 55.203094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892757, -0.122039, 0.433695,
		0.431842, 0.506214, -0.746498,
		-0.128440, 0.853729, 0.504628,
		57.773388, 52.725700, 55.354485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.408470, 52.550648, 54.793602>,  <57.863297, 52.128090, 55.001244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.408470, 52.550648, 54.793602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.262657, 52.667355, 55.147324>,  <58.175167, 52.737377, 55.359554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.262657, 52.667355, 55.147324>,  <58.408470, 52.550648, 54.793602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.262657, 52.667355, 55.147324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860367, -0.257738, 0.439705,
		0.356207, 0.921111, -0.157069,
		-0.364535, 0.291763, 0.884301,
		58.153297, 52.754883, 55.412613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.813095, 52.997982, 55.186333>,  <58.408470, 52.550648, 54.793602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.813095, 52.997982, 55.186333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.613647, 52.783401, 55.458687>,  <58.493980, 52.654652, 55.622097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.613647, 52.783401, 55.458687>,  <58.813095, 52.997982, 55.186333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.613647, 52.783401, 55.458687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847839, -0.138335, 0.511890,
		-0.180415, 0.832516, 0.523801,
		-0.498617, -0.536452, 0.680882,
		58.464062, 52.622467, 55.662952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.935558, 53.335026, 55.768772>,  <58.813095, 52.997982, 55.186333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.935558, 53.335026, 55.768772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.941536, 52.938610, 55.821877>,  <58.945122, 52.700760, 55.853741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.941536, 52.938610, 55.821877>,  <58.935558, 53.335026, 55.768772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.941536, 52.938610, 55.821877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961822, 0.050532, 0.268970,
		-0.273268, 0.123678, 0.953954,
		0.014940, -0.991035, 0.132765,
		58.946018, 52.641300, 55.861706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.093494, 53.133831, 56.484764>,  <58.935558, 53.335026, 55.768772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.093494, 53.133831, 56.484764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.233101, 52.855331, 56.233871>,  <59.316864, 52.688232, 56.083336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.233101, 52.855331, 56.233871>,  <59.093494, 53.133831, 56.484764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.233101, 52.855331, 56.233871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910672, 0.094114, 0.402267,
		-0.221047, -0.711602, 0.666903,
		0.349019, -0.696251, -0.627233,
		59.337807, 52.646458, 56.045700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.550781, 52.660580, 56.923157>,  <59.093494, 53.133831, 56.484764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.550781, 52.660580, 56.923157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.638092, 52.632599, 56.533806>,  <59.690479, 52.615810, 56.300194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.638092, 52.632599, 56.533806>,  <59.550781, 52.660580, 56.923157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.638092, 52.632599, 56.533806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974701, -0.033520, 0.220985,
		-0.048086, -0.996987, 0.060866,
		0.218279, -0.069952, -0.973376,
		59.703575, 52.611614, 56.241795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.980923, 52.116180, 56.743118>,  <59.550781, 52.660580, 56.923157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.980923, 52.116180, 56.743118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.018784, 52.445103, 56.518669>,  <60.041500, 52.642456, 56.383999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.018784, 52.445103, 56.518669>,  <59.980923, 52.116180, 56.743118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.018784, 52.445103, 56.518669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893847, 0.177946, 0.411549,
		0.438268, -0.540506, -0.718174,
		0.094649, 0.822307, -0.561118,
		60.047176, 52.691795, 56.350334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.658600, 52.380775, 56.910450>,  <59.980923, 52.116180, 56.743118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.658600, 52.380775, 56.910450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.578979, 52.700470, 56.683609>,  <60.531208, 52.892284, 56.547504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.578979, 52.700470, 56.683609>,  <60.658600, 52.380775, 56.910450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.578979, 52.700470, 56.683609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768613, 0.486321, 0.415603,
		0.607957, -0.353154, -0.711106,
		-0.199054, 0.799234, -0.567101,
		60.519264, 52.940239, 56.513477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.208458, 52.671242, 56.647152>,  <60.658600, 52.380775, 56.910450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.208458, 52.671242, 56.647152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.954956, 52.980656, 56.648254>,  <60.802856, 53.166302, 56.648914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.954956, 52.980656, 56.648254>,  <61.208458, 52.671242, 56.647152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.954956, 52.980656, 56.648254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712422, 0.582290, 0.391654,
		0.301351, 0.250176, -0.920108,
		-0.633752, 0.773531, 0.002757,
		60.764832, 53.212715, 56.649082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.699429, 52.369873, 57.083813>,  <61.208458, 52.671242, 56.647152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.699429, 52.369873, 57.083813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.694366, 52.347115, 57.483131>,  <61.691330, 52.333458, 57.722725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.694366, 52.347115, 57.483131>,  <61.699429, 52.369873, 57.083813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.694366, 52.347115, 57.483131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993804, 0.109537, 0.018845,
		-0.110423, 0.992353, 0.055160,
		-0.012659, -0.056900, 0.998300,
		61.690567, 52.330044, 57.782619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.171364, 52.831871, 57.255138>,  <61.699429, 52.369873, 57.083813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.171364, 52.831871, 57.255138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.129715, 52.557663, 57.543365>,  <62.104725, 52.393139, 57.716301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.129715, 52.557663, 57.543365>,  <62.171364, 52.831871, 57.255138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.129715, 52.557663, 57.543365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993285, -0.034940, 0.110292,
		-0.050431, 0.727211, 0.684559,
		-0.104124, -0.685524, 0.720565,
		62.098476, 52.352005, 57.759537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.754509, 53.070061, 57.644520>,  <62.171364, 52.831871, 57.255138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.754509, 53.070061, 57.644520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.033478, 53.309464, 57.486847>,  <63.200859, 53.453106, 57.392242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.033478, 53.309464, 57.486847>,  <62.754509, 53.070061, 57.644520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.033478, 53.309464, 57.486847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410983, -0.116585, -0.904158,
		-0.587105, 0.792585, 0.164669,
		0.697424, 0.598512, -0.394187,
		63.242706, 53.489017, 57.368591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.461040, 53.683571, 57.341599>,  <62.754509, 53.070061, 57.644520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.461040, 53.683571, 57.341599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.786133, 53.563278, 57.141983>,  <62.981186, 53.491104, 57.022213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.786133, 53.563278, 57.141983>,  <62.461040, 53.683571, 57.341599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.786133, 53.563278, 57.141983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546607, -0.096984, -0.831754,
		0.201734, 0.948766, -0.243202,
		0.812726, -0.300729, -0.499037,
		63.029949, 53.473061, 56.992271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.353931, 53.850506, 56.625385>,  <62.461040, 53.683571, 57.341599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.353931, 53.850506, 56.625385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.604538, 53.541203, 56.664482>,  <62.754902, 53.355621, 56.687939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.604538, 53.541203, 56.664482>,  <62.353931, 53.850506, 56.625385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.604538, 53.541203, 56.664482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325063, -0.373210, -0.868935,
		0.708385, 0.512633, -0.485179,
		0.626518, -0.773255, 0.097739,
		62.792492, 53.309227, 56.693802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.078480, 53.085632, 56.368820>,  <62.353931, 53.850506, 56.625385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.078480, 53.085632, 56.368820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.405708, 53.072830, 56.139130>,  <62.602043, 53.065151, 56.001316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.405708, 53.072830, 56.139130>,  <62.078480, 53.085632, 56.368820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.405708, 53.072830, 56.139130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552093, 0.323402, 0.768508,
		0.161114, -0.945720, 0.282233,
		0.818068, -0.032002, -0.574230,
		62.651131, 53.063229, 55.966862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.726433, 52.701538, 56.620171>,  <62.078480, 53.085632, 56.368820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.726433, 52.701538, 56.620171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.870178, 52.953766, 56.345001>,  <62.956425, 53.105103, 56.179897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.870178, 52.953766, 56.345001>,  <62.726433, 52.701538, 56.620171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.870178, 52.953766, 56.345001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715489, 0.287084, 0.636912,
		0.599108, -0.721089, -0.347994,
		0.359367, 0.630565, -0.687926,
		62.977989, 53.142937, 56.138622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.421326, 52.538784, 56.428696>,  <62.726433, 52.701538, 56.620171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.421326, 52.538784, 56.428696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.321007, 52.925636, 56.411942>,  <63.260815, 53.157749, 56.401890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.321007, 52.925636, 56.411942>,  <63.421326, 52.538784, 56.428696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.321007, 52.925636, 56.411942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604148, 0.190183, 0.773845,
		0.756378, 0.168770, -0.631989,
		-0.250795, 0.967134, -0.041888,
		63.245770, 53.215775, 56.399376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.061943, 52.904961, 56.475338>,  <63.421326, 52.538784, 56.428696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.061943, 52.904961, 56.475338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.744080, 53.102798, 56.616127>,  <63.553360, 53.221500, 56.700600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.744080, 53.102798, 56.616127>,  <64.061943, 52.904961, 56.475338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.744080, 53.102798, 56.616127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458483, 0.108984, 0.881995,
		0.397867, 0.862266, -0.313367,
		-0.794667, 0.494590, 0.351974,
		63.505680, 53.251175, 56.721718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.372818, 53.617481, 56.678818>,  <64.061943, 52.904961, 56.475338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.372818, 53.617481, 56.678818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.075508, 53.445431, 56.883774>,  <63.897125, 53.342201, 57.006748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.075508, 53.445431, 56.883774>,  <64.372818, 53.617481, 56.678818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.075508, 53.445431, 56.883774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509925, 0.131529, 0.850104,
		-0.433045, 0.893137, 0.121569,
		-0.743269, -0.430124, 0.512391,
		63.852528, 53.316395, 57.037491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.465538, 54.230049, 57.143627>,  <64.372818, 53.617481, 56.678818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.465538, 54.230049, 57.143627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.257988, 53.978973, 57.375755>,  <64.133461, 53.828327, 57.515034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.257988, 53.978973, 57.375755>,  <64.465538, 54.230049, 57.143627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.257988, 53.978973, 57.375755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771494, 0.636234, -0.001637,
		-0.368195, -0.448566, -0.814384,
		-0.518873, -0.627690, 0.580324,
		64.102325, 53.790665, 57.549854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.040009, 54.335918, 57.326263>,  <64.465538, 54.230049, 57.143627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.040009, 54.335918, 57.326263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.978088, 54.702366, 57.178337>,  <64.940941, 54.922234, 57.089581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.978088, 54.702366, 57.178337>,  <65.040009, 54.335918, 57.326263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.978088, 54.702366, 57.178337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895029, 0.288524, 0.340114,
		0.418286, -0.278349, -0.864615,
		-0.154792, 0.916120, -0.369816,
		64.931648, 54.977203, 57.067390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.603470, 54.584820, 56.920902>,  <65.040009, 54.335918, 57.326263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.603470, 54.584820, 56.920902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.411697, 54.908119, 57.057655>,  <65.296631, 55.102097, 57.139709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.411697, 54.908119, 57.057655>,  <65.603470, 54.584820, 56.920902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.411697, 54.908119, 57.057655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876760, 0.424314, 0.226384,
		0.037906, 0.408288, -0.912066,
		-0.479432, 0.808244, 0.341886,
		65.267868, 55.150593, 57.160221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.115189, 55.156460, 56.902031>,  <65.603470, 54.584820, 56.920902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.115189, 55.156460, 56.902031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.821251, 55.392883, 57.035088>,  <65.644890, 55.534737, 57.114922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.821251, 55.392883, 57.035088>,  <66.115189, 55.156460, 56.902031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.821251, 55.392883, 57.035088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594787, 0.325922, 0.734849,
		0.325922, 0.737853, -0.591056,
		-0.734849, 0.591056, 0.332640,
		65.600800, 55.570202, 57.134880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.380035, 55.823753, 56.912846>,  <66.115189, 55.156460, 56.902031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.380035, 55.823753, 56.912846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.123512, 55.725056, 57.203453>,  <65.969597, 55.665836, 57.377819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.123512, 55.725056, 57.203453>,  <66.380035, 55.823753, 56.912846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.123512, 55.725056, 57.203453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640747, 0.348663, 0.684015,
		-0.422090, 0.904185, -0.065499,
		-0.641313, -0.246747, 0.726521,
		65.931122, 55.651031, 57.421410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.481812, 56.319538, 57.337811>,  <66.380035, 55.823753, 56.912846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.481812, 56.319538, 57.337811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.338783, 56.005424, 57.539986>,  <66.252968, 55.816956, 57.661293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.338783, 56.005424, 57.539986>,  <66.481812, 56.319538, 57.337811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.338783, 56.005424, 57.539986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753639, 0.076988, 0.652764,
		-0.551521, 0.614325, 0.564296,
		-0.357565, -0.785288, 0.505440,
		66.231514, 55.769836, 57.691616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.268669, 56.538601, 58.184280>,  <66.481812, 56.319538, 57.337811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.268669, 56.538601, 58.184280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.403465, 56.176155, 58.081993>,  <66.484344, 55.958687, 58.020622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.403465, 56.176155, 58.081993>,  <66.268669, 56.538601, 58.184280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.403465, 56.176155, 58.081993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739232, 0.086441, 0.667880,
		-0.583074, -0.414101, 0.698960,
		0.336989, -0.906117, -0.255716,
		66.504562, 55.904320, 58.005280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.894478, 56.621552, 58.525082>,  <66.268669, 56.538601, 58.184280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.894478, 56.621552, 58.525082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.883995, 56.248901, 58.380089>,  <66.877708, 56.025311, 58.293095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.883995, 56.248901, 58.380089>,  <66.894478, 56.621552, 58.525082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.883995, 56.248901, 58.380089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887613, -0.188479, 0.420260,
		-0.459844, -0.310732, 0.831859,
		-0.026199, -0.931623, -0.362480,
		66.876137, 55.969414, 58.271343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.198952, 56.151379, 59.072060>,  <66.894478, 56.621552, 58.525082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.198952, 56.151379, 59.072060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.251198, 55.976486, 58.716133>,  <67.282547, 55.871552, 58.502579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.251198, 55.976486, 58.716133>,  <67.198952, 56.151379, 59.072060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.251198, 55.976486, 58.716133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925296, -0.268556, 0.267780,
		-0.356047, -0.858314, 0.369496,
		0.130609, -0.437235, -0.889813,
		67.290382, 55.845314, 58.449188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.281525, 55.337566, 58.979504>,  <67.198952, 56.151379, 59.072060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.281525, 55.337566, 58.979504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.483124, 55.582920, 58.736275>,  <67.604080, 55.730133, 58.590340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.483124, 55.582920, 58.736275>,  <67.281525, 55.337566, 58.979504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.483124, 55.582920, 58.736275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856588, -0.264756, 0.442901,
		0.110681, -0.744082, -0.658856,
		0.503991, 0.613389, -0.608068,
		67.634323, 55.766937, 58.553856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.884193, 55.046616, 58.670013>,  <67.281525, 55.337566, 58.979504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.884193, 55.046616, 58.670013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.895927, 55.434166, 58.768333>,  <67.902969, 55.666695, 58.827328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.895927, 55.434166, 58.768333>,  <67.884193, 55.046616, 58.670013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.895927, 55.434166, 58.768333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658415, -0.203752, 0.724551,
		0.752083, 0.140587, -0.643899,
		0.029333, 0.968876, 0.245803,
		67.904724, 55.724831, 58.842075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.508812, 55.245914, 58.543056>,  <67.884193, 55.046616, 58.670013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.508812, 55.245914, 58.543056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.378006, 55.451164, 58.860489>,  <68.299522, 55.574314, 59.050949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.378006, 55.451164, 58.860489>,  <68.508812, 55.245914, 58.543056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.378006, 55.451164, 58.860489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666161, -0.470454, 0.578707,
		0.670288, 0.717900, -0.187973,
		-0.327021, 0.513121, 0.793577,
		68.279900, 55.605099, 59.098560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.055000, 55.323185, 58.935532>,  <68.508812, 55.245914, 58.543056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.055000, 55.323185, 58.935532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.757133, 55.366364, 59.198990>,  <68.578415, 55.392269, 59.357067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.757133, 55.366364, 59.198990>,  <69.055000, 55.323185, 58.935532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.757133, 55.366364, 59.198990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549383, -0.461251, 0.696725,
		0.379010, 0.880679, 0.284176,
		-0.744668, 0.107944, 0.658649,
		68.533730, 55.398746, 59.396584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.805191, 55.281792, 58.613758>,  <69.055000, 55.323185, 58.935532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.805191, 55.281792, 58.613758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.037468, 55.533360, 58.406975>,  <70.176834, 55.684299, 58.282906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.037468, 55.533360, 58.406975>,  <69.805191, 55.281792, 58.613758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.037468, 55.533360, 58.406975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436462, 0.295520, 0.849805,
		0.687231, -0.719115, -0.102891,
		0.580702, 0.628921, -0.516957,
		70.211678, 55.722034, 58.251888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.568825, 55.187531, 58.809311>,  <69.805191, 55.281792, 58.613758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.568825, 55.187531, 58.809311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.462990, 55.554371, 58.690041>,  <70.399490, 55.774475, 58.618477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.462990, 55.554371, 58.690041>,  <70.568825, 55.187531, 58.809311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.462990, 55.554371, 58.690041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469694, 0.392601, 0.790729,
		0.842246, 0.069167, -0.534637,
		-0.264591, 0.917104, -0.298179,
		70.383614, 55.829502, 58.600586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.205437, 55.635738, 58.956200>,  <70.568825, 55.187531, 58.809311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.205437, 55.635738, 58.956200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.853188, 55.824127, 58.935448>,  <70.641838, 55.937160, 58.922997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.853188, 55.824127, 58.935448>,  <71.205437, 55.635738, 58.956200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.853188, 55.824127, 58.935448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244707, 0.545821, 0.801372,
		0.405741, 0.693010, -0.595912,
		-0.880621, 0.470973, -0.051878,
		70.589005, 55.965420, 58.919884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.225952, 56.314758, 58.801929>,  <71.205437, 55.635738, 58.956200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.225952, 56.314758, 58.801929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.917755, 56.271141, 59.053154>,  <70.732841, 56.244972, 59.203888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.917755, 56.271141, 59.053154>,  <71.225952, 56.314758, 58.801929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.917755, 56.271141, 59.053154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529764, 0.438452, 0.726023,
		-0.354541, 0.892116, -0.280055,
		-0.770487, -0.109042, 0.628060,
		70.686607, 56.238430, 59.241573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.847549, 56.950153, 59.175407>,  <71.225952, 56.314758, 58.801929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.847549, 56.950153, 59.175407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.857941, 56.634415, 59.420769>,  <70.864174, 56.444973, 59.567986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.857941, 56.634415, 59.420769>,  <70.847549, 56.950153, 59.175407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.857941, 56.634415, 59.420769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657861, 0.475515, 0.584041,
		-0.752691, 0.388358, 0.531634,
		0.025983, -0.789344, 0.613401,
		70.865738, 56.397610, 59.604790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.543434, 56.900478, 59.304592>,  <70.847549, 56.950153, 59.175407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.543434, 56.900478, 59.304592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.933685, 56.923527, 59.389275>,  <72.167839, 56.937355, 59.440086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.933685, 56.923527, 59.389275>,  <71.543434, 56.900478, 59.304592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.933685, 56.923527, 59.389275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209957, -0.034984, 0.977085,
		0.063711, -0.997725, -0.022033,
		0.975632, 0.057625, 0.211708,
		72.226372, 56.940815, 59.452785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.169380, 57.524731, 59.391361>,  <71.543434, 56.900478, 59.304592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.169380, 57.524731, 59.391361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.238892, 57.613113, 59.775230>,  <72.280602, 57.666145, 60.005554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.238892, 57.613113, 59.775230>,  <72.169380, 57.524731, 59.391361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.238892, 57.613113, 59.775230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982655, -0.102964, -0.154231,
		0.064733, 0.969833, -0.235020,
		0.173777, 0.220959, 0.959676,
		72.291023, 57.679401, 60.063133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.532104, 58.186733, 59.536892>,  <72.169380, 57.524731, 59.391361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.532104, 58.186733, 59.536892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.622597, 57.912193, 59.813370>,  <72.676895, 57.747471, 59.979256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.622597, 57.912193, 59.813370>,  <72.532104, 58.186733, 59.536892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.622597, 57.912193, 59.813370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958024, 0.028502, -0.285268,
		0.176094, 0.726714, 0.663987,
		0.226233, -0.686349, 0.691190,
		72.690468, 57.706287, 60.020725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.159286, 58.382557, 59.917667>,  <72.532104, 58.186733, 59.536892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.159286, 58.382557, 59.917667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.141922, 57.983131, 59.905151>,  <73.131500, 57.743477, 59.897644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.141922, 57.983131, 59.905151>,  <73.159286, 58.382557, 59.917667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.141922, 57.983131, 59.905151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867649, -0.022165, -0.496683,
		0.495278, -0.048711, 0.867368,
		-0.043419, -0.998567, -0.031286,
		73.128899, 57.683563, 59.895767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
