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
	<36.185200, 53.070984, 49.352093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.172310, 53.452259, 49.472359>,  <36.164577, 53.681023, 49.544518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.172310, 53.452259, 49.472359>,  <36.185200, 53.070984, 49.352093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.172310, 53.452259, 49.472359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957462, 0.115747, -0.264330,
		-0.286756, 0.279361, -0.916367,
		-0.032223, 0.953184, 0.300669,
		36.162643, 53.738213, 49.562561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.466694, 53.611561, 48.891438>,  <36.185200, 53.070984, 49.352093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.466694, 53.611561, 48.891438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.520370, 53.747593, 49.263748>,  <36.552578, 53.829212, 49.487133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.520370, 53.747593, 49.263748>,  <36.466694, 53.611561, 48.891438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.520370, 53.747593, 49.263748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968930, 0.151903, -0.195195,
		-0.207768, 0.928049, -0.309125,
		0.134194, 0.340076, 0.930774,
		36.560627, 53.849617, 49.542980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.897419, 54.282997, 48.903999>,  <36.466694, 53.611561, 48.891438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.897419, 54.282997, 48.903999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.943596, 54.075832, 49.243042>,  <36.971302, 53.951534, 49.446468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.943596, 54.075832, 49.243042>,  <36.897419, 54.282997, 48.903999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.943596, 54.075832, 49.243042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984183, 0.175072, -0.027071,
		-0.134373, 0.837327, 0.529932,
		0.115444, -0.517912, 0.847608,
		36.978230, 53.920460, 49.497326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183098, 54.695831, 49.468727>,  <36.897419, 54.282997, 48.903999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.183098, 54.695831, 49.468727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.290657, 54.311195, 49.446655>,  <37.355190, 54.080414, 49.433411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.290657, 54.311195, 49.446655>,  <37.183098, 54.695831, 49.468727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.290657, 54.311195, 49.446655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945217, 0.274459, -0.176740,
		0.185095, -0.004631, 0.982710,
		0.268895, -0.961588, -0.055178,
		37.371326, 54.022720, 49.430103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.813259, 54.662907, 49.928009>,  <37.183098, 54.695831, 49.468727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.813259, 54.662907, 49.928009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.751041, 54.451077, 49.594456>,  <37.713711, 54.323978, 49.394325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.751041, 54.451077, 49.594456>,  <37.813259, 54.662907, 49.928009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751041, 54.451077, 49.594456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783255, 0.448266, -0.430777,
		0.601929, -0.720146, 0.345067,
		-0.155541, -0.529573, -0.833882,
		37.704380, 54.292206, 49.344292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.491550, 54.168179, 49.731533>,  <37.813259, 54.662907, 49.928009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.491550, 54.168179, 49.731533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.297676, 54.327305, 49.419937>,  <38.181351, 54.422779, 49.232979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.297676, 54.327305, 49.419937>,  <38.491550, 54.168179, 49.731533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.297676, 54.327305, 49.419937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872343, 0.284999, -0.397232,
		0.063987, -0.872079, -0.485165,
		-0.484689, 0.397812, -0.778988,
		38.152271, 54.446648, 49.186241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.376099, 54.139851, 50.460087>,  <38.491550, 54.168179, 49.731533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.376099, 54.139851, 50.460087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.708317, 53.990498, 50.294785>,  <38.907646, 53.900887, 50.195602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.708317, 53.990498, 50.294785>,  <38.376099, 54.139851, 50.460087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.708317, 53.990498, 50.294785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402842, -0.109639, 0.908679,
		-0.384595, -0.921175, 0.059355,
		0.830545, -0.373384, -0.413254,
		38.957481, 53.878483, 50.170807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.481091, 53.446049, 50.713886>,  <38.376099, 54.139851, 50.460087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.481091, 53.446049, 50.713886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.814350, 53.643829, 50.614784>,  <39.014305, 53.762497, 50.555321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.814350, 53.643829, 50.614784>,  <38.481091, 53.446049, 50.713886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.814350, 53.643829, 50.614784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341272, -0.107111, 0.933842,
		0.435205, -0.862579, -0.257982,
		0.833145, 0.494455, -0.247759,
		39.064293, 53.792164, 50.540455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.095127, 53.022449, 50.704475>,  <38.481091, 53.446049, 50.713886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.095127, 53.022449, 50.704475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.197990, 53.390076, 50.823936>,  <39.259708, 53.610649, 50.895615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.197990, 53.390076, 50.823936>,  <39.095127, 53.022449, 50.704475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.197990, 53.390076, 50.823936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311295, -0.371357, 0.874751,
		0.914859, -0.131977, -0.381596,
		0.257156, 0.919063, 0.298655,
		39.275139, 53.665794, 50.913532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.816738, 52.984539, 50.973663>,  <39.095127, 53.022449, 50.704475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.816738, 52.984539, 50.973663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.573860, 53.260929, 51.130562>,  <39.428131, 53.426765, 51.224701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.573860, 53.260929, 51.130562>,  <39.816738, 52.984539, 50.973663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.573860, 53.260929, 51.130562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223592, -0.325125, 0.918858,
		0.762442, 0.645632, 0.042918,
		-0.607198, 0.690980, 0.392246,
		39.391701, 53.468224, 51.248238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.250664, 53.368008, 51.476784>,  <39.816738, 52.984539, 50.973663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.250664, 53.368008, 51.476784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.860798, 53.399937, 51.560352>,  <39.626877, 53.419094, 51.610493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.860798, 53.399937, 51.560352>,  <40.250664, 53.368008, 51.476784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.860798, 53.399937, 51.560352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195721, -0.147625, 0.969484,
		0.108225, 0.985817, 0.128264,
		-0.974669, 0.079819, 0.208922,
		39.568398, 53.423882, 51.623028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.076500, 53.871258, 52.046700>,  <40.250664, 53.368008, 51.476784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.076500, 53.871258, 52.046700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.786171, 53.597389, 52.020111>,  <39.611973, 53.433067, 52.004158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.786171, 53.597389, 52.020111>,  <40.076500, 53.871258, 52.046700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.786171, 53.597389, 52.020111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151905, -0.253782, 0.955259,
		-0.670904, 0.683247, 0.288204,
		-0.725818, -0.684667, -0.066475,
		39.568424, 53.391991, 52.000168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.360588, 54.512749, 51.982960>,  <40.076500, 53.871258, 52.046700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.360588, 54.512749, 51.982960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.547562, 54.523674, 51.629517>,  <40.659748, 54.530231, 51.417450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.547562, 54.523674, 51.629517>,  <40.360588, 54.512749, 51.982960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.547562, 54.523674, 51.629517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852004, -0.280504, 0.442048,
		-0.235779, -0.959464, -0.154392,
		0.467436, 0.027317, -0.883605,
		40.687794, 54.531868, 51.364437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.769344, 53.849258, 51.697662>,  <40.360588, 54.512749, 51.982960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.769344, 53.849258, 51.697662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.978275, 54.152180, 51.540863>,  <41.103634, 54.333935, 51.446785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.978275, 54.152180, 51.540863>,  <40.769344, 53.849258, 51.697662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.978275, 54.152180, 51.540863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804532, -0.285258, 0.520918,
		0.282675, -0.587463, -0.758276,
		0.522324, 0.757308, -0.391998,
		41.134972, 54.379372, 51.423264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.434509, 53.563023, 51.390572>,  <40.769344, 53.849258, 51.697662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.434509, 53.563023, 51.390572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.471558, 53.942905, 51.510223>,  <41.493786, 54.170834, 51.582016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.471558, 53.942905, 51.510223>,  <41.434509, 53.563023, 51.390572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.471558, 53.942905, 51.510223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757409, -0.262210, 0.597978,
		0.646339, 0.171182, -0.743601,
		0.092617, 0.949707, 0.299131,
		41.499344, 54.227818, 51.599964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.167118, 53.763336, 51.335308>,  <41.434509, 53.563023, 51.390572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.167118, 53.763336, 51.335308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.964218, 53.981258, 51.602406>,  <41.842480, 54.112011, 51.762665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.964218, 53.981258, 51.602406>,  <42.167118, 53.763336, 51.335308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.964218, 53.981258, 51.602406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800170, 0.009997, 0.599690,
		0.320038, 0.838503, -0.441008,
		-0.507251, 0.544805, 0.667746,
		41.812042, 54.144699, 51.802731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.366127, 54.463249, 51.256298>,  <42.167118, 53.763336, 51.335308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.366127, 54.463249, 51.256298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.357121, 54.329208, 51.633064>,  <42.351719, 54.248783, 51.859123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.357121, 54.329208, 51.633064>,  <42.366127, 54.463249, 51.256298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.357121, 54.329208, 51.633064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960047, 0.255617, 0.113886,
		-0.278933, 0.906845, 0.315957,
		-0.022513, -0.335100, 0.941914,
		42.350365, 54.228680, 51.915638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.643452, 54.946758, 51.795631>,  <42.366127, 54.463249, 51.256298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.643452, 54.946758, 51.795631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.697163, 54.561314, 51.888084>,  <42.729389, 54.330048, 51.943558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.697163, 54.561314, 51.888084>,  <42.643452, 54.946758, 51.795631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.697163, 54.561314, 51.888084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952830, 0.189614, 0.236985,
		-0.272188, 0.188411, 0.943618,
		0.134273, -0.963612, 0.231134,
		42.737446, 54.272228, 51.957424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.335545, 55.245647, 51.844112>,  <42.643452, 54.946758, 51.795631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.335545, 55.245647, 51.844112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.365185, 54.941841, 51.585609>,  <43.382969, 54.759560, 51.430508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.365185, 54.941841, 51.585609>,  <43.335545, 55.245647, 51.844112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.365185, 54.941841, 51.585609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458672, -0.549473, 0.698355,
		-0.885511, -0.348170, 0.307650,
		0.074101, -0.759512, -0.646260,
		43.387417, 54.713989, 51.391731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.170547, 54.644379, 52.189823>,  <43.335545, 55.245647, 51.844112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.170547, 54.644379, 52.189823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.368382, 54.517811, 51.866028>,  <43.487083, 54.441868, 51.671753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.368382, 54.517811, 51.866028>,  <43.170547, 54.644379, 52.189823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.368382, 54.517811, 51.866028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408589, -0.737387, 0.537881,
		-0.767100, -0.596773, -0.235413,
		0.494584, -0.316422, -0.809484,
		43.516758, 54.422886, 51.623184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.196659, 53.849178, 52.202026>,  <43.170547, 54.644379, 52.189823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.196659, 53.849178, 52.202026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.485691, 53.987923, 51.962837>,  <43.659111, 54.071167, 51.819324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.485691, 53.987923, 51.962837>,  <43.196659, 53.849178, 52.202026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.485691, 53.987923, 51.962837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669420, -0.566946, 0.480051,
		-0.172510, -0.747170, -0.641855,
		0.722577, 0.346857, -0.597974,
		43.702465, 54.091980, 51.783443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.464783, 53.233158, 51.894199>,  <43.196659, 53.849178, 52.202026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.464783, 53.233158, 51.894199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.694832, 53.556358, 51.945381>,  <43.832859, 53.750278, 51.976089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.694832, 53.556358, 51.945381>,  <43.464783, 53.233158, 51.894199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.694832, 53.556358, 51.945381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595193, -0.520591, 0.612153,
		0.561232, -0.275903, -0.780318,
		0.575121, 0.808000, 0.127957,
		43.867367, 53.798759, 51.983768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.077549, 53.045067, 51.651016>,  <43.464783, 53.233158, 51.894199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.077549, 53.045067, 51.651016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.119732, 53.281185, 51.971123>,  <44.145042, 53.422855, 52.163185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.119732, 53.281185, 51.971123>,  <44.077549, 53.045067, 51.651016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.119732, 53.281185, 51.971123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691948, -0.621542, 0.367278,
		0.714203, 0.515011, -0.474002,
		0.105460, 0.590296, 0.800268,
		44.151371, 53.458275, 52.211205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.625603, 53.215271, 52.159897>,  <44.077549, 53.045067, 51.651016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.625603, 53.215271, 52.159897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.698692, 53.601955, 52.231544>,  <44.742546, 53.833965, 52.274532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.698692, 53.601955, 52.231544>,  <44.625603, 53.215271, 52.159897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.698692, 53.601955, 52.231544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976395, -0.199772, 0.082121,
		0.115171, 0.159890, -0.980393,
		0.182725, 0.966709, 0.179124,
		44.753510, 53.891968, 52.285282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.158535, 53.632496, 51.756496>,  <44.625603, 53.215271, 52.159897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.158535, 53.632496, 51.756496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.147163, 53.752663, 52.137852>,  <45.140339, 53.824760, 52.366665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.147163, 53.752663, 52.137852>,  <45.158535, 53.632496, 51.756496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.147163, 53.752663, 52.137852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892654, -0.421591, 0.159465,
		0.449844, 0.855578, -0.256178,
		-0.028432, 0.300413, 0.953385,
		45.138634, 53.842785, 52.423866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.798157, 53.686054, 51.805763>,  <45.158535, 53.632496, 51.756496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.798157, 53.686054, 51.805763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.757660, 53.721039, 52.202168>,  <45.733364, 53.742027, 52.440010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.757660, 53.721039, 52.202168>,  <45.798157, 53.686054, 51.805763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.757660, 53.721039, 52.202168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994297, 0.042461, 0.097826,
		-0.033523, 0.995263, -0.091257,
		-0.101238, 0.087458, 0.991011,
		45.727287, 53.747276, 52.499470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.138725, 54.390091, 52.135319>,  <45.798157, 53.686054, 51.805763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.138725, 54.390091, 52.135319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.158566, 54.063259, 52.365074>,  <46.170471, 53.867161, 52.502930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.158566, 54.063259, 52.365074>,  <46.138725, 54.390091, 52.135319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.158566, 54.063259, 52.365074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987362, 0.126785, 0.095087,
		-0.150517, 0.562415, 0.813040,
		0.049603, -0.817077, 0.574390,
		46.173447, 53.818134, 52.537392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.512348, 54.622055, 52.762421>,  <46.138725, 54.390091, 52.135319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.512348, 54.622055, 52.762421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.579323, 54.235115, 52.686317>,  <46.619507, 54.002953, 52.640656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.579323, 54.235115, 52.686317>,  <46.512348, 54.622055, 52.762421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.579323, 54.235115, 52.686317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977137, 0.188483, -0.098375,
		0.131024, -0.169438, 0.976792,
		0.167440, -0.967350, -0.190260,
		46.629555, 53.944912, 52.629238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.908688, 54.107567, 53.256870>,  <46.512348, 54.622055, 52.762421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.908688, 54.107567, 53.256870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.948547, 54.068699, 52.860764>,  <46.972462, 54.045376, 52.623100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.948547, 54.068699, 52.860764>,  <46.908688, 54.107567, 53.256870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.948547, 54.068699, 52.860764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982397, 0.167644, 0.082405,
		0.158005, -0.981046, 0.112170,
		0.099647, -0.097175, -0.990266,
		46.978443, 54.039547, 52.563683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.478569, 53.741867, 53.212345>,  <46.908688, 54.107567, 53.256870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.478569, 53.741867, 53.212345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.392479, 53.942410, 52.877129>,  <47.340824, 54.062737, 52.675999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.392479, 53.942410, 52.877129>,  <47.478569, 53.741867, 53.212345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.392479, 53.942410, 52.877129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945216, 0.322634, -0.049738,
		0.245444, -0.802836, -0.543333,
		-0.215229, 0.501359, -0.838042,
		47.327911, 54.092819, 52.625717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.804234, 53.341427, 52.615345>,  <47.478569, 53.741867, 53.212345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.804234, 53.341427, 52.615345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.785877, 53.740791, 52.628380>,  <47.774864, 53.980412, 52.636200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.785877, 53.740791, 52.628380>,  <47.804234, 53.341427, 52.615345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.785877, 53.740791, 52.628380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994423, 0.042554, 0.096500,
		0.094961, 0.036837, -0.994799,
		-0.045888, 0.998415, 0.032591,
		47.772110, 54.040318, 52.638157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.242905, 53.699223, 52.045605>,  <47.804234, 53.341427, 52.615345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.242905, 53.699223, 52.045605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.235172, 53.899193, 52.391945>,  <48.230534, 54.019176, 52.599751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.235172, 53.899193, 52.391945>,  <48.242905, 53.699223, 52.045605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.235172, 53.899193, 52.391945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993609, 0.105930, -0.038982,
		-0.111208, 0.859566, -0.498778,
		-0.019328, 0.499925, 0.865853,
		48.229374, 54.049171, 52.651699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.503811, 54.308216, 51.976841>,  <48.242905, 53.699223, 52.045605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.503811, 54.308216, 51.976841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.567490, 54.170582, 52.346977>,  <48.605698, 54.088001, 52.569061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.567490, 54.170582, 52.346977>,  <48.503811, 54.308216, 51.976841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.567490, 54.170582, 52.346977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980259, 0.166411, -0.106769,
		-0.117249, 0.924074, 0.363786,
		0.159200, -0.344086, 0.925343,
		48.615250, 54.067356, 52.624580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.742550, 54.837215, 52.457294>,  <48.503811, 54.308216, 51.976841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.742550, 54.837215, 52.457294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.860863, 54.456821, 52.493397>,  <48.931850, 54.228584, 52.515060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.860863, 54.456821, 52.493397>,  <48.742550, 54.837215, 52.457294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.860863, 54.456821, 52.493397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875920, 0.232303, -0.422847,
		0.381152, 0.204130, 0.901695,
		0.295783, -0.950982, 0.090259,
		48.949596, 54.171528, 52.520473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.438705, 55.014896, 52.419750>,  <48.742550, 54.837215, 52.457294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.438705, 55.014896, 52.419750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.414742, 54.615662, 52.425770>,  <49.400364, 54.376122, 52.429382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.414742, 54.615662, 52.425770>,  <49.438705, 55.014896, 52.419750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.414742, 54.615662, 52.425770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963967, -0.061762, -0.258754,
		0.259189, -0.000992, 0.965826,
		-0.059908, -0.998090, 0.015052,
		49.396770, 54.316235, 52.430286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.149120, 54.936283, 52.255596>,  <49.438705, 55.014896, 52.419750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.149120, 54.936283, 52.255596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.007870, 54.563293, 52.225155>,  <49.923119, 54.339500, 52.206890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.007870, 54.563293, 52.225155>,  <50.149120, 54.936283, 52.255596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.007870, 54.563293, 52.225155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859060, -0.290951, -0.421144,
		0.370565, -0.214093, 0.903795,
		-0.353125, -0.932476, -0.076102,
		49.901932, 54.283550, 52.202324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.616116, 54.485950, 52.496460>,  <50.149120, 54.936283, 52.255596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.616116, 54.485950, 52.496460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.391159, 54.305218, 52.219460>,  <50.256184, 54.196777, 52.053257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.391159, 54.305218, 52.219460>,  <50.616116, 54.485950, 52.496460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.391159, 54.305218, 52.219460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826844, -0.300409, -0.475483,
		0.006804, -0.840001, 0.542543,
		-0.562391, -0.451833, -0.692505,
		50.222443, 54.169666, 52.011707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.869183, 53.900440, 51.986351>,  <50.616116, 54.485950, 52.496460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.869183, 53.900440, 51.986351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.221527, 53.716915, 51.939758>,  <51.432934, 53.606800, 51.911804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.221527, 53.716915, 51.939758>,  <50.869183, 53.900440, 51.986351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.221527, 53.716915, 51.939758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436400, 0.882431, -0.175701,
		0.183400, 0.103936, 0.977528,
		0.880863, -0.458817, -0.116480,
		51.485786, 53.579269, 51.904816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.487606, 54.260357, 52.399128>,  <50.869183, 53.900440, 51.986351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.487606, 54.260357, 52.399128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.679134, 54.076996, 52.099636>,  <51.794052, 53.966980, 51.919941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.679134, 54.076996, 52.099636>,  <51.487606, 54.260357, 52.399128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.679134, 54.076996, 52.099636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458214, 0.857964, -0.232246,
		0.748847, -0.231874, 0.620857,
		0.478821, -0.458402, -0.748731,
		51.822781, 53.939476, 51.875015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.963932, 54.758797, 52.260521>,  <51.487606, 54.260357, 52.399128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.963932, 54.758797, 52.260521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.997143, 54.500771, 51.956680>,  <52.017071, 54.345955, 51.774376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.997143, 54.500771, 51.956680>,  <51.963932, 54.758797, 52.260521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.997143, 54.500771, 51.956680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460770, 0.700716, -0.544691,
		0.883627, -0.304776, 0.355407,
		0.083031, -0.645065, -0.759604,
		52.022053, 54.307251, 51.728798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.262085, 54.666897, 52.993320>,  <51.963932, 54.758797, 52.260521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.262085, 54.666897, 52.993320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.126381, 54.709614, 53.367165>,  <52.044956, 54.735245, 53.591473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.126381, 54.709614, 53.367165>,  <52.262085, 54.666897, 52.993320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.126381, 54.709614, 53.367165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827992, -0.505443, -0.242809,
		0.446463, -0.856226, 0.259897,
		-0.339262, 0.106788, 0.934611,
		52.024601, 54.741650, 53.647549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.036465, 54.007370, 53.438728>,  <52.262085, 54.666897, 52.993320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.036465, 54.007370, 53.438728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.825573, 54.342209, 53.497105>,  <51.699039, 54.543114, 53.532131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.825573, 54.342209, 53.497105>,  <52.036465, 54.007370, 53.438728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.825573, 54.342209, 53.497105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848430, -0.528080, -0.036030,
		0.046909, -0.142818, 0.988637,
		-0.527225, 0.837099, 0.145943,
		51.667404, 54.593338, 53.540886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.412468, 53.875641, 53.831989>,  <52.036465, 54.007370, 53.438728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.412468, 53.875641, 53.831989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.312481, 54.234154, 53.685463>,  <51.252487, 54.449261, 53.597549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.312481, 54.234154, 53.685463>,  <51.412468, 53.875641, 53.831989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.312481, 54.234154, 53.685463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.930656, -0.326808, -0.164547,
		-0.267195, 0.299778, 0.915827,
		-0.249972, 0.896286, -0.366312,
		51.237488, 54.503040, 53.575569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.692509, 53.842239, 53.992008>,  <51.412468, 53.875641, 53.831989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.692509, 53.842239, 53.992008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.760033, 54.174156, 53.779236>,  <50.800545, 54.373306, 53.651573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.760033, 54.174156, 53.779236>,  <50.692509, 53.842239, 53.992008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.760033, 54.174156, 53.779236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889214, -0.104605, -0.445371,
		-0.425208, 0.548182, 0.720204,
		0.168808, 0.829792, -0.531931,
		50.810677, 54.423092, 53.619656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.061935, 53.944157, 53.615128>,  <50.692509, 53.842239, 53.992008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.061935, 53.944157, 53.615128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.263847, 54.261009, 53.477875>,  <50.384995, 54.451118, 53.395523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.263847, 54.261009, 53.477875>,  <50.061935, 53.944157, 53.615128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.263847, 54.261009, 53.477875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734054, 0.184693, -0.653493,
		-0.454277, 0.581741, 0.674693,
		0.504775, 0.792127, -0.343127,
		50.415279, 54.498646, 53.374935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.690388, 54.584358, 53.571461>,  <50.061935, 53.944157, 53.615128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.690388, 54.584358, 53.571461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.978428, 54.612099, 53.295303>,  <50.151253, 54.628742, 53.129608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.978428, 54.612099, 53.295303>,  <49.690388, 54.584358, 53.571461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.978428, 54.612099, 53.295303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689269, 0.185886, -0.700254,
		0.079772, 0.980121, 0.181657,
		0.720101, 0.069350, -0.690395,
		50.194458, 54.632904, 53.088184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.238144, 55.120564, 53.648346>,  <49.690388, 54.584358, 53.571461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.238144, 55.120564, 53.648346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.052856, 54.921089, 53.355293>,  <49.941685, 54.801407, 53.179462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.052856, 54.921089, 53.355293>,  <50.238144, 55.120564, 53.648346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.052856, 54.921089, 53.355293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133748, 0.777862, -0.614038,
		0.876092, -0.382423, -0.293624,
		-0.463221, -0.498682, -0.732627,
		49.913891, 54.771484, 53.135506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.668495, 55.796860, 53.959030>,  <50.238144, 55.120564, 53.648346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.668495, 55.796860, 53.959030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.956451, 55.884911, 53.695728>,  <51.129227, 55.937740, 53.537746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.956451, 55.884911, 53.695728>,  <50.668495, 55.796860, 53.959030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.956451, 55.884911, 53.695728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534967, 0.428279, 0.728277,
		0.442235, -0.876424, 0.190550,
		0.719888, 0.220132, -0.658258,
		51.172417, 55.950951, 53.498253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.337811, 55.320179, 54.017529>,  <50.668495, 55.796860, 53.959030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.337811, 55.320179, 54.017529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.305767, 55.709232, 53.930283>,  <51.286541, 55.942665, 53.877934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.305767, 55.709232, 53.930283>,  <51.337811, 55.320179, 54.017529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.305767, 55.709232, 53.930283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356729, 0.232303, 0.904865,
		0.930767, -0.005319, -0.365575,
		-0.080111, 0.972629, -0.218117,
		51.281734, 56.001022, 53.864849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.779419, 55.208706, 54.479153>,  <51.337811, 55.320179, 54.017529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.779419, 55.208706, 54.479153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.423958, 55.318886, 54.625809>,  <51.210682, 55.384995, 54.713802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.423958, 55.318886, 54.625809>,  <51.779419, 55.208706, 54.479153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.423958, 55.318886, 54.625809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413554, 0.135889, 0.900282,
		0.198160, 0.951663, -0.234672,
		-0.888654, 0.275449, 0.366636,
		51.157360, 55.401520, 54.735798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.897583, 55.853466, 54.750862>,  <51.779419, 55.208706, 54.479153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.897583, 55.853466, 54.750862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.589176, 55.703186, 54.956539>,  <51.404133, 55.613018, 55.079945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.589176, 55.703186, 54.956539>,  <51.897583, 55.853466, 54.750862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.589176, 55.703186, 54.956539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429367, 0.289612, 0.855435,
		-0.470301, 0.880327, -0.061981,
		-0.771013, -0.375699, 0.514188,
		51.357872, 55.590477, 55.110794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.576820, 56.351765, 55.320564>,  <51.897583, 55.853466, 54.750862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.576820, 56.351765, 55.320564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.591110, 55.964638, 55.420204>,  <51.599686, 55.732361, 55.479988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.591110, 55.964638, 55.420204>,  <51.576820, 56.351765, 55.320564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.591110, 55.964638, 55.420204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567062, 0.224877, 0.792383,
		-0.822900, 0.112949, 0.556846,
		0.035723, -0.967819, 0.249101,
		51.601826, 55.674294, 55.494934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.242077, 56.090282, 56.028023>,  <51.576820, 56.351765, 55.320564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.242077, 56.090282, 56.028023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.571583, 55.889786, 55.922066>,  <51.769287, 55.769485, 55.858490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.571583, 55.889786, 55.922066>,  <51.242077, 56.090282, 56.028023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.571583, 55.889786, 55.922066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361084, 0.103653, 0.926754,
		-0.437073, -0.859075, 0.266377,
		0.823763, -0.501244, -0.264895,
		51.818710, 55.739414, 55.842598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.394417, 56.031185, 56.629604>,  <51.242077, 56.090282, 56.028023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.394417, 56.031185, 56.629604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.708946, 55.882011, 56.432579>,  <51.897663, 55.792507, 56.314365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.708946, 55.882011, 56.432579>,  <51.394417, 56.031185, 56.629604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.708946, 55.882011, 56.432579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579947, 0.170734, 0.796562,
		-0.212965, -0.912016, 0.350533,
		0.786325, -0.372930, -0.492560,
		51.944843, 55.770134, 56.284813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.844082, 55.457714, 56.999809>,  <51.394417, 56.031185, 56.629604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.844082, 55.457714, 56.999809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.097332, 55.623760, 56.738480>,  <52.249283, 55.723389, 56.581684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.097332, 55.623760, 56.738480>,  <51.844082, 55.457714, 56.999809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.097332, 55.623760, 56.738480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714382, 0.011585, 0.699660,
		0.298010, -0.909694, -0.289218,
		0.633126, 0.415118, -0.653322,
		52.287270, 55.748295, 56.542484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.539879, 55.244030, 57.153946>,  <51.844082, 55.457714, 56.999809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.539879, 55.244030, 57.153946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.678192, 55.533043, 56.914482>,  <52.761181, 55.706451, 56.770805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.678192, 55.533043, 56.914482>,  <52.539879, 55.244030, 57.153946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.678192, 55.533043, 56.914482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884175, -0.037311, 0.465664,
		0.314119, -0.690333, -0.651743,
		0.345780, 0.722529, -0.598655,
		52.781925, 55.749802, 56.734886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.181213, 55.022007, 56.823738>,  <52.539879, 55.244030, 57.153946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.181213, 55.022007, 56.823738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.187187, 55.421921, 56.818085>,  <53.190773, 55.661869, 56.814693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.187187, 55.421921, 56.818085>,  <53.181213, 55.022007, 56.823738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.187187, 55.421921, 56.818085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976611, -0.011553, 0.214704,
		0.214495, -0.017011, -0.976577,
		0.014935, 0.999789, -0.014135,
		53.191669, 55.721859, 56.813843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.411793, 54.795170, 56.069408>,  <53.181213, 55.022007, 56.823738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.411793, 54.795170, 56.069408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.798752, 54.791458, 56.170639>,  <54.030930, 54.789230, 56.231377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.798752, 54.791458, 56.170639>,  <53.411793, 54.795170, 56.069408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.798752, 54.791458, 56.170639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116301, -0.903996, 0.411419,
		0.224960, -0.427441, -0.875607,
		0.967402, -0.009281, 0.253075,
		54.088974, 54.788673, 56.246563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.786091, 54.251297, 55.816681>,  <53.411793, 54.795170, 56.069408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.786091, 54.251297, 55.816681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.998306, 54.342827, 56.143158>,  <54.125637, 54.397743, 56.339043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.998306, 54.342827, 56.143158>,  <53.786091, 54.251297, 55.816681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.998306, 54.342827, 56.143158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023875, -0.966526, 0.255455,
		0.847322, -0.116043, -0.518247,
		0.530543, 0.228826, 0.816188,
		54.157471, 54.411476, 56.388016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.438019, 53.930561, 56.151512>,  <53.786091, 54.251297, 55.816681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.438019, 53.930561, 56.151512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.766190, 54.139183, 56.057808>,  <54.963093, 54.264355, 56.001587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.766190, 54.139183, 56.057808>,  <54.438019, 53.930561, 56.151512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.766190, 54.139183, 56.057808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012371, 0.425821, 0.904723,
		0.571611, -0.739365, 0.355809,
		0.820432, 0.521552, -0.234257,
		55.012318, 54.295647, 55.987530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.124599, 53.672409, 56.392147>,  <54.438019, 53.930561, 56.151512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.124599, 53.672409, 56.392147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.112625, 54.070312, 56.353058>,  <55.105438, 54.309055, 56.329605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.112625, 54.070312, 56.353058>,  <55.124599, 53.672409, 56.392147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.112625, 54.070312, 56.353058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080851, 0.099861, 0.991711,
		0.996276, 0.021789, -0.083418,
		-0.029939, 0.994763, -0.097727,
		55.103645, 54.368740, 56.323738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.252396, 52.948631, 56.494946>,  <55.124599, 53.672409, 56.392147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.252396, 52.948631, 56.494946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.550224, 53.213158, 56.458565>,  <55.728924, 53.371872, 56.436737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.550224, 53.213158, 56.458565>,  <55.252396, 52.948631, 56.494946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.550224, 53.213158, 56.458565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662731, -0.748642, -0.017981,
		-0.079979, -0.046887, -0.995693,
		0.744575, 0.661314, -0.090949,
		55.773598, 53.411552, 56.431278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.743374, 52.819023, 55.950535>,  <55.252396, 52.948631, 56.494946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.743374, 52.819023, 55.950535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.959656, 53.081364, 56.161247>,  <56.089424, 53.238770, 56.287674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.959656, 53.081364, 56.161247>,  <55.743374, 52.819023, 55.950535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.959656, 53.081364, 56.161247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820756, -0.548570, -0.159467,
		0.184389, 0.518582, -0.834909,
		0.540703, 0.655853, 0.526780,
		56.121868, 53.278118, 56.319283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.283966, 53.180260, 55.523220>,  <55.743374, 52.819023, 55.950535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.283966, 53.180260, 55.523220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.383797, 53.139690, 55.908432>,  <56.443695, 53.115349, 56.139557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.383797, 53.139690, 55.908432>,  <56.283966, 53.180260, 55.523220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.383797, 53.139690, 55.908432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842681, -0.467203, -0.267598,
		0.477072, 0.878313, -0.031134,
		0.249581, -0.101428, 0.963027,
		56.458672, 53.109261, 56.197342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.837193, 53.495926, 55.814072>,  <56.283966, 53.180260, 55.523220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.837193, 53.495926, 55.814072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.820969, 53.156723, 56.025444>,  <56.811234, 52.953201, 56.152267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.820969, 53.156723, 56.025444>,  <56.837193, 53.495926, 55.814072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.820969, 53.156723, 56.025444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840128, -0.315228, -0.441379,
		0.540869, 0.426049, 0.725219,
		-0.040561, -0.848006, 0.528433,
		56.808800, 52.902321, 56.183975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.391148, 53.278568, 56.379013>,  <56.837193, 53.495926, 55.814072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.391148, 53.278568, 56.379013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.246384, 52.980019, 56.155602>,  <57.159527, 52.800888, 56.021557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.246384, 52.980019, 56.155602>,  <57.391148, 53.278568, 56.379013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.246384, 52.980019, 56.155602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922224, -0.199179, -0.331408,
		0.136107, -0.635026, 0.760406,
		-0.361909, -0.746371, -0.558527,
		57.137810, 52.756107, 55.988045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.309097, 54.048721, 56.631950>,  <57.391148, 53.278568, 56.379013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.309097, 54.048721, 56.631950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.530922, 53.885368, 56.341934>,  <57.664017, 53.787357, 56.167923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.530922, 53.885368, 56.341934>,  <57.309097, 54.048721, 56.631950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.530922, 53.885368, 56.341934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576620, 0.816791, -0.019019,
		0.599974, -0.407526, 0.688443,
		0.554564, -0.408381, -0.725041,
		57.697292, 53.762856, 56.124420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.085602, 54.095322, 56.822651>,  <57.309097, 54.048721, 56.631950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.085602, 54.095322, 56.822651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.058685, 54.085617, 56.423676>,  <58.042534, 54.079796, 56.184292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.058685, 54.085617, 56.423676>,  <58.085602, 54.095322, 56.822651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.058685, 54.085617, 56.423676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341479, 0.938769, -0.045869,
		0.937477, -0.343691, -0.054886,
		-0.067290, -0.024259, -0.997439,
		58.038498, 54.078339, 56.124443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.671379, 54.503296, 56.713879>,  <58.085602, 54.095322, 56.822651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.671379, 54.503296, 56.713879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.463921, 54.513191, 56.372025>,  <58.339447, 54.519127, 56.166912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.463921, 54.513191, 56.372025>,  <58.671379, 54.503296, 56.713879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.463921, 54.513191, 56.372025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060479, 0.996016, 0.065532,
		0.852848, 0.085675, -0.515082,
		-0.518644, 0.024737, -0.854632,
		58.308327, 54.520611, 56.115635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.227833, 54.824123, 56.763657>,  <58.671379, 54.503296, 56.713879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.227833, 54.824123, 56.763657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.418465, 54.702263, 57.093521>,  <59.532845, 54.629147, 57.291439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.418465, 54.702263, 57.093521>,  <59.227833, 54.824123, 56.763657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.418465, 54.702263, 57.093521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609022, -0.790897, 0.059782,
		0.634008, -0.530727, -0.562461,
		0.476576, -0.304649, 0.824659,
		59.561440, 54.610867, 57.340919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.016155, 54.728844, 56.947315>,  <59.227833, 54.824123, 56.763657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.016155, 54.728844, 56.947315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.806908, 54.973991, 57.184204>,  <59.681358, 55.121082, 57.326340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.806908, 54.973991, 57.184204>,  <60.016155, 54.728844, 56.947315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.806908, 54.973991, 57.184204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769955, 0.041931, 0.636719,
		0.365395, 0.789068, -0.493820,
		-0.523121, 0.612873, 0.592226,
		59.649971, 55.157852, 57.361874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.370094, 55.458324, 57.030083>,  <60.016155, 54.728844, 56.947315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.370094, 55.458324, 57.030083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.170067, 55.343082, 57.356743>,  <60.050049, 55.273937, 57.552738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.170067, 55.343082, 57.356743>,  <60.370094, 55.458324, 57.030083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.170067, 55.343082, 57.356743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862345, -0.079307, 0.500071,
		-0.079307, 0.954309, 0.288106,
		-0.500071, -0.288106, 0.816654,
		60.020046, 55.256649, 57.601738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.441944, 56.277943, 56.911800>,  <60.370094, 55.458324, 57.030083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.441944, 56.277943, 56.911800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.622368, 56.160583, 57.248955>,  <60.730621, 56.090168, 57.451248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.622368, 56.160583, 57.248955>,  <60.441944, 56.277943, 56.911800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.622368, 56.160583, 57.248955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415926, -0.904699, -0.092337,
		0.789653, -0.308930, -0.530104,
		0.451059, -0.293398, 0.842890,
		60.757687, 56.072563, 57.501823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.210361, 56.453236, 57.183292>,  <60.441944, 56.277943, 56.911800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.210361, 56.453236, 57.183292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.424706, 56.646687, 56.906464>,  <61.553310, 56.762756, 56.740368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.424706, 56.646687, 56.906464>,  <61.210361, 56.453236, 57.183292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.424706, 56.646687, 56.906464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610551, 0.344201, 0.713269,
		0.583169, -0.804754, -0.110838,
		0.535856, 0.483628, -0.692071,
		61.585461, 56.791775, 56.698841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.905563, 56.349300, 57.399517>,  <61.210361, 56.453236, 57.183292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.905563, 56.349300, 57.399517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.864166, 56.673107, 57.168358>,  <61.839329, 56.867393, 57.029663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.864166, 56.673107, 57.168358>,  <61.905563, 56.349300, 57.399517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.864166, 56.673107, 57.168358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492726, 0.546444, 0.677215,
		0.864008, -0.214659, -0.455424,
		-0.103493, 0.809519, -0.577900,
		61.833118, 56.915962, 56.994987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.512234, 56.582756, 57.176434>,  <61.905563, 56.349300, 57.399517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.512234, 56.582756, 57.176434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.285698, 56.910522, 57.141068>,  <62.149776, 57.107182, 57.119846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.285698, 56.910522, 57.141068>,  <62.512234, 56.582756, 57.176434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.285698, 56.910522, 57.141068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609589, 0.488668, 0.624184,
		0.554674, 0.299600, -0.776258,
		-0.566338, 0.819417, -0.088418,
		62.115795, 57.156349, 57.114544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.493931, 57.222897, 57.489727>,  <62.512234, 56.582756, 57.176434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.493931, 57.222897, 57.489727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.708488, 57.188408, 57.153908>,  <62.837223, 57.167713, 56.952415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.708488, 57.188408, 57.153908>,  <62.493931, 57.222897, 57.489727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.708488, 57.188408, 57.153908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795444, 0.384093, 0.468767,
		0.282047, -0.919260, 0.274611,
		0.536395, -0.086223, -0.839551,
		62.869408, 57.162540, 56.902042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.273876, 57.097214, 57.426727>,  <62.493931, 57.222897, 57.489727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.273876, 57.097214, 57.426727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.349480, 56.869987, 57.747124>,  <63.394844, 56.733654, 57.939362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.349480, 56.869987, 57.747124>,  <63.273876, 57.097214, 57.426727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.349480, 56.869987, 57.747124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893978, 0.437040, 0.098995,
		-0.406299, 0.697353, 0.590440,
		0.189011, -0.568062, 0.800987,
		63.406181, 56.699570, 57.987419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.297901, 57.398918, 58.116230>,  <63.273876, 57.097214, 57.426727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.297901, 57.398918, 58.116230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.548561, 57.094666, 58.048409>,  <63.698956, 56.912113, 58.007717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.548561, 57.094666, 58.048409>,  <63.297901, 57.398918, 58.116230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.548561, 57.094666, 58.048409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777073, 0.593428, 0.209763,
		-0.058935, -0.263204, 0.962938,
		0.626645, -0.760636, -0.169555,
		63.736553, 56.866474, 57.997543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.953739, 57.267849, 58.624191>,  <63.297901, 57.398918, 58.116230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.953739, 57.267849, 58.624191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.051643, 57.108482, 58.270615>,  <64.110382, 57.012863, 58.058468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.051643, 57.108482, 58.270615>,  <63.953739, 57.267849, 58.624191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.051643, 57.108482, 58.270615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890964, 0.452039, 0.042954,
		0.382463, -0.798074, 0.465618,
		0.244758, -0.398420, -0.883943,
		64.125069, 56.988956, 58.005432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.721954, 57.174519, 58.652828>,  <63.953739, 57.267849, 58.624191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.721954, 57.174519, 58.652828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.612366, 57.180008, 58.268173>,  <64.546616, 57.183300, 58.037380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.612366, 57.180008, 58.268173>,  <64.721954, 57.174519, 58.652828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.612366, 57.180008, 58.268173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858758, 0.453653, -0.238189,
		0.432982, -0.891073, -0.136073,
		-0.273973, 0.013722, -0.961639,
		64.530174, 57.184124, 57.979683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.963188, 57.200989, 59.317650>,  <64.721954, 57.174519, 58.652828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.963188, 57.200989, 59.317650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.192978, 57.442066, 59.539185>,  <65.330856, 57.586712, 59.672104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.192978, 57.442066, 59.539185>,  <64.963188, 57.200989, 59.317650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.192978, 57.442066, 59.539185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583098, -0.173515, 0.793656,
		0.574432, -0.778878, 0.251750,
		0.574478, 0.602696, 0.553835,
		65.365318, 57.622875, 59.705334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.119064, 56.832413, 60.001656>,  <64.963188, 57.200989, 59.317650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.119064, 56.832413, 60.001656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.149948, 57.228191, 60.050713>,  <65.168480, 57.465656, 60.080147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.149948, 57.228191, 60.050713>,  <65.119064, 56.832413, 60.001656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.149948, 57.228191, 60.050713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605230, -0.051243, 0.794400,
		0.792298, -0.135557, 0.594885,
		0.077203, 0.989444, 0.122643,
		65.173111, 57.525024, 60.087505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.558235, 57.049030, 60.534794>,  <65.119064, 56.832413, 60.001656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.558235, 57.049030, 60.534794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.600410, 56.652252, 60.506729>,  <65.625717, 56.414185, 60.489891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.600410, 56.652252, 60.506729>,  <65.558235, 57.049030, 60.534794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.600410, 56.652252, 60.506729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962663, 0.119508, -0.242895,
		0.249324, -0.041934, 0.967512,
		0.105440, -0.991947, -0.070164,
		65.632042, 56.354668, 60.485680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.036148, 56.710533, 61.133827>,  <65.558235, 57.049030, 60.534794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.036148, 56.710533, 61.133827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.008797, 56.580605, 60.756508>,  <65.992386, 56.502647, 60.530117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.008797, 56.580605, 60.756508>,  <66.036148, 56.710533, 61.133827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.008797, 56.580605, 60.756508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946926, 0.276542, -0.163874,
		0.314092, -0.904442, 0.288672,
		-0.068385, -0.324823, -0.943299,
		65.988281, 56.483158, 60.473518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.607330, 56.251625, 61.031609>,  <66.036148, 56.710533, 61.133827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.607330, 56.251625, 61.031609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.510269, 56.430878, 60.687447>,  <66.452034, 56.538429, 60.480949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.510269, 56.430878, 60.687447>,  <66.607330, 56.251625, 61.031609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.510269, 56.430878, 60.687447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961836, 0.226734, -0.153177,
		0.126440, -0.864738, -0.486046,
		-0.242661, 0.448129, -0.860404,
		66.437469, 56.565315, 60.429325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.991005, 55.926922, 60.427822>,  <66.607330, 56.251625, 61.031609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.991005, 55.926922, 60.427822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.900475, 56.311226, 60.363663>,  <66.846161, 56.541809, 60.325169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.900475, 56.311226, 60.363663>,  <66.991005, 55.926922, 60.427822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.900475, 56.311226, 60.363663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967883, 0.203315, -0.147871,
		-0.109457, -0.188709, -0.975914,
		-0.226322, 0.960756, -0.160394,
		66.832581, 56.599453, 60.315544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.233376, 56.269402, 59.775841>,  <66.991005, 55.926922, 60.427822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.233376, 56.269402, 59.775841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.174866, 56.580307, 60.020615>,  <67.139755, 56.766850, 60.167480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.174866, 56.580307, 60.020615>,  <67.233376, 56.269402, 59.775841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.174866, 56.580307, 60.020615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895745, 0.366588, -0.251503,
		-0.419812, 0.511348, -0.749854,
		-0.146282, 0.777262, 0.611936,
		67.130981, 56.813484, 60.204197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.833115, 56.338238, 59.874249>,  <67.233376, 56.269402, 59.775841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.833115, 56.338238, 59.874249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.942528, 56.689430, 59.717110>,  <68.008179, 56.900146, 59.622826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.942528, 56.689430, 59.717110>,  <67.833115, 56.338238, 59.874249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.942528, 56.689430, 59.717110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886411, -0.071530, 0.457339,
		0.373433, -0.473326, -0.797816,
		0.273539, 0.877978, -0.392849,
		68.024590, 56.952824, 59.599255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.537575, 56.221577, 59.613941>,  <67.833115, 56.338238, 59.874249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.537575, 56.221577, 59.613941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.473953, 56.608299, 59.693932>,  <68.435776, 56.840332, 59.741928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.473953, 56.608299, 59.693932>,  <68.537575, 56.221577, 59.613941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.473953, 56.608299, 59.693932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967262, 0.112034, 0.227714,
		0.197750, 0.229653, -0.952972,
		-0.159060, 0.966803, 0.199980,
		68.426239, 56.898338, 59.753925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.937752, 56.672886, 59.168713>,  <68.537575, 56.221577, 59.613941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.937752, 56.672886, 59.168713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.849525, 56.800392, 59.537437>,  <68.796585, 56.876896, 59.758671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.849525, 56.800392, 59.537437>,  <68.937752, 56.672886, 59.168713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.849525, 56.800392, 59.537437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974267, 0.027072, 0.223763,
		0.046372, 0.947448, -0.316530,
		-0.220573, 0.318761, 0.921813,
		68.783356, 56.896019, 59.813980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.399124, 57.273743, 59.405422>,  <68.937752, 56.672886, 59.168713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.399124, 57.273743, 59.405422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.268288, 57.089600, 59.735535>,  <69.189789, 56.979115, 59.933601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.268288, 57.089600, 59.735535>,  <69.399124, 57.273743, 59.405422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.268288, 57.089600, 59.735535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869863, 0.194573, 0.453299,
		-0.369256, 0.866148, 0.336806,
		-0.327090, -0.460358, 0.825277,
		69.170158, 56.951492, 59.983116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.493805, 57.665932, 59.901649>,  <69.399124, 57.273743, 59.405422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.493805, 57.665932, 59.901649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.503242, 57.290619, 60.039673>,  <69.508904, 57.065430, 60.122486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.503242, 57.290619, 60.039673>,  <69.493805, 57.665932, 59.901649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.503242, 57.290619, 60.039673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869912, 0.189346, 0.455414,
		-0.492643, 0.289425, 0.820692,
		0.023587, -0.938286, 0.345054,
		69.510315, 57.009132, 60.143188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.582138, 57.649353, 60.720825>,  <69.493805, 57.665932, 59.901649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.582138, 57.649353, 60.720825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.725136, 57.320625, 60.543373>,  <69.810936, 57.123390, 60.436901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.725136, 57.320625, 60.543373>,  <69.582138, 57.649353, 60.720825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.725136, 57.320625, 60.543373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861910, 0.107425, 0.495551,
		-0.359595, -0.559529, 0.746738,
		0.357494, -0.821819, -0.443634,
		69.832382, 57.074081, 60.410282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.991180, 57.307274, 61.244377>,  <69.582138, 57.649353, 60.720825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.991180, 57.307274, 61.244377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.147766, 57.099007, 60.940887>,  <70.241714, 56.974045, 60.758793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.147766, 57.099007, 60.940887>,  <69.991180, 57.307274, 61.244377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.147766, 57.099007, 60.940887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906942, 0.078876, 0.413805,
		-0.155610, -0.850107, 0.503093,
		0.391461, -0.520669, -0.758724,
		70.265205, 56.942806, 60.713272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.420471, 56.707909, 61.553337>,  <69.991180, 57.307274, 61.244377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.420471, 56.707909, 61.553337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.533379, 56.820778, 61.186577>,  <70.601128, 56.888500, 60.966522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.533379, 56.820778, 61.186577>,  <70.420471, 56.707909, 61.553337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.533379, 56.820778, 61.186577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959328, -0.079668, 0.270820,
		0.003370, -0.956051, -0.293182,
		0.282275, 0.282170, -0.916898,
		70.618057, 56.905430, 60.911507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.935326, 56.260635, 61.341221>,  <70.420471, 56.707909, 61.553337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.935326, 56.260635, 61.341221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.975563, 56.622147, 61.174820>,  <70.999702, 56.839054, 61.074978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.975563, 56.622147, 61.174820>,  <70.935326, 56.260635, 61.341221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.975563, 56.622147, 61.174820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972259, -0.000552, 0.233907,
		0.211171, -0.427995, -0.878765,
		0.100597, 0.903781, -0.416005,
		71.005745, 56.893280, 61.050018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.592278, 56.182217, 61.141575>,  <70.935326, 56.260635, 61.341221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.592278, 56.182217, 61.141575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.477631, 56.565434, 61.140404>,  <71.408844, 56.795364, 61.139702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.477631, 56.565434, 61.140404>,  <71.592278, 56.182217, 61.141575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.477631, 56.565434, 61.140404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908800, 0.272860, 0.315640,
		0.303194, 0.087810, -0.948874,
		-0.286627, 0.958038, -0.002927,
		71.391640, 56.852844, 61.139526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.093582, 56.708458, 60.744583>,  <71.592278, 56.182217, 61.141575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.093582, 56.708458, 60.744583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.894203, 56.868023, 61.052460>,  <71.774574, 56.963760, 61.237186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.894203, 56.868023, 61.052460>,  <72.093582, 56.708458, 60.744583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.894203, 56.868023, 61.052460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841614, 0.435629, 0.319240,
		-0.207954, 0.806907, -0.552862,
		-0.498440, 0.398909, 0.769695,
		71.744675, 56.987694, 61.283367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.211342, 57.292416, 60.358521>,  <72.093582, 56.708458, 60.744583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.211342, 57.292416, 60.358521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.484261, 57.486725, 60.577065>,  <72.648010, 57.603310, 60.708191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.484261, 57.486725, 60.577065>,  <72.211342, 57.292416, 60.358521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.484261, 57.486725, 60.577065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421051, -0.872039, 0.249528,
		0.597660, 0.059795, -0.799517,
		0.682289, 0.485770, 0.546359,
		72.688950, 57.632458, 60.740971>
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
