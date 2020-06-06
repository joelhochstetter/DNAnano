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
	sky <0, 0.179814, -0.983701>
	up <0, 0.179814, -0.983701>
	right 1.6 * <1, 0, 0>
	location <35, 94.9851, 44.8844>
	look_at <35, 29.7336, 32.9568>
	direction <0, -65.2515, -11.9276>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 56
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16352, -0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16352, 0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<24.164730, 34.898895, 35.052185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.526218, 35.025307, 34.936661>,  <24.743111, 35.101154, 34.867344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.526218, 35.025307, 34.936661>,  <24.164730, 34.898895, 35.052185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.526218, 35.025307, 34.936661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418343, -0.508510, 0.752600,
		0.090981, -0.800963, -0.591761,
		0.903721, 0.316032, -0.288813,
		24.797335, 35.120117, 34.850018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.756056, 34.336159, 34.790314>,  <24.164730, 34.898895, 35.052185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.756056, 34.336159, 34.790314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.866913, 34.647694, 35.015385>,  <24.933428, 34.834614, 35.150429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.866913, 34.647694, 35.015385>,  <24.756056, 34.336159, 34.790314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.866913, 34.647694, 35.015385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347487, -0.627223, 0.697025,
		0.895793, 0.002348, -0.444465,
		0.277142, 0.778836, 0.562678,
		24.950056, 34.881344, 35.184189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.383490, 34.104488, 35.071041>,  <24.756056, 34.336159, 34.790314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.383490, 34.104488, 35.071041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.233244, 34.398170, 35.297268>,  <25.143097, 34.574379, 35.433002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.233244, 34.398170, 35.297268>,  <25.383490, 34.104488, 35.071041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.233244, 34.398170, 35.297268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015627, -0.605144, 0.795963,
		0.926645, 0.307811, 0.215826,
		-0.375612, 0.734202, 0.565564,
		25.120560, 34.618431, 35.466938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.643534, 34.126438, 35.691368>,  <25.383490, 34.104488, 35.071041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.643534, 34.126438, 35.691368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.293564, 34.301292, 35.774719>,  <25.083582, 34.406204, 35.824730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.293564, 34.301292, 35.774719>,  <25.643534, 34.126438, 35.691368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.293564, 34.301292, 35.774719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012433, -0.450429, 0.892726,
		0.484102, 0.778476, 0.399526,
		-0.874923, 0.437137, 0.208375,
		25.031086, 34.432434, 35.837231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.849276, 34.742981, 36.033470>,  <25.643534, 34.126438, 35.691368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.849276, 34.742981, 36.033470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.099850, 34.951221, 36.265522>,  <26.250195, 35.076168, 36.404755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.099850, 34.951221, 36.265522>,  <25.849276, 34.742981, 36.033470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.099850, 34.951221, 36.265522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043158, -0.719953, 0.692680,
		0.778279, -0.458955, -0.428534,
		0.626433, 0.520604, 0.580132,
		26.287779, 35.107403, 36.439560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.526104, 34.392471, 36.193161>,  <25.849276, 34.742981, 36.033470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.526104, 34.392471, 36.193161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.407286, 34.608757, 36.507969>,  <26.335995, 34.738529, 36.696854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.407286, 34.608757, 36.507969>,  <26.526104, 34.392471, 36.193161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.407286, 34.608757, 36.507969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071366, -0.809341, 0.582987,
		0.952192, 0.229342, 0.201824,
		-0.297048, 0.540712, 0.787015,
		26.318171, 34.770969, 36.744072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.047533, 34.341709, 36.675426>,  <26.526104, 34.392471, 36.193161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.047533, 34.341709, 36.675426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.731813, 34.450592, 36.895576>,  <26.542381, 34.515923, 37.027664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.731813, 34.450592, 36.895576>,  <27.047533, 34.341709, 36.675426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.731813, 34.450592, 36.895576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063564, -0.855322, 0.514183,
		0.610708, 0.440829, 0.657803,
		-0.789300, 0.272203, 0.550373,
		26.495024, 34.532253, 37.060688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.312025, 34.350895, 37.354015>,  <27.047533, 34.341709, 36.675426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.312025, 34.350895, 37.354015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.918501, 34.279530, 37.347256>,  <26.682386, 34.236710, 37.343201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.918501, 34.279530, 37.347256>,  <27.312025, 34.350895, 37.354015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.918501, 34.279530, 37.347256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125041, -0.750911, 0.648458,
		-0.128387, 0.635846, 0.761063,
		-0.983810, -0.178418, -0.016900,
		26.623358, 34.226006, 37.342186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.955914, 34.301552, 37.957153>,  <27.312025, 34.350895, 37.354015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.955914, 34.301552, 37.957153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.699343, 34.072552, 37.752869>,  <26.545401, 33.935154, 37.630299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.699343, 34.072552, 37.752869>,  <26.955914, 34.301552, 37.957153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.699343, 34.072552, 37.752869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223930, -0.776412, 0.589101,
		-0.733777, 0.263502, 0.626209,
		-0.641426, -0.572496, -0.510707,
		26.506914, 33.900803, 37.599655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.426891, 33.928928, 38.452843>,  <26.955914, 34.301552, 37.957153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.426891, 33.928928, 38.452843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.438162, 33.693836, 38.129417>,  <26.444925, 33.552780, 37.935364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.438162, 33.693836, 38.129417>,  <26.426891, 33.928928, 38.452843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.438162, 33.693836, 38.129417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099002, -0.806548, 0.582820,
		-0.994688, 0.063626, -0.080914,
		0.028178, -0.587735, -0.808563,
		26.446615, 33.517517, 37.886848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.753786, 33.697571, 38.295017>,  <26.426891, 33.928928, 38.452843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.753786, 33.697571, 38.295017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.053631, 33.449524, 38.202465>,  <26.233538, 33.300694, 38.146935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.053631, 33.449524, 38.202465>,  <25.753786, 33.697571, 38.295017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.053631, 33.449524, 38.202465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175513, -0.523299, 0.833879,
		-0.638184, -0.584474, -0.501109,
		0.749611, -0.620119, -0.231378,
		26.278515, 33.263489, 38.133053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.348991, 33.221500, 38.834080>,  <25.753786, 33.697571, 38.295017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.348991, 33.221500, 38.834080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.112600, 33.477753, 39.030174>,  <24.970766, 33.631504, 39.147831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.112600, 33.477753, 39.030174>,  <25.348991, 33.221500, 38.834080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.112600, 33.477753, 39.030174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103046, -0.662689, 0.741771,
		0.800078, 0.387855, 0.457650,
		-0.590979, 0.640634, 0.490236,
		24.935307, 33.669941, 39.177246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.596409, 33.220032, 39.475647>,  <25.348991, 33.221500, 38.834080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.596409, 33.220032, 39.475647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.206919, 33.310993, 39.470802>,  <24.973225, 33.365570, 39.467896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.206919, 33.310993, 39.470802>,  <25.596409, 33.220032, 39.475647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.206919, 33.310993, 39.470802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195029, -0.805273, 0.559909,
		0.117570, 0.547561, 0.828465,
		-0.973725, 0.227404, -0.012115,
		24.914801, 33.379215, 39.467167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.289970, 33.081760, 39.355747>,  <25.596409, 33.220032, 39.475647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.289970, 33.081760, 39.355747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.263704, 32.709019, 39.213017>,  <26.247946, 32.485374, 39.127377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.263704, 32.709019, 39.213017>,  <26.289970, 33.081760, 39.355747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.263704, 32.709019, 39.213017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349362, 0.313499, -0.882986,
		0.934684, -0.182642, 0.304970,
		-0.065663, -0.931859, -0.356831,
		26.244005, 32.429462, 39.105968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.092089, 32.820911, 39.131527>,  <26.289970, 33.081760, 39.355747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.092089, 32.820911, 39.131527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.789839, 32.646481, 38.936028>,  <26.608488, 32.541824, 38.818729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.789839, 32.646481, 38.936028>,  <27.092089, 32.820911, 39.131527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.789839, 32.646481, 38.936028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342915, 0.372374, -0.862408,
		0.558069, -0.819254, -0.131839,
		-0.755624, -0.436074, -0.488745,
		26.563152, 32.515659, 38.789406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.417152, 32.679672, 38.462986>,  <27.092089, 32.820911, 39.131527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.417152, 32.679672, 38.462986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.021730, 32.713757, 38.413197>,  <26.784477, 32.734207, 38.383324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.021730, 32.713757, 38.413197>,  <27.417152, 32.679672, 38.462986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.021730, 32.713757, 38.413197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150658, 0.598897, -0.786527,
		0.007529, -0.796280, -0.604881,
		-0.988557, 0.085209, -0.124475,
		26.725163, 32.739319, 38.375854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.308500, 32.502708, 37.775360>,  <27.417152, 32.679672, 38.462986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.308500, 32.502708, 37.775360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.006924, 32.733856, 37.900349>,  <26.825977, 32.872543, 37.975342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.006924, 32.733856, 37.900349>,  <27.308500, 32.502708, 37.775360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.006924, 32.733856, 37.900349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066433, 0.540279, -0.838859,
		-0.653574, -0.611692, -0.445728,
		-0.753942, 0.577867, 0.312476,
		26.780741, 32.907215, 37.994091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.627111, 32.464527, 37.289082>,  <27.308500, 32.502708, 37.775360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.627111, 32.464527, 37.289082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.710789, 32.803551, 37.484177>,  <26.760996, 33.006966, 37.601234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.710789, 32.803551, 37.484177>,  <26.627111, 32.464527, 37.289082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.710789, 32.803551, 37.484177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289384, 0.422771, -0.858790,
		-0.934074, 0.320797, -0.156828,
		0.209195, 0.847558, 0.487733,
		26.773546, 33.057819, 37.630497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.285660, 33.104088, 37.011162>,  <26.627111, 32.464527, 37.289082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.285660, 33.104088, 37.011162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.644335, 33.175682, 37.173107>,  <26.859539, 33.218639, 37.270275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.644335, 33.175682, 37.173107>,  <26.285660, 33.104088, 37.011162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.644335, 33.175682, 37.173107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274043, 0.493826, -0.825249,
		-0.347638, 0.850942, 0.393759,
		0.896687, 0.178981, 0.404868,
		26.913342, 33.229378, 37.294567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.832489, 33.655155, 37.257191>,  <26.285660, 33.104088, 37.011162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.832489, 33.655155, 37.257191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.023308, 33.831284, 37.561440>,  <26.137800, 33.936962, 37.743988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.023308, 33.831284, 37.561440>,  <25.832489, 33.655155, 37.257191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.023308, 33.831284, 37.561440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139330, 0.892388, -0.429221,
		-0.867763, 0.098782, 0.487062,
		0.477048, 0.440324, 0.760618,
		26.166422, 33.963383, 37.789623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.428976, 34.197998, 37.543518>,  <25.832489, 33.655155, 37.257191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.428976, 34.197998, 37.543518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.822840, 34.263691, 37.567093>,  <26.059158, 34.303108, 37.581238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.822840, 34.263691, 37.567093>,  <25.428976, 34.197998, 37.543518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.822840, 34.263691, 37.567093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122854, 0.892389, -0.434222,
		-0.123909, 0.420320, 0.898876,
		0.984659, 0.164235, 0.058937,
		26.118237, 34.312962, 37.584774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.505079, 34.886360, 37.821548>,  <25.428976, 34.197998, 37.543518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.505079, 34.886360, 37.821548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.807510, 34.773010, 37.585567>,  <25.988970, 34.705002, 37.443977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.807510, 34.773010, 37.585567>,  <25.505079, 34.886360, 37.821548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.807510, 34.773010, 37.585567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140991, 0.809718, -0.569629,
		0.639114, 0.513862, 0.572258,
		0.756079, -0.283375, -0.589952,
		26.034334, 34.687996, 37.408581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.886963, 35.504971, 37.723541>,  <25.505079, 34.886360, 37.821548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.886963, 35.504971, 37.723541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.988119, 35.269138, 37.416702>,  <26.048813, 35.127640, 37.232597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.988119, 35.269138, 37.416702>,  <25.886963, 35.504971, 37.723541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.988119, 35.269138, 37.416702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162097, 0.755842, -0.634372,
		0.953820, 0.284770, 0.095574,
		0.252889, -0.589584, -0.767097,
		26.063986, 35.092262, 37.186573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.368057, 35.889332, 37.224781>,  <25.886963, 35.504971, 37.723541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.368057, 35.889332, 37.224781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.178432, 35.596123, 37.029663>,  <26.064657, 35.420197, 36.912594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.178432, 35.596123, 37.029663>,  <26.368057, 35.889332, 37.224781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.178432, 35.596123, 37.029663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183216, 0.623999, -0.759643,
		0.861219, -0.270746, -0.430115,
		-0.474061, -0.733023, -0.487795,
		26.036215, 35.376217, 36.883324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.207125, 36.592907, 37.511784>,  <26.368057, 35.889332, 37.224781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.207125, 36.592907, 37.511784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.240076, 36.968212, 37.377396>,  <26.259846, 37.193394, 37.296764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.240076, 36.968212, 37.377396>,  <26.207125, 36.592907, 37.511784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.240076, 36.968212, 37.377396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613046, 0.313495, 0.725187,
		0.785741, 0.146226, 0.601024,
		0.082376, 0.938264, -0.335969,
		26.264790, 37.249691, 37.276604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.400410, 37.165146, 38.086384>,  <26.207125, 36.592907, 37.511784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.400410, 37.165146, 38.086384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.160032, 37.250092, 37.778156>,  <26.015806, 37.301060, 37.593220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.160032, 37.250092, 37.778156>,  <26.400410, 37.165146, 38.086384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.160032, 37.250092, 37.778156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673316, 0.385003, 0.631204,
		0.430712, 0.898151, -0.088380,
		-0.600944, 0.212360, -0.770565,
		25.979750, 37.313801, 37.546986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.676519, 37.725899, 38.482399>,  <26.400410, 37.165146, 38.086384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.676519, 37.725899, 38.482399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.573503, 38.030952, 38.719738>,  <26.511694, 38.213985, 38.862141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.573503, 38.030952, 38.719738>,  <26.676519, 37.725899, 38.482399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.573503, 38.030952, 38.719738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152867, 0.574171, -0.804338,
		-0.954100, -0.297851, -0.031289,
		-0.257538, 0.762635, 0.593348,
		26.496243, 38.259743, 38.897743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.321678, 38.023228, 38.745140>,  <26.676519, 37.725899, 38.482399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.321678, 38.023228, 38.745140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.406702, 38.065105, 39.133751>,  <27.457716, 38.090233, 39.366917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.406702, 38.065105, 39.133751>,  <27.321678, 38.023228, 38.745140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.406702, 38.065105, 39.133751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802728, -0.585633, -0.112518,
		0.557177, 0.803786, -0.208521,
		0.212558, 0.104694, 0.971524,
		27.470469, 38.096512, 39.425209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.007748, 38.321594, 38.880619>,  <27.321678, 38.023228, 38.745140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.007748, 38.321594, 38.880619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.873699, 38.077412, 39.167683>,  <27.793270, 37.930901, 39.339920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.873699, 38.077412, 39.167683>,  <28.007748, 38.321594, 38.880619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.873699, 38.077412, 39.167683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820443, -0.563567, -0.096262,
		0.463214, 0.556540, 0.689707,
		-0.335122, -0.610455, 0.717661,
		27.773163, 37.894276, 39.382980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.585333, 38.038258, 39.022964>,  <28.007748, 38.321594, 38.880619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.585333, 38.038258, 39.022964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.348515, 37.803871, 39.244278>,  <28.206423, 37.663239, 39.377068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.348515, 37.803871, 39.244278>,  <28.585333, 38.038258, 39.022964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.348515, 37.803871, 39.244278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594511, -0.781062, -0.191044,
		0.544094, 0.215826, 0.810790,
		-0.592046, -0.585970, 0.553282,
		28.170900, 37.628078, 39.410263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.263605, 37.703224, 39.061222>,  <28.585333, 38.038258, 39.022964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.263605, 37.703224, 39.061222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.555262, 37.585125, 38.814262>,  <29.730255, 37.514267, 38.666084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.555262, 37.585125, 38.814262>,  <29.263605, 37.703224, 39.061222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.555262, 37.585125, 38.814262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339781, -0.939284, 0.047903,
		-0.594059, 0.174853, -0.785188,
		0.729139, -0.295249, -0.617401,
		29.774004, 37.496552, 38.629044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.037094, 37.457920, 38.402637>,  <29.263605, 37.703224, 39.061222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.037094, 37.457920, 38.402637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.371397, 37.261192, 38.500309>,  <29.571978, 37.143154, 38.558914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.371397, 37.261192, 38.500309>,  <29.037094, 37.457920, 38.402637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.371397, 37.261192, 38.500309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512214, -0.858524, 0.023941,
		0.197861, -0.145081, -0.969434,
		0.835756, -0.491821, 0.244181,
		29.622124, 37.113647, 38.573563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.129940, 36.774502, 38.021336>,  <29.037094, 37.457920, 38.402637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.129940, 36.774502, 38.021336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.348564, 36.745903, 38.355080>,  <29.479738, 36.728745, 38.555328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.348564, 36.745903, 38.355080>,  <29.129940, 36.774502, 38.021336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.348564, 36.745903, 38.355080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271574, -0.957634, 0.095839,
		0.792161, -0.278973, -0.542821,
		0.546560, -0.071496, 0.834362,
		29.512531, 36.724453, 38.605389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.365423, 36.047550, 37.981213>,  <29.129940, 36.774502, 38.021336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.365423, 36.047550, 37.981213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.435299, 36.152573, 38.360802>,  <29.477224, 36.215588, 38.588554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.435299, 36.152573, 38.360802>,  <29.365423, 36.047550, 37.981213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.435299, 36.152573, 38.360802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332523, -0.891436, 0.307849,
		0.926775, -0.369333, -0.068419,
		0.174690, 0.262556, 0.948972,
		29.487705, 36.231339, 38.645493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.612707, 35.486015, 38.487431>,  <29.365423, 36.047550, 37.981213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.612707, 35.486015, 38.487431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.422171, 35.759800, 38.708195>,  <29.307848, 35.924072, 38.840652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.422171, 35.759800, 38.708195>,  <29.612707, 35.486015, 38.487431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.422171, 35.759800, 38.708195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486426, -0.728036, 0.483066,
		0.732453, -0.038358, 0.679737,
		-0.476343, 0.684465, 0.551911,
		29.279268, 35.965137, 38.873768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.730886, 35.317566, 39.172974>,  <29.612707, 35.486015, 38.487431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.730886, 35.317566, 39.172974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.381357, 35.499058, 39.103046>,  <29.171640, 35.607952, 39.061089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.381357, 35.499058, 39.103046>,  <29.730886, 35.317566, 39.172974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.381357, 35.499058, 39.103046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467740, -0.686107, 0.557204,
		0.132875, 0.568667, 0.811765,
		-0.873821, 0.453734, -0.174822,
		29.119211, 35.635178, 39.050598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.432484, 35.485641, 39.840950>,  <29.730886, 35.317566, 39.172974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.432484, 35.485641, 39.840950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.195580, 35.419128, 39.525589>,  <29.053436, 35.379223, 39.336372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.195580, 35.419128, 39.525589>,  <29.432484, 35.485641, 39.840950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.195580, 35.419128, 39.525589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581166, -0.589582, 0.560927,
		-0.558098, 0.790408, 0.252551,
		-0.592261, -0.166278, -0.788403,
		29.017900, 35.369244, 39.289066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.731461, 35.828575, 40.023014>,  <29.432484, 35.485641, 39.840950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.731461, 35.828575, 40.023014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.786448, 35.503704, 39.796219>,  <28.819439, 35.308781, 39.660141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.786448, 35.503704, 39.796219>,  <28.731461, 35.828575, 40.023014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.786448, 35.503704, 39.796219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419466, -0.566292, 0.709479,
		-0.897302, 0.140303, -0.418525,
		0.137465, -0.812174, -0.566988,
		28.827686, 35.260052, 39.626122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.007141, 36.363281, 39.707253>,  <28.731461, 35.828575, 40.023014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.007141, 36.363281, 39.707253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.272522, 36.176289, 39.473572>,  <29.431751, 36.064095, 39.333363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.272522, 36.176289, 39.473572>,  <29.007141, 36.363281, 39.707253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.272522, 36.176289, 39.473572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366495, 0.883754, -0.290966,
		0.652312, -0.021064, 0.757658,
		0.663454, -0.467478, -0.584203,
		29.471558, 36.036045, 39.298309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.649895, 36.602989, 39.890007>,  <29.007141, 36.363281, 39.707253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.649895, 36.602989, 39.890007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.672684, 36.481701, 39.509521>,  <29.686357, 36.408928, 39.281231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.672684, 36.481701, 39.509521>,  <29.649895, 36.602989, 39.890007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.672684, 36.481701, 39.509521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374872, 0.889547, -0.261106,
		0.925324, -0.341708, 0.164349,
		0.056975, -0.303218, -0.951217,
		29.689775, 36.390736, 39.224155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.403311, 36.585735, 39.528149>,  <29.649895, 36.602989, 39.890007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.403311, 36.585735, 39.528149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.136204, 36.618713, 39.232235>,  <29.975939, 36.638500, 39.054688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.136204, 36.618713, 39.232235>,  <30.403311, 36.585735, 39.528149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.136204, 36.618713, 39.232235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466855, 0.820468, -0.329969,
		0.579767, -0.565716, -0.586374,
		-0.667770, 0.082446, -0.739788,
		29.935873, 36.643448, 39.010300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.753242, 36.665947, 38.835636>,  <30.403311, 36.585735, 39.528149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.753242, 36.665947, 38.835636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.384766, 36.821178, 38.824306>,  <30.163679, 36.914318, 38.817509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.384766, 36.821178, 38.824306>,  <30.753242, 36.665947, 38.835636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.384766, 36.821178, 38.824306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388917, 0.915998, -0.098446,
		-0.012257, -0.101705, -0.994739,
		-0.921191, 0.388077, -0.028327,
		30.108408, 36.937603, 38.815807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.737785, 37.139126, 38.307404>,  <30.753242, 36.665947, 38.835636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.737785, 37.139126, 38.307404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.440763, 37.231567, 38.558865>,  <30.262550, 37.287033, 38.709740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.440763, 37.231567, 38.558865>,  <30.737785, 37.139126, 38.307404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.440763, 37.231567, 38.558865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245876, 0.967112, -0.065108,
		-0.623022, 0.106224, -0.774958,
		-0.742555, 0.231107, 0.628650,
		30.217997, 37.300900, 38.747459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.303371, 37.670708, 37.938805>,  <30.737785, 37.139126, 38.307404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.303371, 37.670708, 37.938805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.364422, 37.695339, 38.333351>,  <30.401052, 37.710117, 38.570080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.364422, 37.695339, 38.333351>,  <30.303371, 37.670708, 37.938805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.364422, 37.695339, 38.333351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359689, 0.926146, -0.113476,
		-0.920504, 0.372104, 0.119207,
		0.152628, 0.061577, 0.986363,
		30.410210, 37.713814, 38.629261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.916935, 38.258492, 38.184708>,  <30.303371, 37.670708, 37.938805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.916935, 38.258492, 38.184708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.232378, 38.160168, 38.410160>,  <30.421644, 38.101173, 38.545429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.232378, 38.160168, 38.410160>,  <29.916935, 38.258492, 38.184708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.232378, 38.160168, 38.410160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381626, 0.914378, -0.135185,
		-0.482138, 0.321703, 0.814893,
		0.788609, -0.245806, 0.563626,
		30.468962, 38.086426, 38.579247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.158592, 38.796642, 38.656376>,  <29.916935, 38.258492, 38.184708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.158592, 38.796642, 38.656376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.478424, 38.566078, 38.588943>,  <30.670322, 38.427738, 38.548485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.478424, 38.566078, 38.588943>,  <30.158592, 38.796642, 38.656376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.478424, 38.566078, 38.588943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508066, 0.798909, -0.321890,
		0.320221, 0.171728, 0.931648,
		0.799580, -0.576415, -0.168578,
		30.718298, 38.393154, 38.538368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.815561, 39.142162, 38.820778>,  <30.158592, 38.796642, 38.656376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.815561, 39.142162, 38.820778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.856613, 38.868401, 38.532043>,  <30.881245, 38.704144, 38.358803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.856613, 38.868401, 38.532043>,  <30.815561, 39.142162, 38.820778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.856613, 38.868401, 38.532043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488228, 0.666908, -0.562910,
		0.866661, -0.294650, 0.402592,
		0.102630, -0.684408, -0.721839,
		30.887402, 38.663078, 38.315491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.505743, 39.124420, 38.534458>,  <30.815561, 39.142162, 38.820778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.505743, 39.124420, 38.534458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.262552, 38.976200, 38.253586>,  <31.116638, 38.887268, 38.085064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.262552, 38.976200, 38.253586>,  <31.505743, 39.124420, 38.534458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.262552, 38.976200, 38.253586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289945, 0.719699, -0.630845,
		0.739117, -0.587133, -0.330122,
		-0.607978, -0.370551, -0.702178,
		31.080158, 38.865036, 38.042931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.806932, 38.746391, 37.893200>,  <31.505743, 39.124420, 38.534458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.806932, 38.746391, 37.893200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.481850, 38.972404, 37.836292>,  <31.286800, 39.108013, 37.802147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.481850, 38.972404, 37.836292>,  <31.806932, 38.746391, 37.893200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.481850, 38.972404, 37.836292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527075, 0.608826, -0.592894,
		-0.248387, -0.556837, -0.792613,
		-0.812709, 0.565034, -0.142271,
		31.238037, 39.141914, 37.793610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.797689, 38.940247, 37.150124>,  <31.806932, 38.746391, 37.893200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.797689, 38.940247, 37.150124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.605806, 39.221111, 37.360592>,  <31.490677, 39.389629, 37.486874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.605806, 39.221111, 37.360592>,  <31.797689, 38.940247, 37.150124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.605806, 39.221111, 37.360592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093946, 0.637326, -0.764847,
		-0.872385, -0.317471, -0.371695,
		-0.479708, 0.702160, 0.526168,
		31.461893, 39.431759, 37.518444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.294317, 39.331642, 36.696983>,  <31.797689, 38.940247, 37.150124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.294317, 39.331642, 36.696983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.460484, 39.503960, 37.017445>,  <31.560183, 39.607349, 37.209721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.460484, 39.503960, 37.017445>,  <31.294317, 39.331642, 36.696983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.460484, 39.503960, 37.017445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510788, 0.618301, -0.597327,
		-0.752680, 0.657358, 0.036806,
		0.415414, 0.430796, 0.801153,
		31.585108, 39.633198, 37.257790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.338577, 40.102448, 36.665199>,  <31.294317, 39.331642, 36.696983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.338577, 40.102448, 36.665199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.619665, 39.994587, 36.928555>,  <31.788319, 39.929871, 37.086567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.619665, 39.994587, 36.928555>,  <31.338577, 40.102448, 36.665199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.619665, 39.994587, 36.928555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709128, 0.190510, -0.678855,
		0.057625, 0.943925, 0.325093,
		0.702721, -0.269651, 0.658385,
		31.830482, 39.913692, 37.126072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.898331, 40.618050, 36.676331>,  <31.338577, 40.102448, 36.665199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.898331, 40.618050, 36.676331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.040390, 40.261009, 36.787418>,  <32.125626, 40.046783, 36.854073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.040390, 40.261009, 36.787418>,  <31.898331, 40.618050, 36.676331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.040390, 40.261009, 36.787418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699598, 0.056742, -0.712281,
		0.620025, 0.447259, 0.644615,
		0.355150, -0.892603, 0.277720,
		32.146935, 39.993229, 36.870735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.683430, 40.655781, 36.593815>,  <31.898331, 40.618050, 36.676331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.683430, 40.655781, 36.593815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.541924, 40.283192, 36.559834>,  <32.457020, 40.059639, 36.539444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.541924, 40.283192, 36.559834>,  <32.683430, 40.655781, 36.593815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.541924, 40.283192, 36.559834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817878, -0.263993, -0.511257,
		0.453794, -0.250342, 0.855219,
		-0.353761, -0.931470, -0.084951,
		32.435795, 40.003750, 36.534348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.286552, 40.200661, 36.712238>,  <32.683430, 40.655781, 36.593815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.286552, 40.200661, 36.712238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.011787, 40.008392, 36.494209>,  <32.846928, 39.893032, 36.363392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.011787, 40.008392, 36.494209>,  <33.286552, 40.200661, 36.712238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.011787, 40.008392, 36.494209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718483, -0.336426, -0.608769,
		0.109243, -0.809796, 0.576452,
		-0.686911, -0.480675, -0.545073,
		32.805714, 39.864189, 36.330688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.460247, 39.472187, 36.709862>,  <33.286552, 40.200661, 36.712238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.460247, 39.472187, 36.709862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.256241, 39.557304, 36.376488>,  <33.133839, 39.608376, 36.176464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.256241, 39.557304, 36.376488>,  <33.460247, 39.472187, 36.709862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.256241, 39.557304, 36.376488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721496, -0.421711, -0.549185,
		-0.468329, -0.881407, 0.061549,
		-0.510011, 0.212792, -0.833431,
		33.103237, 39.621143, 36.126457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.998070, 39.646812, 36.196251>,  <33.460247, 39.472187, 36.709862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.998070, 39.646812, 36.196251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.793980, 39.355274, 36.013622>,  <33.671528, 39.180351, 35.904045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.793980, 39.355274, 36.013622>,  <33.998070, 39.646812, 36.196251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.793980, 39.355274, 36.013622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520954, -0.684311, 0.510221,
		-0.684311, 0.022472, 0.728844,
		-0.510221, -0.728844, -0.456575,
		33.640915, 39.136620, 35.876648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.018784, 40.365047, 35.797073>,  <33.998070, 39.646812, 36.196251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.018784, 40.365047, 35.797073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.973969, 40.760300, 35.839108>,  <33.947079, 40.997452, 35.864330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.973969, 40.760300, 35.839108>,  <34.018784, 40.365047, 35.797073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.973969, 40.760300, 35.839108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451435, 0.144826, -0.880472,
		-0.885242, -0.051207, -0.462304,
		-0.112040, 0.988131, 0.105089,
		33.940357, 41.056740, 35.870636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.678860, 40.168327, 35.228771>,  <34.018784, 40.365047, 35.797073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.678860, 40.168327, 35.228771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.544373, 39.793129, 35.262512>,  <33.463680, 39.568008, 35.282757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.544373, 39.793129, 35.262512>,  <33.678860, 40.168327, 35.228771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.544373, 39.793129, 35.262512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849143, 0.340664, 0.403615,
		-0.407326, 0.064077, -0.911032,
		-0.336218, -0.937999, 0.084351,
		33.443508, 39.511730, 35.287819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.038223, 39.980053, 34.860542>,  <33.678860, 40.168327, 35.228771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.038223, 39.980053, 34.860542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056782, 39.753838, 35.189911>,  <33.067917, 39.618111, 35.387531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056782, 39.753838, 35.189911>,  <33.038223, 39.980053, 34.860542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.056782, 39.753838, 35.189911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861421, 0.394705, 0.319628,
		-0.505768, -0.724140, -0.468849,
		0.046398, -0.565534, 0.823419,
		33.070702, 39.584179, 35.436935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.347633, 39.784470, 35.058640>,  <33.038223, 39.980053, 34.860542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.347633, 39.784470, 35.058640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.564651, 39.716511, 35.387707>,  <32.694862, 39.675735, 35.585148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.564651, 39.716511, 35.387707>,  <32.347633, 39.784470, 35.058640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.564651, 39.716511, 35.387707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787190, 0.239015, 0.568510,
		-0.293218, -0.956037, -0.004064,
		0.542545, -0.169896, 0.822666,
		32.727417, 39.665543, 35.634506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.847475, 39.437092, 35.494713>,  <32.347633, 39.784470, 35.058640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.847475, 39.437092, 35.494713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.136391, 39.566425, 35.739258>,  <32.309738, 39.644024, 35.885983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.136391, 39.566425, 35.739258>,  <31.847475, 39.437092, 35.494713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.136391, 39.566425, 35.739258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691388, 0.359110, 0.626915,
		-0.016844, -0.875499, 0.482927,
		0.722287, 0.323330, 0.611359,
		32.353077, 39.663425, 35.922665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.835575, 39.033192, 36.065353>,  <31.847475, 39.437092, 35.494713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.835575, 39.033192, 36.065353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.007301, 39.370655, 36.194309>,  <32.110336, 39.573132, 36.271683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.007301, 39.370655, 36.194309>,  <31.835575, 39.033192, 36.065353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.007301, 39.370655, 36.194309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644707, 0.036290, 0.763568,
		0.632488, -0.535657, 0.559491,
		0.429315, 0.843655, 0.322389,
		32.136097, 39.623753, 36.291027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.698652, 38.412991, 36.580265>,  <31.835575, 39.033192, 36.065353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.698652, 38.412991, 36.580265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.839300, 38.081436, 36.754307>,  <31.923689, 37.882504, 36.858730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.839300, 38.081436, 36.754307>,  <31.698652, 38.412991, 36.580265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.839300, 38.081436, 36.754307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316266, -0.542637, -0.778152,
		0.881100, 0.136007, -0.452951,
		0.351622, -0.828883, 0.435103,
		31.944786, 37.832771, 36.884838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.083042, 38.117474, 36.091354>,  <31.698652, 38.412991, 36.580265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.083042, 38.117474, 36.091354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.944284, 37.836132, 36.339535>,  <31.861029, 37.667328, 36.488441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.944284, 37.836132, 36.339535>,  <32.083042, 38.117474, 36.091354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.944284, 37.836132, 36.339535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165754, -0.605144, -0.778670,
		0.923140, -0.372962, 0.093341,
		-0.346899, -0.703349, 0.620452,
		31.840216, 37.625126, 36.525669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.391136, 37.444530, 35.847496>,  <32.083042, 38.117474, 36.091354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.391136, 37.444530, 35.847496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.044170, 37.397903, 36.040989>,  <31.835991, 37.369926, 36.157085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.044170, 37.397903, 36.040989>,  <32.391136, 37.444530, 35.847496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.044170, 37.397903, 36.040989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262970, -0.717917, -0.644548,
		0.422416, -0.686300, 0.592079,
		-0.867416, -0.116568, 0.483736,
		31.783945, 37.362934, 36.186111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.314690, 36.796154, 36.264904>,  <32.391136, 37.444530, 35.847496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.314690, 36.796154, 36.264904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.999386, 36.946922, 36.070347>,  <31.810204, 37.037384, 35.953613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.999386, 36.946922, 36.070347>,  <32.314690, 36.796154, 36.264904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.999386, 36.946922, 36.070347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010788, -0.781861, -0.623359,
		-0.615248, -0.496616, 0.612243,
		-0.788260, 0.376916, -0.486396,
		31.762909, 37.059998, 35.924427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.756023, 36.316589, 36.151722>,  <32.314690, 36.796154, 36.264904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.756023, 36.316589, 36.151722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.710224, 36.590683, 35.864014>,  <31.682745, 36.755138, 35.691387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.710224, 36.590683, 35.864014>,  <31.756023, 36.316589, 36.151722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.710224, 36.590683, 35.864014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119584, -0.728274, -0.674771,
		-0.986200, 0.008753, 0.165328,
		-0.114498, 0.685230, -0.719270,
		31.675875, 36.796253, 35.648232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.161217, 36.283913, 35.754173>,  <31.756023, 36.316589, 36.151722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.161217, 36.283913, 35.754173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.355556, 36.491650, 35.472965>,  <31.472160, 36.616291, 35.304241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.355556, 36.491650, 35.472965>,  <31.161217, 36.283913, 35.754173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.355556, 36.491650, 35.472965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167156, -0.734274, -0.657952,
		-0.857911, 0.437178, -0.269935,
		0.485848, 0.519342, -0.703018,
		31.501310, 36.647453, 35.262058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.802750, 36.305729, 35.177658>,  <31.161217, 36.283913, 35.754173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.802750, 36.305729, 35.177658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.168072, 36.380051, 35.032688>,  <31.387264, 36.424644, 34.945705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.168072, 36.380051, 35.032688>,  <30.802750, 36.305729, 35.177658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.168072, 36.380051, 35.032688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192327, -0.587652, -0.785923,
		-0.359005, 0.787492, -0.500971,
		0.913305, 0.185800, -0.362426,
		31.442062, 36.435791, 34.923962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.729462, 36.178616, 34.488251>,  <30.802750, 36.305729, 35.177658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.729462, 36.178616, 34.488251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.128128, 36.180481, 34.520821>,  <31.367329, 36.181599, 34.540363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.128128, 36.180481, 34.520821>,  <30.729462, 36.178616, 34.488251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.128128, 36.180481, 34.520821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068289, -0.593574, -0.801877,
		0.044597, 0.804766, -0.591915,
		0.996668, 0.004660, 0.081428,
		31.427128, 36.181877, 34.545250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.997677, 36.231396, 33.826962>,  <30.729462, 36.178616, 34.488251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.997677, 36.231396, 33.826962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.333384, 36.117279, 34.012104>,  <31.534807, 36.048809, 34.123192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.333384, 36.117279, 34.012104>,  <30.997677, 36.231396, 33.826962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.333384, 36.117279, 34.012104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158633, -0.685769, -0.710321,
		0.520061, 0.669575, -0.530288,
		0.839269, -0.285289, 0.462859,
		31.585165, 36.031693, 34.150963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.520460, 36.219231, 33.278870>,  <30.997677, 36.231396, 33.826962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.520460, 36.219231, 33.278870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.695026, 35.999844, 33.564167>,  <31.799767, 35.868210, 33.735348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.695026, 35.999844, 33.564167>,  <31.520460, 36.219231, 33.278870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.695026, 35.999844, 33.564167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468477, -0.538271, -0.700567,
		0.768160, 0.639878, 0.022035,
		0.436417, -0.548470, 0.713247,
		31.825951, 35.835304, 33.778141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.222263, 36.108353, 33.145172>,  <31.520460, 36.219231, 33.278870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.222263, 36.108353, 33.145172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.131115, 35.794689, 33.376057>,  <32.076427, 35.606491, 33.514587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.131115, 35.794689, 33.376057>,  <32.222263, 36.108353, 33.145172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.131115, 35.794689, 33.376057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413934, -0.614584, -0.671525,
		0.881325, 0.085906, 0.464635,
		-0.227870, -0.784160, 0.577207,
		32.062756, 35.559441, 33.549217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.768940, 35.628242, 33.013996>,  <32.222263, 36.108353, 33.145172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.768940, 35.628242, 33.013996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.475094, 35.414223, 33.180878>,  <32.298786, 35.285809, 33.281006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.475094, 35.414223, 33.180878>,  <32.768940, 35.628242, 33.013996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.475094, 35.414223, 33.180878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231713, -0.775781, -0.586918,
		0.637692, -0.334486, 0.693879,
		-0.734614, -0.535054, 0.417204,
		32.254711, 35.253708, 33.306038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.080074, 35.061932, 33.356136>,  <32.768940, 35.628242, 33.013996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.080074, 35.061932, 33.356136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.701447, 34.948689, 33.294353>,  <32.474270, 34.880741, 33.257286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.701447, 34.948689, 33.294353>,  <33.080074, 35.061932, 33.356136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.701447, 34.948689, 33.294353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322080, -0.854282, -0.408002,
		-0.016438, -0.435949, 0.899821,
		-0.946570, -0.283108, -0.154453,
		32.417477, 34.863758, 33.248016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.938683, 34.392456, 33.616257>,  <33.080074, 35.061932, 33.356136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.938683, 34.392456, 33.616257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.643925, 34.440208, 33.350105>,  <32.467068, 34.468861, 33.190414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.643925, 34.440208, 33.350105>,  <32.938683, 34.392456, 33.616257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.643925, 34.440208, 33.350105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362762, -0.760726, -0.538237,
		-0.570425, -0.638001, 0.517272,
		-0.736898, 0.119377, -0.665380,
		32.422855, 34.476021, 33.150490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.810463, 33.671051, 33.325706>,  <32.938683, 34.392456, 33.616257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.810463, 33.671051, 33.325706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.634350, 33.898087, 33.047428>,  <32.528683, 34.034309, 32.880463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.634350, 33.898087, 33.047428>,  <32.810463, 33.671051, 33.325706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.634350, 33.898087, 33.047428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325607, -0.621157, -0.712843,
		-0.836737, -0.540378, 0.088675,
		-0.440286, 0.567588, -0.695696,
		32.502262, 34.068363, 32.838718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.479206, 33.257111, 32.814552>,  <32.810463, 33.671051, 33.325706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.479206, 33.257111, 32.814552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.488636, 33.594299, 32.599575>,  <32.494293, 33.796612, 32.470589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.488636, 33.594299, 32.599575>,  <32.479206, 33.257111, 32.814552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.488636, 33.594299, 32.599575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129236, -0.535654, -0.834489,
		-0.991333, -0.049785, -0.121570,
		0.023574, 0.842969, -0.537446,
		32.495708, 33.847191, 32.438343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.231071, 33.041618, 32.247459>,  <32.479206, 33.257111, 32.814552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.231071, 33.041618, 32.247459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.414715, 33.377216, 32.130630>,  <32.524899, 33.578575, 32.060535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.414715, 33.377216, 32.130630>,  <32.231071, 33.041618, 32.247459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.414715, 33.377216, 32.130630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297156, -0.454859, -0.839525,
		-0.837210, 0.298640, -0.458142,
		0.459106, 0.838998, -0.292069,
		32.552448, 33.628914, 32.043011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.047543, 33.099449, 31.554758>,  <32.231071, 33.041618, 32.247459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.047543, 33.099449, 31.554758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.371494, 33.331509, 31.589445>,  <32.565865, 33.470745, 31.610256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.371494, 33.331509, 31.589445>,  <32.047543, 33.099449, 31.554758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.371494, 33.331509, 31.589445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282270, -0.255847, -0.924590,
		-0.514211, 0.773287, -0.370964,
		0.809883, 0.580146, 0.086716,
		32.614460, 33.505554, 31.615459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.066231, 33.498333, 30.972788>,  <32.047543, 33.099449, 31.554758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.066231, 33.498333, 30.972788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.436138, 33.484615, 31.124380>,  <32.658081, 33.476383, 31.215336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.436138, 33.484615, 31.124380>,  <32.066231, 33.498333, 30.972788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.436138, 33.484615, 31.124380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351594, -0.303925, -0.885444,
		0.145548, 0.952078, -0.269003,
		0.924769, -0.034295, 0.378980,
		32.713570, 33.474327, 31.238073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.409000, 33.894997, 30.540379>,  <32.066231, 33.498333, 30.972788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.409000, 33.894997, 30.540379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.648563, 33.618649, 30.702368>,  <32.792301, 33.452839, 30.799561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.648563, 33.618649, 30.702368>,  <32.409000, 33.894997, 30.540379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.648563, 33.618649, 30.702368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388349, -0.191694, -0.901353,
		0.700350, 0.697102, 0.153491,
		0.598912, -0.690871, 0.404972,
		32.828236, 33.411388, 30.823860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.892727, 33.846062, 30.068943>,  <32.409000, 33.894997, 30.540379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.892727, 33.846062, 30.068943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.972031, 33.538578, 30.312181>,  <33.019611, 33.354088, 30.458124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.972031, 33.538578, 30.312181>,  <32.892727, 33.846062, 30.068943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.972031, 33.538578, 30.312181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451775, -0.478909, -0.752692,
		0.869824, 0.423949, 0.252337,
		0.198257, -0.768709, 0.608096,
		33.031509, 33.307964, 30.494610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.577957, 33.726913, 29.979765>,  <32.892727, 33.846062, 30.068943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.577957, 33.726913, 29.979765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.404461, 33.391243, 30.111006>,  <33.300362, 33.189838, 30.189751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.404461, 33.391243, 30.111006>,  <33.577957, 33.726913, 29.979765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.404461, 33.391243, 30.111006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453994, -0.518075, -0.724906,
		0.778306, -0.165464, 0.605691,
		-0.433739, -0.839178, 0.328101,
		33.274338, 33.139488, 30.209436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.078602, 33.206863, 29.885292>,  <33.577957, 33.726913, 29.979765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.078602, 33.206863, 29.885292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.737129, 32.999405, 29.904200>,  <33.532246, 32.874928, 29.915545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.737129, 32.999405, 29.904200>,  <34.078602, 33.206863, 29.885292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.737129, 32.999405, 29.904200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340285, -0.624195, -0.703268,
		0.394255, -0.584280, 0.709351,
		-0.853679, -0.518649, 0.047270,
		33.481026, 32.843811, 29.918381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.339104, 32.507698, 29.779016>,  <34.078602, 33.206863, 29.885292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.339104, 32.507698, 29.779016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.951939, 32.526413, 29.680262>,  <33.719639, 32.537640, 29.621008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.951939, 32.526413, 29.680262>,  <34.339104, 32.507698, 29.779016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.951939, 32.526413, 29.680262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157275, -0.653484, -0.740421,
		-0.195976, -0.755493, 0.625159,
		-0.967914, 0.046783, -0.246888,
		33.661564, 32.540447, 29.606195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.212822, 31.838919, 29.658737>,  <34.339104, 32.507698, 29.779016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.212822, 31.838919, 29.658737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.924927, 32.051113, 29.479601>,  <33.752190, 32.178429, 29.372120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.924927, 32.051113, 29.479601>,  <34.212822, 31.838919, 29.658737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.924927, 32.051113, 29.479601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184401, -0.475825, -0.859992,
		-0.669309, -0.701550, 0.244647,
		-0.719737, 0.530488, -0.447841,
		33.709007, 32.210258, 29.345249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.923721, 31.400240, 29.112206>,  <34.212822, 31.838919, 29.658737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.923721, 31.400240, 29.112206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.793766, 31.763912, 29.008024>,  <33.715794, 31.982117, 28.945517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.793766, 31.763912, 29.008024>,  <33.923721, 31.400240, 29.112206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.793766, 31.763912, 29.008024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131459, -0.229304, -0.964437,
		-0.936571, -0.347575, -0.045022,
		-0.324890, 0.909182, -0.260451,
		33.696301, 32.036667, 28.929890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.469585, 31.279806, 28.593838>,  <33.923721, 31.400240, 29.112206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.469585, 31.279806, 28.593838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.586266, 31.661800, 28.572271>,  <33.656273, 31.890997, 28.559332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.586266, 31.661800, 28.572271>,  <33.469585, 31.279806, 28.593838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.586266, 31.661800, 28.572271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101176, -0.086855, -0.991070,
		-0.951142, 0.283644, -0.121958,
		0.291704, 0.954988, -0.053914,
		33.673779, 31.948298, 28.556097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.977768, 31.627895, 28.188484>,  <33.469585, 31.279806, 28.593838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.977768, 31.627895, 28.188484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.299488, 31.865559, 28.191874>,  <33.492519, 32.008156, 28.193907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.299488, 31.865559, 28.191874>,  <32.977768, 31.627895, 28.188484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.299488, 31.865559, 28.191874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009854, 0.027596, -0.999571,
		-0.594138, 0.803874, 0.028051,
		0.804303, 0.594160, 0.008474,
		33.540779, 32.043808, 28.194416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.012463, 31.934649, 27.529985>,  <32.977768, 31.627895, 28.188484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.012463, 31.934649, 27.529985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.397022, 31.997171, 27.620562>,  <33.627758, 32.034687, 27.674908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.397022, 31.997171, 27.620562>,  <33.012463, 31.934649, 27.529985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.397022, 31.997171, 27.620562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227303, 0.012568, -0.973743,
		-0.155051, 0.987628, -0.023447,
		0.961401, 0.156309, 0.226439,
		33.685444, 32.044064, 27.688494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.316761, 32.458267, 26.914043>,  <33.012463, 31.934649, 27.529985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.316761, 32.458267, 26.914043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.620567, 32.296635, 27.117945>,  <33.802853, 32.199654, 27.240286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.620567, 32.296635, 27.117945>,  <33.316761, 32.458267, 26.914043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.620567, 32.296635, 27.117945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516341, -0.102112, -0.850274,
		0.395634, 0.909005, 0.131089,
		0.759517, -0.404083, 0.509755,
		33.848423, 32.175411, 27.270872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.881420, 32.688129, 26.598614>,  <33.316761, 32.458267, 26.914043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.881420, 32.688129, 26.598614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.023445, 32.356506, 26.771397>,  <34.108662, 32.157532, 26.875067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.023445, 32.356506, 26.771397>,  <33.881420, 32.688129, 26.598614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.023445, 32.356506, 26.771397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442952, -0.257704, -0.858709,
		0.823240, 0.496232, 0.275734,
		0.355062, -0.829061, 0.431960,
		34.129963, 32.107788, 26.900984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.548691, 32.741745, 26.465797>,  <33.881420, 32.688129, 26.598614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.548691, 32.741745, 26.465797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.475025, 32.356026, 26.541912>,  <34.430828, 32.124592, 26.587582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.475025, 32.356026, 26.541912>,  <34.548691, 32.741745, 26.465797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.475025, 32.356026, 26.541912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367486, -0.247111, -0.896600,
		0.911613, -0.095191, 0.399875,
		-0.184162, -0.964300, 0.190288,
		34.419777, 32.066734, 26.598999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.185852, 32.323364, 26.573654>,  <34.548691, 32.741745, 26.465797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.185852, 32.323364, 26.573654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.883118, 32.124149, 26.404346>,  <34.701477, 32.004620, 26.302761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.883118, 32.124149, 26.404346>,  <35.185852, 32.323364, 26.573654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.883118, 32.124149, 26.404346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601518, -0.277406, -0.749147,
		0.255687, -0.821586, 0.509530,
		-0.756836, -0.498039, -0.423269,
		34.656067, 31.974737, 26.277365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.535366, 31.713200, 26.274281>,  <35.185852, 32.323364, 26.573654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.535366, 31.713200, 26.274281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175724, 31.738861, 26.101080>,  <34.959938, 31.754257, 25.997160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175724, 31.738861, 26.101080>,  <35.535366, 31.713200, 26.274281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.175724, 31.738861, 26.101080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402376, -0.268318, -0.875271,
		-0.172333, -0.961192, 0.215433,
		-0.899108, 0.064153, -0.433001,
		34.905991, 31.758106, 25.971180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.569740, 31.173258, 25.773912>,  <35.535366, 31.713200, 26.274281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.569740, 31.173258, 25.773912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.278011, 31.423656, 25.663488>,  <35.102974, 31.573896, 25.597233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.278011, 31.423656, 25.663488>,  <35.569740, 31.173258, 25.773912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.278011, 31.423656, 25.663488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291826, -0.080315, -0.953094,
		-0.618805, -0.775679, -0.124106,
		-0.729327, 0.625997, -0.276062,
		35.059212, 31.611456, 25.580669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.254005, 30.751251, 25.283810>,  <35.569740, 31.173258, 25.773912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.254005, 30.751251, 25.283810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.155476, 31.132906, 25.215757>,  <35.096359, 31.361898, 25.174927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.155476, 31.132906, 25.215757>,  <35.254005, 30.751251, 25.283810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.155476, 31.132906, 25.215757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405667, -0.057920, -0.912184,
		-0.880204, -0.293709, -0.372796,
		-0.246324, 0.954139, -0.170130,
		35.081577, 31.419147, 25.164719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.001053, 30.704706, 24.658951>,  <35.254005, 30.751251, 25.283810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.001053, 30.704706, 24.658951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.056248, 31.098127, 24.705570>,  <35.089367, 31.334179, 24.733541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.056248, 31.098127, 24.705570>,  <35.001053, 30.704706, 24.658951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.056248, 31.098127, 24.705570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452149, 0.042141, -0.890947,
		-0.881204, 0.175641, -0.438896,
		0.137991, 0.983552, 0.116551,
		35.097645, 31.393192, 24.740536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.696491, 31.042953, 24.095739>,  <35.001053, 30.704706, 24.658951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.696491, 31.042953, 24.095739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.977867, 31.285397, 24.244225>,  <35.146694, 31.430862, 24.333315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.977867, 31.285397, 24.244225>,  <34.696491, 31.042953, 24.095739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.977867, 31.285397, 24.244225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456877, 0.014473, -0.889412,
		-0.544454, 0.795250, -0.266737,
		0.703444, 0.606110, 0.371211,
		35.188900, 31.467230, 24.355587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846645, 31.395723, 23.557018>,  <34.696491, 31.042953, 24.095739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.846645, 31.395723, 23.557018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.158695, 31.502041, 23.783560>,  <35.345924, 31.565830, 23.919485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.158695, 31.502041, 23.783560>,  <34.846645, 31.395723, 23.557018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.158695, 31.502041, 23.783560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567674, 0.079761, -0.819381,
		-0.262959, 0.960725, -0.088660,
		0.780128, 0.265793, 0.566352,
		35.392735, 31.581779, 23.953466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.114441, 32.017147, 23.292175>,  <34.846645, 31.395723, 23.557018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.114441, 32.017147, 23.292175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.409691, 31.814785, 23.470718>,  <35.586842, 31.693367, 23.577845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.409691, 31.814785, 23.470718>,  <35.114441, 32.017147, 23.292175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.409691, 31.814785, 23.470718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547519, 0.062604, -0.834448,
		0.394210, 0.860313, 0.323203,
		0.738121, -0.505908, 0.446358,
		35.631126, 31.663013, 23.604626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.726551, 32.487610, 23.138817>,  <35.114441, 32.017147, 23.292175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.726551, 32.487610, 23.138817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.859257, 32.129345, 23.257286>,  <35.938881, 31.914385, 23.328367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.859257, 32.129345, 23.257286>,  <35.726551, 32.487610, 23.138817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.859257, 32.129345, 23.257286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748418, 0.058772, -0.660619,
		0.574286, 0.440830, 0.689830,
		0.331763, -0.895664, 0.296173,
		35.958786, 31.860645, 23.346138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.386036, 32.559013, 23.185822>,  <35.726551, 32.487610, 23.138817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.386036, 32.559013, 23.185822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.333595, 32.163692, 23.154646>,  <36.302132, 31.926500, 23.135941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.333595, 32.163692, 23.154646>,  <36.386036, 32.559013, 23.185822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.333595, 32.163692, 23.154646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487486, 0.004189, -0.873121,
		0.863232, -0.152463, 0.481233,
		-0.131103, -0.988300, -0.077939,
		36.294266, 31.867203, 23.131264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.994438, 32.240955, 22.972565>,  <36.386036, 32.559013, 23.185822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.994438, 32.240955, 22.972565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.741535, 31.950411, 22.864748>,  <36.589794, 31.776085, 22.800058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.741535, 31.950411, 22.864748>,  <36.994438, 32.240955, 22.972565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.741535, 31.950411, 22.864748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428532, -0.038024, -0.902726,
		0.645455, -0.686262, 0.335309,
		-0.632257, -0.726360, -0.269542,
		36.551857, 31.732504, 22.783886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.462345, 31.638622, 22.677467>,  <36.994438, 32.240955, 22.972565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.462345, 31.638622, 22.677467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.083378, 31.620205, 22.550806>,  <36.855995, 31.609156, 22.474810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.083378, 31.620205, 22.550806>,  <37.462345, 31.638622, 22.677467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.083378, 31.620205, 22.550806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319572, -0.085891, -0.943661,
		0.016251, -0.995240, 0.096089,
		-0.947423, -0.046043, -0.316655,
		36.799152, 31.606392, 22.455811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.495338, 31.044474, 22.237167>,  <37.462345, 31.638622, 22.677467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.495338, 31.044474, 22.237167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.141155, 31.205931, 22.145052>,  <36.928646, 31.302805, 22.089783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.141155, 31.205931, 22.145052>,  <37.495338, 31.044474, 22.237167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.141155, 31.205931, 22.145052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235329, -0.037846, -0.971178,
		-0.400724, -0.914134, -0.061478,
		-0.885461, 0.403642, -0.230288,
		36.875519, 31.327023, 22.075966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.223095, 30.610439, 21.790146>,  <37.495338, 31.044474, 22.237167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.223095, 30.610439, 21.790146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.013187, 30.942055, 21.712873>,  <36.887245, 31.141024, 21.666510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.013187, 30.942055, 21.712873>,  <37.223095, 30.610439, 21.790146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.013187, 30.942055, 21.712873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231354, -0.079498, -0.969616,
		-0.819205, -0.553514, -0.150083,
		-0.524765, 0.829036, -0.193182,
		36.855759, 31.190765, 21.654919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.894726, 30.493988, 21.170721>,  <37.223095, 30.610439, 21.790146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.894726, 30.493988, 21.170721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.851200, 30.889875, 21.207855>,  <36.825085, 31.127407, 21.230135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.851200, 30.889875, 21.207855>,  <36.894726, 30.493988, 21.170721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.851200, 30.889875, 21.207855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047001, 0.098407, -0.994036,
		-0.992950, -0.103805, -0.057226,
		-0.108817, 0.989717, 0.092835,
		36.818554, 31.186790, 21.235706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.193188, 30.862242, 20.775845>,  <36.894726, 30.493988, 21.170721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.193188, 30.862242, 20.775845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.554321, 31.029352, 20.816532>,  <36.771004, 31.129618, 20.840944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.554321, 31.029352, 20.816532>,  <36.193188, 30.862242, 20.775845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.554321, 31.029352, 20.816532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099861, 0.026370, -0.994652,
		-0.418224, 0.908167, -0.017912,
		0.902838, 0.417776, 0.101719,
		36.825172, 31.154684, 20.847048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.292709, 31.677664, 20.505817>,  <36.193188, 30.862242, 20.775845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.292709, 31.677664, 20.505817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.580956, 31.400690, 20.491703>,  <36.753902, 31.234507, 20.483234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.580956, 31.400690, 20.491703>,  <36.292709, 31.677664, 20.505817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.580956, 31.400690, 20.491703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008415, 0.059627, -0.998185,
		0.693281, 0.719013, 0.048796,
		0.720618, -0.692434, -0.035288,
		36.797142, 31.192961, 20.481117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.598156, 32.283165, 20.134851>,  <36.292709, 31.677664, 20.505817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.598156, 32.283165, 20.134851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.510612, 32.673077, 20.117361>,  <36.458088, 32.907024, 20.106867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.510612, 32.673077, 20.117361>,  <36.598156, 32.283165, 20.134851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.510612, 32.673077, 20.117361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505191, -0.151536, -0.849599,
		-0.834795, -0.163852, 0.525613,
		-0.218858, 0.974777, -0.043725,
		36.444954, 32.965511, 20.104244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.848255, 32.334122, 19.954287>,  <36.598156, 32.283165, 20.134851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.848255, 32.334122, 19.954287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.999348, 32.691860, 19.858404>,  <36.090004, 32.906506, 19.800875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.999348, 32.691860, 19.858404>,  <35.848255, 32.334122, 19.954287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.999348, 32.691860, 19.858404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388452, -0.081931, -0.917819,
		-0.840489, 0.439805, 0.316463,
		0.377734, 0.894348, -0.239706,
		36.112667, 32.960163, 19.786493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.404507, 32.899990, 19.615885>,  <35.848255, 32.334122, 19.954287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.404507, 32.899990, 19.615885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.785282, 32.935291, 19.498568>,  <36.013748, 32.956470, 19.428177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.785282, 32.935291, 19.498568>,  <35.404507, 32.899990, 19.615885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.785282, 32.935291, 19.498568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286573, -0.081309, -0.954602,
		-0.108094, 0.992774, -0.052111,
		0.951941, 0.088253, -0.293292,
		36.070866, 32.961765, 19.410580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.354767, 33.377014, 19.098265>,  <35.404507, 32.899990, 19.615885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.354767, 33.377014, 19.098265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.675812, 33.144039, 19.046749>,  <35.868439, 33.004253, 19.015839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.675812, 33.144039, 19.046749>,  <35.354767, 33.377014, 19.098265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.675812, 33.144039, 19.046749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205329, -0.067044, -0.976394,
		0.560052, 0.810108, -0.173401,
		0.802610, -0.582435, -0.128791,
		35.916595, 32.969307, 19.008112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.968861, 33.521229, 18.575041>,  <35.354767, 33.377014, 19.098265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.968861, 33.521229, 18.575041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.956161, 33.122139, 18.598862>,  <35.948544, 32.882687, 18.613155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.956161, 33.122139, 18.598862>,  <35.968861, 33.521229, 18.575041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.956161, 33.122139, 18.598862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075542, -0.057018, -0.995511,
		0.996637, -0.036101, -0.073560,
		-0.031744, -0.997720, 0.059554,
		35.946640, 32.822823, 18.616728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.780258, 33.580025, 18.705614>,  <35.968861, 33.521229, 18.575041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.780258, 33.580025, 18.705614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.514450, 33.441868, 18.970678>,  <36.354965, 33.358974, 19.129717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.514450, 33.441868, 18.970678>,  <36.780258, 33.580025, 18.705614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.514450, 33.441868, 18.970678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385516, 0.601203, 0.699952,
		-0.640149, 0.720599, -0.266359,
		-0.664521, -0.345388, 0.662661,
		36.315094, 33.338253, 19.169477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795849, 34.008610, 19.340656>,  <36.780258, 33.580025, 18.705614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.795849, 34.008610, 19.340656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.582443, 33.707497, 19.494890>,  <36.454399, 33.526829, 19.587431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.582443, 33.707497, 19.494890>,  <36.795849, 34.008610, 19.340656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.582443, 33.707497, 19.494890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231638, 0.308411, 0.922619,
		-0.813455, 0.581546, 0.009833,
		-0.533513, -0.752786, 0.385587,
		36.422390, 33.481659, 19.610567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.456650, 34.312462, 19.893536>,  <36.795849, 34.008610, 19.340656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.456650, 34.312462, 19.893536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.461937, 33.916035, 19.946613>,  <36.465107, 33.678177, 19.978460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.461937, 33.916035, 19.946613>,  <36.456650, 34.312462, 19.893536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.461937, 33.916035, 19.946613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190082, 0.132777, 0.972748,
		-0.981679, 0.012368, 0.190139,
		0.013215, -0.991069, 0.132695,
		36.465900, 33.618713, 19.986422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891953, 34.079422, 20.414213>,  <36.456650, 34.312462, 19.893536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.891953, 34.079422, 20.414213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.188114, 33.810604, 20.409115>,  <36.365810, 33.649315, 20.406055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.188114, 33.810604, 20.409115>,  <35.891953, 34.079422, 20.414213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.188114, 33.810604, 20.409115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224130, 0.228960, 0.947282,
		-0.633696, -0.704227, 0.320147,
		0.740402, -0.672043, -0.012748,
		36.410236, 33.608990, 20.405291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.721077, 33.634521, 21.034567>,  <35.891953, 34.079422, 20.414213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.721077, 33.634521, 21.034567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.102810, 33.536114, 20.966778>,  <36.331852, 33.477070, 20.926104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.102810, 33.536114, 20.966778>,  <35.721077, 33.634521, 21.034567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.102810, 33.536114, 20.966778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191082, 0.066613, 0.979311,
		-0.229639, -0.966974, 0.110581,
		0.954334, -0.246018, -0.169474,
		36.389111, 33.462307, 20.915936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.849129, 33.017681, 21.416958>,  <35.721077, 33.634521, 21.034567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.849129, 33.017681, 21.416958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.186703, 33.223236, 21.355396>,  <36.389248, 33.346569, 21.318460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.186703, 33.223236, 21.355396>,  <35.849129, 33.017681, 21.416958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.186703, 33.223236, 21.355396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142972, 0.061047, 0.987842,
		0.517039, -0.855681, -0.021953,
		0.843938, 0.513891, -0.153902,
		36.439884, 33.377403, 21.309225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.266075, 32.913818, 21.960690>,  <35.849129, 33.017681, 21.416958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.266075, 32.913818, 21.960690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.474522, 33.218475, 21.806629>,  <36.599590, 33.401268, 21.714193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.474522, 33.218475, 21.806629>,  <36.266075, 32.913818, 21.960690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.474522, 33.218475, 21.806629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230901, 0.308627, 0.922732,
		0.821656, -0.569785, -0.015032,
		0.521120, 0.761640, -0.385149,
		36.630859, 33.446968, 21.691084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.840645, 32.957340, 22.427412>,  <36.266075, 32.913818, 21.960690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.840645, 32.957340, 22.427412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.815437, 33.308937, 22.238352>,  <36.800312, 33.519897, 22.124916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.815437, 33.308937, 22.238352>,  <36.840645, 32.957340, 22.427412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.815437, 33.308937, 22.238352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276223, 0.470451, 0.838080,
		0.959025, -0.077743, -0.272445,
		-0.063017, 0.878995, -0.472648,
		36.796532, 33.572636, 22.096558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.425446, 33.323376, 22.747923>,  <36.840645, 32.957340, 22.427412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.425446, 33.323376, 22.747923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.175537, 33.594673, 22.593182>,  <37.025593, 33.757450, 22.500338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.175537, 33.594673, 22.593182>,  <37.425446, 33.323376, 22.747923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.175537, 33.594673, 22.593182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157813, 0.594911, 0.788147,
		0.764696, 0.431359, -0.478717,
		-0.624768, 0.678240, -0.386852,
		36.988106, 33.798145, 22.477125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712265, 34.047443, 22.874788>,  <37.425446, 33.323376, 22.747923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.712265, 34.047443, 22.874788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.332043, 34.148964, 22.803196>,  <37.103909, 34.209877, 22.760241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.332043, 34.148964, 22.803196>,  <37.712265, 34.047443, 22.874788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.332043, 34.148964, 22.803196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044365, 0.681376, 0.730588,
		0.307376, 0.686522, -0.658944,
		-0.950553, 0.253799, -0.178981,
		37.046875, 34.225105, 22.749502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.755821, 34.730423, 22.934509>,  <37.712265, 34.047443, 22.874788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.755821, 34.730423, 22.934509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.370060, 34.637787, 22.985559>,  <37.138603, 34.582203, 23.016190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.370060, 34.637787, 22.985559>,  <37.755821, 34.730423, 22.934509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.370060, 34.637787, 22.985559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070479, 0.690309, 0.720074,
		-0.254866, 0.685447, -0.682059,
		-0.964404, -0.231594, 0.127627,
		37.080738, 34.568310, 23.023848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305504, 35.285721, 22.925438>,  <37.755821, 34.730423, 22.934509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.305504, 35.285721, 22.925438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.104324, 35.020897, 23.147686>,  <36.983616, 34.862003, 23.281034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.104324, 35.020897, 23.147686>,  <37.305504, 35.285721, 22.925438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.104324, 35.020897, 23.147686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130068, 0.693501, 0.708617,
		-0.854471, 0.284133, -0.434912,
		-0.502953, -0.662061, 0.555620,
		36.953438, 34.822277, 23.314371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.895260, 35.754848, 23.363695>,  <37.305504, 35.285721, 22.925438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.895260, 35.754848, 23.363695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.861340, 35.392254, 23.529146>,  <36.840988, 35.174698, 23.628418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.861340, 35.392254, 23.529146>,  <36.895260, 35.754848, 23.363695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.861340, 35.392254, 23.529146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180293, 0.422233, 0.888377,
		-0.979950, 0.000764, -0.199240,
		-0.084805, -0.906487, 0.413629,
		36.835899, 35.120308, 23.653234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.336597, 35.758984, 23.759428>,  <36.895260, 35.754848, 23.363695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.336597, 35.758984, 23.759428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.534557, 35.453972, 23.926098>,  <36.653332, 35.270966, 24.026100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.534557, 35.453972, 23.926098>,  <36.336597, 35.758984, 23.759428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.534557, 35.453972, 23.926098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391726, 0.232246, 0.890288,
		-0.775645, -0.603825, -0.183766,
		0.494899, -0.762533, 0.416674,
		36.683029, 35.225212, 24.051100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.851791, 35.451916, 24.217319>,  <36.336597, 35.758984, 23.759428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.851791, 35.451916, 24.217319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.202869, 35.305809, 24.341406>,  <36.413517, 35.218143, 24.415857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.202869, 35.305809, 24.341406>,  <35.851791, 35.451916, 24.217319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.202869, 35.305809, 24.341406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269419, 0.159241, 0.949766,
		-0.396317, -0.917182, 0.041355,
		0.877694, -0.365266, 0.310216,
		36.466179, 35.196228, 24.434471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.633194, 35.077770, 24.698833>,  <35.851791, 35.451916, 24.217319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.633194, 35.077770, 24.698833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.013653, 35.179985, 24.768133>,  <36.241928, 35.241314, 24.809713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.013653, 35.179985, 24.768133>,  <35.633194, 35.077770, 24.698833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.013653, 35.179985, 24.768133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182127, 0.011310, 0.983210,
		0.249289, -0.966732, 0.057298,
		0.951149, 0.255539, 0.173249,
		36.298996, 35.256645, 24.820108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.930847, 34.527328, 25.302404>,  <35.633194, 35.077770, 24.698833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.930847, 34.527328, 25.302404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.120613, 34.877945, 25.269876>,  <36.234470, 35.088314, 25.250359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.120613, 34.877945, 25.269876>,  <35.930847, 34.527328, 25.302404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.120613, 34.877945, 25.269876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249697, 0.222574, 0.942397,
		0.844148, -0.426777, 0.324461,
		0.474410, 0.876540, -0.081321,
		36.262936, 35.140907, 25.245480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.367008, 34.567001, 25.910189>,  <35.930847, 34.527328, 25.302404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.367008, 34.567001, 25.910189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.342651, 34.947197, 25.788292>,  <36.328037, 35.175312, 25.715153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.342651, 34.947197, 25.788292>,  <36.367008, 34.567001, 25.910189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.342651, 34.947197, 25.788292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339165, 0.267441, 0.901910,
		0.938754, 0.158275, 0.306087,
		-0.060890, 0.950486, -0.304743,
		36.324383, 35.232342, 25.696869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.557652, 34.990604, 26.517702>,  <36.367008, 34.567001, 25.910189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.557652, 34.990604, 26.517702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.352299, 35.244450, 26.286634>,  <36.229088, 35.396759, 26.147995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.352299, 35.244450, 26.286634>,  <36.557652, 34.990604, 26.517702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.352299, 35.244450, 26.286634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433198, 0.389437, 0.812821,
		0.740796, 0.667532, 0.074985,
		-0.513382, 0.634618, -0.577667,
		36.198284, 35.434834, 26.113335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.678802, 35.556263, 26.841194>,  <36.557652, 34.990604, 26.517702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.678802, 35.556263, 26.841194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.363827, 35.639839, 26.609236>,  <36.174839, 35.689983, 26.470060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.363827, 35.639839, 26.609236>,  <36.678802, 35.556263, 26.841194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.363827, 35.639839, 26.609236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401153, 0.540578, 0.739494,
		0.467987, 0.814937, -0.341858,
		-0.787442, 0.208936, -0.579898,
		36.127594, 35.702518, 26.435266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.535069, 36.298229, 26.969618>,  <36.678802, 35.556263, 26.841194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.535069, 36.298229, 26.969618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.205681, 36.155174, 26.793440>,  <36.008049, 36.069344, 26.687733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.205681, 36.155174, 26.793440>,  <36.535069, 36.298229, 26.969618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.205681, 36.155174, 26.793440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567256, 0.533462, 0.627407,
		0.010578, 0.766497, -0.642161,
		-0.823474, -0.357633, -0.440443,
		35.958637, 36.047886, 26.661306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.122948, 36.849220, 26.844690>,  <36.535069, 36.298229, 26.969618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.122948, 36.849220, 26.844690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.847385, 36.559799, 26.827370>,  <35.682049, 36.386147, 26.816977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.847385, 36.559799, 26.827370>,  <36.122948, 36.849220, 26.844690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.847385, 36.559799, 26.827370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621468, 0.558851, 0.549057,
		-0.373074, 0.405160, -0.834662,
		-0.688908, -0.723555, -0.043301,
		35.640713, 36.342731, 26.814379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.444412, 37.102821, 26.502522>,  <36.122948, 36.849220, 26.844690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.444412, 37.102821, 26.502522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.350029, 36.780567, 26.719879>,  <35.293400, 36.587215, 26.850294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.350029, 36.780567, 26.719879>,  <35.444412, 37.102821, 26.502522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.350029, 36.780567, 26.719879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735710, 0.513425, 0.441731,
		-0.634866, -0.295552, -0.713859,
		-0.235959, -0.805632, 0.543396,
		35.279240, 36.538876, 26.882898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.656162, 37.065334, 26.675728>,  <35.444412, 37.102821, 26.502522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.656162, 37.065334, 26.675728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.791946, 36.820004, 26.960991>,  <34.873417, 36.672806, 27.132149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.791946, 36.820004, 26.960991>,  <34.656162, 37.065334, 26.675728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.791946, 36.820004, 26.960991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550907, 0.484896, 0.679248,
		-0.762411, -0.623459, -0.173287,
		0.339457, -0.613332, 0.713158,
		34.893784, 36.636005, 27.174938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.120571, 37.100403, 27.165802>,  <34.656162, 37.065334, 26.675728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.120571, 37.100403, 27.165802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.403065, 36.926685, 27.389454>,  <34.572559, 36.822456, 27.523645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.403065, 36.926685, 27.389454>,  <34.120571, 37.100403, 27.165802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.403065, 36.926685, 27.389454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433212, 0.359558, 0.826465,
		-0.559970, -0.825897, 0.065789,
		0.706230, -0.434295, 0.559130,
		34.614933, 36.796398, 27.557194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.744217, 36.600254, 27.698118>,  <34.120571, 37.100403, 27.165802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.744217, 36.600254, 27.698118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.103127, 36.722897, 27.825174>,  <34.318470, 36.796482, 27.901407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.103127, 36.722897, 27.825174>,  <33.744217, 36.600254, 27.698118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.103127, 36.722897, 27.825174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400829, 0.264214, 0.877227,
		0.185036, -0.914431, 0.359968,
		0.897272, 0.306604, 0.317641,
		34.372307, 36.814877, 27.920467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.790169, 36.352253, 28.342701>,  <33.744217, 36.600254, 27.698118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.790169, 36.352253, 28.342701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.051506, 36.655067, 28.340052>,  <34.208309, 36.836758, 28.338461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.051506, 36.655067, 28.340052>,  <33.790169, 36.352253, 28.342701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.051506, 36.655067, 28.340052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350680, 0.310378, 0.883566,
		0.670947, -0.574946, 0.468260,
		0.653340, 0.757036, -0.006625,
		34.247509, 36.882179, 28.338064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.274349, 36.278347, 28.957853>,  <33.790169, 36.352253, 28.342701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.274349, 36.278347, 28.957853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.273571, 36.662125, 28.845093>,  <34.273106, 36.892391, 28.777437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.273571, 36.662125, 28.845093>,  <34.274349, 36.278347, 28.957853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.273571, 36.662125, 28.845093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115386, 0.279804, 0.953098,
		0.993319, 0.034382, 0.110162,
		-0.001946, 0.959441, -0.281902,
		34.272987, 36.949959, 28.760523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.567341, 36.635368, 29.503277>,  <34.274349, 36.278347, 28.957853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.567341, 36.635368, 29.503277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.380989, 36.914768, 29.285999>,  <34.269176, 37.082409, 29.155632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.380989, 36.914768, 29.285999>,  <34.567341, 36.635368, 29.503277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.380989, 36.914768, 29.285999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301148, 0.452073, 0.839607,
		0.832025, 0.554739, -0.000262,
		-0.465881, 0.698495, -0.543194,
		34.241226, 37.124317, 29.123041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.380405, 37.089676, 30.080902>,  <34.567341, 36.635368, 29.503277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.380405, 37.089676, 30.080902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.209183, 37.266361, 29.765520>,  <34.106449, 37.372372, 29.576292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.209183, 37.266361, 29.765520>,  <34.380405, 37.089676, 30.080902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.209183, 37.266361, 29.765520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419732, 0.675458, 0.606284,
		0.800371, 0.590462, -0.103731,
		-0.428054, 0.441714, -0.788453,
		34.080765, 37.398876, 29.528984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.592251, 37.837090, 29.993811>,  <34.380405, 37.089676, 30.080902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.592251, 37.837090, 29.993811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.221897, 37.768848, 29.858978>,  <33.999683, 37.727905, 29.778078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.221897, 37.768848, 29.858978>,  <34.592251, 37.837090, 29.993811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.221897, 37.768848, 29.858978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373837, 0.542552, 0.752252,
		0.054547, 0.822515, -0.566121,
		-0.925889, -0.170604, -0.337082,
		33.944130, 37.717667, 29.757854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.256733, 38.485313, 30.137226>,  <34.592251, 37.837090, 29.993811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.256733, 38.485313, 30.137226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.979984, 38.196526, 30.134014>,  <33.813934, 38.023251, 30.132086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.979984, 38.196526, 30.134014>,  <34.256733, 38.485313, 30.137226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.979984, 38.196526, 30.134014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392059, 0.366327, 0.843857,
		-0.606299, 0.586993, -0.536508,
		-0.691876, -0.721972, -0.008032,
		33.772423, 37.979935, 30.131605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.844204, 38.852730, 30.532978>,  <34.256733, 38.485313, 30.137226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.844204, 38.852730, 30.532978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.651333, 38.503605, 30.502771>,  <33.535610, 38.294132, 30.484648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.651333, 38.503605, 30.502771>,  <33.844204, 38.852730, 30.532978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.651333, 38.503605, 30.502771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358225, 0.117769, 0.926178,
		-0.799484, 0.473638, -0.369449,
		-0.482182, -0.872810, -0.075515,
		33.506680, 38.241760, 30.480118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.164204, 39.046154, 30.547092>,  <33.844204, 38.852730, 30.532978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.164204, 39.046154, 30.547092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.221581, 38.668320, 30.665194>,  <33.256004, 38.441620, 30.736053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.221581, 38.668320, 30.665194>,  <33.164204, 39.046154, 30.547092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.221581, 38.668320, 30.665194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500319, 0.188192, 0.845141,
		-0.853877, -0.268948, -0.445603,
		0.143440, -0.944590, 0.295253,
		33.264614, 38.384941, 30.753769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.473019, 38.841988, 30.856436>,  <33.164204, 39.046154, 30.547092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.473019, 38.841988, 30.856436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.732742, 38.580070, 31.011175>,  <32.888577, 38.422920, 31.104019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.732742, 38.580070, 31.011175>,  <32.473019, 38.841988, 30.856436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.732742, 38.580070, 31.011175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431173, 0.102071, 0.896477,
		-0.626490, -0.748887, -0.216052,
		0.649308, -0.654790, 0.386846,
		32.927536, 38.383633, 31.127230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.107994, 38.514282, 31.280415>,  <32.473019, 38.841988, 30.856436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.107994, 38.514282, 31.280415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.470818, 38.420841, 31.420509>,  <32.688511, 38.364777, 31.504566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.470818, 38.420841, 31.420509>,  <32.107994, 38.514282, 31.280415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.470818, 38.420841, 31.420509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308624, 0.196861, 0.930590,
		-0.286340, -0.952194, 0.106469,
		0.907062, -0.233606, 0.350239,
		32.742935, 38.350761, 31.525581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.976673, 38.257851, 32.012432>,  <32.107994, 38.514282, 31.280415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.976673, 38.257851, 32.012432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.370579, 38.326904, 32.020779>,  <32.606922, 38.368336, 32.025787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.370579, 38.326904, 32.020779>,  <31.976673, 38.257851, 32.012432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.370579, 38.326904, 32.020779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072125, 0.296285, 0.952373,
		0.158229, -0.939368, 0.304222,
		0.984765, 0.172635, 0.020871,
		32.666008, 38.378696, 32.027039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.249649, 37.796211, 32.603951>,  <31.976673, 38.257851, 32.012432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.249649, 37.796211, 32.603951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.498352, 38.102238, 32.536907>,  <32.647572, 38.285854, 32.496681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.498352, 38.102238, 32.536907>,  <32.249649, 37.796211, 32.603951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.498352, 38.102238, 32.536907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052492, 0.254223, 0.965720,
		0.781453, -0.591641, 0.198224,
		0.621753, 0.765070, -0.167607,
		32.684879, 38.331757, 32.486626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.714733, 37.739384, 33.149529>,  <32.249649, 37.796211, 32.603951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.714733, 37.739384, 33.149529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.739594, 38.111244, 33.004265>,  <32.754509, 38.334362, 32.917107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.739594, 38.111244, 33.004265>,  <32.714733, 37.739384, 33.149529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.739594, 38.111244, 33.004265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071334, 0.358794, 0.930687,
		0.995514, -0.083750, -0.044016,
		0.062152, 0.929652, -0.363159,
		32.758240, 38.390141, 32.895317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.089924, 38.002678, 33.668911>,  <32.714733, 37.739384, 33.149529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.089924, 38.002678, 33.668911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.950436, 38.319828, 33.469013>,  <32.866745, 38.510120, 33.349075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.950436, 38.319828, 33.469013>,  <33.089924, 38.002678, 33.668911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.950436, 38.319828, 33.469013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142094, 0.482321, 0.864393,
		0.926394, 0.372438, -0.055530,
		-0.348716, 0.792878, -0.499741,
		32.845821, 38.557690, 33.319092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.452717, 38.541138, 33.969917>,  <33.089924, 38.002678, 33.668911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.452717, 38.541138, 33.969917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119141, 38.687386, 33.804577>,  <32.918995, 38.775135, 33.705372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119141, 38.687386, 33.804577>,  <33.452717, 38.541138, 33.969917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.119141, 38.687386, 33.804577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162366, 0.553308, 0.816999,
		0.527423, 0.748446, -0.402063,
		-0.833944, 0.365622, -0.413349,
		32.868958, 38.797073, 33.680573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.367165, 39.142563, 34.252491>,  <33.452717, 38.541138, 33.969917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.367165, 39.142563, 34.252491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.997490, 39.043457, 34.136223>,  <32.775684, 38.983994, 34.066463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.997490, 39.043457, 34.136223>,  <33.367165, 39.142563, 34.252491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.997490, 39.043457, 34.136223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364955, 0.348462, 0.863355,
		-0.112619, 0.903985, -0.412466,
		-0.924189, -0.247762, -0.290671,
		32.720234, 38.969128, 34.049023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.946381, 39.388275, 33.883469>,  <33.367165, 39.142563, 34.252491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.946381, 39.388275, 33.883469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.332230, 39.381741, 33.988716>,  <34.563740, 39.377819, 34.051865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.332230, 39.381741, 33.988716>,  <33.946381, 39.388275, 33.883469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.332230, 39.381741, 33.988716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245574, -0.307285, -0.919385,
		0.095871, 0.951477, -0.292403,
		0.964625, -0.016336, 0.263118,
		34.621616, 39.376839, 34.067650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.361301, 39.706394, 33.366489>,  <33.946381, 39.388275, 33.883469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.361301, 39.706394, 33.366489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.587418, 39.442017, 33.563915>,  <34.723087, 39.283390, 33.682369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.587418, 39.442017, 33.563915>,  <34.361301, 39.706394, 33.366489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.587418, 39.442017, 33.563915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389097, -0.313940, -0.866051,
		0.727358, 0.681614, 0.079703,
		0.565291, -0.660941, 0.493561,
		34.757004, 39.243732, 33.711983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.944763, 39.841152, 33.048714>,  <34.361301, 39.706394, 33.366489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.944763, 39.841152, 33.048714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.021446, 39.483463, 33.210510>,  <35.067455, 39.268848, 33.307587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.021446, 39.483463, 33.210510>,  <34.944763, 39.841152, 33.048714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.021446, 39.483463, 33.210510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530234, -0.252449, -0.809395,
		0.825894, 0.369640, 0.425752,
		0.191704, -0.894223, 0.404492,
		35.078957, 39.215195, 33.331860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.684540, 39.827000, 33.027851>,  <34.944763, 39.841152, 33.048714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.684540, 39.827000, 33.027851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.614349, 39.439564, 33.098331>,  <35.572235, 39.207104, 33.140621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.614349, 39.439564, 33.098331>,  <35.684540, 39.827000, 33.027851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.614349, 39.439564, 33.098331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660696, -0.248554, -0.708309,
		0.729855, -0.007875, 0.683557,
		-0.175478, -0.968586, 0.176205,
		35.561707, 39.148987, 33.151192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.290100, 39.523277, 33.193142>,  <35.684540, 39.827000, 33.027851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.290100, 39.523277, 33.193142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.053425, 39.234783, 33.049068>,  <35.911423, 39.061687, 32.962624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.053425, 39.234783, 33.049068>,  <36.290100, 39.523277, 33.193142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.053425, 39.234783, 33.049068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721616, -0.274634, -0.635489,
		0.359418, -0.635923, 0.682950,
		-0.591683, -0.721234, -0.360184,
		35.875919, 39.018414, 32.941013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.708202, 38.997219, 32.939590>,  <36.290100, 39.523277, 33.193142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.708202, 38.997219, 32.939590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.375988, 38.921196, 32.730175>,  <36.176659, 38.875584, 32.604527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.375988, 38.921196, 32.730175>,  <36.708202, 38.997219, 32.939590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.375988, 38.921196, 32.730175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554228, -0.188953, -0.810635,
		0.055142, -0.963419, 0.262266,
		-0.830536, -0.190055, -0.523534,
		36.126827, 38.864182, 32.573116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.890911, 38.395363, 32.551380>,  <36.708202, 38.997219, 32.939590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.890911, 38.395363, 32.551380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.568119, 38.534771, 32.360668>,  <36.374443, 38.618416, 32.246243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.568119, 38.534771, 32.360668>,  <36.890911, 38.395363, 32.551380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.568119, 38.534771, 32.360668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374868, -0.321547, -0.869529,
		-0.456354, -0.880422, 0.128833,
		-0.806979, 0.348518, -0.476782,
		36.326027, 38.639324, 32.217632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.669567, 37.892662, 32.028877>,  <36.890911, 38.395363, 32.551380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.669567, 37.892662, 32.028877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.470760, 38.200722, 31.868954>,  <36.351479, 38.385559, 31.772999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.470760, 38.200722, 31.868954>,  <36.669567, 37.892662, 32.028877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.470760, 38.200722, 31.868954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450365, -0.164891, -0.877486,
		-0.741720, -0.616184, -0.264895,
		-0.497014, 0.770148, -0.399811,
		36.321655, 38.431767, 31.749010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.487251, 37.605450, 31.405176>,  <36.669567, 37.892662, 32.028877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.487251, 37.605450, 31.405176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.441120, 37.997524, 31.340765>,  <36.413441, 38.232769, 31.302118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.441120, 37.997524, 31.340765>,  <36.487251, 37.605450, 31.405176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.441120, 37.997524, 31.340765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328470, -0.115359, -0.937443,
		-0.937447, -0.161006, -0.308659,
		-0.115327, 0.980189, -0.161028,
		36.406521, 38.291580, 31.292456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.088585, 37.784534, 30.755426>,  <36.487251, 37.605450, 31.405176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.088585, 37.784534, 30.755426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.301037, 38.112694, 30.840136>,  <36.428509, 38.309589, 30.890961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.301037, 38.112694, 30.840136>,  <36.088585, 37.784534, 30.755426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.301037, 38.112694, 30.840136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335985, 0.025519, -0.941521,
		-0.777824, 0.571227, -0.262087,
		0.531134, 0.820395, 0.211773,
		36.460377, 38.358814, 30.903667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.960114, 38.281384, 30.232859>,  <36.088585, 37.784534, 30.755426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.960114, 38.281384, 30.232859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.310005, 38.392986, 30.391356>,  <36.519939, 38.459949, 30.486454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.310005, 38.392986, 30.391356>,  <35.960114, 38.281384, 30.232859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.310005, 38.392986, 30.391356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411206, 0.005357, -0.911527,
		-0.256449, 0.960273, -0.110045,
		0.874725, 0.279011, 0.396244,
		36.572422, 38.476688, 30.510229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.064110, 38.972313, 29.857599>,  <35.960114, 38.281384, 30.232859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.064110, 38.972313, 29.857599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.401608, 38.818489, 30.007378>,  <36.604107, 38.726196, 30.097244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.401608, 38.818489, 30.007378>,  <36.064110, 38.972313, 29.857599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.401608, 38.818489, 30.007378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460342, 0.159724, -0.873255,
		0.276009, 0.909177, 0.311794,
		0.843744, -0.384558, 0.374447,
		36.654732, 38.703121, 30.119711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.634354, 39.428288, 29.624735>,  <36.064110, 38.972313, 29.857599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.634354, 39.428288, 29.624735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.792011, 39.076283, 29.730734>,  <36.886604, 38.865078, 29.794333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.792011, 39.076283, 29.730734>,  <36.634354, 39.428288, 29.624735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.792011, 39.076283, 29.730734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613384, 0.037161, -0.788910,
		0.684406, 0.473487, 0.554435,
		0.394142, -0.880016, 0.264996,
		36.910255, 38.812279, 29.810232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.188702, 39.368122, 29.100948>,  <36.634354, 39.428288, 29.624735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.188702, 39.368122, 29.100948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.178856, 38.988472, 29.226528>,  <37.172947, 38.760681, 29.301876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.178856, 38.988472, 29.226528>,  <37.188702, 39.368122, 29.100948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.178856, 38.988472, 29.226528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637102, -0.256901, -0.726707,
		0.770386, 0.182129, 0.611011,
		-0.024615, -0.949121, 0.313947,
		37.171471, 38.703735, 29.320713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.860039, 39.237514, 29.174047>,  <37.188702, 39.368122, 29.100948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.860039, 39.237514, 29.174047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.636017, 38.912117, 29.111351>,  <37.501602, 38.716881, 29.073732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.636017, 38.912117, 29.111351>,  <37.860039, 39.237514, 29.174047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.636017, 38.912117, 29.111351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519621, -0.197580, -0.831237,
		0.645234, -0.546988, 0.533363,
		-0.560059, -0.813490, -0.156741,
		37.467999, 38.668072, 29.064329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.302395, 38.916389, 28.766417>,  <37.860039, 39.237514, 29.174047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.302395, 38.916389, 28.766417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.977932, 38.687538, 28.717920>,  <37.783257, 38.550228, 28.688822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.977932, 38.687538, 28.717920>,  <38.302395, 38.916389, 28.766417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.977932, 38.687538, 28.717920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310754, -0.246025, -0.918098,
		0.495443, -0.782393, 0.377356,
		-0.811152, -0.572130, -0.121240,
		37.734585, 38.515900, 28.681549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.526783, 38.138165, 28.563177>,  <38.302395, 38.916389, 28.766417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.526783, 38.138165, 28.563177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.159496, 38.220406, 28.427765>,  <37.939125, 38.269753, 28.346518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.159496, 38.220406, 28.427765>,  <38.526783, 38.138165, 28.563177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.159496, 38.220406, 28.427765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246441, -0.372541, -0.894696,
		-0.310067, -0.904953, 0.291406,
		-0.918218, 0.205602, -0.338530,
		37.884029, 38.282085, 28.326206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.382637, 37.593773, 28.176161>,  <38.526783, 38.138165, 28.563177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.382637, 37.593773, 28.176161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.090740, 37.845512, 28.069286>,  <37.915600, 37.996555, 28.005161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.090740, 37.845512, 28.069286>,  <38.382637, 37.593773, 28.176161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.090740, 37.845512, 28.069286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015992, -0.406388, -0.913560,
		-0.683532, -0.662394, 0.306624,
		-0.729745, 0.629351, -0.267187,
		37.871815, 38.034317, 27.989130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.916683, 37.148594, 27.965069>,  <38.382637, 37.593773, 28.176161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.916683, 37.148594, 27.965069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.838028, 37.499622, 27.790163>,  <37.790836, 37.710239, 27.685221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.838028, 37.499622, 27.790163>,  <37.916683, 37.148594, 27.965069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.838028, 37.499622, 27.790163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054003, -0.454987, -0.888859,
		-0.978988, -0.151167, 0.136858,
		-0.196635, 0.877573, -0.437263,
		37.779037, 37.762894, 27.658983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.302967, 37.035263, 27.601696>,  <37.916683, 37.148594, 27.965069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.302967, 37.035263, 27.601696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.497768, 37.344677, 27.439478>,  <37.614651, 37.530327, 27.342146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.497768, 37.344677, 27.439478>,  <37.302967, 37.035263, 27.601696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.497768, 37.344677, 27.439478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016010, -0.456348, -0.889657,
		-0.873253, 0.439759, -0.209859,
		0.487004, 0.773537, -0.405547,
		37.643871, 37.576736, 27.317814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.964901, 37.127949, 26.901478>,  <37.302967, 37.035263, 27.601696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.964901, 37.127949, 26.901478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.322063, 37.305096, 26.868999>,  <37.536362, 37.411385, 26.849512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.322063, 37.305096, 26.868999>,  <36.964901, 37.127949, 26.901478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.322063, 37.305096, 26.868999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095484, -0.362490, -0.927083,
		-0.440008, 0.820043, -0.365955,
		0.892903, 0.442867, -0.081198,
		37.589935, 37.437954, 26.844641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.990620, 37.320450, 26.206444>,  <36.964901, 37.127949, 26.901478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.990620, 37.320450, 26.206444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.369602, 37.344749, 26.332066>,  <37.596992, 37.359329, 26.407438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.369602, 37.344749, 26.332066>,  <36.990620, 37.320450, 26.206444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.369602, 37.344749, 26.332066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310466, -0.411015, -0.857134,
		0.077011, 0.909602, -0.408280,
		0.947460, 0.060748, 0.314053,
		37.653839, 37.362972, 26.426281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.351627, 37.642334, 25.640095>,  <36.990620, 37.320450, 26.206444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.351627, 37.642334, 25.640095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.638763, 37.467094, 25.856529>,  <37.811047, 37.361950, 25.986389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.638763, 37.467094, 25.856529>,  <37.351627, 37.642334, 25.640095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.638763, 37.467094, 25.856529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372097, -0.415454, -0.830025,
		0.588428, 0.797163, -0.135217,
		0.717842, -0.438096, 0.541087,
		37.854115, 37.335667, 26.018856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.972836, 37.631432, 25.200359>,  <37.351627, 37.642334, 25.640095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.972836, 37.631432, 25.200359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.066338, 37.353394, 25.472301>,  <38.122437, 37.186569, 25.635468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.066338, 37.353394, 25.472301>,  <37.972836, 37.631432, 25.200359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.066338, 37.353394, 25.472301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295136, -0.615509, -0.730782,
		0.926420, 0.371472, 0.061271,
		0.233753, -0.695095, 0.679855,
		38.136463, 37.144867, 25.676258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.646408, 37.447975, 25.017878>,  <37.972836, 37.631432, 25.200359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.646408, 37.447975, 25.017878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.523251, 37.156357, 25.262402>,  <38.449356, 36.981388, 25.409117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.523251, 37.156357, 25.262402>,  <38.646408, 37.447975, 25.017878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.523251, 37.156357, 25.262402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409203, -0.681530, -0.606688,
		0.858928, 0.063357, 0.508162,
		-0.307890, -0.729043, 0.611311,
		38.430885, 36.937645, 25.445795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.241058, 37.037647, 25.234915>,  <38.646408, 37.447975, 25.017878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.241058, 37.037647, 25.234915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.936737, 36.785625, 25.297159>,  <38.754147, 36.634411, 25.334505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.936737, 36.785625, 25.297159>,  <39.241058, 37.037647, 25.234915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.936737, 36.785625, 25.297159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511577, -0.729763, -0.453580,
		0.399338, -0.265478, 0.877525,
		-0.760801, -0.630053, 0.155610,
		38.708496, 36.596611, 25.343842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.623325, 36.456535, 25.459980>,  <39.241058, 37.037647, 25.234915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.623325, 36.456535, 25.459980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.254997, 36.345840, 25.350060>,  <39.034000, 36.279423, 25.284107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.254997, 36.345840, 25.350060>,  <39.623325, 36.456535, 25.459980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.254997, 36.345840, 25.350060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386035, -0.746919, -0.541377,
		-0.055435, -0.604591, 0.794605,
		-0.920817, -0.276734, -0.274799,
		38.978752, 36.262821, 25.267620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.558777, 35.831974, 25.630051>,  <39.623325, 36.456535, 25.459980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.558777, 35.831974, 25.630051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.302418, 35.881733, 25.327059>,  <39.148602, 35.911591, 25.145264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.302418, 35.881733, 25.327059>,  <39.558777, 35.831974, 25.630051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.302418, 35.881733, 25.327059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439532, -0.749537, -0.494981,
		-0.629334, -0.650168, 0.425699,
		-0.640898, 0.124400, -0.757479,
		39.110149, 35.919052, 25.099815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.145351, 35.205379, 25.421492>,  <39.558777, 35.831974, 25.630051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.145351, 35.205379, 25.421492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.155865, 35.413700, 25.080183>,  <39.162174, 35.538692, 24.875399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.155865, 35.413700, 25.080183>,  <39.145351, 35.205379, 25.421492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.155865, 35.413700, 25.080183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392710, -0.790323, -0.470286,
		-0.919287, -0.322725, -0.225301,
		0.026287, 0.520806, -0.853271,
		39.163750, 35.569942, 24.824202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.126915, 34.682056, 24.910513>,  <39.145351, 35.205379, 25.421492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.126915, 34.682056, 24.910513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.219818, 34.991474, 24.674652>,  <39.275558, 35.177124, 24.533134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.219818, 34.991474, 24.674652>,  <39.126915, 34.682056, 24.910513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.219818, 34.991474, 24.674652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274973, -0.633720, -0.723042,
		-0.932978, 0.005791, -0.359887,
		0.232255, 0.773541, -0.589654,
		39.289494, 35.223537, 24.497755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577686, 34.743427, 24.269344>,  <39.126915, 34.682056, 24.910513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.577686, 34.743427, 24.269344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.934196, 34.904812, 24.186548>,  <39.148102, 35.001644, 24.136871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.934196, 34.904812, 24.186548>,  <38.577686, 34.743427, 24.269344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.934196, 34.904812, 24.186548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081321, -0.591279, -0.802356,
		-0.446109, 0.698289, -0.559803,
		0.891276, 0.403462, -0.206990,
		39.201580, 35.025852, 24.124451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.547928, 34.775253, 23.605804>,  <38.577686, 34.743427, 24.269344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.547928, 34.775253, 23.605804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.939621, 34.815891, 23.675991>,  <39.174637, 34.840275, 23.718103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.939621, 34.815891, 23.675991>,  <38.547928, 34.775253, 23.605804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.939621, 34.815891, 23.675991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202466, -0.443553, -0.873080,
		-0.010875, 0.890471, -0.454911,
		0.979229, 0.101599, 0.175467,
		39.233391, 34.846371, 23.728632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847496, 35.108509, 22.993578>,  <38.547928, 34.775253, 23.605804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.847496, 35.108509, 22.993578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.164993, 34.943279, 23.172173>,  <39.355492, 34.844143, 23.279329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.164993, 34.943279, 23.172173>,  <38.847496, 35.108509, 22.993578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.164993, 34.943279, 23.172173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280689, -0.402468, -0.871340,
		0.539621, 0.816941, -0.203511,
		0.793740, -0.413070, 0.446487,
		39.403114, 34.819359, 23.306118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.437988, 35.330002, 22.533329>,  <38.847496, 35.108509, 22.993578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.437988, 35.330002, 22.533329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.524723, 35.014633, 22.763590>,  <39.576763, 34.825413, 22.901747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.524723, 35.014633, 22.763590>,  <39.437988, 35.330002, 22.533329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.524723, 35.014633, 22.763590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083582, -0.572524, -0.815617,
		0.972624, 0.224969, -0.058246,
		0.216835, -0.788420, 0.575653,
		39.589775, 34.778107, 22.936285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.080139, 35.108086, 22.307808>,  <39.437988, 35.330002, 22.533329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.080139, 35.108086, 22.307808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.963436, 34.782848, 22.509302>,  <39.893414, 34.587704, 22.630199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.963436, 34.782848, 22.509302>,  <40.080139, 35.108086, 22.307808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.963436, 34.782848, 22.509302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128847, -0.555261, -0.821635,
		0.947773, -0.174816, 0.266769,
		-0.291761, -0.813096, 0.503737,
		39.875908, 34.538921, 22.660423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.577610, 34.614063, 22.303059>,  <40.080139, 35.108086, 22.307808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.577610, 34.614063, 22.303059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.239326, 34.405373, 22.347910>,  <40.036354, 34.280159, 22.374821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.239326, 34.405373, 22.347910>,  <40.577610, 34.614063, 22.303059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.239326, 34.405373, 22.347910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281998, -0.615315, -0.736115,
		0.453045, -0.590921, 0.667505,
		-0.845711, -0.521728, 0.112127,
		39.985615, 34.248856, 22.381548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.799080, 33.896973, 22.330923>,  <40.577610, 34.614063, 22.303059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.799080, 33.896973, 22.330923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.407684, 33.887787, 22.248907>,  <40.172848, 33.882275, 22.199697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.407684, 33.887787, 22.248907>,  <40.799080, 33.896973, 22.330923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.407684, 33.887787, 22.248907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158437, -0.720194, -0.675440,
		-0.132157, -0.693393, 0.708337,
		-0.978485, -0.022962, -0.205037,
		40.114140, 33.880898, 22.187395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.701336, 33.253010, 22.602766>,  <40.799080, 33.896973, 22.330923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.701336, 33.253010, 22.602766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.003887, 32.991413, 22.608229>,  <41.185417, 32.834457, 22.611506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.003887, 32.991413, 22.608229>,  <40.701336, 33.253010, 22.602766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.003887, 32.991413, 22.608229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062285, -0.051224, 0.996743,
		-0.651160, -0.754768, -0.079478,
		0.756381, -0.653989, 0.013656,
		41.230801, 32.795216, 22.612326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.467453, 32.751080, 23.110481>,  <40.701336, 33.253010, 22.602766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.467453, 32.751080, 23.110481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.865742, 32.748005, 23.073641>,  <41.104713, 32.746159, 23.051537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.865742, 32.748005, 23.073641>,  <40.467453, 32.751080, 23.110481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.865742, 32.748005, 23.073641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090157, -0.138577, 0.986239,
		-0.020341, -0.990322, -0.137291,
		0.995720, -0.007683, -0.092103,
		41.164459, 32.745701, 23.046009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.724689, 32.309052, 23.619711>,  <40.467453, 32.751080, 23.110481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.724689, 32.309052, 23.619711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.072323, 32.490173, 23.540045>,  <41.280903, 32.598846, 23.492245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.072323, 32.490173, 23.540045>,  <40.724689, 32.309052, 23.619711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.072323, 32.490173, 23.540045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193243, 0.059859, 0.979323,
		0.455360, -0.889600, -0.035478,
		0.869082, 0.452801, -0.199166,
		41.333046, 32.626015, 23.480295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.212891, 31.920004, 24.052715>,  <40.724689, 32.309052, 23.619711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.212891, 31.920004, 24.052715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.348904, 32.286346, 23.967314>,  <41.430511, 32.506153, 23.916073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.348904, 32.286346, 23.967314>,  <41.212891, 31.920004, 24.052715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.348904, 32.286346, 23.967314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199283, 0.151700, 0.968129,
		0.919055, -0.371746, -0.130931,
		0.340035, 0.915856, -0.213504,
		41.450912, 32.561104, 23.903263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.832790, 31.976665, 24.449564>,  <41.212891, 31.920004, 24.052715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.832790, 31.976665, 24.449564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.729935, 32.350929, 24.352886>,  <41.668221, 32.575489, 24.294880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.729935, 32.350929, 24.352886>,  <41.832790, 31.976665, 24.449564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.729935, 32.350929, 24.352886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091623, 0.272585, 0.957759,
		0.962021, 0.224132, -0.155820,
		-0.257138, 0.935662, -0.241697,
		41.652794, 32.631626, 24.280376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.247154, 32.344528, 24.941927>,  <41.832790, 31.976665, 24.449564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.247154, 32.344528, 24.941927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.982437, 32.616531, 24.815683>,  <41.823605, 32.779736, 24.739937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.982437, 32.616531, 24.815683>,  <42.247154, 32.344528, 24.941927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.982437, 32.616531, 24.815683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077187, 0.480558, 0.873559,
		0.745699, 0.553758, -0.370520,
		-0.661797, 0.680012, -0.315609,
		41.783897, 32.820534, 24.721001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.468903, 32.929386, 25.273302>,  <42.247154, 32.344528, 24.941927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.468903, 32.929386, 25.273302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.085228, 33.005505, 25.189646>,  <41.855022, 33.051174, 25.139452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.085228, 33.005505, 25.189646>,  <42.468903, 32.929386, 25.273302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.085228, 33.005505, 25.189646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058893, 0.588974, 0.806003,
		0.276560, 0.785428, -0.553731,
		-0.959190, 0.190298, -0.209143,
		41.797470, 33.062595, 25.126904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.398155, 33.633221, 25.334196>,  <42.468903, 32.929386, 25.273302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.398155, 33.633221, 25.334196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.033085, 33.473476, 25.368929>,  <41.814041, 33.377632, 25.389769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.033085, 33.473476, 25.368929>,  <42.398155, 33.633221, 25.334196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.033085, 33.473476, 25.368929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091166, 0.406050, 0.909292,
		-0.398390, 0.821972, -0.407000,
		-0.912674, -0.399357, 0.086830,
		41.759281, 33.353668, 25.394978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.018219, 34.136341, 25.660177>,  <42.398155, 33.633221, 25.334196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.018219, 34.136341, 25.660177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.799282, 33.805340, 25.710218>,  <41.667919, 33.606739, 25.740242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.799282, 33.805340, 25.710218>,  <42.018219, 34.136341, 25.660177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.799282, 33.805340, 25.710218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305110, 0.336492, 0.890888,
		-0.779312, 0.449449, -0.436656,
		-0.547340, -0.827507, 0.125101,
		41.635078, 33.557087, 25.747749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.361969, 34.409359, 25.715649>,  <42.018219, 34.136341, 25.660177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.361969, 34.409359, 25.715649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.350975, 34.046158, 25.882872>,  <41.344379, 33.828236, 25.983206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.350975, 34.046158, 25.882872>,  <41.361969, 34.409359, 25.715649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.350975, 34.046158, 25.882872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319359, 0.404274, 0.857072,
		-0.947235, -0.109951, -0.301093,
		-0.027488, -0.908005, 0.418056,
		41.342728, 33.773758, 26.008289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.686146, 34.335274, 26.058010>,  <41.361969, 34.409359, 25.715649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.686146, 34.335274, 26.058010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.891346, 34.024094, 26.203129>,  <41.014465, 33.837383, 26.290199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.891346, 34.024094, 26.203129>,  <40.686146, 34.335274, 26.058010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.891346, 34.024094, 26.203129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435764, 0.128115, 0.890896,
		-0.739557, -0.615120, -0.273282,
		0.512996, -0.777954, 0.362796,
		41.045246, 33.790707, 26.311968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.203831, 33.794598, 26.331581>,  <40.686146, 34.335274, 26.058010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.203831, 33.794598, 26.331581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.557491, 33.749165, 26.512852>,  <40.769688, 33.721905, 26.621614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.557491, 33.749165, 26.512852>,  <40.203831, 33.794598, 26.331581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.557491, 33.749165, 26.512852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432760, 0.166391, 0.886020,
		-0.176042, -0.979496, 0.097961,
		0.884153, -0.113583, 0.453179,
		40.822739, 33.715092, 26.648806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.028126, 33.570850, 26.878908>,  <40.203831, 33.794598, 26.331581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.028126, 33.570850, 26.878908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.399082, 33.689091, 26.970619>,  <40.621655, 33.760036, 27.025646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.399082, 33.689091, 26.970619>,  <40.028126, 33.570850, 26.878908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.399082, 33.689091, 26.970619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333414, 0.375156, 0.864924,
		0.169662, -0.878565, 0.446474,
		0.927389, 0.295605, 0.229277,
		40.677299, 33.777771, 27.039402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.241989, 33.336456, 27.589106>,  <40.028126, 33.570850, 26.878908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.241989, 33.336456, 27.589106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.456490, 33.663979, 27.507133>,  <40.585190, 33.860493, 27.457951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.456490, 33.663979, 27.507133>,  <40.241989, 33.336456, 27.589106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.456490, 33.663979, 27.507133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167439, 0.341165, 0.924971,
		0.827283, -0.461704, 0.320050,
		0.536253, 0.818802, -0.204933,
		40.617367, 33.909618, 27.445654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.454399, 33.520676, 28.255926>,  <40.241989, 33.336456, 27.589106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.454399, 33.520676, 28.255926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.487713, 33.836876, 28.013220>,  <40.507702, 34.026596, 27.867596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.487713, 33.836876, 28.013220>,  <40.454399, 33.520676, 28.255926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.487713, 33.836876, 28.013220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128904, 0.612313, 0.780037,
		0.988154, 0.013252, 0.152894,
		0.083282, 0.790505, -0.606767,
		40.512699, 34.074028, 27.831190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.885326, 34.019577, 28.655045>,  <40.454399, 33.520676, 28.255926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.885326, 34.019577, 28.655045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.715187, 34.231461, 28.361519>,  <40.613102, 34.358593, 28.185404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.715187, 34.231461, 28.361519>,  <40.885326, 34.019577, 28.655045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.715187, 34.231461, 28.361519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130841, 0.766308, 0.629010,
		0.895521, 0.363563, -0.256640,
		-0.425350, 0.529713, -0.733813,
		40.587582, 34.390373, 28.141375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.195641, 34.633999, 28.803740>,  <40.885326, 34.019577, 28.655045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.195641, 34.633999, 28.803740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.879139, 34.683880, 28.564283>,  <40.689240, 34.713810, 28.420610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.879139, 34.683880, 28.564283>,  <41.195641, 34.633999, 28.803740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.879139, 34.683880, 28.564283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268573, 0.808630, 0.523436,
		0.549353, 0.574948, -0.606338,
		-0.791252, 0.124705, -0.598639,
		40.641762, 34.721291, 28.384691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.994610, 35.354389, 28.869322>,  <41.195641, 34.633999, 28.803740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.994610, 35.354389, 28.869322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.651646, 35.274494, 28.679607>,  <40.445866, 35.226559, 28.565779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.651646, 35.274494, 28.679607>,  <40.994610, 35.354389, 28.869322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.651646, 35.274494, 28.679607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443817, 0.753529, 0.484996,
		0.260515, 0.626338, -0.734733,
		-0.857414, -0.199738, -0.474285,
		40.394421, 35.214573, 28.537321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.647514, 36.005905, 28.563269>,  <40.994610, 35.354389, 28.869322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.647514, 36.005905, 28.563269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.366810, 35.730759, 28.637436>,  <40.198387, 35.565670, 28.681936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.366810, 35.730759, 28.637436>,  <40.647514, 36.005905, 28.563269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.366810, 35.730759, 28.637436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494612, 0.657738, 0.568102,
		-0.512734, 0.306959, -0.801798,
		-0.701757, -0.687864, 0.185419,
		40.156284, 35.524399, 28.693062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.081112, 36.331844, 28.588675>,  <40.647514, 36.005905, 28.563269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.081112, 36.331844, 28.588675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.968678, 36.006504, 28.792421>,  <39.901218, 35.811298, 28.914669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.968678, 36.006504, 28.792421>,  <40.081112, 36.331844, 28.588675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.968678, 36.006504, 28.792421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510109, 0.576199, 0.638579,
		-0.812885, -0.080339, -0.576857,
		-0.281082, -0.813351, 0.509365,
		39.884354, 35.762497, 28.945230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.428082, 36.521793, 28.783539>,  <40.081112, 36.331844, 28.588675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.428082, 36.521793, 28.783539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.500385, 36.223431, 29.039961>,  <39.543766, 36.044415, 29.193815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.500385, 36.223431, 29.039961>,  <39.428082, 36.521793, 28.783539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.500385, 36.223431, 29.039961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620724, 0.419068, 0.662634,
		-0.762907, -0.517697, -0.387249,
		0.180760, -0.745903, 0.641058,
		39.554615, 35.999660, 29.232279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.767605, 36.315491, 29.134724>,  <39.428082, 36.521793, 28.783539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.767605, 36.315491, 29.134724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.055126, 36.190823, 29.383297>,  <39.227638, 36.116020, 29.532440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.055126, 36.190823, 29.383297>,  <38.767605, 36.315491, 29.134724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.055126, 36.190823, 29.383297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459983, 0.457029, 0.761276,
		-0.521282, -0.833057, 0.185151,
		0.718805, -0.311673, 0.621433,
		39.270767, 36.097321, 29.569727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.422997, 36.147236, 29.817991>,  <38.767605, 36.315491, 29.134724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.422997, 36.147236, 29.817991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.809093, 36.177589, 29.918032>,  <39.040752, 36.195801, 29.978056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.809093, 36.177589, 29.918032>,  <38.422997, 36.147236, 29.817991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.809093, 36.177589, 29.918032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251792, 0.526484, 0.812044,
		-0.070056, -0.846792, 0.527290,
		0.965243, 0.075879, 0.250099,
		39.098667, 36.200352, 29.993061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.487923, 36.071861, 30.557404>,  <38.422997, 36.147236, 29.817991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.487923, 36.071861, 30.557404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.805267, 36.293915, 30.457485>,  <38.995674, 36.427147, 30.397533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.805267, 36.293915, 30.457485>,  <38.487923, 36.071861, 30.557404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.805267, 36.293915, 30.457485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192822, 0.618387, 0.761852,
		0.577398, -0.556262, 0.597649,
		0.793367, 0.555132, -0.249796,
		39.043278, 36.460453, 30.382545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.839512, 36.171284, 31.214872>,  <38.487923, 36.071861, 30.557404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.839512, 36.171284, 31.214872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.990337, 36.451527, 30.972559>,  <39.080833, 36.619675, 30.827171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.990337, 36.451527, 30.972559>,  <38.839512, 36.171284, 31.214872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.990337, 36.451527, 30.972559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124224, 0.686404, 0.716532,
		0.917821, -0.194922, 0.345847,
		0.377059, 0.700610, -0.605782,
		39.103455, 36.661709, 30.790825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.316704, 36.576824, 31.632122>,  <38.839512, 36.171284, 31.214872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.316704, 36.576824, 31.632122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.297916, 36.804932, 31.304075>,  <39.286644, 36.941795, 31.107248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.297916, 36.804932, 31.304075>,  <39.316704, 36.576824, 31.632122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.297916, 36.804932, 31.304075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171386, 0.813447, 0.555815,
		0.984084, -0.114450, -0.135942,
		-0.046969, 0.570267, -0.820115,
		39.283825, 36.976013, 31.058041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.821522, 37.231071, 31.801077>,  <39.316704, 36.576824, 31.632122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.821522, 37.231071, 31.801077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.583916, 37.347874, 31.501242>,  <39.441353, 37.417953, 31.321341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.583916, 37.347874, 31.501242>,  <39.821522, 37.231071, 31.801077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.583916, 37.347874, 31.501242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170096, 0.865138, 0.471810,
		0.786267, 0.407762, -0.464234,
		-0.594013, 0.292005, -0.749588,
		39.405712, 37.435474, 31.276365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.136074, 37.906818, 31.569536>,  <39.821522, 37.231071, 31.801077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.136074, 37.906818, 31.569536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.739033, 37.906391, 31.520964>,  <39.500809, 37.906136, 31.491819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.739033, 37.906391, 31.520964>,  <40.136074, 37.906818, 31.569536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.739033, 37.906391, 31.520964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071829, 0.811425, 0.580025,
		0.097916, 0.584455, -0.805497,
		-0.992599, -0.001065, -0.121432,
		39.441254, 37.906071, 31.484533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.953011, 38.622227, 31.799044>,  <40.136074, 37.906818, 31.569536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.953011, 38.622227, 31.799044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.597359, 38.439697, 31.785109>,  <39.383968, 38.330177, 31.776749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.597359, 38.439697, 31.785109>,  <39.953011, 38.622227, 31.799044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.597359, 38.439697, 31.785109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381164, 0.696244, 0.608242,
		-0.253304, 0.554084, -0.792987,
		-0.889130, -0.456328, -0.034836,
		39.330620, 38.302799, 31.774658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.367016, 39.167000, 31.708344>,  <39.953011, 38.622227, 31.799044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.367016, 39.167000, 31.708344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.222485, 38.828629, 31.865236>,  <39.135765, 38.625607, 31.959372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.222485, 38.828629, 31.865236>,  <39.367016, 39.167000, 31.708344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.222485, 38.828629, 31.865236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311022, 0.505905, 0.804566,
		-0.879038, 0.168718, -0.445900,
		-0.361328, -0.845928, 0.392234,
		39.114086, 38.574848, 31.982906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.881538, 39.455265, 32.186501>,  <39.367016, 39.167000, 31.708344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.881538, 39.455265, 32.186501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.912430, 39.070660, 32.291981>,  <38.930965, 38.839897, 32.355267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.912430, 39.070660, 32.291981>,  <38.881538, 39.455265, 32.186501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.912430, 39.070660, 32.291981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129651, 0.252556, 0.958857,
		-0.988548, -0.108236, -0.105157,
		0.077225, -0.961510, 0.263697,
		38.935596, 38.782207, 32.371090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.279404, 39.333805, 32.634598>,  <38.881538, 39.455265, 32.186501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.279404, 39.333805, 32.634598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.568821, 39.065651, 32.700401>,  <38.742474, 38.904758, 32.739883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.568821, 39.065651, 32.700401>,  <38.279404, 39.333805, 32.634598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.568821, 39.065651, 32.700401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191997, 0.033473, 0.980825,
		-0.663039, -0.741256, -0.104493,
		0.723545, -0.670387, 0.164513,
		38.785885, 38.864536, 32.749756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030151, 38.864864, 33.029011>,  <38.279404, 39.333805, 32.634598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.030151, 38.864864, 33.029011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.420441, 38.799080, 33.086864>,  <38.654613, 38.759609, 33.121578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.420441, 38.799080, 33.086864>,  <38.030151, 38.864864, 33.029011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.420441, 38.799080, 33.086864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155412, -0.054611, 0.986339,
		-0.154321, -0.984870, -0.078845,
		0.975721, -0.164466, 0.144633,
		38.713158, 38.749741, 33.130253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.054310, 38.359592, 33.490265>,  <38.030151, 38.864864, 33.029011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.054310, 38.359592, 33.490265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.425438, 38.508366, 33.501682>,  <38.648113, 38.597630, 33.508533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.425438, 38.508366, 33.501682>,  <38.054310, 38.359592, 33.490265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.425438, 38.508366, 33.501682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034945, -0.162839, 0.986034,
		0.371389, -0.913864, -0.164083,
		0.927820, 0.371936, 0.028542,
		38.703785, 38.619946, 33.510246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.574390, 37.916557, 33.890095>,  <38.054310, 38.359592, 33.490265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.574390, 37.916557, 33.890095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.813274, 38.236774, 33.910004>,  <38.956604, 38.428905, 33.921947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.813274, 38.236774, 33.910004>,  <38.574390, 37.916557, 33.890095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.813274, 38.236774, 33.910004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073010, -0.007541, 0.997303,
		0.798757, -0.599230, 0.053944,
		0.597207, 0.800542, 0.049773,
		38.992435, 38.476936, 33.924934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.323082, 37.751755, 34.155323>,  <38.574390, 37.916557, 33.890095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.323082, 37.751755, 34.155323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.217300, 38.131107, 34.225334>,  <39.153831, 38.358719, 34.267342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.217300, 38.131107, 34.225334>,  <39.323082, 37.751755, 34.155323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.217300, 38.131107, 34.225334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095411, -0.154870, 0.983317,
		0.959667, 0.276743, -0.049530,
		-0.264456, 0.948382, 0.175027,
		39.137962, 38.415623, 34.277843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.677071, 37.908268, 34.757633>,  <39.323082, 37.751755, 34.155323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.677071, 37.908268, 34.757633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.397461, 38.194309, 34.758068>,  <39.229694, 38.365932, 34.758327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.397461, 38.194309, 34.758068>,  <39.677071, 37.908268, 34.757633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.397461, 38.194309, 34.758068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069294, 0.066225, 0.995396,
		0.711735, 0.695879, -0.095845,
		-0.699022, 0.715100, 0.001086,
		39.187756, 38.408840, 34.758392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.964252, 38.481838, 35.111946>,  <39.677071, 37.908268, 34.757633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.964252, 38.481838, 35.111946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.568363, 38.537426, 35.125393>,  <39.330830, 38.570778, 35.133461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.568363, 38.537426, 35.125393>,  <39.964252, 38.481838, 35.111946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.568363, 38.537426, 35.125393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050794, 0.121932, 0.991238,
		0.133654, 0.982761, -0.127738,
		-0.989725, 0.138971, 0.033621,
		39.271446, 38.579117, 35.135479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.812511, 39.030800, 35.539207>,  <39.964252, 38.481838, 35.111946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.812511, 39.030800, 35.539207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.450905, 38.859882, 35.544426>,  <39.233940, 38.757332, 35.547558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.450905, 38.859882, 35.544426>,  <39.812511, 39.030800, 35.539207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.450905, 38.859882, 35.544426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043137, 0.121534, 0.991650,
		-0.425312, 0.895907, -0.128301,
		-0.904018, -0.427295, 0.013043,
		39.179699, 38.731693, 35.548340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.348301, 39.539894, 35.888802>,  <39.812511, 39.030800, 35.539207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.348301, 39.539894, 35.888802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.171192, 39.182110, 35.913761>,  <39.064926, 38.967442, 35.928738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.171192, 39.182110, 35.913761>,  <39.348301, 39.539894, 35.888802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.171192, 39.182110, 35.913761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270402, 0.199558, 0.941838,
		-0.854887, 0.400151, -0.330223,
		-0.442776, -0.894458, 0.062398,
		39.038361, 38.913773, 35.932480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.695118, 39.610649, 36.207676>,  <39.348301, 39.539894, 35.888802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.695118, 39.610649, 36.207676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.863918, 39.253807, 36.272255>,  <38.965199, 39.039703, 36.311005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.863918, 39.253807, 36.272255>,  <38.695118, 39.610649, 36.207676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.863918, 39.253807, 36.272255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010094, 0.182696, 0.983118,
		-0.906539, -0.413248, 0.086103,
		0.422002, -0.892104, 0.161449,
		38.990520, 38.986176, 36.320690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.326302, 39.345787, 36.820309>,  <38.695118, 39.610649, 36.207676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.326302, 39.345787, 36.820309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.672760, 39.146107, 36.810623>,  <38.880634, 39.026299, 36.804813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.672760, 39.146107, 36.810623>,  <38.326302, 39.345787, 36.820309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.672760, 39.146107, 36.810623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115096, 0.152089, 0.981642,
		-0.486359, -0.853032, 0.189188,
		0.866145, -0.499205, -0.024210,
		38.932602, 38.996346, 36.803360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.345108, 38.706600, 37.293316>,  <38.326302, 39.345787, 36.820309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.345108, 38.706600, 37.293316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.718750, 38.836098, 37.233143>,  <38.942936, 38.913795, 37.197037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.718750, 38.836098, 37.233143>,  <38.345108, 38.706600, 37.293316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.718750, 38.836098, 37.233143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172378, -0.040023, 0.984217,
		0.312615, -0.945297, -0.093192,
		0.934108, 0.323746, -0.150437,
		38.998981, 38.933220, 37.188011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.710899, 38.421513, 37.881065>,  <38.345108, 38.706600, 37.293316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.710899, 38.421513, 37.881065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.970398, 38.681709, 37.723080>,  <39.126095, 38.837826, 37.628288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.970398, 38.681709, 37.723080>,  <38.710899, 38.421513, 37.881065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.970398, 38.681709, 37.723080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422738, 0.123518, 0.897795,
		0.632792, -0.749404, -0.194855,
		0.648743, 0.650490, -0.394962,
		39.165020, 38.876858, 37.604591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.324894, 38.289104, 38.146305>,  <38.710899, 38.421513, 37.881065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.324894, 38.289104, 38.146305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.415279, 38.652798, 38.006458>,  <39.469509, 38.871014, 37.922550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.415279, 38.652798, 38.006458>,  <39.324894, 38.289104, 38.146305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.415279, 38.652798, 38.006458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557055, 0.173817, 0.812082,
		0.799144, -0.378254, -0.467218,
		0.225963, 0.909237, -0.349613,
		39.483067, 38.925568, 37.901573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.990185, 38.352840, 38.232937>,  <39.324894, 38.289104, 38.146305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.990185, 38.352840, 38.232937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.843876, 38.724800, 38.217442>,  <39.756092, 38.947975, 38.208145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.843876, 38.724800, 38.217442>,  <39.990185, 38.352840, 38.232937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.843876, 38.724800, 38.217442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386139, 0.189492, 0.902768,
		0.846822, 0.315249, -0.428381,
		-0.365771, 0.929898, -0.038737,
		39.734146, 39.003769, 38.205822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.479836, 38.633644, 38.565422>,  <39.990185, 38.352840, 38.232937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.479836, 38.633644, 38.565422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.186817, 38.905876, 38.570919>,  <40.011005, 39.069214, 38.574219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.186817, 38.905876, 38.570919>,  <40.479836, 38.633644, 38.565422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.186817, 38.905876, 38.570919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362129, 0.372528, 0.854450,
		0.576402, 0.630900, -0.519351,
		-0.732546, 0.680579, 0.013742,
		39.967052, 39.110050, 38.575043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.708378, 39.382236, 38.531723>,  <40.479836, 38.633644, 38.565422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.708378, 39.382236, 38.531723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.366169, 39.369343, 38.738426>,  <40.160843, 39.361607, 38.862450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.366169, 39.369343, 38.738426>,  <40.708378, 39.382236, 38.531723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.366169, 39.369343, 38.738426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467499, 0.380897, 0.797723,
		-0.222543, 0.924056, -0.310799,
		-0.855523, -0.032230, 0.516761,
		40.109512, 39.359673, 38.893456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.644470, 40.052254, 38.757797>,  <40.708378, 39.382236, 38.531723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.644470, 40.052254, 38.757797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.429626, 39.806164, 38.988628>,  <40.300720, 39.658512, 39.127129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.429626, 39.806164, 38.988628>,  <40.644470, 40.052254, 38.757797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.429626, 39.806164, 38.988628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353003, 0.457404, 0.816193,
		-0.766096, 0.642094, -0.028500,
		-0.537109, -0.615221, 0.577076,
		40.268494, 39.621597, 39.161751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.201183, 40.572376, 39.173252>,  <40.644470, 40.052254, 38.757797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.201183, 40.572376, 39.173252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.325184, 40.221710, 39.320412>,  <40.399586, 40.011311, 39.408707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.325184, 40.221710, 39.320412>,  <40.201183, 40.572376, 39.173252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.325184, 40.221710, 39.320412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305750, 0.458333, 0.834534,
		-0.900231, -0.146223, 0.410126,
		0.310003, -0.876670, 0.367898,
		40.418186, 39.958710, 39.430782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.403736, 40.822777, 39.904102>,  <40.201183, 40.572376, 39.173252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.403736, 40.822777, 39.904102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.466820, 40.428188, 39.921963>,  <40.504669, 40.191433, 39.932678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.466820, 40.428188, 39.921963>,  <40.403736, 40.822777, 39.904102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.466820, 40.428188, 39.921963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113902, 0.063088, 0.991487,
		-0.980895, -0.151279, 0.122311,
		0.157707, -0.986476, 0.044652,
		40.514133, 40.132244, 39.935360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.869339, 40.550873, 40.323116>,  <40.403736, 40.822777, 39.904102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.869339, 40.550873, 40.323116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.215748, 40.352394, 40.298470>,  <40.423595, 40.233307, 40.283684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.215748, 40.352394, 40.298470>,  <39.869339, 40.550873, 40.323116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.215748, 40.352394, 40.298470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291307, 0.400559, 0.868731,
		-0.406378, -0.770290, 0.491438,
		0.866024, -0.496192, -0.061612,
		40.475555, 40.203537, 40.279987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.023491, 40.227501, 40.903126>,  <39.869339, 40.550873, 40.323116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.023491, 40.227501, 40.903126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.395355, 40.202053, 40.757977>,  <40.618473, 40.186787, 40.670887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.395355, 40.202053, 40.757977>,  <40.023491, 40.227501, 40.903126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.395355, 40.202053, 40.757977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367382, 0.233640, 0.900246,
		0.027511, -0.970240, 0.240579,
		0.929663, -0.063617, -0.362877,
		40.674255, 40.182968, 40.649113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.372784, 39.831036, 41.430588>,  <40.023491, 40.227501, 40.903126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.372784, 39.831036, 41.430588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.660927, 40.014149, 41.222160>,  <40.833813, 40.124016, 41.097103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.660927, 40.014149, 41.222160>,  <40.372784, 39.831036, 41.430588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.660927, 40.014149, 41.222160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423963, 0.303950, 0.853153,
		0.548939, -0.835492, 0.024870,
		0.720361, 0.457785, -0.521068,
		40.877037, 40.151485, 41.065842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.014465, 39.703407, 41.784176>,  <40.372784, 39.831036, 41.430588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.014465, 39.703407, 41.784176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.092285, 40.022755, 41.556229>,  <41.138977, 40.214363, 41.419460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.092285, 40.022755, 41.556229>,  <41.014465, 39.703407, 41.784176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.092285, 40.022755, 41.556229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484266, 0.427055, 0.763617,
		0.853017, -0.424529, -0.303543,
		0.194548, 0.798373, -0.569870,
		41.150650, 40.262268, 41.385269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.759560, 39.781387, 41.842796>,  <41.014465, 39.703407, 41.784176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.759560, 39.781387, 41.842796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.569347, 40.119793, 41.746361>,  <41.455219, 40.322838, 41.688499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.569347, 40.119793, 41.746361>,  <41.759560, 39.781387, 41.842796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.569347, 40.119793, 41.746361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411842, 0.456269, 0.788799,
		0.777338, 0.275810, -0.565397,
		-0.475532, 0.846018, -0.241085,
		41.426689, 40.373600, 41.674034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.312828, 40.354713, 41.857296>,  <41.759560, 39.781387, 41.842796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.312828, 40.354713, 41.857296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.944851, 40.508297, 41.888973>,  <41.724064, 40.600449, 41.907978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.944851, 40.508297, 41.888973>,  <42.312828, 40.354713, 41.857296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.944851, 40.508297, 41.888973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305962, 0.576854, 0.757382,
		0.245125, 0.720980, -0.648152,
		-0.919946, 0.383963, 0.079191,
		41.668865, 40.623486, 41.912731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.443451, 41.053860, 42.040634>,  <42.312828, 40.354713, 41.857296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.443451, 41.053860, 42.040634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.059589, 41.010639, 42.144470>,  <41.829273, 40.984707, 42.206772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.059589, 41.010639, 42.144470>,  <42.443451, 41.053860, 42.040634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.059589, 41.010639, 42.144470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129445, 0.649801, 0.749001,
		-0.249618, 0.752385, -0.609596,
		-0.959653, -0.108055, 0.259595,
		41.771694, 40.978222, 42.222347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.215801, 41.698826, 41.957584>,  <42.443451, 41.053860, 42.040634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.215801, 41.698826, 41.957584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.991859, 41.496380, 42.220009>,  <41.857494, 41.374912, 42.377464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.991859, 41.496380, 42.220009>,  <42.215801, 41.698826, 41.957584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.991859, 41.496380, 42.220009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207611, 0.680835, 0.702397,
		-0.802163, 0.529442, -0.276090,
		-0.559850, -0.506118, 0.656058,
		41.823906, 41.344543, 42.416828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.654945, 42.117416, 42.327591>,  <42.215801, 41.698826, 41.957584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.654945, 42.117416, 42.327591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.694881, 41.814125, 42.585312>,  <41.718842, 41.632149, 42.739944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.694881, 41.814125, 42.585312>,  <41.654945, 42.117416, 42.327591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.694881, 41.814125, 42.585312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091525, 0.651788, 0.752858,
		-0.990786, -0.016193, 0.134469,
		0.099836, -0.758228, 0.644300,
		41.724831, 41.586655, 42.778603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.293938, 42.232323, 42.945095>,  <41.654945, 42.117416, 42.327591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.293938, 42.232323, 42.945095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.559830, 41.956272, 43.059536>,  <41.719364, 41.790642, 43.128201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.559830, 41.956272, 43.059536>,  <41.293938, 42.232323, 42.945095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.559830, 41.956272, 43.059536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165712, 0.509627, 0.844286,
		-0.728475, -0.513809, 0.453126,
		0.664728, -0.690131, 0.286106,
		41.759247, 41.749233, 43.145367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.142715, 41.822605, 43.667435>,  <41.293938, 42.232323, 42.945095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.142715, 41.822605, 43.667435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.526199, 41.904591, 43.588573>,  <41.756290, 41.953781, 43.541256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.526199, 41.904591, 43.588573>,  <41.142715, 41.822605, 43.667435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.526199, 41.904591, 43.588573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130184, 0.300060, 0.944995,
		0.252845, -0.931641, 0.260988,
		0.958709, 0.204960, -0.197153,
		41.813812, 41.966080, 43.529427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.541149, 42.502228, 43.928337>,  <41.142715, 41.822605, 43.667435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.541149, 42.502228, 43.928337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.903736, 42.359760, 43.837597>,  <42.121288, 42.274281, 43.783154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.903736, 42.359760, 43.837597>,  <41.541149, 42.502228, 43.928337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.903736, 42.359760, 43.837597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339984, 0.296952, 0.892317,
		-0.250449, -0.885983, 0.390268,
		0.906469, -0.356165, -0.226849,
		42.175678, 42.252911, 43.769543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.654026, 41.938980, 44.309849>,  <41.541149, 42.502228, 43.928337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.654026, 41.938980, 44.309849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.995075, 42.124161, 44.212925>,  <42.199703, 42.235268, 44.154770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.995075, 42.124161, 44.212925>,  <41.654026, 41.938980, 44.309849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.995075, 42.124161, 44.212925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226238, 0.090935, 0.969818,
		0.471010, -0.881708, -0.027203,
		0.852623, 0.462949, -0.242307,
		42.250862, 42.263046, 44.140232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.326996, 41.560238, 44.404205>,  <41.654026, 41.938980, 44.309849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.326996, 41.560238, 44.404205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.311317, 41.952431, 44.481270>,  <42.301910, 42.187748, 44.527508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.311317, 41.952431, 44.481270>,  <42.326996, 41.560238, 44.404205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.311317, 41.952431, 44.481270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093735, -0.188352, 0.977618,
		0.994825, 0.056380, -0.084522,
		-0.039198, 0.980482, 0.192662,
		42.299557, 42.246574, 44.539070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.646526, 41.432392, 43.789116>,  <42.326996, 41.560238, 44.404205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.646526, 41.432392, 43.789116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.262653, 41.541435, 43.761692>,  <42.032330, 41.606861, 43.745239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.262653, 41.541435, 43.761692>,  <42.646526, 41.432392, 43.789116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.262653, 41.541435, 43.761692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046248, -0.393702, -0.918074,
		-0.277266, -0.877886, 0.390435,
		-0.959679, 0.272608, -0.068560,
		41.974751, 41.623219, 43.741123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.326550, 40.897488, 43.566303>,  <42.646526, 41.432392, 43.789116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.326550, 40.897488, 43.566303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.042336, 41.162960, 43.472782>,  <41.871807, 41.322243, 43.416672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.042336, 41.162960, 43.472782>,  <42.326550, 40.897488, 43.566303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.042336, 41.162960, 43.472782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272917, -0.566179, -0.777791,
		-0.648580, -0.488839, 0.583421,
		-0.710535, 0.663685, -0.233800,
		41.829174, 41.362064, 43.402641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.677052, 40.503990, 43.446003>,  <42.326550, 40.897488, 43.566303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.677052, 40.503990, 43.446003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.678921, 40.851311, 43.247597>,  <41.680042, 41.059704, 43.128551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.678921, 40.851311, 43.247597>,  <41.677052, 40.503990, 43.446003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.678921, 40.851311, 43.247597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237682, -0.480845, -0.843976,
		-0.971332, 0.121839, 0.204132,
		0.004674, 0.868299, -0.496020,
		41.680325, 41.111801, 43.098789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.085335, 40.619812, 43.289127>,  <41.677052, 40.503990, 43.446003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.085335, 40.619812, 43.289127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.293446, 40.834576, 43.023483>,  <41.418312, 40.963432, 42.864098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.293446, 40.834576, 43.023483>,  <41.085335, 40.619812, 43.289127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.293446, 40.834576, 43.023483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286469, -0.622873, -0.727987,
		-0.804518, 0.569001, -0.170259,
		0.520275, 0.536905, -0.664114,
		41.449528, 40.995647, 42.824249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.607506, 40.726246, 42.706516>,  <41.085335, 40.619812, 43.289127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.607506, 40.726246, 42.706516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.972126, 40.795723, 42.557434>,  <41.190899, 40.837410, 42.467983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.972126, 40.795723, 42.557434>,  <40.607506, 40.726246, 42.706516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.972126, 40.795723, 42.557434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253726, -0.475685, -0.842227,
		-0.323581, 0.862296, -0.389539,
		0.911547, 0.173693, -0.372709,
		41.245590, 40.847832, 42.445621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.523079, 41.063320, 42.059933>,  <40.607506, 40.726246, 42.706516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.523079, 41.063320, 42.059933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.904526, 40.953941, 42.009575>,  <41.133392, 40.888313, 41.979359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.904526, 40.953941, 42.009575>,  <40.523079, 41.063320, 42.059933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.904526, 40.953941, 42.009575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178527, -0.176975, -0.967888,
		0.242384, 0.945467, -0.217584,
		0.953613, -0.273445, -0.125895,
		41.190609, 40.871906, 41.971806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.768234, 41.495693, 41.531040>,  <40.523079, 41.063320, 42.059933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.768234, 41.495693, 41.531040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.953674, 41.142513, 41.560612>,  <41.064938, 40.930603, 41.578354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.953674, 41.142513, 41.560612>,  <40.768234, 41.495693, 41.531040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.953674, 41.142513, 41.560612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280975, -0.225628, -0.932815,
		0.840313, 0.411684, -0.352690,
		0.463602, -0.882954, 0.073925,
		41.092754, 40.877628, 41.582790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.487957, 41.600407, 41.390263>,  <40.768234, 41.495693, 41.531040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.487957, 41.600407, 41.390263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.230839, 41.299412, 41.332901>,  <41.076569, 41.118813, 41.298485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.230839, 41.299412, 41.332901>,  <41.487957, 41.600407, 41.390263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.230839, 41.299412, 41.332901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131169, 0.292561, -0.947208,
		0.754721, -0.590054, -0.286762,
		-0.642799, -0.752492, -0.143405,
		41.037998, 41.073666, 41.289879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.480518, 41.276573, 40.677883>,  <41.487957, 41.600407, 41.390263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.480518, 41.276573, 40.677883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.375092, 40.964348, 40.904598>,  <41.311836, 40.777012, 41.040627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.375092, 40.964348, 40.904598>,  <41.480518, 41.276573, 40.677883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.375092, 40.964348, 40.904598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207506, -0.527928, -0.823549,
		0.942057, -0.334675, -0.022826,
		-0.263571, -0.780567, 0.566786,
		41.296021, 40.730179, 41.074635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.925327, 40.724155, 40.494541>,  <41.480518, 41.276573, 40.677883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.925327, 40.724155, 40.494541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.605354, 40.546890, 40.656391>,  <41.413372, 40.440533, 40.753502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.605354, 40.546890, 40.656391>,  <41.925327, 40.724155, 40.494541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.605354, 40.546890, 40.656391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161526, -0.490376, -0.856412,
		0.577947, -0.750426, 0.320684,
		-0.799929, -0.443162, 0.404624,
		41.365376, 40.413940, 40.777779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.743088, 40.044205, 40.075325>,  <41.925327, 40.724155, 40.494541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.743088, 40.044205, 40.075325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.413654, 40.068947, 40.300850>,  <41.215996, 40.083794, 40.436165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.413654, 40.068947, 40.300850>,  <41.743088, 40.044205, 40.075325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.413654, 40.068947, 40.300850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513220, -0.504482, -0.694337,
		0.241482, -0.861204, 0.447230,
		-0.823585, 0.061858, 0.563810,
		41.166580, 40.087505, 40.469994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.438011, 39.337517, 40.297680>,  <41.743088, 40.044205, 40.075325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.438011, 39.337517, 40.297680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.144035, 39.608089, 40.278461>,  <40.967651, 39.770432, 40.266930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.144035, 39.608089, 40.278461>,  <41.438011, 39.337517, 40.297680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.144035, 39.608089, 40.278461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526923, -0.614230, -0.587430,
		-0.426865, -0.406409, 0.807848,
		-0.734941, 0.676427, -0.048047,
		40.923553, 39.811016, 40.264046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.864086, 38.935421, 40.161270>,  <41.438011, 39.337517, 40.297680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.864086, 38.935421, 40.161270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.704479, 39.284626, 40.049107>,  <40.608715, 39.494148, 39.981808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.704479, 39.284626, 40.049107>,  <40.864086, 38.935421, 40.161270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.704479, 39.284626, 40.049107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796721, -0.481467, -0.365273,
		-0.453897, 0.077658, 0.887664,
		-0.399015, 0.873017, -0.280408,
		40.584774, 39.546532, 39.964985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.073189, 38.871380, 40.273132>,  <40.864086, 38.935421, 40.161270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.073189, 38.871380, 40.273132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.162971, 39.157623, 40.008553>,  <40.216839, 39.329369, 39.849804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.162971, 39.157623, 40.008553>,  <40.073189, 38.871380, 40.273132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.162971, 39.157623, 40.008553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849054, -0.189515, -0.493145,
		-0.478255, 0.672299, 0.565054,
		0.224455, 0.715611, -0.661454,
		40.230309, 39.372307, 39.810116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.435806, 38.958584, 39.856030>,  <40.073189, 38.871380, 40.273132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.435806, 38.958584, 39.856030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.677166, 39.189758, 39.636250>,  <39.821980, 39.328465, 39.504379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.677166, 39.189758, 39.636250>,  <39.435806, 38.958584, 39.856030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.677166, 39.189758, 39.636250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639018, -0.061751, -0.766709,
		-0.477041, 0.813739, 0.332055,
		0.603397, 0.577940, -0.549452,
		39.858185, 39.363140, 39.471413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.982124, 39.308525, 39.397820>,  <39.435806, 38.958584, 39.856030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.982124, 39.308525, 39.397820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.332355, 39.410709, 39.233818>,  <39.542496, 39.472019, 39.135418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.332355, 39.410709, 39.233818>,  <38.982124, 39.308525, 39.397820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.332355, 39.410709, 39.233818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367776, -0.197793, -0.908636,
		-0.313215, 0.946371, -0.079232,
		0.875578, 0.255459, -0.410004,
		39.595028, 39.487347, 39.110817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.921024, 39.769547, 38.873817>,  <38.982124, 39.308525, 39.397820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.921024, 39.769547, 38.873817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.259632, 39.578842, 38.779072>,  <39.462795, 39.464420, 38.722225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.259632, 39.578842, 38.779072>,  <38.921024, 39.769547, 38.873817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.259632, 39.578842, 38.779072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364418, -0.194601, -0.910676,
		0.388083, 0.857220, -0.338475,
		0.846517, -0.476764, -0.236865,
		39.513588, 39.435814, 38.708012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.119781, 40.157936, 38.206532>,  <38.921024, 39.769547, 38.873817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.119781, 40.157936, 38.206532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.279907, 39.792126, 38.229809>,  <39.375984, 39.572639, 38.243774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.279907, 39.792126, 38.229809>,  <39.119781, 40.157936, 38.206532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.279907, 39.792126, 38.229809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068792, -0.093315, -0.993257,
		0.913790, 0.393616, -0.100268,
		0.400318, -0.914527, 0.058193,
		39.400002, 39.517769, 38.247265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.642296, 40.127754, 37.669846>,  <39.119781, 40.157936, 38.206532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.642296, 40.127754, 37.669846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.534405, 39.746983, 37.727924>,  <39.469669, 39.518520, 37.762772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.534405, 39.746983, 37.727924>,  <39.642296, 40.127754, 37.669846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.534405, 39.746983, 37.727924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089322, -0.125398, -0.988077,
		0.958785, -0.279482, -0.051204,
		-0.269729, -0.951927, 0.145194,
		39.453487, 39.461403, 37.771481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.093884, 39.757591, 37.157597>,  <39.642296, 40.127754, 37.669846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.093884, 39.757591, 37.157597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.811413, 39.503189, 37.282059>,  <39.641930, 39.350548, 37.356735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.811413, 39.503189, 37.282059>,  <40.093884, 39.757591, 37.157597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.811413, 39.503189, 37.282059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199427, -0.243006, -0.949304,
		0.679374, -0.732425, 0.044767,
		-0.706172, -0.636005, 0.311157,
		39.599560, 39.312389, 37.375404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.283356, 39.197483, 36.850311>,  <40.093884, 39.757591, 37.157597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.283356, 39.197483, 36.850311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.904240, 39.131714, 36.959602>,  <39.676769, 39.092255, 37.025177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.904240, 39.131714, 36.959602>,  <40.283356, 39.197483, 36.850311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.904240, 39.131714, 36.959602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232096, -0.231891, -0.944647,
		0.218680, -0.958745, 0.181623,
		-0.947793, -0.164421, 0.273231,
		39.619904, 39.082386, 37.041573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.079151, 38.387493, 36.792820>,  <40.283356, 39.197483, 36.850311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.079151, 38.387493, 36.792820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.735802, 38.592323, 36.780396>,  <39.529793, 38.715221, 36.772942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.735802, 38.592323, 36.780396>,  <40.079151, 38.387493, 36.792820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.735802, 38.592323, 36.780396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197175, -0.385195, -0.901525,
		-0.473618, -0.767722, 0.431611,
		-0.858375, 0.512081, -0.031059,
		39.478291, 38.745949, 36.771076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.563187, 38.130581, 36.429264>,  <40.079151, 38.387493, 36.792820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.563187, 38.130581, 36.429264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.434711, 38.431206, 36.198788>,  <40.357628, 38.611580, 36.060501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.434711, 38.431206, 36.198788>,  <40.563187, 38.130581, 36.429264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.434711, 38.431206, 36.198788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884364, 0.455659, 0.101367,
		0.338730, -0.477005, -0.811004,
		-0.321189, 0.751559, -0.576192,
		40.338356, 38.656673, 36.025928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.848190, 38.454323, 35.716103>,  <40.563187, 38.130581, 36.429264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.848190, 38.454323, 35.716103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.718121, 38.737450, 35.966942>,  <40.640079, 38.907326, 36.117443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.718121, 38.737450, 35.966942>,  <40.848190, 38.454323, 35.716103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.718121, 38.737450, 35.966942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933902, 0.344585, 0.095329,
		-0.148612, 0.616645, -0.773086,
		-0.325178, 0.707820, 0.627096,
		40.620567, 38.949795, 36.155071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.260395, 39.037273, 35.596172>,  <40.848190, 38.454323, 35.716103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.260395, 39.037273, 35.596172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.117310, 39.091282, 35.965778>,  <41.031456, 39.123688, 36.187542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.117310, 39.091282, 35.965778>,  <41.260395, 39.037273, 35.596172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.117310, 39.091282, 35.965778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882523, 0.372350, 0.287243,
		-0.305273, 0.918218, -0.252357,
		-0.357717, 0.135024, 0.924017,
		41.009995, 39.131790, 36.242985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.380436, 39.700443, 35.862518>,  <41.260395, 39.037273, 35.596172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.380436, 39.700443, 35.862518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.368874, 39.455772, 36.178749>,  <41.361938, 39.308971, 36.368488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.368874, 39.455772, 36.178749>,  <41.380436, 39.700443, 35.862518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.368874, 39.455772, 36.178749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895785, 0.335103, 0.292021,
		-0.443547, 0.716630, 0.538245,
		-0.028903, -0.611677, 0.790580,
		41.360203, 39.272270, 36.415924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.640129, 40.134922, 36.384014>,  <41.380436, 39.700443, 35.862518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.640129, 40.134922, 36.384014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.684116, 39.746181, 36.467350>,  <41.710510, 39.512936, 36.517349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.684116, 39.746181, 36.467350>,  <41.640129, 40.134922, 36.384014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.684116, 39.746181, 36.467350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924870, 0.176828, 0.336670,
		-0.364034, 0.155660, 0.918286,
		0.109973, -0.971855, 0.208337,
		41.717110, 39.454624, 36.529850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.338673, 40.048805, 36.487289>,  <41.640129, 40.134922, 36.384014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.338673, 40.048805, 36.487289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.198784, 39.687851, 36.587997>,  <42.114849, 39.471279, 36.648422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.198784, 39.687851, 36.587997>,  <42.338673, 40.048805, 36.487289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.198784, 39.687851, 36.587997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934999, -0.319297, 0.154357,
		-0.058899, 0.289389, 0.955398,
		-0.349725, -0.902388, 0.251772,
		42.093868, 39.417133, 36.663528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.510994, 39.900387, 37.246532>,  <42.338673, 40.048805, 36.487289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.510994, 39.900387, 37.246532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.459118, 39.563213, 37.037674>,  <42.427994, 39.360909, 36.912357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.459118, 39.563213, 37.037674>,  <42.510994, 39.900387, 37.246532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.459118, 39.563213, 37.037674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991383, -0.100422, -0.084113,
		0.018466, -0.528557, 0.848697,
		-0.129686, -0.842937, -0.522148,
		42.420212, 39.310333, 36.881031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.687035, 39.158707, 37.539917>,  <42.510994, 39.900387, 37.246532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.687035, 39.158707, 37.539917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.760109, 39.256580, 37.159023>,  <42.803951, 39.315304, 36.930485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.760109, 39.256580, 37.159023>,  <42.687035, 39.158707, 37.539917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.760109, 39.256580, 37.159023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980597, 0.024708, 0.194473,
		0.071112, -0.969288, -0.235423,
		0.182684, 0.244685, -0.952238,
		42.814915, 39.329987, 36.873352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.118713, 38.625557, 37.059673>,  <42.687035, 39.158707, 37.539917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.118713, 38.625557, 37.059673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.220211, 38.997879, 36.954441>,  <43.281109, 39.221272, 36.891304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.220211, 38.997879, 36.954441>,  <43.118713, 38.625557, 37.059673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.220211, 38.997879, 36.954441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955143, -0.198179, 0.220062,
		0.152699, -0.307115, -0.939342,
		0.253742, 0.930809, -0.263077,
		43.296333, 39.277122, 36.875519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.816189, 38.572823, 36.711643>,  <43.118713, 38.625557, 37.059673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.816189, 38.572823, 36.711643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.741077, 38.927040, 36.881603>,  <43.696011, 39.139572, 36.983582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.741077, 38.927040, 36.881603>,  <43.816189, 38.572823, 36.711643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.741077, 38.927040, 36.881603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925274, 0.014336, 0.379028,
		0.329557, 0.464326, -0.822067,
		-0.187778, 0.885548, 0.424904,
		43.684746, 39.192703, 37.009075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.364098, 38.083111, 36.648075>,  <43.816189, 38.572823, 36.711643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.364098, 38.083111, 36.648075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.559406, 37.976059, 36.315819>,  <44.676590, 37.911827, 36.116463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.559406, 37.976059, 36.315819>,  <44.364098, 38.083111, 36.648075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.559406, 37.976059, 36.315819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871421, 0.098128, 0.480621,
		-0.047120, -0.958511, 0.281134,
		0.488268, -0.267633, -0.830642,
		44.705887, 37.895767, 36.066628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.178715, 38.094543, 35.926365>,  <44.364098, 38.083111, 36.648075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.178715, 38.094543, 35.926365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.503498, 38.237663, 35.741886>,  <44.698368, 38.323536, 35.631199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.503498, 38.237663, 35.741886>,  <44.178715, 38.094543, 35.926365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.503498, 38.237663, 35.741886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243347, -0.925665, -0.289703,
		-0.530568, 0.122996, -0.838671,
		0.811961, 0.357795, -0.461197,
		44.747086, 38.345001, 35.603527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.094860, 38.061783, 35.226753>,  <44.178715, 38.094543, 35.926365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.094860, 38.061783, 35.226753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.484154, 38.024860, 35.310944>,  <44.717728, 38.002708, 35.361458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.484154, 38.024860, 35.310944>,  <44.094860, 38.061783, 35.226753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.484154, 38.024860, 35.310944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036990, -0.966775, -0.252938,
		0.226835, 0.238381, -0.944309,
		0.973230, -0.092306, 0.210480,
		44.776123, 37.997169, 35.374088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.307480, 37.638771, 34.676125>,  <44.094860, 38.061783, 35.226753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.307480, 37.638771, 34.676125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.550365, 37.598297, 34.991352>,  <44.696098, 37.574013, 35.180489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.550365, 37.598297, 34.991352>,  <44.307480, 37.638771, 34.676125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.550365, 37.598297, 34.991352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138703, -0.963128, -0.230534,
		0.782335, 0.249291, -0.570795,
		0.607218, -0.101184, 0.788066,
		44.732533, 37.567944, 35.227772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.896706, 37.366940, 34.319706>,  <44.307480, 37.638771, 34.676125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.896706, 37.366940, 34.319706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.850986, 37.242290, 34.697029>,  <44.823555, 37.167503, 34.923424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.850986, 37.242290, 34.697029>,  <44.896706, 37.366940, 34.319706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.850986, 37.242290, 34.697029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317026, -0.911325, -0.262641,
		0.941504, 0.269033, 0.202955,
		-0.114299, -0.311620, 0.943307,
		44.816696, 37.148804, 34.980022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.547215, 37.011421, 34.557194>,  <44.896706, 37.366940, 34.319706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.547215, 37.011421, 34.557194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.221699, 36.884441, 34.751911>,  <45.026390, 36.808254, 34.868744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.221699, 36.884441, 34.751911>,  <45.547215, 37.011421, 34.557194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.221699, 36.884441, 34.751911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280037, -0.948169, -0.150182,
		0.509241, 0.014104, 0.860508,
		-0.813789, -0.317453, 0.486797,
		44.977562, 36.789204, 34.897949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.001312, 37.056435, 35.139950>,  <45.547215, 37.011421, 34.557194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.001312, 37.056435, 35.139950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.089661, 36.722408, 35.341496>,  <46.142670, 36.521992, 35.462425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.089661, 36.722408, 35.341496>,  <46.001312, 37.056435, 35.139950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.089661, 36.722408, 35.341496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830289, -0.110057, -0.546359,
		0.511698, 0.539032, 0.669036,
		0.220873, -0.835064, 0.503868,
		46.155922, 36.471889, 35.492657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.622463, 37.050453, 35.396935>,  <46.001312, 37.056435, 35.139950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.622463, 37.050453, 35.396935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.562557, 36.655003, 35.391529>,  <46.526615, 36.417732, 35.388287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.562557, 36.655003, 35.391529>,  <46.622463, 37.050453, 35.396935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.562557, 36.655003, 35.391529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877392, -0.126590, -0.462772,
		0.455800, -0.081163, 0.886374,
		-0.149766, -0.988629, -0.013512,
		46.517628, 36.358414, 35.387474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.230938, 36.736774, 35.388111>,  <46.622463, 37.050453, 35.396935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.230938, 36.736774, 35.388111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.999832, 36.440334, 35.251312>,  <46.861168, 36.262470, 35.169235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.999832, 36.440334, 35.251312>,  <47.230938, 36.736774, 35.388111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.999832, 36.440334, 35.251312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776638, -0.370292, -0.509625,
		0.251047, -0.560046, 0.789508,
		-0.577762, -0.741102, -0.341993,
		46.826504, 36.218002, 35.148716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.392262, 36.078671, 35.567238>,  <47.230938, 36.736774, 35.388111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.392262, 36.078671, 35.567238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.225201, 36.050861, 35.204861>,  <47.124962, 36.034176, 34.987434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.225201, 36.050861, 35.204861>,  <47.392262, 36.078671, 35.567238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.225201, 36.050861, 35.204861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853168, -0.372952, -0.364706,
		-0.312518, -0.925242, 0.215079,
		-0.417655, -0.069521, -0.905942,
		47.099903, 36.030006, 34.933079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.691303, 35.562237, 35.173370>,  <47.392262, 36.078671, 35.567238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.691303, 35.562237, 35.173370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.784531, 35.174191, 35.146366>,  <47.840466, 34.941364, 35.130165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.784531, 35.174191, 35.146366>,  <47.691303, 35.562237, 35.173370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.784531, 35.174191, 35.146366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958450, 0.240895, -0.152784,
		0.164480, -0.029096, 0.985951,
		0.233065, -0.970115, -0.067510,
		47.854450, 34.883156, 35.126114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.807003, 30.769938, 30.069195> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.565781, 30.927856, 29.791933>,  <36.421047, 31.022608, 29.625576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.565781, 30.927856, 29.791933>,  <36.807003, 30.769938, 30.069195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.565781, 30.927856, 29.791933> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573367, 0.389601, 0.720737,
		0.554597, 0.832074, -0.008587,
		-0.603052, 0.394795, -0.693155,
		36.384865, 31.046295, 29.583986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.826393, 31.471754, 30.171244>,  <36.807003, 30.769938, 30.069195>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.826393, 31.471754, 30.171244> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.480625, 31.378721, 29.992950>,  <36.273163, 31.322903, 29.885975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.480625, 31.378721, 29.992950>,  <36.826393, 31.471754, 30.171244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.480625, 31.378721, 29.992950> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502456, 0.430594, 0.749751,
		0.017552, 0.872064, -0.489077,
		-0.864424, -0.232580, -0.445732,
		36.221298, 31.308947, 29.859230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.493748, 32.098076, 30.153488>,  <36.826393, 31.471754, 30.171244>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.493748, 32.098076, 30.153488> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.215843, 31.810381, 30.154196>,  <36.049099, 31.637764, 30.154621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.215843, 31.810381, 30.154196>,  <36.493748, 32.098076, 30.153488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.215843, 31.810381, 30.154196> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577710, 0.559515, 0.594301,
		-0.428432, 0.411878, -0.804240,
		-0.694764, -0.719236, 0.001768,
		36.007416, 31.594610, 30.154726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.960148, 32.496933, 30.125168>,  <36.493748, 32.098076, 30.153488>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.960148, 32.496933, 30.125168> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.771408, 32.157681, 30.221521>,  <35.658165, 31.954128, 30.279333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.771408, 32.157681, 30.221521>,  <35.960148, 32.496933, 30.125168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.771408, 32.157681, 30.221521> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659447, 0.520838, 0.542086,
		-0.585223, 0.096934, -0.805057,
		-0.471851, -0.848134, 0.240884,
		35.629852, 31.903240, 30.293787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.218418, 32.627090, 30.168341>,  <35.960148, 32.496933, 30.125168>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.218418, 32.627090, 30.168341> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.258511, 32.296307, 30.389643>,  <35.282566, 32.097836, 30.522425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.258511, 32.296307, 30.389643>,  <35.218418, 32.627090, 30.168341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.258511, 32.296307, 30.389643> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566936, 0.409487, 0.714776,
		-0.817641, -0.385304, -0.427789,
		0.100232, -0.826959, 0.553256,
		35.288582, 32.048218, 30.555620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.606487, 32.504623, 30.520615>,  <35.218418, 32.627090, 30.168341>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.606487, 32.504623, 30.520615> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.851963, 32.283031, 30.745644>,  <34.999249, 32.150074, 30.880661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.851963, 32.283031, 30.745644>,  <34.606487, 32.504623, 30.520615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.851963, 32.283031, 30.745644> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427432, 0.365974, 0.826659,
		-0.663842, -0.747773, -0.012196,
		0.613690, -0.553984, 0.562572,
		35.036072, 32.116837, 30.914415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.170307, 32.110088, 31.010330>,  <34.606487, 32.504623, 30.520615>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.170307, 32.110088, 31.010330> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.535851, 32.128902, 31.171654>,  <34.755177, 32.140190, 31.268448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.535851, 32.128902, 31.171654>,  <34.170307, 32.110088, 31.010330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.535851, 32.128902, 31.171654> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379507, 0.452135, 0.807186,
		-0.144381, -0.890708, 0.431036,
		0.913853, 0.047039, 0.403310,
		34.810005, 32.143013, 31.292646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.992077, 31.867180, 31.775141>,  <34.170307, 32.110088, 31.010330>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.992077, 31.867180, 31.775141> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.346760, 32.051498, 31.760120>,  <34.559570, 32.162090, 31.751108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.346760, 32.051498, 31.760120>,  <33.992077, 31.867180, 31.775141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.346760, 32.051498, 31.760120> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237970, 0.524539, 0.817453,
		0.396375, -0.715910, 0.574770,
		0.886711, 0.460796, -0.037548,
		34.612774, 32.189739, 31.748856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.284077, 31.969034, 32.510895>,  <33.992077, 31.867180, 31.775141>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.284077, 31.969034, 32.510895> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.500179, 32.241791, 32.313656>,  <34.629841, 32.405445, 32.195312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.500179, 32.241791, 32.313656>,  <34.284077, 31.969034, 32.510895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.500179, 32.241791, 32.313656> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061512, 0.552409, 0.831300,
		0.839247, -0.479449, 0.256500,
		0.540259, 0.681889, -0.493099,
		34.662258, 32.446358, 32.165726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.670197, 32.228065, 33.058895>,  <34.284077, 31.969034, 32.510895>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.670197, 32.228065, 33.058895> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.736023, 32.497456, 32.770634>,  <34.775520, 32.659092, 32.597675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.736023, 32.497456, 32.770634>,  <34.670197, 32.228065, 33.058895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.736023, 32.497456, 32.770634> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148115, 0.705461, 0.693099,
		0.975182, -0.220801, 0.016343,
		0.164567, 0.673477, -0.720657,
		34.785393, 32.699497, 32.554436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.304947, 32.494801, 33.125420>,  <34.670197, 32.228065, 33.058895>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.304947, 32.494801, 33.125420> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.123287, 32.780281, 32.912109>,  <35.014294, 32.951569, 32.784122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.123287, 32.780281, 32.912109>,  <35.304947, 32.494801, 33.125420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.123287, 32.780281, 32.912109> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421035, 0.699431, 0.577517,
		0.785163, 0.037752, -0.618138,
		-0.454147, 0.713703, -0.533272,
		34.987041, 32.994392, 32.752129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.887318, 33.014267, 32.924271>,  <35.304947, 32.494801, 33.125420>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.887318, 33.014267, 32.924271> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.529224, 33.192425, 32.929588>,  <35.314369, 33.299320, 32.932777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.529224, 33.192425, 32.929588>,  <35.887318, 33.014267, 32.924271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.529224, 33.192425, 32.929588> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355683, 0.696308, 0.623414,
		0.268409, 0.562831, -0.781779,
		-0.895235, 0.445395, 0.013294,
		35.260654, 33.326042, 32.933578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.066826, 33.722092, 32.772114>,  <35.887318, 33.014267, 32.924271>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.066826, 33.722092, 32.772114> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.698486, 33.756332, 32.924278>,  <35.477482, 33.776878, 33.015575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.698486, 33.756332, 32.924278>,  <36.066826, 33.722092, 32.772114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.698486, 33.756332, 32.924278> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263773, 0.855255, 0.446052,
		-0.287165, 0.511088, -0.810139,
		-0.920847, 0.085602, 0.380411,
		35.422234, 33.782013, 33.038403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.755627, 34.384892, 32.589088>,  <36.066826, 33.722092, 32.772114>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.755627, 34.384892, 32.589088> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.548420, 34.260139, 32.907681>,  <35.424095, 34.185287, 33.098835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.548420, 34.260139, 32.907681>,  <35.755627, 34.384892, 32.589088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.548420, 34.260139, 32.907681> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057760, 0.916278, 0.396358,
		-0.853417, 0.251325, -0.456635,
		-0.518019, -0.311883, 0.796483,
		35.393013, 34.166573, 33.146626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.369457, 35.015865, 32.801647>,  <35.755627, 34.384892, 32.589088>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.369457, 35.015865, 32.801647> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.343666, 34.785233, 33.127445>,  <35.328190, 34.646854, 33.322922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.343666, 34.785233, 33.127445>,  <35.369457, 35.015865, 32.801647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.343666, 34.785233, 33.127445> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139425, 0.813389, 0.564765,
		-0.988131, -0.077144, -0.132838,
		-0.064481, -0.576582, 0.814491,
		35.324322, 34.612259, 33.371792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.007313, 35.465805, 33.200562>,  <35.369457, 35.015865, 32.801647>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.007313, 35.465805, 33.200562> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.141052, 35.193626, 33.461391>,  <35.221298, 35.030319, 33.617889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.141052, 35.193626, 33.461391>,  <35.007313, 35.465805, 33.200562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.141052, 35.193626, 33.461391> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131690, 0.718840, 0.682588,
		-0.933203, -0.142352, 0.329952,
		0.334351, -0.680445, 0.652077,
		35.241356, 34.989494, 33.657013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.762142, 35.626247, 33.890766>,  <35.007313, 35.465805, 33.200562>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.762142, 35.626247, 33.890766> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.089546, 35.401009, 33.936298>,  <35.285988, 35.265865, 33.963619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.089546, 35.401009, 33.936298>,  <34.762142, 35.626247, 33.890766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.089546, 35.401009, 33.936298> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314942, 0.605536, 0.730847,
		-0.480471, -0.562355, 0.672982,
		0.818511, -0.563101, 0.113833,
		35.335098, 35.232079, 33.970448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.809986, 35.721146, 34.606369>,  <34.762142, 35.626247, 33.890766>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.809986, 35.721146, 34.606369> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.161919, 35.604111, 34.456547>,  <35.373077, 35.533890, 34.366653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.161919, 35.604111, 34.456547>,  <34.809986, 35.721146, 34.606369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.161919, 35.604111, 34.456547> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473632, 0.605472, 0.639591,
		0.039642, -0.740131, 0.671293,
		0.879830, -0.292591, -0.374552,
		35.425869, 35.516335, 34.344181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.211285, 35.632656, 35.209560>,  <34.809986, 35.721146, 34.606369>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.211285, 35.632656, 35.209560> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.489079, 35.639240, 34.921833>,  <35.655754, 35.643192, 34.749195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.489079, 35.639240, 34.921833>,  <35.211285, 35.632656, 35.209560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.489079, 35.639240, 34.921833> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540728, 0.647594, 0.536875,
		0.474666, -0.761807, 0.440841,
		0.694482, 0.016461, -0.719322,
		35.697422, 35.644180, 34.706036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.796959, 35.424194, 35.505508>,  <35.211285, 35.632656, 35.209560>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.796959, 35.424194, 35.505508> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.875275, 35.650829, 35.185349>,  <35.922264, 35.786812, 34.993252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.875275, 35.650829, 35.185349>,  <35.796959, 35.424194, 35.505508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.875275, 35.650829, 35.185349> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530608, 0.625192, 0.572355,
		0.824695, -0.536759, -0.178233,
		0.195787, 0.566590, -0.800402,
		35.934010, 35.820805, 34.945229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.451008, 35.577129, 35.675121>,  <35.796959, 35.424194, 35.505508>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.451008, 35.577129, 35.675121> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.304344, 35.842541, 35.414265>,  <36.216347, 36.001789, 35.257751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.304344, 35.842541, 35.414265>,  <36.451008, 35.577129, 35.675121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.304344, 35.842541, 35.414265> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375225, 0.746888, 0.548967,
		0.851333, -0.043417, -0.522826,
		-0.366658, 0.663531, -0.652142,
		36.194347, 36.041599, 35.218620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.935280, 36.024174, 35.636776>,  <36.451008, 35.577129, 35.675121>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.935280, 36.024174, 35.636776> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.632992, 36.245476, 35.496605>,  <36.451618, 36.378258, 35.412502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.632992, 36.245476, 35.496605>,  <36.935280, 36.024174, 35.636776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.632992, 36.245476, 35.496605> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247721, 0.736822, 0.629068,
		0.606235, 0.388592, -0.693884,
		-0.755720, 0.553253, -0.350425,
		36.406277, 36.411453, 35.391476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.547245, 36.283478, 36.035477>,  <36.935280, 36.024174, 35.636776>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.547245, 36.283478, 36.035477> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.896057, 36.395294, 36.196190>,  <38.105343, 36.462383, 36.292618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.896057, 36.395294, 36.196190>,  <37.547245, 36.283478, 36.035477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.896057, 36.395294, 36.196190> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489269, -0.475203, -0.731299,
		-0.013499, 0.834291, -0.551159,
		0.872028, 0.279536, 0.401778,
		38.157665, 36.479156, 36.316723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.971458, 36.630726, 35.501431>,  <37.547245, 36.283478, 36.035477>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.971458, 36.630726, 35.501431> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.215446, 36.464592, 35.771374>,  <38.361839, 36.364914, 35.933338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.215446, 36.464592, 35.771374>,  <37.971458, 36.630726, 35.501431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.215446, 36.464592, 35.771374> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457761, -0.510481, -0.727918,
		0.646828, 0.752934, -0.121257,
		0.609974, -0.415331, 0.674857,
		38.398438, 36.339993, 35.973831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598400, 36.488819, 35.168098>,  <37.971458, 36.630726, 35.501431>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.598400, 36.488819, 35.168098> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.626873, 36.242367, 35.481865>,  <38.643955, 36.094494, 35.670124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.626873, 36.242367, 35.481865>,  <38.598400, 36.488819, 35.168098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.626873, 36.242367, 35.481865> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389546, -0.706791, -0.590508,
		0.918252, 0.347600, 0.189703,
		0.071180, -0.616133, 0.784419,
		38.648228, 36.057526, 35.717190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.322704, 36.286674, 35.102810>,  <38.598400, 36.488819, 35.168098>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.322704, 36.286674, 35.102810> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.103584, 36.034718, 35.323048>,  <38.972115, 35.883545, 35.455189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.103584, 36.034718, 35.323048>,  <39.322704, 36.286674, 35.102810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.103584, 36.034718, 35.323048> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404010, -0.775474, -0.485197,
		0.732593, -0.043344, 0.679285,
		-0.547798, -0.629890, 0.550596,
		38.939243, 35.845749, 35.488228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.827007, 35.786522, 35.286362>,  <39.322704, 36.286674, 35.102810>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.827007, 35.786522, 35.286362> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.465496, 35.622486, 35.335365>,  <39.248589, 35.524063, 35.364765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.465496, 35.622486, 35.335365>,  <39.827007, 35.786522, 35.286362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.465496, 35.622486, 35.335365> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330582, -0.850661, -0.408768,
		0.271842, -0.328938, 0.904379,
		-0.903779, -0.410092, 0.122505,
		39.194363, 35.499458, 35.372116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.984661, 35.051914, 35.458317>,  <39.827007, 35.786522, 35.286362>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.984661, 35.051914, 35.458317> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.593365, 35.058449, 35.375587>,  <39.358585, 35.062370, 35.325951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.593365, 35.058449, 35.375587>,  <39.984661, 35.051914, 35.458317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.593365, 35.058449, 35.375587> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068450, -0.915653, -0.396099,
		-0.195849, -0.401637, 0.894612,
		-0.978242, 0.016339, -0.206822,
		39.299892, 35.063351, 35.313541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.871132, 34.364937, 35.518154>,  <39.984661, 35.051914, 35.458317>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.871132, 34.364937, 35.518154> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.589386, 34.508156, 35.272987>,  <39.420338, 34.594086, 35.125885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.589386, 34.508156, 35.272987>,  <39.871132, 34.364937, 35.518154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.589386, 34.508156, 35.272987> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171688, -0.751897, -0.636533,
		-0.688758, -0.553585, 0.468141,
		-0.704369, 0.358043, -0.612918,
		39.378075, 34.615570, 35.089111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.567558, 33.826744, 35.217152>,  <39.871132, 34.364937, 35.518154>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.567558, 33.826744, 35.217152> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.456917, 34.095600, 34.942425>,  <39.390533, 34.256916, 34.777588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.456917, 34.095600, 34.942425>,  <39.567558, 33.826744, 35.217152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.456917, 34.095600, 34.942425> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106002, -0.688999, -0.716969,
		-0.955121, -0.271116, 0.119327,
		-0.276598, 0.672143, -0.686816,
		39.373936, 34.297241, 34.736382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.096073, 33.516922, 34.681934>,  <39.567558, 33.826744, 35.217152>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.096073, 33.516922, 34.681934> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.200821, 33.856983, 34.499214>,  <39.263672, 34.061020, 34.389584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.200821, 33.856983, 34.499214>,  <39.096073, 33.516922, 34.681934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.200821, 33.856983, 34.499214> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005744, -0.471933, -0.881616,
		-0.965085, 0.233496, -0.118703,
		0.261873, 0.850153, -0.456797,
		39.279385, 34.112030, 34.362175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577652, 33.576595, 34.296429>,  <39.096073, 33.516922, 34.681934>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.577652, 33.576595, 34.296429> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.894657, 33.770870, 34.148895>,  <39.084858, 33.887436, 34.060375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.894657, 33.770870, 34.148895>,  <38.577652, 33.576595, 34.296429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.894657, 33.770870, 34.148895> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064927, -0.534153, -0.842891,
		-0.606394, 0.691946, -0.391787,
		0.792510, 0.485686, -0.368833,
		39.132408, 33.916576, 34.038246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.416233, 33.749264, 33.679035>,  <38.577652, 33.576595, 34.296429>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.416233, 33.749264, 33.679035> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.814365, 33.773991, 33.649361>,  <39.053246, 33.788826, 33.631557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.814365, 33.773991, 33.649361>,  <38.416233, 33.749264, 33.679035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.814365, 33.773991, 33.649361> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007304, -0.717838, -0.696172,
		-0.096287, 0.693460, -0.714032,
		0.995327, 0.061817, -0.074183,
		39.112965, 33.792534, 33.627106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.592838, 33.908970, 33.014759>,  <38.416233, 33.749264, 33.679035>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.592838, 33.908970, 33.014759> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.942966, 33.772976, 33.152290>,  <39.153046, 33.691380, 33.234810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.942966, 33.772976, 33.152290>,  <38.592838, 33.908970, 33.014759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.942966, 33.772976, 33.152290> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145861, -0.492294, -0.858121,
		0.461012, 0.801285, -0.381327,
		0.875324, -0.339984, 0.343830,
		39.205563, 33.670982, 33.255440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.213276, 34.207951, 32.572964>,  <38.592838, 33.908970, 33.014759>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.213276, 34.207951, 32.572964> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.323704, 33.867634, 32.751823>,  <39.389961, 33.663445, 32.859138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.323704, 33.867634, 32.751823>,  <39.213276, 34.207951, 32.572964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.323704, 33.867634, 32.751823> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340346, -0.348555, -0.873312,
		0.898861, 0.393281, 0.193338,
		0.276068, -0.850788, 0.447154,
		39.406525, 33.612396, 32.885971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.812717, 34.008457, 32.105331>,  <39.213276, 34.207951, 32.572964>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.812717, 34.008457, 32.105331> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.736385, 33.684326, 32.326946>,  <39.690586, 33.489849, 32.459915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.736385, 33.684326, 32.326946>,  <39.812717, 34.008457, 32.105331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.736385, 33.684326, 32.326946> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368139, -0.582291, -0.724852,
		0.909977, 0.065642, 0.409429,
		-0.190826, -0.810326, 0.554037,
		39.679138, 33.441227, 32.493156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.326260, 33.578148, 32.220444>,  <39.812717, 34.008457, 32.105331>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.326260, 33.578148, 32.220444> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.996719, 33.351429, 32.218552>,  <39.798996, 33.215397, 32.217415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.996719, 33.351429, 32.218552>,  <40.326260, 33.578148, 32.220444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.996719, 33.351429, 32.218552> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417245, -0.600780, -0.681887,
		0.383645, -0.563746, 0.731442,
		-0.823847, -0.566793, -0.004734,
		39.749565, 33.181393, 32.217133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.571903, 32.867722, 31.963484>,  <40.326260, 33.578148, 32.220444>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.571903, 32.867722, 31.963484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.176651, 32.808365, 31.979322>,  <39.939499, 32.772751, 31.988825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.176651, 32.808365, 31.979322>,  <40.571903, 32.867722, 31.963484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.176651, 32.808365, 31.979322> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063536, -0.629663, -0.774266,
		0.139828, -0.762564, 0.631621,
		-0.988135, -0.148395, 0.039595,
		39.880211, 32.763847, 31.991201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.499008, 32.240364, 31.891434>,  <40.571903, 32.867722, 31.963484>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.499008, 32.240364, 31.891434> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.149071, 32.397049, 31.777441>,  <39.939110, 32.491058, 31.709045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.149071, 32.397049, 31.777441>,  <40.499008, 32.240364, 31.891434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.149071, 32.397049, 31.777441> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002574, -0.592058, -0.805892,
		-0.484401, -0.704294, 0.518965,
		-0.874842, 0.391711, -0.284980,
		39.886620, 32.514561, 31.691946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.073872, 31.694818, 31.781919>,  <40.499008, 32.240364, 31.891434>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.073872, 31.694818, 31.781919> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.913128, 31.997303, 31.575365>,  <39.816681, 32.178795, 31.451433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.913128, 31.997303, 31.575365>,  <40.073872, 31.694818, 31.781919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.913128, 31.997303, 31.575365> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057815, -0.583752, -0.809871,
		-0.913875, -0.295599, 0.278306,
		-0.401859, 0.756211, -0.516386,
		39.792572, 32.224167, 31.420450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.548183, 31.331131, 31.398561> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.525684, 31.685715, 31.214813>,  <39.512184, 31.898466, 31.104565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.525684, 31.685715, 31.214813>,  <39.548183, 31.331131, 31.398561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.525684, 31.685715, 31.214813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067984, -0.462433, -0.884044,
		-0.996100, -0.018493, 0.086275,
		-0.056245, 0.886461, -0.459372,
		39.508812, 31.951653, 31.077002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.816154, 31.510149, 31.063429>,  <39.548183, 31.331131, 31.398561>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.816154, 31.510149, 31.063429> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.121952, 31.697823, 30.886602>,  <39.305431, 31.810427, 30.780506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.121952, 31.697823, 30.886602>,  <38.816154, 31.510149, 31.063429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.121952, 31.697823, 30.886602> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044240, -0.645959, -0.762089,
		-0.643115, 0.602167, -0.473073,
		0.764491, 0.469182, -0.442066,
		39.351299, 31.838577, 30.753983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.602829, 31.826017, 30.396093>,  <38.816154, 31.510149, 31.063429>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.602829, 31.826017, 30.396093> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.000801, 31.793587, 30.372313>,  <39.239586, 31.774128, 30.358044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.000801, 31.793587, 30.372313>,  <38.602829, 31.826017, 30.396093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.000801, 31.793587, 30.372313> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086782, -0.393999, -0.915005,
		0.050764, 0.915528, -0.399038,
		0.994933, -0.081078, -0.059450,
		39.299282, 31.769264, 30.354477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.691010, 32.144958, 29.785185>,  <38.602829, 31.826017, 30.396093>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.691010, 32.144958, 29.785185> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.997993, 31.906452, 29.879393>,  <39.182186, 31.763348, 29.935917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.997993, 31.906452, 29.879393>,  <38.691010, 32.144958, 29.785185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.997993, 31.906452, 29.879393> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015528, -0.349973, -0.936631,
		0.640907, 0.722486, -0.259332,
		0.767462, -0.596266, 0.235519,
		39.228233, 31.727571, 29.950048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.123039, 32.253471, 29.233376>,  <38.691010, 32.144958, 29.785185>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.123039, 32.253471, 29.233376> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.224876, 31.912281, 29.415638>,  <39.285980, 31.707567, 29.524996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.224876, 31.912281, 29.415638>,  <39.123039, 32.253471, 29.233376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.224876, 31.912281, 29.415638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260587, -0.393239, -0.881735,
		0.931276, 0.343225, 0.122156,
		0.254597, -0.852971, 0.455654,
		39.301254, 31.656389, 29.552334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.680210, 32.046371, 28.811989>,  <39.123039, 32.253471, 29.233376>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.680210, 32.046371, 28.811989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.612766, 31.705662, 29.010405>,  <39.572300, 31.501236, 29.129454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.612766, 31.705662, 29.010405>,  <39.680210, 32.046371, 28.811989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.612766, 31.705662, 29.010405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186030, -0.521699, -0.832600,
		0.967968, -0.048110, 0.246421,
		-0.168614, -0.851772, 0.496038,
		39.562183, 31.450130, 29.159216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.347347, 31.558887, 28.668066>,  <39.680210, 32.046371, 28.811989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.347347, 31.558887, 28.668066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.015308, 31.367437, 28.782515>,  <39.816086, 31.252567, 28.851183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.015308, 31.367437, 28.782515>,  <40.347347, 31.558887, 28.668066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.015308, 31.367437, 28.782515> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055636, -0.581632, -0.811547,
		0.554843, -0.657740, 0.509437,
		-0.830092, -0.478624, 0.286120,
		39.766281, 31.223850, 28.868351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.471172, 30.940536, 28.461800>,  <40.347347, 31.558887, 28.668066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.471172, 30.940536, 28.461800> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.078053, 30.898163, 28.522308>,  <39.842182, 30.872738, 28.558615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.078053, 30.898163, 28.522308>,  <40.471172, 30.940536, 28.461800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.078053, 30.898163, 28.522308> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056132, -0.609016, -0.791169,
		0.175941, -0.786052, 0.592594,
		-0.982799, -0.105936, 0.151273,
		39.783215, 30.866383, 28.567690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.433628, 30.275993, 28.607334>,  <40.471172, 30.940536, 28.461800>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.433628, 30.275993, 28.607334> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.096142, 30.430408, 28.458143>,  <39.893650, 30.523058, 28.368629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.096142, 30.430408, 28.458143>,  <40.433628, 30.275993, 28.607334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.096142, 30.430408, 28.458143> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161152, -0.480620, -0.861994,
		-0.512028, -0.787385, 0.343296,
		-0.843716, 0.386043, -0.372980,
		39.843025, 30.546221, 28.346251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.085854, 29.766235, 28.259550>,  <40.433628, 30.275993, 28.607334>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.085854, 29.766235, 28.259550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.953899, 30.098555, 28.080238>,  <39.874725, 30.297945, 27.972652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.953899, 30.098555, 28.080238>,  <40.085854, 29.766235, 28.259550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.953899, 30.098555, 28.080238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091068, -0.444638, -0.891068,
		-0.939618, -0.334775, 0.071022,
		-0.329887, 0.830796, -0.448277,
		39.854935, 30.347794, 27.945755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.828442, 29.486460, 27.690699>,  <40.085854, 29.766235, 28.259550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.828442, 29.486460, 27.690699> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.850063, 29.877428, 27.608988>,  <39.863037, 30.112009, 27.559961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.850063, 29.877428, 27.608988>,  <39.828442, 29.486460, 27.690699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.850063, 29.877428, 27.608988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359505, -0.209909, -0.909227,
		-0.931576, -0.024288, -0.362734,
		0.054058, 0.977419, -0.204278,
		39.866280, 30.170654, 27.547705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.490482, 29.494610, 27.117537>,  <39.828442, 29.486460, 27.690699>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.490482, 29.494610, 27.117537> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.716591, 29.824568, 27.119024>,  <39.852257, 30.022543, 27.119917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.716591, 29.824568, 27.119024>,  <39.490482, 29.494610, 27.117537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.716591, 29.824568, 27.119024> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278051, -0.186288, -0.942329,
		-0.776631, 0.533707, -0.334666,
		0.565272, 0.824896, 0.003721,
		39.886173, 30.072037, 27.120140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.376194, 29.680494, 26.435324>,  <39.490482, 29.494610, 27.117537>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.376194, 29.680494, 26.435324> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.693859, 29.895638, 26.548473>,  <39.884457, 30.024723, 26.616364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.693859, 29.895638, 26.548473>,  <39.376194, 29.680494, 26.435324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.693859, 29.895638, 26.548473> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384113, -0.083563, -0.919497,
		-0.470920, 0.838884, -0.272961,
		0.794161, 0.537858, 0.282875,
		39.932106, 30.056995, 26.633335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.402824, 30.233303, 25.942076>,  <39.376194, 29.680494, 26.435324>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.402824, 30.233303, 25.942076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.770565, 30.201237, 26.096151>,  <39.991207, 30.181997, 26.188597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.770565, 30.201237, 26.096151>,  <39.402824, 30.233303, 25.942076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.770565, 30.201237, 26.096151> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391882, 0.099483, -0.914621,
		0.035001, 0.991805, 0.122874,
		0.919349, -0.080164, 0.385189,
		40.046371, 30.177187, 26.211708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.794472, 30.801205, 25.668179>,  <39.402824, 30.233303, 25.942076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.794472, 30.801205, 25.668179> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.082184, 30.548332, 25.783405>,  <40.254810, 30.396608, 25.852541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.082184, 30.548332, 25.783405>,  <39.794472, 30.801205, 25.668179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.082184, 30.548332, 25.783405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466295, 0.131953, -0.874733,
		0.514977, 0.763504, 0.389694,
		0.719283, -0.632179, 0.288065,
		40.297970, 30.358679, 25.869825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.411106, 31.105934, 25.478134>,  <39.794472, 30.801205, 25.668179>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.411106, 31.105934, 25.478134> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.492081, 30.714537, 25.493992>,  <40.540665, 30.479698, 25.503506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.492081, 30.714537, 25.493992>,  <40.411106, 31.105934, 25.478134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.492081, 30.714537, 25.493992> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434285, 0.053417, -0.899190,
		0.877734, 0.199244, 0.435758,
		0.202435, -0.978493, 0.039643,
		40.552811, 30.420988, 25.505884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.159595, 31.059034, 25.242807>,  <40.411106, 31.105934, 25.478134>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.159595, 31.059034, 25.242807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.005009, 30.692686, 25.199303>,  <40.912258, 30.472878, 25.173201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.005009, 30.692686, 25.199303>,  <41.159595, 31.059034, 25.242807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.005009, 30.692686, 25.199303> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363340, -0.042796, -0.930673,
		0.847720, -0.399189, 0.349311,
		-0.386463, -0.915869, -0.108762,
		40.889069, 30.417925, 25.166674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.633957, 30.715555, 24.930773>,  <41.159595, 31.059034, 25.242807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.633957, 30.715555, 24.930773> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.325756, 30.468929, 24.866056>,  <41.140835, 30.320953, 24.827227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.325756, 30.468929, 24.866056>,  <41.633957, 30.715555, 24.930773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.325756, 30.468929, 24.866056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340306, -0.183256, -0.922285,
		0.539001, -0.765678, 0.351021,
		-0.770499, -0.616567, -0.161790,
		41.094604, 30.283958, 24.817520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.897194, 30.157402, 24.552427>,  <41.633957, 30.715555, 24.930773>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.897194, 30.157402, 24.552427> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.503429, 30.153635, 24.482176>,  <41.267170, 30.151375, 24.440025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.503429, 30.153635, 24.482176>,  <41.897194, 30.157402, 24.552427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.503429, 30.153635, 24.482176> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175166, -0.142464, -0.974177,
		-0.015845, -0.989755, 0.141893,
		-0.984411, -0.009419, -0.175629,
		41.208107, 30.150810, 24.429487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.757477, 29.502319, 24.236172>,  <41.897194, 30.157402, 24.552427>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.757477, 29.502319, 24.236172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.470112, 29.761518, 24.134989>,  <41.297695, 29.917038, 24.074280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.470112, 29.761518, 24.134989>,  <41.757477, 29.502319, 24.236172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.470112, 29.761518, 24.134989> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177477, -0.180863, -0.967363,
		-0.672600, -0.739856, 0.014928,
		-0.718409, 0.647999, -0.252955,
		41.254589, 29.955917, 24.059103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.511696, 29.222034, 23.613400>,  <41.757477, 29.502319, 24.236172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.511696, 29.222034, 23.613400> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.372726, 29.596947, 23.602064>,  <41.289345, 29.821894, 23.595263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.372726, 29.596947, 23.602064>,  <41.511696, 29.222034, 23.613400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.372726, 29.596947, 23.602064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057359, -0.008922, -0.998314,
		-0.935952, -0.348465, -0.050662,
		-0.347425, 0.937279, -0.028338,
		41.268497, 29.878130, 23.593563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.002544, 29.176216, 23.181833>,  <41.511696, 29.222034, 23.613400>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.002544, 29.176216, 23.181833> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.060070, 29.571974, 23.173672>,  <41.094585, 29.809429, 23.168776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.060070, 29.571974, 23.173672>,  <41.002544, 29.176216, 23.181833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.060070, 29.571974, 23.173672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003978, -0.021194, -0.999767,
		-0.989597, 0.143701, -0.006984,
		0.143816, 0.989394, -0.020402,
		41.103214, 29.868792, 23.167551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.466213, 29.571697, 22.737898>,  <41.002544, 29.176216, 23.181833>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.466213, 29.571697, 22.737898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.824417, 29.747065, 22.768513>,  <41.039337, 29.852285, 22.786880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.824417, 29.747065, 22.768513>,  <40.466213, 29.571697, 22.737898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.824417, 29.747065, 22.768513> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027339, 0.117457, -0.992702,
		-0.444206, 0.891064, 0.093198,
		0.895507, 0.438416, 0.076536,
		41.093071, 29.878590, 22.791473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.100773, 30.245880, 22.886454>,  <40.466213, 29.571697, 22.737898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.100773, 30.245880, 22.886454> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.069302, 29.854387, 22.962238>,  <40.050419, 29.619492, 23.007710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.069302, 29.854387, 22.962238>,  <40.100773, 30.245880, 22.886454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.069302, 29.854387, 22.962238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.980899, 0.042085, -0.189910,
		0.177898, -0.200783, -0.963348,
		-0.078673, -0.978732, 0.189461,
		40.045700, 29.560768, 23.019077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.735218, 29.765306, 22.457340>,  <40.100773, 30.245880, 22.886454>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.735218, 29.765306, 22.457340> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.411179, 29.560604, 22.342905>,  <39.216755, 29.437782, 22.274244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.411179, 29.560604, 22.342905>,  <39.735218, 29.765306, 22.457340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.411179, 29.560604, 22.342905> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548752, 0.490031, 0.677304,
		-0.206422, 0.705675, -0.677800,
		-0.810099, -0.511755, -0.286087,
		39.168148, 29.407078, 22.257078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.363247, 30.365955, 22.607132>,  <39.735218, 29.765306, 22.457340>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.363247, 30.365955, 22.607132> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.136044, 30.038538, 22.572847>,  <38.999722, 29.842087, 22.552277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.136044, 30.038538, 22.572847>,  <39.363247, 30.365955, 22.607132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.136044, 30.038538, 22.572847> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552906, 0.302374, 0.776444,
		-0.609638, 0.488419, -0.624330,
		-0.568011, -0.818545, -0.085711,
		38.965641, 29.792974, 22.547134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.665623, 30.528925, 22.596848>,  <39.363247, 30.365955, 22.607132>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.665623, 30.528925, 22.596848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.639675, 30.150703, 22.724421>,  <38.624107, 29.923771, 22.800964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.639675, 30.150703, 22.724421>,  <38.665623, 30.528925, 22.596848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.639675, 30.150703, 22.724421> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607196, 0.291034, 0.739333,
		-0.791900, -0.145691, -0.593017,
		-0.064874, -0.945554, 0.318933,
		38.620213, 29.867037, 22.820101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988838, 30.532972, 22.832678>,  <38.665623, 30.528925, 22.596848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.988838, 30.532972, 22.832678> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.140842, 30.200584, 22.995201>,  <38.232044, 30.001152, 23.092714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.140842, 30.200584, 22.995201>,  <37.988838, 30.532972, 22.832678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.140842, 30.200584, 22.995201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651830, 0.071085, 0.755026,
		-0.656285, -0.551760, -0.514637,
		0.380010, -0.830968, 0.406306,
		38.254845, 29.951294, 23.117092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.402977, 30.087204, 22.994242>,  <37.988838, 30.532972, 22.832678>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.402977, 30.087204, 22.994242> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.720478, 29.996351, 23.219940>,  <37.910976, 29.941839, 23.355360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.720478, 29.996351, 23.219940>,  <37.402977, 30.087204, 22.994242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.720478, 29.996351, 23.219940> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557553, 0.099062, 0.824210,
		-0.243099, -0.968813, -0.048008,
		0.793749, -0.227131, 0.564246,
		37.958603, 29.928211, 23.389214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.037918, 29.961878, 23.611458>,  <37.402977, 30.087204, 22.994242>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.037918, 29.961878, 23.611458> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.418262, 30.007124, 23.726744>,  <37.646469, 30.034271, 23.795916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.418262, 30.007124, 23.726744>,  <37.037918, 29.961878, 23.611458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.418262, 30.007124, 23.726744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303655, 0.158873, 0.939443,
		0.060472, -0.980798, 0.185413,
		0.950861, 0.113111, 0.288217,
		37.703522, 30.041058, 23.813208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006031, 29.659929, 24.225704>,  <37.037918, 29.961878, 23.611458>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.006031, 29.659929, 24.225704> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.328606, 29.896442, 24.228251>,  <37.522152, 30.038351, 24.229778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.328606, 29.896442, 24.228251>,  <37.006031, 29.659929, 24.225704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.328606, 29.896442, 24.228251> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093669, 0.117107, 0.988692,
		0.583853, -0.797915, 0.149825,
		0.806437, 0.591285, 0.006367,
		37.570538, 30.073828, 24.230160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.325176, 29.467171, 24.881643>,  <37.006031, 29.659929, 24.225704>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.325176, 29.467171, 24.881643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.478477, 29.820524, 24.773752>,  <37.570457, 30.032536, 24.709017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.478477, 29.820524, 24.773752>,  <37.325176, 29.467171, 24.881643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.478477, 29.820524, 24.773752> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214957, 0.369313, 0.904103,
		0.898282, -0.288520, 0.331430,
		0.383253, 0.883382, -0.269727,
		37.593452, 30.085539, 24.692835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.875763, 29.606110, 25.354769>,  <37.325176, 29.467171, 24.881643>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.875763, 29.606110, 25.354769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.800415, 29.970776, 25.208681>,  <37.755207, 30.189575, 25.121029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.800415, 29.970776, 25.208681>,  <37.875763, 29.606110, 25.354769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.800415, 29.970776, 25.208681> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020106, 0.368221, 0.929521,
		0.981892, 0.182437, -0.051032,
		-0.188370, 0.911664, -0.365221,
		37.743904, 30.244274, 25.099115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.321266, 30.021198, 25.637255>,  <37.875763, 29.606110, 25.354769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.321266, 30.021198, 25.637255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.019005, 30.249929, 25.509506>,  <37.837646, 30.387167, 25.432858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.019005, 30.249929, 25.509506>,  <38.321266, 30.021198, 25.637255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.019005, 30.249929, 25.509506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103716, 0.376992, 0.920391,
		0.646705, 0.728622, -0.225569,
		-0.755655, 0.571827, -0.319372,
		37.792309, 30.421478, 25.413694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469772, 30.616844, 25.873571>,  <38.321266, 30.021198, 25.637255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.469772, 30.616844, 25.873571> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.076118, 30.643887, 25.807953>,  <37.839928, 30.660112, 25.768581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.076118, 30.643887, 25.807953>,  <38.469772, 30.616844, 25.873571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.076118, 30.643887, 25.807953> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126999, 0.377252, 0.917361,
		0.123908, 0.923639, -0.362680,
		-0.984133, 0.067608, -0.164046,
		37.780880, 30.664169, 25.758739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.276226, 31.192291, 26.210161>,  <38.469772, 30.616844, 25.873571>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.276226, 31.192291, 26.210161> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.949924, 30.963047, 26.178942>,  <37.754143, 30.825500, 26.160210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.949924, 30.963047, 26.178942>,  <38.276226, 31.192291, 26.210161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.949924, 30.963047, 26.178942> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179371, 0.122374, 0.976141,
		-0.549884, 0.810290, -0.202626,
		-0.815753, -0.573110, -0.078051,
		37.705200, 30.791115, 26.155527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.887890, 31.548992, 26.674988>,  <38.276226, 31.192291, 26.210161>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.887890, 31.548992, 26.674988> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.693336, 31.202486, 26.629358>,  <37.576603, 30.994581, 26.601980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.693336, 31.202486, 26.629358>,  <37.887890, 31.548992, 26.674988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.693336, 31.202486, 26.629358> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441115, 0.130755, 0.887874,
		-0.754220, 0.482167, -0.445721,
		-0.486384, -0.866267, -0.114073,
		37.547421, 30.942606, 26.595137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.258682, 31.786772, 26.903610>,  <37.887890, 31.548992, 26.674988>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.258682, 31.786772, 26.903610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.291740, 31.389492, 26.936415>,  <37.311577, 31.151125, 26.956097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.291740, 31.389492, 26.936415>,  <37.258682, 31.786772, 26.903610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.291740, 31.389492, 26.936415> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391404, 0.043328, 0.919198,
		-0.916500, -0.108070, -0.385161,
		0.082650, -0.993198, 0.082009,
		37.316536, 31.091532, 26.961018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.536324, 31.532658, 27.101433>,  <37.258682, 31.786772, 26.903610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.536324, 31.532658, 27.101433> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.807186, 31.250587, 27.185514>,  <36.969704, 31.081345, 27.235964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.807186, 31.250587, 27.185514>,  <36.536324, 31.532658, 27.101433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.807186, 31.250587, 27.185514> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368082, -0.077255, 0.926578,
		-0.637161, -0.704811, -0.311876,
		0.677157, -0.705175, 0.210205,
		37.010334, 31.039036, 27.248575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.148018, 31.008389, 27.306770>,  <36.536324, 31.532658, 27.101433>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.148018, 31.008389, 27.306770> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.509655, 30.932323, 27.459852>,  <36.726635, 30.886684, 27.551701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.509655, 30.932323, 27.459852>,  <36.148018, 31.008389, 27.306770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.509655, 30.932323, 27.459852> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421926, -0.255042, 0.870018,
		-0.067840, -0.948046, -0.310815,
		0.904088, -0.190163, 0.382703,
		36.780880, 30.875275, 27.574663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.090736, 30.593613, 27.796619>,  <36.148018, 31.008389, 27.306770>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.090736, 30.593613, 27.796619> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.459198, 30.707108, 27.903175>,  <36.680275, 30.775204, 27.967108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.459198, 30.707108, 27.903175>,  <36.090736, 30.593613, 27.796619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.459198, 30.707108, 27.903175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286424, 0.030822, 0.957607,
		0.263499, -0.958406, 0.109662,
		0.921156, 0.283738, 0.266389,
		36.735546, 30.792229, 27.983091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.306950, 30.070744, 28.333920>,  <36.090736, 30.593613, 27.796619>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.306950, 30.070744, 28.333920> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.490891, 30.423927, 28.371710>,  <36.601254, 30.635838, 28.394384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.490891, 30.423927, 28.371710>,  <36.306950, 30.070744, 28.333920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.490891, 30.423927, 28.371710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243422, 0.023023, 0.969647,
		0.853982, -0.468888, 0.225518,
		0.459848, 0.882957, 0.094476,
		36.628845, 30.688814, 28.400053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.486614, 29.976719, 28.947834>,  <36.306950, 30.070744, 28.333920>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.486614, 29.976719, 28.947834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.514603, 30.368736, 28.873411>,  <36.531395, 30.603947, 28.828758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.514603, 30.368736, 28.873411>,  <36.486614, 29.976719, 28.947834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.514603, 30.368736, 28.873411> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242187, 0.197623, 0.949890,
		0.967703, -0.021408, 0.251182,
		0.069974, 0.980044, -0.186056,
		36.535595, 30.662750, 28.817595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.787285, 30.293476, 29.539915>,  <36.486614, 29.976719, 28.947834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.787285, 30.293476, 29.539915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.616108, 30.599155, 29.346889>,  <36.513401, 30.782562, 29.231073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.616108, 30.599155, 29.346889>,  <36.787285, 30.293476, 29.539915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.616108, 30.599155, 29.346889> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408962, 0.312409, 0.857409,
		0.805986, 0.564274, 0.178833,
		-0.427944, 0.764196, -0.482564,
		36.487724, 30.828415, 29.202120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.379414, 33.323170, 33.721584> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.021832, 33.424515, 33.573715>,  <39.807281, 33.485321, 33.484993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.021832, 33.424515, 33.573715>,  <40.379414, 33.323170, 33.721584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.021832, 33.424515, 33.573715> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015665, 0.806692, 0.590765,
		0.447887, 0.533907, -0.717175,
		-0.893953, 0.253361, -0.369671,
		39.753647, 33.500523, 33.462814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.415413, 34.076084, 33.538334>,  <40.379414, 33.323170, 33.721584>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.415413, 34.076084, 33.538334> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.033813, 33.967903, 33.590076>,  <39.804852, 33.902992, 33.621120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.033813, 33.967903, 33.590076>,  <40.415413, 34.076084, 33.538334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.033813, 33.967903, 33.590076> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152911, 0.810093, 0.566011,
		-0.257870, 0.520196, -0.814186,
		-0.954003, -0.270456, 0.129355,
		39.747612, 33.886768, 33.628883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.022675, 34.756062, 33.526844>,  <40.415413, 34.076084, 33.538334>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.022675, 34.756062, 33.526844> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.775051, 34.484142, 33.684147>,  <39.626476, 34.320992, 33.778530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.775051, 34.484142, 33.684147>,  <40.022675, 34.756062, 33.526844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.775051, 34.484142, 33.684147> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141769, 0.589246, 0.795418,
		-0.772446, 0.436656, -0.461149,
		-0.619055, -0.679794, 0.393257,
		39.589336, 34.280205, 33.802124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.637936, 35.229351, 33.863876>,  <40.022675, 34.756062, 33.526844>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.637936, 35.229351, 33.863876> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.540016, 34.867172, 34.002579>,  <39.481266, 34.649864, 34.085800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.540016, 34.867172, 34.002579>,  <39.637936, 35.229351, 33.863876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.540016, 34.867172, 34.002579> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394421, 0.419702, 0.817485,
		-0.885723, 0.063352, -0.459870,
		-0.244798, -0.905448, 0.346752,
		39.466576, 34.595539, 34.106606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.029053, 35.328243, 33.986851>,  <39.637936, 35.229351, 33.863876>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.029053, 35.328243, 33.986851> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.137604, 35.018021, 34.214836>,  <39.202732, 34.831886, 34.351627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.137604, 35.018021, 34.214836>,  <39.029053, 35.328243, 33.986851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.137604, 35.018021, 34.214836> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297790, 0.495475, 0.815981,
		-0.915247, -0.391167, -0.096495,
		0.271374, -0.775559, 0.569968,
		39.219017, 34.785355, 34.385826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.467922, 35.176964, 34.375072>,  <39.029053, 35.328243, 33.986851>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.467922, 35.176964, 34.375072> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.775696, 35.014748, 34.572456>,  <38.960361, 34.917419, 34.690887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.775696, 35.014748, 34.572456>,  <38.467922, 35.176964, 34.375072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.775696, 35.014748, 34.572456> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294877, 0.459774, 0.837649,
		-0.566580, -0.790029, 0.234184,
		0.769438, -0.405539, 0.493460,
		39.006527, 34.893085, 34.720493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.044212, 35.055332, 34.911438>,  <38.467922, 35.176964, 34.375072>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.044212, 35.055332, 34.911438> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.428490, 35.048244, 35.022259>,  <38.659054, 35.043991, 35.088753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.428490, 35.048244, 35.022259>,  <38.044212, 35.055332, 34.911438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.428490, 35.048244, 35.022259> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240902, 0.442808, 0.863648,
		-0.137987, -0.896441, 0.421132,
		0.960690, -0.017721, 0.277057,
		38.716698, 35.042927, 35.105377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053112, 34.946918, 35.574146>,  <38.044212, 35.055332, 34.911438>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.053112, 34.946918, 35.574146> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.422119, 35.093903, 35.526939>,  <38.643524, 35.182095, 35.498615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.422119, 35.093903, 35.526939>,  <38.053112, 34.946918, 35.574146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.422119, 35.093903, 35.526939> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139572, 0.602729, 0.785645,
		0.359825, -0.708302, 0.607317,
		0.922522, 0.367459, -0.118018,
		38.698875, 35.204140, 35.491535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.236126, 35.105652, 36.213684>,  <38.053112, 34.946918, 35.574146>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.236126, 35.105652, 36.213684> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.518703, 35.305988, 36.013649>,  <38.688251, 35.426189, 35.893627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.518703, 35.305988, 36.013649>,  <38.236126, 35.105652, 36.213684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.518703, 35.305988, 36.013649> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028140, 0.686140, 0.726925,
		0.707215, -0.527600, 0.470621,
		0.706438, 0.500849, -0.500096,
		38.730637, 35.456242, 35.863621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.773354, 35.321167, 36.743671>,  <38.236126, 35.105652, 36.213684>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.773354, 35.321167, 36.743671> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.758671, 35.560780, 36.423717>,  <38.749859, 35.704548, 36.231747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.758671, 35.560780, 36.423717>,  <38.773354, 35.321167, 36.743671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.758671, 35.560780, 36.423717> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168214, 0.785300, 0.595825,
		0.985067, 0.156425, 0.071937,
		-0.036710, 0.599029, -0.799886,
		38.747658, 35.740490, 36.183750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.099041, 35.838131, 36.936592>,  <38.773354, 35.321167, 36.743671>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.099041, 35.838131, 36.936592> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.899761, 36.003170, 36.631550>,  <38.780193, 36.102192, 36.448524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.899761, 36.003170, 36.631550>,  <39.099041, 35.838131, 36.936592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.899761, 36.003170, 36.631550> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097003, 0.847480, 0.521889,
		0.861618, 0.333980, -0.382194,
		-0.498202, 0.412595, -0.762601,
		38.750301, 36.126949, 36.402771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.339756, 36.562485, 36.873051>,  <39.099041, 35.838131, 36.936592>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.339756, 36.562485, 36.873051> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.964748, 36.548527, 36.734577>,  <38.739742, 36.540150, 36.651493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.964748, 36.548527, 36.734577>,  <39.339756, 36.562485, 36.873051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.964748, 36.548527, 36.734577> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196654, 0.873942, 0.444469,
		0.287032, 0.484776, -0.826199,
		-0.937518, -0.034899, -0.346183,
		38.683495, 36.538055, 36.630722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.114120, 37.265415, 36.713955>,  <39.339756, 36.562485, 36.873051>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.114120, 37.265415, 36.713955> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.745975, 37.108994, 36.715630>,  <38.525089, 37.015141, 36.716637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.745975, 37.108994, 36.715630>,  <39.114120, 37.265415, 36.713955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.745975, 37.108994, 36.715630> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346719, 0.820889, 0.453792,
		-0.180896, 0.416199, -0.891098,
		-0.920360, -0.391050, 0.004191,
		38.469868, 36.991680, 36.716888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.665897, 37.882881, 36.728271>,  <39.114120, 37.265415, 36.713955>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.665897, 37.882881, 36.728271> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.420734, 37.574337, 36.796783>,  <38.273636, 37.389210, 36.837891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.420734, 37.574337, 36.796783>,  <38.665897, 37.882881, 36.728271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.420734, 37.574337, 36.796783> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700323, 0.630698, 0.334315,
		-0.365908, 0.084951, -0.926766,
		-0.612910, -0.771364, 0.171285,
		38.236862, 37.342926, 36.848167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.129509, 37.745354, 36.148350>,  <38.665897, 37.882881, 36.728271>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.129509, 37.745354, 36.148350> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.022327, 38.118465, 36.244781>,  <38.958019, 38.342335, 36.302639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.022327, 38.118465, 36.244781>,  <39.129509, 37.745354, 36.148350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.022327, 38.118465, 36.244781> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253410, 0.173183, -0.951731,
		-0.929508, -0.316109, 0.189972,
		-0.267951, 0.932782, 0.241080,
		38.941940, 38.398300, 36.317104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.475727, 37.781475, 35.949650>,  <39.129509, 37.745354, 36.148350>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.475727, 37.781475, 35.949650> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.674824, 38.128380, 35.945435>,  <38.794281, 38.336521, 35.942905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.674824, 38.128380, 35.945435>,  <38.475727, 37.781475, 35.949650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.674824, 38.128380, 35.945435> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097138, 0.043665, -0.994313,
		-0.861870, 0.495933, 0.105979,
		0.497740, 0.867263, -0.010540,
		38.824146, 38.388557, 35.942272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.066998, 38.121212, 35.530830>,  <38.475727, 37.781475, 35.949650>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.066998, 38.121212, 35.530830> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.405437, 38.334221, 35.540024>,  <38.608501, 38.462029, 35.545540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.405437, 38.334221, 35.540024>,  <38.066998, 38.121212, 35.530830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.405437, 38.334221, 35.540024> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034052, 0.097040, -0.994698,
		-0.531931, 0.840834, 0.100239,
		0.846103, 0.532524, 0.022986,
		38.659267, 38.493977, 35.546921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.967350, 38.704426, 34.991825>,  <38.066998, 38.121212, 35.530830>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.967350, 38.704426, 34.991825> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.361801, 38.680328, 35.053688>,  <38.598473, 38.665871, 35.090805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.361801, 38.680328, 35.053688>,  <37.967350, 38.704426, 34.991825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.361801, 38.680328, 35.053688> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162063, 0.148344, -0.975566,
		0.035832, 0.987099, 0.156050,
		0.986130, -0.060246, 0.154657,
		38.657639, 38.662254, 35.100086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.270973, 39.323662, 34.742519>,  <37.967350, 38.704426, 34.991825>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.270973, 39.323662, 34.742519> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.552654, 39.039768, 34.750343>,  <38.721664, 38.869434, 34.755039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.552654, 39.039768, 34.750343>,  <38.270973, 39.323662, 34.742519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.552654, 39.039768, 34.750343> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167414, 0.139212, -0.976008,
		0.689979, 0.690582, 0.216852,
		0.704203, -0.709730, 0.019560,
		38.763916, 38.826851, 34.756210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.857754, 39.636776, 34.612194>,  <38.270973, 39.323662, 34.742519>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.857754, 39.636776, 34.612194> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.930130, 39.255642, 34.514732>,  <38.973557, 39.026962, 34.456257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.930130, 39.255642, 34.514732>,  <38.857754, 39.636776, 34.612194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.930130, 39.255642, 34.514732> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248601, 0.284010, -0.926032,
		0.951555, 0.106984, 0.288265,
		0.180941, -0.952834, -0.243655,
		38.984413, 38.969791, 34.441635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.419876, 39.633530, 34.179764>,  <38.857754, 39.636776, 34.612194>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.419876, 39.633530, 34.179764> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.215412, 39.302841, 34.085743>,  <39.092731, 39.104427, 34.029331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.215412, 39.302841, 34.085743>,  <39.419876, 39.633530, 34.179764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.215412, 39.302841, 34.085743> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294725, 0.088299, -0.951494,
		0.807372, -0.555645, 0.198519,
		-0.511163, -0.826718, -0.235052,
		39.062061, 39.054825, 34.015228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.809826, 39.197723, 33.778667>,  <39.419876, 39.633530, 34.179764>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.809826, 39.197723, 33.778667> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.465004, 39.013855, 33.693279>,  <39.258110, 38.903534, 33.642048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.465004, 39.013855, 33.693279>,  <39.809826, 39.197723, 33.778667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.465004, 39.013855, 33.693279> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308860, -0.142523, -0.940368,
		0.401836, -0.876578, 0.264836,
		-0.862052, -0.459671, -0.213469,
		39.206387, 38.875954, 33.629238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.926891, 38.473648, 33.483871>,  <39.809826, 39.197723, 33.778667>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.926891, 38.473648, 33.483871> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.551270, 38.543533, 33.365452>,  <39.325897, 38.585464, 33.294399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.551270, 38.543533, 33.365452>,  <39.926891, 38.473648, 33.483871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.551270, 38.543533, 33.365452> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262812, -0.190264, -0.945901,
		-0.221591, -0.966061, 0.132751,
		-0.939056, 0.174714, -0.296054,
		39.269554, 38.595947, 33.276634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.719795, 37.922153, 33.086742>,  <39.926891, 38.473648, 33.483871>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.719795, 37.922153, 33.086742> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.460323, 38.207134, 32.979687>,  <39.304642, 38.378124, 32.915455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.460323, 38.207134, 32.979687>,  <39.719795, 37.922153, 33.086742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.460323, 38.207134, 32.979687> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108907, -0.434943, -0.893848,
		-0.753231, -0.550671, 0.359729,
		-0.648678, 0.712451, -0.267640,
		39.265720, 38.420868, 32.899395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208435, 37.574757, 32.783699>,  <39.719795, 37.922153, 33.086742>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.208435, 37.574757, 32.783699> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.135460, 37.945709, 32.653053>,  <39.091675, 38.168282, 32.574665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.135460, 37.945709, 32.653053>,  <39.208435, 37.574757, 32.783699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.135460, 37.945709, 32.653053> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147843, -0.354286, -0.923376,
		-0.972038, -0.120175, 0.201744,
		-0.182442, 0.927383, -0.326613,
		39.080727, 38.223923, 32.555069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.515572, 37.550068, 32.461498>,  <39.208435, 37.574757, 32.783699>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.515572, 37.550068, 32.461498> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.732098, 37.847965, 32.305374>,  <38.862015, 38.026703, 32.211700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.732098, 37.847965, 32.305374>,  <38.515572, 37.550068, 32.461498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.732098, 37.847965, 32.305374> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025735, -0.478654, -0.877626,
		-0.840425, 0.465029, -0.278269,
		0.541316, 0.744740, -0.390306,
		38.894493, 38.071388, 32.188282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.125393, 37.874825, 31.840149>,  <38.515572, 37.550068, 32.461498>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.125393, 37.874825, 31.840149> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.512218, 37.973904, 31.816715>,  <38.744312, 38.033352, 31.802654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.512218, 37.973904, 31.816715>,  <38.125393, 37.874825, 31.840149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.512218, 37.973904, 31.816715> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088445, -0.542830, -0.835173,
		-0.238676, 0.802483, -0.546859,
		0.967063, 0.247702, -0.058585,
		38.802338, 38.048214, 31.799139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.202755, 37.993732, 31.173967>,  <38.125393, 37.874825, 31.840149>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.202755, 37.993732, 31.173967> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.593006, 37.974510, 31.259615>,  <38.827156, 37.962975, 31.311003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.593006, 37.974510, 31.259615>,  <38.202755, 37.993732, 31.173967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.593006, 37.974510, 31.259615> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114516, -0.720836, -0.683580,
		0.187197, 0.691438, -0.697762,
		0.975625, -0.048059, 0.214119,
		38.885693, 37.960091, 31.323851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867393, 38.364777, 30.666292>,  <38.202755, 37.993732, 31.173967>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.867393, 38.364777, 30.666292> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.515518, 38.466293, 30.505428>,  <37.304394, 38.527203, 30.408911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.515518, 38.466293, 30.505428>,  <37.867393, 38.364777, 30.666292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.515518, 38.466293, 30.505428> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313150, 0.327284, 0.891528,
		0.357881, 0.910207, -0.208435,
		-0.879692, 0.253789, -0.402160,
		37.251610, 38.542431, 30.384781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.688046, 38.885891, 31.039787>,  <37.867393, 38.364777, 30.666292>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.688046, 38.885891, 31.039787> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.336624, 38.778728, 30.881611>,  <37.125771, 38.714432, 30.786705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.336624, 38.778728, 30.881611>,  <37.688046, 38.885891, 31.039787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.336624, 38.778728, 30.881611> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468866, 0.325678, 0.821035,
		-0.091173, 0.906731, -0.411736,
		-0.878551, -0.267905, -0.395442,
		37.073059, 38.698357, 30.762978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.154675, 39.382107, 31.209274>,  <37.688046, 38.885891, 31.039787>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.154675, 39.382107, 31.209274> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.942390, 39.057243, 31.112324>,  <36.815018, 38.862328, 31.054153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.942390, 39.057243, 31.112324>,  <37.154675, 39.382107, 31.209274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.942390, 39.057243, 31.112324> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557800, 0.119384, 0.821344,
		-0.638124, 0.571096, -0.516380,
		-0.530714, -0.812156, -0.242375,
		36.783176, 38.813595, 31.039612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.433357, 39.548779, 31.190170>,  <37.154675, 39.382107, 31.209274>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.433357, 39.548779, 31.190170> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.416523, 39.149731, 31.212049>,  <36.406422, 38.910301, 31.225178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.416523, 39.149731, 31.212049>,  <36.433357, 39.548779, 31.190170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.416523, 39.149731, 31.212049> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747226, 0.067773, 0.661105,
		-0.663235, -0.013048, -0.748297,
		-0.042088, -0.997616, 0.054700,
		36.403896, 38.850445, 31.228460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.760864, 39.395210, 31.121080>,  <36.433357, 39.548779, 31.190170>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.760864, 39.395210, 31.121080> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.954185, 39.122692, 31.340994>,  <36.070179, 38.959183, 31.472942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.954185, 39.122692, 31.340994>,  <35.760864, 39.395210, 31.121080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.954185, 39.122692, 31.340994> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710162, 0.062145, 0.701291,
		-0.511950, -0.729369, -0.453793,
		0.483299, -0.681292, 0.549785,
		36.099174, 38.918304, 31.505930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.223427, 39.021572, 31.593084>,  <35.760864, 39.395210, 31.121080>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.223427, 39.021572, 31.593084> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.556019, 38.912323, 31.786598>,  <35.755573, 38.846775, 31.902706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.556019, 38.912323, 31.786598>,  <35.223427, 39.021572, 31.593084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.556019, 38.912323, 31.786598> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516266, -0.058195, 0.854449,
		-0.205216, -0.960217, -0.189392,
		0.831478, -0.273123, 0.483785,
		35.805462, 38.830387, 31.931734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.017159, 38.531841, 31.992990>,  <35.223427, 39.021572, 31.593084>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.017159, 38.531841, 31.992990> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.362206, 38.623493, 32.173389>,  <35.569233, 38.678482, 32.281628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.362206, 38.623493, 32.173389>,  <35.017159, 38.531841, 31.992990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.362206, 38.623493, 32.173389> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464143, 0.003946, 0.885751,
		0.201169, -0.973389, 0.109751,
		0.862614, 0.229126, 0.450998,
		35.620991, 38.692230, 32.308689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.058666, 38.111992, 32.492867>,  <35.017159, 38.531841, 31.992990>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.058666, 38.111992, 32.492867> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.313374, 38.379341, 32.646652>,  <35.466198, 38.539749, 32.738922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.313374, 38.379341, 32.646652>,  <35.058666, 38.111992, 32.492867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.313374, 38.379341, 32.646652> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454769, -0.077113, 0.887265,
		0.622669, -0.739821, 0.254851,
		0.636764, 0.668370, 0.384463,
		35.504402, 38.579853, 32.761990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.223331, 37.891235, 33.248554>,  <35.058666, 38.111992, 32.492867>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.223331, 37.891235, 33.248554> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.316788, 38.279629, 33.228134>,  <35.372860, 38.512665, 33.215881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.316788, 38.279629, 33.228134>,  <35.223331, 37.891235, 33.248554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.316788, 38.279629, 33.228134> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305848, 0.123230, 0.944071,
		0.922968, -0.204957, 0.325764,
		0.233638, 0.970982, -0.051052,
		35.386879, 38.570923, 33.212818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.568913, 38.119003, 33.855091>,  <35.223331, 37.891235, 33.248554>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.568913, 38.119003, 33.855091> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.407360, 38.448452, 33.695827>,  <35.310429, 38.646122, 33.600269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.407360, 38.448452, 33.695827>,  <35.568913, 38.119003, 33.855091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.407360, 38.448452, 33.695827> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329132, 0.275273, 0.903270,
		0.853555, 0.495858, 0.159903,
		-0.403877, 0.823620, -0.398163,
		35.286198, 38.695538, 33.576378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.420380, 38.508938, 34.528225>,  <35.568913, 38.119003, 33.855091>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.420380, 38.508938, 34.528225> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.242886, 38.737988, 34.252487>,  <35.136387, 38.875420, 34.087044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.242886, 38.737988, 34.252487>,  <35.420380, 38.508938, 34.528225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.242886, 38.737988, 34.252487> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356293, 0.593084, 0.722015,
		0.822284, 0.565994, -0.059151,
		-0.443738, 0.572627, -0.689344,
		35.109764, 38.909775, 34.045685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.704384, 39.243965, 34.653778>,  <35.420380, 38.508938, 34.528225>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.704384, 39.243965, 34.653778> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.355988, 39.223980, 34.458275>,  <35.146950, 39.211987, 34.340973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.355988, 39.223980, 34.458275>,  <35.704384, 39.243965, 34.653778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.355988, 39.223980, 34.458275> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463567, 0.413115, 0.783863,
		0.162745, 0.909307, -0.382981,
		-0.870988, -0.049967, -0.488757,
		35.094692, 39.208988, 34.311649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.632786, 38.220272, 26.803467> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.305508, 37.990356, 26.808596>,  <38.109138, 37.852406, 26.811672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.305508, 37.990356, 26.808596>,  <38.632786, 38.220272, 26.803467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.305508, 37.990356, 26.808596> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386817, 0.566851, 0.727360,
		-0.425348, 0.590166, -0.686137,
		-0.818200, -0.574791, 0.012823,
		38.060047, 37.817921, 26.812443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.069157, 38.673893, 26.794779>,  <38.632786, 38.220272, 26.803467>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.069157, 38.673893, 26.794779> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.933041, 38.327641, 26.941690>,  <37.851372, 38.119888, 27.029839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.933041, 38.327641, 26.941690>,  <38.069157, 38.673893, 26.794779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.933041, 38.327641, 26.941690> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221013, 0.453275, 0.863536,
		-0.913979, 0.212677, -0.345558,
		-0.340287, -0.865627, 0.367280,
		37.830956, 38.067951, 27.051874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.413887, 38.853920, 27.144419>,  <38.069157, 38.673893, 26.794779>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.413887, 38.853920, 27.144419> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.534115, 38.507576, 27.304394>,  <37.606251, 38.299770, 27.400379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.534115, 38.507576, 27.304394>,  <37.413887, 38.853920, 27.144419>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.534115, 38.507576, 27.304394> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346788, 0.291414, 0.891525,
		-0.888480, -0.406658, -0.212678,
		0.300569, -0.865856, 0.399939,
		37.624287, 38.247818, 27.424376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.883717, 38.745659, 27.523441>,  <37.413887, 38.853920, 27.144419>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.883717, 38.745659, 27.523441> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.185303, 38.528210, 27.670963>,  <37.366253, 38.397739, 27.759476>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.185303, 38.528210, 27.670963>,  <36.883717, 38.745659, 27.523441>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.185303, 38.528210, 27.670963> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352143, 0.139480, 0.925495,
		-0.554558, -0.827661, -0.086269,
		0.753964, -0.543620, 0.368805,
		37.411491, 38.365124, 27.781605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.535488, 38.458458, 28.162910>,  <36.883717, 38.745659, 27.523441>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.535488, 38.458458, 28.162910> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.931297, 38.411182, 28.196096>,  <37.168781, 38.382816, 28.216009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.931297, 38.411182, 28.196096>,  <36.535488, 38.458458, 28.162910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.931297, 38.411182, 28.196096> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083172, 0.003205, 0.996530,
		-0.118041, -0.992986, -0.006658,
		0.989519, -0.118185, 0.082967,
		37.228153, 38.375729, 28.220987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.583065, 37.858524, 28.576029>,  <36.535488, 38.458458, 28.162910>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.583065, 37.858524, 28.576029> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.929470, 38.056145, 28.606840>,  <37.137314, 38.174717, 28.625326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.929470, 38.056145, 28.606840>,  <36.583065, 37.858524, 28.576029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.929470, 38.056145, 28.606840> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123437, 0.061953, 0.990417,
		0.484547, -0.867221, 0.114637,
		0.866012, 0.494054, 0.077027,
		37.189274, 38.204361, 28.629948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.943279, 37.485344, 29.198816>,  <36.583065, 37.858524, 28.576029>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.943279, 37.485344, 29.198816> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.109589, 37.846840, 29.158041>,  <37.209373, 38.063736, 29.133575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.109589, 37.846840, 29.158041>,  <36.943279, 37.485344, 29.198816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.109589, 37.846840, 29.158041> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237810, 0.216217, 0.946940,
		0.877828, -0.369467, 0.304815,
		0.415770, 0.903739, -0.101938,
		37.234318, 38.117962, 29.127459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.096272, 37.494926, 29.775314>,  <36.943279, 37.485344, 29.198816>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.096272, 37.494926, 29.775314> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.149620, 37.871315, 29.650871>,  <37.181629, 38.097149, 29.576206>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.149620, 37.871315, 29.650871>,  <37.096272, 37.494926, 29.775314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.149620, 37.871315, 29.650871> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121089, 0.327031, 0.937224,
		0.983640, -0.087331, 0.157559,
		0.133376, 0.940970, -0.311106,
		37.189632, 38.153606, 29.557539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.766560, 37.839390, 30.204948>,  <37.096272, 37.494926, 29.775314>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.766560, 37.839390, 30.204948> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.503864, 38.118034, 30.089418>,  <37.346245, 38.285221, 30.020102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.503864, 38.118034, 30.089418>,  <37.766560, 37.839390, 30.204948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.503864, 38.118034, 30.089418> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050381, 0.341610, 0.938490,
		0.752432, 0.630896, -0.189252,
		-0.656740, 0.696616, -0.288824,
		37.306843, 38.327019, 30.002771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.453899, 37.927364, 30.497341>,  <37.766560, 37.839390, 30.204948>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.453899, 37.927364, 30.497341> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.746803, 37.778618, 30.725555>,  <38.922546, 37.689369, 30.862484>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.746803, 37.778618, 30.725555>,  <38.453899, 37.927364, 30.497341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.746803, 37.778618, 30.725555> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161476, -0.719065, -0.675923,
		0.661605, 0.587079, -0.466495,
		0.732260, -0.371866, 0.570536,
		38.966480, 37.667057, 30.896717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940609, 37.798122, 30.068373>,  <38.453899, 37.927364, 30.497341>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.940609, 37.798122, 30.068373> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.045174, 37.554695, 30.368053>,  <39.107914, 37.408638, 30.547863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.045174, 37.554695, 30.368053>,  <38.940609, 37.798122, 30.068373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.045174, 37.554695, 30.368053> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273496, -0.697682, -0.662148,
		0.925670, 0.377997, -0.015940,
		0.261411, -0.608571, 0.749203,
		39.123596, 37.372124, 30.592815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.769310, 37.572926, 30.091713>,  <38.940609, 37.798122, 30.068373>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.769310, 37.572926, 30.091713> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.548359, 37.297264, 30.279308>,  <39.415787, 37.131866, 30.391865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.548359, 37.297264, 30.279308>,  <39.769310, 37.572926, 30.091713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.548359, 37.297264, 30.279308> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291980, -0.686922, -0.665497,
		0.780787, -0.230669, 0.580657,
		-0.552376, -0.689151, 0.468989,
		39.382645, 37.090519, 30.420006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.167648, 36.974548, 30.036695>,  <39.769310, 37.572926, 30.091713>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.167648, 36.974548, 30.036695> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.817955, 36.818729, 30.152603>,  <39.608139, 36.725239, 30.222147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.817955, 36.818729, 30.152603>,  <40.167648, 36.974548, 30.036695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.817955, 36.818729, 30.152603> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167649, -0.802346, -0.572829,
		0.455638, -0.452209, 0.766747,
		-0.874235, -0.389548, 0.289767,
		39.555683, 36.701866, 30.239532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.349033, 36.337925, 30.320852>,  <40.167648, 36.974548, 30.036695>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.349033, 36.337925, 30.320852> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.966808, 36.310680, 30.206131>,  <39.737473, 36.294334, 30.137299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.966808, 36.310680, 30.206131>,  <40.349033, 36.337925, 30.320852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.966808, 36.310680, 30.206131> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251122, -0.697626, -0.671011,
		-0.154380, -0.713217, 0.683731,
		-0.955565, -0.068110, -0.286804,
		39.680138, 36.290249, 30.120090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.192474, 35.652054, 30.365297>,  <40.349033, 36.337925, 30.320852>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.192474, 35.652054, 30.365297> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.910812, 35.784870, 30.114248>,  <39.741814, 35.864559, 29.963619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.910812, 35.784870, 30.114248>,  <40.192474, 35.652054, 30.365297>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.910812, 35.784870, 30.114248> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149504, -0.794770, -0.588209,
		-0.694127, -0.508023, 0.510001,
		-0.704157, 0.332044, -0.627622,
		39.699566, 35.884483, 29.925962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.779499, 35.094330, 30.112955>,  <40.192474, 35.652054, 30.365297>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.779499, 35.094330, 30.112955> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.719093, 35.373535, 29.832962>,  <39.682850, 35.541058, 29.664967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.719093, 35.373535, 29.832962>,  <39.779499, 35.094330, 30.112955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.719093, 35.373535, 29.832962> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212614, -0.668597, -0.712582,
		-0.965397, -0.256434, -0.047442,
		-0.151010, 0.698011, -0.699983,
		39.673790, 35.582939, 29.622967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.764942, 34.670559, 29.493137>,  <39.779499, 35.094330, 30.112955>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.764942, 34.670559, 29.493137> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.741211, 35.024418, 29.308151>,  <39.726974, 35.236732, 29.197159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.741211, 35.024418, 29.308151>,  <39.764942, 34.670559, 29.493137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.741211, 35.024418, 29.308151> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180601, -0.446127, -0.876558,
		-0.981766, -0.135523, -0.133303,
		-0.059324, 0.884650, -0.462467,
		39.723415, 35.289814, 29.169411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.256294, 34.574528, 28.889906>,  <39.764942, 34.670559, 29.493137>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.256294, 34.574528, 28.889906> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.522720, 34.867882, 28.835499>,  <39.682575, 35.043896, 28.802855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.522720, 34.867882, 28.835499>,  <39.256294, 34.574528, 28.889906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.522720, 34.867882, 28.835499> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317924, -0.444097, -0.837677,
		-0.674746, 0.514704, -0.528959,
		0.666065, 0.733388, -0.136015,
		39.722538, 35.087898, 28.794695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.149490, 34.763618, 28.248444>,  <39.256294, 34.574528, 28.889906>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.149490, 34.763618, 28.248444> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.523148, 34.865318, 28.348635>,  <39.747341, 34.926338, 28.408749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.523148, 34.865318, 28.348635>,  <39.149490, 34.763618, 28.248444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.523148, 34.865318, 28.348635> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349608, -0.510637, -0.785509,
		-0.071816, 0.821343, -0.565896,
		0.934140, 0.254254, 0.250476,
		39.803391, 34.941593, 28.423777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.630150, 35.135048, 27.616596>,  <39.149490, 34.763618, 28.248444>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.630150, 35.135048, 27.616596> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.917694, 34.980286, 27.847610>,  <40.090221, 34.887428, 27.986219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.917694, 34.980286, 27.847610>,  <39.630150, 35.135048, 27.616596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.917694, 34.980286, 27.847610> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435335, -0.397163, -0.807927,
		0.541966, 0.832206, -0.117071,
		0.718858, -0.386904, 0.577537,
		40.133350, 34.864216, 28.020872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.140049, 35.161137, 27.198650>,  <39.630150, 35.135048, 27.616596>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.140049, 35.161137, 27.198650> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.259636, 34.917404, 27.492407>,  <40.331387, 34.771164, 27.668661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.259636, 34.917404, 27.492407>,  <40.140049, 35.161137, 27.198650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.259636, 34.917404, 27.492407> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541779, -0.525146, -0.656275,
		0.785553, 0.594083, 0.173122,
		0.298968, -0.609333, 0.734392,
		40.349327, 34.734604, 27.712725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.796032, 35.118549, 27.116705>,  <40.140049, 35.161137, 27.198650>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.796032, 35.118549, 27.116705> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.700699, 34.793243, 27.329042>,  <40.643501, 34.598061, 27.456446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.700699, 34.793243, 27.329042>,  <40.796032, 35.118549, 27.116705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.700699, 34.793243, 27.329042> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658958, -0.536938, -0.526757,
		0.713424, 0.224263, 0.663877,
		-0.238329, -0.813268, 0.530844,
		40.629200, 34.549263, 27.488297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.416111, 34.842106, 27.119097>,  <40.796032, 35.118549, 27.116705>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.416111, 34.842106, 27.119097> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.167629, 34.554806, 27.244453>,  <41.018539, 34.382423, 27.319668>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.167629, 34.554806, 27.244453>,  <41.416111, 34.842106, 27.119097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.167629, 34.554806, 27.244453> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579492, -0.690251, -0.433292,
		0.527532, -0.087557, 0.845011,
		-0.621208, -0.718252, 0.313391,
		40.981266, 34.339329, 27.338470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.240288, 30.851597, 26.927990> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.303646, 31.229530, 26.813307>,  <34.341660, 31.456291, 26.744497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.303646, 31.229530, 26.813307>,  <34.240288, 30.851597, 26.927990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.303646, 31.229530, 26.813307> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207981, 0.315785, 0.925756,
		0.965223, -0.087006, 0.246526,
		0.158395, 0.944833, -0.286707,
		34.351166, 31.512980, 26.727295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.707806, 31.127602, 27.448818>,  <34.240288, 30.851597, 26.927990>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.707806, 31.127602, 27.448818> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.501743, 31.420973, 27.271418>,  <34.378105, 31.596996, 27.164976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.501743, 31.420973, 27.271418>,  <34.707806, 31.127602, 27.448818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.501743, 31.420973, 27.271418> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166915, 0.421693, 0.891243,
		0.840687, 0.533156, -0.094817,
		-0.515156, 0.733430, -0.443503,
		34.347198, 31.641003, 27.138367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.935249, 31.709513, 27.735575>,  <34.707806, 31.127602, 27.448818>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.935249, 31.709513, 27.735575> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.571327, 31.818119, 27.610016>,  <34.352974, 31.883284, 27.534681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.571327, 31.818119, 27.610016>,  <34.935249, 31.709513, 27.735575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.571327, 31.818119, 27.610016> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119075, 0.553757, 0.824120,
		0.397585, 0.787167, -0.471480,
		-0.909806, 0.271516, -0.313898,
		34.298386, 31.899574, 27.515846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.864346, 32.252159, 28.123043>,  <34.935249, 31.709513, 27.735575>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.864346, 32.252159, 28.123043> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.497494, 32.180851, 27.980444>,  <34.277382, 32.138065, 27.894884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.497494, 32.180851, 27.980444>,  <34.864346, 32.252159, 28.123043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.497494, 32.180851, 27.980444> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388517, 0.599581, 0.699683,
		0.089020, 0.780207, -0.619154,
		-0.917131, -0.178266, -0.356499,
		34.222355, 32.127373, 27.873495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.526817, 32.869045, 28.058767>,  <34.864346, 32.252159, 28.123043>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.526817, 32.869045, 28.058767> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.257805, 32.580921, 28.126720>,  <34.096397, 32.408047, 28.167492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.257805, 32.580921, 28.126720>,  <34.526817, 32.869045, 28.058767>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.257805, 32.580921, 28.126720> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375527, 0.529942, 0.760355,
		-0.637718, 0.447566, -0.626897,
		-0.672529, -0.720309, 0.169881,
		34.056046, 32.364830, 28.177685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.965015, 33.204659, 28.436575>,  <34.526817, 32.869045, 28.058767>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.965015, 33.204659, 28.436575> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.895206, 32.813515, 28.482759>,  <33.853321, 32.578827, 28.510471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.895206, 32.813515, 28.482759>,  <33.965015, 33.204659, 28.436575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.895206, 32.813515, 28.482759> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442516, 0.182644, 0.877964,
		-0.879614, 0.102130, -0.464595,
		-0.174522, -0.977860, 0.115463,
		33.842850, 32.520157, 28.517399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.318214, 33.207584, 28.506760>,  <33.965015, 33.204659, 28.436575>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.318214, 33.207584, 28.506760> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.442036, 32.854935, 28.649263>,  <33.516327, 32.643345, 28.734766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.442036, 32.854935, 28.649263>,  <33.318214, 33.207584, 28.506760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.442036, 32.854935, 28.649263> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576547, 0.123915, 0.807613,
		-0.756154, -0.455400, -0.469938,
		0.309554, -0.881621, 0.356259,
		33.534901, 32.590450, 28.756142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.770180, 32.775860, 28.698086>,  <33.318214, 33.207584, 28.506760>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.770180, 32.775860, 28.698086> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.046757, 32.594177, 28.922802>,  <33.212704, 32.485168, 29.057631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.046757, 32.594177, 28.922802>,  <32.770180, 32.775860, 28.698086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.046757, 32.594177, 28.922802> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512859, 0.239075, 0.824511,
		-0.508805, -0.858221, -0.067635,
		0.691443, -0.454203, 0.561789,
		33.254189, 32.457916, 29.091339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.397499, 32.551105, 29.286036>,  <32.770180, 32.775860, 28.698086>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.397499, 32.551105, 29.286036> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.784206, 32.531864, 29.386469>,  <33.016232, 32.520321, 29.446730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.784206, 32.531864, 29.386469>,  <32.397499, 32.551105, 29.286036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.784206, 32.531864, 29.386469> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232476, 0.243196, 0.941706,
		-0.106364, -0.968783, 0.223931,
		0.966769, -0.048106, 0.251086,
		33.074238, 32.517433, 29.461794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.331078, 32.237286, 30.002399>,  <32.397499, 32.551105, 29.286036>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.331078, 32.237286, 30.002399> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.692829, 32.403324, 29.962803>,  <32.909878, 32.502949, 29.939045>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.692829, 32.403324, 29.962803>,  <32.331078, 32.237286, 30.002399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.692829, 32.403324, 29.962803> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080983, 0.394700, 0.915234,
		0.418995, -0.819693, 0.390572,
		0.904370, 0.415108, -0.098996,
		32.964142, 32.527855, 29.933105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.685699, 32.029964, 30.553612>,  <32.331078, 32.237286, 30.002399>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.685699, 32.029964, 30.553612> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.870644, 32.372559, 30.461830>,  <32.981609, 32.578117, 30.406761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.870644, 32.372559, 30.461830>,  <32.685699, 32.029964, 30.553612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.870644, 32.372559, 30.461830> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248830, 0.373708, 0.893547,
		0.851062, -0.356045, 0.385908,
		0.462360, 0.856490, -0.229454,
		33.009350, 32.629505, 30.392994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.214836, 32.166241, 31.011185>,  <32.685699, 32.029964, 30.553612>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.214836, 32.166241, 31.011185> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.155476, 32.529438, 30.854456>,  <33.119858, 32.747356, 30.760418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.155476, 32.529438, 30.854456>,  <33.214836, 32.166241, 31.011185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.155476, 32.529438, 30.854456> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159953, 0.413033, 0.896560,
		0.975906, 0.070377, -0.206530,
		-0.148401, 0.907993, -0.391824,
		33.110954, 32.801834, 30.736908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.728165, 32.633850, 31.456520>,  <33.214836, 32.166241, 31.011185>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.728165, 32.633850, 31.456520> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.474068, 32.882645, 31.273390>,  <33.321609, 33.031921, 31.163511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.474068, 32.882645, 31.273390>,  <33.728165, 32.633850, 31.456520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.474068, 32.882645, 31.273390> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136400, 0.493123, 0.859200,
		0.760175, 0.608245, -0.228412,
		-0.635239, 0.621987, -0.457825,
		33.283497, 33.069241, 31.136042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.990448, 33.349380, 31.538931>,  <33.728165, 32.633850, 31.456520>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.990448, 33.349380, 31.538931> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.603558, 33.398159, 31.449848>,  <33.371422, 33.427425, 31.396399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.603558, 33.398159, 31.449848>,  <33.990448, 33.349380, 31.538931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.603558, 33.398159, 31.449848> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124266, 0.537546, 0.834028,
		0.221424, 0.834370, -0.504775,
		-0.967228, 0.121948, -0.222709,
		33.313389, 33.434742, 31.383036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.814751, 33.512005, 31.543049>,  <33.990448, 33.349380, 31.538931>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.814751, 33.512005, 31.543049> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.825188, 33.276627, 31.866295>,  <34.831448, 33.135399, 32.060242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.825188, 33.276627, 31.866295>,  <34.814751, 33.512005, 31.543049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.825188, 33.276627, 31.866295> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128361, -0.799725, -0.586484,
		0.991384, 0.119031, 0.054669,
		0.026089, -0.588448, 0.808114,
		34.833015, 33.100094, 32.108730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.453232, 33.202740, 31.520502>,  <34.814751, 33.512005, 31.543049>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.453232, 33.202740, 31.520502> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.204269, 32.980518, 31.741035>,  <35.054893, 32.847183, 31.873356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.204269, 32.980518, 31.741035>,  <35.453232, 33.202740, 31.520502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.204269, 32.980518, 31.741035> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233482, -0.804120, -0.546698,
		0.747060, -0.211540, 0.630200,
		-0.622404, -0.555556, 0.551335,
		35.017548, 32.813850, 31.906435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.794930, 32.691193, 31.700247>,  <35.453232, 33.202740, 31.520502>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.794930, 32.691193, 31.700247> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.431271, 32.526100, 31.722517>,  <35.213074, 32.427044, 31.735880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.431271, 32.526100, 31.722517>,  <35.794930, 32.691193, 31.700247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.431271, 32.526100, 31.722517> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321572, -0.780646, -0.535895,
		0.264643, -0.469305, 0.842447,
		-0.909151, -0.412728, 0.055677,
		35.158524, 32.402283, 31.739220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.913403, 32.008369, 31.970545>,  <35.794930, 32.691193, 31.700247>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.913403, 32.008369, 31.970545> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.586739, 32.058846, 31.745281>,  <35.390739, 32.089130, 31.610123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.586739, 32.058846, 31.745281>,  <35.913403, 32.008369, 31.970545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.586739, 32.058846, 31.745281> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335102, -0.690773, -0.640733,
		-0.469870, -0.711975, 0.521837,
		-0.816656, 0.126193, -0.563158,
		35.341740, 32.096703, 31.576334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785709, 31.366951, 31.699520>,  <35.913403, 32.008369, 31.970545>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.785709, 31.366951, 31.699520> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.578281, 31.610378, 31.459276>,  <35.453823, 31.756433, 31.315130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.578281, 31.610378, 31.459276>,  <35.785709, 31.366951, 31.699520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.578281, 31.610378, 31.459276> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254026, -0.561068, -0.787829,
		-0.816429, -0.561115, 0.136361,
		-0.518570, 0.608566, -0.600610,
		35.422710, 31.792948, 31.279093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.415230, 30.952797, 31.235382>,  <35.785709, 31.366951, 31.699520>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.415230, 30.952797, 31.235382> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.387054, 31.286842, 31.017162>,  <35.370152, 31.487270, 30.886230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.387054, 31.286842, 31.017162>,  <35.415230, 30.952797, 31.235382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.387054, 31.286842, 31.017162> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199505, -0.524062, -0.827984,
		-0.977362, -0.167158, -0.129698,
		-0.070434, 0.835115, -0.545547,
		35.365925, 31.537376, 30.853498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.014240, 30.774151, 30.678022>,  <35.415230, 30.952797, 31.235382>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.014240, 30.774151, 30.678022> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.214905, 31.098516, 30.557520>,  <35.335304, 31.293135, 30.485218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.214905, 31.098516, 30.557520>,  <35.014240, 30.774151, 30.678022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.214905, 31.098516, 30.557520> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272325, -0.478582, -0.834745,
		-0.821081, 0.336720, -0.460918,
		0.501662, 0.810912, -0.301257,
		35.365402, 31.341791, 30.467142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.918839, 30.902294, 29.929888>,  <35.014240, 30.774151, 30.678022>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.918839, 30.902294, 29.929888> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.249210, 31.123484, 29.973824>,  <35.447433, 31.256197, 30.000185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.249210, 31.123484, 29.973824>,  <34.918839, 30.902294, 29.929888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.249210, 31.123484, 29.973824> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350544, -0.351118, -0.868237,
		-0.441546, 0.755603, -0.483840,
		0.825927, 0.552973, 0.109837,
		35.496990, 31.289375, 30.006775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.091080, 31.088745, 29.211506>,  <34.918839, 30.902294, 29.929888>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.091080, 31.088745, 29.211506> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.434547, 31.181412, 29.394377>,  <35.640629, 31.237011, 29.504099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.434547, 31.181412, 29.394377>,  <35.091080, 31.088745, 29.211506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.434547, 31.181412, 29.394377> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508231, -0.269677, -0.817909,
		-0.066192, 0.934668, -0.349305,
		0.858673, 0.231667, 0.457177,
		35.692150, 31.250912, 29.531530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.443336, 31.464211, 28.741169>,  <35.091080, 31.088745, 29.211506>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.443336, 31.464211, 28.741169> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.727116, 31.346180, 28.997175>,  <35.897381, 31.275362, 29.150778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.727116, 31.346180, 28.997175>,  <35.443336, 31.464211, 28.741169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.727116, 31.346180, 28.997175> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615366, -0.183298, -0.766633,
		0.343530, 0.937726, 0.051541,
		0.709444, -0.295078, 0.640014,
		35.939949, 31.257656, 29.189178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.101574, 31.913223, 28.632750>,  <35.443336, 31.464211, 28.741169>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.101574, 31.913223, 28.632750> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.223705, 31.570412, 28.798775>,  <36.296986, 31.364725, 28.898390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.223705, 31.570412, 28.798775>,  <36.101574, 31.913223, 28.632750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.223705, 31.570412, 28.798775> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591774, -0.170717, -0.787819,
		0.746042, 0.486167, 0.455042,
		0.305328, -0.857028, 0.415063,
		36.315304, 31.313303, 28.923294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.768055, 31.912640, 28.527325>,  <36.101574, 31.913223, 28.632750>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.768055, 31.912640, 28.527325> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.708576, 31.535227, 28.645739>,  <36.672890, 31.308779, 28.716787>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.708576, 31.535227, 28.645739>,  <36.768055, 31.912640, 28.527325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.708576, 31.535227, 28.645739> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431928, -0.331268, -0.838868,
		0.889566, 0.003126, 0.456797,
		-0.148700, -0.943531, 0.296035,
		36.663967, 31.252167, 28.734549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.395191, 31.668825, 28.708279>,  <36.768055, 31.912640, 28.527325>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.395191, 31.668825, 28.708279> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.155704, 31.366552, 28.602085>,  <37.012012, 31.185188, 28.538368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.155704, 31.366552, 28.602085>,  <37.395191, 31.668825, 28.708279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.155704, 31.366552, 28.602085> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555866, -0.153378, -0.816999,
		0.576673, -0.636724, 0.511889,
		-0.598716, -0.755684, -0.265484,
		36.976089, 31.139847, 28.522440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894741, 31.128593, 28.437014>,  <37.395191, 31.668825, 28.708279>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.894741, 31.128593, 28.437014> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.536171, 31.039776, 28.283590>,  <37.321030, 30.986486, 28.191536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.536171, 31.039776, 28.283590>,  <37.894741, 31.128593, 28.437014>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.536171, 31.039776, 28.283590> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424702, -0.183014, -0.886642,
		0.126676, -0.957707, 0.258361,
		-0.896427, -0.222042, -0.383557,
		37.267242, 30.973164, 28.168524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.539715, 30.849501, 28.643862>,  <37.894741, 31.128593, 28.437014>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.539715, 30.849501, 28.643862> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.938046, 30.855865, 28.607908>,  <39.177044, 30.859684, 28.586336>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.938046, 30.855865, 28.607908>,  <38.539715, 30.849501, 28.643862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.938046, 30.855865, 28.607908> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079874, 0.324753, 0.942420,
		0.044185, -0.945665, 0.322126,
		0.995825, 0.015911, -0.089883,
		39.236794, 30.860640, 28.580944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.699726, 30.560406, 29.239653>,  <38.539715, 30.849501, 28.643862>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.699726, 30.560406, 29.239653> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.012131, 30.787075, 29.134653>,  <39.199574, 30.923077, 29.071653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.012131, 30.787075, 29.134653>,  <38.699726, 30.560406, 29.239653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.012131, 30.787075, 29.134653> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062017, 0.347874, 0.935488,
		0.621433, -0.746904, 0.236549,
		0.781009, 0.566673, -0.262501,
		39.246433, 30.957077, 29.055902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.173065, 30.361650, 29.747728>,  <38.699726, 30.560406, 29.239653>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.173065, 30.361650, 29.747728> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.308605, 30.697355, 29.577637>,  <39.389931, 30.898779, 29.475582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.308605, 30.697355, 29.577637>,  <39.173065, 30.361650, 29.747728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.308605, 30.697355, 29.577637> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113770, 0.412097, 0.904009,
		0.933936, -0.354701, 0.044156,
		0.338850, 0.839263, -0.425227,
		39.410259, 30.949135, 29.450069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.818645, 30.555931, 30.172899>,  <39.173065, 30.361650, 29.747728>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.818645, 30.555931, 30.172899> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.665829, 30.872429, 29.981911>,  <39.574139, 31.062328, 29.867317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.665829, 30.872429, 29.981911>,  <39.818645, 30.555931, 30.172899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.665829, 30.872429, 29.981911> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146850, 0.562074, 0.813946,
		0.912403, 0.240845, -0.330930,
		-0.382042, 0.791244, -0.477470,
		39.551216, 31.109802, 29.838671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.344933, 31.105530, 30.310768>,  <39.818645, 30.555931, 30.172899>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.344933, 31.105530, 30.310768> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.994633, 31.272650, 30.214008>,  <39.784454, 31.372921, 30.155952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.994633, 31.272650, 30.214008>,  <40.344933, 31.105530, 30.310768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.994633, 31.272650, 30.214008> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116095, 0.668607, 0.734498,
		0.468606, 0.615150, -0.634034,
		-0.875746, 0.417798, -0.241897,
		39.731911, 31.397989, 30.141439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.558716, 31.789093, 30.229136>,  <40.344933, 31.105530, 30.310768>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.558716, 31.789093, 30.229136> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.160896, 31.772957, 30.267580>,  <39.922203, 31.763275, 30.290648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.160896, 31.772957, 30.267580>,  <40.558716, 31.789093, 30.229136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.160896, 31.772957, 30.267580> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046238, 0.655633, 0.753663,
		-0.093417, 0.754002, -0.650196,
		-0.994553, -0.040341, 0.096111,
		39.862530, 31.760855, 30.296413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.216076, 32.473637, 30.073061>,  <40.558716, 31.789093, 30.229136>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.216076, 32.473637, 30.073061> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.952698, 32.273476, 30.297934>,  <39.794670, 32.153378, 30.432858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.952698, 32.273476, 30.297934>,  <40.216076, 32.473637, 30.073061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.952698, 32.273476, 30.297934> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064790, 0.781871, 0.620064,
		-0.749837, 0.371853, -0.547238,
		-0.658443, -0.500402, 0.562183,
		39.755165, 32.123356, 30.466589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.906395, 33.012665, 30.411898>,  <40.216076, 32.473637, 30.073061>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.906395, 33.012665, 30.411898> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.780254, 32.696228, 30.621553>,  <39.704571, 32.506367, 30.747347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.780254, 32.696228, 30.621553>,  <39.906395, 33.012665, 30.411898>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.780254, 32.696228, 30.621553> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233913, 0.600079, 0.764977,
		-0.919693, 0.118637, -0.374286,
		-0.315356, -0.791094, 0.524138,
		39.685646, 32.458900, 30.778795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.196117, 33.117661, 30.669830>,  <39.906395, 33.012665, 30.411898>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.196117, 33.117661, 30.669830> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.366055, 32.844379, 30.907400>,  <39.468018, 32.680412, 31.049942>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.366055, 32.844379, 30.907400>,  <39.196117, 33.117661, 30.669830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.366055, 32.844379, 30.907400> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209867, 0.563872, 0.798751,
		-0.880604, -0.463990, 0.096177,
		0.424845, -0.683199, 0.593925,
		39.493507, 32.639420, 31.085577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.758121, 32.992680, 31.295778>,  <39.196117, 33.117661, 30.669830>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.758121, 32.992680, 31.295778> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.097649, 32.826832, 31.426989>,  <39.301365, 32.727322, 31.505714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.097649, 32.826832, 31.426989>,  <38.758121, 32.992680, 31.295778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.097649, 32.826832, 31.426989> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187410, 0.344187, 0.920007,
		-0.494359, -0.842391, 0.214446,
		0.848815, -0.414624, 0.328024,
		39.352295, 32.702446, 31.525396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.583286, 32.720798, 31.919207>,  <38.758121, 32.992680, 31.295778>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.583286, 32.720798, 31.919207> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.982578, 32.743439, 31.926477>,  <39.222153, 32.757023, 31.930840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.982578, 32.743439, 31.926477>,  <38.583286, 32.720798, 31.919207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.982578, 32.743439, 31.926477> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040262, 0.418764, 0.907202,
		0.043734, -0.906330, 0.420302,
		0.998232, 0.056598, 0.018176,
		39.282047, 32.760418, 31.931931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.793892, 32.367561, 32.512466>,  <38.583286, 32.720798, 31.919207>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.793892, 32.367561, 32.512466> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.093002, 32.617039, 32.421394>,  <39.272469, 32.766724, 32.366753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.093002, 32.617039, 32.421394>,  <38.793892, 32.367561, 32.512466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.093002, 32.617039, 32.421394> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016202, 0.359960, 0.932827,
		0.663752, -0.693858, 0.279275,
		0.747777, 0.623691, -0.227682,
		39.317337, 32.804146, 32.353088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.276051, 32.298103, 33.119328>,  <38.793892, 32.367561, 32.512466>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.276051, 32.298103, 33.119328> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.373772, 32.641945, 32.939819>,  <39.432404, 32.848251, 32.832115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.373772, 32.641945, 32.939819>,  <39.276051, 32.298103, 33.119328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.373772, 32.641945, 32.939819> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053917, 0.450038, 0.891380,
		0.968199, -0.241963, 0.063598,
		0.244303, 0.859604, -0.448772,
		39.447063, 32.899826, 32.805187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.846024, 32.626297, 33.547329>,  <39.276051, 32.298103, 33.119328>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.846024, 32.626297, 33.547329> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.706226, 32.928421, 33.325569>,  <39.622349, 33.109695, 33.192513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.706226, 32.928421, 33.325569>,  <39.846024, 32.626297, 33.547329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.706226, 32.928421, 33.325569> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037492, 0.602511, 0.797230,
		0.936187, 0.257843, -0.238894,
		-0.349496, 0.755313, -0.554396,
		39.601379, 33.155014, 33.159252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<41.877514, 34.235344, 27.146194> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.507282, 34.084160, 27.154692>,  <41.285145, 33.993450, 27.159790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.507282, 34.084160, 27.154692>,  <41.877514, 34.235344, 27.146194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.507282, 34.084160, 27.154692> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302037, -0.771161, -0.560432,
		0.228203, -0.512307, 0.827928,
		-0.925579, -0.377957, 0.021245,
		41.229607, 33.970772, 27.161066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.915344, 33.413418, 27.307407>,  <41.877514, 34.235344, 27.146194>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.915344, 33.413418, 27.307407> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.589443, 33.515209, 27.099018>,  <41.393902, 33.576283, 26.973984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.589443, 33.515209, 27.099018>,  <41.915344, 33.413418, 27.307407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.589443, 33.515209, 27.099018> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313093, -0.563163, -0.764735,
		-0.488002, -0.786186, 0.379165,
		-0.814756, 0.254478, -0.520974,
		41.345016, 33.591553, 26.942726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.688602, 32.794819, 26.909281>,  <41.915344, 33.413418, 27.307407>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.688602, 32.794819, 26.909281> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.506191, 33.100845, 26.727419>,  <41.396744, 33.284462, 26.618301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.506191, 33.100845, 26.727419>,  <41.688602, 32.794819, 26.909281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.506191, 33.100845, 26.727419> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248772, -0.380921, -0.890512,
		-0.854487, -0.519207, -0.016614,
		-0.456032, 0.765064, -0.454656,
		41.369381, 33.330364, 26.591022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.429153, 32.490421, 26.383713>,  <41.688602, 32.794819, 26.909281>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.429153, 32.490421, 26.383713> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.385056, 32.876980, 26.290834>,  <41.358597, 33.108917, 26.235107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.385056, 32.876980, 26.290834>,  <41.429153, 32.490421, 26.383713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.385056, 32.876980, 26.290834> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129873, -0.217610, -0.967357,
		-0.985383, -0.136805, -0.101518,
		-0.110248, 0.966401, -0.232196,
		41.351982, 33.166901, 26.221176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.950855, 32.472713, 25.866810>,  <41.429153, 32.490421, 26.383713>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.950855, 32.472713, 25.866810> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.136108, 32.823990, 25.818985>,  <41.247261, 33.034756, 25.790291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.136108, 32.823990, 25.818985>,  <40.950855, 32.472713, 25.866810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.136108, 32.823990, 25.818985> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074823, -0.173162, -0.982047,
		-0.883124, 0.445874, -0.145906,
		0.463135, 0.878186, -0.119562,
		41.275047, 33.087444, 25.783115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.577553, 32.853745, 25.346373>,  <40.950855, 32.472713, 25.866810>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.577553, 32.853745, 25.346373> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.936260, 33.026283, 25.385851>,  <41.151485, 33.129807, 25.409538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.936260, 33.026283, 25.385851>,  <40.577553, 32.853745, 25.346373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.936260, 33.026283, 25.385851> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054917, 0.112823, -0.992096,
		-0.439070, 0.895105, 0.077488,
		0.896773, 0.431345, 0.098693,
		41.205292, 33.155685, 25.415459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.617790, 33.275883, 24.733232>,  <40.577553, 32.853745, 25.346373>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.617790, 33.275883, 24.733232> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.999142, 33.239540, 24.848339>,  <41.227955, 33.217735, 24.917404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.999142, 33.239540, 24.848339>,  <40.617790, 33.275883, 24.733232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.999142, 33.239540, 24.848339> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279490, -0.093763, -0.955560,
		0.113800, 0.991440, -0.063999,
		0.953381, -0.090856, 0.287768,
		41.285156, 33.212284, 24.934669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.983562, 33.788807, 24.549643>,  <40.617790, 33.275883, 24.733232>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.983562, 33.788807, 24.549643> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.227306, 33.472313, 24.570133>,  <41.373554, 33.282417, 24.582428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.227306, 33.472313, 24.570133>,  <40.983562, 33.788807, 24.549643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.227306, 33.472313, 24.570133> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123609, 0.030983, -0.991847,
		0.783200, 0.610723, 0.116684,
		0.609360, -0.791238, 0.051225,
		41.410114, 33.234943, 24.585501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.302685, 33.827335, 23.947493>,  <40.983562, 33.788807, 24.549643>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.302685, 33.827335, 23.947493> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.432636, 33.466587, 24.061398>,  <41.510609, 33.250137, 24.129740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.432636, 33.466587, 24.061398>,  <41.302685, 33.827335, 23.947493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.432636, 33.466587, 24.061398> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136110, -0.253375, -0.957745,
		0.935910, 0.349909, 0.040437,
		0.324878, -0.901867, 0.284762,
		41.530098, 33.196026, 24.146826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.958096, 33.734627, 23.638990>,  <41.302685, 33.827335, 23.947493>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.958096, 33.734627, 23.638990> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.783855, 33.385147, 23.725615>,  <41.679310, 33.175461, 23.777590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.783855, 33.385147, 23.725615>,  <41.958096, 33.734627, 23.638990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.783855, 33.385147, 23.725615> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079514, -0.276995, -0.957576,
		0.896621, -0.399902, 0.190131,
		-0.435602, -0.873700, 0.216562,
		41.653175, 33.123035, 23.790583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.376923, 33.301094, 23.220524>,  <41.958096, 33.734627, 23.638990>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.376923, 33.301094, 23.220524> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.060375, 33.073551, 23.310085>,  <41.870445, 32.937023, 23.363823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.060375, 33.073551, 23.310085>,  <42.376923, 33.301094, 23.220524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.060375, 33.073551, 23.310085> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104564, -0.234906, -0.966378,
		0.602330, -0.788174, 0.126415,
		-0.791369, -0.568860, 0.223905,
		41.822964, 32.902893, 23.377256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.507027, 32.643574, 22.993940>,  <42.376923, 33.301094, 23.220524>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.507027, 32.643574, 22.993940> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.110691, 32.695881, 23.007454>,  <41.872890, 32.727264, 23.015562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.110691, 32.695881, 23.007454>,  <42.507027, 32.643574, 22.993940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.110691, 32.695881, 23.007454> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067810, -0.265325, -0.961771,
		-0.116805, -0.955250, 0.271761,
		-0.990837, 0.130768, 0.033784,
		41.813438, 32.735111, 23.017590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.210136, 32.045647, 22.797985>,  <42.507027, 32.643574, 22.993940>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.210136, 32.045647, 22.797985> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.928482, 32.319416, 22.722351>,  <41.759487, 32.483677, 22.676971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.928482, 32.319416, 22.722351>,  <42.210136, 32.045647, 22.797985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.928482, 32.319416, 22.722351> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006444, -0.272443, -0.962150,
		-0.710032, -0.676270, 0.196248,
		-0.704140, 0.684422, -0.189085,
		41.717239, 32.524742, 22.665625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.004646, 31.370880, 23.158255>,  <42.210136, 32.045647, 22.797985>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.004646, 31.370880, 23.158255> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.800999, 31.139669, 23.413342>,  <41.678810, 31.000942, 23.566393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.800999, 31.139669, 23.413342>,  <42.004646, 31.370880, 23.158255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.800999, 31.139669, 23.413342> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821750, -0.546803, 0.160416,
		0.255979, 0.605713, 0.753383,
		-0.509118, -0.578029, 0.637715,
		41.648262, 30.966261, 23.604656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.320347, 31.121981, 23.225924>,  <42.004646, 31.370880, 23.158255>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.320347, 31.121981, 23.225924> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.251926, 30.728891, 23.197643>,  <41.210873, 30.493038, 23.180676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.251926, 30.728891, 23.197643>,  <41.320347, 31.121981, 23.225924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.251926, 30.728891, 23.197643> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336439, -0.009186, 0.941660,
		-0.926040, 0.184859, -0.329055,
		-0.171051, -0.982722, -0.070700,
		41.200611, 30.434074, 23.176434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.633244, 31.021049, 23.475822>,  <41.320347, 31.121981, 23.225924>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.633244, 31.021049, 23.475822> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.836006, 30.678967, 23.519026>,  <40.957664, 30.473717, 23.544947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.836006, 30.678967, 23.519026>,  <40.633244, 31.021049, 23.475822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.836006, 30.678967, 23.519026> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268052, -0.037303, 0.962682,
		-0.819263, -0.516943, -0.248149,
		0.506908, -0.855207, 0.108007,
		40.988079, 30.422405, 23.551428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.162659, 30.660124, 23.734015>,  <40.633244, 31.021049, 23.475822>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.162659, 30.660124, 23.734015> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.491920, 30.450077, 23.820431>,  <40.689476, 30.324049, 23.872280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.491920, 30.450077, 23.820431>,  <40.162659, 30.660124, 23.734015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.491920, 30.450077, 23.820431> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326806, -0.126990, 0.936521,
		-0.464347, -0.841502, -0.276143,
		0.823152, -0.525116, 0.216041,
		40.738865, 30.292542, 23.885242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.919308, 30.145136, 24.193155>,  <40.162659, 30.660124, 23.734015>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.919308, 30.145136, 24.193155> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.311436, 30.146944, 24.272102>,  <40.546711, 30.148029, 24.319471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.311436, 30.146944, 24.272102>,  <39.919308, 30.145136, 24.193155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.311436, 30.146944, 24.272102> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188454, -0.276442, 0.942372,
		0.058824, -0.961020, -0.270149,
		0.980319, 0.004523, 0.197369,
		40.605530, 30.148300, 24.331312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.072395, 29.544777, 24.533081>,  <39.919308, 30.145136, 24.193155>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.072395, 29.544777, 24.533081> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.379475, 29.779938, 24.635065>,  <40.563725, 29.921034, 24.696255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.379475, 29.779938, 24.635065>,  <40.072395, 29.544777, 24.533081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.379475, 29.779938, 24.635065> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116563, -0.263119, 0.957696,
		0.630116, -0.764945, -0.133470,
		0.767703, 0.587902, 0.254960,
		40.609787, 29.956308, 24.711554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.389881, 29.254311, 25.058737>,  <40.072395, 29.544777, 24.533081>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.389881, 29.254311, 25.058737> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.547894, 29.617382, 25.115402>,  <40.642700, 29.835224, 25.149401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.547894, 29.617382, 25.115402>,  <40.389881, 29.254311, 25.058737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.547894, 29.617382, 25.115402> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187196, -0.071435, 0.979722,
		0.899392, -0.413541, 0.141695,
		0.395034, 0.907679, 0.141661,
		40.666405, 29.889687, 25.157900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.721279, 29.241241, 25.706104>,  <40.389881, 29.254311, 25.058737>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.721279, 29.241241, 25.706104> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.729492, 29.639252, 25.667107>,  <40.734421, 29.878057, 25.643707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.729492, 29.639252, 25.667107>,  <40.721279, 29.241241, 25.706104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.729492, 29.639252, 25.667107> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075482, 0.098781, 0.992242,
		0.996936, -0.013015, 0.077135,
		0.020533, 0.995024, -0.097496,
		40.735653, 29.937759, 25.637857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.273544, 29.547771, 26.238008>,  <40.721279, 29.241241, 25.706104>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.273544, 29.547771, 26.238008> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.981747, 29.796595, 26.124243>,  <40.806671, 29.945889, 26.055983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.981747, 29.796595, 26.124243>,  <41.273544, 29.547771, 26.238008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.981747, 29.796595, 26.124243> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246115, 0.149248, 0.957681,
		0.638179, 0.768617, 0.044223,
		-0.729489, 0.622055, -0.284415,
		40.762901, 29.983212, 26.038918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.286358, 30.047474, 26.713598>,  <41.273544, 29.547771, 26.238008>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.286358, 30.047474, 26.713598> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.919407, 30.098291, 26.562719>,  <40.699238, 30.128782, 26.472191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.919407, 30.098291, 26.562719>,  <41.286358, 30.047474, 26.713598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.919407, 30.098291, 26.562719> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354758, 0.168693, 0.919614,
		0.180462, 0.977447, -0.109685,
		-0.917377, 0.127044, -0.377199,
		40.644196, 30.136404, 26.449560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.010418, 30.690214, 27.031620>,  <41.286358, 30.047474, 26.713598>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.010418, 30.690214, 27.031620> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.682240, 30.487698, 26.925385>,  <40.485332, 30.366188, 26.861643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.682240, 30.487698, 26.925385>,  <41.010418, 30.690214, 27.031620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.682240, 30.487698, 26.925385> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430658, 0.241738, 0.869538,
		-0.376036, 0.827788, -0.416370,
		-0.820446, -0.506290, -0.265591,
		40.436108, 30.335810, 26.845707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.473709, 31.200968, 27.061035>,  <41.010418, 30.690214, 27.031620>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.473709, 31.200968, 27.061035> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.334721, 30.828981, 27.109083>,  <40.251328, 30.605789, 27.137913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.334721, 30.828981, 27.109083>,  <40.473709, 31.200968, 27.061035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.334721, 30.828981, 27.109083> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335890, 0.243042, 0.910004,
		-0.875468, 0.275849, -0.396816,
		-0.347467, -0.929967, 0.120121,
		40.230480, 30.549992, 27.145119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.820309, 31.403385, 27.147560>,  <40.473709, 31.200968, 27.061035>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.820309, 31.403385, 27.147560> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.861164, 31.039083, 27.307610>,  <39.885677, 30.820503, 27.403639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.861164, 31.039083, 27.307610>,  <39.820309, 31.403385, 27.147560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.861164, 31.039083, 27.307610> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634066, 0.250325, 0.731641,
		-0.766505, -0.328430, -0.551910,
		0.102136, -0.910753, 0.400122,
		39.891804, 30.765858, 27.427647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.224827, 31.304920, 27.444456>,  <39.820309, 31.403385, 27.147560>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.224827, 31.304920, 27.444456> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.465206, 31.025251, 27.599386>,  <39.609432, 30.857450, 27.692345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.465206, 31.025251, 27.599386>,  <39.224827, 31.304920, 27.444456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.465206, 31.025251, 27.599386> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467206, 0.085912, 0.879965,
		-0.648522, -0.709774, -0.275028,
		0.600948, -0.699171, 0.387327,
		39.645489, 30.815500, 27.715584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698017, 31.066072, 27.840939>,  <39.224827, 31.304920, 27.444456>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.698017, 31.066072, 27.840939> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.028263, 30.910782, 28.004717>,  <39.226410, 30.817608, 28.102983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.028263, 30.910782, 28.004717>,  <38.698017, 31.066072, 27.840939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.028263, 30.910782, 28.004717> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308004, 0.297919, 0.903536,
		-0.472758, -0.872081, 0.126390,
		0.825611, -0.388225, 0.409448,
		39.275948, 30.794313, 28.127552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.017029, 30.612509, 27.896347>,  <38.698017, 31.066072, 27.840939>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.017029, 30.612509, 27.896347> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.633152, 30.691912, 27.816769>,  <37.402824, 30.739553, 27.769022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.633152, 30.691912, 27.816769>,  <38.017029, 30.612509, 27.896347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.633152, 30.691912, 27.816769> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174427, -0.134343, -0.975462,
		-0.220364, -0.970848, 0.094303,
		-0.959695, 0.198508, -0.198947,
		37.345242, 30.751463, 27.757084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.864868, 30.105116, 27.456589>,  <38.017029, 30.612509, 27.896347>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.864868, 30.105116, 27.456589> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.602863, 30.399021, 27.386074>,  <37.445660, 30.575365, 27.343765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.602863, 30.399021, 27.386074>,  <37.864868, 30.105116, 27.456589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.602863, 30.399021, 27.386074> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106175, -0.141488, -0.984229,
		-0.748119, -0.663403, 0.014663,
		-0.655015, 0.734764, -0.176287,
		37.406357, 30.619450, 27.333187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.345531, 29.809551, 26.993608>,  <37.864868, 30.105116, 27.456589>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.345531, 29.809551, 26.993608> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.338661, 30.206619, 26.945763>,  <37.334541, 30.444860, 26.917055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.338661, 30.206619, 26.945763>,  <37.345531, 29.809551, 26.993608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.338661, 30.206619, 26.945763> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095001, -0.120711, -0.988131,
		-0.995329, -0.005604, 0.096378,
		-0.017172, 0.992672, -0.119615,
		37.333511, 30.504421, 26.909878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.811569, 29.905401, 26.607418>,  <37.345531, 29.809551, 26.993608>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.811569, 29.905401, 26.607418> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.037544, 30.233681, 26.573227>,  <37.173130, 30.430649, 26.552713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.037544, 30.233681, 26.573227>,  <36.811569, 29.905401, 26.607418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.037544, 30.233681, 26.573227> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058560, -0.063451, -0.996265,
		-0.823056, 0.567829, 0.012214,
		0.564934, 0.820697, -0.085476,
		37.207024, 30.479889, 26.547585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.529572, 30.208050, 26.035267>,  <36.811569, 29.905401, 26.607418>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.529572, 30.208050, 26.035267> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.887428, 30.385626, 26.055407>,  <37.102142, 30.492170, 26.067490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.887428, 30.385626, 26.055407>,  <36.529572, 30.208050, 26.035267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.887428, 30.385626, 26.055407> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038056, 0.036564, -0.998607,
		-0.445161, 0.895311, 0.015817,
		0.894642, 0.443938, 0.050348,
		37.155819, 30.518806, 26.070511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.459473, 30.793095, 25.573610>,  <36.529572, 30.208050, 26.035267>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.459473, 30.793095, 25.573610> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.853813, 30.750290, 25.625217>,  <37.090416, 30.724607, 25.656181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.853813, 30.750290, 25.625217>,  <36.459473, 30.793095, 25.573610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.853813, 30.750290, 25.625217> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139765, 0.099859, -0.985136,
		0.092535, 0.989231, 0.113402,
		0.985851, -0.107009, 0.129020,
		37.149570, 30.718187, 25.663923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.827419, 31.264799, 25.141068>,  <36.459473, 30.793095, 25.573610>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.827419, 31.264799, 25.141068> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.099884, 30.980160, 25.209948>,  <37.263363, 30.809376, 25.251276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.099884, 30.980160, 25.209948>,  <36.827419, 31.264799, 25.141068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.099884, 30.980160, 25.209948> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233668, -0.011600, -0.972247,
		0.693847, 0.702491, 0.158376,
		0.681158, -0.711598, 0.172198,
		37.304230, 30.766680, 25.261606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.415348, 31.719679, 24.736946>,  <36.827419, 31.264799, 25.141068>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.415348, 31.719679, 24.736946> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.095024, 31.697495, 24.498407>,  <35.902832, 31.684183, 24.355284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.095024, 31.697495, 24.498407>,  <36.415348, 31.719679, 24.736946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.095024, 31.697495, 24.498407> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598781, 0.052542, 0.799188,
		-0.012991, 0.997077, -0.075285,
		-0.800808, -0.055461, -0.596348,
		35.854782, 31.680857, 24.319504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.082729, 32.313091, 24.832993>,  <36.415348, 31.719679, 24.736946>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.082729, 32.313091, 24.832993> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.820686, 32.043533, 24.696344>,  <35.663460, 31.881800, 24.614355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.820686, 32.043533, 24.696344>,  <36.082729, 32.313091, 24.832993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.820686, 32.043533, 24.696344> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630484, 0.238450, 0.738669,
		-0.416322, 0.699295, -0.581088,
		-0.655107, -0.673890, -0.341622,
		35.624153, 31.841366, 24.593857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.426899, 32.678619, 24.848694>,  <36.082729, 32.313091, 24.832993>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.426899, 32.678619, 24.848694> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.331669, 32.290684, 24.827784>,  <35.274532, 32.057922, 24.815237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.331669, 32.290684, 24.827784>,  <35.426899, 32.678619, 24.848694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.331669, 32.290684, 24.827784> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675552, 0.126683, 0.726348,
		-0.697818, 0.208240, -0.685337,
		-0.238075, -0.969839, -0.052275,
		35.260246, 31.999733, 24.812101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.694790, 32.701153, 24.929150>,  <35.426899, 32.678619, 24.848694>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.694790, 32.701153, 24.929150> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.797321, 32.320660, 24.997803>,  <34.858841, 32.092365, 25.038994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.797321, 32.320660, 24.997803>,  <34.694790, 32.701153, 24.929150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.797321, 32.320660, 24.997803> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697292, -0.059006, 0.714354,
		-0.669388, -0.302786, -0.678410,
		0.256327, -0.951230, 0.171632,
		34.874218, 32.035290, 25.049292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.084110, 32.396301, 25.144701>,  <34.694790, 32.701153, 24.929150>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.084110, 32.396301, 25.144701> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.373959, 32.149246, 25.266977>,  <34.547867, 32.001015, 25.340343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.373959, 32.149246, 25.266977>,  <34.084110, 32.396301, 25.144701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.373959, 32.149246, 25.266977> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358329, 0.041222, 0.932685,
		-0.588659, -0.785384, -0.191446,
		0.724624, -0.617634, 0.305691,
		34.591347, 31.963957, 25.358685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.699245, 31.841694, 25.367542>,  <34.084110, 32.396301, 25.144701>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.699245, 31.841694, 25.367542> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.063911, 31.851578, 25.531618>,  <34.282711, 31.857508, 25.630064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.063911, 31.851578, 25.531618>,  <33.699245, 31.841694, 25.367542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.063911, 31.851578, 25.531618> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410860, 0.073608, 0.908722,
		-0.007739, -0.996981, 0.077258,
		0.911665, 0.024710, 0.410189,
		34.337410, 31.858990, 25.654675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.608669, 31.405357, 25.929903>,  <33.699245, 31.841694, 25.367542>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.608669, 31.405357, 25.929903> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.918285, 31.640520, 26.023911>,  <34.104053, 31.781618, 26.080315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.918285, 31.640520, 26.023911>,  <33.608669, 31.405357, 25.929903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.918285, 31.640520, 26.023911> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389967, 0.150255, 0.908487,
		0.498792, -0.794853, 0.345566,
		0.774036, 0.587905, 0.235020,
		34.150497, 31.816891, 26.094418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<39.233425, 34.025604, 21.456575> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.430359, 33.757767, 21.679018>,  <39.548519, 33.597065, 21.812483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.430359, 33.757767, 21.679018>,  <39.233425, 34.025604, 21.456575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.430359, 33.757767, 21.679018> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206850, 0.530590, 0.822002,
		-0.845472, -0.519728, 0.122720,
		0.492331, -0.669595, 0.556105,
		39.578060, 33.556889, 21.845850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.895020, 34.023499, 22.032236>,  <39.233425, 34.025604, 21.456575>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.895020, 34.023499, 22.032236> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.268387, 33.900967, 22.106955>,  <39.492409, 33.827450, 22.151785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.268387, 33.900967, 22.106955>,  <38.895020, 34.023499, 22.032236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.268387, 33.900967, 22.106955> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064055, 0.369986, 0.926826,
		-0.353023, -0.877083, 0.325730,
		0.933419, -0.306326, 0.186795,
		39.548412, 33.809071, 22.162992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.891712, 33.721142, 22.798138>,  <38.895020, 34.023499, 22.032236>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.891712, 33.721142, 22.798138> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.245243, 33.866116, 22.679819>,  <39.457363, 33.953098, 22.608828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.245243, 33.866116, 22.679819>,  <38.891712, 33.721142, 22.798138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.245243, 33.866116, 22.679819> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106208, 0.460327, 0.881373,
		0.455540, -0.810421, 0.368376,
		0.883857, 0.362376, -0.295771,
		39.510391, 33.974846, 22.591082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.293022, 33.601345, 23.365286>,  <38.891712, 33.721142, 22.798138>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.293022, 33.601345, 23.365286> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.471748, 33.884094, 23.145945>,  <39.578983, 34.053741, 23.014339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.471748, 33.884094, 23.145945>,  <39.293022, 33.601345, 23.365286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.471748, 33.884094, 23.145945> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371633, 0.410899, 0.832497,
		0.813785, -0.575757, -0.079101,
		0.446813, 0.706870, -0.548354,
		39.605793, 34.096157, 22.981438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.055218, 33.726601, 23.608223>,  <39.293022, 33.601345, 23.365286>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.055218, 33.726601, 23.608223> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.908821, 34.050457, 23.424688>,  <39.820984, 34.244770, 23.314568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.908821, 34.050457, 23.424688>,  <40.055218, 33.726601, 23.608223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.908821, 34.050457, 23.424688> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172847, 0.543606, 0.821350,
		0.914426, 0.221298, -0.338899,
		-0.365991, 0.809642, -0.458836,
		39.799023, 34.293350, 23.287037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.490417, 34.335785, 23.790051>,  <40.055218, 33.726601, 23.608223>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.490417, 34.335785, 23.790051> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.138271, 34.476028, 23.662289>,  <39.926983, 34.560177, 23.585632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.138271, 34.476028, 23.662289>,  <40.490417, 34.335785, 23.790051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.138271, 34.476028, 23.662289> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026040, 0.708158, 0.705574,
		0.473572, 0.612849, -0.632571,
		-0.880370, 0.350612, -0.319405,
		39.874161, 34.581211, 23.566467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.475704, 35.108997, 23.791302>,  <40.490417, 34.335785, 23.790051>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.475704, 35.108997, 23.791302> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.082291, 35.036713, 23.790934>,  <39.846241, 34.993343, 23.790712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.082291, 35.036713, 23.790934>,  <40.475704, 35.108997, 23.791302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.082291, 35.036713, 23.790934> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123462, 0.668215, 0.733653,
		-0.131967, 0.721687, -0.679524,
		-0.983536, -0.180713, -0.000918,
		39.787231, 34.982498, 23.790659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.220417, 35.712273, 23.735569>,  <40.475704, 35.108997, 23.791302>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.220417, 35.712273, 23.735569> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.916687, 35.497711, 23.882919>,  <39.734451, 35.368973, 23.971329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.916687, 35.497711, 23.882919>,  <40.220417, 35.712273, 23.735569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.916687, 35.497711, 23.882919> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281416, 0.781125, 0.557358,
		-0.586717, 0.319548, -0.744078,
		-0.759321, -0.536407, 0.368373,
		39.688892, 35.336788, 23.993431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.545860, 36.212208, 23.650219>,  <40.220417, 35.712273, 23.735569>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.545860, 36.212208, 23.650219> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.467861, 35.921928, 23.914141>,  <39.421062, 35.747761, 24.072493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.467861, 35.921928, 23.914141>,  <39.545860, 36.212208, 23.650219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.467861, 35.921928, 23.914141> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599064, 0.620775, 0.505728,
		-0.776595, -0.296650, -0.555787,
		-0.194994, -0.725698, 0.659803,
		39.409363, 35.704220, 24.112082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.949020, 36.343002, 23.857279>,  <39.545860, 36.212208, 23.650219>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.949020, 36.343002, 23.857279> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.009567, 36.076069, 24.148966>,  <39.045895, 35.915909, 24.323978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.009567, 36.076069, 24.148966>,  <38.949020, 36.343002, 23.857279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.009567, 36.076069, 24.148966> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768081, 0.384957, 0.511722,
		-0.622205, -0.637558, -0.454292,
		0.151370, -0.667329, 0.729218,
		39.054977, 35.875870, 24.367731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.297100, 36.088940, 24.102898>,  <38.949020, 36.343002, 23.857279>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.297100, 36.088940, 24.102898> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.540092, 36.024151, 24.413958>,  <38.685886, 35.985279, 24.600594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.540092, 36.024151, 24.413958>,  <38.297100, 36.088940, 24.102898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.540092, 36.024151, 24.413958> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649951, 0.461459, 0.603838,
		-0.456658, -0.872250, 0.175051,
		0.607476, -0.161973, 0.777648,
		38.722336, 35.975559, 24.647253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.834560, 36.110157, 24.715603>,  <38.297100, 36.088940, 24.102898>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.834560, 36.110157, 24.715603> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.190281, 36.145668, 24.895052>,  <38.403713, 36.166973, 25.002722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.190281, 36.145668, 24.895052>,  <37.834560, 36.110157, 24.715603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.190281, 36.145668, 24.895052> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448192, 0.364219, 0.816375,
		-0.090926, -0.927073, 0.363687,
		0.889301, 0.088772, 0.448623,
		38.457073, 36.172298, 25.029638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.578796, 35.425591, 24.883596>,  <37.834560, 36.110157, 24.715603>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.578796, 35.425591, 24.883596> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.188587, 35.338539, 24.896164>,  <36.954460, 35.286308, 24.903704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.188587, 35.338539, 24.896164>,  <37.578796, 35.425591, 24.883596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.188587, 35.338539, 24.896164> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114017, -0.622830, -0.774005,
		0.188012, -0.751480, 0.632400,
		-0.975526, -0.217627, 0.031418,
		36.895927, 35.273251, 24.905590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.557064, 34.725338, 24.843248>,  <37.578796, 35.425591, 24.883596>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.557064, 34.725338, 24.843248> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.222530, 34.892151, 24.700911>,  <37.021809, 34.992237, 24.615507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.222530, 34.892151, 24.700911>,  <37.557064, 34.725338, 24.843248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.222530, 34.892151, 24.700911> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049313, -0.589237, -0.806454,
		-0.545991, -0.692017, 0.472236,
		-0.836339, 0.417029, -0.355843,
		36.971630, 35.017262, 24.594156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.244335, 34.161961, 24.492416>,  <37.557064, 34.725338, 24.843248>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.244335, 34.161961, 24.492416> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.048569, 34.480511, 24.350288>,  <36.931110, 34.671642, 24.265011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.048569, 34.480511, 24.350288>,  <37.244335, 34.161961, 24.492416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.048569, 34.480511, 24.350288> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076356, -0.445024, -0.892258,
		-0.868701, -0.409554, 0.278610,
		-0.489416, 0.796379, -0.355321,
		36.901745, 34.719425, 24.243692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.736595, 33.924091, 24.190416>,  <37.244335, 34.161961, 24.492416>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.736595, 33.924091, 24.190416> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.761471, 34.285271, 24.020323>,  <36.776394, 34.501976, 23.918266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.761471, 34.285271, 24.020323>,  <36.736595, 33.924091, 24.190416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.761471, 34.285271, 24.020323> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148738, -0.412915, -0.898542,
		-0.986919, 0.119124, 0.108625,
		0.062185, 0.902945, -0.425232,
		36.780125, 34.556156, 23.892754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.086422, 33.994919, 23.879429>,  <36.736595, 33.924091, 24.190416>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.086422, 33.994919, 23.879429> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.367172, 34.220718, 23.705666>,  <36.535622, 34.356197, 23.601408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.367172, 34.220718, 23.705666>,  <36.086422, 33.994919, 23.879429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.367172, 34.220718, 23.705666> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221704, -0.406443, -0.886370,
		-0.676920, 0.718429, -0.160119,
		0.701874, 0.564503, -0.434408,
		36.577736, 34.390068, 23.575344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.819031, 34.183167, 23.222815>,  <36.086422, 33.994919, 23.879429>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.819031, 34.183167, 23.222815> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.201023, 34.282959, 23.158598>,  <36.430218, 34.342834, 23.120068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.201023, 34.282959, 23.158598>,  <35.819031, 34.183167, 23.222815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.201023, 34.282959, 23.158598> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119357, -0.172325, -0.977782,
		-0.271608, 0.952923, -0.134789,
		0.954978, 0.249486, -0.160542,
		36.487518, 34.357803, 23.110435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.780613, 34.330849, 22.564022>,  <35.819031, 34.183167, 23.222815>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.780613, 34.330849, 22.564022> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.176178, 34.309299, 22.619385>,  <36.413517, 34.296371, 22.652601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.176178, 34.309299, 22.619385>,  <35.780613, 34.330849, 22.564022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.176178, 34.309299, 22.619385> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114798, -0.313990, -0.942460,
		0.094231, 0.947896, -0.304323,
		0.988909, -0.053873, 0.138405,
		36.472851, 34.293137, 22.660906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.056419, 34.506424, 21.957996>,  <35.780613, 34.330849, 22.564022>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.056419, 34.506424, 21.957996> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.359715, 34.301991, 22.119919>,  <36.541691, 34.179333, 22.217072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.359715, 34.301991, 22.119919>,  <36.056419, 34.506424, 21.957996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.359715, 34.301991, 22.119919> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269526, -0.319635, -0.908399,
		0.593655, 0.797891, -0.104611,
		0.758241, -0.511080, 0.404806,
		36.587189, 34.148666, 22.241360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.683968, 34.696613, 21.582348>,  <36.056419, 34.506424, 21.957996>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.683968, 34.696613, 21.582348> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.732716, 34.335724, 21.747828>,  <36.761963, 34.119190, 21.847115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.732716, 34.335724, 21.747828>,  <36.683968, 34.696613, 21.582348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.732716, 34.335724, 21.747828> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203286, -0.385282, -0.900129,
		0.971506, 0.193795, 0.136456,
		0.121867, -0.902220, 0.413699,
		36.769276, 34.065056, 21.871937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.292599, 34.468422, 21.265478>,  <36.683968, 34.696613, 21.582348>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.292599, 34.468422, 21.265478> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.104488, 34.141258, 21.398060>,  <36.991623, 33.944958, 21.477610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.104488, 34.141258, 21.398060>,  <37.292599, 34.468422, 21.265478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.104488, 34.141258, 21.398060> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232157, -0.477003, -0.847686,
		0.851439, -0.321693, 0.414205,
		-0.470272, -0.817913, 0.331456,
		36.963406, 33.895885, 21.497496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.621777, 33.891972, 20.929161>,  <37.292599, 34.468422, 21.265478>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.621777, 33.891972, 20.929161> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.272598, 33.748627, 21.061554>,  <37.063091, 33.662621, 21.140989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.272598, 33.748627, 21.061554>,  <37.621777, 33.891972, 20.929161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.272598, 33.748627, 21.061554> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068668, -0.581461, -0.810671,
		0.482966, -0.730397, 0.482974,
		-0.872942, -0.358362, 0.330981,
		37.010715, 33.641117, 21.160849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.631207, 33.115482, 20.809553>,  <37.621777, 33.891972, 20.929161>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.631207, 33.115482, 20.809553> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.246578, 33.224911, 20.818813>,  <37.015800, 33.290569, 20.824369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.246578, 33.224911, 20.818813>,  <37.631207, 33.115482, 20.809553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.246578, 33.224911, 20.818813> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172665, -0.537033, -0.825701,
		-0.213456, -0.797969, 0.563632,
		-0.961574, 0.273570, 0.023148,
		36.958107, 33.306980, 20.825758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.206345, 32.582294, 20.504433>,  <37.631207, 33.115482, 20.809553>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.206345, 32.582294, 20.504433> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.963013, 32.896057, 20.456024>,  <36.817013, 33.084316, 20.426979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.963013, 32.896057, 20.456024>,  <37.206345, 32.582294, 20.504433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.963013, 32.896057, 20.456024> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328172, -0.387422, -0.861515,
		-0.722663, -0.484366, 0.493099,
		-0.608326, 0.784407, -0.121020,
		36.780514, 33.131378, 20.419718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.905025, 32.499542, 21.265432>,  <37.206345, 32.582294, 20.504433>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.905025, 32.499542, 21.265432> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.814861, 32.110146, 21.249945>,  <36.760761, 31.876507, 21.240652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.814861, 32.110146, 21.249945>,  <36.905025, 32.499542, 21.265432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.814861, 32.110146, 21.249945> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269825, 0.024192, 0.962605,
		-0.936153, 0.227431, -0.268126,
		-0.225413, -0.973493, -0.038720,
		36.747238, 31.818098, 21.238329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.203136, 32.355083, 21.505917>,  <36.905025, 32.499542, 21.265432>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.203136, 32.355083, 21.505917> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.384155, 32.000069, 21.540522>,  <36.492767, 31.787060, 21.561285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.384155, 32.000069, 21.540522>,  <36.203136, 32.355083, 21.505917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.384155, 32.000069, 21.540522> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498719, -0.171472, 0.849633,
		-0.739246, -0.427641, -0.520230,
		0.452543, -0.887536, 0.086512,
		36.519917, 31.733809, 21.566475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.715897, 31.888388, 21.764160>,  <36.203136, 32.355083, 21.505917>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.715897, 31.888388, 21.764160> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.066257, 31.714512, 21.847910>,  <36.276474, 31.610186, 21.898161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.066257, 31.714512, 21.847910>,  <35.715897, 31.888388, 21.764160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.066257, 31.714512, 21.847910> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359140, -0.297600, 0.884564,
		-0.322206, -0.849985, -0.416784,
		0.875900, -0.434696, 0.209375,
		36.329029, 31.584105, 21.910723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.570835, 31.287096, 22.115751>,  <35.715897, 31.888388, 21.764160>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.570835, 31.287096, 22.115751> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.944626, 31.389711, 22.214504>,  <36.168900, 31.451281, 22.273756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.944626, 31.389711, 22.214504>,  <35.570835, 31.287096, 22.115751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.944626, 31.389711, 22.214504> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196170, -0.207677, 0.958325,
		0.297119, -0.943959, -0.143743,
		0.934472, 0.256538, 0.246881,
		36.224968, 31.466673, 22.288568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.740532, 30.715868, 22.522400>,  <35.570835, 31.287096, 22.115751>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.740532, 30.715868, 22.522400> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.011993, 31.000128, 22.596592>,  <36.174870, 31.170685, 22.641108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.011993, 31.000128, 22.596592>,  <35.740532, 30.715868, 22.522400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.011993, 31.000128, 22.596592> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252825, -0.011063, 0.967449,
		0.689570, -0.703458, 0.172162,
		0.678655, 0.710650, 0.185481,
		36.215591, 31.213324, 22.652237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.032700, 30.554575, 23.158360>,  <35.740532, 30.715868, 22.522400>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.032700, 30.554575, 23.158360> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.121742, 30.944176, 23.141537>,  <36.175167, 31.177937, 23.131443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.121742, 30.944176, 23.141537>,  <36.032700, 30.554575, 23.158360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.121742, 30.944176, 23.141537> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301877, 0.109884, 0.946993,
		0.926993, -0.198115, 0.318489,
		0.222610, 0.974000, -0.042056,
		36.188526, 31.236376, 23.128920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.277180, 30.681570, 23.802164>,  <36.032700, 30.554575, 23.158360>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.277180, 30.681570, 23.802164> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.186550, 31.043299, 23.657463>,  <36.132172, 31.260336, 23.570642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.186550, 31.043299, 23.657463>,  <36.277180, 30.681570, 23.802164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.186550, 31.043299, 23.657463> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310738, 0.284889, 0.906797,
		0.923095, 0.317870, 0.216457,
		-0.226577, 0.904321, -0.361753,
		36.118576, 31.314594, 23.548937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.694904, 31.252386, 24.218620>,  <36.277180, 30.681570, 23.802164>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.694904, 31.252386, 24.218620> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.351513, 31.368174, 24.049284>,  <36.145477, 31.437645, 23.947681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.351513, 31.368174, 24.049284>,  <36.694904, 31.252386, 24.218620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.351513, 31.368174, 24.049284> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382652, 0.188050, 0.904552,
		0.341447, 0.938534, -0.050672,
		-0.858482, 0.289467, -0.423341,
		36.093967, 31.455013, 23.922281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.359081, 31.364277, 24.528450>,  <36.694904, 31.252386, 24.218620>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.359081, 31.364277, 24.528450> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.494225, 31.029274, 24.700233>,  <37.575310, 30.828272, 24.803305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.494225, 31.029274, 24.700233>,  <37.359081, 31.364277, 24.528450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.494225, 31.029274, 24.700233> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231711, -0.368235, -0.900396,
		0.912229, 0.403716, 0.069649,
		0.337857, -0.837506, 0.429461,
		37.595581, 30.778023, 24.829071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.022678, 31.231453, 24.261354>,  <37.359081, 31.364277, 24.528450>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.022678, 31.231453, 24.261354> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.888691, 30.882397, 24.403505>,  <37.808300, 30.672962, 24.488796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.888691, 30.882397, 24.403505>,  <38.022678, 31.231453, 24.261354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.888691, 30.882397, 24.403505> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377491, -0.469862, -0.797953,
		0.863305, -0.133138, 0.486804,
		-0.334969, -0.872642, 0.355376,
		37.788200, 30.620604, 24.510118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.570740, 30.799980, 24.307985>,  <38.022678, 31.231453, 24.261354>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.570740, 30.799980, 24.307985> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.262642, 30.550129, 24.256514>,  <38.077782, 30.400217, 24.225630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.262642, 30.550129, 24.256514>,  <38.570740, 30.799980, 24.307985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.262642, 30.550129, 24.256514> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514068, -0.488689, -0.704923,
		0.377431, -0.609115, 0.697514,
		-0.770246, -0.624630, -0.128680,
		38.031567, 30.362740, 24.217909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.914330, 30.212984, 24.283276>,  <38.570740, 30.799980, 24.307985>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.914330, 30.212984, 24.283276> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.546158, 30.143942, 24.142982>,  <38.325253, 30.102516, 24.058807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.546158, 30.143942, 24.142982>,  <38.914330, 30.212984, 24.283276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.546158, 30.143942, 24.142982> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377198, -0.627660, -0.681003,
		-0.102596, -0.759112, 0.642825,
		-0.920432, -0.172604, -0.350731,
		38.270027, 30.092161, 24.037764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.066250, 29.549452, 24.029524>,  <38.914330, 30.212984, 24.283276>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.066250, 29.549452, 24.029524> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.724152, 29.663317, 23.856312>,  <38.518890, 29.731636, 23.752384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.724152, 29.663317, 23.856312>,  <39.066250, 29.549452, 24.029524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.724152, 29.663317, 23.856312> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312746, -0.382762, -0.869300,
		-0.413205, -0.878897, 0.238330,
		-0.855249, 0.284662, -0.433031,
		38.467575, 29.748714, 23.726402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.712757, 28.955421, 23.743940>,  <39.066250, 29.549452, 24.029524>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.712757, 28.955421, 23.743940> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.568325, 29.261999, 23.531456>,  <38.481667, 29.445946, 23.403965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.568325, 29.261999, 23.531456>,  <38.712757, 28.955421, 23.743940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.568325, 29.261999, 23.531456> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352676, -0.415097, -0.838638,
		-0.863273, -0.490162, -0.120423,
		-0.361082, 0.766443, -0.531210,
		38.459999, 29.491932, 23.372093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.431675, 28.686861, 23.208670>,  <38.712757, 28.955421, 23.743940>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.431675, 28.686861, 23.208670> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.511272, 29.055710, 23.075947>,  <38.559032, 29.277020, 22.996313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.511272, 29.055710, 23.075947>,  <38.431675, 28.686861, 23.208670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.511272, 29.055710, 23.075947> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331362, -0.381946, -0.862738,
		-0.922280, 0.061731, -0.381561,
		0.198994, 0.922121, -0.331806,
		38.570969, 29.332346, 22.976404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.080074, 28.730051, 22.536667>,  <38.431675, 28.686861, 23.208670>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.080074, 28.730051, 22.536667> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.341640, 29.032501, 22.526329>,  <38.498581, 29.213970, 22.520126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.341640, 29.032501, 22.526329>,  <38.080074, 28.730051, 22.536667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.341640, 29.032501, 22.526329> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352343, -0.334591, -0.874016,
		-0.669511, 0.562429, -0.485210,
		0.653918, 0.756124, -0.025844,
		38.537815, 29.259338, 22.518576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.971874, 28.994675, 21.915482>,  <38.080074, 28.730051, 22.536667>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.971874, 28.994675, 21.915482> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.346348, 29.085409, 22.022890>,  <38.571033, 29.139851, 22.087336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.346348, 29.085409, 22.022890>,  <37.971874, 28.994675, 21.915482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.346348, 29.085409, 22.022890> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325198, -0.268924, -0.906602,
		-0.133438, 0.936069, -0.325529,
		0.936184, 0.226836, 0.268523,
		38.627205, 29.153460, 22.103447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.378639, 37.057491, 34.877155> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.704891, 36.880451, 35.026207>,  <35.900642, 36.774227, 35.115639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.704891, 36.880451, 35.026207>,  <35.378639, 37.057491, 34.877155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.704891, 36.880451, 35.026207> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191038, -0.813945, -0.548633,
		0.546123, 0.376296, -0.748432,
		0.815631, -0.442600, 0.372628,
		35.949581, 36.747673, 35.137997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.746693, 36.867165, 34.349308>,  <35.378639, 37.057491, 34.877155>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.746693, 36.867165, 34.349308> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.871792, 36.612999, 34.631706>,  <35.946850, 36.460499, 34.801147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.871792, 36.612999, 34.631706>,  <35.746693, 36.867165, 34.349308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.871792, 36.612999, 34.631706> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167687, -0.768547, -0.617428,
		0.934918, 0.074711, -0.346910,
		0.312745, -0.635417, 0.706000,
		35.965614, 36.422375, 34.843506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315620, 36.494953, 33.986538>,  <35.746693, 36.867165, 34.349308>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.315620, 36.494953, 33.986538> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.169262, 36.279823, 34.290344>,  <36.081448, 36.150745, 34.472630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.169262, 36.279823, 34.290344>,  <36.315620, 36.494953, 33.986538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.169262, 36.279823, 34.290344> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011366, -0.813465, -0.581502,
		0.930588, -0.221400, 0.291527,
		-0.365891, -0.537825, 0.759518,
		36.059494, 36.118477, 34.518200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436089, 35.877460, 33.651134>,  <36.315620, 36.494953, 33.986538>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.436089, 35.877460, 33.651134> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.236233, 35.798962, 33.988617>,  <36.116318, 35.751862, 34.191109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.236233, 35.798962, 33.988617>,  <36.436089, 35.877460, 33.651134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.236233, 35.798962, 33.988617> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308700, -0.869711, -0.385107,
		0.809361, -0.452867, 0.373959,
		-0.499639, -0.196250, 0.843710,
		36.086342, 35.740086, 34.241730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656307, 35.236038, 33.941402>,  <36.436089, 35.877460, 33.651134>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.656307, 35.236038, 33.941402> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.281258, 35.327545, 34.046112>,  <36.056229, 35.382450, 34.108936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.281258, 35.327545, 34.046112>,  <36.656307, 35.236038, 33.941402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.281258, 35.327545, 34.046112> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292119, -0.926688, -0.236465,
		0.188486, -0.298184, 0.935713,
		-0.937624, 0.228769, 0.261773,
		35.999969, 35.396175, 34.124645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.428711, 34.569950, 34.190277>,  <36.656307, 35.236038, 33.941402>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.428711, 34.569950, 34.190277> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.089565, 34.773262, 34.129906>,  <35.886078, 34.895248, 34.093685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.089565, 34.773262, 34.129906>,  <36.428711, 34.569950, 34.190277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.089565, 34.773262, 34.129906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402206, -0.802038, -0.441549,
		-0.345478, -0.313671, 0.884452,
		-0.847865, 0.508278, -0.150926,
		35.835205, 34.925747, 34.084629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.908276, 34.197620, 34.531265>,  <36.428711, 34.569950, 34.190277>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.908276, 34.197620, 34.531265> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.737968, 34.430317, 34.254047>,  <35.635784, 34.569935, 34.087719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.737968, 34.430317, 34.254047>,  <35.908276, 34.197620, 34.531265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.737968, 34.430317, 34.254047> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442196, -0.802012, -0.401546,
		-0.789421, 0.135495, 0.598711,
		-0.425766, 0.581737, -0.693040,
		35.610237, 34.604839, 34.046135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.339008, 33.832844, 34.404099>,  <35.908276, 34.197620, 34.531265>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.339008, 33.832844, 34.404099> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.334648, 34.083183, 34.092152>,  <35.332031, 34.233387, 33.904984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.334648, 34.083183, 34.092152>,  <35.339008, 33.832844, 34.404099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.334648, 34.083183, 34.092152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451848, -0.698831, -0.554499,
		-0.892028, 0.346339, 0.290404,
		-0.010899, 0.625847, -0.779870,
		35.331379, 34.270939, 33.858192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.659821, 33.687542, 34.046600>,  <35.339008, 33.832844, 34.404099>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.659821, 33.687542, 34.046600> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.891647, 33.853813, 33.766224>,  <35.030743, 33.953575, 33.598000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.891647, 33.853813, 33.766224>,  <34.659821, 33.687542, 34.046600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.891647, 33.853813, 33.766224> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324310, -0.671436, -0.666330,
		-0.747614, 0.613504, -0.254334,
		0.579566, 0.415675, -0.700941,
		35.065517, 33.978516, 33.555943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.198128, 33.664803, 33.503944>,  <34.659821, 33.687542, 34.046600>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.198128, 33.664803, 33.503944> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.563511, 33.734501, 33.356846>,  <34.782742, 33.776318, 33.268585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.563511, 33.734501, 33.356846>,  <34.198128, 33.664803, 33.503944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563511, 33.734501, 33.356846> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231914, -0.519683, -0.822281,
		-0.334389, 0.836403, -0.434298,
		0.913455, 0.174242, -0.367750,
		34.837547, 33.786774, 33.246521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.136147, 33.983593, 32.860199>,  <34.198128, 33.664803, 33.503944>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.136147, 33.983593, 32.860199> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.473843, 33.770294, 32.881748>,  <34.676460, 33.642315, 32.894680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.473843, 33.770294, 32.881748>,  <34.136147, 33.983593, 32.860199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.473843, 33.770294, 32.881748> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250181, -0.480988, -0.840274,
		0.473987, 0.695916, -0.539479,
		0.844243, -0.533246, 0.053877,
		34.727116, 33.610321, 32.897911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.476757, 34.040367, 32.153214>,  <34.136147, 33.983593, 32.860199>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.476757, 34.040367, 32.153214> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.635063, 33.722137, 32.336704>,  <34.730045, 33.531200, 32.446800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.635063, 33.722137, 32.336704>,  <34.476757, 34.040367, 32.153214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.635063, 33.722137, 32.336704> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152495, -0.549510, -0.821452,
		0.905602, 0.255150, -0.338799,
		0.395767, -0.795574, 0.458728,
		34.753792, 33.483467, 32.474323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.753098, 34.097046, 31.866236>,  <34.476757, 34.040367, 32.153214>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.753098, 34.097046, 31.866236> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.417297, 33.892639, 31.792377>,  <33.215816, 33.769993, 31.748062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.417297, 33.892639, 31.792377>,  <33.753098, 34.097046, 31.866236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.417297, 33.892639, 31.792377> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474566, 0.524095, 0.707185,
		-0.264614, 0.681310, -0.682492,
		-0.839504, -0.511019, -0.184643,
		33.165447, 33.739334, 31.736984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.250572, 34.698009, 31.668518>,  <33.753098, 34.097046, 31.866236>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.250572, 34.698009, 31.668518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.053738, 34.373108, 31.793797>,  <32.935638, 34.178165, 31.868963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.053738, 34.373108, 31.793797>,  <33.250572, 34.698009, 31.668518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.053738, 34.373108, 31.793797> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457272, 0.547310, 0.700967,
		-0.740779, 0.201721, -0.640746,
		-0.492086, -0.812257, 0.313194,
		32.906113, 34.129433, 31.887754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.501339, 34.930172, 31.801342>,  <33.250572, 34.698009, 31.668518>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.501339, 34.930172, 31.801342> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.495659, 34.582382, 31.998854>,  <32.492252, 34.373711, 32.117359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.495659, 34.582382, 31.998854>,  <32.501339, 34.930172, 31.801342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.495659, 34.582382, 31.998854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405969, 0.456308, 0.791816,
		-0.913777, -0.189214, -0.359459,
		-0.014201, -0.869472, 0.493778,
		32.491398, 34.321541, 32.146988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.882692, 34.736294, 31.950233>,  <32.501339, 34.930172, 31.801342>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.882692, 34.736294, 31.950233> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.081295, 34.528072, 32.228085>,  <32.200459, 34.403141, 32.394794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.081295, 34.528072, 32.228085>,  <31.882692, 34.736294, 31.950233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.081295, 34.528072, 32.228085> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585796, 0.389596, 0.710674,
		-0.640565, -0.759766, -0.111499,
		0.496507, -0.520549, 0.694629,
		32.230247, 34.371906, 32.436474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.375746, 34.358021, 32.366814>,  <31.882692, 34.736294, 31.950233>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.375746, 34.358021, 32.366814> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.699619, 34.424435, 32.591969>,  <31.893944, 34.464283, 32.727062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.699619, 34.424435, 32.591969>,  <31.375746, 34.358021, 32.366814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.699619, 34.424435, 32.591969> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542516, 0.577528, 0.610031,
		-0.223800, -0.799309, 0.557690,
		0.809685, 0.166031, 0.562889,
		31.942524, 34.474243, 32.760834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.109320, 34.526157, 33.048023>,  <31.375746, 34.358021, 32.366814>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.109320, 34.526157, 33.048023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.491579, 34.633545, 33.096458>,  <31.720934, 34.697979, 33.125519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.491579, 34.633545, 33.096458>,  <31.109320, 34.526157, 33.048023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.491579, 34.633545, 33.096458> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259182, 0.571369, 0.778692,
		0.139873, -0.775538, 0.615610,
		0.955647, 0.268473, 0.121087,
		31.778273, 34.714088, 33.132786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.217670, 34.602257, 33.713268>,  <31.109320, 34.526157, 33.048023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.217670, 34.602257, 33.713268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.543283, 34.804928, 33.599682>,  <31.738651, 34.926529, 33.531532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.543283, 34.804928, 33.599682>,  <31.217670, 34.602257, 33.713268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.543283, 34.804928, 33.599682> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092292, 0.595524, 0.798019,
		0.573438, -0.623407, 0.531538,
		0.814033, 0.506671, -0.283961,
		31.787493, 34.956928, 33.514492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.700668, 34.554760, 34.268253>,  <31.217670, 34.602257, 33.713268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.700668, 34.554760, 34.268253> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.805592, 34.867249, 34.041664>,  <31.868546, 35.054741, 33.905712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.805592, 34.867249, 34.041664>,  <31.700668, 34.554760, 34.268253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.805592, 34.867249, 34.041664> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079838, 0.602581, 0.794055,
		0.961676, -0.163061, 0.220433,
		0.262308, 0.781222, -0.566469,
		31.884285, 35.101616, 33.871723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.026150, 35.010212, 34.761944>,  <31.700668, 34.554760, 34.268253>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.026150, 35.010212, 34.761944> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.965393, 35.255737, 34.452065>,  <31.928940, 35.403053, 34.266136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.965393, 35.255737, 34.452065>,  <32.026150, 35.010212, 34.761944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.965393, 35.255737, 34.452065> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024178, 0.785868, 0.617921,
		0.988101, 0.075127, -0.134208,
		-0.151892, 0.613813, -0.774701,
		31.919825, 35.439880, 34.219654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.538017, 35.437519, 34.804585>,  <32.026150, 35.010212, 34.761944>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.538017, 35.437519, 34.804585> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.243683, 35.621784, 34.606056>,  <32.067081, 35.732342, 34.486938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.243683, 35.621784, 34.606056>,  <32.538017, 35.437519, 34.804585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.243683, 35.621784, 34.606056> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247932, 0.865332, 0.435580,
		0.630136, 0.197463, -0.750957,
		-0.735839, 0.460661, -0.496319,
		32.022930, 35.759983, 34.457161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.712124, 36.155319, 34.825447>,  <32.538017, 35.437519, 34.804585>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.712124, 36.155319, 34.825447> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.333176, 36.174221, 34.698799>,  <32.105804, 36.185562, 34.622810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.333176, 36.174221, 34.698799>,  <32.712124, 36.155319, 34.825447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.333176, 36.174221, 34.698799> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156233, 0.795013, 0.586128,
		0.279413, 0.604750, -0.745792,
		-0.947375, 0.047254, -0.316619,
		32.048962, 36.188396, 34.603813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.589848, 36.882500, 34.458790>,  <32.712124, 36.155319, 34.825447>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.589848, 36.882500, 34.458790> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.248272, 36.728245, 34.598549>,  <32.043327, 36.635693, 34.682404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.248272, 36.728245, 34.598549>,  <32.589848, 36.882500, 34.458790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.248272, 36.728245, 34.598549> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161755, 0.834870, 0.526143,
		-0.494601, 0.392776, -0.775304,
		-0.853935, -0.385640, 0.349395,
		31.992092, 36.612553, 34.703369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.121403, 37.494160, 34.498814>,  <32.589848, 36.882500, 34.458790>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.121403, 37.494160, 34.498814> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.927525, 37.231701, 34.730175>,  <31.811197, 37.074226, 34.868992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.927525, 37.231701, 34.730175>,  <32.121403, 37.494160, 34.498814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.927525, 37.231701, 34.730175> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091281, 0.695602, 0.712605,
		-0.869907, 0.292599, -0.397048,
		-0.484694, -0.656144, 0.578400,
		31.782116, 37.034859, 34.903694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.502443, 37.750816, 34.756447>,  <32.121403, 37.494160, 34.498814>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.502443, 37.750816, 34.756447> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.574278, 37.457527, 35.018787>,  <31.617378, 37.281555, 35.176189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.574278, 37.457527, 35.018787>,  <31.502443, 37.750816, 34.756447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.574278, 37.457527, 35.018787> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039257, 0.671499, 0.739965,
		-0.982959, -0.107139, 0.149375,
		0.179584, -0.733219, 0.655850,
		31.628153, 37.237560, 35.215542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.088627, 38.216900, 34.666786>,  <31.502443, 37.750816, 34.756447>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.088627, 38.216900, 34.666786> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.045403, 38.612762, 34.629066>,  <32.019466, 38.850281, 34.606434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.045403, 38.612762, 34.629066>,  <32.088627, 38.216900, 34.666786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.045403, 38.612762, 34.629066> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345159, -0.051606, -0.937125,
		-0.932302, -0.133819, -0.336013,
		-0.108065, 0.989661, -0.094301,
		32.012981, 38.909660, 34.600777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.725561, 38.307693, 33.992447>,  <32.088627, 38.216900, 34.666786>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.725561, 38.307693, 33.992447> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.909569, 38.649883, 34.087563>,  <32.019974, 38.855198, 34.144634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.909569, 38.649883, 34.087563>,  <31.725561, 38.307693, 33.992447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.909569, 38.649883, 34.087563> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241619, 0.137097, -0.960638,
		-0.854403, 0.499365, -0.143633,
		0.460017, 0.855476, 0.237792,
		32.047573, 38.906525, 34.158901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.492796, 38.786110, 33.541077>,  <31.725561, 38.307693, 33.992447>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.492796, 38.786110, 33.541077> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.863165, 38.849552, 33.678196>,  <32.085388, 38.887615, 33.760468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.863165, 38.849552, 33.678196>,  <31.492796, 38.786110, 33.541077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.863165, 38.849552, 33.678196> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349510, -0.015695, -0.936801,
		-0.143200, 0.987218, -0.069966,
		0.925925, 0.158603, 0.342795,
		32.140942, 38.897133, 33.781036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.771975, 39.184223, 33.034416>,  <31.492796, 38.786110, 33.541077>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.771975, 39.184223, 33.034416> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.097427, 39.060555, 33.231358>,  <32.292698, 38.986351, 33.349522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.097427, 39.060555, 33.231358>,  <31.771975, 39.184223, 33.034416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.097427, 39.060555, 33.231358> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516137, -0.005652, -0.856487,
		0.267587, 0.950988, 0.154978,
		0.813634, -0.309175, 0.492353,
		32.341518, 38.967800, 33.379063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.300163, 39.640915, 32.792645>,  <31.771975, 39.184223, 33.034416>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.300163, 39.640915, 32.792645> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.476761, 39.311447, 32.935001>,  <32.582718, 39.113766, 33.020416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.476761, 39.311447, 32.935001>,  <32.300163, 39.640915, 32.792645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.476761, 39.311447, 32.935001> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405080, -0.170954, -0.898157,
		0.800622, 0.540695, 0.258175,
		0.441493, -0.823665, 0.355894,
		32.609207, 39.064346, 33.041771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.998951, 39.580635, 32.457142>,  <32.300163, 39.640915, 32.792645>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.998951, 39.580635, 32.457142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.921749, 39.208965, 32.583241>,  <32.875427, 38.985962, 32.658897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.921749, 39.208965, 32.583241>,  <32.998951, 39.580635, 32.457142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.921749, 39.208965, 32.583241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348064, -0.365226, -0.863401,
		0.917387, -0.056918, 0.393905,
		-0.193008, -0.929177, 0.315243,
		32.863846, 38.930214, 32.677814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.592102, 39.248772, 32.268921>,  <32.998951, 39.580635, 32.457142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.592102, 39.248772, 32.268921> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.316483, 38.968933, 32.344578>,  <33.151112, 38.801029, 32.389973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.316483, 38.968933, 32.344578>,  <33.592102, 39.248772, 32.268921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.316483, 38.968933, 32.344578> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304380, -0.516221, -0.800543,
		0.657699, -0.494040, 0.568645,
		-0.689046, -0.699600, 0.189141,
		33.109768, 38.759052, 32.401321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.902451, 38.698917, 32.092602>,  <33.592102, 39.248772, 32.268921>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.902451, 38.698917, 32.092602> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.518833, 38.590149, 32.060848>,  <33.288662, 38.524887, 32.041798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.518833, 38.590149, 32.060848>,  <33.902451, 38.698917, 32.092602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.518833, 38.590149, 32.060848> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207999, -0.485750, -0.848990,
		0.192299, -0.830726, 0.522413,
		-0.959040, -0.271921, -0.079381,
		33.231121, 38.508572, 32.037033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.870605, 37.950775, 32.020603>,  <33.902451, 38.698917, 32.092602>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.870605, 37.950775, 32.020603> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.540836, 38.105061, 31.854925>,  <33.342976, 38.197632, 31.755520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.540836, 38.105061, 31.854925>,  <33.870605, 37.950775, 32.020603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.540836, 38.105061, 31.854925> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283827, -0.351387, -0.892171,
		-0.489667, -0.853082, 0.180214,
		-0.824420, 0.385717, -0.414191,
		33.293510, 38.220776, 31.730667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.638710, 37.415771, 31.645914>,  <33.870605, 37.950775, 32.020603>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.638710, 37.415771, 31.645914> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.440331, 37.724174, 31.486126>,  <33.321304, 37.909218, 31.390253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.440331, 37.724174, 31.486126>,  <33.638710, 37.415771, 31.645914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.440331, 37.724174, 31.486126> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105182, -0.403307, -0.908999,
		-0.861958, -0.492834, 0.118923,
		-0.495949, 0.771011, -0.399472,
		33.291546, 37.955479, 31.366285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.222191, 37.136986, 31.188910>,  <33.638710, 37.415771, 31.645914>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.222191, 37.136986, 31.188910> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.283669, 37.503017, 31.039774>,  <33.320553, 37.722637, 30.950293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.283669, 37.503017, 31.039774>,  <33.222191, 37.136986, 31.188910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.283669, 37.503017, 31.039774> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077553, -0.387329, -0.918674,
		-0.985071, 0.112277, -0.130497,
		0.153692, 0.915079, -0.372839,
		33.329777, 37.777542, 30.927921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.022881, 37.027313, 30.524939>,  <33.222191, 37.136986, 31.188910>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.022881, 37.027313, 30.524939> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.168034, 37.398777, 30.494169>,  <33.255123, 37.621655, 30.475708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.168034, 37.398777, 30.494169>,  <33.022881, 37.027313, 30.524939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.168034, 37.398777, 30.494169> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052093, -0.102636, -0.993354,
		-0.930380, 0.356459, -0.085621,
		0.362878, 0.928657, -0.076921,
		33.276897, 37.677376, 30.471092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.721226, 37.266685, 29.966587>,  <33.022881, 37.027313, 30.524939>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.721226, 37.266685, 29.966587> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.040649, 37.495728, 30.040813>,  <33.232304, 37.633152, 30.085348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.040649, 37.495728, 30.040813>,  <32.721226, 37.266685, 29.966587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.040649, 37.495728, 30.040813> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314762, -0.134474, -0.939596,
		-0.513060, 0.808730, -0.287618,
		0.798557, 0.572601, 0.185565,
		33.280216, 37.667507, 30.096483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.853359, 37.448460, 29.252876>,  <32.721226, 37.266685, 29.966587>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.853359, 37.448460, 29.252876> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.193707, 37.555714, 29.433596>,  <33.397915, 37.620064, 29.542027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.193707, 37.555714, 29.433596>,  <32.853359, 37.448460, 29.252876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.193707, 37.555714, 29.433596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512450, -0.234023, -0.826213,
		-0.115803, 0.934526, -0.336528,
		0.850873, 0.268132, 0.451797,
		33.448967, 37.636154, 29.569136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.202908, 37.840130, 28.712671>,  <32.853359, 37.448460, 29.252876>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.202908, 37.840130, 28.712671> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.492569, 37.736828, 28.968454>,  <33.666367, 37.674847, 29.121925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.492569, 37.736828, 28.968454>,  <33.202908, 37.840130, 28.712671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.492569, 37.736828, 28.968454> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610337, -0.191702, -0.768595,
		0.321079, 0.946866, 0.018801,
		0.724152, -0.258255, 0.639459,
		33.709816, 37.659351, 29.160292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.764572, 38.049229, 28.412136>,  <33.202908, 37.840130, 28.712671>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.764572, 38.049229, 28.412136> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.932632, 37.783283, 28.659178>,  <34.033470, 37.623718, 28.807404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.932632, 37.783283, 28.659178>,  <33.764572, 38.049229, 28.412136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.932632, 37.783283, 28.659178> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574853, -0.331611, -0.748050,
		0.702153, 0.669325, 0.242870,
		0.420150, -0.664860, 0.617605,
		34.058678, 37.583824, 28.844460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.490398, 38.169441, 28.365177>,  <33.764572, 38.049229, 28.412136>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.490398, 38.169441, 28.365177> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.406815, 37.795033, 28.478447>,  <34.356663, 37.570385, 28.546410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.406815, 37.795033, 28.478447>,  <34.490398, 38.169441, 28.365177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.406815, 37.795033, 28.478447> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591891, -0.351563, -0.725305,
		0.778459, 0.016047, 0.627490,
		-0.208964, -0.936027, 0.283176,
		34.344124, 37.514225, 28.563400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.143047, 37.761890, 28.443407>,  <34.490398, 38.169441, 28.365177>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.143047, 37.761890, 28.443407> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.859081, 37.484428, 28.394642>,  <34.688702, 37.317951, 28.365383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.859081, 37.484428, 28.394642>,  <35.143047, 37.761890, 28.443407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.859081, 37.484428, 28.394642> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587922, -0.488372, -0.644857,
		0.387768, -0.529471, 0.754518,
		-0.709918, -0.693652, -0.121913,
		34.646107, 37.276333, 28.358068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.555546, 37.116322, 28.378815>,  <35.143047, 37.761890, 28.443407>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.555546, 37.116322, 28.378815> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.192223, 37.031643, 28.234507>,  <34.974228, 36.980835, 28.147923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.192223, 37.031643, 28.234507>,  <35.555546, 37.116322, 28.378815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.192223, 37.031643, 28.234507> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406377, -0.650990, -0.641147,
		-0.099129, -0.728970, 0.677330,
		-0.908312, -0.211695, -0.360769,
		34.919727, 36.968136, 28.126276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.532650, 36.409626, 28.376678>,  <35.555546, 37.116322, 28.378815>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.532650, 36.409626, 28.376678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.260872, 36.516438, 28.103313>,  <35.097805, 36.580524, 27.939295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.260872, 36.516438, 28.103313>,  <35.532650, 36.409626, 28.376678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.260872, 36.516438, 28.103313> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347746, -0.702978, -0.620399,
		-0.646085, -0.659181, 0.384778,
		-0.679446, 0.267025, -0.683411,
		35.057037, 36.596546, 27.898291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.348232, 35.752831, 28.042326>,  <35.532650, 36.409626, 28.376678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.348232, 35.752831, 28.042326> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.230503, 36.032516, 27.781719>,  <35.159866, 36.200329, 27.625355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.230503, 36.032516, 27.781719>,  <35.348232, 35.752831, 28.042326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.230503, 36.032516, 27.781719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163287, -0.634897, -0.755145,
		-0.941654, -0.328639, 0.072691,
		-0.294321, 0.699215, -0.651516,
		35.142208, 36.242283, 27.586264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.008057, 35.421532, 27.505621>,  <35.348232, 35.752831, 28.042326>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.008057, 35.421532, 27.505621> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.097000, 35.768406, 27.327385>,  <35.150368, 35.976528, 27.220444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.097000, 35.768406, 27.327385>,  <35.008057, 35.421532, 27.505621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.097000, 35.768406, 27.327385> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330415, -0.497014, -0.802374,
		-0.917268, 0.031188, -0.397047,
		0.222362, 0.867182, -0.445590,
		35.163708, 36.028561, 27.193708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.838558, 35.345135, 26.836992>,  <35.008057, 35.421532, 27.505621>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.838558, 35.345135, 26.836992> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.086510, 35.658741, 26.823885>,  <35.235283, 35.846905, 26.816021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.086510, 35.658741, 26.823885>,  <34.838558, 35.345135, 26.836992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.086510, 35.658741, 26.823885> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464275, -0.400108, -0.790166,
		-0.632610, 0.474595, -0.612016,
		0.619881, 0.784011, -0.032770,
		35.272472, 35.893944, 26.814054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.822418, 35.792934, 26.154728>,  <34.838558, 35.345135, 26.836992>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.822418, 35.792934, 26.154728> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.184322, 35.818516, 26.323166>,  <35.401463, 35.833866, 26.424229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.184322, 35.818516, 26.323166>,  <34.822418, 35.792934, 26.154728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.184322, 35.818516, 26.323166> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417579, -0.327941, -0.847397,
		0.083901, 0.942531, -0.323413,
		0.904759, 0.063953, 0.421096,
		35.455750, 35.837704, 26.449495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.177448, 36.181057, 25.673071>,  <34.822418, 35.792934, 26.154728>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.177448, 36.181057, 25.673071> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.454952, 36.012020, 25.906351>,  <35.621452, 35.910599, 26.046318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.454952, 36.012020, 25.906351>,  <35.177448, 36.181057, 25.673071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.454952, 36.012020, 25.906351> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583981, -0.143848, -0.798920,
		0.421506, 0.894834, 0.146987,
		0.693757, -0.422588, 0.583199,
		35.663078, 35.885242, 26.081310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.724243, 36.436829, 25.465700>,  <35.177448, 36.181057, 25.673071>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.724243, 36.436829, 25.465700> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.825451, 36.096626, 25.650145>,  <35.886173, 35.892506, 25.760811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.825451, 36.096626, 25.650145>,  <35.724243, 36.436829, 25.465700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.825451, 36.096626, 25.650145> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713997, -0.157462, -0.682212,
		0.652832, 0.501844, 0.567417,
		0.253017, -0.850505, 0.461112,
		35.901356, 35.841476, 25.788479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.494106, 36.432911, 25.346209>,  <35.724243, 36.436829, 25.465700>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.494106, 36.432911, 25.346209> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.419693, 36.059574, 25.469015>,  <36.375046, 35.835571, 25.542698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.419693, 36.059574, 25.469015>,  <36.494106, 36.432911, 25.346209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.419693, 36.059574, 25.469015> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660641, -0.350116, -0.664058,
		0.727285, 0.079287, 0.681740,
		-0.186037, -0.933345, 0.307014,
		36.363880, 35.779572, 25.561119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.121204, 36.126408, 25.119989>,  <36.494106, 36.432911, 25.346209>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.121204, 36.126408, 25.119989> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.851231, 35.834473, 25.163433>,  <36.689247, 35.659309, 25.189499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.851231, 35.834473, 25.163433>,  <37.121204, 36.126408, 25.119989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.851231, 35.834473, 25.163433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448600, -0.522731, -0.724921,
		0.585851, -0.440551, 0.680216,
		-0.674935, -0.729840, 0.108611,
		36.648750, 35.615520, 25.196016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.679241, 35.816532, 25.461823>,  <37.121204, 36.126408, 25.119989>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.679241, 35.816532, 25.461823> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.005054, 36.048355, 25.451675>,  <38.200542, 36.187450, 25.445587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.005054, 36.048355, 25.451675>,  <37.679241, 35.816532, 25.461823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.005054, 36.048355, 25.451675> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386532, 0.574821, 0.721230,
		0.432576, -0.577663, 0.692230,
		0.814537, 0.579557, -0.025368,
		38.249416, 36.222221, 25.444065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.930267, 35.892586, 26.137518>,  <37.679241, 35.816532, 25.461823>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.930267, 35.892586, 26.137518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.073727, 36.208954, 25.939199>,  <38.159801, 36.398777, 25.820210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.073727, 36.208954, 25.939199>,  <37.930267, 35.892586, 26.137518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.073727, 36.208954, 25.939199> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322212, 0.603375, 0.729464,
		0.876101, -0.101868, 0.471243,
		0.358645, 0.790924, -0.495795,
		38.181320, 36.446232, 25.790461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.446949, 36.252514, 26.544088>,  <37.930267, 35.892586, 26.137518>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.446949, 36.252514, 26.544088> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.359337, 36.546562, 26.287458>,  <38.306770, 36.722992, 26.133480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.359337, 36.546562, 26.287458>,  <38.446949, 36.252514, 26.544088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.359337, 36.546562, 26.287458> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041777, 0.664004, 0.746561,
		0.974822, 0.136720, -0.176151,
		-0.219035, 0.735124, -0.641574,
		38.293625, 36.767097, 26.094986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.843140, 36.820885, 26.725214>,  <38.446949, 36.252514, 26.544088>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.843140, 36.820885, 26.725214> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.531017, 36.967289, 26.522369>,  <38.343742, 37.055130, 26.400663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.531017, 36.967289, 26.522369>,  <38.843140, 36.820885, 26.725214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.531017, 36.967289, 26.522369> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125707, 0.702519, 0.700475,
		0.612633, 0.610332, -0.502170,
		-0.780307, 0.366007, -0.507110,
		38.296925, 37.077091, 26.370237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.874969, 37.534901, 26.925314>,  <38.843140, 36.820885, 26.725214>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.874969, 37.534901, 26.925314> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.513000, 37.476662, 26.765354>,  <38.295818, 37.441719, 26.669378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.513000, 37.476662, 26.765354>,  <38.874969, 37.534901, 26.925314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.513000, 37.476662, 26.765354> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381396, 0.694367, 0.610239,
		0.188824, 0.704738, -0.683879,
		-0.904921, -0.145601, -0.399898,
		38.241524, 37.432980, 26.645386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
