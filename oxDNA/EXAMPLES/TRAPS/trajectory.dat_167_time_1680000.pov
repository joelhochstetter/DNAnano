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
	<36.153858, 52.515091, 50.162189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.361187, 52.717125, 49.886150>,  <36.485584, 52.838345, 49.720528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.361187, 52.717125, 49.886150>,  <36.153858, 52.515091, 50.162189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.361187, 52.717125, 49.886150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844168, -0.431300, 0.318373,
		-0.136834, -0.747577, -0.649927,
		0.518322, 0.505083, -0.690097,
		36.516682, 52.868649, 49.679123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.522995, 52.105545, 49.664001>,  <36.153858, 52.515091, 50.162189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.522995, 52.105545, 49.664001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.668419, 52.455814, 49.791138>,  <36.755672, 52.665977, 49.867416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.668419, 52.455814, 49.791138>,  <36.522995, 52.105545, 49.664001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.668419, 52.455814, 49.791138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672997, -0.482796, 0.560342,
		0.644127, 0.010185, -0.764851,
		0.363560, 0.875674, 0.317836,
		36.777489, 52.718517, 49.886490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.179832, 52.172031, 49.510509>,  <36.522995, 52.105545, 49.664001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.179832, 52.172031, 49.510509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.091938, 52.353298, 49.856075>,  <37.039200, 52.462059, 50.063416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.091938, 52.353298, 49.856075>,  <37.179832, 52.172031, 49.510509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.091938, 52.353298, 49.856075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605490, -0.630999, 0.484997,
		0.764917, 0.629665, -0.135737,
		-0.219736, 0.453169, 0.863918,
		37.026016, 52.489250, 50.115250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.739025, 52.579529, 49.784721>,  <37.179832, 52.172031, 49.510509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.739025, 52.579529, 49.784721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.506287, 52.414272, 50.064941>,  <37.366646, 52.315121, 50.233074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.506287, 52.414272, 50.064941>,  <37.739025, 52.579529, 49.784721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.506287, 52.414272, 50.064941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776604, -0.538046, 0.327707,
		0.241542, 0.734727, 0.633903,
		-0.581844, -0.413137, 0.700553,
		37.331734, 52.290333, 50.275108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.102581, 52.666931, 50.361721>,  <37.739025, 52.579529, 49.784721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.102581, 52.666931, 50.361721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.836861, 52.380554, 50.447636>,  <37.677429, 52.208729, 50.499184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.836861, 52.380554, 50.447636>,  <38.102581, 52.666931, 50.361721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.836861, 52.380554, 50.447636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739892, -0.589033, 0.324960,
		-0.106137, 0.374788, 0.921015,
		-0.664300, -0.715942, 0.214785,
		37.637569, 52.165771, 50.512070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.212879, 52.053837, 49.850559>,  <38.102581, 52.666931, 50.361721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.212879, 52.053837, 49.850559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.406487, 52.112930, 49.505562>,  <38.522652, 52.148384, 49.298561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.406487, 52.112930, 49.505562>,  <38.212879, 52.053837, 49.850559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.406487, 52.112930, 49.505562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155676, -0.984460, -0.081259,
		-0.861098, -0.094940, -0.499495,
		0.484018, 0.147731, -0.862497,
		38.551693, 52.157249, 49.246811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.912167, 51.838535, 49.226501>,  <38.212879, 52.053837, 49.850559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.912167, 51.838535, 49.226501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.310955, 51.820736, 49.252022>,  <38.550228, 51.810059, 49.267334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.310955, 51.820736, 49.252022>,  <37.912167, 51.838535, 49.226501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.310955, 51.820736, 49.252022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049902, -0.995061, 0.085811,
		0.059672, -0.088735, -0.994266,
		0.996970, -0.044495, 0.063805,
		38.610046, 51.807388, 49.271164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370754, 51.511791, 48.625729>,  <37.912167, 51.838535, 49.226501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.370754, 51.511791, 48.625729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.474747, 51.447723, 49.006622>,  <38.537144, 51.409283, 49.235161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.474747, 51.447723, 49.006622>,  <38.370754, 51.511791, 48.625729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.474747, 51.447723, 49.006622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204730, -0.972870, -0.107745,
		0.943660, -0.166939, -0.285721,
		0.259983, -0.160170, 0.952237,
		38.552742, 51.399673, 49.292294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.630352, 50.875504, 48.585739>,  <38.370754, 51.511791, 48.625729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.630352, 50.875504, 48.585739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.505501, 50.921829, 48.962921>,  <38.430592, 50.949627, 49.189232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.505501, 50.921829, 48.962921>,  <38.630352, 50.875504, 48.585739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.505501, 50.921829, 48.962921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416650, -0.908686, -0.026306,
		0.853802, -0.401093, 0.331883,
		-0.312129, 0.115819, 0.942954,
		38.411861, 50.956573, 49.245808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.993626, 50.376507, 49.080528>,  <38.630352, 50.875504, 48.585739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.993626, 50.376507, 49.080528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.618244, 50.470161, 49.182106>,  <38.393017, 50.526356, 49.243053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.618244, 50.470161, 49.182106>,  <38.993626, 50.376507, 49.080528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.618244, 50.470161, 49.182106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235078, -0.971599, 0.027088,
		0.253076, -0.034277, 0.966839,
		-0.938451, 0.234138, 0.253946,
		38.336708, 50.540401, 49.258289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.731850, 50.616634, 49.276463>,  <38.993626, 50.376507, 49.080528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.731850, 50.616634, 49.276463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.118725, 50.547413, 49.202049>,  <40.350849, 50.505878, 49.157402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.118725, 50.547413, 49.202049>,  <39.731850, 50.616634, 49.276463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.118725, 50.547413, 49.202049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090272, -0.450358, 0.888273,
		-0.237499, -0.875917, -0.419957,
		0.967184, -0.173054, -0.186030,
		40.408878, 50.495495, 49.146240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.839531, 50.050823, 49.540379>,  <39.731850, 50.616634, 49.276463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.839531, 50.050823, 49.540379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.196117, 50.229252, 49.508617>,  <40.410069, 50.336308, 49.489563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.196117, 50.229252, 49.508617>,  <39.839531, 50.050823, 49.540379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.196117, 50.229252, 49.508617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304194, -0.459386, 0.834524,
		0.335784, -0.768104, -0.545220,
		0.891468, 0.446072, -0.079398,
		40.463558, 50.363075, 49.484798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.445385, 49.622944, 49.568848>,  <39.839531, 50.050823, 49.540379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.445385, 49.622944, 49.568848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.547516, 49.986389, 49.701050>,  <40.608795, 50.204456, 49.780373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.547516, 49.986389, 49.701050>,  <40.445385, 49.622944, 49.568848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.547516, 49.986389, 49.701050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364699, -0.407093, 0.837419,
		0.895434, -0.093283, -0.435312,
		0.255329, 0.908611, 0.330504,
		40.624115, 50.258972, 49.800201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.189503, 49.794907, 49.623756>,  <40.445385, 49.622944, 49.568848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.189503, 49.794907, 49.623756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.985970, 49.981586, 49.913109>,  <40.863850, 50.093594, 50.086720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.985970, 49.981586, 49.913109>,  <41.189503, 49.794907, 49.623756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.985970, 49.981586, 49.913109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613931, -0.392332, 0.684955,
		0.603474, 0.792635, -0.086889,
		-0.508830, 0.466696, 0.723385,
		40.833321, 50.121597, 50.130123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.485809, 49.587593, 48.942398>,  <41.189503, 49.794907, 49.623756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.485809, 49.587593, 48.942398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.596073, 49.967739, 49.000122>,  <41.662231, 50.195827, 49.034756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.596073, 49.967739, 49.000122>,  <41.485809, 49.587593, 48.942398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.596073, 49.967739, 49.000122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608917, -0.288802, 0.738792,
		0.743796, -0.115783, -0.658302,
		0.275658, 0.950362, 0.144308,
		41.678772, 50.252850, 49.043415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.124447, 49.535713, 49.092640>,  <41.485809, 49.587593, 48.942398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.124447, 49.535713, 49.092640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.026932, 49.904533, 49.212906>,  <41.968422, 50.125824, 49.285065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.026932, 49.904533, 49.212906>,  <42.124447, 49.535713, 49.092640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.026932, 49.904533, 49.212906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689363, -0.053309, 0.722452,
		0.682162, 0.383393, -0.622628,
		-0.243791, 0.922046, 0.300662,
		41.953793, 50.181149, 49.303104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.665508, 49.975204, 49.376240>,  <42.124447, 49.535713, 49.092640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.665508, 49.975204, 49.376240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.317303, 50.081352, 49.542027>,  <42.108379, 50.145042, 49.641499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.317303, 50.081352, 49.542027>,  <42.665508, 49.975204, 49.376240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.317303, 50.081352, 49.542027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330798, -0.308033, 0.892013,
		0.364386, 0.913615, 0.180362,
		-0.870514, 0.265374, 0.414466,
		42.056149, 50.160965, 49.666367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.127392, 49.478180, 49.352066>,  <42.665508, 49.975204, 49.376240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.127392, 49.478180, 49.352066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.439629, 49.558495, 49.115299>,  <43.626968, 49.606682, 48.973240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.439629, 49.558495, 49.115299>,  <43.127392, 49.478180, 49.352066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.439629, 49.558495, 49.115299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468936, 0.437994, 0.766981,
		0.413249, -0.876270, 0.247741,
		0.780592, 0.200780, -0.591915,
		43.673805, 49.618732, 48.937725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.690273, 49.188126, 49.528152>,  <43.127392, 49.478180, 49.352066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.690273, 49.188126, 49.528152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.731129, 49.551960, 49.367043>,  <43.755642, 49.770260, 49.270378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.731129, 49.551960, 49.367043>,  <43.690273, 49.188126, 49.528152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.731129, 49.551960, 49.367043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441043, 0.321511, 0.837921,
		0.891655, -0.263224, -0.368327,
		0.102140, 0.909584, -0.402770,
		43.761772, 49.824837, 49.246212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.474613, 49.388462, 49.336456>,  <43.690273, 49.188126, 49.528152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.474613, 49.388462, 49.336456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.184521, 49.635384, 49.458420>,  <44.010464, 49.783535, 49.531597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.184521, 49.635384, 49.458420>,  <44.474613, 49.388462, 49.336456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.184521, 49.635384, 49.458420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578827, 0.306859, 0.755511,
		0.372818, 0.724411, -0.579858,
		-0.725236, 0.617305, 0.304906,
		43.966949, 49.820576, 49.549892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.644241, 50.080048, 49.634823>,  <44.474613, 49.388462, 49.336456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.644241, 50.080048, 49.634823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.348576, 50.002243, 49.892754>,  <44.171177, 49.955563, 50.047512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.348576, 50.002243, 49.892754>,  <44.644241, 50.080048, 49.634823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.348576, 50.002243, 49.892754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620039, 0.177377, 0.764257,
		-0.263033, 0.964730, -0.010507,
		-0.739165, -0.194510, 0.644826,
		44.126827, 49.943890, 50.086201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.467773, 50.713902, 49.995090>,  <44.644241, 50.080048, 49.634823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.467773, 50.713902, 49.995090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.462006, 50.347389, 50.155197>,  <44.458546, 50.127480, 50.251263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.462006, 50.347389, 50.155197>,  <44.467773, 50.713902, 49.995090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.462006, 50.347389, 50.155197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670331, 0.288172, 0.683822,
		-0.741922, 0.278175, 0.610058,
		-0.014421, -0.916283, 0.400271,
		44.457680, 50.072506, 50.275280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.184830, 50.821598, 50.740711>,  <44.467773, 50.713902, 49.995090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.184830, 50.821598, 50.740711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.403675, 50.494312, 50.670067>,  <44.534981, 50.297939, 50.627682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.403675, 50.494312, 50.670067>,  <44.184830, 50.821598, 50.740711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.403675, 50.494312, 50.670067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746149, 0.381087, 0.545924,
		-0.379381, -0.430457, 0.819009,
		0.547111, -0.818217, -0.176608,
		44.567810, 50.248848, 50.617085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.601475, 50.412319, 51.231922>,  <44.184830, 50.821598, 50.740711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.601475, 50.412319, 51.231922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.840858, 50.379539, 50.913139>,  <44.984489, 50.359871, 50.721870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.840858, 50.379539, 50.913139>,  <44.601475, 50.412319, 51.231922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.840858, 50.379539, 50.913139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801122, 0.070397, 0.594346,
		0.007399, -0.994147, 0.107779,
		0.598455, -0.081946, -0.796955,
		45.020393, 50.354958, 50.674053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.122772, 49.890839, 51.523804>,  <44.601475, 50.412319, 51.231922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.122772, 49.890839, 51.523804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.259361, 50.137024, 51.239662>,  <45.341316, 50.284737, 51.069176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.259361, 50.137024, 51.239662>,  <45.122772, 49.890839, 51.523804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.259361, 50.137024, 51.239662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862212, 0.095735, 0.497419,
		0.374149, -0.782330, -0.497969,
		0.341473, 0.615463, -0.710353,
		45.361801, 50.321663, 51.026558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.725063, 49.559719, 51.092339>,  <45.122772, 49.890839, 51.523804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.725063, 49.559719, 51.092339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.700764, 49.951820, 51.167603>,  <45.686184, 50.187080, 51.212761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.700764, 49.951820, 51.167603>,  <45.725063, 49.559719, 51.092339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.700764, 49.951820, 51.167603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924225, -0.015952, 0.381515,
		0.376985, 0.197083, -0.905009,
		-0.060753, 0.980257, 0.188162,
		45.682537, 50.245899, 51.224052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.099396, 49.752075, 51.737503>,  <45.725063, 49.559719, 51.092339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.099396, 49.752075, 51.737503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.259911, 49.386486, 51.761604>,  <46.356220, 49.167133, 51.776066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.259911, 49.386486, 51.761604>,  <46.099396, 49.752075, 51.737503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.259911, 49.386486, 51.761604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915177, 0.402784, 0.014723,
		-0.037727, 0.049237, 0.998074,
		0.401284, -0.913970, 0.060257,
		46.380295, 49.112297, 51.779682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.789848, 49.934299, 51.809181>,  <46.099396, 49.752075, 51.737503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.789848, 49.934299, 51.809181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.811718, 49.534969, 51.816750>,  <46.824841, 49.295372, 51.821293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.811718, 49.534969, 51.816750>,  <46.789848, 49.934299, 51.809181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.811718, 49.534969, 51.816750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997949, 0.054001, -0.034382,
		0.033302, 0.020764, 0.999230,
		0.054673, -0.998325, 0.018923,
		46.828121, 49.235474, 51.822426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.236671, 49.706383, 52.315910>,  <46.789848, 49.934299, 51.809181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.236671, 49.706383, 52.315910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.222111, 49.394180, 52.066277>,  <47.213375, 49.206860, 51.916496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.222111, 49.394180, 52.066277>,  <47.236671, 49.706383, 52.315910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.222111, 49.394180, 52.066277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994358, 0.033971, -0.100491,
		0.099635, -0.624223, 0.774867,
		-0.036406, -0.780507, -0.624086,
		47.211189, 49.160027, 51.879051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.719501, 49.097225, 52.552078>,  <47.236671, 49.706383, 52.315910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.719501, 49.097225, 52.552078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.674339, 49.090397, 52.154694>,  <47.647243, 49.086300, 51.916264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.674339, 49.090397, 52.154694>,  <47.719501, 49.097225, 52.552078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.674339, 49.090397, 52.154694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993417, 0.017580, -0.113201,
		0.019397, -0.999699, 0.014972,
		-0.112904, -0.017069, -0.993459,
		47.640469, 49.085278, 51.856655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.234795, 48.749722, 52.323662>,  <47.719501, 49.097225, 52.552078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.234795, 48.749722, 52.323662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.110744, 48.945480, 51.997639>,  <48.036316, 49.062935, 51.802025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.110744, 48.945480, 51.997639>,  <48.234795, 48.749722, 52.323662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.110744, 48.945480, 51.997639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950621, 0.170391, -0.259396,
		0.011930, -0.855252, -0.518076,
		-0.310124, 0.489399, -0.815053,
		48.017708, 49.092300, 51.753124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.501667, 48.420200, 51.623199>,  <48.234795, 48.749722, 52.323662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.501667, 48.420200, 51.623199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.431950, 48.812672, 51.589958>,  <48.390121, 49.048157, 51.570015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.431950, 48.812672, 51.589958>,  <48.501667, 48.420200, 51.623199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.431950, 48.812672, 51.589958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904406, 0.126129, -0.407603,
		-0.389450, -0.146200, -0.909370,
		-0.174290, 0.981181, -0.083103,
		48.379662, 49.107025, 51.565025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.608017, 48.604664, 50.917530>,  <48.501667, 48.420200, 51.623199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.608017, 48.604664, 50.917530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.691154, 48.886528, 51.188896>,  <48.741039, 49.055649, 51.351715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.691154, 48.886528, 51.188896>,  <48.608017, 48.604664, 50.917530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.691154, 48.886528, 51.188896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890659, 0.150387, -0.429080,
		-0.404382, 0.693420, -0.596358,
		0.207848, 0.704665, 0.678415,
		48.753510, 49.097927, 51.392422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.260735, 48.620461, 50.670444>,  <48.608017, 48.604664, 50.917530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.260735, 48.620461, 50.670444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.187103, 48.926102, 50.917755>,  <49.142925, 49.109486, 51.066139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.187103, 48.926102, 50.917755>,  <49.260735, 48.620461, 50.670444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.187103, 48.926102, 50.917755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881236, 0.406908, -0.240519,
		-0.435362, 0.500572, -0.748257,
		-0.184075, 0.764103, 0.618274,
		49.131882, 49.155334, 51.103237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.297981, 49.097637, 50.229702>,  <49.260735, 48.620461, 50.670444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.297981, 49.097637, 50.229702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.377831, 49.208797, 50.605556>,  <49.425739, 49.275494, 50.831070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.377831, 49.208797, 50.605556>,  <49.297981, 49.097637, 50.229702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.377831, 49.208797, 50.605556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840806, 0.443857, -0.309896,
		-0.503185, 0.851918, -0.145053,
		0.199624, 0.277896, 0.939640,
		49.437717, 49.292168, 50.887447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.537323, 49.859337, 50.335388>,  <49.297981, 49.097637, 50.229702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.537323, 49.859337, 50.335388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.687504, 49.616779, 50.615768>,  <49.777611, 49.471245, 50.783997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.687504, 49.616779, 50.615768>,  <49.537323, 49.859337, 50.335388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.687504, 49.616779, 50.615768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895658, 0.431902, -0.106103,
		-0.238402, 0.667647, 0.705274,
		0.375448, -0.606389, 0.700950,
		49.800137, 49.434864, 50.826054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.775169, 50.231495, 50.925961>,  <49.537323, 49.859337, 50.335388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.775169, 50.231495, 50.925961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.981361, 49.890945, 50.887108>,  <50.105076, 49.686615, 50.863796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.981361, 49.890945, 50.887108>,  <49.775169, 50.231495, 50.925961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.981361, 49.890945, 50.887108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846287, 0.523603, -0.098177,
		0.134446, -0.031596, 0.990417,
		0.515483, -0.851376, -0.097136,
		50.136005, 49.635532, 50.857967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.345181, 50.200287, 51.463455>,  <49.775169, 50.231495, 50.925961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.345181, 50.200287, 51.463455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.447651, 49.985241, 51.142124>,  <50.509132, 49.856213, 50.949326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.447651, 49.985241, 51.142124>,  <50.345181, 50.200287, 51.463455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.447651, 49.985241, 51.142124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802032, 0.582102, -0.133798,
		0.539552, -0.610019, 0.580310,
		0.256180, -0.537619, -0.803329,
		50.524506, 49.823956, 50.901127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.096119, 49.959270, 51.524284>,  <50.345181, 50.200287, 51.463455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.096119, 49.959270, 51.524284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.018192, 49.962681, 51.131962>,  <50.971436, 49.964725, 50.896568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.018192, 49.962681, 51.131962>,  <51.096119, 49.959270, 51.524284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.018192, 49.962681, 51.131962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849287, 0.501703, -0.164334,
		0.490671, -0.864998, -0.104980,
		-0.194817, 0.008524, -0.980803,
		50.959747, 49.965237, 50.837723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.074577, 49.440407, 51.980278>,  <51.096119, 49.959270, 51.524284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.074577, 49.440407, 51.980278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.001781, 49.454933, 52.373329>,  <50.958103, 49.463650, 52.609161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.001781, 49.454933, 52.373329>,  <51.074577, 49.440407, 51.980278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.001781, 49.454933, 52.373329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962594, 0.210580, 0.170496,
		-0.200730, 0.976902, -0.073283,
		-0.181990, 0.036318, 0.982630,
		50.947186, 49.465828, 52.668118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.340256, 50.113770, 52.363064>,  <51.074577, 49.440407, 51.980278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.340256, 50.113770, 52.363064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.351059, 49.791153, 52.599289>,  <51.357540, 49.597584, 52.741024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.351059, 49.791153, 52.599289>,  <51.340256, 50.113770, 52.363064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.351059, 49.791153, 52.599289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990089, 0.103038, 0.095432,
		-0.137820, 0.582134, 0.801327,
		0.027012, -0.806538, 0.590565,
		51.359161, 49.549191, 52.776459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.583874, 50.236492, 53.109943>,  <51.340256, 50.113770, 52.363064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.583874, 50.236492, 53.109943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.647934, 49.885132, 52.929825>,  <51.686371, 49.674316, 52.821754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.647934, 49.885132, 52.929825>,  <51.583874, 50.236492, 53.109943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.647934, 49.885132, 52.929825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986137, 0.162450, 0.033827,
		0.043438, -0.449474, 0.892237,
		0.160148, -0.878398, -0.450300,
		51.695980, 49.621613, 52.794735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.214214, 50.016121, 53.450352>,  <51.583874, 50.236492, 53.109943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.214214, 50.016121, 53.450352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.155045, 49.819981, 53.106800>,  <52.119545, 49.702297, 52.900669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.155045, 49.819981, 53.106800>,  <52.214214, 50.016121, 53.450352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.155045, 49.819981, 53.106800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966145, 0.113969, -0.231462,
		0.211384, -0.864040, 0.456895,
		-0.147920, -0.490354, -0.858879,
		52.110668, 49.672874, 52.849136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.716156, 49.629169, 53.372330>,  <52.214214, 50.016121, 53.450352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.716156, 49.629169, 53.372330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.589161, 49.624905, 52.993050>,  <52.512966, 49.622345, 52.765480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.589161, 49.624905, 52.993050>,  <52.716156, 49.629169, 53.372330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.589161, 49.624905, 52.993050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947426, -0.045584, -0.316710,
		-0.039845, -0.998904, 0.024578,
		-0.317483, -0.010666, -0.948204,
		52.493916, 49.621704, 52.708588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.252029, 49.312073, 52.983490>,  <52.716156, 49.629169, 53.372330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.252029, 49.312073, 52.983490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.351856, 49.193409, 52.614769>,  <53.411751, 49.122211, 52.393536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.351856, 49.193409, 52.614769>,  <53.252029, 49.312073, 52.983490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.351856, 49.193409, 52.614769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520033, -0.761948, 0.386005,
		-0.816874, -0.575699, -0.035883,
		0.249563, -0.296657, -0.921799,
		53.426723, 49.104412, 52.338230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.843571, 48.988117, 53.355896>,  <53.252029, 49.312073, 52.983490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.843571, 48.988117, 53.355896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.033905, 48.823204, 53.045128>,  <54.148106, 48.724258, 52.858665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.033905, 48.823204, 53.045128>,  <53.843571, 48.988117, 53.355896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.033905, 48.823204, 53.045128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698888, 0.713523, 0.049406,
		0.533981, -0.566489, 0.627658,
		0.475837, -0.412280, -0.776920,
		54.176655, 48.699520, 52.812054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.593693, 48.590797, 53.323097>,  <53.843571, 48.988117, 53.355896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.593693, 48.590797, 53.323097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.487923, 48.811596, 53.006775>,  <54.424461, 48.944077, 52.816982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.487923, 48.811596, 53.006775>,  <54.593693, 48.590797, 53.323097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.487923, 48.811596, 53.006775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782435, 0.602169, 0.158705,
		0.563805, -0.576791, -0.591131,
		-0.264422, 0.552000, -0.790808,
		54.408596, 48.977196, 52.769531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.033432, 49.192059, 53.303547>,  <54.593693, 48.590797, 53.323097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.033432, 49.192059, 53.303547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.250076, 48.855934, 53.294342>,  <55.380062, 48.654259, 53.288818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.250076, 48.855934, 53.294342>,  <55.033432, 49.192059, 53.303547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.250076, 48.855934, 53.294342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391839, -0.228143, -0.891298,
		0.743719, 0.491757, -0.452833,
		0.541613, -0.840313, -0.023015,
		55.412560, 48.603840, 53.287437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.690590, 49.416145, 53.723999>,  <55.033432, 49.192059, 53.303547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.690590, 49.416145, 53.723999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.853142, 49.052567, 53.761238>,  <55.950672, 48.834419, 53.783581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.853142, 49.052567, 53.761238>,  <55.690590, 49.416145, 53.723999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.853142, 49.052567, 53.761238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912613, -0.408759, -0.007283,
		0.044675, -0.082004, -0.995630,
		0.406375, -0.908951, 0.093100,
		55.975056, 48.779881, 53.789169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.309891, 49.366848, 53.355537>,  <55.690590, 49.416145, 53.723999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.309891, 49.366848, 53.355537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.652046, 49.263470, 53.535103>,  <56.857338, 49.201443, 53.642841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.652046, 49.263470, 53.535103>,  <56.309891, 49.366848, 53.355537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.652046, 49.263470, 53.535103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497719, 0.650166, -0.574073,
		-0.143505, 0.714487, 0.684773,
		0.855384, -0.258442, 0.448916,
		56.908661, 49.185936, 53.669777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.657703, 49.907410, 53.751873>,  <56.309891, 49.366848, 53.355537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.657703, 49.907410, 53.751873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.903778, 49.644531, 53.577682>,  <57.051422, 49.486805, 53.473167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.903778, 49.644531, 53.577682>,  <56.657703, 49.907410, 53.751873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.903778, 49.644531, 53.577682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427397, 0.742167, -0.516257,
		0.662476, 0.131475, 0.737455,
		0.615189, -0.657194, -0.435476,
		57.088333, 49.447372, 53.447041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.044216, 50.269882, 53.819355>,  <56.657703, 49.907410, 53.751873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.044216, 50.269882, 53.819355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.056717, 50.178589, 54.208595>,  <56.064217, 50.123814, 54.442139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.056717, 50.178589, 54.208595>,  <56.044216, 50.269882, 53.819355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.056717, 50.178589, 54.208595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884512, 0.459709, 0.079416,
		-0.465470, 0.858241, 0.216239,
		0.031249, -0.228231, 0.973105,
		56.066093, 50.110119, 54.500526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.168816, 50.901825, 54.280304>,  <56.044216, 50.269882, 53.819355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.168816, 50.901825, 54.280304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.332207, 50.581390, 54.455307>,  <56.430241, 50.389130, 54.560307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.332207, 50.581390, 54.455307>,  <56.168816, 50.901825, 54.280304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.332207, 50.581390, 54.455307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798019, 0.546093, 0.254849,
		-0.443073, 0.245037, 0.862347,
		0.408474, -0.801086, 0.437504,
		56.454750, 50.341064, 54.586559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.338348, 50.927212, 54.999840>,  <56.168816, 50.901825, 54.280304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.338348, 50.927212, 54.999840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.594749, 50.680401, 54.817238>,  <56.748589, 50.532314, 54.707676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.594749, 50.680401, 54.817238>,  <56.338348, 50.927212, 54.999840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.594749, 50.680401, 54.817238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767411, 0.504206, 0.396052,
		-0.014199, -0.604199, 0.796707,
		0.640998, -0.617025, -0.456509,
		56.787048, 50.495293, 54.680286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.728458, 50.724297, 55.440403>,  <56.338348, 50.927212, 54.999840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.728458, 50.724297, 55.440403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.892601, 50.757771, 55.077171>,  <56.991085, 50.777855, 54.859234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.892601, 50.757771, 55.077171>,  <56.728458, 50.724297, 55.440403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.892601, 50.757771, 55.077171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709085, 0.596865, 0.375434,
		0.573418, -0.797965, 0.185588,
		0.410354, 0.083683, -0.908078,
		57.015709, 50.782875, 54.804749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.386974, 50.384243, 55.449783>,  <56.728458, 50.724297, 55.440403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.386974, 50.384243, 55.449783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.371605, 50.709301, 55.217186>,  <57.362385, 50.904335, 55.077629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.371605, 50.709301, 55.217186>,  <57.386974, 50.384243, 55.449783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.371605, 50.709301, 55.217186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713837, 0.429538, 0.553112,
		0.699257, -0.393839, -0.596599,
		-0.038425, 0.812642, -0.581495,
		57.360077, 50.953094, 55.042736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.043339, 50.466019, 54.992401>,  <57.386974, 50.384243, 55.449783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.043339, 50.466019, 54.992401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.856895, 50.803802, 55.097946>,  <57.745029, 51.006474, 55.161274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.856895, 50.803802, 55.097946>,  <58.043339, 50.466019, 54.992401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.856895, 50.803802, 55.097946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818581, 0.298482, 0.490749,
		0.335659, 0.444740, -0.830385,
		-0.466110, 0.844462, 0.263867,
		57.717064, 51.057140, 55.177105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.476055, 50.888691, 55.249969>,  <58.043339, 50.466019, 54.992401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.476055, 50.888691, 55.249969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.149933, 51.079777, 55.380852>,  <57.954258, 51.194427, 55.459381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.149933, 51.079777, 55.380852>,  <58.476055, 50.888691, 55.249969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.149933, 51.079777, 55.380852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578590, 0.650215, 0.492396,
		0.022472, 0.590771, -0.806526,
		-0.815309, 0.477713, 0.327202,
		57.905338, 51.223091, 55.479012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.678894, 51.567574, 55.136154>,  <58.476055, 50.888691, 55.249969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.678894, 51.567574, 55.136154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.395126, 51.525284, 55.414879>,  <58.224865, 51.499908, 55.582111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.395126, 51.525284, 55.414879>,  <58.678894, 51.567574, 55.136154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.395126, 51.525284, 55.414879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590405, 0.450780, 0.669492,
		-0.384890, 0.886352, -0.257372,
		-0.709423, -0.105728, 0.696807,
		58.182301, 51.493565, 55.623920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.542332, 52.220493, 55.388737>,  <58.678894, 51.567574, 55.136154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.542332, 52.220493, 55.388737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.512047, 51.915020, 55.645187>,  <58.493874, 51.731735, 55.799057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.512047, 51.915020, 55.645187>,  <58.542332, 52.220493, 55.388737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.512047, 51.915020, 55.645187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581657, 0.488421, 0.650477,
		-0.809903, 0.422169, 0.407223,
		-0.075715, -0.763687, 0.641131,
		58.489334, 51.685913, 55.837528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.139118, 52.264736, 56.105186>,  <58.542332, 52.220493, 55.388737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.139118, 52.264736, 56.105186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.479439, 52.054749, 56.095772>,  <58.683632, 51.928757, 56.090122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.479439, 52.054749, 56.095772>,  <58.139118, 52.264736, 56.105186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.479439, 52.054749, 56.095772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371924, 0.569908, 0.732720,
		-0.371238, -0.632151, 0.680123,
		0.850797, -0.524967, -0.023540,
		58.734676, 51.897259, 56.088711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.223465, 52.014305, 56.834137>,  <58.139118, 52.264736, 56.105186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.223465, 52.014305, 56.834137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.549088, 52.075726, 56.610092>,  <58.744461, 52.112576, 56.475666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.549088, 52.075726, 56.610092>,  <58.223465, 52.014305, 56.834137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.549088, 52.075726, 56.610092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291286, 0.726405, 0.622485,
		0.502453, -0.669894, 0.546610,
		0.814060, 0.153550, -0.560116,
		58.793304, 52.121792, 56.442059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.969639, 51.857037, 57.111801>,  <58.223465, 52.014305, 56.834137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.969639, 51.857037, 57.111801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.957603, 52.154266, 56.844391>,  <58.950382, 52.332603, 56.683945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.957603, 52.154266, 56.844391>,  <58.969639, 51.857037, 57.111801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.957603, 52.154266, 56.844391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132966, 0.665862, 0.734130,
		0.990664, -0.066802, -0.118840,
		-0.030090, 0.743078, -0.668528,
		58.948578, 52.377190, 56.643833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.628071, 52.137836, 57.172363>,  <58.969639, 51.857037, 57.111801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.628071, 52.137836, 57.172363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.310707, 52.361790, 57.076836>,  <59.120289, 52.496162, 57.019520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.310707, 52.361790, 57.076836>,  <59.628071, 52.137836, 57.172363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.310707, 52.361790, 57.076836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002219, 0.395010, 0.918674,
		0.608687, 0.728353, -0.314646,
		-0.793407, 0.559883, -0.238821,
		59.072685, 52.529755, 57.005188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.989048, 52.621788, 57.704285>,  <59.628071, 52.137836, 57.172363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.989048, 52.621788, 57.704285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.936264, 52.704617, 58.092041>,  <59.904594, 52.754314, 58.324696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.936264, 52.704617, 58.092041>,  <59.989048, 52.621788, 57.704285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.936264, 52.704617, 58.092041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763981, 0.644361, -0.033642,
		-0.631601, 0.736153, -0.243225,
		-0.131959, 0.207067, 0.969386,
		59.896675, 52.766735, 58.382858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.043461, 53.295998, 57.604607>,  <59.989048, 52.621788, 57.704285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.043461, 53.295998, 57.604607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.200134, 53.030628, 57.859619>,  <60.294140, 52.871407, 58.012627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.200134, 53.030628, 57.859619>,  <60.043461, 53.295998, 57.604607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.200134, 53.030628, 57.859619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911746, 0.373006, -0.172005,
		-0.123693, 0.648643, 0.750974,
		0.391687, -0.663422, 0.637536,
		60.317642, 52.831600, 58.050880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.366589, 53.556442, 58.209358>,  <60.043461, 53.295998, 57.604607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.366589, 53.556442, 58.209358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.576164, 53.230671, 58.109604>,  <60.701912, 53.035210, 58.049751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.576164, 53.230671, 58.109604>,  <60.366589, 53.556442, 58.209358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.576164, 53.230671, 58.109604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815182, 0.564345, -0.130358,
		0.246908, -0.134996, 0.959590,
		0.523942, -0.814427, -0.249388,
		60.733345, 52.986343, 58.034786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.923615, 54.072178, 58.506939>,  <60.366589, 53.556442, 58.209358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.923615, 54.072178, 58.506939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.787575, 54.408455, 58.338387>,  <59.705952, 54.610222, 58.237255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.787575, 54.408455, 58.338387>,  <59.923615, 54.072178, 58.506939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.787575, 54.408455, 58.338387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572158, 0.540599, 0.616757,
		0.746304, -0.031339, -0.664867,
		-0.340097, 0.840697, -0.421382,
		59.685547, 54.660664, 58.211971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.504105, 54.576481, 58.244129>,  <59.923615, 54.072178, 58.506939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.504105, 54.576481, 58.244129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.170082, 54.778656, 58.331055>,  <59.969669, 54.899960, 58.383209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.170082, 54.778656, 58.331055>,  <60.504105, 54.576481, 58.244129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.170082, 54.778656, 58.331055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481754, 0.480987, 0.732506,
		0.265709, 0.716372, -0.645143,
		-0.835052, 0.505433, 0.217313,
		59.919567, 54.930286, 58.396248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.211559, 54.328175, 58.378338>,  <60.504105, 54.576481, 58.244129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.211559, 54.328175, 58.378338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.948532, 54.364307, 58.677521>,  <60.790714, 54.385986, 58.857033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.948532, 54.364307, 58.677521>,  <61.211559, 54.328175, 58.378338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.948532, 54.364307, 58.677521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055849, 0.984211, -0.167959,
		-0.751322, -0.152218, -0.642141,
		-0.657568, 0.090329, 0.747961,
		60.751263, 54.391407, 58.901909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.264740, 55.088314, 58.412682>,  <61.211559, 54.328175, 58.378338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.264740, 55.088314, 58.412682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.214386, 55.483135, 58.372940>,  <61.184174, 55.720028, 58.349094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.214386, 55.483135, 58.372940>,  <61.264740, 55.088314, 58.412682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.214386, 55.483135, 58.372940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910312, 0.075125, -0.407048,
		-0.394315, -0.141685, -0.907987,
		-0.125886, 0.987057, -0.099355,
		61.176620, 55.779251, 58.343132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.530552, 55.312138, 57.644745>,  <61.264740, 55.088314, 58.412682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.530552, 55.312138, 57.644745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.578369, 55.577793, 57.939941>,  <61.607059, 55.737186, 58.117058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.578369, 55.577793, 57.939941>,  <61.530552, 55.312138, 57.644745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.578369, 55.577793, 57.939941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989700, -0.020751, -0.141646,
		-0.078758, 0.747323, -0.659777,
		0.119547, 0.664137, 0.737991,
		61.614235, 55.777035, 58.161339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.904751, 56.023483, 57.506241>,  <61.530552, 55.312138, 57.644745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.904751, 56.023483, 57.506241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.977859, 55.909420, 57.882599>,  <62.021725, 55.840984, 58.108414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.977859, 55.909420, 57.882599>,  <61.904751, 56.023483, 57.506241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.977859, 55.909420, 57.882599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977135, 0.158429, -0.141800,
		-0.108630, 0.945297, 0.307591,
		0.182775, -0.285154, 0.940893,
		62.032692, 55.823875, 58.164867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.380051, 56.454727, 58.070438>,  <61.904751, 56.023483, 57.506241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.380051, 56.454727, 58.070438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.414612, 56.065239, 58.154724>,  <62.435349, 55.831547, 58.205296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.414612, 56.065239, 58.154724>,  <62.380051, 56.454727, 58.070438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.414612, 56.065239, 58.154724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984188, 0.050600, -0.169748,
		0.154625, 0.222050, 0.962697,
		0.086405, -0.973721, 0.210715,
		62.440533, 55.773121, 58.217937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.863739, 56.615932, 58.569424>,  <62.380051, 56.454727, 58.070438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.863739, 56.615932, 58.569424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.861526, 56.247231, 58.414330>,  <62.860199, 56.026009, 58.321274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.861526, 56.247231, 58.414330>,  <62.863739, 56.615932, 58.569424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.861526, 56.247231, 58.414330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935508, 0.132203, -0.327640,
		0.353263, -0.364542, 0.861577,
		-0.005535, -0.921754, -0.387734,
		62.859867, 55.970703, 58.298008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.489162, 56.179955, 58.753101>,  <62.863739, 56.615932, 58.569424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.489162, 56.179955, 58.753101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.363953, 56.051918, 58.395432>,  <63.288826, 55.975094, 58.180828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.363953, 56.051918, 58.395432>,  <63.489162, 56.179955, 58.753101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.363953, 56.051918, 58.395432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942293, 0.013049, -0.334536,
		0.118752, -0.947295, 0.297540,
		-0.313022, -0.320096, -0.894179,
		63.270046, 55.955891, 58.127178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.951649, 55.626236, 58.530781>,  <63.489162, 56.179955, 58.753101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.951649, 55.626236, 58.530781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.764801, 55.761009, 58.203789>,  <63.652695, 55.841873, 58.007595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.764801, 55.761009, 58.203789>,  <63.951649, 55.626236, 58.530781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.764801, 55.761009, 58.203789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855792, -0.060171, -0.513809,
		-0.222310, -0.939602, -0.260242,
		-0.467117, 0.336938, -0.817480,
		63.624664, 55.862091, 57.958546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.367401, 56.035645, 57.959679>,  <63.951649, 55.626236, 58.530781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.367401, 56.035645, 57.959679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.760475, 56.086636, 57.905907>,  <64.996323, 56.117229, 57.873642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.760475, 56.086636, 57.905907>,  <64.367401, 56.035645, 57.959679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.760475, 56.086636, 57.905907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174578, -0.880023, 0.441681,
		-0.062000, -0.457504, -0.887043,
		0.982689, 0.127474, -0.134432,
		65.055283, 56.124878, 57.865578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.714470, 55.464195, 57.503780>,  <64.367401, 56.035645, 57.959679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.714470, 55.464195, 57.503780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.955467, 55.600212, 57.792603>,  <65.100067, 55.681824, 57.965897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.955467, 55.600212, 57.792603>,  <64.714470, 55.464195, 57.503780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.955467, 55.600212, 57.792603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163893, -0.938128, 0.305048,
		0.781110, -0.065451, -0.620954,
		0.602500, 0.340046, 0.722054,
		65.136215, 55.702225, 58.009220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.446320, 55.179890, 57.512768>,  <64.714470, 55.464195, 57.503780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.446320, 55.179890, 57.512768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.248177, 55.290760, 57.842079>,  <65.129288, 55.357285, 58.039665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.248177, 55.290760, 57.842079>,  <65.446320, 55.179890, 57.512768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.248177, 55.290760, 57.842079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133532, -0.960761, 0.243122,
		0.858361, 0.010499, 0.512938,
		-0.495364, 0.277180, 0.823278,
		65.099571, 55.373913, 58.089062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.826775, 54.861877, 58.110619>,  <65.446320, 55.179890, 57.512768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.826775, 54.861877, 58.110619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.429070, 54.904388, 58.105522>,  <65.190445, 54.929893, 58.102463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.429070, 54.904388, 58.105522>,  <65.826775, 54.861877, 58.110619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.429070, 54.904388, 58.105522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106574, -0.993977, 0.025547,
		-0.009952, 0.026758, 0.999593,
		-0.994255, 0.106276, -0.012744,
		65.130791, 54.936272, 58.101700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.250053, 55.449242, 58.336842>,  <65.826775, 54.861877, 58.110619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.250053, 55.449242, 58.336842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.944771, 55.698364, 58.405708>,  <65.761604, 55.847836, 58.447029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.944771, 55.698364, 58.405708>,  <66.250053, 55.449242, 58.336842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.944771, 55.698364, 58.405708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429404, 0.289744, 0.855371,
		0.482844, 0.726749, -0.488567,
		-0.763200, 0.622804, 0.172168,
		65.715813, 55.885204, 58.457359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.644302, 55.431698, 59.004723>,  <66.250053, 55.449242, 58.336842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.644302, 55.431698, 59.004723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.920319, 55.342793, 58.729202>,  <67.085930, 55.289448, 58.563889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.920319, 55.342793, 58.729202>,  <66.644302, 55.431698, 59.004723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.920319, 55.342793, 58.729202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353103, 0.934121, 0.052313,
		0.631800, -0.279317, 0.723057,
		0.690034, -0.222263, -0.688805,
		67.127327, 55.276115, 58.522560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.256561, 55.790058, 59.134449>,  <66.644302, 55.431698, 59.004723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.256561, 55.790058, 59.134449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.369415, 55.677830, 58.767479>,  <67.437126, 55.610493, 58.547295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.369415, 55.677830, 58.767479>,  <67.256561, 55.790058, 59.134449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.369415, 55.677830, 58.767479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668392, 0.743489, -0.021828,
		0.688223, -0.607044, 0.397299,
		0.282136, -0.280574, -0.917430,
		67.454056, 55.593658, 58.492249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.008446, 55.742638, 59.146721>,  <67.256561, 55.790058, 59.134449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.008446, 55.742638, 59.146721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.883919, 55.800289, 58.770996>,  <67.809204, 55.834881, 58.545559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.883919, 55.800289, 58.770996>,  <68.008446, 55.742638, 59.146721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.883919, 55.800289, 58.770996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654300, 0.749343, -0.101869,
		0.689186, -0.646306, -0.327585,
		-0.311311, 0.144132, -0.939314,
		67.790527, 55.843529, 58.489201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.626869, 55.880558, 58.810760>,  <68.008446, 55.742638, 59.146721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.626869, 55.880558, 58.810760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.317749, 56.041122, 58.614136>,  <68.132278, 56.137463, 58.496162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.317749, 56.041122, 58.614136>,  <68.626869, 55.880558, 58.810760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.317749, 56.041122, 58.614136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543888, 0.818046, -0.187048,
		0.327036, -0.411906, -0.850518,
		-0.772809, 0.401415, -0.491561,
		68.085907, 56.161549, 58.466667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.874138, 56.164272, 58.233585>,  <68.626869, 55.880558, 58.810760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.874138, 56.164272, 58.233585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.563515, 56.386864, 58.351768>,  <68.377144, 56.520420, 58.422680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.563515, 56.386864, 58.351768>,  <68.874138, 56.164272, 58.233585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.563515, 56.386864, 58.351768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558902, 0.824897, -0.084691,
		-0.290853, 0.099367, -0.951594,
		-0.776552, 0.556481, 0.295460,
		68.330551, 56.553806, 58.440407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.577454, 56.478928, 57.627064>,  <68.874138, 56.164272, 58.233585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.577454, 56.478928, 57.627064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.588799, 56.676182, 57.974861>,  <68.595604, 56.794533, 58.183540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.588799, 56.676182, 57.974861>,  <68.577454, 56.478928, 57.627064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.588799, 56.676182, 57.974861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772125, 0.541623, -0.332367,
		-0.634837, 0.680782, -0.365400,
		0.028360, 0.493134, 0.869491,
		68.597305, 56.824123, 58.235710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.708557, 57.259838, 57.505646>,  <68.577454, 56.478928, 57.627064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.708557, 57.259838, 57.505646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.860207, 57.165909, 57.863670>,  <68.951195, 57.109550, 58.078484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.860207, 57.165909, 57.863670>,  <68.708557, 57.259838, 57.505646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.860207, 57.165909, 57.863670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643963, 0.761569, -0.072959,
		-0.664515, 0.604044, 0.439944,
		0.379118, -0.234825, 0.895057,
		68.973946, 57.095463, 58.132187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.773064, 57.843552, 57.904358>,  <68.708557, 57.259838, 57.505646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.773064, 57.843552, 57.904358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.060394, 57.604652, 58.047081>,  <69.232788, 57.461311, 58.132713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.060394, 57.604652, 58.047081>,  <68.773064, 57.843552, 57.904358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.060394, 57.604652, 58.047081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590689, 0.794526, 0.140763,
		-0.367562, 0.109648, 0.923512,
		0.718321, -0.597248, 0.356806,
		69.275894, 57.425480, 58.154121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.898956, 57.864189, 58.612267>,  <68.773064, 57.843552, 57.904358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.898956, 57.864189, 58.612267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.231453, 57.767250, 58.412148>,  <69.430954, 57.709087, 58.292076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.231453, 57.767250, 58.412148>,  <68.898956, 57.864189, 58.612267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.231453, 57.767250, 58.412148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483581, 0.759133, 0.435737,
		0.274190, -0.604138, 0.748222,
		0.831245, -0.242352, -0.500296,
		69.480827, 57.694546, 58.262058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.499146, 58.337379, 58.753376>,  <68.898956, 57.864189, 58.612267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.499146, 58.337379, 58.753376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.711311, 58.129799, 58.485245>,  <69.838608, 58.005249, 58.324364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.711311, 58.129799, 58.485245>,  <69.499146, 58.337379, 58.753376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.711311, 58.129799, 58.485245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764577, 0.634397, 0.113852,
		0.366173, -0.572910, 0.733275,
		0.530414, -0.518956, -0.670333,
		69.870438, 57.974113, 58.284145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.146851, 58.055656, 59.197800>,  <69.499146, 58.337379, 58.753376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.146851, 58.055656, 59.197800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.205971, 58.064209, 58.802284>,  <70.241447, 58.069340, 58.564976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.205971, 58.064209, 58.802284>,  <70.146851, 58.055656, 59.197800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.205971, 58.064209, 58.802284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873043, 0.466934, 0.140602,
		0.464703, -0.884034, 0.050353,
		0.147808, 0.021378, -0.988785,
		70.250313, 58.070621, 58.505650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.447693, 57.721821, 59.721619>,  <70.146851, 58.055656, 59.197800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.447693, 57.721821, 59.721619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.417068, 57.386581, 59.937668>,  <70.398697, 57.185440, 60.067299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.417068, 57.386581, 59.937668>,  <70.447693, 57.721821, 59.721619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.417068, 57.386581, 59.937668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910695, -0.279321, -0.304327,
		0.405923, 0.468590, 0.784634,
		-0.076560, -0.838095, 0.540125,
		70.394104, 57.135155, 60.099705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.103203, 57.950584, 59.457478>,  <70.447693, 57.721821, 59.721619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.103203, 57.950584, 59.457478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.335709, 57.822784, 59.158127>,  <71.475212, 57.746105, 58.978516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.335709, 57.822784, 59.158127>,  <71.103203, 57.950584, 59.457478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.335709, 57.822784, 59.158127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581920, 0.479643, -0.656743,
		0.568778, 0.817230, 0.092875,
		0.581257, -0.319495, -0.748374,
		71.510086, 57.726936, 58.933617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.250755, 57.247433, 59.652283>,  <71.103203, 57.950584, 59.457478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.250755, 57.247433, 59.652283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.442947, 57.492508, 59.903282>,  <71.558258, 57.639553, 60.053883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.442947, 57.492508, 59.903282>,  <71.250755, 57.247433, 59.652283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.442947, 57.492508, 59.903282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662130, -0.722605, 0.198562,
		0.575091, 0.320081, -0.752874,
		0.480474, 0.612691, 0.627498,
		71.587090, 57.676315, 60.091530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.923981, 57.262459, 59.617622>,  <71.250755, 57.247433, 59.652283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.923981, 57.262459, 59.617622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.907684, 57.334728, 60.010704>,  <71.897903, 57.378090, 60.246552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.907684, 57.334728, 60.010704>,  <71.923981, 57.262459, 59.617622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.907684, 57.334728, 60.010704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822626, -0.552171, 0.135625,
		0.567122, 0.813919, -0.126126,
		-0.040744, 0.180670, 0.982699,
		71.895462, 57.388931, 60.305515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.567444, 57.604839, 60.017117>,  <71.923981, 57.262459, 59.617622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.567444, 57.604839, 60.017117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.348412, 57.363079, 60.248589>,  <72.216995, 57.218025, 60.387470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.348412, 57.363079, 60.248589>,  <72.567444, 57.604839, 60.017117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.348412, 57.363079, 60.248589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813616, -0.546098, 0.199516,
		0.195426, 0.580069, 0.790777,
		-0.547575, -0.604398, 0.578675,
		72.184135, 57.181759, 60.422192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.931900, 57.090843, 60.405224>,  <72.567444, 57.604839, 60.017117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.931900, 57.090843, 60.405224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.148048, 57.335537, 60.174126>,  <73.277733, 57.482353, 60.035465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.148048, 57.335537, 60.174126>,  <72.931900, 57.090843, 60.405224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.148048, 57.335537, 60.174126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253480, 0.536380, 0.805012,
		0.802343, -0.581446, 0.134778,
		0.540364, 0.611732, -0.577746,
		73.310158, 57.519058, 60.000801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.573524, 57.134434, 60.784752>,  <72.931900, 57.090843, 60.405224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.573524, 57.134434, 60.784752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.512016, 57.456917, 60.556229>,  <73.475113, 57.650406, 60.419117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.512016, 57.456917, 60.556229>,  <73.573524, 57.134434, 60.784752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.512016, 57.456917, 60.556229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420698, 0.576576, 0.700410,
		0.894074, -0.132643, -0.427829,
		-0.153772, 0.806204, -0.571304,
		73.465881, 57.698776, 60.384838>
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
