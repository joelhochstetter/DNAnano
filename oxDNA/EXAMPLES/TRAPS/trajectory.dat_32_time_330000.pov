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
	<36.481335, 53.550659, 49.711540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.789600, 53.295769, 49.713478>,  <36.974560, 53.142834, 49.714642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.789600, 53.295769, 49.713478>,  <36.481335, 53.550659, 49.711540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.789600, 53.295769, 49.713478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146719, -0.170032, 0.974455,
		-0.620121, -0.751689, -0.224530,
		0.770664, -0.637223, 0.004847,
		37.020802, 53.104603, 49.714931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.268612, 52.896919, 50.119568>,  <36.481335, 53.550659, 49.711540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.268612, 52.896919, 50.119568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.661953, 52.966122, 50.097347>,  <36.897957, 53.007645, 50.084015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.661953, 52.966122, 50.097347>,  <36.268612, 52.896919, 50.119568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.661953, 52.966122, 50.097347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066017, -0.055356, 0.996282,
		0.169288, -0.983364, -0.065856,
		0.983353, 0.173006, -0.055548,
		36.956959, 53.018024, 50.080685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.662266, 52.331463, 50.437763>,  <36.268612, 52.896919, 50.119568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.662266, 52.331463, 50.437763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.829929, 52.693954, 50.459900>,  <36.930527, 52.911449, 50.473183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.829929, 52.693954, 50.459900>,  <36.662266, 52.331463, 50.437763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.829929, 52.693954, 50.459900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046026, -0.082081, 0.995562,
		0.906747, -0.414749, -0.076114,
		0.419156, 0.906226, 0.055337,
		36.955677, 52.965824, 50.476501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.256119, 52.326557, 50.912609>,  <36.662266, 52.331463, 50.437763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.256119, 52.326557, 50.912609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.090637, 52.689880, 50.887836>,  <36.991348, 52.907875, 50.872974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.090637, 52.689880, 50.887836>,  <37.256119, 52.326557, 50.912609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.090637, 52.689880, 50.887836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103061, 0.114310, 0.988085,
		0.904561, 0.402387, -0.140901,
		-0.413699, 0.908305, -0.061929,
		36.966526, 52.962372, 50.869259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.707867, 52.948597, 51.181244>,  <37.256119, 52.326557, 50.912609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.707867, 52.948597, 51.181244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.318436, 53.039272, 51.192303>,  <37.084778, 53.093678, 51.198940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.318436, 53.039272, 51.192303>,  <37.707867, 52.948597, 51.181244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.318436, 53.039272, 51.192303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091547, 0.276492, 0.956646,
		0.209214, 0.933898, -0.289938,
		-0.973575, 0.226687, 0.027650,
		37.026363, 53.107277, 51.200596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380524, 52.898586, 51.558735>,  <37.707867, 52.948597, 51.181244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.380524, 52.898586, 51.558735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.291779, 52.862892, 51.170341>,  <38.238533, 52.841476, 50.937305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.291779, 52.862892, 51.170341>,  <38.380524, 52.898586, 51.558735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.291779, 52.862892, 51.170341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413991, 0.910215, 0.010940,
		0.882830, 0.404407, -0.238884,
		-0.221860, -0.089238, -0.970987,
		38.225220, 52.836121, 50.879044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.319332, 53.620411, 51.571194>,  <38.380524, 52.898586, 51.558735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.319332, 53.620411, 51.571194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.448624, 53.954113, 51.392513>,  <38.526199, 54.154335, 51.285305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.448624, 53.954113, 51.392513>,  <38.319332, 53.620411, 51.571194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.448624, 53.954113, 51.392513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922877, -0.173463, 0.343816,
		0.209343, -0.523382, -0.825982,
		0.323224, 0.834255, -0.446704,
		38.545589, 54.204388, 51.258503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.914783, 53.625187, 50.932884>,  <38.319332, 53.620411, 51.571194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.914783, 53.625187, 50.932884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.896584, 53.946949, 51.169819>,  <38.885662, 54.140007, 51.311977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.896584, 53.946949, 51.169819>,  <38.914783, 53.625187, 50.932884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.896584, 53.946949, 51.169819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942856, -0.161339, 0.291534,
		0.330078, 0.571752, -0.751098,
		-0.045504, 0.804406, 0.592335,
		38.882931, 54.188271, 51.347519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.469467, 54.079693, 50.824795>,  <38.914783, 53.625187, 50.932884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.469467, 54.079693, 50.824795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.362175, 54.134254, 51.206253>,  <39.297802, 54.166992, 51.435127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.362175, 54.134254, 51.206253>,  <39.469467, 54.079693, 50.824795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.362175, 54.134254, 51.206253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962448, -0.005021, 0.271420,
		0.041811, 0.990641, -0.129934,
		-0.268228, 0.136403, 0.953650,
		39.281708, 54.175175, 51.492348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.060577, 54.455605, 51.195644>,  <39.469467, 54.079693, 50.824795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.060577, 54.455605, 51.195644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.822788, 54.278816, 51.464348>,  <39.680115, 54.172741, 51.625568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.822788, 54.278816, 51.464348>,  <40.060577, 54.455605, 51.195644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.822788, 54.278816, 51.464348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793072, -0.184299, 0.580577,
		-0.132795, 0.877892, 0.460078,
		-0.594476, -0.441973, 0.671758,
		39.644447, 54.146225, 51.665874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.067455, 54.772671, 51.899227>,  <40.060577, 54.455605, 51.195644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.067455, 54.772671, 51.899227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.997673, 54.378819, 51.895996>,  <39.955803, 54.142506, 51.894058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.997673, 54.378819, 51.895996>,  <40.067455, 54.772671, 51.899227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.997673, 54.378819, 51.895996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899725, -0.162737, 0.404985,
		-0.400074, 0.063389, 0.914288,
		-0.174460, -0.984631, -0.008074,
		39.945335, 54.083427, 51.893574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.993431, 55.448620, 51.785229>,  <40.067455, 54.772671, 51.899227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.993431, 55.448620, 51.785229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.245983, 55.323509, 52.069069>,  <40.397514, 55.248444, 52.239372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.245983, 55.323509, 52.069069>,  <39.993431, 55.448620, 51.785229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.245983, 55.323509, 52.069069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181805, 0.949253, 0.256641,
		-0.753859, -0.033030, 0.656206,
		0.631383, -0.312773, 0.709598,
		40.435398, 55.229679, 52.281948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.648777, 55.618607, 51.493439>,  <39.993431, 55.448620, 51.785229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.648777, 55.618607, 51.493439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.858582, 55.420311, 51.770313>,  <40.984463, 55.301334, 51.936440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.858582, 55.420311, 51.770313>,  <40.648777, 55.618607, 51.493439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.858582, 55.420311, 51.770313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646870, 0.760643, 0.054599,
		-0.553577, 0.419119, 0.719647,
		0.524511, -0.495743, 0.692190,
		41.015934, 55.271587, 51.977970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.627991, 56.034298, 52.136971>,  <40.648777, 55.618607, 51.493439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.627991, 56.034298, 52.136971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.954388, 55.817326, 52.057049>,  <41.150227, 55.687141, 52.009094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.954388, 55.817326, 52.057049>,  <40.627991, 56.034298, 52.136971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.954388, 55.817326, 52.057049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551835, 0.833891, -0.010168,
		0.172133, -0.101963, 0.979783,
		0.815996, -0.542429, -0.199807,
		41.199184, 55.654598, 51.997108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.045204, 56.340580, 52.535336>,  <40.627991, 56.034298, 52.136971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.045204, 56.340580, 52.535336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.267361, 56.173943, 52.247448>,  <41.400654, 56.073959, 52.074715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.267361, 56.173943, 52.247448>,  <41.045204, 56.340580, 52.535336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.267361, 56.173943, 52.247448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502382, 0.857770, -0.108823,
		0.662686, -0.301133, 0.685687,
		0.555392, -0.416592, -0.719716,
		41.433979, 56.048965, 52.031532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.908375, 56.192272, 52.714756>,  <41.045204, 56.340580, 52.535336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.908375, 56.192272, 52.714756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.783478, 56.273731, 52.343590>,  <41.708538, 56.322609, 52.120892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.783478, 56.273731, 52.343590>,  <41.908375, 56.192272, 52.714756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.783478, 56.273731, 52.343590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485860, 0.873581, 0.028234,
		0.816360, -0.442021, -0.371717,
		-0.312245, 0.203651, -0.927917,
		41.689804, 56.334827, 52.065216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.100616, 56.847198, 52.544880>,  <41.908375, 56.192272, 52.714756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.100616, 56.847198, 52.544880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.133480, 56.931366, 52.934540>,  <42.153198, 56.981869, 53.168335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.133480, 56.931366, 52.934540>,  <42.100616, 56.847198, 52.544880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.133480, 56.931366, 52.934540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815838, 0.547208, -0.187007,
		-0.572415, 0.810114, -0.126713,
		0.082158, 0.210423, 0.974152,
		42.158127, 56.994492, 53.226784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.289501, 56.357376, 51.997196>,  <42.100616, 56.847198, 52.544880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.289501, 56.357376, 51.997196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.195549, 56.260704, 51.620598>,  <42.139175, 56.202702, 51.394638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.195549, 56.260704, 51.620598>,  <42.289501, 56.357376, 51.997196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.195549, 56.260704, 51.620598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847525, 0.423355, -0.320113,
		0.475954, -0.873132, 0.105393,
		-0.234882, -0.241682, -0.941499,
		42.125084, 56.188198, 51.338150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.824001, 55.883972, 51.650719>,  <42.289501, 56.357376, 51.997196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.824001, 55.883972, 51.650719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.621967, 56.097198, 51.379211>,  <42.500748, 56.225136, 51.216305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.621967, 56.097198, 51.379211>,  <42.824001, 55.883972, 51.650719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.621967, 56.097198, 51.379211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860169, 0.246485, -0.446492,
		-0.070702, -0.809375, -0.583021,
		-0.505085, 0.533065, -0.678772,
		42.470440, 56.257118, 51.175579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.242222, 55.673210, 51.031052>,  <42.824001, 55.883972, 51.650719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.242222, 55.673210, 51.031052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.373516, 55.483738, 51.357948>,  <43.452293, 55.370056, 51.554089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.373516, 55.483738, 51.357948>,  <43.242222, 55.673210, 51.031052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.373516, 55.483738, 51.357948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791795, -0.333816, -0.511495,
		0.515095, 0.814981, 0.265487,
		0.328235, -0.473680, 0.817245,
		43.471985, 55.341633, 51.603123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.958336, 55.888226, 51.258877>,  <43.242222, 55.673210, 51.031052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.958336, 55.888226, 51.258877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.845047, 55.511292, 51.330189>,  <43.777073, 55.285130, 51.372974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.845047, 55.511292, 51.330189>,  <43.958336, 55.888226, 51.258877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.845047, 55.511292, 51.330189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788069, -0.334612, -0.516703,
		0.546563, -0.005849, 0.837398,
		-0.283225, -0.942338, 0.178278,
		43.760078, 55.228592, 51.383671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.565929, 55.912113, 51.623356>,  <43.958336, 55.888226, 51.258877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.565929, 55.912113, 51.623356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.723457, 56.272797, 51.551987>,  <44.817974, 56.489204, 51.509163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.723457, 56.272797, 51.551987>,  <44.565929, 55.912113, 51.623356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.723457, 56.272797, 51.551987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823802, -0.260130, 0.503670,
		0.407748, -0.345341, -0.845270,
		0.393818, 0.901705, -0.178425,
		44.841602, 56.543308, 51.498459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.123379, 55.956448, 51.132942>,  <44.565929, 55.912113, 51.623356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.123379, 55.956448, 51.132942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.166882, 56.192505, 51.452919>,  <45.192982, 56.334137, 51.644905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.166882, 56.192505, 51.452919>,  <45.123379, 55.956448, 51.132942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.166882, 56.192505, 51.452919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771541, -0.557529, 0.306407,
		0.626814, 0.583865, -0.515952,
		0.108757, 0.590138, 0.799943,
		45.199509, 56.369545, 51.692902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.801197, 56.301117, 51.128506>,  <45.123379, 55.956448, 51.132942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.801197, 56.301117, 51.128506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.656559, 56.228180, 51.494240>,  <45.569778, 56.184418, 51.713680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.656559, 56.228180, 51.494240>,  <45.801197, 56.301117, 51.128506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.656559, 56.228180, 51.494240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904033, -0.308375, 0.296022,
		0.227979, 0.933625, 0.276350,
		-0.361593, -0.182342, 0.914331,
		45.548080, 56.173477, 51.768539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.382542, 56.085663, 51.453941>,  <45.801197, 56.301117, 51.128506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.382542, 56.085663, 51.453941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.120220, 56.024612, 51.749680>,  <45.962826, 55.987984, 51.927120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.120220, 56.024612, 51.749680>,  <46.382542, 56.085663, 51.453941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.120220, 56.024612, 51.749680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674703, -0.557838, 0.483314,
		0.338669, 0.815796, 0.468807,
		-0.655804, -0.152622, 0.739343,
		45.923477, 55.978825, 51.971481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.730450, 56.237202, 52.089794>,  <46.382542, 56.085663, 51.453941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.730450, 56.237202, 52.089794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.445328, 55.959633, 52.130554>,  <46.274254, 55.793091, 52.155010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.445328, 55.959633, 52.130554>,  <46.730450, 56.237202, 52.089794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.445328, 55.959633, 52.130554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694875, -0.679007, 0.236848,
		-0.095163, 0.239635, 0.966188,
		-0.712806, -0.693919, 0.101900,
		46.231487, 55.751457, 52.161125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.725441, 56.900768, 52.481590>,  <46.730450, 56.237202, 52.089794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.725441, 56.900768, 52.481590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.779591, 56.513218, 52.564480>,  <46.812080, 56.280685, 52.614216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.779591, 56.513218, 52.564480>,  <46.725441, 56.900768, 52.481590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.779591, 56.513218, 52.564480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699059, 0.241622, 0.673005,
		-0.702132, 0.053755, 0.710014,
		0.135378, -0.968880, 0.207228,
		46.820206, 56.222553, 52.626648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.917145, 56.906658, 53.185928>,  <46.725441, 56.900768, 52.481590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.917145, 56.906658, 53.185928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.049576, 56.547600, 53.069569>,  <47.129036, 56.332165, 52.999752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.049576, 56.547600, 53.069569>,  <46.917145, 56.906658, 53.185928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.049576, 56.547600, 53.069569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765836, 0.075517, 0.638587,
		-0.551254, -0.434207, 0.712448,
		0.331081, -0.897642, -0.290902,
		47.148899, 56.278309, 52.982300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.157440, 56.658642, 53.802414>,  <46.917145, 56.906658, 53.185928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.157440, 56.658642, 53.802414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.347446, 56.495163, 53.490688>,  <47.461452, 56.397076, 53.303654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.347446, 56.495163, 53.490688>,  <47.157440, 56.658642, 53.802414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.347446, 56.495163, 53.490688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864187, 0.049652, 0.500715,
		-0.165946, -0.911319, 0.376775,
		0.475018, -0.408696, -0.779311,
		47.489952, 56.372555, 53.256893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.608936, 56.140526, 53.915607>,  <47.157440, 56.658642, 53.802414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.608936, 56.140526, 53.915607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.789543, 56.287056, 53.590172>,  <47.897907, 56.374973, 53.394909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.789543, 56.287056, 53.590172>,  <47.608936, 56.140526, 53.915607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.789543, 56.287056, 53.590172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865640, 0.041225, 0.498966,
		0.216327, -0.929571, -0.298496,
		0.451519, 0.366330, -0.813592,
		47.924999, 56.396954, 53.346092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.277752, 55.732967, 53.835098>,  <47.608936, 56.140526, 53.915607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.277752, 55.732967, 53.835098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.279842, 56.093132, 53.661091>,  <48.281097, 56.309231, 53.556686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.279842, 56.093132, 53.661091>,  <48.277752, 55.732967, 53.835098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.279842, 56.093132, 53.661091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871277, 0.209393, 0.443881,
		0.490763, -0.381341, -0.783409,
		0.005230, 0.900407, -0.435016,
		48.281410, 56.363255, 53.530586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.957932, 55.772968, 53.581627>,  <48.277752, 55.732967, 53.835098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.957932, 55.772968, 53.581627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.789608, 56.129349, 53.649887>,  <48.688614, 56.343178, 53.690842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.789608, 56.129349, 53.649887>,  <48.957932, 55.772968, 53.581627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.789608, 56.129349, 53.649887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861348, 0.333415, 0.383294,
		0.284600, 0.308283, -0.907725,
		-0.420812, 0.890953, 0.170649,
		48.663364, 56.396633, 53.701080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.325356, 56.282848, 53.182693>,  <48.957932, 55.772968, 53.581627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.325356, 56.282848, 53.182693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.177689, 56.385532, 53.539978>,  <49.089088, 56.447144, 53.754349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.177689, 56.385532, 53.539978>,  <49.325356, 56.282848, 53.182693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.177689, 56.385532, 53.539978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913796, 0.275440, 0.298514,
		-0.169395, 0.926410, -0.336259,
		-0.369165, 0.256706, 0.893207,
		49.066940, 56.462543, 53.807941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.432079, 57.058022, 53.390411>,  <49.325356, 56.282848, 53.182693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.432079, 57.058022, 53.390411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.447723, 56.774597, 53.672234>,  <49.457108, 56.604542, 53.841328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.447723, 56.774597, 53.672234>,  <49.432079, 57.058022, 53.390411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.447723, 56.774597, 53.672234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938008, 0.269055, 0.218519,
		-0.344400, 0.652337, 0.675162,
		0.039108, -0.708566, 0.704560,
		49.459457, 56.562027, 53.883602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.781948, 57.411533, 53.919483>,  <49.432079, 57.058022, 53.390411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.781948, 57.411533, 53.919483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.850376, 57.020115, 53.965424>,  <49.891434, 56.785263, 53.992989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.850376, 57.020115, 53.965424>,  <49.781948, 57.411533, 53.919483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.850376, 57.020115, 53.965424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932282, 0.198480, 0.302418,
		-0.318725, 0.055341, 0.946230,
		0.171071, -0.978541, 0.114854,
		49.901699, 56.726551, 53.999878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.009888, 57.179939, 54.639694>,  <49.781948, 57.411533, 53.919483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.009888, 57.179939, 54.639694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.164097, 56.975319, 54.332531>,  <50.256622, 56.852547, 54.148232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.164097, 56.975319, 54.332531>,  <50.009888, 57.179939, 54.639694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.164097, 56.975319, 54.332531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920977, 0.162555, 0.354086,
		-0.056306, -0.843737, 0.533795,
		0.385527, -0.511550, -0.767910,
		50.279755, 56.821854, 54.102158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.616253, 57.104218, 54.905830>,  <50.009888, 57.179939, 54.639694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.616253, 57.104218, 54.905830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.671188, 56.950565, 54.540630>,  <50.704151, 56.858372, 54.321510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.671188, 56.950565, 54.540630>,  <50.616253, 57.104218, 54.905830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.671188, 56.950565, 54.540630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986632, 0.134676, 0.091752,
		0.087715, -0.913401, 0.397497,
		0.137340, -0.384136, -0.913005,
		50.712391, 56.835323, 54.266727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.148716, 56.670967, 54.936001>,  <50.616253, 57.104218, 54.905830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.148716, 56.670967, 54.936001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.102467, 56.812790, 54.564857>,  <51.074718, 56.897884, 54.342171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.102467, 56.812790, 54.564857>,  <51.148716, 56.670967, 54.936001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.102467, 56.812790, 54.564857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975385, 0.217110, -0.038578,
		0.187769, -0.909478, -0.370934,
		-0.115620, 0.354559, -0.927858,
		51.067780, 56.919159, 54.286499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.678986, 56.442547, 54.542061>,  <51.148716, 56.670967, 54.936001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.678986, 56.442547, 54.542061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.563541, 56.768929, 54.341694>,  <51.494274, 56.964756, 54.221474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.563541, 56.768929, 54.341694>,  <51.678986, 56.442547, 54.542061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.563541, 56.768929, 54.341694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951055, 0.183976, -0.248289,
		-0.110435, -0.548062, -0.829116,
		-0.288615, 0.815954, -0.500919,
		51.476955, 57.013714, 54.191418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.697540, 56.444157, 53.803848>,  <51.678986, 56.442547, 54.542061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.697540, 56.444157, 53.803848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.754318, 56.828987, 53.897018>,  <51.788387, 57.059887, 53.952923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.754318, 56.828987, 53.897018>,  <51.697540, 56.444157, 53.803848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.754318, 56.828987, 53.897018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899044, -0.026836, -0.437035,
		-0.414211, 0.271451, -0.868760,
		0.141948, 0.962078, 0.232930,
		51.796902, 57.117611, 53.966896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.834049, 57.048637, 53.210751>,  <51.697540, 56.444157, 53.803848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.834049, 57.048637, 53.210751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.006611, 57.072624, 53.570816>,  <52.110149, 57.087017, 53.786854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.006611, 57.072624, 53.570816>,  <51.834049, 57.048637, 53.210751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.006611, 57.072624, 53.570816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896175, -0.143204, -0.419957,
		0.103724, 0.987875, -0.115518,
		0.431408, 0.059965, 0.900162,
		52.136032, 57.090614, 53.840866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.429394, 57.595169, 53.269966>,  <51.834049, 57.048637, 53.210751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.429394, 57.595169, 53.269966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.481777, 57.291954, 53.525536>,  <52.513206, 57.110023, 53.678879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.481777, 57.291954, 53.525536>,  <52.429394, 57.595169, 53.269966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.481777, 57.291954, 53.525536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893839, -0.188490, -0.406845,
		0.428836, 0.624375, 0.652882,
		0.130962, -0.758042, 0.638922,
		52.521065, 57.064541, 53.717213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.091042, 57.639938, 53.876518>,  <52.429394, 57.595169, 53.269966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.091042, 57.639938, 53.876518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.986351, 57.279079, 53.739326>,  <52.923534, 57.062565, 53.657013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.986351, 57.279079, 53.739326>,  <53.091042, 57.639938, 53.876518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.986351, 57.279079, 53.739326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940777, -0.159127, -0.299363,
		0.215492, -0.401016, 0.890365,
		-0.261730, -0.902145, -0.342976,
		52.907833, 57.008434, 53.636433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.450077, 57.272038, 54.312321>,  <53.091042, 57.639938, 53.876518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.450077, 57.272038, 54.312321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.428181, 57.138123, 53.936039>,  <53.415043, 57.057774, 53.710270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.428181, 57.138123, 53.936039>,  <53.450077, 57.272038, 54.312321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.428181, 57.138123, 53.936039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996608, -0.076286, -0.030849,
		-0.061435, -0.939202, 0.337825,
		-0.054745, -0.334784, -0.940703,
		53.411758, 57.037689, 53.653828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.066246, 57.494324, 54.211414>,  <53.450077, 57.272038, 54.312321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.066246, 57.494324, 54.211414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.110901, 57.792236, 54.474575>,  <54.137695, 57.970982, 54.632473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.110901, 57.792236, 54.474575>,  <54.066246, 57.494324, 54.211414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.110901, 57.792236, 54.474575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882589, -0.378568, 0.278787,
		0.456697, 0.549536, -0.699598,
		0.111642, 0.744779, 0.657906,
		54.144394, 58.015671, 54.671947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.725098, 57.462200, 54.265472>,  <54.066246, 57.494324, 54.211414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.725098, 57.462200, 54.265472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.636841, 57.692337, 54.580505>,  <54.583885, 57.830421, 54.769527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.636841, 57.692337, 54.580505>,  <54.725098, 57.462200, 54.265472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.636841, 57.692337, 54.580505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870093, -0.248779, 0.425496,
		0.440742, 0.779158, -0.445712,
		-0.220645, 0.575345, 0.787587,
		54.570648, 57.864941, 54.816780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.356945, 57.773483, 54.568073>,  <54.725098, 57.462200, 54.265472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.356945, 57.773483, 54.568073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.105484, 57.693253, 54.868622>,  <54.954609, 57.645115, 55.048950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.105484, 57.693253, 54.868622>,  <55.356945, 57.773483, 54.568073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.105484, 57.693253, 54.868622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773742, -0.064135, 0.630246,
		-0.078226, 0.977576, 0.195516,
		-0.628652, -0.200581, 0.751374,
		54.916889, 57.633080, 55.094032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.542862, 58.211426, 55.222057>,  <55.356945, 57.773483, 54.568073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.542862, 58.211426, 55.222057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.389748, 57.844330, 55.264458>,  <55.297878, 57.624073, 55.289898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.389748, 57.844330, 55.264458>,  <55.542862, 58.211426, 55.222057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.389748, 57.844330, 55.264458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859061, -0.311384, 0.406268,
		-0.339840, 0.246574, 0.907585,
		-0.382782, -0.917737, 0.106002,
		55.274914, 57.569008, 55.296257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.763409, 57.901508, 55.878349>,  <55.542862, 58.211426, 55.222057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.763409, 57.901508, 55.878349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.712303, 57.592449, 55.629608>,  <55.681641, 57.407013, 55.480362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.712303, 57.592449, 55.629608>,  <55.763409, 57.901508, 55.878349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.712303, 57.592449, 55.629608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916090, -0.332203, 0.224544,
		-0.380073, -0.540984, 0.750254,
		-0.127762, -0.772644, -0.621851,
		55.673973, 57.360657, 55.443054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.891819, 57.230434, 56.230160>,  <55.763409, 57.901508, 55.878349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.891819, 57.230434, 56.230160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.959824, 57.207680, 55.836639>,  <56.000626, 57.194027, 55.600529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.959824, 57.207680, 55.836639>,  <55.891819, 57.230434, 56.230160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.959824, 57.207680, 55.836639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906701, -0.382009, 0.178780,
		-0.385990, -0.922406, -0.013368,
		0.170015, -0.056886, -0.983798,
		56.010826, 57.190613, 55.541500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.202919, 56.619556, 56.298653>,  <55.891819, 57.230434, 56.230160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.202919, 56.619556, 56.298653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.264000, 56.809666, 55.952057>,  <56.300648, 56.923733, 55.744099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.264000, 56.809666, 55.952057>,  <56.202919, 56.619556, 56.298653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.264000, 56.809666, 55.952057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960444, -0.277967, 0.016792,
		-0.232874, -0.834776, -0.498918,
		0.152700, 0.475272, -0.866487,
		56.309811, 56.952248, 55.692112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.388802, 56.078304, 55.901478>,  <56.202919, 56.619556, 56.298653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.388802, 56.078304, 55.901478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.539543, 56.447163, 55.866554>,  <56.629990, 56.668480, 55.845600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.539543, 56.447163, 55.866554>,  <56.388802, 56.078304, 55.901478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.539543, 56.447163, 55.866554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920925, -0.362896, 0.142137,
		0.099388, -0.133969, -0.985989,
		0.376853, 0.922149, -0.087308,
		56.652599, 56.723808, 55.840363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.880520, 56.079311, 55.395580>,  <56.388802, 56.078304, 55.901478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.880520, 56.079311, 55.395580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.987259, 56.378071, 55.639198>,  <57.051304, 56.557327, 55.785370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.987259, 56.378071, 55.639198>,  <56.880520, 56.079311, 55.395580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.987259, 56.378071, 55.639198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936429, -0.350326, 0.019329,
		0.227799, 0.565165, -0.792903,
		0.266850, 0.746900, 0.609041,
		57.067314, 56.602142, 55.821911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.522923, 56.298859, 55.125458>,  <56.880520, 56.079311, 55.395580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.522923, 56.298859, 55.125458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.506157, 56.436043, 55.500824>,  <57.496098, 56.518353, 55.726044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.506157, 56.436043, 55.500824>,  <57.522923, 56.298859, 55.125458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.506157, 56.436043, 55.500824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967825, -0.219301, 0.123375,
		0.248108, 0.913393, -0.322733,
		-0.041915, 0.342959, 0.938415,
		57.493584, 56.538929, 55.782349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.964771, 56.822525, 55.236179>,  <57.522923, 56.298859, 55.125458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.964771, 56.822525, 55.236179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.949883, 56.625252, 55.583832>,  <57.940948, 56.506886, 55.792423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.949883, 56.625252, 55.583832>,  <57.964771, 56.822525, 55.236179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.949883, 56.625252, 55.583832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981494, -0.181525, -0.060974,
		0.187840, 0.850774, 0.490816,
		-0.037220, -0.493187, 0.869127,
		57.938717, 56.477295, 55.844570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.377899, 57.159126, 55.846981>,  <57.964771, 56.822525, 55.236179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.377899, 57.159126, 55.846981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.345650, 56.760880, 55.865944>,  <58.326302, 56.521931, 55.877323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.345650, 56.760880, 55.865944>,  <58.377899, 57.159126, 55.846981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.345650, 56.760880, 55.865944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983269, -0.087237, -0.159913,
		0.163347, 0.033722, 0.985992,
		-0.080622, -0.995617, 0.047408,
		58.321465, 56.462196, 55.880165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.905331, 56.856579, 56.207973>,  <58.377899, 57.159126, 55.846981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.905331, 56.856579, 56.207973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.801704, 56.551376, 55.971092>,  <58.739529, 56.368256, 55.828964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.801704, 56.551376, 55.971092>,  <58.905331, 56.856579, 56.207973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.801704, 56.551376, 55.971092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962046, -0.149419, -0.228345,
		0.085743, -0.628885, 0.772756,
		-0.259067, -0.763006, -0.592205,
		58.723984, 56.322475, 55.793430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.252316, 56.231556, 56.400265>,  <58.905331, 56.856579, 56.207973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.252316, 56.231556, 56.400265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.159233, 56.268066, 56.012962>,  <59.103382, 56.289974, 55.780582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.159233, 56.268066, 56.012962>,  <59.252316, 56.231556, 56.400265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.159233, 56.268066, 56.012962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971942, 0.056916, -0.228230,
		0.034277, -0.994198, -0.101960,
		-0.232709, 0.091277, -0.968254,
		59.089420, 56.295448, 55.722485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.673210, 55.804573, 55.991280>,  <59.252316, 56.231556, 56.400265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.673210, 55.804573, 55.991280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.557213, 56.083080, 55.728645>,  <59.487614, 56.250187, 55.571064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.557213, 56.083080, 55.728645>,  <59.673210, 55.804573, 55.991280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.557213, 56.083080, 55.728645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922254, 0.020055, -0.386063,
		-0.255637, -0.717498, -0.647955,
		-0.289994, 0.696272, -0.656589,
		59.470215, 56.291962, 55.531670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.935932, 55.661469, 55.284805>,  <59.673210, 55.804573, 55.991280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.935932, 55.661469, 55.284805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.866722, 56.053905, 55.319511>,  <59.825195, 56.289368, 55.340336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.866722, 56.053905, 55.319511>,  <59.935932, 55.661469, 55.284805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.866722, 56.053905, 55.319511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924222, 0.192179, -0.329973,
		-0.340407, 0.023096, -0.939995,
		-0.173026, 0.981088, 0.086765,
		59.814816, 56.348232, 55.345539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.056465, 56.042614, 54.653069>,  <59.935932, 55.661469, 55.284805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.056465, 56.042614, 54.653069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.093544, 56.317574, 54.941208>,  <60.115791, 56.482548, 55.114090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.093544, 56.317574, 54.941208>,  <60.056465, 56.042614, 54.653069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.093544, 56.317574, 54.941208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846753, 0.326198, -0.420243,
		-0.523848, 0.648910, -0.551815,
		0.092698, 0.687394, 0.720344,
		60.121353, 56.523792, 55.157310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.076355, 56.789391, 54.426865>,  <60.056465, 56.042614, 54.653069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.076355, 56.789391, 54.426865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.282494, 56.742668, 54.766457>,  <60.406178, 56.714634, 54.970211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.282494, 56.742668, 54.766457>,  <60.076355, 56.789391, 54.426865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.282494, 56.742668, 54.766457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819227, 0.357950, -0.448038,
		-0.251558, 0.926406, 0.280163,
		0.515349, -0.116809, 0.848982,
		60.437099, 56.707626, 55.021152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.428108, 57.419220, 54.478039>,  <60.076355, 56.789391, 54.426865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.428108, 57.419220, 54.478039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.600594, 57.103771, 54.653370>,  <60.704082, 56.914501, 54.758568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.600594, 57.103771, 54.653370>,  <60.428108, 57.419220, 54.478039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.600594, 57.103771, 54.653370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901901, 0.363203, -0.233790,
		0.025171, 0.496140, 0.867877,
		0.431209, -0.788624, 0.438327,
		60.729958, 56.867184, 54.784866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.021233, 57.584343, 54.822342>,  <60.428108, 57.419220, 54.478039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.021233, 57.584343, 54.822342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.095604, 57.196491, 54.758789>,  <61.140228, 56.963779, 54.720657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.095604, 57.196491, 54.758789>,  <61.021233, 57.584343, 54.822342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.095604, 57.196491, 54.758789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930064, 0.225831, -0.289796,
		0.316877, -0.093892, 0.943808,
		0.185931, -0.969631, -0.158886,
		61.151382, 56.905602, 54.711124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.563557, 57.319061, 55.332321>,  <61.021233, 57.584343, 54.822342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.563557, 57.319061, 55.332321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.561684, 57.101139, 54.996902>,  <61.560558, 56.970387, 54.795650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.561684, 57.101139, 54.996902>,  <61.563557, 57.319061, 55.332321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.561684, 57.101139, 54.996902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990079, 0.115234, -0.080398,
		0.140430, -0.830607, 0.538861,
		-0.004684, -0.544806, -0.838549,
		61.560280, 56.937698, 54.745338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.130558, 56.901062, 55.473991>,  <61.563557, 57.319061, 55.332321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.130558, 56.901062, 55.473991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.072273, 56.907234, 55.078308>,  <62.037304, 56.910938, 54.840897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.072273, 56.907234, 55.078308>,  <62.130558, 56.901062, 55.473991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.072273, 56.907234, 55.078308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986012, 0.084051, -0.143931,
		0.080923, -0.996342, -0.027456,
		-0.145712, 0.015425, -0.989207,
		62.028561, 56.911861, 54.781548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.373650, 56.284359, 54.978931>,  <62.130558, 56.901062, 55.473991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.373650, 56.284359, 54.978931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.385231, 56.653267, 54.824749>,  <62.392181, 56.874611, 54.732239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.385231, 56.653267, 54.824749>,  <62.373650, 56.284359, 54.978931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.385231, 56.653267, 54.824749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995016, -0.063403, -0.076961,
		-0.095418, -0.381306, -0.919511,
		0.028954, 0.922272, -0.385456,
		62.393917, 56.929947, 54.709114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.762444, 56.286919, 54.337475>,  <62.373650, 56.284359, 54.978931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.762444, 56.286919, 54.337475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.785866, 56.645454, 54.513268>,  <62.799919, 56.860577, 54.618744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.785866, 56.645454, 54.513268>,  <62.762444, 56.286919, 54.337475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.785866, 56.645454, 54.513268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990073, 0.004209, -0.140491,
		-0.127778, 0.443346, -0.887196,
		0.058552, 0.896341, 0.439482,
		62.803432, 56.914356, 54.645111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.521454, 56.309696, 54.391319>,  <62.762444, 56.286919, 54.337475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.521454, 56.309696, 54.391319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.199242, 56.470314, 54.565620>,  <63.005913, 56.566685, 54.670200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.199242, 56.470314, 54.565620>,  <63.521454, 56.309696, 54.391319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.199242, 56.470314, 54.565620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589410, 0.618603, 0.519544,
		-0.060933, 0.675344, -0.734981,
		-0.805533, 0.401548, 0.435748,
		62.957581, 56.590778, 54.696346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.640968, 57.123642, 54.338829>,  <63.521454, 56.309696, 54.391319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.640968, 57.123642, 54.338829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.422546, 57.011490, 54.654602>,  <63.291492, 56.944199, 54.844067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.422546, 57.011490, 54.654602>,  <63.640968, 57.123642, 54.338829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.422546, 57.011490, 54.654602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627418, 0.487554, 0.607156,
		-0.555129, 0.826847, -0.090314,
		-0.546058, -0.280385, 0.789434,
		63.258728, 56.927376, 54.891434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.522171, 57.667763, 54.715981>,  <63.640968, 57.123642, 54.338829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.522171, 57.667763, 54.715981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.531189, 57.350101, 54.958897>,  <63.536602, 57.159504, 55.104649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.531189, 57.350101, 54.958897>,  <63.522171, 57.667763, 54.715981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.531189, 57.350101, 54.958897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681304, 0.456761, 0.572009,
		-0.731653, 0.400853, 0.551362,
		0.022549, -0.794158, 0.607294,
		63.537952, 57.111855, 55.141087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.735958, 58.396263, 54.723587>,  <63.522171, 57.667763, 54.715981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.735958, 58.396263, 54.723587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.678177, 58.788406, 54.777306>,  <63.643509, 59.023693, 54.809536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.678177, 58.788406, 54.777306>,  <63.735958, 58.396263, 54.723587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.678177, 58.788406, 54.777306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022567, -0.138946, 0.990043,
		0.989255, 0.139982, 0.042194,
		-0.144451, 0.980357, 0.134294,
		63.634842, 59.082512, 54.817593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.433769, 58.329304, 54.963634>,  <63.735958, 58.396263, 54.723587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.433769, 58.329304, 54.963634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.544525, 58.463608, 54.603500>,  <64.610977, 58.544189, 54.387421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.544525, 58.463608, 54.603500>,  <64.433769, 58.329304, 54.963634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.544525, 58.463608, 54.603500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910747, -0.207060, -0.357306,
		-0.306391, 0.918909, 0.248459,
		0.276885, 0.335758, -0.900334,
		64.627594, 58.564335, 54.333401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.866829, 58.246590, 55.562168>,  <64.433769, 58.329304, 54.963634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.866829, 58.246590, 55.562168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.206970, 58.456596, 55.547943>,  <65.411057, 58.582600, 55.539410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.206970, 58.456596, 55.547943>,  <64.866829, 58.246590, 55.562168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.206970, 58.456596, 55.547943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420490, -0.637320, 0.645764,
		0.316373, -0.564077, -0.762709,
		0.850350, 0.525014, -0.035558,
		65.462074, 58.614101, 55.537277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.466415, 57.861519, 55.742764>,  <64.866829, 58.246590, 55.562168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.466415, 57.861519, 55.742764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.607124, 58.230843, 55.804428>,  <65.691551, 58.452435, 55.841427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.607124, 58.230843, 55.804428>,  <65.466415, 57.861519, 55.742764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.607124, 58.230843, 55.804428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521766, -0.330125, 0.786624,
		0.777186, -0.196276, -0.597878,
		0.351770, 0.923305, 0.154158,
		65.712654, 58.507835, 55.850677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.120186, 57.750668, 55.925598>,  <65.466415, 57.861519, 55.742764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.120186, 57.750668, 55.925598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.035782, 58.124367, 56.040596>,  <65.985138, 58.348587, 56.109596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.035782, 58.124367, 56.040596>,  <66.120186, 57.750668, 55.925598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.035782, 58.124367, 56.040596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485614, -0.155056, 0.860312,
		0.848322, 0.321152, -0.420965,
		-0.211018, 0.934248, 0.287493,
		65.972473, 58.404640, 56.126842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.666382, 58.334072, 55.903618>,  <66.120186, 57.750668, 55.925598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.666382, 58.334072, 55.903618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.392975, 58.336861, 56.195580>,  <66.228935, 58.338535, 56.370758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.392975, 58.336861, 56.195580>,  <66.666382, 58.334072, 55.903618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.392975, 58.336861, 56.195580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698764, -0.282869, 0.657050,
		0.211050, 0.959133, 0.188471,
		-0.683511, 0.006974, 0.729907,
		66.187920, 58.338951, 56.414551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.725136, 58.930916, 56.506676>,  <66.666382, 58.334072, 55.903618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.725136, 58.930916, 56.506676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.594856, 58.555035, 56.548409>,  <66.516693, 58.329506, 56.573448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.594856, 58.555035, 56.548409>,  <66.725136, 58.930916, 56.506676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.594856, 58.555035, 56.548409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771596, -0.200395, 0.603723,
		-0.546411, 0.277132, 0.790337,
		-0.325691, -0.939702, 0.104336,
		66.497147, 58.273125, 56.579708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.584076, 58.716698, 57.242432>,  <66.725136, 58.930916, 56.506676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.584076, 58.716698, 57.242432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.696785, 58.437756, 56.978828>,  <66.764412, 58.270390, 56.820667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.696785, 58.437756, 56.978828>,  <66.584076, 58.716698, 57.242432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.696785, 58.437756, 56.978828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866752, -0.109576, 0.486553,
		-0.411514, -0.708295, 0.573562,
		0.281775, -0.697360, -0.659008,
		66.781319, 58.228546, 56.781124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.843040, 58.044754, 57.614407>,  <66.584076, 58.716698, 57.242432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.843040, 58.044754, 57.614407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.985817, 58.155399, 57.257515>,  <67.071487, 58.221786, 57.043381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.985817, 58.155399, 57.257515>,  <66.843040, 58.044754, 57.614407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.985817, 58.155399, 57.257515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885669, 0.203420, 0.417386,
		0.296953, -0.939204, -0.172380,
		0.356945, 0.276616, -0.892230,
		67.092903, 58.238384, 56.989845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.523552, 57.638058, 57.325928>,  <66.843040, 58.044754, 57.614407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.523552, 57.638058, 57.325928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.506638, 58.011189, 57.182800>,  <67.496490, 58.235069, 57.096924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.506638, 58.011189, 57.182800>,  <67.523552, 57.638058, 57.325928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.506638, 58.011189, 57.182800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922144, 0.174286, 0.345363,
		0.384529, -0.315356, -0.867576,
		-0.042294, 0.932832, -0.357822,
		67.493950, 58.291039, 57.075455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.603416, 56.990829, 56.865627>,  <67.523552, 57.638058, 57.325928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.603416, 56.990829, 56.865627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.543419, 57.049133, 56.474472>,  <67.507423, 57.084118, 56.239780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.543419, 57.049133, 56.474472>,  <67.603416, 56.990829, 56.865627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.543419, 57.049133, 56.474472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447593, 0.891923, 0.064297,
		0.881569, -0.428050, -0.199020,
		-0.149988, 0.145762, -0.977884,
		67.498421, 57.092861, 56.181107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.192574, 57.002548, 56.502419>,  <67.603416, 56.990829, 56.865627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.192574, 57.002548, 56.502419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.947601, 57.257530, 56.315407>,  <67.800621, 57.410519, 56.203197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.947601, 57.257530, 56.315407>,  <68.192574, 57.002548, 56.502419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.947601, 57.257530, 56.315407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682765, 0.724615, 0.093623,
		0.398461, -0.261878, -0.879004,
		-0.612422, 0.637458, -0.467532,
		67.763878, 57.448769, 56.175148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.397049, 57.250999, 55.866417>,  <68.192574, 57.002548, 56.502419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.397049, 57.250999, 55.866417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.174690, 57.530621, 56.046333>,  <68.041275, 57.698391, 56.154285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.174690, 57.530621, 56.046333>,  <68.397049, 57.250999, 55.866417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.174690, 57.530621, 56.046333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810491, 0.575990, 0.106488,
		-0.184636, 0.423750, -0.886761,
		-0.555889, 0.699051, 0.449794,
		68.007927, 57.740337, 56.181271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.611298, 57.820580, 55.646469>,  <68.397049, 57.250999, 55.866417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.611298, 57.820580, 55.646469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.469254, 57.903008, 56.011200>,  <68.384026, 57.952465, 56.230038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.469254, 57.903008, 56.011200>,  <68.611298, 57.820580, 55.646469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.469254, 57.903008, 56.011200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736602, 0.662263, 0.137206,
		-0.575595, 0.720377, -0.386972,
		-0.355118, 0.206069, 0.911826,
		68.362717, 57.964828, 56.284748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.489616, 58.567490, 55.669949>,  <68.611298, 57.820580, 55.646469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.489616, 58.567490, 55.669949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.581314, 58.398033, 56.020485>,  <68.636330, 58.296360, 56.230808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.581314, 58.398033, 56.020485>,  <68.489616, 58.567490, 55.669949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.581314, 58.398033, 56.020485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745378, 0.655410, 0.121853,
		-0.625985, 0.625271, 0.466024,
		0.229246, -0.423642, 0.876341,
		68.650085, 58.270939, 56.283386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.342712, 59.142300, 56.179531>,  <68.489616, 58.567490, 55.669949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.342712, 59.142300, 56.179531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.623459, 58.876377, 56.281830>,  <68.791908, 58.716824, 56.343208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.623459, 58.876377, 56.281830>,  <68.342712, 59.142300, 56.179531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.623459, 58.876377, 56.281830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674549, 0.735692, 0.061165,
		-0.228816, 0.129585, 0.964806,
		0.701874, -0.664805, 0.255750,
		68.834023, 58.676937, 56.358555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.718033, 59.394794, 56.710758>,  <68.342712, 59.142300, 56.179531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.718033, 59.394794, 56.710758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.961693, 59.114246, 56.562698>,  <69.107887, 58.945919, 56.473862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.961693, 59.114246, 56.562698>,  <68.718033, 59.394794, 56.710758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.961693, 59.114246, 56.562698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781298, 0.610807, 0.128405,
		0.136032, -0.367417, 0.920055,
		0.609154, -0.701370, -0.370151,
		69.144440, 58.903835, 56.451653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.263290, 59.110649, 57.203880>,  <68.718033, 59.394794, 56.710758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.263290, 59.110649, 57.203880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.384499, 59.048496, 56.827789>,  <69.457222, 59.011204, 56.602135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.384499, 59.048496, 56.827789>,  <69.263290, 59.110649, 57.203880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.384499, 59.048496, 56.827789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863677, 0.461779, 0.202044,
		0.402785, -0.873280, 0.274128,
		0.303028, -0.155378, -0.940230,
		69.475410, 59.001884, 56.545719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.937180, 58.730240, 57.204987>,  <69.263290, 59.110649, 57.203880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.937180, 58.730240, 57.204987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.895325, 58.944664, 56.869919>,  <69.870216, 59.073318, 56.668877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.895325, 58.944664, 56.869919>,  <69.937180, 58.730240, 57.204987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.895325, 58.944664, 56.869919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935683, 0.338456, 0.099720,
		0.336971, -0.773363, -0.536992,
		-0.104628, 0.536058, -0.837672,
		69.863937, 59.105480, 56.618618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.102745, 58.276005, 57.765495>,  <69.937180, 58.730240, 57.204987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.102745, 58.276005, 57.765495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.841377, 58.051632, 57.968826>,  <69.684555, 57.917007, 58.090824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.841377, 58.051632, 57.968826>,  <70.102745, 58.276005, 57.765495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.841377, 58.051632, 57.968826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692228, -0.170990, 0.701130,
		-0.306366, 0.810012, 0.500020,
		-0.653422, -0.560930, 0.508328,
		69.645348, 57.883354, 58.121326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.939751, 58.620865, 58.473995>,  <70.102745, 58.276005, 57.765495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.939751, 58.620865, 58.473995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.909409, 58.222019, 58.472885>,  <69.891205, 57.982712, 58.472218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.909409, 58.222019, 58.472885>,  <69.939751, 58.620865, 58.473995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.909409, 58.222019, 58.472885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537281, -0.043225, 0.842295,
		-0.839984, 0.062409, 0.539010,
		-0.075865, -0.997114, -0.002777,
		69.886650, 57.922886, 58.472054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.614662, 58.389797, 59.136524>,  <69.939751, 58.620865, 58.473995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.614662, 58.389797, 59.136524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.890900, 58.170334, 58.948036>,  <70.056641, 58.038654, 58.834942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.890900, 58.170334, 58.948036>,  <69.614662, 58.389797, 59.136524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.890900, 58.170334, 58.948036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581590, 0.033981, 0.812772,
		-0.429924, -0.835353, 0.342563,
		0.690592, -0.548662, -0.471224,
		70.098076, 58.005733, 58.806667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.964325, 57.927967, 59.543926>,  <69.614662, 58.389797, 59.136524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.964325, 57.927967, 59.543926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.254478, 57.932732, 59.268631>,  <70.428574, 57.935593, 59.103455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.254478, 57.932732, 59.268631>,  <69.964325, 57.927967, 59.543926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.254478, 57.932732, 59.268631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688225, 0.005907, 0.725473,
		0.012725, -0.999911, -0.003930,
		0.725386, 0.011936, -0.688239,
		70.472092, 57.936306, 59.062160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.525009, 57.332596, 59.537529>,  <69.964325, 57.927967, 59.543926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.525009, 57.332596, 59.537529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.560806, 57.728668, 59.494553>,  <70.582283, 57.966312, 59.468765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.560806, 57.728668, 59.494553>,  <70.525009, 57.332596, 59.537529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.560806, 57.728668, 59.494553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768347, 0.000012, 0.640034,
		0.633748, -0.139825, -0.760797,
		0.089484, 0.990176, -0.107442,
		70.587654, 58.025723, 59.462318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.197479, 57.665760, 59.233246>,  <70.525009, 57.332596, 59.537529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.197479, 57.665760, 59.233246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.034058, 57.874474, 59.532799>,  <70.936005, 57.999702, 59.712532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.034058, 57.874474, 59.532799>,  <71.197479, 57.665760, 59.233246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.034058, 57.874474, 59.532799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767195, -0.248178, 0.591456,
		0.494468, 0.816181, -0.298914,
		-0.408551, 0.521781, 0.748886,
		70.911491, 58.031010, 59.757465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.754059, 58.130768, 59.541466>,  <71.197479, 57.665760, 59.233246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.754059, 58.130768, 59.541466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.452240, 57.978622, 59.755371>,  <71.271149, 57.887333, 59.883713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.452240, 57.978622, 59.755371>,  <71.754059, 58.130768, 59.541466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.452240, 57.978622, 59.755371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654961, -0.487324, 0.577531,
		0.040930, 0.786027, 0.616836,
		-0.754554, -0.380365, 0.534763,
		71.225876, 57.864513, 59.915798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.919525, 58.266678, 60.226017>,  <71.754059, 58.130768, 59.541466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.919525, 58.266678, 60.226017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.675743, 57.950573, 60.200539>,  <71.529472, 57.760910, 60.185253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.675743, 57.950573, 60.200539>,  <71.919525, 58.266678, 60.226017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.675743, 57.950573, 60.200539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606646, -0.516555, 0.604278,
		-0.510438, 0.329638, 0.794224,
		-0.609453, -0.790259, -0.063696,
		71.492905, 57.713493, 60.181431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.614532, 58.192844, 60.433636>,  <71.919525, 58.266678, 60.226017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.614532, 58.192844, 60.433636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.955254, 58.159286, 60.226791>,  <73.159683, 58.139153, 60.102684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.955254, 58.159286, 60.226791>,  <72.614532, 58.192844, 60.433636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.955254, 58.159286, 60.226791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516275, -0.033022, 0.855786,
		-0.088879, -0.995927, 0.015189,
		0.851798, -0.083903, -0.517107,
		73.210793, 58.134117, 60.071659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.895424, 57.661007, 60.571278>,  <72.614532, 58.192844, 60.433636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.895424, 57.661007, 60.571278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.194504, 57.909500, 60.477455>,  <73.373947, 58.058598, 60.421162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.194504, 57.909500, 60.477455>,  <72.895424, 57.661007, 60.571278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.194504, 57.909500, 60.477455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378450, -0.108408, 0.919251,
		0.545643, -0.776089, -0.316163,
		0.747696, 0.621235, -0.234559,
		73.418816, 58.095871, 60.407089>
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
