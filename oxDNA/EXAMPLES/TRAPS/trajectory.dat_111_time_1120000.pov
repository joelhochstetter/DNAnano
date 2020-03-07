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
	<36.569126, 53.311405, 50.059986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.361576, 53.548965, 49.814041>,  <36.237045, 53.691502, 49.666473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.361576, 53.548965, 49.814041>,  <36.569126, 53.311405, 50.059986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.361576, 53.548965, 49.814041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851374, 0.423839, -0.309068,
		0.077045, -0.683842, -0.725551,
		-0.518871, 0.593903, -0.614859,
		36.205914, 53.727135, 49.629581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.876522, 53.100651, 49.412327>,  <36.569126, 53.311405, 50.059986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.876522, 53.100651, 49.412327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.724529, 53.459564, 49.502213>,  <36.633331, 53.674911, 49.556145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.724529, 53.459564, 49.502213>,  <36.876522, 53.100651, 49.412327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.724529, 53.459564, 49.502213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790176, 0.441174, -0.425425,
		-0.480866, 0.015911, -0.876650,
		-0.379986, 0.897280, 0.224718,
		36.610535, 53.728748, 49.569630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.827778, 53.569283, 48.794628>,  <36.876522, 53.100651, 49.412327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.827778, 53.569283, 48.794628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.884762, 53.737835, 49.152878>,  <36.918953, 53.838966, 49.367828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.884762, 53.737835, 49.152878>,  <36.827778, 53.569283, 48.794628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.884762, 53.737835, 49.152878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812052, 0.467602, -0.349170,
		-0.565930, 0.777036, -0.275569,
		0.142461, 0.421382, 0.895624,
		36.927502, 53.864250, 49.421566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.766479, 54.284855, 48.814999>,  <36.827778, 53.569283, 48.794628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.766479, 54.284855, 48.814999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.046856, 54.151489, 49.067192>,  <37.215084, 54.071472, 49.218510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.046856, 54.151489, 49.067192>,  <36.766479, 54.284855, 48.814999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.046856, 54.151489, 49.067192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701285, 0.483209, -0.524126,
		-0.129907, 0.809535, 0.572519,
		0.700944, -0.333411, 0.630487,
		37.257141, 54.051464, 49.256340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.104820, 54.863068, 49.201313>,  <36.766479, 54.284855, 48.814999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.104820, 54.863068, 49.201313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.320065, 54.541496, 49.100014>,  <37.449211, 54.348553, 49.039234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.320065, 54.541496, 49.100014>,  <37.104820, 54.863068, 49.201313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.320065, 54.541496, 49.100014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655757, 0.588077, -0.473444,
		0.529543, 0.088699, 0.843633,
		0.538115, -0.803927, -0.253247,
		37.481499, 54.300320, 49.024040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.738430, 55.083733, 49.124283>,  <37.104820, 54.863068, 49.201313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.738430, 55.083733, 49.124283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.795013, 54.713615, 48.983528>,  <37.828964, 54.491547, 48.899075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.795013, 54.713615, 48.983528>,  <37.738430, 55.083733, 49.124283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.795013, 54.713615, 48.983528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726367, 0.338523, -0.598159,
		0.672593, -0.170982, 0.719989,
		0.141458, -0.925293, -0.351884,
		37.837452, 54.436028, 48.877964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413860, 55.498100, 48.951614>,  <37.738430, 55.083733, 49.124283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.413860, 55.498100, 48.951614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.805264, 55.524826, 49.029648>,  <39.040104, 55.540863, 49.076469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.805264, 55.524826, 49.029648>,  <38.413860, 55.498100, 48.951614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.805264, 55.524826, 49.029648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204851, 0.206433, 0.956777,
		0.023655, -0.976177, 0.215684,
		0.978507, 0.066815, 0.195088,
		39.098816, 55.544872, 49.088173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.802254, 55.061092, 49.324310>,  <38.413860, 55.498100, 48.951614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.802254, 55.061092, 49.324310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.928688, 55.434090, 49.394226>,  <39.004551, 55.657887, 49.436176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.928688, 55.434090, 49.394226>,  <38.802254, 55.061092, 49.324310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.928688, 55.434090, 49.394226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352591, -0.055578, 0.934126,
		0.880776, -0.356897, 0.311220,
		0.316090, 0.932489, 0.174790,
		39.023514, 55.713837, 49.446663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.989819, 55.120365, 50.072124>,  <38.802254, 55.061092, 49.324310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.989819, 55.120365, 50.072124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.866684, 55.467327, 49.915741>,  <38.792801, 55.675503, 49.821911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.866684, 55.467327, 49.915741>,  <38.989819, 55.120365, 50.072124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.866684, 55.467327, 49.915741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592251, 0.146898, 0.792250,
		0.744631, 0.475431, 0.468499,
		-0.307839, 0.867402, -0.390958,
		38.774334, 55.727547, 49.798454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.062283, 55.648258, 50.579906>,  <38.989819, 55.120365, 50.072124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.062283, 55.648258, 50.579906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.774323, 55.745392, 50.319820>,  <38.601547, 55.803673, 50.163769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.774323, 55.745392, 50.319820>,  <39.062283, 55.648258, 50.579906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.774323, 55.745392, 50.319820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643918, 0.116001, 0.756250,
		0.259069, 0.963107, 0.072857,
		-0.719898, 0.242835, -0.650214,
		38.558353, 55.818241, 50.124756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.933296, 54.905529, 50.971401>,  <39.062283, 55.648258, 50.579906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.933296, 54.905529, 50.971401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.840881, 54.886578, 51.360119>,  <38.785431, 54.875206, 51.593349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.840881, 54.886578, 51.360119>,  <38.933296, 54.905529, 50.971401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.840881, 54.886578, 51.360119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958192, 0.162195, 0.235715,
		-0.168786, 0.985621, 0.007920,
		-0.231041, -0.047374, 0.971790,
		38.771568, 54.872364, 51.651657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.524391, 55.078384, 51.264790>,  <38.933296, 54.905529, 50.971401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.524391, 55.078384, 51.264790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.334251, 55.035416, 51.614075>,  <39.220169, 55.009632, 51.823647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.334251, 55.035416, 51.614075>,  <39.524391, 55.078384, 51.264790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.334251, 55.035416, 51.614075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764572, 0.440616, 0.470411,
		-0.435287, 0.891245, -0.127312,
		-0.475347, -0.107424, 0.873216,
		39.191647, 55.003189, 51.876038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.648224, 55.731667, 51.783024>,  <39.524391, 55.078384, 51.264790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.648224, 55.731667, 51.783024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.526878, 55.417206, 51.998405>,  <39.454071, 55.228527, 52.127636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.526878, 55.417206, 51.998405>,  <39.648224, 55.731667, 51.783024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.526878, 55.417206, 51.998405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589690, 0.288987, 0.754157,
		-0.748490, 0.546304, 0.375919,
		-0.303362, -0.786154, 0.538454,
		39.435871, 55.181358, 52.159943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.448990, 55.988476, 52.505692>,  <39.648224, 55.731667, 51.783024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.448990, 55.988476, 52.505692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.568878, 55.608643, 52.468891>,  <39.640812, 55.380745, 52.446812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.568878, 55.608643, 52.468891>,  <39.448990, 55.988476, 52.505692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.568878, 55.608643, 52.468891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694100, 0.150887, 0.703888,
		-0.654517, -0.274825, 0.704329,
		0.299720, -0.949581, -0.091998,
		39.658794, 55.323769, 52.441292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.373810, 55.693245, 53.175922>,  <39.448990, 55.988476, 52.505692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.373810, 55.693245, 53.175922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.658020, 55.453846, 53.027893>,  <39.828545, 55.310207, 52.939075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.658020, 55.453846, 53.027893>,  <39.373810, 55.693245, 53.175922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.658020, 55.453846, 53.027893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674372, 0.428987, 0.600993,
		-0.200939, -0.676586, 0.708417,
		0.710526, -0.598499, -0.370070,
		39.871178, 55.274296, 52.916870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.908810, 55.503174, 53.725403>,  <39.373810, 55.693245, 53.175922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.908810, 55.503174, 53.725403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.106010, 55.453850, 53.380905>,  <40.224331, 55.424255, 53.174206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.106010, 55.453850, 53.380905>,  <39.908810, 55.503174, 53.725403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.106010, 55.453850, 53.380905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763085, 0.536780, 0.359957,
		0.417912, -0.834663, 0.358730,
		0.493002, -0.123311, -0.861246,
		40.253910, 55.416855, 53.122532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.538998, 55.777313, 53.961464>,  <39.908810, 55.503174, 53.725403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.538998, 55.777313, 53.961464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.635666, 55.760651, 53.573677>,  <40.693665, 55.750652, 53.341007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.635666, 55.760651, 53.573677>,  <40.538998, 55.777313, 53.961464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.635666, 55.760651, 53.573677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944760, 0.238071, 0.225281,
		0.221418, -0.970354, 0.096887,
		0.241668, -0.041654, -0.969464,
		40.708168, 55.748154, 53.282837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.935955, 55.122269, 53.639191>,  <40.538998, 55.777313, 53.961464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.935955, 55.122269, 53.639191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.992531, 55.485359, 53.481190>,  <41.026478, 55.703213, 53.386387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.992531, 55.485359, 53.481190>,  <40.935955, 55.122269, 53.639191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.992531, 55.485359, 53.481190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935048, 0.008531, 0.354418,
		0.325084, -0.419479, -0.847560,
		0.141441, 0.907725, -0.395006,
		41.034962, 55.757675, 53.362686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.524242, 54.661289, 53.737453>,  <40.935955, 55.122269, 53.639191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.524242, 54.661289, 53.737453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.225349, 54.454727, 53.904770>,  <41.046013, 54.330791, 54.005161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.225349, 54.454727, 53.904770>,  <41.524242, 54.661289, 53.737453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.225349, 54.454727, 53.904770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380130, 0.184164, 0.906413,
		-0.545110, 0.836308, 0.058687,
		-0.747233, -0.516403, 0.418295,
		41.001179, 54.299805, 54.030258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.728756, 54.666725, 54.361629>,  <41.524242, 54.661289, 53.737453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.728756, 54.666725, 54.361629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.394226, 54.455399, 54.420204>,  <41.193508, 54.328602, 54.455349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.394226, 54.455399, 54.420204>,  <41.728756, 54.666725, 54.361629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.394226, 54.455399, 54.420204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207728, -0.058179, 0.976455,
		-0.507354, 0.847054, 0.158402,
		-0.836326, -0.528313, 0.146440,
		41.143330, 54.296906, 54.464134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.445484, 54.675629, 54.611637>,  <41.728756, 54.666725, 54.361629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.445484, 54.675629, 54.611637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.403820, 54.309044, 54.457108>,  <42.378822, 54.089092, 54.364388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.403820, 54.309044, 54.457108>,  <42.445484, 54.675629, 54.611637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.403820, 54.309044, 54.457108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315327, 0.398830, -0.861106,
		0.943250, 0.032130, -0.330526,
		-0.104156, -0.916462, -0.386328,
		42.372574, 54.034103, 54.341209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.868069, 54.443569, 53.951782>,  <42.445484, 54.675629, 54.611637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.868069, 54.443569, 53.951782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.506870, 54.272614, 53.969372>,  <42.290150, 54.170040, 53.979923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.506870, 54.272614, 53.969372>,  <42.868069, 54.443569, 53.951782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.506870, 54.272614, 53.969372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268382, 0.481188, -0.834523,
		0.335507, -0.765374, -0.549215,
		-0.902999, -0.427388, 0.043971,
		42.235970, 54.144398, 53.982563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.490822, 54.989548, 53.893715>,  <42.868069, 54.443569, 53.951782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.490822, 54.989548, 53.893715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.660950, 54.708202, 53.665897>,  <43.763027, 54.539394, 53.529209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.660950, 54.708202, 53.665897>,  <43.490822, 54.989548, 53.893715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.660950, 54.708202, 53.665897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454282, 0.378365, -0.806516,
		0.782771, 0.601760, -0.158601,
		0.425320, -0.703367, -0.569542,
		43.788548, 54.497192, 53.495033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.903564, 55.231060, 53.366390>,  <43.490822, 54.989548, 53.893715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.903564, 55.231060, 53.366390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.771175, 54.875217, 53.240501>,  <43.691742, 54.661713, 53.164967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.771175, 54.875217, 53.240501>,  <43.903564, 55.231060, 53.366390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.771175, 54.875217, 53.240501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175354, 0.385695, -0.905809,
		0.927206, -0.244606, -0.283651,
		-0.330970, -0.889611, -0.314726,
		43.671883, 54.608334, 53.146084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.110889, 55.195641, 52.668987>,  <43.903564, 55.231060, 53.366390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.110889, 55.195641, 52.668987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.813854, 54.933506, 52.724258>,  <43.635632, 54.776226, 52.757420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.813854, 54.933506, 52.724258>,  <44.110889, 55.195641, 52.668987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.813854, 54.933506, 52.724258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328818, 0.177000, -0.927658,
		0.583472, -0.734305, -0.346925,
		-0.742589, -0.655338, 0.138178,
		43.591076, 54.736904, 52.765713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.773872, 55.277164, 52.042248>,  <44.110889, 55.195641, 52.668987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.773872, 55.277164, 52.042248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.566341, 54.973793, 52.200035>,  <43.441822, 54.791771, 52.294708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.566341, 54.973793, 52.200035>,  <43.773872, 55.277164, 52.042248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.566341, 54.973793, 52.200035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557518, -0.049617, -0.828681,
		0.648069, -0.649862, -0.397097,
		-0.518825, -0.758431, 0.394465,
		43.410694, 54.746265, 52.318375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.100807, 55.384926, 51.548149>,  <43.773872, 55.277164, 52.042248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.100807, 55.384926, 51.548149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.193985, 55.665314, 51.817776>,  <44.249893, 55.833546, 51.979553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.193985, 55.665314, 51.817776>,  <44.100807, 55.384926, 51.548149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.193985, 55.665314, 51.817776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322849, 0.598085, -0.733527,
		-0.917335, 0.388496, -0.086987,
		0.232947, 0.700974, 0.674070,
		44.263870, 55.875607, 52.019997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.766586, 56.052715, 51.333927>,  <44.100807, 55.384926, 51.548149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.766586, 56.052715, 51.333927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.108036, 56.047455, 51.542217>,  <44.312904, 56.044300, 51.667191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.108036, 56.047455, 51.542217>,  <43.766586, 56.052715, 51.333927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.108036, 56.047455, 51.542217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464127, 0.473001, -0.748904,
		-0.236452, 0.880964, 0.409869,
		0.853626, -0.013152, 0.520721,
		44.364124, 56.043510, 51.698433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.010284, 56.807777, 51.345669>,  <43.766586, 56.052715, 51.333927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.010284, 56.807777, 51.345669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.312511, 56.549103, 51.387451>,  <44.493847, 56.393898, 51.412521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.312511, 56.549103, 51.387451>,  <44.010284, 56.807777, 51.345669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.312511, 56.549103, 51.387451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555682, 0.548295, -0.624972,
		0.346892, 0.530250, 0.773628,
		0.755568, -0.646689, 0.104451,
		44.539181, 56.355095, 51.418785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.657299, 57.234486, 51.432724>,  <44.010284, 56.807777, 51.345669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.657299, 57.234486, 51.432724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.728806, 56.878868, 51.264133>,  <44.771709, 56.665497, 51.162979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.728806, 56.878868, 51.264133>,  <44.657299, 57.234486, 51.432724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.728806, 56.878868, 51.264133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600550, 0.437915, -0.669006,
		0.779348, -0.133524, 0.612200,
		0.178763, -0.889045, -0.421476,
		44.782436, 56.612156, 51.137691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.290211, 56.865093, 51.309246>,  <44.657299, 57.234486, 51.432724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.290211, 56.865093, 51.309246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.551186, 56.688896, 51.555920>,  <45.707771, 56.583179, 51.703922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.551186, 56.688896, 51.555920>,  <45.290211, 56.865093, 51.309246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.551186, 56.688896, 51.555920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706742, 0.647406, -0.285275,
		-0.273582, 0.621958, 0.733704,
		0.652433, -0.440493, 0.616682,
		45.746914, 56.556747, 51.740925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.605392, 57.266346, 51.831432>,  <45.290211, 56.865093, 51.309246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.605392, 57.266346, 51.831432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.880669, 56.984848, 51.760849>,  <46.045834, 56.815948, 51.718498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.880669, 56.984848, 51.760849>,  <45.605392, 57.266346, 51.831432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.880669, 56.984848, 51.760849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678908, 0.710413, -0.185465,
		0.255874, 0.007840, 0.966678,
		0.688195, -0.703741, -0.176454,
		46.087128, 56.773727, 51.707912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.252060, 57.360447, 52.312038>,  <45.605392, 57.266346, 51.831432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.252060, 57.360447, 52.312038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.309418, 57.175869, 51.961838>,  <46.343834, 57.065121, 51.751717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.309418, 57.175869, 51.961838>,  <46.252060, 57.360447, 52.312038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.309418, 57.175869, 51.961838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690838, 0.680119, -0.245318,
		0.708647, -0.569652, 0.416312,
		0.143396, -0.461448, -0.875502,
		46.352436, 57.037434, 51.699188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.873028, 56.940865, 52.294617>,  <46.252060, 57.360447, 52.312038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.873028, 56.940865, 52.294617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.763096, 57.080620, 51.936310>,  <46.697136, 57.164474, 51.721325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.763096, 57.080620, 51.936310>,  <46.873028, 56.940865, 52.294617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.763096, 57.080620, 51.936310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838429, 0.543117, -0.045394,
		0.470646, -0.763512, -0.442201,
		-0.274826, 0.349389, -0.895767,
		46.680649, 57.185436, 51.667580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.448826, 56.867531, 51.850128>,  <46.873028, 56.940865, 52.294617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.448826, 56.867531, 51.850128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.221333, 57.182228, 51.754143>,  <47.084839, 57.371048, 51.696552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.221333, 57.182228, 51.754143>,  <47.448826, 56.867531, 51.850128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.221333, 57.182228, 51.754143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809968, 0.586465, 0.003096,
		0.143166, -0.192602, -0.970777,
		-0.568731, 0.786742, -0.239964,
		47.050713, 57.418251, 51.682152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.078224, 56.648289, 51.689987>,  <47.448826, 56.867531, 51.850128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.078224, 56.648289, 51.689987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.376629, 56.382568, 51.671326>,  <48.555672, 56.223137, 51.660130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.376629, 56.382568, 51.671326>,  <48.078224, 56.648289, 51.689987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.376629, 56.382568, 51.671326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591756, 0.693410, -0.411104,
		0.305447, 0.279079, 0.910393,
		0.746007, -0.664302, -0.046654,
		48.600430, 56.183277, 51.657330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.592861, 57.089264, 51.500816>,  <48.078224, 56.648289, 51.689987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.592861, 57.089264, 51.500816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.731949, 56.718735, 51.442822>,  <48.815399, 56.496418, 51.408024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.731949, 56.718735, 51.442822>,  <48.592861, 57.089264, 51.500816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.731949, 56.718735, 51.442822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539769, 0.324209, -0.776878,
		0.766644, 0.191877, 0.612732,
		0.347718, -0.926322, -0.144983,
		48.836266, 56.440838, 51.399326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.368893, 57.050636, 51.339588>,  <48.592861, 57.089264, 51.500816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.368893, 57.050636, 51.339588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.208138, 56.750420, 51.129761>,  <49.111683, 56.570290, 51.003864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.208138, 56.750420, 51.129761>,  <49.368893, 57.050636, 51.339588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.208138, 56.750420, 51.129761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474982, 0.318904, -0.820178,
		0.782865, -0.578781, 0.228330,
		-0.401888, -0.750542, -0.524570,
		49.087570, 56.525257, 50.972389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.908188, 56.613316, 51.057323>,  <49.368893, 57.050636, 51.339588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.908188, 56.613316, 51.057323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.629696, 56.563438, 50.774559>,  <49.462601, 56.533512, 50.604900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.629696, 56.563438, 50.774559>,  <49.908188, 56.613316, 51.057323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.629696, 56.563438, 50.774559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678209, 0.208364, -0.704711,
		0.235168, -0.970070, -0.060499,
		-0.696225, -0.124695, -0.706911,
		49.420830, 56.526031, 50.562485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.357895, 57.066334, 51.569931>,  <49.908188, 56.613316, 51.057323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.357895, 57.066334, 51.569931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.314629, 56.702080, 51.729454>,  <50.288670, 56.483528, 51.825169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.314629, 56.702080, 51.729454>,  <50.357895, 57.066334, 51.569931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.314629, 56.702080, 51.729454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863473, 0.112739, 0.491634,
		-0.492660, 0.397536, 0.774114,
		-0.108169, -0.910635, 0.398804,
		50.282177, 56.428890, 51.849094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.337879, 57.114841, 52.338673>,  <50.357895, 57.066334, 51.569931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.337879, 57.114841, 52.338673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.519936, 56.798553, 52.174915>,  <50.629169, 56.608780, 52.076660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.519936, 56.798553, 52.174915>,  <50.337879, 57.114841, 52.338673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.519936, 56.798553, 52.174915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835478, 0.220231, 0.503464,
		-0.307939, -0.571186, 0.760868,
		0.455138, -0.790724, -0.409395,
		50.656479, 56.561337, 52.052097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.983063, 57.009869, 52.457531>,  <50.337879, 57.114841, 52.338673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.983063, 57.009869, 52.457531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.072388, 56.650902, 52.305332>,  <51.125980, 56.435520, 52.214012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.072388, 56.650902, 52.305332>,  <50.983063, 57.009869, 52.457531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.072388, 56.650902, 52.305332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948052, 0.109234, 0.298773,
		-0.226561, -0.427448, 0.875190,
		0.223311, -0.897416, -0.380495,
		51.139381, 56.381676, 52.191185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.252106, 56.674183, 53.013531>,  <50.983063, 57.009869, 52.457531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.252106, 56.674183, 53.013531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.400799, 56.507484, 52.681713>,  <51.490013, 56.407467, 52.482624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.400799, 56.507484, 52.681713>,  <51.252106, 56.674183, 53.013531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.400799, 56.507484, 52.681713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926699, 0.219680, 0.304909,
		0.055164, -0.882079, 0.467860,
		0.371733, -0.416745, -0.829541,
		51.512318, 56.382462, 52.432850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.548965, 56.022732, 53.120342>,  <51.252106, 56.674183, 53.013531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.548965, 56.022732, 53.120342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.759659, 56.212151, 52.837978>,  <51.886074, 56.325802, 52.668560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.759659, 56.212151, 52.837978>,  <51.548965, 56.022732, 53.120342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.759659, 56.212151, 52.837978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832255, -0.118353, 0.541612,
		0.172934, -0.872779, -0.456454,
		0.526730, 0.473550, -0.705908,
		51.917679, 56.354214, 52.626205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.260365, 55.620991, 52.992683>,  <51.548965, 56.022732, 53.120342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.260365, 55.620991, 52.992683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.260818, 56.009510, 52.897545>,  <52.261093, 56.242622, 52.840462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.260818, 56.009510, 52.897545>,  <52.260365, 55.620991, 52.992683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.260818, 56.009510, 52.897545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692951, 0.170716, 0.700482,
		0.720984, -0.165612, -0.672871,
		0.001138, 0.971303, -0.237844,
		52.261162, 56.300900, 52.826191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.889977, 55.768032, 52.708942>,  <52.260365, 55.620991, 52.992683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.889977, 55.768032, 52.708942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.685425, 56.042904, 52.915352>,  <52.562695, 56.207825, 53.039200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.685425, 56.042904, 52.915352>,  <52.889977, 55.768032, 52.708942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.685425, 56.042904, 52.915352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825516, 0.225963, 0.517169,
		0.238784, 0.690455, -0.682828,
		-0.511376, 0.687177, 0.516026,
		52.532013, 56.249058, 53.070160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.224388, 56.402504, 52.704689>,  <52.889977, 55.768032, 52.708942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.224388, 56.402504, 52.704689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.029507, 56.387650, 53.053688>,  <52.912579, 56.378738, 53.263088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.029507, 56.387650, 53.053688>,  <53.224388, 56.402504, 52.704689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.029507, 56.387650, 53.053688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853962, 0.188774, 0.484884,
		-0.182711, 0.981318, -0.060261,
		-0.487201, -0.037133, 0.872500,
		52.883347, 56.376511, 53.315437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.395138, 57.064709, 53.149757>,  <53.224388, 56.402504, 52.704689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.395138, 57.064709, 53.149757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.284054, 56.734718, 53.346649>,  <53.217403, 56.536724, 53.464787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.284054, 56.734718, 53.346649>,  <53.395138, 57.064709, 53.149757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.284054, 56.734718, 53.346649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901459, -0.046689, 0.430339,
		-0.332037, 0.563236, 0.756648,
		-0.277709, -0.824976, 0.492232,
		53.200741, 56.487225, 53.494320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.964111, 56.881809, 53.479565>,  <53.395138, 57.064709, 53.149757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.964111, 56.881809, 53.479565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.778015, 56.606922, 53.702736>,  <53.666359, 56.441990, 53.836639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.778015, 56.606922, 53.702736>,  <53.964111, 56.881809, 53.479565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.778015, 56.606922, 53.702736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877036, -0.272549, 0.395631,
		-0.119821, 0.673388, 0.729515,
		-0.465242, -0.687216, 0.557928,
		53.638443, 56.400757, 53.870113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.000599, 57.141369, 54.157112>,  <53.964111, 56.881809, 53.479565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.000599, 57.141369, 54.157112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.019493, 56.749630, 54.078476>,  <54.030830, 56.514587, 54.031296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.019493, 56.749630, 54.078476>,  <54.000599, 57.141369, 54.157112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.019493, 56.749630, 54.078476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987307, 0.015901, 0.158024,
		-0.151635, -0.201560, 0.967668,
		0.047238, -0.979347, -0.196590,
		54.033665, 56.455826, 54.019497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.376236, 57.755680, 54.046829>,  <54.000599, 57.141369, 54.157112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.376236, 57.755680, 54.046829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.687553, 57.635437, 53.826324>,  <54.874344, 57.563290, 53.694023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.687553, 57.635437, 53.826324>,  <54.376236, 57.755680, 54.046829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.687553, 57.635437, 53.826324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399244, 0.914541, 0.064955,
		0.484626, -0.270642, 0.831800,
		0.778294, -0.300612, -0.551262,
		54.921043, 57.545254, 53.660946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.036434, 57.661797, 54.516247>,  <54.376236, 57.755680, 54.046829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.036434, 57.661797, 54.516247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.124771, 57.788158, 54.147156>,  <55.177773, 57.863976, 53.925701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.124771, 57.788158, 54.147156>,  <55.036434, 57.661797, 54.516247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.124771, 57.788158, 54.147156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134418, 0.927205, 0.349603,
		0.966001, -0.201240, 0.162307,
		0.220846, 0.315900, -0.922732,
		55.191025, 57.882927, 53.870335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.274899, 58.433430, 54.742397>,  <55.036434, 57.661797, 54.516247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.274899, 58.433430, 54.742397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.443687, 58.232765, 54.440331>,  <55.544960, 58.112366, 54.259090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.443687, 58.232765, 54.440331>,  <55.274899, 58.433430, 54.742397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.443687, 58.232765, 54.440331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866300, 0.468722, 0.172696,
		0.267326, -0.727072, 0.632379,
		0.421972, -0.501664, -0.755164,
		55.570278, 58.082268, 54.213779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.009197, 58.052216, 54.821072>,  <55.274899, 58.433430, 54.742397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.009197, 58.052216, 54.821072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.994400, 58.126869, 54.428379>,  <55.985519, 58.171661, 54.192764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.994400, 58.126869, 54.428379>,  <56.009197, 58.052216, 54.821072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.994400, 58.126869, 54.428379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978430, 0.206566, 0.002398,
		0.203240, -0.960468, -0.190247,
		-0.036995, 0.186630, -0.981733,
		55.983303, 58.182858, 54.133858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.694275, 58.147625, 54.466370>,  <56.009197, 58.052216, 54.821072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.694275, 58.147625, 54.466370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.592384, 58.327393, 54.808865>,  <56.531250, 58.435253, 55.014362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.592384, 58.327393, 54.808865>,  <56.694275, 58.147625, 54.466370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.592384, 58.327393, 54.808865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808886, -0.584247, 0.066016,
		0.529921, -0.675780, 0.512353,
		-0.254728, 0.449418, 0.856234,
		56.515965, 58.462219, 55.065735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.201069, 57.978970, 55.017090>,  <56.694275, 58.147625, 54.466370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.201069, 57.978970, 55.017090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.451920, 58.257378, 54.877224>,  <57.602432, 58.424423, 54.793304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.451920, 58.257378, 54.877224>,  <57.201069, 57.978970, 55.017090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.451920, 58.257378, 54.877224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766744, -0.630680, 0.119774,
		-0.137162, -0.343217, -0.929187,
		0.627129, 0.696020, -0.349665,
		57.640057, 58.466183, 54.772324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.652863, 57.653599, 54.489349>,  <57.201069, 57.978970, 55.017090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.652863, 57.653599, 54.489349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.829651, 57.965389, 54.666924>,  <57.935722, 58.152462, 54.773468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.829651, 57.965389, 54.666924>,  <57.652863, 57.653599, 54.489349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.829651, 57.965389, 54.666924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743299, -0.595280, 0.305202,
		0.502163, 0.195085, -0.842481,
		0.441972, 0.779476, 0.443934,
		57.962242, 58.199234, 54.800102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.424534, 57.668682, 54.348423>,  <57.652863, 57.653599, 54.489349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.424534, 57.668682, 54.348423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.363533, 57.860382, 54.694153>,  <58.326931, 57.975403, 54.901592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.363533, 57.860382, 54.694153>,  <58.424534, 57.668682, 54.348423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.363533, 57.860382, 54.694153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763077, -0.498674, 0.411142,
		0.628058, 0.722248, -0.289657,
		-0.152502, 0.479252, 0.864327,
		58.317783, 58.004158, 54.953449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.073273, 57.744007, 54.707905>,  <58.424534, 57.668682, 54.348423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.073273, 57.744007, 54.707905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.796974, 57.775925, 54.995377>,  <58.631195, 57.795074, 55.167862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.796974, 57.775925, 54.995377>,  <59.073273, 57.744007, 54.707905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.796974, 57.775925, 54.995377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517585, -0.639494, 0.568466,
		0.504952, 0.764644, 0.400428,
		-0.690746, 0.079792, 0.718682,
		58.589752, 57.799862, 55.210979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.479507, 57.875095, 55.349777>,  <59.073273, 57.744007, 54.707905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.479507, 57.875095, 55.349777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.117180, 57.718842, 55.415375>,  <58.899784, 57.625088, 55.454731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.117180, 57.718842, 55.415375>,  <59.479507, 57.875095, 55.349777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.117180, 57.718842, 55.415375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350459, -0.473395, 0.808131,
		-0.238054, 0.789493, 0.565713,
		-0.905819, -0.390638, 0.163992,
		58.845432, 57.601650, 55.464573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.265305, 57.944233, 56.046165>,  <59.479507, 57.875095, 55.349777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.265305, 57.944233, 56.046165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.016747, 57.658691, 55.917000>,  <58.867611, 57.487366, 55.839500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.016747, 57.658691, 55.917000>,  <59.265305, 57.944233, 56.046165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.016747, 57.658691, 55.917000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290520, -0.592700, 0.751203,
		-0.727646, 0.372979, 0.575690,
		-0.621394, -0.713859, -0.322918,
		58.830330, 57.444534, 55.820126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.544899, 57.860500, 56.747276>,  <59.265305, 57.944233, 56.046165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.544899, 57.860500, 56.747276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.896378, 57.678917, 56.688202>,  <60.107265, 57.569969, 56.652760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.896378, 57.678917, 56.688202>,  <59.544899, 57.860500, 56.747276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.896378, 57.678917, 56.688202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302902, 0.769311, -0.562505,
		0.368966, 0.449540, 0.813498,
		0.878701, -0.453955, -0.147683,
		60.159988, 57.542732, 56.643898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.952755, 58.350803, 56.893372>,  <59.544899, 57.860500, 56.747276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.952755, 58.350803, 56.893372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.145828, 58.082840, 56.667717>,  <60.261673, 57.922062, 56.532326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.145828, 58.082840, 56.667717>,  <59.952755, 58.350803, 56.893372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.145828, 58.082840, 56.667717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525677, 0.736809, -0.425178,
		0.700489, -0.091328, 0.707796,
		0.482679, -0.669904, -0.564136,
		60.290630, 57.881870, 56.498478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.680157, 58.440544, 56.935516>,  <59.952755, 58.350803, 56.893372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.680157, 58.440544, 56.935516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.530556, 58.335381, 56.579765>,  <60.440796, 58.272282, 56.366314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.530556, 58.335381, 56.579765>,  <60.680157, 58.440544, 56.935516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.530556, 58.335381, 56.579765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346721, 0.849804, -0.397012,
		0.860178, -0.456851, -0.226673,
		-0.374003, -0.262909, -0.889382,
		60.418354, 58.256508, 56.312950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.844559, 58.187164, 57.696404>,  <60.680157, 58.440544, 56.935516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.844559, 58.187164, 57.696404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.648674, 57.966919, 57.966812>,  <60.531143, 57.834770, 58.129055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.648674, 57.966919, 57.966812>,  <60.844559, 58.187164, 57.696404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.648674, 57.966919, 57.966812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575228, -0.378625, -0.725090,
		0.655205, -0.743951, -0.131314,
		-0.489713, -0.550618, 0.676018,
		60.501759, 57.801735, 58.169617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.574421, 58.675335, 58.189045>,  <60.844559, 58.187164, 57.696404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.574421, 58.675335, 58.189045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.371231, 59.017281, 58.231331>,  <60.249317, 59.222446, 58.256702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.371231, 59.017281, 58.231331>,  <60.574421, 58.675335, 58.189045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.371231, 59.017281, 58.231331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858581, 0.512373, -0.017698,
		-0.069295, 0.081776, -0.994239,
		-0.507974, 0.854861, 0.105716,
		60.218838, 59.273739, 58.263046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.606895, 59.166172, 57.626175>,  <60.574421, 58.675335, 58.189045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.606895, 59.166172, 57.626175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.519630, 59.385784, 57.948906>,  <60.467274, 59.517551, 58.142544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.519630, 59.385784, 57.948906>,  <60.606895, 59.166172, 57.626175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.519630, 59.385784, 57.948906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741497, 0.630765, -0.228730,
		-0.634498, 0.548359, -0.544715,
		-0.218161, 0.549033, 0.806826,
		60.454182, 59.550495, 58.190952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.416397, 59.852390, 57.541031>,  <60.606895, 59.166172, 57.626175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.416397, 59.852390, 57.541031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.363785, 60.051697, 57.883827>,  <60.332218, 60.171280, 58.089504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.363785, 60.051697, 57.883827>,  <60.416397, 59.852390, 57.541031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.363785, 60.051697, 57.883827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539814, -0.689082, 0.483495,
		0.831445, 0.526207, -0.178339,
		-0.131529, 0.498270, 0.856988,
		60.324326, 60.201180, 58.140923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.038227, 60.116428, 57.880127>,  <60.416397, 59.852390, 57.541031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.038227, 60.116428, 57.880127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.774918, 60.004501, 58.159660>,  <60.616932, 59.937344, 58.327381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.774918, 60.004501, 58.159660>,  <61.038227, 60.116428, 57.880127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.774918, 60.004501, 58.159660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638237, -0.699710, 0.321029,
		0.399154, 0.657350, 0.639192,
		-0.658277, -0.279816, 0.698838,
		60.577435, 59.920555, 58.369312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.303448, 60.194973, 58.516117>,  <61.038227, 60.116428, 57.880127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.303448, 60.194973, 58.516117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.045441, 59.889313, 58.518410>,  <60.890636, 59.705917, 58.519787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.045441, 59.889313, 58.518410>,  <61.303448, 60.194973, 58.516117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.045441, 59.889313, 58.518410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757667, -0.638530, 0.134982,
		-0.099484, 0.091411, 0.990831,
		-0.645015, -0.764149, 0.005735,
		60.851936, 59.660069, 58.520130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.312889, 59.810417, 59.136204>,  <61.303448, 60.194973, 58.516117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.312889, 59.810417, 59.136204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.196342, 59.575684, 58.834015>,  <61.126415, 59.434845, 58.652702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.196342, 59.575684, 58.834015>,  <61.312889, 59.810417, 59.136204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.196342, 59.575684, 58.834015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673716, -0.686535, 0.273451,
		-0.679127, -0.429299, 0.595390,
		-0.291364, -0.586832, -0.755470,
		61.108932, 59.399635, 58.607372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.978352, 60.095768, 58.942944>,  <61.312889, 59.810417, 59.136204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.978352, 60.095768, 58.942944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.781609, 59.753891, 58.876518>,  <61.663563, 59.548767, 58.836662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.781609, 59.753891, 58.876518>,  <61.978352, 60.095768, 58.942944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.781609, 59.753891, 58.876518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760717, 0.514636, -0.395549,
		0.423534, -0.068228, -0.903307,
		-0.491862, -0.854690, -0.166063,
		61.634048, 59.497482, 58.826698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.775459, 60.137596, 59.183079>,  <61.978352, 60.095768, 58.942944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.775459, 60.137596, 59.183079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.681313, 60.128445, 59.571732>,  <62.624825, 60.122955, 59.804924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.681313, 60.128445, 59.571732>,  <62.775459, 60.137596, 59.183079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.681313, 60.128445, 59.571732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948272, 0.213721, 0.234742,
		-0.213030, 0.976627, -0.028608,
		-0.235369, -0.022878, 0.971637,
		62.610703, 60.121582, 59.863224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.237556, 60.403946, 59.504795>,  <62.775459, 60.137596, 59.183079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.237556, 60.403946, 59.504795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.079681, 60.201328, 59.811424>,  <62.984955, 60.079758, 59.995403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.079681, 60.201328, 59.811424>,  <63.237556, 60.403946, 59.504795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.079681, 60.201328, 59.811424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897783, -0.035118, 0.439037,
		-0.195471, 0.861498, 0.468627,
		-0.394687, -0.506544, 0.766574,
		62.961277, 60.049366, 60.041397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.749138, 59.957954, 59.882664>,  <63.237556, 60.403946, 59.504795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.749138, 59.957954, 59.882664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.998825, 59.651901, 59.945816>,  <64.148636, 59.468269, 59.983707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.998825, 59.651901, 59.945816>,  <63.749138, 59.957954, 59.882664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.998825, 59.651901, 59.945816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530751, 0.563608, 0.632968,
		-0.573288, -0.311313, 0.757908,
		0.624215, -0.765134, 0.157880,
		64.186089, 59.422359, 59.993179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.691692, 59.792648, 60.569408>,  <63.749138, 59.957954, 59.882664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.691692, 59.792648, 60.569408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.056259, 59.724426, 60.419624>,  <64.275002, 59.683491, 60.329754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.056259, 59.724426, 60.419624>,  <63.691692, 59.792648, 60.569408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.056259, 59.724426, 60.419624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397535, 0.599860, 0.694359,
		0.106195, -0.781715, 0.614528,
		0.911421, -0.170560, -0.374461,
		64.329689, 59.673260, 60.307285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.228722, 59.624023, 61.124680>,  <63.691692, 59.792648, 60.569408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.228722, 59.624023, 61.124680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.345894, 59.823433, 60.798325>,  <64.416199, 59.943081, 60.602512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.345894, 59.823433, 60.798325>,  <64.228722, 59.624023, 61.124680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.345894, 59.823433, 60.798325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469144, 0.668593, 0.576963,
		0.833127, -0.551772, -0.038036,
		0.292922, 0.498528, -0.815884,
		64.433769, 59.972992, 60.553558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.995636, 59.744987, 61.253979>,  <64.228722, 59.624023, 61.124680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.995636, 59.744987, 61.253979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.851532, 60.005028, 60.986374>,  <64.765068, 60.161053, 60.825809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.851532, 60.005028, 60.986374>,  <64.995636, 59.744987, 61.253979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.851532, 60.005028, 60.986374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719148, 0.650342, 0.244708,
		0.594174, -0.392962, -0.701811,
		-0.360256, 0.650105, -0.669014,
		64.743454, 60.200058, 60.785671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.479744, 60.057461, 61.081589>,  <64.995636, 59.744987, 61.253979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.479744, 60.057461, 61.081589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.236794, 60.335186, 60.927170>,  <65.091026, 60.501820, 60.834518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.236794, 60.335186, 60.927170>,  <65.479744, 60.057461, 61.081589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.236794, 60.335186, 60.927170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704821, 0.695160, 0.141352,
		0.366509, -0.186243, -0.911583,
		-0.607370, 0.694310, -0.386051,
		65.054581, 60.543480, 60.811356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.937241, 60.524670, 60.669659>,  <65.479744, 60.057461, 61.081589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.937241, 60.524670, 60.669659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.609962, 60.694878, 60.824318>,  <65.413597, 60.797005, 60.917114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.609962, 60.694878, 60.824318>,  <65.937241, 60.524670, 60.669659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.609962, 60.694878, 60.824318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536632, 0.806582, 0.247895,
		-0.206378, 0.410313, -0.888286,
		-0.818190, 0.425522, 0.386647,
		65.364502, 60.822533, 60.940311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.284828, 60.911037, 60.255146>,  <65.937241, 60.524670, 60.669659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.284828, 60.911037, 60.255146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.098015, 61.254642, 60.171265>,  <65.985924, 61.460804, 60.120934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.098015, 61.254642, 60.171265>,  <66.284828, 60.911037, 60.255146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.098015, 61.254642, 60.171265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368244, 0.404568, 0.837091,
		0.803910, 0.313731, -0.505274,
		-0.467039, 0.859010, -0.209707,
		65.957901, 61.512344, 60.108353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.011200, 61.170151, 60.301052>,  <66.284828, 60.911037, 60.255146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.011200, 61.170151, 60.301052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.836990, 61.079605, 60.649551>,  <66.732460, 61.025280, 60.858650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.836990, 61.079605, 60.649551>,  <67.011200, 61.170151, 60.301052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.836990, 61.079605, 60.649551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120929, 0.944380, 0.305814,
		-0.892013, 0.238551, -0.383935,
		-0.435533, -0.226361, 0.871247,
		66.706329, 61.011696, 60.910927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.276505, 60.485161, 60.198242>,  <67.011200, 61.170151, 60.301052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.276505, 60.485161, 60.198242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.167862, 60.221107, 60.478371>,  <67.102676, 60.062675, 60.646450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.167862, 60.221107, 60.478371>,  <67.276505, 60.485161, 60.198242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.167862, 60.221107, 60.478371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961718, -0.213753, 0.171489,
		0.036491, 0.720092, 0.692919,
		-0.271601, -0.660134, 0.700325,
		67.086380, 60.023067, 60.688469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.744133, 60.580917, 60.742168>,  <67.276505, 60.485161, 60.198242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.744133, 60.580917, 60.742168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.593468, 60.210663, 60.727654>,  <67.503067, 59.988510, 60.718945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.593468, 60.210663, 60.727654>,  <67.744133, 60.580917, 60.742168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.593468, 60.210663, 60.727654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909286, -0.376934, 0.176408,
		-0.176967, 0.033455, 0.983648,
		-0.376672, -0.925636, -0.036285,
		67.480469, 59.932972, 60.716766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.008972, 60.184357, 61.346806>,  <67.744133, 60.580917, 60.742168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.008972, 60.184357, 61.346806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.916916, 59.915596, 61.065216>,  <67.861687, 59.754341, 60.896263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.916916, 59.915596, 61.065216>,  <68.008972, 60.184357, 61.346806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.916916, 59.915596, 61.065216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906265, -0.411542, 0.096525,
		-0.354572, -0.615776, 0.703632,
		-0.230136, -0.671903, -0.703978,
		67.847878, 59.714024, 60.854023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.960556, 59.555614, 61.715988>,  <68.008972, 60.184357, 61.346806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.960556, 59.555614, 61.715988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.043785, 59.537132, 61.325180>,  <68.093719, 59.526043, 61.090694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.043785, 59.537132, 61.325180>,  <67.960556, 59.555614, 61.715988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.043785, 59.537132, 61.325180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881880, -0.423200, 0.207824,
		-0.423056, -0.904863, -0.047411,
		0.208116, -0.046110, -0.977017,
		68.106209, 59.523273, 61.032074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.354347, 58.976547, 61.632748>,  <67.960556, 59.555614, 61.715988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.354347, 58.976547, 61.632748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.402237, 59.178848, 61.291016>,  <68.430969, 59.300228, 61.085976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.402237, 59.178848, 61.291016>,  <68.354347, 58.976547, 61.632748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.402237, 59.178848, 61.291016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852322, -0.493651, -0.172792,
		-0.509132, -0.707479, -0.490161,
		0.119722, 0.505749, -0.854333,
		68.438156, 59.330574, 61.034718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.498314, 58.591602, 60.975918>,  <68.354347, 58.976547, 61.632748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.498314, 58.591602, 60.975918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.680893, 58.947483, 60.972328>,  <68.790443, 59.161011, 60.970173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.680893, 58.947483, 60.972328>,  <68.498314, 58.591602, 60.975918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.680893, 58.947483, 60.972328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877687, -0.451899, -0.159542,
		-0.146001, 0.064947, -0.987150,
		0.456454, 0.889702, -0.008974,
		68.817825, 59.214394, 60.969635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.154564, 58.425678, 60.794144>,  <68.498314, 58.591602, 60.975918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.154564, 58.425678, 60.794144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.191147, 58.820007, 60.850418>,  <69.213097, 59.056606, 60.884182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.191147, 58.820007, 60.850418>,  <69.154564, 58.425678, 60.794144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.191147, 58.820007, 60.850418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995048, -0.084942, -0.051612,
		-0.038931, 0.144705, -0.988709,
		0.091451, 0.985822, 0.140682,
		69.218582, 59.115753, 60.892624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.492126, 58.638710, 60.233269>,  <69.154564, 58.425678, 60.794144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.492126, 58.638710, 60.233269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.587662, 58.899673, 60.520966>,  <69.644981, 59.056252, 60.693584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.587662, 58.899673, 60.520966>,  <69.492126, 58.638710, 60.233269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.587662, 58.899673, 60.520966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962523, -0.061057, -0.264239,
		-0.128477, 0.755401, -0.642544,
		0.238838, 0.652412, 0.719247,
		69.659309, 59.095398, 60.736740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.911461, 59.142868, 59.885448>,  <69.492126, 58.638710, 60.233269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.911461, 59.142868, 59.885448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.973885, 59.072762, 60.274277>,  <70.011337, 59.030697, 60.507576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.973885, 59.072762, 60.274277>,  <69.911461, 59.142868, 59.885448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.973885, 59.072762, 60.274277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978353, -0.107975, -0.176539,
		0.135901, 0.978582, 0.154622,
		0.156063, -0.175267, 0.972073,
		70.020706, 59.020180, 60.565899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.470573, 59.560349, 60.197998>,  <69.911461, 59.142868, 59.885448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.470573, 59.560349, 60.197998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.447578, 59.236038, 60.431007>,  <70.433784, 59.041451, 60.570812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.447578, 59.236038, 60.431007>,  <70.470573, 59.560349, 60.197998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.447578, 59.236038, 60.431007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995773, -0.004696, 0.091730,
		-0.071638, 0.585333, 0.807622,
		-0.057485, -0.810779, 0.582523,
		70.430336, 58.992805, 60.605762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.897697, 59.540180, 60.848000>,  <70.470573, 59.560349, 60.197998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.897697, 59.540180, 60.848000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.828979, 59.160664, 60.741951>,  <70.787750, 58.932953, 60.678322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.828979, 59.160664, 60.741951>,  <70.897697, 59.540180, 60.848000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.828979, 59.160664, 60.741951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985101, -0.163237, -0.054137,
		0.008087, -0.270473, 0.962694,
		-0.171789, -0.948788, -0.265123,
		70.777443, 58.876026, 60.662415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.389671, 59.190639, 61.243759>,  <70.897697, 59.540180, 60.848000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.389671, 59.190639, 61.243759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.276779, 58.981956, 60.921722>,  <71.209045, 58.856747, 60.728500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.276779, 58.981956, 60.921722>,  <71.389671, 59.190639, 61.243759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.276779, 58.981956, 60.921722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956577, -0.216743, -0.194893,
		-0.072820, -0.825135, 0.560223,
		-0.282238, -0.521704, -0.805088,
		71.192108, 58.825447, 60.680195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.445053, 58.478458, 61.345589>,  <71.389671, 59.190639, 61.243759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.445053, 58.478458, 61.345589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.489159, 58.606987, 60.969376>,  <71.515617, 58.684105, 60.743649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.489159, 58.606987, 60.969376>,  <71.445053, 58.478458, 61.345589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.489159, 58.606987, 60.969376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957659, -0.287562, 0.014022,
		-0.265955, -0.902253, -0.339421,
		0.110256, 0.321321, -0.940530,
		71.522232, 58.703384, 60.687218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.493637, 57.897907, 60.991673>,  <71.445053, 58.478458, 61.345589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.493637, 57.897907, 60.991673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.704697, 58.200657, 60.837410>,  <71.831329, 58.382305, 60.744854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.704697, 58.200657, 60.837410>,  <71.493637, 57.897907, 60.991673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.704697, 58.200657, 60.837410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819058, -0.573687, -0.005272,
		-0.225235, -0.313092, -0.922628,
		0.527649, 0.756873, -0.385655,
		71.862991, 58.427719, 60.721714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.751839, 57.734367, 60.262020>,  <71.493637, 57.897907, 60.991673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.751839, 57.734367, 60.262020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.976738, 57.984680, 60.478271>,  <72.111679, 58.134869, 60.608021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.976738, 57.984680, 60.478271>,  <71.751839, 57.734367, 60.262020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.976738, 57.984680, 60.478271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770189, -0.634313, -0.066754,
		0.301153, 0.453917, -0.838610,
		0.562241, 0.625785, 0.540627,
		72.145409, 58.172417, 60.640461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.332809, 57.873749, 59.813927>,  <71.751839, 57.734367, 60.262020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.332809, 57.873749, 59.813927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.387352, 57.891171, 60.209808>,  <72.420074, 57.901623, 60.447338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.387352, 57.891171, 60.209808>,  <72.332809, 57.873749, 59.813927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.387352, 57.891171, 60.209808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655272, -0.753229, -0.057136,
		0.742984, 0.656315, -0.131245,
		0.136357, 0.043550, 0.989702,
		72.428261, 57.904236, 60.506718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.068352, 57.928730, 59.984016>,  <72.332809, 57.873749, 59.813927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.068352, 57.928730, 59.984016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.887840, 57.758984, 60.298027>,  <72.779533, 57.657135, 60.486431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.887840, 57.758984, 60.298027>,  <73.068352, 57.928730, 59.984016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.887840, 57.758984, 60.298027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554490, -0.822607, -0.125930,
		0.699205, 0.378457, 0.606533,
		-0.451279, -0.424367, 0.785022,
		72.752457, 57.631672, 60.533535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.491264, 57.545959, 60.309746>,  <73.068352, 57.928730, 59.984016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.491264, 57.545959, 60.309746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.147514, 57.385506, 60.436584>,  <72.941261, 57.289234, 60.512688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.147514, 57.385506, 60.436584>,  <73.491264, 57.545959, 60.309746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.147514, 57.385506, 60.436584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434798, -0.899624, 0.040337,
		0.269090, 0.172539, 0.947534,
		-0.859384, -0.401132, 0.317099,
		72.889702, 57.265167, 60.531715>
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
