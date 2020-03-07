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
	<36.168537, 52.697781, 50.098438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.239239, 52.304577, 50.118202>,  <36.281662, 52.068653, 50.130062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.239239, 52.304577, 50.118202>,  <36.168537, 52.697781, 50.098438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.239239, 52.304577, 50.118202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918139, 0.182766, 0.351592,
		-0.354650, -0.016779, 0.934848,
		0.176758, -0.983013, 0.049413,
		36.292267, 52.009674, 50.133026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.261017, 52.358013, 50.826038>,  <36.168537, 52.697781, 50.098438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.261017, 52.358013, 50.826038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.477982, 52.218964, 50.520111>,  <36.608162, 52.135536, 50.336555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.477982, 52.218964, 50.520111>,  <36.261017, 52.358013, 50.826038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.477982, 52.218964, 50.520111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813368, 0.445172, 0.374504,
		0.210291, -0.825217, 0.524209,
		0.542410, -0.347620, -0.764821,
		36.640705, 52.114677, 50.290665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.654404, 52.145542, 51.397087>,  <36.261017, 52.358013, 50.826038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.654404, 52.145542, 51.397087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.570717, 52.179943, 51.786720>,  <36.520504, 52.200584, 52.020500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.570717, 52.179943, 51.786720>,  <36.654404, 52.145542, 51.397087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.570717, 52.179943, 51.786720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872057, -0.434285, 0.225642,
		0.442434, 0.896661, 0.015861,
		-0.209213, 0.086000, 0.974081,
		36.507954, 52.205742, 52.078945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.196564, 52.570065, 51.800587>,  <36.654404, 52.145542, 51.397087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.196564, 52.570065, 51.800587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.041443, 52.282574, 52.031425>,  <36.948368, 52.110081, 52.169930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.041443, 52.282574, 52.031425>,  <37.196564, 52.570065, 51.800587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.041443, 52.282574, 52.031425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911010, -0.203607, 0.358616,
		-0.140245, 0.664816, 0.733724,
		-0.387805, -0.718724, 0.577099,
		36.925102, 52.066956, 52.204556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.404186, 52.706383, 52.489475>,  <37.196564, 52.570065, 51.800587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.404186, 52.706383, 52.489475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.333767, 52.315704, 52.440369>,  <37.291515, 52.081299, 52.410904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.333767, 52.315704, 52.440369>,  <37.404186, 52.706383, 52.489475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.333767, 52.315704, 52.440369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936742, -0.204551, 0.284031,
		-0.302524, -0.064998, 0.950923,
		-0.176051, -0.976696, -0.122768,
		37.280952, 52.022697, 52.403538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.371910, 52.315655, 53.065948>,  <37.404186, 52.706383, 52.489475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.371910, 52.315655, 53.065948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.508595, 52.125698, 52.741550>,  <37.590607, 52.011723, 52.546913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.508595, 52.125698, 52.741550>,  <37.371910, 52.315655, 53.065948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.508595, 52.125698, 52.741550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935067, 0.258335, 0.242719,
		0.094241, -0.841271, 0.532336,
		0.341713, -0.474895, -0.810991,
		37.611107, 51.983231, 52.498253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.060543, 52.191311, 53.168453>,  <37.371910, 52.315655, 53.065948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.060543, 52.191311, 53.168453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.048512, 52.194553, 52.768646>,  <38.041290, 52.196499, 52.528763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.048512, 52.194553, 52.768646>,  <38.060543, 52.191311, 53.168453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.048512, 52.194553, 52.768646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953166, 0.301308, -0.026244,
		0.300949, -0.953493, -0.016785,
		-0.030081, 0.008101, -0.999515,
		38.039486, 52.196983, 52.468792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.582954, 51.784878, 53.004578>,  <38.060543, 52.191311, 53.168453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.582954, 51.784878, 53.004578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.524628, 52.017998, 52.684807>,  <38.489632, 52.157871, 52.492947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.524628, 52.017998, 52.684807>,  <38.582954, 51.784878, 53.004578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.524628, 52.017998, 52.684807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978019, 0.206664, -0.027726,
		0.149053, -0.785895, -0.600126,
		-0.145814, 0.582802, -0.799425,
		38.480885, 52.192837, 52.444981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.145073, 51.533306, 52.502853>,  <38.582954, 51.784878, 53.004578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.145073, 51.533306, 52.502853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.072479, 51.908646, 52.385162>,  <39.028923, 52.133850, 52.314548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.072479, 51.908646, 52.385162>,  <39.145073, 51.533306, 52.502853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.072479, 51.908646, 52.385162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981848, 0.189672, -0.000730,
		0.055121, -0.289017, -0.955736,
		-0.181487, 0.938346, -0.294226,
		39.018032, 52.190151, 52.296894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.408825, 51.838276, 51.738312>,  <39.145073, 51.533306, 52.502853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.408825, 51.838276, 51.738312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.390156, 52.132053, 52.009136>,  <39.378956, 52.308319, 52.171631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.390156, 52.132053, 52.009136>,  <39.408825, 51.838276, 51.738312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.390156, 52.132053, 52.009136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990346, 0.122587, -0.064710,
		-0.130525, 0.667502, -0.733079,
		-0.046672, 0.734448, 0.677058,
		39.376156, 52.352386, 52.212254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.711788, 52.524761, 51.577881>,  <39.408825, 51.838276, 51.738312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.711788, 52.524761, 51.577881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.754475, 52.363365, 51.941376>,  <39.780087, 52.266529, 52.159473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.754475, 52.363365, 51.941376>,  <39.711788, 52.524761, 51.577881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.754475, 52.363365, 51.941376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990619, 0.121608, -0.062334,
		-0.085360, 0.906868, 0.412678,
		0.106714, -0.403486, 0.908741,
		39.786488, 52.242321, 52.213997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.962997, 52.928272, 52.185802>,  <39.711788, 52.524761, 51.577881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.962997, 52.928272, 52.185802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.097473, 52.553360, 52.222652>,  <40.178158, 52.328415, 52.244762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.097473, 52.553360, 52.222652>,  <39.962997, 52.928272, 52.185802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.097473, 52.553360, 52.222652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941783, 0.335068, -0.027834,
		-0.004779, 0.096118, 0.995358,
		0.336188, -0.937278, 0.092124,
		40.198330, 52.272175, 52.250290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.433807, 52.971977, 52.691349>,  <39.962997, 52.928272, 52.185802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.433807, 52.971977, 52.691349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.520733, 52.634201, 52.495514>,  <40.572887, 52.431538, 52.378014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.520733, 52.634201, 52.495514>,  <40.433807, 52.971977, 52.691349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.520733, 52.634201, 52.495514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969927, 0.130492, 0.205459,
		-0.109609, -0.519518, 0.847400,
		0.217318, -0.844436, -0.489592,
		40.585930, 52.380871, 52.348637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.806873, 52.402409, 53.146248>,  <40.433807, 52.971977, 52.691349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.806873, 52.402409, 53.146248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.910927, 52.366623, 52.761681>,  <40.973358, 52.345150, 52.530941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.910927, 52.366623, 52.761681>,  <40.806873, 52.402409, 53.146248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.910927, 52.366623, 52.761681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962786, 0.099610, 0.251237,
		0.073290, -0.990996, 0.112048,
		0.260137, -0.089465, -0.961418,
		40.988968, 52.339783, 52.473255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.184330, 51.806461, 53.000370>,  <40.806873, 52.402409, 53.146248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.184330, 51.806461, 53.000370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.282173, 52.105366, 52.753220>,  <41.340878, 52.284710, 52.604931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.282173, 52.105366, 52.753220>,  <41.184330, 51.806461, 53.000370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.282173, 52.105366, 52.753220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957399, -0.085272, 0.275891,
		0.153476, -0.659035, -0.736286,
		0.244607, 0.747262, -0.617873,
		41.355556, 52.329544, 52.567860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.779930, 51.636215, 52.599762>,  <41.184330, 51.806461, 53.000370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.779930, 51.636215, 52.599762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.738693, 52.023968, 52.688919>,  <41.713951, 52.256618, 52.742413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.738693, 52.023968, 52.688919>,  <41.779930, 51.636215, 52.599762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.738693, 52.023968, 52.688919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887377, -0.011606, 0.460899,
		0.449372, 0.245303, -0.859006,
		-0.103090, 0.969377, 0.222892,
		41.707767, 52.314781, 52.755787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.331921, 51.980991, 52.299404>,  <41.779930, 51.636215, 52.599762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.331921, 51.980991, 52.299404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.220638, 52.152428, 52.643242>,  <42.153870, 52.255291, 52.849545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.220638, 52.152428, 52.643242>,  <42.331921, 51.980991, 52.299404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.220638, 52.152428, 52.643242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949619, -0.011729, 0.313186,
		0.144312, 0.903421, -0.403738,
		-0.278203, 0.428593, 0.859599,
		42.137177, 52.281006, 52.901123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.585915, 52.685890, 52.356518>,  <42.331921, 51.980991, 52.299404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.585915, 52.685890, 52.356518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.533970, 52.478420, 52.694538>,  <42.502804, 52.353939, 52.897350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.533970, 52.478420, 52.694538>,  <42.585915, 52.685890, 52.356518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.533970, 52.478420, 52.694538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978867, 0.068719, 0.192608,
		-0.157972, 0.852207, 0.498787,
		-0.129865, -0.518673, 0.845052,
		42.495010, 52.322819, 52.948055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.410217, 52.660027, 52.197559>,  <42.585915, 52.685890, 52.356518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.410217, 52.660027, 52.197559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.186501, 52.329376, 52.222492>,  <43.052273, 52.130985, 52.237450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.186501, 52.329376, 52.222492>,  <43.410217, 52.660027, 52.197559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.186501, 52.329376, 52.222492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812643, 0.531869, -0.238173,
		0.163730, -0.183859, -0.969221,
		-0.559289, -0.826627, 0.062329,
		43.018715, 52.081387, 52.241192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.790073, 52.740322, 52.884708>,  <43.410217, 52.660027, 52.197559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.790073, 52.740322, 52.884708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.942814, 52.599236, 53.226418>,  <44.034458, 52.514584, 53.431442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.942814, 52.599236, 53.226418>,  <43.790073, 52.740322, 52.884708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.942814, 52.599236, 53.226418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855839, 0.483878, -0.182760,
		-0.348901, 0.800906, 0.486639,
		0.381848, -0.352720, 0.854272,
		44.057369, 52.493420, 53.482700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.993809, 53.338356, 53.212929>,  <43.790073, 52.740322, 52.884708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.993809, 53.338356, 53.212929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.209911, 53.019047, 53.319420>,  <44.339573, 52.827461, 53.383316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.209911, 53.019047, 53.319420>,  <43.993809, 53.338356, 53.212929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.209911, 53.019047, 53.319420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834798, 0.468585, -0.289033,
		0.105976, 0.378402, 0.919555,
		0.540260, -0.798273, 0.266230,
		44.371990, 52.779564, 53.399288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.545467, 53.370705, 53.777313>,  <43.993809, 53.338356, 53.212929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.545467, 53.370705, 53.777313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.714733, 53.069046, 53.576439>,  <44.816292, 52.888050, 53.455914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.714733, 53.069046, 53.576439>,  <44.545467, 53.370705, 53.777313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.714733, 53.069046, 53.576439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888357, 0.454347, 0.066262,
		0.178193, -0.474157, 0.862219,
		0.423165, -0.754151, -0.502183,
		44.841682, 52.842800, 53.425785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.084270, 53.009567, 54.196274>,  <44.545467, 53.370705, 53.777313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.084270, 53.009567, 54.196274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.142780, 53.046753, 53.802326>,  <45.177887, 53.069065, 53.565960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.142780, 53.046753, 53.802326>,  <45.084270, 53.009567, 54.196274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.142780, 53.046753, 53.802326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834926, 0.522362, 0.173312,
		0.530568, -0.847641, -0.001211,
		0.146273, 0.092965, -0.984866,
		45.186661, 53.074642, 53.506866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.772049, 53.222504, 54.002960>,  <45.084270, 53.009567, 54.196274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.772049, 53.222504, 54.002960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.604206, 53.315102, 53.651886>,  <45.503498, 53.370663, 53.441242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.604206, 53.315102, 53.651886>,  <45.772049, 53.222504, 54.002960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.604206, 53.315102, 53.651886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798720, 0.553552, -0.235853,
		0.431246, -0.799993, -0.417180,
		-0.419612, 0.231499, -0.877687,
		45.478321, 53.384552, 53.388580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.001575, 52.990276, 53.213577>,  <45.772049, 53.222504, 54.002960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.001575, 52.990276, 53.213577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.854374, 53.359119, 53.261387>,  <45.766052, 53.580425, 53.290073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.854374, 53.359119, 53.261387>,  <46.001575, 52.990276, 53.213577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.854374, 53.359119, 53.261387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921279, 0.378984, -0.087265,
		-0.125764, 0.077997, -0.988989,
		-0.368005, 0.922110, 0.119520,
		45.743973, 53.635754, 53.297241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.213501, 53.402611, 52.686329>,  <46.001575, 52.990276, 53.213577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.213501, 53.402611, 52.686329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.128433, 53.674721, 52.966896>,  <46.077393, 53.837986, 53.135239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.128433, 53.674721, 52.966896>,  <46.213501, 53.402611, 52.686329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.128433, 53.674721, 52.966896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878407, 0.447524, -0.167699,
		-0.427985, 0.580468, -0.692738,
		-0.212673, 0.680279, 0.701421,
		46.064632, 53.878803, 53.177322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.500877, 54.014771, 52.502617>,  <46.213501, 53.402611, 52.686329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.500877, 54.014771, 52.502617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.437851, 54.064064, 52.894531>,  <46.400036, 54.093639, 53.129681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.437851, 54.064064, 52.894531>,  <46.500877, 54.014771, 52.502617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.437851, 54.064064, 52.894531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909761, 0.403999, 0.095493,
		-0.384066, 0.906421, -0.175769,
		-0.157568, 0.123232, 0.979789,
		46.390579, 54.101032, 53.188469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.914639, 54.705616, 52.735859>,  <46.500877, 54.014771, 52.502617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.914639, 54.705616, 52.735859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.822365, 54.477345, 53.051102>,  <46.767002, 54.340382, 53.240246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.822365, 54.477345, 53.051102>,  <46.914639, 54.705616, 52.735859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.822365, 54.477345, 53.051102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800303, 0.349410, 0.487266,
		-0.553445, 0.743125, 0.376116,
		-0.230681, -0.570681, 0.788105,
		46.753162, 54.306141, 53.287533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.848263, 55.094025, 53.392380>,  <46.914639, 54.705616, 52.735859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.848263, 55.094025, 53.392380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.966911, 54.724171, 53.487930>,  <47.038101, 54.502258, 53.545261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.966911, 54.724171, 53.487930>,  <46.848263, 55.094025, 53.392380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.966911, 54.724171, 53.487930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777657, 0.379050, 0.501568,
		-0.554313, 0.036984, 0.831486,
		0.296625, -0.924637, 0.238874,
		47.055901, 54.446781, 53.559593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.213177, 55.104881, 54.108044>,  <46.848263, 55.094025, 53.392380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.213177, 55.104881, 54.108044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.342545, 54.770748, 53.930222>,  <47.420166, 54.570271, 53.823528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.342545, 54.770748, 53.930222>,  <47.213177, 55.104881, 54.108044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.342545, 54.770748, 53.930222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921076, 0.170250, 0.350192,
		-0.216840, -0.522725, 0.824463,
		0.323419, -0.835328, -0.444552,
		47.439571, 54.520149, 53.796856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.461361, 54.583214, 54.658401>,  <47.213177, 55.104881, 54.108044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.461361, 54.583214, 54.658401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.631512, 54.570602, 54.296616>,  <47.733604, 54.563038, 54.079544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.631512, 54.570602, 54.296616>,  <47.461361, 54.583214, 54.658401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.631512, 54.570602, 54.296616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884161, 0.227780, 0.407893,
		0.193160, -0.973202, 0.124767,
		0.425382, -0.031526, -0.904465,
		47.759125, 54.561146, 54.025276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.170757, 54.213017, 54.786041>,  <47.461361, 54.583214, 54.658401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.170757, 54.213017, 54.786041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.145439, 54.442173, 54.459167>,  <48.130249, 54.579666, 54.263042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.145439, 54.442173, 54.459167>,  <48.170757, 54.213017, 54.786041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.145439, 54.442173, 54.459167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925718, 0.339640, 0.166408,
		0.372882, -0.745948, -0.551835,
		-0.063294, 0.572893, -0.817182,
		48.126450, 54.614040, 54.214012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.803604, 54.234966, 54.533104>,  <48.170757, 54.213017, 54.786041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.803604, 54.234966, 54.533104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.647457, 54.515495, 54.294525>,  <48.553768, 54.683815, 54.151379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.647457, 54.515495, 54.294525>,  <48.803604, 54.234966, 54.533104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.647457, 54.515495, 54.294525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899708, 0.428025, -0.085564,
		0.195287, -0.570031, -0.798078,
		-0.390371, 0.701327, -0.596449,
		48.530346, 54.725895, 54.115589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.385296, 54.329861, 54.078156>,  <48.803604, 54.234966, 54.533104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.385296, 54.329861, 54.078156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.147552, 54.651466, 54.085037>,  <49.004906, 54.844429, 54.089169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.147552, 54.651466, 54.085037>,  <49.385296, 54.329861, 54.078156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.147552, 54.651466, 54.085037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804198, 0.594193, 0.014170,
		0.001169, 0.022259, -0.999752,
		-0.594360, 0.804015, 0.017206,
		48.969246, 54.892670, 54.090199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.494717, 54.788666, 53.466431>,  <49.385296, 54.329861, 54.078156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.494717, 54.788666, 53.466431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.352036, 54.981293, 53.786644>,  <49.266426, 55.096870, 53.978771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.352036, 54.981293, 53.786644>,  <49.494717, 54.788666, 53.466431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.352036, 54.981293, 53.786644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888443, 0.439805, 0.131308,
		-0.288844, 0.758064, -0.584729,
		-0.356706, 0.481570, 0.800531,
		49.245022, 55.125763, 54.026802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.651646, 55.542419, 53.440582>,  <49.494717, 54.788666, 53.466431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.651646, 55.542419, 53.440582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.579975, 55.448341, 53.822697>,  <49.536972, 55.391895, 54.051968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.579975, 55.448341, 53.822697>,  <49.651646, 55.542419, 53.440582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.579975, 55.448341, 53.822697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964192, 0.150995, 0.218025,
		-0.195522, 0.960148, 0.199718,
		-0.179180, -0.235195, 0.955289,
		49.526222, 55.377781, 54.109283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.017052, 56.093990, 53.957432>,  <49.651646, 55.542419, 53.440582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.017052, 56.093990, 53.957432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.977871, 55.725315, 54.107578>,  <49.954365, 55.504108, 54.197666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.977871, 55.725315, 54.107578>,  <50.017052, 56.093990, 53.957432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.977871, 55.725315, 54.107578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949321, 0.026657, 0.313176,
		-0.298656, 0.387015, 0.872367,
		-0.097949, -0.921688, 0.375363,
		49.948486, 55.448811, 54.220188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.441250, 56.126915, 54.680843>,  <50.017052, 56.093990, 53.957432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.441250, 56.126915, 54.680843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.401459, 55.757599, 54.532448>,  <50.377586, 55.536007, 54.443413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.401459, 55.757599, 54.532448>,  <50.441250, 56.126915, 54.680843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.401459, 55.757599, 54.532448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824890, -0.285026, 0.488177,
		-0.556472, -0.257461, 0.789970,
		-0.099475, -0.923295, -0.370986,
		50.371616, 55.480610, 54.421150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.287567, 55.518822, 55.191013>,  <50.441250, 56.126915, 54.680843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.287567, 55.518822, 55.191013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.468506, 55.356098, 54.873550>,  <50.577068, 55.258465, 54.683075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.468506, 55.356098, 54.873550>,  <50.287567, 55.518822, 55.191013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.468506, 55.356098, 54.873550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708677, -0.376307, 0.596801,
		-0.541444, -0.832404, 0.118078,
		0.452346, -0.406813, -0.793654,
		50.604210, 55.234055, 54.635452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.519115, 54.795349, 55.379490>,  <50.287567, 55.518822, 55.191013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.519115, 54.795349, 55.379490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.735012, 54.915703, 55.065002>,  <50.864552, 54.987915, 54.876308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.735012, 54.915703, 55.065002>,  <50.519115, 54.795349, 55.379490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.735012, 54.915703, 55.065002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818336, -0.406628, 0.406177,
		-0.197489, -0.862626, -0.465698,
		0.539745, 0.300882, -0.786222,
		50.896935, 55.005966, 54.829136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.924152, 54.233337, 55.009064>,  <50.519115, 54.795349, 55.379490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.924152, 54.233337, 55.009064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.102726, 54.591072, 54.997299>,  <51.209869, 54.805714, 54.990238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.102726, 54.591072, 54.997299>,  <50.924152, 54.233337, 55.009064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.102726, 54.591072, 54.997299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696819, -0.326836, 0.638453,
		0.561377, -0.305520, -0.769099,
		0.446429, 0.894335, -0.029414,
		51.236656, 54.859371, 54.988476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.684784, 54.131199, 54.881889>,  <50.924152, 54.233337, 55.009064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.684784, 54.131199, 54.881889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.608231, 54.465351, 55.087997>,  <51.562298, 54.665844, 55.211662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.608231, 54.465351, 55.087997>,  <51.684784, 54.131199, 54.881889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.608231, 54.465351, 55.087997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626191, -0.300338, 0.719501,
		0.755816, 0.460360, -0.465630,
		-0.191383, 0.835383, 0.515274,
		51.550816, 54.715965, 55.242580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.324615, 54.189274, 55.274830>,  <51.684784, 54.131199, 54.881889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.324615, 54.189274, 55.274830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.381489, 53.992100, 54.931480>,  <52.415615, 53.873795, 54.725471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.381489, 53.992100, 54.931480>,  <52.324615, 54.189274, 55.274830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.381489, 53.992100, 54.931480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942563, -0.197374, 0.269477,
		-0.302254, -0.847385, 0.436556,
		0.142186, -0.492932, -0.858371,
		52.424145, 53.844219, 54.673969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.470299, 53.548264, 55.391003>,  <52.324615, 54.189274, 55.274830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.470299, 53.548264, 55.391003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.646095, 53.572605, 55.032532>,  <52.751575, 53.587212, 54.817448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.646095, 53.572605, 55.032532>,  <52.470299, 53.548264, 55.391003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.646095, 53.572605, 55.032532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835769, -0.393289, 0.383162,
		-0.329142, -0.917399, -0.223708,
		0.439494, 0.060854, -0.896181,
		52.777943, 53.590862, 54.763676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.770397, 52.888729, 55.308723>,  <52.470299, 53.548264, 55.391003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.770397, 52.888729, 55.308723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.953259, 53.161785, 55.080681>,  <53.062977, 53.325619, 54.943855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.953259, 53.161785, 55.080681>,  <52.770397, 52.888729, 55.308723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.953259, 53.161785, 55.080681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888773, -0.326805, 0.321373,
		0.033068, -0.653610, -0.756109,
		0.457153, 0.682636, -0.570104,
		53.090405, 53.366577, 54.909649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.182220, 52.720039, 54.609699>,  <52.770397, 52.888729, 55.308723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.182220, 52.720039, 54.609699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.290348, 53.007526, 54.865944>,  <53.355225, 53.180019, 55.019691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.290348, 53.007526, 54.865944>,  <53.182220, 52.720039, 54.609699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.290348, 53.007526, 54.865944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811377, -0.528237, 0.250267,
		0.518263, 0.452123, -0.725940,
		0.270317, 0.718715, 0.640607,
		53.371445, 53.223141, 55.058125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.963852, 53.120346, 54.534992>,  <53.182220, 52.720039, 54.609699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.963852, 53.120346, 54.534992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.823818, 53.124306, 54.909660>,  <53.739799, 53.126682, 55.134460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.823818, 53.124306, 54.909660>,  <53.963852, 53.120346, 54.534992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.823818, 53.124306, 54.909660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876368, -0.349657, 0.331238,
		0.330791, 0.936825, 0.113735,
		-0.350081, 0.009897, 0.936667,
		53.718796, 53.127274, 55.190662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.487347, 53.251110, 54.820217>,  <53.963852, 53.120346, 54.534992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.487347, 53.251110, 54.820217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.278954, 53.111351, 55.131729>,  <54.153919, 53.027496, 55.318638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.278954, 53.111351, 55.131729>,  <54.487347, 53.251110, 54.820217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.278954, 53.111351, 55.131729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843616, -0.349703, 0.407456,
		0.129977, 0.869268, 0.476949,
		-0.520978, -0.349402, 0.778781,
		54.122662, 53.006531, 55.365364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.718853, 53.514515, 55.544949>,  <54.487347, 53.251110, 54.820217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.718853, 53.514515, 55.544949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.575493, 53.141193, 55.553879>,  <54.489475, 52.917202, 55.559238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.575493, 53.141193, 55.553879>,  <54.718853, 53.514515, 55.544949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.575493, 53.141193, 55.553879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836692, -0.310510, 0.451143,
		-0.414120, 0.180370, 0.892172,
		-0.358401, -0.933301, 0.022326,
		54.467972, 52.861202, 55.560577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.523808, 53.242661, 56.208847>,  <54.718853, 53.514515, 55.544949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.523808, 53.242661, 56.208847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.646812, 52.950180, 55.965279>,  <54.720615, 52.774693, 55.819138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.646812, 52.950180, 55.965279>,  <54.523808, 53.242661, 56.208847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.646812, 52.950180, 55.965279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817047, -0.125092, 0.562837,
		-0.487717, -0.670597, 0.558956,
		0.307516, -0.731199, -0.608919,
		54.739067, 52.730820, 55.782604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.542423, 52.558533, 56.485390>,  <54.523808, 53.242661, 56.208847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.542423, 52.558533, 56.485390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.829124, 52.604874, 56.210335>,  <55.001144, 52.632679, 56.045303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.829124, 52.604874, 56.210335>,  <54.542423, 52.558533, 56.485390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.829124, 52.604874, 56.210335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695167, -0.196220, 0.691550,
		-0.054809, -0.973692, -0.221179,
		0.716756, 0.115853, -0.687633,
		55.044151, 52.639629, 56.004044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.128254, 52.027496, 56.491096>,  <54.542423, 52.558533, 56.485390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.128254, 52.027496, 56.491096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.261444, 52.370155, 56.333473>,  <55.341358, 52.575752, 56.238899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.261444, 52.370155, 56.333473>,  <55.128254, 52.027496, 56.491096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.261444, 52.370155, 56.333473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807700, -0.043481, 0.587988,
		0.486564, -0.514068, -0.706392,
		0.332980, 0.856647, -0.394057,
		55.361340, 52.627148, 56.215256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.648930, 51.914093, 55.878181>,  <55.128254, 52.027496, 56.491096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.648930, 51.914093, 55.878181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.625961, 52.201950, 56.154968>,  <55.612179, 52.374664, 56.321041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.625961, 52.201950, 56.154968>,  <55.648930, 51.914093, 55.878181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.625961, 52.201950, 56.154968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620028, -0.517533, 0.589682,
		0.782476, 0.462899, -0.416481,
		-0.057421, 0.719642, 0.691967,
		55.608734, 52.417843, 56.362560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.957802, 51.554230, 55.333351>,  <55.648930, 51.914093, 55.878181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.957802, 51.554230, 55.333351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.207458, 51.247246, 55.391945>,  <56.357254, 51.063057, 55.427101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.207458, 51.247246, 55.391945>,  <55.957802, 51.554230, 55.333351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.207458, 51.247246, 55.391945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722733, 0.495885, -0.481408,
		0.296823, 0.406333, 0.864170,
		0.624141, -0.767458, 0.146480,
		56.394699, 51.017010, 55.435890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.609589, 51.803429, 55.452145>,  <55.957802, 51.554230, 55.333351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.609589, 51.803429, 55.452145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.665672, 51.427368, 55.327919>,  <56.699322, 51.201733, 55.253384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.665672, 51.427368, 55.327919>,  <56.609589, 51.803429, 55.452145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.665672, 51.427368, 55.327919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805957, 0.290571, -0.515754,
		0.575129, -0.177985, 0.798466,
		0.140214, -0.940154, -0.310564,
		56.707737, 51.145321, 55.234749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.308372, 51.517715, 55.641132>,  <56.609589, 51.803429, 55.452145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.308372, 51.517715, 55.641132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.150421, 51.356243, 55.311012>,  <57.055649, 51.259361, 55.112942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.150421, 51.356243, 55.311012>,  <57.308372, 51.517715, 55.641132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.150421, 51.356243, 55.311012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853722, 0.170680, -0.491963,
		0.339456, -0.898840, 0.277230,
		-0.394879, -0.403678, -0.825297,
		57.031956, 51.235142, 55.063423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.713169, 50.989300, 55.864761>,  <57.308372, 51.517715, 55.641132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.713169, 50.989300, 55.864761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.864754, 51.357826, 55.829987>,  <57.955704, 51.578941, 55.809124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.864754, 51.357826, 55.829987>,  <57.713169, 50.989300, 55.864761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.864754, 51.357826, 55.829987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373989, -0.066544, 0.925043,
		0.846476, -0.383067, -0.369781,
		0.378960, 0.921321, -0.086935,
		57.978443, 51.634224, 55.803905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.350521, 51.007893, 56.162296>,  <57.713169, 50.989300, 55.864761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.350521, 51.007893, 56.162296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.177933, 51.368626, 56.171471>,  <58.074379, 51.585068, 56.176975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.177933, 51.368626, 56.171471>,  <58.350521, 51.007893, 56.162296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.177933, 51.368626, 56.171471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482559, 0.209248, 0.850501,
		0.762213, 0.378034, -0.525473,
		-0.431472, 0.901835, 0.022932,
		58.048492, 51.639175, 56.178349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.836926, 51.710228, 56.095490>,  <58.350521, 51.007893, 56.162296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.836926, 51.710228, 56.095490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.512016, 51.723148, 56.328445>,  <58.317070, 51.730900, 56.468220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.512016, 51.723148, 56.328445>,  <58.836926, 51.710228, 56.095490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.512016, 51.723148, 56.328445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571416, 0.244443, 0.783410,
		-0.117052, 0.969126, -0.217013,
		-0.812270, 0.032305, 0.582387,
		58.268333, 51.732841, 56.503162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.038342, 51.875347, 56.752365>,  <58.836926, 51.710228, 56.095490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.038342, 51.875347, 56.752365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.660934, 51.790970, 56.854561>,  <58.434490, 51.740341, 56.915878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.660934, 51.790970, 56.854561>,  <59.038342, 51.875347, 56.752365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.660934, 51.790970, 56.854561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261418, -0.000218, 0.965226,
		-0.203555, 0.977498, 0.055351,
		-0.943518, -0.210946, 0.255491,
		58.377880, 51.727688, 56.931210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.536907, 51.686550, 56.252884>,  <59.038342, 51.875347, 56.752365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.536907, 51.686550, 56.252884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.642517, 51.545658, 55.893723>,  <59.705883, 51.461124, 55.678226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.642517, 51.545658, 55.893723>,  <59.536907, 51.686550, 56.252884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.642517, 51.545658, 55.893723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700277, 0.710163, -0.072666,
		0.663251, -0.609594, 0.434158,
		0.264027, -0.352226, -0.897901,
		59.721725, 51.439991, 55.624352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.006439, 51.521145, 56.753799>,  <59.536907, 51.686550, 56.252884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.006439, 51.521145, 56.753799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.178024, 51.196953, 56.594246>,  <60.280975, 51.002438, 56.498512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.178024, 51.196953, 56.594246>,  <60.006439, 51.521145, 56.753799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.178024, 51.196953, 56.594246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201924, -0.344370, 0.916862,
		-0.880466, -0.473841, 0.015936,
		0.428959, -0.810484, -0.398886,
		60.306713, 50.953808, 56.474579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.628620, 51.524784, 57.154873>,  <60.006439, 51.521145, 56.753799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.628620, 51.524784, 57.154873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.565529, 51.643288, 57.531670>,  <60.527676, 51.714390, 57.757748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.565529, 51.643288, 57.531670>,  <60.628620, 51.524784, 57.154873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.565529, 51.643288, 57.531670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252152, 0.934395, -0.251645,
		-0.954747, 0.197835, -0.222081,
		-0.157728, 0.296255, 0.941995,
		60.518211, 51.732162, 57.814270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.031025, 52.142487, 57.247570>,  <60.628620, 51.524784, 57.154873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.031025, 52.142487, 57.247570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.317551, 52.147736, 57.526634>,  <60.489464, 52.150887, 57.694073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.317551, 52.147736, 57.526634>,  <60.031025, 52.142487, 57.247570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.317551, 52.147736, 57.526634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245787, 0.930999, -0.269869,
		-0.653060, 0.364785, 0.663660,
		0.716311, 0.013122, 0.697658,
		60.532444, 52.151672, 57.735931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.982792, 52.774429, 57.613865>,  <60.031025, 52.142487, 57.247570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.982792, 52.774429, 57.613865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.363411, 52.659286, 57.657120>,  <60.591782, 52.590202, 57.683071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.363411, 52.659286, 57.657120>,  <59.982792, 52.774429, 57.613865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.363411, 52.659286, 57.657120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305795, 0.848849, -0.431212,
		0.032336, 0.443387, 0.895747,
		0.951548, -0.287858, 0.108138,
		60.648876, 52.572929, 57.689560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.477879, 53.297733, 57.873562>,  <59.982792, 52.774429, 57.613865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.477879, 53.297733, 57.873562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.731903, 53.040894, 57.701790>,  <60.884319, 52.886791, 57.598728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.731903, 53.040894, 57.701790>,  <60.477879, 53.297733, 57.873562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.731903, 53.040894, 57.701790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478782, 0.763449, -0.433491,
		0.606190, 0.069691, 0.792261,
		0.635061, -0.642098, -0.429428,
		60.922421, 52.848263, 57.572960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.215248, 53.376217, 58.091522>,  <60.477879, 53.297733, 57.873562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.215248, 53.376217, 58.091522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.194542, 53.244648, 57.714348>,  <61.182117, 53.165707, 57.488045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.194542, 53.244648, 57.714348>,  <61.215248, 53.376217, 58.091522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.194542, 53.244648, 57.714348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604657, 0.741138, -0.291728,
		0.794802, -0.585254, 0.160521,
		-0.051767, -0.328926, -0.942936,
		61.179012, 53.145969, 57.431469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.879089, 53.055489, 57.854595>,  <61.215248, 53.376217, 58.091522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.879089, 53.055489, 57.854595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.650238, 53.237797, 57.581848>,  <61.512928, 53.347183, 57.418198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.650238, 53.237797, 57.581848>,  <61.879089, 53.055489, 57.854595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.650238, 53.237797, 57.581848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714800, 0.684748, -0.142060,
		0.402163, -0.568677, -0.717545,
		-0.572124, 0.455770, -0.681871,
		61.478600, 53.374527, 57.377285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.683472, 52.952049, 58.006535>,  <61.879089, 53.055489, 57.854595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.683472, 52.952049, 58.006535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.047089, 53.117805, 58.024063>,  <63.265259, 53.217258, 58.034580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.047089, 53.117805, 58.024063>,  <62.683472, 52.952049, 58.006535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.047089, 53.117805, 58.024063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411562, 0.876382, 0.250143,
		0.065255, -0.245425, 0.967217,
		0.909043, 0.414393, 0.043820,
		63.319801, 53.242123, 58.037209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.761856, 53.493561, 58.499794>,  <62.683472, 52.952049, 58.006535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.761856, 53.493561, 58.499794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.058449, 53.587467, 58.248367>,  <63.236404, 53.643810, 58.097511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.058449, 53.587467, 58.248367>,  <62.761856, 53.493561, 58.499794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.058449, 53.587467, 58.248367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391407, 0.912227, -0.121008,
		0.544985, 0.335749, 0.768286,
		0.741479, 0.234765, -0.628565,
		63.280891, 53.657898, 58.059799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.673080, 54.193966, 58.441746>,  <62.761856, 53.493561, 58.499794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.673080, 54.193966, 58.441746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.985977, 54.132172, 58.200340>,  <63.173714, 54.095097, 58.055496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.985977, 54.132172, 58.200340>,  <62.673080, 54.193966, 58.441746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.985977, 54.132172, 58.200340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102714, 0.923524, -0.369532,
		0.614449, 0.351053, 0.706551,
		0.782242, -0.154486, -0.603516,
		63.220650, 54.085827, 58.019287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.275478, 54.567688, 58.535828>,  <62.673080, 54.193966, 58.441746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.275478, 54.567688, 58.535828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.228737, 54.491848, 58.145874>,  <63.200691, 54.446342, 57.911903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.228737, 54.491848, 58.145874>,  <63.275478, 54.567688, 58.535828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.228737, 54.491848, 58.145874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238724, 0.958191, -0.157739,
		0.964031, 0.214295, -0.157231,
		-0.116854, -0.189599, -0.974883,
		63.193680, 54.434967, 57.853409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.118542, 55.236282, 59.013348>,  <63.275478, 54.567688, 58.535828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.118542, 55.236282, 59.013348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.048615, 55.206474, 59.406059>,  <63.006660, 55.188591, 59.641685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.048615, 55.206474, 59.406059>,  <63.118542, 55.236282, 59.013348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.048615, 55.206474, 59.406059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813861, 0.550256, 0.186678,
		-0.554139, 0.831664, -0.035547,
		-0.174814, -0.074516, 0.981778,
		62.996170, 55.184120, 59.700592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.034744, 55.815449, 59.294323>,  <63.118542, 55.236282, 59.013348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.034744, 55.815449, 59.294323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.163055, 55.630547, 59.625000>,  <63.240044, 55.519608, 59.823406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.163055, 55.630547, 59.625000>,  <63.034744, 55.815449, 59.294323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.163055, 55.630547, 59.625000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758490, 0.648119, 0.068087,
		-0.567270, 0.605199, 0.558514,
		0.320777, -0.462251, 0.826696,
		63.259289, 55.491871, 59.873009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.443245, 56.330784, 59.765568>,  <63.034744, 55.815449, 59.294323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.443245, 56.330784, 59.765568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.575806, 55.974987, 59.891403>,  <63.655342, 55.761509, 59.966904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.575806, 55.974987, 59.891403>,  <63.443245, 56.330784, 59.765568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.575806, 55.974987, 59.891403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792219, 0.443434, 0.419231,
		-0.512405, 0.110290, 0.851632,
		0.331405, -0.889496, 0.314592,
		63.675228, 55.708138, 59.985779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.612999, 56.395641, 60.430344>,  <63.443245, 56.330784, 59.765568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.612999, 56.395641, 60.430344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.807152, 56.066357, 60.312553>,  <63.923645, 55.868786, 60.241879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.807152, 56.066357, 60.312553>,  <63.612999, 56.395641, 60.430344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.807152, 56.066357, 60.312553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861464, 0.392808, 0.321840,
		-0.149270, -0.409898, 0.899834,
		0.485384, -0.823216, -0.294478,
		63.952766, 55.819393, 60.224209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.039780, 56.327347, 61.033043>,  <63.612999, 56.395641, 60.430344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.039780, 56.327347, 61.033043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.193512, 56.117065, 60.729485>,  <64.285751, 55.990894, 60.547352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.193512, 56.117065, 60.729485>,  <64.039780, 56.327347, 61.033043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.193512, 56.117065, 60.729485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921209, 0.164502, 0.352580,
		-0.060515, -0.834608, 0.547510,
		0.384332, -0.525708, -0.758894,
		64.308815, 55.959354, 60.501816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.627823, 56.009220, 61.273964>,  <64.039780, 56.327347, 61.033043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.627823, 56.009220, 61.273964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.673721, 56.007439, 60.876610>,  <64.701256, 56.006371, 60.638199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.673721, 56.007439, 60.876610>,  <64.627823, 56.009220, 61.273964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.673721, 56.007439, 60.876610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993384, 0.005494, 0.114712,
		0.004946, -0.999975, 0.005059,
		0.114737, -0.004458, -0.993386,
		64.708145, 56.006104, 60.578594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.936768, 55.400841, 60.949940>,  <64.627823, 56.009220, 61.273964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.936768, 55.400841, 60.949940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.020882, 55.732025, 60.741997>,  <65.071350, 55.930737, 60.617229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.020882, 55.732025, 60.741997>,  <64.936768, 55.400841, 60.949940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.020882, 55.732025, 60.741997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961235, -0.078091, 0.264440,
		0.178350, -0.555316, -0.812290,
		0.210281, 0.827965, -0.519862,
		65.083969, 55.980415, 60.586037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.435692, 55.331600, 60.365925>,  <64.936768, 55.400841, 60.949940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.435692, 55.331600, 60.365925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.496590, 55.682007, 60.548973>,  <65.533127, 55.892250, 60.658802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.496590, 55.682007, 60.548973>,  <65.435692, 55.331600, 60.365925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.496590, 55.682007, 60.548973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931148, -0.282352, 0.230739,
		0.331341, 0.390985, -0.858687,
		0.152236, 0.876018, 0.457620,
		65.542259, 55.944813, 60.686260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.823288, 55.672215, 59.930393>,  <65.435692, 55.331600, 60.365925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.823288, 55.672215, 59.930393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.831352, 55.733036, 60.325661>,  <65.836189, 55.769527, 60.562820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.831352, 55.733036, 60.325661>,  <65.823288, 55.672215, 59.930393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.831352, 55.733036, 60.325661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603299, -0.789996, 0.109253,
		0.797261, 0.593958, -0.107653,
		0.020154, 0.152050, 0.988167,
		65.837395, 55.778652, 60.622112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.540291, 55.657883, 60.282021>,  <65.823288, 55.672215, 59.930393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.540291, 55.657883, 60.282021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.318520, 55.533115, 60.590645>,  <66.185455, 55.458256, 60.775822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.318520, 55.533115, 60.590645>,  <66.540291, 55.657883, 60.282021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.318520, 55.533115, 60.590645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660567, -0.728865, 0.180021,
		0.506216, 0.609480, 0.610147,
		-0.554434, -0.311914, 0.771565,
		66.152191, 55.439541, 60.822113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.966003, 55.731007, 60.866947>,  <66.540291, 55.657883, 60.282021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.966003, 55.731007, 60.866947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.691376, 55.455399, 60.959801>,  <66.526604, 55.290035, 61.015514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.691376, 55.455399, 60.959801>,  <66.966003, 55.731007, 60.866947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.691376, 55.455399, 60.959801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712895, -0.575197, 0.401159,
		-0.142882, 0.440908, 0.886106,
		-0.686560, -0.689019, 0.232136,
		66.485405, 55.248692, 61.029442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.081375, 55.301544, 61.415501>,  <66.966003, 55.731007, 60.866947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.081375, 55.301544, 61.415501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.881821, 55.107460, 61.128258>,  <66.762085, 54.991009, 60.955910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.881821, 55.107460, 61.128258>,  <67.081375, 55.301544, 61.415501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.881821, 55.107460, 61.128258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783786, -0.606198, -0.134920,
		-0.369851, -0.630153, 0.682727,
		-0.498888, -0.485212, -0.718108,
		66.732155, 54.961895, 60.912827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.157433, 54.476044, 61.367493>,  <67.081375, 55.301544, 61.415501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.157433, 54.476044, 61.367493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.106064, 54.653748, 61.012833>,  <67.075241, 54.760372, 60.800037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.106064, 54.653748, 61.012833>,  <67.157433, 54.476044, 61.367493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.106064, 54.653748, 61.012833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843743, -0.420888, -0.333093,
		-0.521159, -0.790875, -0.320795,
		-0.128416, 0.444263, -0.886645,
		67.067535, 54.787025, 60.746838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.169647, 53.946426, 60.879040>,  <67.157433, 54.476044, 61.367493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.169647, 53.946426, 60.879040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.302765, 54.301125, 60.750717>,  <67.382637, 54.513943, 60.673725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.302765, 54.301125, 60.750717>,  <67.169647, 53.946426, 60.879040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.302765, 54.301125, 60.750717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798097, -0.446069, -0.405049,
		-0.502278, -0.121232, -0.856166,
		0.332804, 0.886750, -0.320806,
		67.402603, 54.567150, 60.654476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.162804, 54.161560, 60.114670>,  <67.169647, 53.946426, 60.879040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.162804, 54.161560, 60.114670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.342720, 54.483315, 59.959412>,  <67.450668, 54.676365, 59.866257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.342720, 54.483315, 59.959412>,  <67.162804, 54.161560, 60.114670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.342720, 54.483315, 59.959412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817804, -0.196234, 0.541008,
		0.359011, -0.560766, -0.746092,
		0.449787, 0.804385, -0.388146,
		67.477654, 54.724628, 59.842968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.831192, 53.926258, 59.713211>,  <67.162804, 54.161560, 60.114670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.831192, 53.926258, 59.713211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.834206, 54.298283, 59.860138>,  <67.836014, 54.521500, 59.948296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.834206, 54.298283, 59.860138>,  <67.831192, 53.926258, 59.713211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.834206, 54.298283, 59.860138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785485, -0.232823, 0.573416,
		0.618834, 0.284205, -0.732306,
		0.007529, 0.930065, 0.367318,
		67.836464, 54.577301, 59.970333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.420860, 53.808735, 60.177517>,  <67.831192, 53.926258, 59.713211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.420860, 53.808735, 60.177517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.367737, 54.205006, 60.189613>,  <68.335861, 54.442768, 60.196873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.367737, 54.205006, 60.189613>,  <68.420860, 53.808735, 60.177517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.367737, 54.205006, 60.189613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790078, 0.087388, 0.606746,
		0.598449, 0.104469, -0.794320,
		-0.132801, 0.990681, 0.030242,
		68.327896, 54.502209, 60.198685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.995872, 54.260784, 60.022587>,  <68.420860, 53.808735, 60.177517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.995872, 54.260784, 60.022587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.757652, 54.468201, 60.268005>,  <68.614723, 54.592651, 60.415257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.757652, 54.468201, 60.268005>,  <68.995872, 54.260784, 60.022587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.757652, 54.468201, 60.268005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783265, 0.205252, 0.586829,
		0.178362, 0.830054, -0.528391,
		-0.595553, 0.518538, 0.613543,
		68.578987, 54.623760, 60.452068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.232582, 55.101444, 59.956146>,  <68.995872, 54.260784, 60.022587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.232582, 55.101444, 59.956146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.071991, 54.939873, 60.284943>,  <68.975639, 54.842930, 60.482220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.071991, 54.939873, 60.284943>,  <69.232582, 55.101444, 59.956146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.071991, 54.939873, 60.284943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678144, 0.472126, 0.563222,
		-0.615582, 0.783543, 0.084376,
		-0.401472, -0.403928, 0.821987,
		68.951546, 54.818695, 60.531540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.728630, 55.476700, 59.599712>,  <69.232582, 55.101444, 59.956146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.728630, 55.476700, 59.599712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.496536, 55.787815, 59.696350>,  <69.357277, 55.974483, 59.754333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.496536, 55.787815, 59.696350>,  <69.728630, 55.476700, 59.599712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.496536, 55.787815, 59.696350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259551, -0.104578, 0.960050,
		0.771979, 0.619768, -0.141194,
		-0.580243, 0.777786, 0.241594,
		69.322464, 56.021152, 59.768829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.051292, 55.639156, 60.267216>,  <69.728630, 55.476700, 59.599712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.051292, 55.639156, 60.267216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.400703, 55.464283, 60.352829>,  <70.610352, 55.359360, 60.404198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.400703, 55.464283, 60.352829>,  <70.051292, 55.639156, 60.267216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.400703, 55.464283, 60.352829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033694, 0.384333, 0.922579,
		-0.485597, -0.813115, 0.320997,
		0.873533, -0.437186, 0.214028,
		70.662766, 55.333126, 60.417038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.876953, 56.333504, 60.257877>,  <70.051292, 55.639156, 60.267216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.876953, 56.333504, 60.257877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.588699, 56.400162, 59.988678>,  <69.415749, 56.440159, 59.827160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.588699, 56.400162, 59.988678>,  <69.876953, 56.333504, 60.257877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.588699, 56.400162, 59.988678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654924, -0.482167, 0.581884,
		-0.227526, 0.860083, 0.456606,
		-0.720629, 0.166649, -0.672995,
		69.372513, 56.450157, 59.786781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.376579, 56.302670, 59.656162>,  <69.876953, 56.333504, 60.257877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.376579, 56.302670, 59.656162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.498596, 56.530693, 59.351013>,  <70.571808, 56.667507, 59.167923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.498596, 56.530693, 59.351013>,  <70.376579, 56.302670, 59.656162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.498596, 56.530693, 59.351013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725440, -0.658078, -0.201667,
		-0.616995, -0.491903, -0.614287,
		0.305048, 0.570056, -0.762877,
		70.590111, 56.701710, 59.122150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.645569, 56.038525, 60.348351>,  <70.376579, 56.302670, 59.656162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.645569, 56.038525, 60.348351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.948250, 56.183704, 60.565857>,  <71.129860, 56.270813, 60.696362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.948250, 56.183704, 60.565857>,  <70.645569, 56.038525, 60.348351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.948250, 56.183704, 60.565857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652871, -0.463015, -0.599481,
		0.034190, 0.808632, -0.587320,
		0.756697, 0.362948, 0.543763,
		71.175262, 56.292587, 60.728985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.119492, 56.641457, 60.091980>,  <70.645569, 56.038525, 60.348351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.119492, 56.641457, 60.091980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.322922, 56.365749, 60.298378>,  <71.444984, 56.200325, 60.422218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.322922, 56.365749, 60.298378>,  <71.119492, 56.641457, 60.091980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.322922, 56.365749, 60.298378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514960, -0.236790, -0.823861,
		0.690046, 0.684716, 0.234520,
		0.508579, -0.689270, 0.515998,
		71.475494, 56.158970, 60.453178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.603081, 56.880180, 59.512474>,  <71.119492, 56.641457, 60.091980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.603081, 56.880180, 59.512474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.973328, 56.837345, 59.657677>,  <72.195473, 56.811646, 59.744797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.973328, 56.837345, 59.657677>,  <71.603081, 56.880180, 59.512474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.973328, 56.837345, 59.657677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258196, 0.879949, -0.398778,
		-0.276720, 0.462841, 0.842143,
		0.925614, -0.107088, 0.363003,
		72.251015, 56.805218, 59.766579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.857864, 57.329151, 60.075569>,  <71.603081, 56.880180, 59.512474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.857864, 57.329151, 60.075569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.159897, 57.289440, 59.816345>,  <72.341118, 57.265614, 59.660809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.159897, 57.289440, 59.816345>,  <71.857864, 57.329151, 60.075569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.159897, 57.289440, 59.816345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020144, 0.991515, -0.128421,
		0.655314, 0.083915, 0.750681,
		0.755088, -0.099278, -0.648064,
		72.386421, 57.259655, 59.621925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.390137, 57.811405, 60.338230>,  <71.857864, 57.329151, 60.075569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.390137, 57.811405, 60.338230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.488861, 57.794994, 59.950951>,  <72.548096, 57.785149, 59.718582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.488861, 57.794994, 59.950951>,  <72.390137, 57.811405, 60.338230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.488861, 57.794994, 59.950951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033737, 0.998862, -0.033721,
		0.968476, -0.024341, 0.247916,
		0.246813, -0.041022, -0.968195,
		72.562904, 57.782688, 59.660492>
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
