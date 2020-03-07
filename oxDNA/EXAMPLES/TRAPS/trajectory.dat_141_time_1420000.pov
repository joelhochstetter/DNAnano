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
	<36.646248, 52.188240, 49.634789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.498806, 52.476089, 49.870171>,  <36.410343, 52.648800, 50.011398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.498806, 52.476089, 49.870171>,  <36.646248, 52.188240, 49.634789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.498806, 52.476089, 49.870171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929438, 0.273944, 0.247183,
		0.016675, 0.638042, -0.769821,
		-0.368601, 0.719623, 0.588452,
		36.388226, 52.691975, 50.046707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.821865, 52.900703, 49.438637>,  <36.646248, 52.188240, 49.634789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.821865, 52.900703, 49.438637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.757149, 52.879345, 49.832787>,  <36.718319, 52.866531, 50.069279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.757149, 52.879345, 49.832787>,  <36.821865, 52.900703, 49.438637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.757149, 52.879345, 49.832787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915224, 0.365296, 0.170071,
		-0.369036, 0.929359, -0.010235,
		-0.161795, -0.053395, 0.985379,
		36.708611, 52.863327, 50.128399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.584053, 53.362152, 50.139477>,  <36.821865, 52.900703, 49.438637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.584053, 53.362152, 50.139477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.750607, 53.706730, 50.023178>,  <36.850536, 53.913479, 49.953400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.750607, 53.706730, 50.023178>,  <36.584053, 53.362152, 50.139477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.750607, 53.706730, 50.023178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677751, -0.080932, 0.730824,
		0.606036, -0.501354, -0.617547,
		0.416381, 0.861449, -0.290746,
		36.875523, 53.965164, 49.935955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382492, 53.342030, 49.997307>,  <36.584053, 53.362152, 50.139477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.382492, 53.342030, 49.997307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.281796, 53.713039, 50.107819>,  <37.221378, 53.935646, 50.174126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.281796, 53.713039, 50.107819>,  <37.382492, 53.342030, 49.997307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.281796, 53.713039, 50.107819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558120, -0.094083, 0.824409,
		0.790652, 0.361729, -0.493985,
		-0.251737, 0.927524, 0.276275,
		37.206276, 53.991295, 50.190701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.728905, 53.262627, 49.309032>,  <37.382492, 53.342030, 49.997307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.728905, 53.262627, 49.309032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.750935, 53.580524, 49.067257>,  <37.764153, 53.771263, 48.922192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.750935, 53.580524, 49.067257>,  <37.728905, 53.262627, 49.309032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.750935, 53.580524, 49.067257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879378, 0.248117, 0.406364,
		0.472928, -0.553908, -0.685219,
		0.055073, 0.794748, -0.604436,
		37.767456, 53.818947, 48.885925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.877022, 53.947624, 49.538620>,  <37.728905, 53.262627, 49.309032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.877022, 53.947624, 49.538620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.149132, 53.683807, 49.666515>,  <38.312397, 53.525517, 49.743252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.149132, 53.683807, 49.666515>,  <37.877022, 53.947624, 49.538620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.149132, 53.683807, 49.666515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345718, 0.673390, 0.653471,
		-0.646300, -0.334000, 0.686105,
		0.680275, -0.659538, 0.319743,
		38.353214, 53.485947, 49.762440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.898972, 54.018948, 50.320866>,  <37.877022, 53.947624, 49.538620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.898972, 54.018948, 50.320866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.230515, 53.832283, 50.197433>,  <38.429440, 53.720284, 50.123375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.230515, 53.832283, 50.197433>,  <37.898972, 54.018948, 50.320866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.230515, 53.832283, 50.197433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522952, 0.450278, 0.723720,
		-0.198785, -0.761235, 0.617258,
		0.828858, -0.466661, -0.308581,
		38.479172, 53.692284, 50.104858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.153309, 53.551178, 50.805733>,  <37.898972, 54.018948, 50.320866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.153309, 53.551178, 50.805733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.484650, 53.674046, 50.618340>,  <38.683453, 53.747765, 50.505901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.484650, 53.674046, 50.618340>,  <38.153309, 53.551178, 50.805733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.484650, 53.674046, 50.618340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442357, 0.154471, 0.883436,
		0.343732, -0.939034, -0.007922,
		0.828353, 0.307169, -0.468485,
		38.733154, 53.766197, 50.477795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.474461, 53.808758, 51.292877>,  <38.153309, 53.551178, 50.805733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.474461, 53.808758, 51.292877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.774544, 53.876205, 51.037140>,  <38.954594, 53.916676, 50.883698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.774544, 53.876205, 51.037140>,  <38.474461, 53.808758, 51.292877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.774544, 53.876205, 51.037140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613983, 0.181189, 0.768242,
		0.245383, -0.968885, 0.032399,
		0.750208, 0.168621, -0.639340,
		38.999607, 53.926792, 50.845337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.029335, 53.345783, 51.456516>,  <38.474461, 53.808758, 51.292877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.029335, 53.345783, 51.456516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.169708, 53.678822, 51.285103>,  <39.253933, 53.878643, 51.182255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.169708, 53.678822, 51.285103>,  <39.029335, 53.345783, 51.456516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.169708, 53.678822, 51.285103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597882, 0.152986, 0.786849,
		0.720684, -0.532339, -0.444105,
		0.350929, 0.832592, -0.428531,
		39.274986, 53.928600, 51.156544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.719799, 53.309414, 51.415321>,  <39.029335, 53.345783, 51.456516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.719799, 53.309414, 51.415321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.642918, 53.701916, 51.420975>,  <39.596786, 53.937416, 51.424366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.642918, 53.701916, 51.420975>,  <39.719799, 53.309414, 51.415321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.642918, 53.701916, 51.420975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790027, 0.146172, 0.595392,
		0.582164, 0.125606, -0.803311,
		-0.192207, 0.981253, 0.014136,
		39.585255, 53.996292, 51.425217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.316467, 53.561657, 51.323643>,  <39.719799, 53.309414, 51.415321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.316467, 53.561657, 51.323643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.091991, 53.838184, 51.505692>,  <39.957306, 54.004101, 51.614922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.091991, 53.838184, 51.505692>,  <40.316467, 53.561657, 51.323643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.091991, 53.838184, 51.505692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758088, 0.208610, 0.617887,
		0.332216, 0.691776, -0.641154,
		-0.561190, 0.691323, 0.455124,
		39.923634, 54.045582, 51.642227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.646660, 54.158947, 51.382233>,  <40.316467, 53.561657, 51.323643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.646660, 54.158947, 51.382233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.399239, 54.128540, 51.695053>,  <40.250786, 54.110294, 51.882748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.399239, 54.128540, 51.695053>,  <40.646660, 54.158947, 51.382233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.399239, 54.128540, 51.695053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741222, 0.273815, 0.612874,
		-0.260726, 0.958774, -0.113025,
		-0.618556, -0.076016, 0.782055,
		40.213673, 54.105736, 51.929668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.721195, 54.766171, 51.798519>,  <40.646660, 54.158947, 51.382233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.721195, 54.766171, 51.798519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.618767, 54.471035, 52.048325>,  <40.557308, 54.293953, 52.198208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.618767, 54.471035, 52.048325>,  <40.721195, 54.766171, 51.798519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.618767, 54.471035, 52.048325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741846, 0.264206, 0.616328,
		-0.619752, 0.621119, 0.479707,
		-0.256072, -0.737839, 0.624516,
		40.541946, 54.249683, 52.235680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.558563, 54.898037, 52.546089>,  <40.721195, 54.766171, 51.798519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.558563, 54.898037, 52.546089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.716854, 54.532013, 52.514954>,  <40.811829, 54.312397, 52.496273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.716854, 54.532013, 52.514954>,  <40.558563, 54.898037, 52.546089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.716854, 54.532013, 52.514954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802486, 0.303340, 0.513810,
		-0.446557, -0.265793, 0.854366,
		0.395730, -0.915062, -0.077837,
		40.835575, 54.257496, 52.491604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.801434, 54.768661, 53.245667>,  <40.558563, 54.898037, 52.546089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.801434, 54.768661, 53.245667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.023621, 54.644840, 52.936958>,  <41.156933, 54.570549, 52.751732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.023621, 54.644840, 52.936958>,  <40.801434, 54.768661, 53.245667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.023621, 54.644840, 52.936958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821556, 0.347672, 0.451851,
		0.128454, -0.885044, 0.447433,
		0.555468, -0.309550, -0.771774,
		41.190262, 54.551975, 52.705425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.463829, 54.325405, 53.495785>,  <40.801434, 54.768661, 53.245667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.463829, 54.325405, 53.495785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.520321, 54.547081, 53.167656>,  <41.554214, 54.680088, 52.970779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.520321, 54.547081, 53.167656>,  <41.463829, 54.325405, 53.495785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.520321, 54.547081, 53.167656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754258, 0.476468, 0.451745,
		0.641209, -0.682535, -0.350710,
		0.141229, 0.554189, -0.820322,
		41.562691, 54.713337, 52.921558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.180779, 54.284981, 53.181946>,  <41.463829, 54.325405, 53.495785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.180779, 54.284981, 53.181946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.005699, 54.641098, 53.131660>,  <41.900650, 54.854767, 53.101490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.005699, 54.641098, 53.131660>,  <42.180779, 54.284981, 53.181946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.005699, 54.641098, 53.131660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672837, 0.417074, 0.611015,
		0.596413, 0.182854, -0.781573,
		-0.437700, 0.890289, -0.125717,
		41.874390, 54.908184, 53.093945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.634636, 54.745007, 53.050026>,  <42.180779, 54.284981, 53.181946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.634636, 54.745007, 53.050026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.384296, 54.990978, 53.241936>,  <42.234093, 55.138561, 53.357082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.384296, 54.990978, 53.241936>,  <42.634636, 54.745007, 53.050026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.384296, 54.990978, 53.241936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777053, 0.544537, 0.315702,
		-0.067119, 0.570388, -0.818629,
		-0.625846, 0.614928, 0.479771,
		42.196541, 55.175457, 53.385868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.685368, 55.461205, 52.813499>,  <42.634636, 54.745007, 53.050026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.685368, 55.461205, 52.813499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.598473, 55.388878, 53.197189>,  <42.546337, 55.345482, 53.427402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.598473, 55.388878, 53.197189>,  <42.685368, 55.461205, 52.813499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.598473, 55.388878, 53.197189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877451, 0.394362, 0.273054,
		-0.427654, 0.900991, 0.072986,
		-0.217237, -0.180814, 0.959226,
		42.533302, 55.334633, 53.484959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.197117, 55.750935, 53.119797>,  <42.685368, 55.461205, 52.813499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.197117, 55.750935, 53.119797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.996468, 55.645699, 53.449440>,  <42.876080, 55.582558, 53.647228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.996468, 55.645699, 53.449440>,  <43.197117, 55.750935, 53.119797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.996468, 55.645699, 53.449440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684510, 0.461803, 0.564078,
		-0.528980, 0.847067, -0.051563,
		-0.501624, -0.263090, 0.824110,
		42.845982, 55.566772, 53.696674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.991257, 56.377094, 53.505081>,  <43.197117, 55.750935, 53.119797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.991257, 56.377094, 53.505081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.063820, 56.063248, 53.742218>,  <43.107357, 55.874939, 53.884499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.063820, 56.063248, 53.742218>,  <42.991257, 56.377094, 53.505081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.063820, 56.063248, 53.742218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630396, 0.555473, 0.542265,
		-0.754780, 0.275356, 0.595388,
		0.181406, -0.784620, 0.592843,
		43.118240, 55.827862, 53.920071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.591297, 56.534286, 53.183228>,  <42.991257, 56.377094, 53.505081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.591297, 56.534286, 53.183228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.686733, 56.747540, 52.858551>,  <43.743996, 56.875492, 52.663746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.686733, 56.747540, 52.858551>,  <43.591297, 56.534286, 53.183228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.686733, 56.747540, 52.858551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838393, 0.308722, 0.449208,
		0.490074, -0.787695, -0.373314,
		0.238588, 0.533129, -0.811695,
		43.758308, 56.907478, 52.615044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.272491, 56.326347, 52.918537>,  <43.591297, 56.534286, 53.183228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.272491, 56.326347, 52.918537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.189445, 56.714981, 52.873081>,  <44.139618, 56.948162, 52.845806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.189445, 56.714981, 52.873081>,  <44.272491, 56.326347, 52.918537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.189445, 56.714981, 52.873081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935550, 0.231153, 0.267045,
		0.285726, -0.050875, -0.956960,
		-0.207619, 0.971586, -0.113643,
		44.127159, 57.006458, 52.838989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.677177, 56.729321, 52.360035>,  <44.272491, 56.326347, 52.918537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.677177, 56.729321, 52.360035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.607872, 56.939316, 52.693352>,  <44.566288, 57.065311, 52.893341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.607872, 56.939316, 52.693352>,  <44.677177, 56.729321, 52.360035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.607872, 56.939316, 52.693352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960497, 0.277157, 0.025098,
		-0.217776, 0.804719, -0.552269,
		-0.173262, 0.524987, 0.833288,
		44.555893, 57.096813, 52.943336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.200726, 57.237465, 52.307465>,  <44.677177, 56.729321, 52.360035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.200726, 57.237465, 52.307465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.064308, 57.239708, 52.683475>,  <44.982456, 57.241055, 52.909084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.064308, 57.239708, 52.683475>,  <45.200726, 57.237465, 52.307465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.064308, 57.239708, 52.683475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927212, 0.166691, 0.335398,
		-0.154815, 0.985993, -0.062046,
		-0.341042, 0.005605, 0.940031,
		44.961994, 57.241390, 52.965485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.252247, 57.854069, 52.492645>,  <45.200726, 57.237465, 52.307465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.252247, 57.854069, 52.492645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.300240, 57.618721, 52.812500>,  <45.329037, 57.477512, 53.004414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.300240, 57.618721, 52.812500>,  <45.252247, 57.854069, 52.492645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.300240, 57.618721, 52.812500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992171, 0.042936, -0.117277,
		0.034669, 0.807450, 0.588917,
		0.119981, -0.588372, 0.799639,
		45.336235, 57.442211, 53.052391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.812744, 58.053593, 52.691883>,  <45.252247, 57.854069, 52.492645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.812744, 58.053593, 52.691883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.839367, 57.745117, 52.945129>,  <45.855339, 57.560032, 53.097076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.839367, 57.745117, 52.945129>,  <45.812744, 58.053593, 52.691883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.839367, 57.745117, 52.945129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997562, 0.038066, -0.058495,
		0.021010, 0.635466, 0.771843,
		0.066553, -0.771190, 0.633117,
		45.859333, 57.513760, 53.135063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.399635, 58.148327, 53.087780>,  <45.812744, 58.053593, 52.691883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.399635, 58.148327, 53.087780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.338520, 57.753860, 53.113487>,  <46.301849, 57.517181, 53.128910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.338520, 57.753860, 53.113487>,  <46.399635, 58.148327, 53.087780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.338520, 57.753860, 53.113487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987914, -0.150695, 0.036291,
		-0.026104, 0.069034, 0.997273,
		-0.152789, -0.986167, 0.064266,
		46.292683, 57.458012, 53.132767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.772400, 57.896233, 53.655640>,  <46.399635, 58.148327, 53.087780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.772400, 57.896233, 53.655640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.725452, 57.586758, 53.406601>,  <46.697285, 57.401073, 53.257179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.725452, 57.586758, 53.406601>,  <46.772400, 57.896233, 53.655640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.725452, 57.586758, 53.406601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966273, -0.233674, 0.108222,
		-0.229215, -0.588895, 0.775025,
		-0.117371, -0.773692, -0.622595,
		46.690243, 57.354649, 53.219822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.145721, 57.239056, 53.983799>,  <46.772400, 57.896233, 53.655640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.145721, 57.239056, 53.983799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.161682, 57.242188, 53.584129>,  <47.171261, 57.244068, 53.344326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.161682, 57.242188, 53.584129>,  <47.145721, 57.239056, 53.983799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.161682, 57.242188, 53.584129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949425, -0.311985, 0.035474,
		-0.311449, -0.950055, -0.019875,
		0.039902, 0.007822, -0.999173,
		47.173653, 57.244537, 53.284378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.565559, 56.593567, 53.845966>,  <47.145721, 57.239056, 53.983799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.565559, 56.593567, 53.845966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.584866, 56.853703, 53.542725>,  <47.596451, 57.009785, 53.360779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.584866, 56.853703, 53.542725>,  <47.565559, 56.593567, 53.845966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.584866, 56.853703, 53.542725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897105, -0.361946, -0.253374,
		-0.439173, -0.667872, -0.600894,
		0.048270, 0.650340, -0.758108,
		47.599346, 57.048805, 53.315292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.563705, 56.248772, 53.160343>,  <47.565559, 56.593567, 53.845966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.563705, 56.248772, 53.160343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.773720, 56.589203, 53.159630>,  <47.899727, 56.793461, 53.159203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.773720, 56.589203, 53.159630>,  <47.563705, 56.248772, 53.160343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.773720, 56.589203, 53.159630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822454, -0.507909, -0.256123,
		-0.218888, 0.133003, -0.966643,
		0.525032, 0.851081, -0.001786,
		47.931229, 56.844528, 53.159096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.800598, 56.429031, 52.496014>,  <47.563705, 56.248772, 53.160343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.800598, 56.429031, 52.496014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.031353, 56.542854, 52.802277>,  <48.169807, 56.611149, 52.986034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.031353, 56.542854, 52.802277>,  <47.800598, 56.429031, 52.496014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.031353, 56.542854, 52.802277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742427, -0.573512, -0.346246,
		0.340585, 0.768188, -0.542115,
		0.576891, 0.284554, 0.765653,
		48.204422, 56.628220, 53.031971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.447697, 56.798206, 52.214405>,  <47.800598, 56.429031, 52.496014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.447697, 56.798206, 52.214405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.509300, 56.646553, 52.579380>,  <48.546261, 56.555561, 52.798363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.509300, 56.646553, 52.579380>,  <48.447697, 56.798206, 52.214405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.509300, 56.646553, 52.579380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785087, -0.513743, -0.345987,
		0.599933, 0.769626, 0.218534,
		0.154010, -0.379137, 0.912434,
		48.555504, 56.532810, 52.853111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.154629, 56.904869, 52.488289>,  <48.447697, 56.798206, 52.214405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.154629, 56.904869, 52.488289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.971893, 56.572838, 52.616211>,  <48.862251, 56.373619, 52.692963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.971893, 56.572838, 52.616211>,  <49.154629, 56.904869, 52.488289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.971893, 56.572838, 52.616211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739271, -0.554230, -0.382500,
		0.494750, 0.061683, 0.866844,
		-0.456837, -0.830075, 0.319806,
		48.834843, 56.323814, 52.712154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.522491, 56.410057, 52.996807>,  <49.154629, 56.904869, 52.488289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.522491, 56.410057, 52.996807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.288502, 56.200279, 52.749336>,  <49.148106, 56.074413, 52.600853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.288502, 56.200279, 52.749336>,  <49.522491, 56.410057, 52.996807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.288502, 56.200279, 52.749336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810427, -0.407827, -0.420577,
		-0.031745, -0.747421, 0.663592,
		-0.584979, -0.524441, -0.618677,
		49.113007, 56.042946, 52.563732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.715202, 55.723877, 53.076542>,  <49.522491, 56.410057, 52.996807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.715202, 55.723877, 53.076542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.581036, 55.809643, 52.709602>,  <49.500538, 55.861103, 52.489441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.581036, 55.809643, 52.709602>,  <49.715202, 55.723877, 53.076542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.581036, 55.809643, 52.709602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898130, -0.221143, -0.380076,
		-0.284359, -0.951379, -0.118398,
		-0.335414, 0.214415, -0.917346,
		49.480412, 55.873966, 52.434399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.906963, 55.208920, 52.564148>,  <49.715202, 55.723877, 53.076542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.906963, 55.208920, 52.564148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.838848, 55.523308, 52.326408>,  <49.797981, 55.711941, 52.183765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.838848, 55.523308, 52.326408>,  <49.906963, 55.208920, 52.564148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.838848, 55.523308, 52.326408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879728, -0.150475, -0.451038,
		-0.443938, -0.599671, -0.665818,
		-0.170285, 0.785972, -0.594349,
		49.787762, 55.759098, 52.148102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.836029, 55.006664, 51.875793>,  <49.906963, 55.208920, 52.564148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.836029, 55.006664, 51.875793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.976509, 55.380276, 51.901836>,  <50.060799, 55.604443, 51.917461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.976509, 55.380276, 51.901836>,  <49.836029, 55.006664, 51.875793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.976509, 55.380276, 51.901836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864906, -0.297004, -0.404631,
		-0.358602, 0.198421, -0.912159,
		0.351202, 0.934033, 0.065109,
		50.081871, 55.660484, 51.921368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.119602, 55.055027, 51.309059>,  <49.836029, 55.006664, 51.875793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.119602, 55.055027, 51.309059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.322548, 55.322350, 51.526661>,  <50.444317, 55.482742, 51.657223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.322548, 55.322350, 51.526661>,  <50.119602, 55.055027, 51.309059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.322548, 55.322350, 51.526661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858423, -0.447239, -0.251174,
		0.075439, 0.594424, -0.800605,
		0.507366, 0.668309, 0.544007,
		50.474758, 55.522842, 51.689861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.754189, 55.200790, 50.968800>,  <50.119602, 55.055027, 51.309059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.754189, 55.200790, 50.968800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.809479, 55.253845, 51.361393>,  <50.842651, 55.285679, 51.596947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.809479, 55.253845, 51.361393>,  <50.754189, 55.200790, 50.968800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.809479, 55.253845, 51.361393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865558, -0.497821, -0.054626,
		0.481355, 0.857077, -0.183617,
		0.138227, 0.132636, 0.981479,
		50.850948, 55.293636, 51.655838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.344833, 55.592159, 51.223885>,  <50.754189, 55.200790, 50.968800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.344833, 55.592159, 51.223885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.265739, 55.309589, 51.495728>,  <51.218285, 55.140045, 51.658833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.265739, 55.309589, 51.495728>,  <51.344833, 55.592159, 51.223885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.265739, 55.309589, 51.495728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948317, -0.313387, -0.049842,
		0.248189, 0.634623, 0.731885,
		-0.197732, -0.706429, 0.679603,
		51.206421, 55.097660, 51.699608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.686047, 55.751144, 51.819633>,  <51.344833, 55.592159, 51.223885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.686047, 55.751144, 51.819633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.664173, 55.358803, 51.744873>,  <51.651051, 55.123398, 51.700016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.664173, 55.358803, 51.744873>,  <51.686047, 55.751144, 51.819633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.664173, 55.358803, 51.744873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995927, -0.067016, 0.060318,
		-0.071689, -0.182841, 0.980525,
		-0.054683, -0.980856, -0.186901,
		51.647770, 55.064545, 51.688801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.097584, 55.258495, 52.308399>,  <51.686047, 55.751144, 51.819633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.097584, 55.258495, 52.308399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.059200, 55.154289, 51.924122>,  <52.036171, 55.091766, 51.693558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.059200, 55.154289, 51.924122>,  <52.097584, 55.258495, 52.308399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.059200, 55.154289, 51.924122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972371, 0.181809, -0.146430,
		0.212808, -0.948198, 0.235867,
		-0.095962, -0.260512, -0.960690,
		52.030411, 55.076138, 51.635914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.692493, 54.957222, 52.000393>,  <52.097584, 55.258495, 52.308399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.692493, 54.957222, 52.000393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.628937, 54.562313, 52.003342>,  <52.590805, 54.325367, 52.005112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.628937, 54.562313, 52.003342>,  <52.692493, 54.957222, 52.000393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.628937, 54.562313, 52.003342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974940, -0.155717, 0.158888,
		-0.155717, 0.032436, 0.987269,
		-0.158888, -0.987269, 0.007376,
		52.581272, 54.266132, 52.005554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.318604, 54.639687, 52.008526>,  <52.692493, 54.957222, 52.000393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.318604, 54.639687, 52.008526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.135872, 54.300720, 52.116745>,  <53.026234, 54.097340, 52.181675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.135872, 54.300720, 52.116745>,  <53.318604, 54.639687, 52.008526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.135872, 54.300720, 52.116745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888089, -0.417016, 0.193378,
		-0.051048, 0.328612, 0.943084,
		-0.456828, -0.847415, 0.270549,
		52.998825, 54.046497, 52.197910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.794144, 55.170368, 52.222305>,  <53.318604, 54.639687, 52.008526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.794144, 55.170368, 52.222305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.581547, 55.405254, 52.466499>,  <53.453987, 55.546185, 52.613014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.581547, 55.405254, 52.466499>,  <53.794144, 55.170368, 52.222305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.581547, 55.405254, 52.466499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344659, -0.808271, 0.477398,
		0.773772, 0.043325, 0.631980,
		-0.531494, 0.587215, 0.610485,
		53.422100, 55.581417, 52.649643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.033161, 55.070065, 52.870071>,  <53.794144, 55.170368, 52.222305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.033161, 55.070065, 52.870071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.643520, 55.151825, 52.831402>,  <53.409737, 55.200882, 52.808201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.643520, 55.151825, 52.831402>,  <54.033161, 55.070065, 52.870071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.643520, 55.151825, 52.831402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222813, -0.940505, 0.256525,
		-0.038492, 0.271423, 0.961690,
		-0.974101, 0.204403, -0.096678,
		53.351292, 55.213146, 52.802399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.277706, 55.801071, 52.748108>,  <54.033161, 55.070065, 52.870071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.277706, 55.801071, 52.748108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.516579, 55.958698, 52.468658>,  <54.659904, 56.053276, 52.300987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.516579, 55.958698, 52.468658>,  <54.277706, 55.801071, 52.748108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.516579, 55.958698, 52.468658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801072, -0.248863, 0.544381,
		0.040660, -0.884747, -0.464294,
		0.597186, 0.394068, -0.698627,
		54.695736, 56.076920, 52.259071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.802044, 55.289165, 52.649803>,  <54.277706, 55.801071, 52.748108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.802044, 55.289165, 52.649803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.975853, 55.635204, 52.549568>,  <55.080139, 55.842827, 52.489426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.975853, 55.635204, 52.549568>,  <54.802044, 55.289165, 52.649803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.975853, 55.635204, 52.549568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790087, -0.232553, 0.567170,
		0.432385, -0.444431, -0.784554,
		0.434518, 0.865101, -0.250587,
		55.106209, 55.894733, 52.474392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.459980, 55.023174, 52.426548>,  <54.802044, 55.289165, 52.649803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.459980, 55.023174, 52.426548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.427406, 55.400299, 52.555836>,  <55.407860, 55.626575, 52.633408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.427406, 55.400299, 52.555836>,  <55.459980, 55.023174, 52.426548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.427406, 55.400299, 52.555836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556566, -0.226006, 0.799472,
		0.826802, 0.245002, -0.506332,
		-0.081439, 0.942812, 0.323222,
		55.402973, 55.683144, 52.652802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.054077, 55.169697, 52.824581>,  <55.459980, 55.023174, 52.426548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.054077, 55.169697, 52.824581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.805580, 55.448338, 52.968140>,  <55.656483, 55.615520, 53.054276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.805580, 55.448338, 52.968140>,  <56.054077, 55.169697, 52.824581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.805580, 55.448338, 52.968140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520060, 0.023912, 0.853795,
		0.586172, 0.717061, -0.377129,
		-0.621241, 0.696601, 0.358898,
		55.619209, 55.657318, 53.075809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.230766, 55.949440, 52.809502>,  <56.054077, 55.169697, 52.824581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.230766, 55.949440, 52.809502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.017998, 55.816856, 53.121193>,  <55.890335, 55.737309, 53.308208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.017998, 55.816856, 53.121193>,  <56.230766, 55.949440, 52.809502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.017998, 55.816856, 53.121193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772974, 0.185714, 0.606648,
		-0.345791, 0.925012, 0.157422,
		-0.531921, -0.331456, 0.779229,
		55.858421, 55.717419, 53.354961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.116898, 56.397461, 53.537518>,  <56.230766, 55.949440, 52.809502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.116898, 56.397461, 53.537518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.169159, 56.003044, 53.578789>,  <56.200516, 55.766392, 53.603550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.169159, 56.003044, 53.578789>,  <56.116898, 56.397461, 53.537518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.169159, 56.003044, 53.578789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928743, 0.158143, 0.335302,
		-0.346939, 0.052014, 0.936444,
		0.130652, -0.986045, 0.103173,
		56.208355, 55.707230, 53.609741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.578373, 56.206791, 54.187878>,  <56.116898, 56.397461, 53.537518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.578373, 56.206791, 54.187878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.613220, 55.902382, 53.930740>,  <56.634129, 55.719734, 53.776459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.613220, 55.902382, 53.930740>,  <56.578373, 56.206791, 54.187878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.613220, 55.902382, 53.930740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991284, 0.130242, -0.019843,
		0.098826, -0.635511, 0.765741,
		0.087121, -0.761027, -0.642843,
		56.639355, 55.674072, 53.737888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.111019, 55.754433, 54.374916>,  <56.578373, 56.206791, 54.187878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.111019, 55.754433, 54.374916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.059692, 55.811768, 53.982388>,  <57.028896, 55.846169, 53.746872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.059692, 55.811768, 53.982388>,  <57.111019, 55.754433, 54.374916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.059692, 55.811768, 53.982388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958455, 0.272102, -0.085579,
		0.254753, -0.951533, -0.172295,
		-0.128313, 0.143336, -0.981321,
		57.021198, 55.854767, 53.687992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.700016, 55.487995, 53.996826>,  <57.111019, 55.754433, 54.374916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.700016, 55.487995, 53.996826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.594566, 55.757732, 53.720924>,  <57.531296, 55.919575, 53.555382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.594566, 55.757732, 53.720924>,  <57.700016, 55.487995, 53.996826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.594566, 55.757732, 53.720924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960376, 0.250523, -0.122135,
		0.090438, -0.694621, -0.713668,
		-0.263627, 0.674344, -0.689754,
		57.515480, 55.960037, 53.513996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.211273, 55.423374, 53.410572>,  <57.700016, 55.487995, 53.996826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.211273, 55.423374, 53.410572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.024979, 55.775837, 53.377930>,  <57.913200, 55.987312, 53.358345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.024979, 55.775837, 53.377930>,  <58.211273, 55.423374, 53.410572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.024979, 55.775837, 53.377930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868909, 0.437893, -0.230754,
		-0.167594, -0.178380, -0.969584,
		-0.465736, 0.881153, -0.081607,
		57.885258, 56.040184, 53.353447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.252266, 55.684044, 52.658131>,  <58.211273, 55.423374, 53.410572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.252266, 55.684044, 52.658131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.271400, 55.935246, 52.968826>,  <58.282883, 56.085968, 53.155243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.271400, 55.935246, 52.968826>,  <58.252266, 55.684044, 52.658131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.271400, 55.935246, 52.968826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927967, 0.259780, -0.267191,
		-0.369578, 0.733570, -0.570340,
		0.047841, 0.628004, 0.776738,
		58.285751, 56.123646, 53.201847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.736244, 55.072636, 52.686462>,  <58.252266, 55.684044, 52.658131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.736244, 55.072636, 52.686462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.896492, 55.425762, 52.784554>,  <58.992641, 55.637638, 52.843410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.896492, 55.425762, 52.784554>,  <58.736244, 55.072636, 52.686462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.896492, 55.425762, 52.784554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614140, 0.060103, 0.786905,
		0.679956, -0.465851, 0.566253,
		0.400615, 0.882819, 0.245230,
		59.016678, 55.690609, 52.858124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.121147, 55.094391, 53.356113>,  <58.736244, 55.072636, 52.686462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.121147, 55.094391, 53.356113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.896713, 55.409325, 53.253899>,  <58.762054, 55.598286, 53.192570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.896713, 55.409325, 53.253899>,  <59.121147, 55.094391, 53.356113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.896713, 55.409325, 53.253899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608003, -0.182510, 0.772672,
		0.561710, 0.588899, 0.581102,
		-0.561083, 0.787330, -0.255535,
		58.728390, 55.645523, 53.177238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.724037, 54.752621, 53.744350>,  <59.121147, 55.094391, 53.356113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.724037, 54.752621, 53.744350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.094978, 54.702160, 53.603439>,  <59.317543, 54.671883, 53.518894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.094978, 54.702160, 53.603439>,  <58.724037, 54.752621, 53.744350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.094978, 54.702160, 53.603439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275742, -0.406013, 0.871275,
		-0.252939, -0.905119, -0.341734,
		0.927356, -0.126149, -0.352276,
		59.373184, 54.664314, 53.497757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.977745, 54.107323, 53.993481>,  <58.724037, 54.752621, 53.744350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.977745, 54.107323, 53.993481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.291847, 54.345909, 53.927017>,  <59.480309, 54.489059, 53.887138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.291847, 54.345909, 53.927017>,  <58.977745, 54.107323, 53.993481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.291847, 54.345909, 53.927017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386978, -0.263290, 0.883700,
		0.483350, -0.758226, -0.437568,
		0.785252, 0.596466, -0.166155,
		59.527424, 54.524849, 53.877171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.576561, 53.696220, 54.026413>,  <58.977745, 54.107323, 53.993481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.576561, 53.696220, 54.026413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.668747, 54.075176, 54.115265>,  <59.724060, 54.302551, 54.168575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.668747, 54.075176, 54.115265>,  <59.576561, 53.696220, 54.026413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.668747, 54.075176, 54.115265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499737, -0.311104, 0.808379,
		0.834953, -0.075300, -0.545144,
		0.230468, 0.947388, 0.222127,
		59.737888, 54.359394, 54.181904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.300247, 53.795387, 54.142986>,  <59.576561, 53.696220, 54.026413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.300247, 53.795387, 54.142986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.150703, 54.068329, 54.394264>,  <60.060978, 54.232094, 54.545029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.150703, 54.068329, 54.394264>,  <60.300247, 53.795387, 54.142986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.150703, 54.068329, 54.394264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673886, -0.265527, 0.689473,
		0.637266, 0.681095, -0.360559,
		-0.373858, 0.682353, 0.628191,
		60.038548, 54.273033, 54.582722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.809864, 54.183205, 54.406414>,  <60.300247, 53.795387, 54.142986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.809864, 54.183205, 54.406414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.521393, 54.196293, 54.683205>,  <60.348312, 54.204147, 54.849281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.521393, 54.196293, 54.683205>,  <60.809864, 54.183205, 54.406414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.521393, 54.196293, 54.683205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675106, -0.190836, 0.712610,
		0.155371, 0.981077, 0.115536,
		-0.721174, 0.032720, 0.691981,
		60.305042, 54.206108, 54.890800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.107506, 54.662945, 54.832535>,  <60.809864, 54.183205, 54.406414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.107506, 54.662945, 54.832535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.888710, 54.388474, 55.024353>,  <60.757431, 54.223789, 55.139442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.888710, 54.388474, 55.024353>,  <61.107506, 54.662945, 54.832535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.888710, 54.388474, 55.024353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734379, -0.118336, 0.668345,
		-0.401856, 0.717745, 0.568643,
		-0.546992, -0.686177, 0.479542,
		60.724613, 54.182621, 55.168217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.990387, 54.961727, 55.556080>,  <61.107506, 54.662945, 54.832535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.990387, 54.961727, 55.556080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.966019, 54.563580, 55.526314>,  <60.951397, 54.324692, 55.508453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.966019, 54.563580, 55.526314>,  <60.990387, 54.961727, 55.556080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.966019, 54.563580, 55.526314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602513, -0.096108, 0.792301,
		-0.795780, 0.003432, 0.605575,
		-0.060920, -0.995365, -0.074413,
		60.947742, 54.264969, 55.503990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.022579, 54.627426, 56.155502>,  <60.990387, 54.961727, 55.556080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.022579, 54.627426, 56.155502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.123238, 54.296375, 55.954819>,  <61.183632, 54.097744, 55.834408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.123238, 54.296375, 55.954819>,  <61.022579, 54.627426, 56.155502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.123238, 54.296375, 55.954819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620300, -0.259997, 0.740020,
		-0.742902, -0.497432, 0.447948,
		0.251645, -0.827625, -0.501709,
		61.198730, 54.048088, 55.804306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.902519, 54.129055, 56.617516>,  <61.022579, 54.627426, 56.155502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.902519, 54.129055, 56.617516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.184227, 53.954132, 56.393814>,  <61.353252, 53.849178, 56.259594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.184227, 53.954132, 56.393814>,  <60.902519, 54.129055, 56.617516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.184227, 53.954132, 56.393814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622148, 0.000739, 0.782899,
		-0.341957, -0.899310, 0.272593,
		0.704271, -0.437311, -0.559251,
		61.395508, 53.822937, 56.226040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.300415, 53.719440, 57.099926>,  <60.902519, 54.129055, 56.617516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.300415, 53.719440, 57.099926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.526756, 53.786903, 56.777100>,  <61.662563, 53.827381, 56.583405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.526756, 53.786903, 56.777100>,  <61.300415, 53.719440, 57.099926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.526756, 53.786903, 56.777100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802329, 0.112855, 0.586116,
		0.189934, -0.979193, -0.071459,
		0.565856, 0.168657, -0.807070,
		61.696514, 53.837502, 56.534977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.914036, 53.317638, 57.148628>,  <61.300415, 53.719440, 57.099926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.914036, 53.317638, 57.148628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.004822, 53.628895, 56.914368>,  <62.059292, 53.815647, 56.773811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.004822, 53.628895, 56.914368>,  <61.914036, 53.317638, 57.148628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.004822, 53.628895, 56.914368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866693, 0.112911, 0.485894,
		0.444220, -0.617860, -0.648781,
		0.226960, 0.778138, -0.585653,
		62.072910, 53.862335, 56.738670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.539722, 53.389515, 57.423889>,  <61.914036, 53.317638, 57.148628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.539722, 53.389515, 57.423889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.510353, 53.693245, 57.165268>,  <62.492729, 53.875484, 57.010098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.510353, 53.693245, 57.165268>,  <62.539722, 53.389515, 57.423889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.510353, 53.693245, 57.165268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942129, 0.265453, 0.204763,
		0.327111, -0.594100, -0.734877,
		-0.073426, 0.759329, -0.646551,
		62.488327, 53.921043, 56.971302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.969818, 53.337452, 56.908257>,  <62.539722, 53.389515, 57.423889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.969818, 53.337452, 56.908257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.914978, 53.723408, 56.997864>,  <62.882072, 53.954983, 57.051628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.914978, 53.723408, 56.997864>,  <62.969818, 53.337452, 56.908257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.914978, 53.723408, 56.997864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990360, 0.138036, 0.011577,
		-0.019752, 0.223446, -0.974516,
		-0.137105, 0.964893, 0.224018,
		62.873848, 54.012875, 57.065067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.397316, 53.837727, 56.474850>,  <62.969818, 53.337452, 56.908257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.397316, 53.837727, 56.474850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.335030, 53.979321, 56.843727>,  <63.297657, 54.064278, 57.065056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.335030, 53.979321, 56.843727>,  <63.397316, 53.837727, 56.474850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.335030, 53.979321, 56.843727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985151, 0.123999, 0.118751,
		-0.072315, 0.926996, -0.368034,
		-0.155718, 0.353982, 0.922198,
		63.288315, 54.085514, 57.120388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.942932, 54.193012, 56.546867>,  <63.397316, 53.837727, 56.474850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.942932, 54.193012, 56.546867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.834061, 54.233181, 56.929665>,  <63.768738, 54.257282, 57.159344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.834061, 54.233181, 56.929665>,  <63.942932, 54.193012, 56.546867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.834061, 54.233181, 56.929665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936871, 0.254551, 0.239744,
		-0.219529, 0.961832, -0.163362,
		-0.272177, 0.100418, 0.956993,
		63.752407, 54.263306, 57.216763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.103615, 54.824467, 56.798752>,  <63.942932, 54.193012, 56.546867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.103615, 54.824467, 56.798752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.156349, 54.536533, 57.071358>,  <64.187988, 54.363773, 57.234921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.156349, 54.536533, 57.071358>,  <64.103615, 54.824467, 56.798752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.156349, 54.536533, 57.071358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842610, 0.443518, 0.305451,
		-0.522137, 0.533981, 0.665009,
		0.131838, -0.719831, 0.681515,
		64.195900, 54.320583, 57.275810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.249260, 55.225826, 57.428917>,  <64.103615, 54.824467, 56.798752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.249260, 55.225826, 57.428917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.430359, 54.870670, 57.396271>,  <64.539017, 54.657578, 57.376682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.430359, 54.870670, 57.396271>,  <64.249260, 55.225826, 57.428917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.430359, 54.870670, 57.396271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890328, 0.445240, 0.095275,
		-0.048254, -0.115804, 0.992099,
		0.452755, -0.887891, -0.081619,
		64.566185, 54.604301, 57.371784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.754036, 55.072132, 58.008747>,  <64.249260, 55.225826, 57.428917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.754036, 55.072132, 58.008747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.929916, 54.915119, 57.685616>,  <65.035446, 54.820911, 57.491737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.929916, 54.915119, 57.685616>,  <64.754036, 55.072132, 58.008747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.929916, 54.915119, 57.685616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860035, 0.443240, 0.252743,
		0.258850, -0.805888, 0.532486,
		0.439701, -0.392534, -0.807824,
		65.061829, 54.797359, 57.443268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.434006, 54.905300, 58.057270>,  <64.754036, 55.072132, 58.008747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.434006, 54.905300, 58.057270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.446205, 55.003433, 57.669685>,  <65.453522, 55.062313, 57.437134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.446205, 55.003433, 57.669685>,  <65.434006, 54.905300, 58.057270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.446205, 55.003433, 57.669685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835323, 0.526112, 0.159501,
		0.548912, -0.814258, -0.188889,
		0.030498, 0.245336, -0.968958,
		65.455353, 55.077034, 57.378998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.144829, 54.726242, 57.825661>,  <65.434006, 54.905300, 58.057270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.144829, 54.726242, 57.825661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.974449, 54.987461, 57.575188>,  <65.872223, 55.144192, 57.424904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.974449, 54.987461, 57.575188>,  <66.144829, 54.726242, 57.825661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.974449, 54.987461, 57.575188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870549, 0.484317, -0.087069,
		0.246412, -0.582210, -0.774798,
		-0.425940, 0.653046, -0.626184,
		65.846664, 55.183376, 57.387333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.533066, 54.776485, 57.190128>,  <66.144829, 54.726242, 57.825661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.533066, 54.776485, 57.190128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.315140, 55.108414, 57.238441>,  <66.184387, 55.307571, 57.267429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.315140, 55.108414, 57.238441>,  <66.533066, 54.776485, 57.190128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.315140, 55.108414, 57.238441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818929, 0.557488, -0.136239,
		-0.180390, 0.024691, -0.983285,
		-0.544806, 0.829817, 0.120786,
		66.151695, 55.357361, 57.274677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.599121, 55.522133, 57.518959>,  <66.533066, 54.776485, 57.190128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.599121, 55.522133, 57.518959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.588692, 55.862801, 57.728333>,  <66.582436, 56.067200, 57.853958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.588692, 55.862801, 57.728333>,  <66.599121, 55.522133, 57.518959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.588692, 55.862801, 57.728333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881608, 0.266437, -0.389587,
		-0.471261, 0.451306, -0.757784,
		-0.026079, 0.851666, 0.523436,
		66.580872, 56.118301, 57.885365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.120369, 56.057056, 57.248146>,  <66.599121, 55.522133, 57.518959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.120369, 56.057056, 57.248146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.125206, 56.144390, 57.638466>,  <67.128105, 56.196789, 57.872658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.125206, 56.144390, 57.638466>,  <67.120369, 56.057056, 57.248146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.125206, 56.144390, 57.638466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991373, 0.124755, -0.040198,
		-0.130512, 0.967868, -0.214939,
		0.012091, 0.218331, 0.975800,
		67.128830, 56.209888, 57.931206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.457657, 56.760620, 57.294559>,  <67.120369, 56.057056, 57.248146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.457657, 56.760620, 57.294559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.505585, 56.495380, 57.590111>,  <67.534340, 56.336235, 57.767441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.505585, 56.495380, 57.590111>,  <67.457657, 56.760620, 57.294559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.505585, 56.495380, 57.590111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992430, 0.059841, -0.107244,
		0.026899, 0.746134, 0.665252,
		0.119828, -0.663101, 0.738876,
		67.541534, 56.296452, 57.811775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.204979, 56.651672, 57.355690>,  <67.457657, 56.760620, 57.294559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.204979, 56.651672, 57.355690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.471138, 56.938358, 57.439186>,  <68.630836, 57.110371, 57.489285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.471138, 56.938358, 57.439186>,  <68.204979, 56.651672, 57.355690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.471138, 56.938358, 57.439186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619177, -0.373703, -0.690627,
		-0.416972, 0.588789, -0.692431,
		0.665397, 0.716710, 0.208742,
		68.670753, 57.153370, 57.501808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.458000, 57.013847, 56.731487>,  <68.204979, 56.651672, 57.355690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.458000, 57.013847, 56.731487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.749886, 57.067650, 56.999641>,  <68.925018, 57.099930, 57.160534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.749886, 57.067650, 56.999641>,  <68.458000, 57.013847, 56.731487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.749886, 57.067650, 56.999641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626877, -0.523094, -0.577406,
		0.273011, 0.841595, -0.466029,
		0.729719, 0.134505, 0.670387,
		68.968803, 57.108002, 57.200756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.075211, 57.453171, 56.518417>,  <68.458000, 57.013847, 56.731487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.075211, 57.453171, 56.518417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.092812, 57.131691, 56.755783>,  <69.103371, 56.938805, 56.898201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.092812, 57.131691, 56.755783>,  <69.075211, 57.453171, 56.518417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.092812, 57.131691, 56.755783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390446, -0.532912, -0.750705,
		0.919574, 0.264722, 0.290354,
		0.043995, -0.803696, 0.593411,
		69.106010, 56.890583, 56.933807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.769638, 57.106674, 56.325108>,  <69.075211, 57.453171, 56.518417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.769638, 57.106674, 56.325108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.549629, 56.852989, 56.542458>,  <69.417625, 56.700779, 56.672867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.549629, 56.852989, 56.542458>,  <69.769638, 57.106674, 56.325108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.549629, 56.852989, 56.542458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412957, -0.772053, -0.483116,
		0.725909, -0.041335, 0.686547,
		-0.550020, -0.634213, 0.543371,
		69.384621, 56.662724, 56.705467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.165253, 56.755650, 56.810555>,  <69.769638, 57.106674, 56.325108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.165253, 56.755650, 56.810555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.850479, 56.536987, 56.696075>,  <69.661613, 56.405792, 56.627388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.850479, 56.536987, 56.696075>,  <70.165253, 56.755650, 56.810555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.850479, 56.536987, 56.696075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616909, -0.687505, -0.383094,
		0.012660, -0.478024, 0.878256,
		-0.786933, -0.546653, -0.286193,
		69.614403, 56.372990, 56.610218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.913338, 56.831009, 56.849823>,  <70.165253, 56.755650, 56.810555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.913338, 56.831009, 56.849823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.661003, 56.522179, 56.818962>,  <70.509605, 56.336880, 56.800446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.661003, 56.522179, 56.818962>,  <70.913338, 56.831009, 56.849823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.661003, 56.522179, 56.818962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291670, 0.143818, 0.945646,
		-0.719017, 0.619041, -0.315916,
		-0.630828, -0.772078, -0.077148,
		70.471756, 56.290554, 56.795818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.867241, 56.541203, 56.138962>,  <70.913338, 56.831009, 56.849823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.867241, 56.541203, 56.138962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.793411, 56.317719, 56.462387>,  <70.749115, 56.183628, 56.656441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.793411, 56.317719, 56.462387>,  <70.867241, 56.541203, 56.138962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.793411, 56.317719, 56.462387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.928969, 0.367761, 0.042048,
		-0.320851, -0.743370, -0.586903,
		-0.184583, -0.558706, 0.808564,
		70.738037, 56.150108, 56.704956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.593857, 56.804909, 56.238255>,  <70.867241, 56.541203, 56.138962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.593857, 56.804909, 56.238255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.633385, 56.461948, 56.036224>,  <71.657097, 56.256172, 55.915005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.633385, 56.461948, 56.036224>,  <71.593857, 56.804909, 56.238255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.633385, 56.461948, 56.036224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372984, 0.438648, -0.817600,
		0.922561, 0.269176, -0.276451,
		0.098813, -0.857398, -0.505078,
		71.663025, 56.204727, 55.884701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.148895, 57.120155, 56.531567>,  <71.593857, 56.804909, 56.238255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.148895, 57.120155, 56.531567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.222504, 56.793015, 56.313484>,  <72.266670, 56.596729, 56.182632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.222504, 56.793015, 56.313484>,  <72.148895, 57.120155, 56.531567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.222504, 56.793015, 56.313484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982539, 0.137565, 0.125272,
		-0.027452, -0.558742, 0.828887,
		0.184020, -0.817853, -0.545209,
		72.277710, 56.547657, 56.149921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.867493, 57.045238, 57.293064>,  <72.148895, 57.120155, 56.531567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.867493, 57.045238, 57.293064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.263420, 56.989117, 57.302734>,  <72.500977, 56.955444, 57.308537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.263420, 56.989117, 57.302734>,  <71.867493, 57.045238, 57.293064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.263420, 56.989117, 57.302734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093716, 0.769872, 0.631280,
		-0.107183, -0.622583, 0.775179,
		0.989813, -0.140309, 0.024171,
		72.560364, 56.947025, 57.309986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.220978, 56.904839, 58.005222>,  <71.867493, 57.045238, 57.293064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.220978, 56.904839, 58.005222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.413307, 57.108414, 57.719627>,  <72.528709, 57.230560, 57.548271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.413307, 57.108414, 57.719627>,  <72.220978, 56.904839, 58.005222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.413307, 57.108414, 57.719627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018779, 0.808136, 0.588697,
		0.876613, -0.296470, 0.379018,
		0.480829, 0.508942, -0.713990,
		72.557556, 57.261097, 57.505432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.432129, 56.751247, 58.682835>,  <72.220978, 56.904839, 58.005222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.432129, 56.751247, 58.682835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.248856, 56.705666, 59.035446>,  <72.138893, 56.678318, 59.247013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.248856, 56.705666, 59.035446>,  <72.432129, 56.751247, 58.682835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.248856, 56.705666, 59.035446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871706, 0.136305, 0.470691,
		-0.173792, 0.984092, 0.036879,
		-0.458176, -0.113950, 0.881527,
		72.111404, 56.671482, 59.299904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.321678, 57.367970, 59.260365>,  <72.432129, 56.751247, 58.682835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.321678, 57.367970, 59.260365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.365402, 57.006546, 59.426079>,  <72.391640, 56.789692, 59.525509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.365402, 57.006546, 59.426079>,  <72.321678, 57.367970, 59.260365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.365402, 57.006546, 59.426079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802727, 0.326052, 0.499319,
		-0.586243, 0.277979, 0.760952,
		0.109310, -0.903558, 0.414287,
		72.398193, 56.735477, 59.550365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.830933, 57.357525, 59.904736>,  <72.321678, 57.367970, 59.260365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.830933, 57.357525, 59.904736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.908638, 57.403374, 60.294426>,  <72.955261, 57.430882, 60.528240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.908638, 57.403374, 60.294426>,  <72.830933, 57.357525, 59.904736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.908638, 57.403374, 60.294426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422349, -0.906157, 0.022392,
		0.885370, 0.407114, -0.224448,
		0.194269, 0.114620, 0.974229,
		72.966919, 57.437759, 60.586693>
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
