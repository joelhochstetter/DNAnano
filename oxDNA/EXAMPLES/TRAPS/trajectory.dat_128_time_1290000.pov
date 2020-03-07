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
	<35.686096, 53.391129, 50.106464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.941429, 53.097191, 50.014774>,  <36.094627, 52.920830, 49.959759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.941429, 53.097191, 50.014774>,  <35.686096, 53.391129, 50.106464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.941429, 53.097191, 50.014774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177410, 0.430212, -0.885123,
		0.749040, 0.524334, 0.404985,
		0.638329, -0.734841, -0.229224,
		36.132927, 52.876740, 49.946007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.377102, 53.627941, 49.965107>,  <35.686096, 53.391129, 50.106464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.377102, 53.627941, 49.965107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.320221, 53.297798, 49.746540>,  <36.286095, 53.099712, 49.615402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.320221, 53.297798, 49.746540>,  <36.377102, 53.627941, 49.965107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.320221, 53.297798, 49.746540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086964, 0.539471, -0.837501,
		0.986010, -0.166611, -0.004937,
		-0.142200, -0.825355, -0.546413,
		36.277561, 53.050190, 49.582615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.811722, 53.592846, 49.356392>,  <36.377102, 53.627941, 49.965107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.811722, 53.592846, 49.356392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.514389, 53.340965, 49.266113>,  <36.335991, 53.189838, 49.211945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.514389, 53.340965, 49.266113>,  <36.811722, 53.592846, 49.356392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.514389, 53.340965, 49.266113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003452, 0.333786, -0.942642,
		0.668915, -0.701475, -0.245940,
		-0.743331, -0.629698, -0.225697,
		36.291389, 53.152058, 49.198406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.003735, 53.117390, 48.893612>,  <36.811722, 53.592846, 49.356392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.003735, 53.117390, 48.893612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.618778, 53.218426, 48.853600>,  <36.387806, 53.279049, 48.829594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.618778, 53.218426, 48.853600>,  <37.003735, 53.117390, 48.893612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.618778, 53.218426, 48.853600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163521, 0.244539, -0.955752,
		-0.216956, -0.936161, -0.276646,
		-0.962388, 0.252594, -0.100028,
		36.330063, 53.294205, 48.823589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.424313, 52.533627, 48.853642>,  <37.003735, 53.117390, 48.893612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.424313, 52.533627, 48.853642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.024467, 52.544647, 48.851883>,  <36.784561, 52.551258, 48.850830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.024467, 52.544647, 48.851883>,  <37.424313, 52.533627, 48.853642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.024467, 52.544647, 48.851883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012038, -0.567986, -0.822950,
		-0.025167, -0.822577, 0.568097,
		-0.999611, 0.027550, -0.004392,
		36.724583, 52.552914, 48.850567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.063553, 52.604218, 49.139992>,  <37.424313, 52.533627, 48.853642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.063553, 52.604218, 49.139992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.203068, 52.857216, 49.416626>,  <38.286777, 53.009014, 49.582607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.203068, 52.857216, 49.416626>,  <38.063553, 52.604218, 49.139992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.203068, 52.857216, 49.416626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635643, 0.382608, -0.670499,
		-0.688696, 0.673465, -0.268593,
		0.348792, 0.632499, 0.691584,
		38.307705, 53.046967, 49.624100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.177940, 53.331650, 48.899670>,  <38.063553, 52.604218, 49.139992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.177940, 53.331650, 48.899670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.454811, 53.302563, 49.186893>,  <38.620934, 53.285110, 49.359226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.454811, 53.302563, 49.186893>,  <38.177940, 53.331650, 48.899670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.454811, 53.302563, 49.186893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671722, 0.428803, -0.604085,
		-0.263974, 0.900466, 0.345656,
		0.692176, -0.072722, 0.718055,
		38.662464, 53.280746, 49.402309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.113522, 53.854671, 48.489334>,  <38.177940, 53.331650, 48.899670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.113522, 53.854671, 48.489334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.392712, 53.719048, 48.237026>,  <38.560226, 53.637672, 48.085644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.392712, 53.719048, 48.237026>,  <38.113522, 53.854671, 48.489334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.392712, 53.719048, 48.237026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492208, 0.866916, 0.078661,
		0.520151, -0.365371, 0.771976,
		0.697979, -0.339057, -0.630766,
		38.602104, 53.617329, 48.047798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.808777, 54.025616, 48.802822>,  <38.113522, 53.854671, 48.489334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.808777, 54.025616, 48.802822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.794044, 54.007023, 48.403526>,  <38.785206, 53.995865, 48.163948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.794044, 54.007023, 48.403526>,  <38.808777, 54.025616, 48.802822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.794044, 54.007023, 48.403526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463870, 0.883984, -0.058280,
		0.885137, -0.465200, -0.010996,
		-0.036832, -0.046485, -0.998240,
		38.782993, 53.993076, 48.104053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.514153, 54.141823, 48.366081>,  <38.808777, 54.025616, 48.802822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.514153, 54.141823, 48.366081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.199745, 54.242752, 48.140335>,  <39.011101, 54.303310, 48.004887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.199745, 54.242752, 48.140335>,  <39.514153, 54.141823, 48.366081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.199745, 54.242752, 48.140335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486565, 0.815651, -0.312998,
		0.381349, -0.520622, -0.763888,
		-0.786020, 0.252320, -0.564364,
		38.963940, 54.318447, 47.971027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.233761, 53.753731, 48.354076>,  <39.514153, 54.141823, 48.366081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.233761, 53.753731, 48.354076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.397896, 53.542233, 48.056877>,  <40.496376, 53.415333, 47.878555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.397896, 53.542233, 48.056877>,  <40.233761, 53.753731, 48.354076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.397896, 53.542233, 48.056877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255524, 0.715453, -0.650257,
		0.875404, 0.456678, 0.158468,
		0.410335, -0.528746, -0.743003,
		40.520996, 53.383610, 47.833977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.888763, 54.138912, 47.935238>,  <40.233761, 53.753731, 48.354076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.888763, 54.138912, 47.935238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.647583, 53.911552, 47.711319>,  <40.502876, 53.775135, 47.576969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.647583, 53.911552, 47.711319>,  <40.888763, 54.138912, 47.935238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.647583, 53.911552, 47.711319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253628, 0.801864, -0.541006,
		0.756387, -0.184220, -0.627647,
		-0.602952, -0.568399, -0.559796,
		40.466698, 53.741032, 47.543381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.093788, 54.286278, 47.376869>,  <40.888763, 54.138912, 47.935238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.093788, 54.286278, 47.376869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.715862, 54.160019, 47.341789>,  <40.489105, 54.084263, 47.320740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.715862, 54.160019, 47.341789>,  <41.093788, 54.286278, 47.376869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.715862, 54.160019, 47.341789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223898, 0.817587, -0.530492,
		0.239148, -0.481582, -0.843141,
		-0.944816, -0.315644, -0.087699,
		40.432419, 54.065327, 47.315479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.347755, 54.973732, 47.404194>,  <41.093788, 54.286278, 47.376869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.347755, 54.973732, 47.404194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.730129, 54.865639, 47.450089>,  <41.959553, 54.800781, 47.477623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.730129, 54.865639, 47.450089>,  <41.347755, 54.973732, 47.404194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.730129, 54.865639, 47.450089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288010, -0.938980, 0.188059,
		0.056912, -0.212817, -0.975433,
		0.955935, -0.270231, 0.114733,
		42.016911, 54.784569, 47.484509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.911465, 54.986618, 47.928082>,  <41.347755, 54.973732, 47.404194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.911465, 54.986618, 47.928082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.269608, 54.882271, 48.072456>,  <42.484493, 54.819660, 48.159081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.269608, 54.882271, 48.072456>,  <41.911465, 54.986618, 47.928082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.269608, 54.882271, 48.072456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358129, 0.903517, -0.235372,
		-0.264709, 0.340004, 0.902400,
		0.895361, -0.260871, 0.360935,
		42.538216, 54.804008, 48.180737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.206257, 55.613396, 48.303356>,  <41.911465, 54.986618, 47.928082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.206257, 55.613396, 48.303356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.501999, 55.389149, 48.154194>,  <42.679443, 55.254601, 48.064697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.501999, 55.389149, 48.154194>,  <42.206257, 55.613396, 48.303356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.501999, 55.389149, 48.154194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444077, 0.822322, -0.355785,
		0.506110, 0.097451, 0.856945,
		0.739357, -0.560616, -0.372910,
		42.723804, 55.220963, 48.042320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.597008, 56.037727, 47.954117>,  <42.206257, 55.613396, 48.303356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.597008, 56.037727, 47.954117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.821812, 55.721157, 47.857952>,  <42.956692, 55.531216, 47.800255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.821812, 55.721157, 47.857952>,  <42.597008, 56.037727, 47.954117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.821812, 55.721157, 47.857952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370415, 0.500697, -0.782365,
		0.739555, 0.350642, 0.574550,
		0.562006, -0.791424, -0.240410,
		42.990414, 55.483730, 47.785828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.336216, 56.156540, 48.009956>,  <42.597008, 56.037727, 47.954117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.336216, 56.156540, 48.009956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.227684, 55.888859, 47.733246>,  <43.162563, 55.728252, 47.567219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.227684, 55.888859, 47.733246>,  <43.336216, 56.156540, 48.009956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.227684, 55.888859, 47.733246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437715, 0.554315, -0.707912,
		0.857196, -0.494878, 0.142516,
		-0.271331, -0.669201, -0.691772,
		43.146286, 55.688099, 47.525715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.927921, 55.983318, 47.646973>,  <43.336216, 56.156540, 48.009956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.927921, 55.983318, 47.646973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.598167, 55.972904, 47.420799>,  <43.400314, 55.966656, 47.285095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.598167, 55.972904, 47.420799>,  <43.927921, 55.983318, 47.646973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.598167, 55.972904, 47.420799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385040, 0.706416, -0.593903,
		0.414888, -0.707318, -0.572336,
		-0.824386, -0.026031, -0.565429,
		43.350853, 55.965096, 47.251171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.595398, 56.157944, 47.995167>,  <43.927921, 55.983318, 47.646973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.595398, 56.157944, 47.995167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.664597, 55.779469, 48.104565>,  <44.706116, 55.552383, 48.170204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.664597, 55.779469, 48.104565>,  <44.595398, 56.157944, 47.995167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.664597, 55.779469, 48.104565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.920143, -0.056218, 0.387526,
		-0.351298, -0.318690, -0.880355,
		0.172993, -0.946190, 0.273491,
		44.716496, 55.495613, 48.186611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.387218, 56.323212, 48.650997>,  <44.595398, 56.157944, 47.995167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.387218, 56.323212, 48.650997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.639351, 56.017998, 48.593784>,  <44.790630, 55.834869, 48.559456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.639351, 56.017998, 48.593784>,  <44.387218, 56.323212, 48.650997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.639351, 56.017998, 48.593784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757653, 0.564465, 0.327630,
		-0.169254, -0.314887, 0.933916,
		0.630329, -0.763037, -0.143037,
		44.828449, 55.789085, 48.550873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.912849, 56.328274, 49.195343>,  <44.387218, 56.323212, 48.650997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.912849, 56.328274, 49.195343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.088951, 56.112469, 48.908260>,  <45.194614, 55.982986, 48.736012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.088951, 56.112469, 48.908260>,  <44.912849, 56.328274, 49.195343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.088951, 56.112469, 48.908260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879319, 0.420731, 0.223125,
		0.181582, -0.729323, 0.659633,
		0.440258, -0.539512, -0.717704,
		45.221027, 55.950615, 48.692947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.410633, 55.871017, 49.427032>,  <44.912849, 56.328274, 49.195343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.410633, 55.871017, 49.427032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.505898, 55.999554, 49.060421>,  <45.563057, 56.076675, 48.840454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.505898, 55.999554, 49.060421>,  <45.410633, 55.871017, 49.427032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.505898, 55.999554, 49.060421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869390, 0.350124, 0.348674,
		0.432941, -0.879859, -0.195985,
		0.238165, 0.321343, -0.916524,
		45.577347, 56.095955, 48.785465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.118034, 56.037502, 49.686897>,  <45.410633, 55.871017, 49.427032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.118034, 56.037502, 49.686897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.310276, 55.933731, 50.021969>,  <46.425621, 55.871468, 50.223011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.310276, 55.933731, 50.021969>,  <46.118034, 56.037502, 49.686897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.310276, 55.933731, 50.021969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829043, -0.176946, -0.530451,
		0.285839, 0.949414, 0.130036,
		0.480608, -0.259429, 0.837683,
		46.454460, 55.855904, 50.273273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.737503, 56.361927, 49.485603>,  <46.118034, 56.037502, 49.686897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.737503, 56.361927, 49.485603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.810360, 56.107956, 49.785919>,  <46.854076, 55.955574, 49.966110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.810360, 56.107956, 49.785919>,  <46.737503, 56.361927, 49.485603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.810360, 56.107956, 49.785919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926403, -0.145096, -0.347456,
		0.329546, 0.758822, 0.561772,
		0.182146, -0.634930, 0.750791,
		46.865005, 55.917477, 50.011158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.310814, 56.629551, 49.847820>,  <46.737503, 56.361927, 49.485603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.310814, 56.629551, 49.847820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.269222, 56.231735, 49.844139>,  <47.244267, 55.993046, 49.841930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.269222, 56.231735, 49.844139>,  <47.310814, 56.629551, 49.847820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.269222, 56.231735, 49.844139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934955, -0.094584, -0.341926,
		0.339187, -0.044157, 0.939682,
		-0.103977, -0.994537, -0.009203,
		47.238029, 55.933372, 49.841377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.760853, 56.166756, 50.280525>,  <47.310814, 56.629551, 49.847820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.760853, 56.166756, 50.280525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.655567, 56.014992, 49.925724>,  <47.592396, 55.923935, 49.712845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.655567, 56.014992, 49.925724>,  <47.760853, 56.166756, 50.280525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.655567, 56.014992, 49.925724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929403, 0.146832, -0.338599,
		0.258708, -0.913503, 0.313977,
		-0.263210, -0.379410, -0.887000,
		47.576603, 55.901169, 49.659622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.106361, 55.576908, 50.116112>,  <47.760853, 56.166756, 50.280525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.106361, 55.576908, 50.116112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.032810, 55.812454, 49.801296>,  <47.988678, 55.953781, 49.612408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.032810, 55.812454, 49.801296>,  <48.106361, 55.576908, 50.116112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.032810, 55.812454, 49.801296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975626, 0.206894, -0.073138,
		0.119765, -0.781302, -0.612555,
		-0.183877, 0.588865, -0.787037,
		47.977646, 55.989113, 49.565186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.369751, 55.338051, 49.454548>,  <48.106361, 55.576908, 50.116112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.369751, 55.338051, 49.454548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.346134, 55.731087, 49.525002>,  <48.331963, 55.966908, 49.567272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.346134, 55.731087, 49.525002>,  <48.369751, 55.338051, 49.454548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.346134, 55.731087, 49.525002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976734, 0.020426, 0.213479,
		0.206165, 0.184642, -0.960939,
		-0.059045, 0.982594, 0.176135,
		48.328423, 56.025864, 49.577843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.807957, 55.737514, 49.041321>,  <48.369751, 55.338051, 49.454548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.807957, 55.737514, 49.041321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.796146, 55.910995, 49.401550>,  <48.789059, 56.015083, 49.617687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.796146, 55.910995, 49.401550>,  <48.807957, 55.737514, 49.041321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.796146, 55.910995, 49.401550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998648, -0.025765, 0.045150,
		0.042784, 0.900688, -0.432354,
		-0.029527, 0.433701, 0.900573,
		48.787289, 56.041107, 49.671722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.114262, 56.400951, 49.083340>,  <48.807957, 55.737514, 49.041321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.114262, 56.400951, 49.083340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.153858, 56.217087, 49.436363>,  <49.177616, 56.106770, 49.648178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.153858, 56.217087, 49.436363>,  <49.114262, 56.400951, 49.083340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.153858, 56.217087, 49.436363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978079, 0.208230, -0.001256,
		-0.183199, 0.863339, 0.470195,
		0.098994, -0.459658, 0.882562,
		49.183556, 56.079189, 49.701130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.508453, 56.758293, 49.593452>,  <49.114262, 56.400951, 49.083340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.508453, 56.758293, 49.593452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.543797, 56.365341, 49.659325>,  <49.565002, 56.129570, 49.698849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.543797, 56.365341, 49.659325>,  <49.508453, 56.758293, 49.593452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.543797, 56.365341, 49.659325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994864, 0.078835, -0.063488,
		0.049386, 0.169448, 0.984301,
		0.088356, -0.982381, 0.164685,
		49.570305, 56.070625, 49.708729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.947109, 56.539436, 50.131626>,  <49.508453, 56.758293, 49.593452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.947109, 56.539436, 50.131626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.960209, 56.259727, 49.845985>,  <49.968067, 56.091900, 49.674603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.960209, 56.259727, 49.845985>,  <49.947109, 56.539436, 50.131626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.960209, 56.259727, 49.845985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961730, 0.216517, -0.167918,
		0.272036, -0.681275, 0.679603,
		0.032747, -0.699274, -0.714103,
		49.970032, 56.049946, 49.631756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.372620, 55.883114, 50.320232>,  <49.947109, 56.539436, 50.131626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.372620, 55.883114, 50.320232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.373322, 56.018639, 49.943893>,  <50.373741, 56.099953, 49.718090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.373322, 56.018639, 49.943893>,  <50.372620, 55.883114, 50.320232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.373322, 56.018639, 49.943893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982586, 0.174227, 0.064573,
		0.185800, -0.924581, -0.332607,
		0.001754, 0.338813, -0.940852,
		50.373848, 56.120281, 49.661636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.674644, 55.492928, 49.702621>,  <50.372620, 55.883114, 50.320232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.674644, 55.492928, 49.702621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.728897, 55.876991, 49.604893>,  <50.761448, 56.107430, 49.546257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.728897, 55.876991, 49.604893>,  <50.674644, 55.492928, 49.702621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.728897, 55.876991, 49.604893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988499, -0.147793, -0.032066,
		-0.066897, -0.237158, -0.969165,
		0.135631, 0.960163, -0.244317,
		50.769585, 56.165039, 49.531597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.114956, 55.490692, 49.126705>,  <50.674644, 55.492928, 49.702621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.114956, 55.490692, 49.126705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.169674, 55.838211, 49.317062>,  <51.202503, 56.046722, 49.431278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.169674, 55.838211, 49.317062>,  <51.114956, 55.490692, 49.126705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.169674, 55.838211, 49.317062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986261, -0.074533, -0.147427,
		-0.092614, 0.489526, -0.867057,
		0.136793, 0.868798, 0.475897,
		51.210712, 56.098850, 49.459831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.617332, 55.796474, 48.682568>,  <51.114956, 55.490692, 49.126705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.617332, 55.796474, 48.682568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.695408, 55.957283, 49.040401>,  <51.742252, 56.053768, 49.255100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.695408, 55.957283, 49.040401>,  <51.617332, 55.796474, 48.682568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.695408, 55.957283, 49.040401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977328, -0.156037, -0.143118,
		0.082051, 0.902235, -0.423366,
		0.195187, 0.402025, 0.894583,
		51.753963, 56.077892, 49.308777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.914146, 56.422661, 48.614258>,  <51.617332, 55.796474, 48.682568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.914146, 56.422661, 48.614258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.026733, 56.207264, 48.931950>,  <52.094288, 56.078026, 49.122566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.026733, 56.207264, 48.931950>,  <51.914146, 56.422661, 48.614258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.026733, 56.207264, 48.931950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935984, -0.028314, -0.350903,
		0.211446, 0.842155, 0.496049,
		0.281469, -0.538491, 0.794231,
		52.111176, 56.045715, 49.170219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.584476, 56.692364, 48.955708>,  <51.914146, 56.422661, 48.614258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.584476, 56.692364, 48.955708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.507298, 56.302567, 49.001549>,  <52.460991, 56.068687, 49.029053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.507298, 56.302567, 49.001549>,  <52.584476, 56.692364, 48.955708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.507298, 56.302567, 49.001549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899155, -0.222360, -0.376931,
		0.392800, 0.030319, 0.919124,
		-0.192948, -0.974493, 0.114604,
		52.449413, 56.010220, 49.035931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.174084, 56.407379, 49.147957>,  <52.584476, 56.692364, 48.955708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.174084, 56.407379, 49.147957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.962383, 56.105637, 48.992607>,  <52.835361, 55.924591, 48.899395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.962383, 56.105637, 48.992607>,  <53.174084, 56.407379, 49.147957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.962383, 56.105637, 48.992607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835931, -0.385209, -0.390938,
		0.145301, -0.531560, 0.834465,
		-0.529251, -0.754359, -0.388377,
		52.803608, 55.879330, 48.876095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.699467, 55.946339, 49.186214>,  <53.174084, 56.407379, 49.147957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.699467, 55.946339, 49.186214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.433884, 55.810547, 48.919708>,  <53.274532, 55.729073, 48.759804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.433884, 55.810547, 48.919708>,  <53.699467, 55.946339, 49.186214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.433884, 55.810547, 48.919708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745896, -0.237688, -0.622208,
		0.052863, -0.910087, 0.411031,
		-0.663961, -0.339478, -0.666266,
		53.234695, 55.708702, 48.719830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.992886, 55.343891, 48.904484>,  <53.699467, 55.946339, 49.186214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.992886, 55.343891, 48.904484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.753361, 55.484039, 48.616409>,  <53.609646, 55.568127, 48.443565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.753361, 55.484039, 48.616409>,  <53.992886, 55.343891, 48.904484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.753361, 55.484039, 48.616409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698382, -0.211725, -0.683692,
		-0.392025, -0.912367, -0.117907,
		-0.598814, 0.350369, -0.720183,
		53.573715, 55.589149, 48.400356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.069798, 54.791843, 48.418621>,  <53.992886, 55.343891, 48.904484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.069798, 54.791843, 48.418621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.958389, 55.138554, 48.253151>,  <53.891544, 55.346581, 48.153870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.958389, 55.138554, 48.253151>,  <54.069798, 54.791843, 48.418621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.958389, 55.138554, 48.253151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625858, -0.162912, -0.762733,
		-0.728511, -0.471336, -0.497105,
		-0.278520, 0.866777, -0.413673,
		53.874832, 55.398586, 48.129047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.241997, 54.724041, 47.646862>,  <54.069798, 54.791843, 48.418621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.241997, 54.724041, 47.646862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.248070, 55.102997, 47.774750>,  <54.251713, 55.330372, 47.851482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.248070, 55.102997, 47.774750>,  <54.241997, 54.724041, 47.646862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.248070, 55.102997, 47.774750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652485, 0.232903, -0.721124,
		-0.757650, 0.219559, -0.614623,
		0.015182, 0.947391, 0.319718,
		54.252625, 55.387215, 47.870667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.244106, 55.176395, 47.072952>,  <54.241997, 54.724041, 47.646862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.244106, 55.176395, 47.072952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.418564, 55.369713, 47.376583>,  <54.523239, 55.485703, 47.558762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.418564, 55.369713, 47.376583>,  <54.244106, 55.176395, 47.072952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.418564, 55.369713, 47.376583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732466, 0.299358, -0.611456,
		-0.522750, 0.822684, -0.223434,
		0.436148, 0.483297, 0.759078,
		54.549408, 55.514702, 47.604305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.545071, 55.335537, 46.468678>,  <54.244106, 55.176395, 47.072952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.545071, 55.335537, 46.468678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.730774, 55.533100, 46.762756>,  <54.842194, 55.651638, 46.939205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.730774, 55.533100, 46.762756>,  <54.545071, 55.335537, 46.468678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.730774, 55.533100, 46.762756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279692, -0.705849, 0.650807,
		0.840382, -0.507769, -0.189550,
		0.464254, 0.493911, 0.735201,
		54.870049, 55.681274, 46.983318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.239830, 55.084057, 46.679283>,  <54.545071, 55.335537, 46.468678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.239830, 55.084057, 46.679283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.022247, 55.253204, 46.969193>,  <54.891697, 55.354694, 47.143139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.022247, 55.253204, 46.969193>,  <55.239830, 55.084057, 46.679283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.022247, 55.253204, 46.969193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063009, -0.881880, 0.467245,
		0.836746, 0.208493, 0.506347,
		-0.543955, 0.422870, 0.724772,
		54.859062, 55.380066, 47.186623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.542202, 54.869492, 47.180641>,  <55.239830, 55.084057, 46.679283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.542202, 54.869492, 47.180641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.158081, 54.948853, 47.259087>,  <54.927608, 54.996471, 47.306156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.158081, 54.948853, 47.259087>,  <55.542202, 54.869492, 47.180641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.158081, 54.948853, 47.259087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129487, -0.939677, 0.316606,
		0.247102, 0.278642, 0.928062,
		-0.960299, 0.198406, 0.196116,
		54.869991, 55.008373, 47.317921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.440594, 54.464691, 47.786076>,  <55.542202, 54.869492, 47.180641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.440594, 54.464691, 47.786076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.089417, 54.558636, 47.619194>,  <54.878712, 54.615002, 47.519066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.089417, 54.558636, 47.619194>,  <55.440594, 54.464691, 47.786076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.089417, 54.558636, 47.619194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251991, -0.967622, -0.014445,
		-0.407090, 0.092450, 0.908697,
		-0.877940, 0.234864, -0.417206,
		54.826035, 54.629093, 47.494034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.926392, 54.303493, 48.445190>,  <55.440594, 54.464691, 47.786076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.926392, 54.303493, 48.445190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.132790, 54.592003, 48.630020>,  <56.256630, 54.765110, 48.740917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.132790, 54.592003, 48.630020>,  <55.926392, 54.303493, 48.445190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.132790, 54.592003, 48.630020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664842, -0.002923, 0.746978,
		0.540125, -0.692646, 0.478024,
		0.515994, 0.721272, 0.462078,
		56.287586, 54.808384, 48.768642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.203579, 54.271759, 49.154186>,  <55.926392, 54.303493, 48.445190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.203579, 54.271759, 49.154186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.142303, 54.666199, 49.128422>,  <56.105537, 54.902863, 49.112965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.142303, 54.666199, 49.128422>,  <56.203579, 54.271759, 49.154186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.142303, 54.666199, 49.128422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500714, -0.021259, 0.865352,
		0.851951, 0.164810, 0.497009,
		-0.153184, 0.986097, -0.064411,
		56.096348, 54.962029, 49.109100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.318089, 54.586300, 49.839142>,  <56.203579, 54.271759, 49.154186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.318089, 54.586300, 49.839142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.115372, 54.869022, 49.641724>,  <55.993740, 55.038654, 49.523273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.115372, 54.869022, 49.641724>,  <56.318089, 54.586300, 49.839142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.115372, 54.869022, 49.641724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529859, 0.196206, 0.825078,
		0.680006, 0.679653, 0.275071,
		-0.506796, 0.706806, -0.493541,
		55.963333, 55.081066, 49.493660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.444553, 55.335438, 49.950329>,  <56.318089, 54.586300, 49.839142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.444553, 55.335438, 49.950329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.066048, 55.331394, 49.821037>,  <55.838943, 55.328968, 49.743462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.066048, 55.331394, 49.821037>,  <56.444553, 55.335438, 49.950329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.066048, 55.331394, 49.821037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294337, 0.440953, 0.847895,
		0.133955, 0.897473, -0.420236,
		-0.946267, -0.010111, -0.323227,
		55.782166, 55.328362, 49.724068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.198734, 55.912857, 50.255486>,  <56.444553, 55.335438, 49.950329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.198734, 55.912857, 50.255486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.852997, 55.727409, 50.177536>,  <55.645554, 55.616142, 50.130768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.852997, 55.727409, 50.177536>,  <56.198734, 55.912857, 50.255486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.852997, 55.727409, 50.177536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443975, 0.521426, 0.728698,
		-0.236224, 0.716362, -0.656524,
		-0.864340, -0.463616, -0.194873,
		55.593693, 55.588326, 50.119076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.521030, 56.390530, 50.257702>,  <56.198734, 55.912857, 50.255486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.521030, 56.390530, 50.257702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.465248, 56.015690, 50.385704>,  <55.431778, 55.790787, 50.462505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.465248, 56.015690, 50.385704>,  <55.521030, 56.390530, 50.257702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.465248, 56.015690, 50.385704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390470, 0.349014, 0.851893,
		-0.909992, -0.006149, -0.414581,
		-0.139456, -0.937097, 0.320001,
		55.423412, 55.734562, 50.481705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.820263, 56.327488, 50.509876>,  <55.521030, 56.390530, 50.257702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.820263, 56.327488, 50.509876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.084549, 56.085239, 50.687271>,  <55.243118, 55.939888, 50.793709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.084549, 56.085239, 50.687271>,  <54.820263, 56.327488, 50.509876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.084549, 56.085239, 50.687271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129088, 0.490338, 0.861920,
		-0.739458, -0.626728, 0.245793,
		0.660711, -0.605625, 0.443487,
		55.282761, 55.903553, 50.820316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.688358, 55.964764, 51.031502>,  <54.820263, 56.327488, 50.509876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.688358, 55.964764, 51.031502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.069725, 56.071148, 51.088428>,  <55.298546, 56.134979, 51.122585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.069725, 56.071148, 51.088428>,  <54.688358, 55.964764, 51.031502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.069725, 56.071148, 51.088428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227893, 0.326002, 0.917490,
		0.197615, -0.907188, 0.371427,
		0.953422, 0.265955, 0.142319,
		55.355751, 56.150936, 51.131123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.664265, 56.147449, 51.665329>,  <54.688358, 55.964764, 51.031502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.664265, 56.147449, 51.665329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.028503, 56.303394, 51.610443>,  <55.247047, 56.396961, 51.577511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.028503, 56.303394, 51.610443>,  <54.664265, 56.147449, 51.665329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.028503, 56.303394, 51.610443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024415, 0.382153, 0.923776,
		0.412584, -0.837834, 0.357504,
		0.910593, 0.389863, -0.137215,
		55.301682, 56.420353, 51.569279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.116219, 55.969944, 52.221565>,  <54.664265, 56.147449, 51.665329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.116219, 55.969944, 52.221565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.234612, 56.314995, 52.057487>,  <55.305649, 56.522026, 51.959042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.234612, 56.314995, 52.057487>,  <55.116219, 55.969944, 52.221565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.234612, 56.314995, 52.057487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108382, 0.396333, 0.911687,
		0.949024, -0.314304, 0.023815,
		0.295986, 0.862631, -0.410195,
		55.323406, 56.573784, 51.934429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.277382, 56.686386, 52.712849>,  <55.116219, 55.969944, 52.221565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.277382, 56.686386, 52.712849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.227539, 56.920883, 53.033047>,  <55.197632, 57.061581, 53.225166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.227539, 56.920883, 53.033047>,  <55.277382, 56.686386, 52.712849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.227539, 56.920883, 53.033047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.988179, -0.000706, -0.153304,
		-0.089308, -0.810136, 0.579400,
		-0.124606, 0.586242, 0.800496,
		55.190159, 57.096756, 53.273197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.661480, 56.712837, 53.255184>,  <55.277382, 56.686386, 52.712849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.661480, 56.712837, 53.255184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.542557, 56.332161, 53.224487>,  <55.471203, 56.103756, 53.206070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.542557, 56.332161, 53.224487>,  <55.661480, 56.712837, 53.255184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.542557, 56.332161, 53.224487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645591, -0.259596, 0.718208,
		-0.703433, 0.163990, 0.691584,
		-0.297311, -0.951692, -0.076738,
		55.453362, 56.046654, 53.201466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.523193, 56.392273, 53.954346>,  <55.661480, 56.712837, 53.255184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.523193, 56.392273, 53.954346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.657310, 56.133190, 53.680687>,  <55.737782, 55.977741, 53.516491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.657310, 56.133190, 53.680687>,  <55.523193, 56.392273, 53.954346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.657310, 56.133190, 53.680687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754302, -0.250517, 0.606851,
		-0.564452, -0.719526, 0.404570,
		0.335294, -0.647707, -0.684145,
		55.757900, 55.938877, 53.475445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.010006, 55.795063, 54.313824>,  <55.523193, 56.392273, 53.954346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.010006, 55.795063, 54.313824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.074913, 55.803192, 53.919209>,  <56.113857, 55.808067, 53.682438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.074913, 55.803192, 53.919209>,  <56.010006, 55.795063, 54.313824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.074913, 55.803192, 53.919209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948234, -0.279808, 0.150201,
		-0.272989, -0.959841, -0.064668,
		0.162264, 0.020317, -0.986538,
		56.123592, 55.809288, 53.623245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.331532, 55.188591, 54.164330>,  <56.010006, 55.795063, 54.313824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.331532, 55.188591, 54.164330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.461319, 55.477287, 53.919769>,  <56.539192, 55.650505, 53.773033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.461319, 55.477287, 53.919769>,  <56.331532, 55.188591, 54.164330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.461319, 55.477287, 53.919769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903496, -0.045119, 0.426216,
		0.280032, -0.690690, -0.666730,
		0.324465, 0.721742, -0.611401,
		56.558659, 55.693810, 53.736347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.780998, 55.096539, 53.582638>,  <56.331532, 55.188591, 54.164330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.780998, 55.096539, 53.582638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.923882, 55.026749, 53.949673>,  <57.009613, 54.984875, 54.169891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.923882, 55.026749, 53.949673>,  <56.780998, 55.096539, 53.582638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.923882, 55.026749, 53.949673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924875, -0.071096, -0.373567,
		0.130414, 0.982092, 0.135971,
		0.357210, -0.174475, 0.917584,
		57.031044, 54.974407, 54.224949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.218899, 55.605209, 53.837891>,  <56.780998, 55.096539, 53.582638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.218899, 55.605209, 53.837891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.334282, 55.253391, 53.989250>,  <57.403511, 55.042301, 54.080067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.334282, 55.253391, 53.989250>,  <57.218899, 55.605209, 53.837891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.334282, 55.253391, 53.989250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785703, -0.008428, -0.618547,
		0.547230, 0.475737, 0.688632,
		0.288462, -0.879547, 0.378400,
		57.420822, 54.989529, 54.102772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.968559, 55.482147, 53.663528>,  <57.218899, 55.605209, 53.837891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.968559, 55.482147, 53.663528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.911743, 55.104767, 53.783340>,  <57.877655, 54.878338, 53.855228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.911743, 55.104767, 53.783340>,  <57.968559, 55.482147, 53.663528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.911743, 55.104767, 53.783340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828306, -0.278964, -0.485889,
		0.541973, 0.179091, 0.821092,
		-0.142037, -0.943454, 0.299534,
		57.869133, 54.821732, 53.873199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.571873, 55.073269, 54.041656>,  <57.968559, 55.482147, 53.663528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.571873, 55.073269, 54.041656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.371422, 54.793274, 53.838135>,  <58.251152, 54.625275, 53.716022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.371422, 54.793274, 53.838135>,  <58.571873, 55.073269, 54.041656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.371422, 54.793274, 53.838135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864950, -0.423556, -0.269187,
		-0.027080, -0.574991, 0.817712,
		-0.501127, -0.699990, -0.508808,
		58.221085, 54.583279, 53.685493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.963169, 54.493214, 54.290653>,  <58.571873, 55.073269, 54.041656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.963169, 54.493214, 54.290653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.098518, 54.146149, 54.144962>,  <59.179729, 53.937908, 54.057549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.098518, 54.146149, 54.144962>,  <58.963169, 54.493214, 54.290653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.098518, 54.146149, 54.144962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918119, 0.389266, -0.074355,
		0.206295, -0.309240, 0.928339,
		0.338378, -0.867665, -0.364223,
		59.200031, 53.885849, 54.035694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.497181, 54.303951, 54.711781>,  <58.963169, 54.493214, 54.290653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.497181, 54.303951, 54.711781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.539215, 54.141941, 54.348484>,  <59.564438, 54.044735, 54.130505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.539215, 54.141941, 54.348484>,  <59.497181, 54.303951, 54.711781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.539215, 54.141941, 54.348484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973356, 0.229059, 0.010476,
		0.203799, -0.885147, 0.418308,
		0.105090, -0.405028, -0.908245,
		59.570744, 54.020432, 54.076012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.018471, 53.723793, 54.831615>,  <59.497181, 54.303951, 54.711781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.018471, 53.723793, 54.831615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.059311, 53.344677, 54.952465>,  <60.083817, 53.117207, 55.024975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.059311, 53.344677, 54.952465>,  <60.018471, 53.723793, 54.831615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.059311, 53.344677, 54.952465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044595, 0.299043, 0.953197,
		-0.993774, -0.110796, -0.011734,
		0.102102, -0.947785, 0.302122,
		60.089943, 53.060341, 55.043102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.457912, 53.437309, 55.217857>,  <60.018471, 53.723793, 54.831615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.457912, 53.437309, 55.217857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.793663, 53.260910, 55.344955>,  <59.995113, 53.155071, 55.421215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.793663, 53.260910, 55.344955>,  <59.457912, 53.437309, 55.217857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.793663, 53.260910, 55.344955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225701, 0.249008, 0.941835,
		-0.494469, -0.862273, 0.109479,
		0.839381, -0.440999, 0.317743,
		60.045479, 53.128609, 55.440277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.387161, 52.918343, 55.831432>,  <59.457912, 53.437309, 55.217857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.387161, 52.918343, 55.831432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.725334, 53.131302, 55.848343>,  <59.928238, 53.259079, 55.858490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.725334, 53.131302, 55.848343>,  <59.387161, 52.918343, 55.831432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.725334, 53.131302, 55.848343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221716, 0.277853, 0.934687,
		0.485880, -0.799592, 0.352949,
		0.845436, 0.532401, 0.042279,
		59.978966, 53.291023, 55.861027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.838856, 52.701286, 56.376263>,  <59.387161, 52.918343, 55.831432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.838856, 52.701286, 56.376263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.897659, 53.090355, 56.304382>,  <59.932941, 53.323795, 56.261253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.897659, 53.090355, 56.304382>,  <59.838856, 52.701286, 56.376263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.897659, 53.090355, 56.304382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153773, 0.201938, 0.967251,
		0.977109, -0.114565, 0.179258,
		0.147012, 0.972674, -0.179699,
		59.941765, 53.382156, 56.250473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.299328, 53.016354, 56.849400>,  <59.838856, 52.701286, 56.376263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.299328, 53.016354, 56.849400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.061699, 53.320145, 56.743362>,  <59.919121, 53.502419, 56.679741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.061699, 53.320145, 56.743362>,  <60.299328, 53.016354, 56.849400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.061699, 53.320145, 56.743362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097072, 0.259452, 0.960865,
		0.798534, 0.596554, -0.080409,
		-0.594070, 0.759478, -0.265091,
		59.883476, 53.547989, 56.663834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.535175, 52.960670, 56.051197>,  <60.299328, 53.016354, 56.849400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.535175, 52.960670, 56.051197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.789352, 52.914082, 56.356522>,  <60.941860, 52.886127, 56.539715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.789352, 52.914082, 56.356522>,  <60.535175, 52.960670, 56.051197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.789352, 52.914082, 56.356522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771862, 0.068989, -0.632036,
		0.020955, 0.990795, 0.133739,
		0.635445, -0.116472, 0.763312,
		60.979984, 52.879139, 56.585514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.980934, 53.434956, 55.984562>,  <60.535175, 52.960670, 56.051197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.980934, 53.434956, 55.984562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.149277, 53.146988, 56.205322>,  <61.250282, 52.974205, 56.337776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.149277, 53.146988, 56.205322>,  <60.980934, 53.434956, 55.984562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.149277, 53.146988, 56.205322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813992, 0.031189, -0.580039,
		0.400370, 0.693354, 0.599137,
		0.420858, -0.719922, 0.551897,
		61.275536, 52.931011, 56.370892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.776443, 53.437458, 55.978130>,  <60.980934, 53.434956, 55.984562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.776443, 53.437458, 55.978130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.671455, 53.061401, 56.065079>,  <61.608463, 52.835770, 56.117249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.671455, 53.061401, 56.065079>,  <61.776443, 53.437458, 55.978130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.671455, 53.061401, 56.065079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846748, -0.332432, -0.415340,
		0.462737, 0.075041, 0.883314,
		-0.262474, -0.940137, 0.217370,
		61.592712, 52.779362, 56.130291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.295845, 53.601131, 56.438057>,  <61.776443, 53.437458, 55.978130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.295845, 53.601131, 56.438057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.189415, 53.490204, 56.807335>,  <62.125557, 53.423645, 57.028904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.189415, 53.490204, 56.807335>,  <62.295845, 53.601131, 56.438057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.189415, 53.490204, 56.807335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105880, 0.943520, 0.313941,
		-0.958120, 0.181280, -0.221685,
		-0.266076, -0.277321, 0.923199,
		62.109592, 53.407009, 57.084293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.750675, 54.214233, 56.438133>,  <62.295845, 53.601131, 56.438057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.750675, 54.214233, 56.438133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.001999, 53.912716, 56.361160>,  <63.152794, 53.731808, 56.314976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.001999, 53.912716, 56.361160>,  <62.750675, 54.214233, 56.438133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.001999, 53.912716, 56.361160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333679, -0.484559, 0.808617,
		-0.702771, -0.443851, -0.555976,
		0.628309, -0.753790, -0.192429,
		63.190491, 53.686581, 56.303432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.520725, 54.013100, 56.607430>,  <62.750675, 54.214233, 56.438133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.520725, 54.013100, 56.607430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.787529, 54.106255, 56.324341>,  <63.947609, 54.162148, 56.154488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.787529, 54.106255, 56.324341>,  <63.520725, 54.013100, 56.607430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.787529, 54.106255, 56.324341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626758, -0.338196, -0.701995,
		-0.402834, 0.911804, -0.079615,
		0.667007, 0.232888, -0.707718,
		63.987633, 54.176121, 56.112026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.818409, 53.682976, 55.951469>,  <63.520725, 54.013100, 56.607430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.818409, 53.682976, 55.951469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.020676, 53.361732, 56.077530>,  <64.142036, 53.168987, 56.153168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.020676, 53.361732, 56.077530>,  <63.818409, 53.682976, 55.951469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.020676, 53.361732, 56.077530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771794, 0.584344, 0.250752,
		-0.385539, 0.116437, 0.915316,
		0.505663, -0.803109, 0.315152,
		64.172371, 53.120800, 56.172077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.227951, 53.805180, 56.576832>,  <63.818409, 53.682976, 55.951469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.227951, 53.805180, 56.576832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.576195, 53.936604, 56.723305>,  <64.785141, 54.015457, 56.811188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.576195, 53.936604, 56.723305>,  <64.227951, 53.805180, 56.576832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.576195, 53.936604, 56.723305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143732, 0.541972, -0.828014,
		-0.470512, 0.773509, 0.424621,
		0.870609, 0.328559, 0.366182,
		64.837379, 54.035172, 56.833160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.277756, 54.562630, 56.758884>,  <64.227951, 53.805180, 56.576832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.277756, 54.562630, 56.758884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.636948, 54.429077, 56.644218>,  <64.852463, 54.348946, 56.575420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.636948, 54.429077, 56.644218>,  <64.277756, 54.562630, 56.758884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.636948, 54.429077, 56.644218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003051, 0.646681, -0.762754,
		0.440045, 0.685805, 0.579682,
		0.897970, -0.333878, -0.286661,
		64.906342, 54.328915, 56.558220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.987663, 55.003468, 56.810555>,  <64.277756, 54.562630, 56.758884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.987663, 55.003468, 56.810555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.941261, 54.777683, 56.483650>,  <64.913422, 54.642212, 56.287506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.941261, 54.777683, 56.483650>,  <64.987663, 55.003468, 56.810555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.941261, 54.777683, 56.483650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019438, 0.821372, -0.570061,
		0.993058, -0.082019, -0.084315,
		-0.116010, -0.564465, -0.817264,
		64.906456, 54.608345, 56.238472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.357948, 54.879189, 57.480473>,  <64.987663, 55.003468, 56.810555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.357948, 54.879189, 57.480473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.058693, 54.653381, 57.340981>,  <64.879143, 54.517899, 57.257286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.058693, 54.653381, 57.340981>,  <65.357948, 54.879189, 57.480473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.058693, 54.653381, 57.340981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352868, -0.783558, 0.511391,
		-0.561940, 0.259534, 0.785408,
		-0.748136, -0.564516, -0.348731,
		64.834251, 54.484028, 57.236362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.039932, 54.459991, 57.729328>,  <65.357948, 54.879189, 57.480473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.039932, 54.459991, 57.729328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.380669, 54.411320, 57.525536>,  <66.585106, 54.382114, 57.403259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.380669, 54.411320, 57.525536>,  <66.039932, 54.459991, 57.729328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.380669, 54.411320, 57.525536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310117, 0.901017, 0.303308,
		0.422148, -0.416368, 0.805251,
		0.851833, -0.121681, -0.509485,
		66.636215, 54.374817, 57.372688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.549881, 54.799614, 58.200596>,  <66.039932, 54.459991, 57.729328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.549881, 54.799614, 58.200596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.673241, 54.821548, 57.820724>,  <66.747253, 54.834709, 57.592804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.673241, 54.821548, 57.820724>,  <66.549881, 54.799614, 58.200596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.673241, 54.821548, 57.820724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380544, 0.907859, 0.176005,
		0.871823, -0.415673, 0.259116,
		0.308402, 0.054840, -0.949674,
		66.765762, 54.838001, 57.535824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.323067, 54.909096, 58.131115>,  <66.549881, 54.799614, 58.200596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.323067, 54.909096, 58.131115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.164207, 55.023731, 57.782372>,  <67.068893, 55.092510, 57.573124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.164207, 55.023731, 57.782372>,  <67.323067, 54.909096, 58.131115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.164207, 55.023731, 57.782372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529495, 0.847489, 0.037383,
		0.749607, -0.446800, -0.488323,
		-0.397146, 0.286586, -0.871862,
		67.045067, 55.109707, 57.520813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.844444, 55.104607, 57.638252>,  <67.323067, 54.909096, 58.131115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.844444, 55.104607, 57.638252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.502045, 55.311138, 57.627907>,  <67.296608, 55.435059, 57.621700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.502045, 55.311138, 57.627907>,  <67.844444, 55.104607, 57.638252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.502045, 55.311138, 57.627907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503850, 0.844417, 0.181923,
		0.115769, 0.142696, -0.982973,
		-0.855998, 0.516332, -0.025860,
		67.245247, 55.466038, 57.620148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.529808, 55.393414, 57.923023>,  <67.844444, 55.104607, 57.638252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.529808, 55.393414, 57.923023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.886902, 55.480446, 58.080849>,  <69.101158, 55.532665, 58.175545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.886902, 55.480446, 58.080849>,  <68.529808, 55.393414, 57.923023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.886902, 55.480446, 58.080849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198925, 0.976041, -0.088157,
		-0.404291, 0.000212, 0.914630,
		0.892736, 0.217584, 0.394562,
		69.154724, 55.545723, 58.199219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.638382, 55.749584, 58.647202>,  <68.529808, 55.393414, 57.923023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.638382, 55.749584, 58.647202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.926567, 55.879421, 58.402069>,  <69.099480, 55.957321, 58.254990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.926567, 55.879421, 58.402069>,  <68.638382, 55.749584, 58.647202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.926567, 55.879421, 58.402069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255398, 0.945780, 0.200679,
		0.644744, 0.011933, 0.764306,
		0.720470, 0.324589, -0.612834,
		69.142708, 55.976799, 58.218220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.952248, 55.510475, 59.390446>,  <68.638382, 55.749584, 58.647202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.952248, 55.510475, 59.390446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.659447, 55.303471, 59.213203>,  <68.483765, 55.179268, 59.106857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.659447, 55.303471, 59.213203>,  <68.952248, 55.510475, 59.390446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.659447, 55.303471, 59.213203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660048, -0.699856, -0.273016,
		-0.168824, -0.492324, 0.853883,
		-0.732008, -0.517512, -0.443110,
		68.439842, 55.148216, 59.080269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.520050, 55.847328, 58.835667>,  <68.952248, 55.510475, 59.390446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.520050, 55.847328, 58.835667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.599525, 56.181107, 59.041275>,  <69.647209, 56.381374, 59.164642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.599525, 56.181107, 59.041275>,  <69.520050, 55.847328, 58.835667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.599525, 56.181107, 59.041275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331323, -0.436411, 0.836523,
		0.922359, -0.336520, 0.189758,
		0.198695, 0.834446, 0.514024,
		69.659134, 56.431438, 59.195480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.276733, 55.525673, 58.865616>,  <69.520050, 55.847328, 58.835667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.276733, 55.525673, 58.865616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.673927, 55.480698, 58.880226>,  <70.912247, 55.453712, 58.888992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.673927, 55.480698, 58.880226>,  <70.276733, 55.525673, 58.865616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.673927, 55.480698, 58.880226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115902, 0.986798, -0.113124,
		-0.023325, 0.116564, 0.992909,
		0.992987, -0.112441, 0.036527,
		70.971825, 55.446964, 58.891186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.493080, 55.954952, 59.397938>,  <70.276733, 55.525673, 58.865616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.493080, 55.954952, 59.397938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.759277, 55.909725, 59.102821>,  <70.918991, 55.882587, 58.925751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.759277, 55.909725, 59.102821>,  <70.493080, 55.954952, 59.397938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.759277, 55.909725, 59.102821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275419, 0.955905, 0.101929,
		0.693737, -0.271035, 0.667284,
		0.665487, -0.113071, -0.737796,
		70.958923, 55.875805, 58.881481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.194244, 56.254429, 59.567154>,  <70.493080, 55.954952, 59.397938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.194244, 56.254429, 59.567154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.147972, 56.256920, 59.169846>,  <71.120209, 56.258415, 58.931461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.147972, 56.256920, 59.169846>,  <71.194244, 56.254429, 59.567154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.147972, 56.256920, 59.169846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528147, 0.847292, -0.056200,
		0.841237, -0.531092, -0.101304,
		-0.115682, 0.006226, -0.993267,
		71.113266, 56.258789, 58.871864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.904251, 56.566059, 59.288578>,  <71.194244, 56.254429, 59.567154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.904251, 56.566059, 59.288578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.583595, 56.581902, 59.049980>,  <71.391205, 56.591408, 58.906822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.583595, 56.581902, 59.049980>,  <71.904251, 56.566059, 59.288578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.583595, 56.581902, 59.049980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337238, 0.853837, -0.396527,
		0.493607, -0.519032, -0.697823,
		-0.801638, 0.039604, -0.596497,
		71.343102, 56.593784, 58.871033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.192146, 56.601353, 59.956161>,  <71.904251, 56.566059, 59.288578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.192146, 56.601353, 59.956161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.450081, 56.325516, 59.824318>,  <72.604843, 56.160015, 59.745213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.450081, 56.325516, 59.824318>,  <72.192146, 56.601353, 59.956161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.450081, 56.325516, 59.824318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544444, -0.717099, 0.435144,
		-0.536432, -0.101147, -0.837861,
		0.644842, -0.689593, -0.329605,
		72.643532, 56.118637, 59.725437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.782578, 56.850914, 59.769222>,  <72.192146, 56.601353, 59.956161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.782578, 56.850914, 59.769222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.857925, 57.148830, 60.025284>,  <72.903137, 57.327579, 60.178921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.857925, 57.148830, 60.025284>,  <72.782578, 56.850914, 59.769222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.857925, 57.148830, 60.025284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792048, 0.500604, -0.349364,
		-0.580668, -0.441225, 0.684211,
		0.188371, 0.744793, 0.640156,
		72.914436, 57.372269, 60.217331>
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
