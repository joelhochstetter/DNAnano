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
	<24.258257, 35.412979, 34.636787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.249392, 35.040066, 34.781208>,  <24.244072, 34.816319, 34.867863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.249392, 35.040066, 34.781208>,  <24.258257, 35.412979, 34.636787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.249392, 35.040066, 34.781208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019678, -0.360668, -0.932487,
		0.999561, -0.027773, -0.010351,
		-0.022165, -0.932281, 0.361056,
		24.242743, 34.760380, 34.889526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.940434, 35.067825, 34.446194>,  <24.258257, 35.412979, 34.636787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.940434, 35.067825, 34.446194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.605646, 34.851227, 34.477859>,  <24.404774, 34.721268, 34.496861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.605646, 34.851227, 34.477859>,  <24.940434, 35.067825, 34.446194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.605646, 34.851227, 34.477859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044968, -0.212221, -0.976187,
		0.545398, -0.813479, 0.201972,
		-0.836970, -0.541493, 0.079165,
		24.354555, 34.688778, 34.501610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.050228, 34.443779, 34.071358>,  <24.940434, 35.067825, 34.446194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.050228, 34.443779, 34.071358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.654205, 34.499454, 34.079517>,  <24.416592, 34.532860, 34.084415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.654205, 34.499454, 34.079517>,  <25.050228, 34.443779, 34.071358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.654205, 34.499454, 34.079517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027071, -0.046188, -0.998566,
		-0.138049, -0.989188, 0.049497,
		-0.990055, 0.139191, 0.020402,
		24.357189, 34.541210, 34.085636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.511776, 33.883850, 33.873390>,  <25.050228, 34.443779, 34.071358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.511776, 33.883850, 33.873390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.373281, 34.251202, 33.796761>,  <24.290186, 34.471611, 33.750782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.373281, 34.251202, 33.796761>,  <24.511776, 33.883850, 33.873390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.373281, 34.251202, 33.796761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150082, -0.255800, -0.955009,
		-0.926066, -0.301904, 0.226399,
		-0.346234, 0.918379, -0.191577,
		24.269411, 34.526714, 33.739288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.413382, 33.414852, 33.232353>,  <24.511776, 33.883850, 33.873390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.413382, 33.414852, 33.232353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.082071, 33.234150, 33.099762>,  <23.883286, 33.125729, 33.020206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.082071, 33.234150, 33.099762>,  <24.413382, 33.414852, 33.232353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.082071, 33.234150, 33.099762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560066, -0.649758, -0.513946,
		0.016799, -0.611338, 0.791192,
		-0.828278, -0.451753, -0.331474,
		23.833588, 33.098625, 33.000320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.113791, 33.609474, 33.309429>,  <24.413382, 33.414852, 33.232353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.113791, 33.609474, 33.309429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.264095, 33.978394, 33.345562>,  <25.354279, 34.199745, 33.367241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.264095, 33.978394, 33.345562>,  <25.113791, 33.609474, 33.309429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.264095, 33.978394, 33.345562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493194, -0.116502, -0.862083,
		-0.784577, 0.368491, -0.498651,
		0.375763, 0.922303, 0.090333,
		25.376823, 34.255085, 33.372662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.929390, 34.128338, 32.809113>,  <25.113791, 33.609474, 33.309429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.929390, 34.128338, 32.809113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.292812, 34.229931, 32.941792>,  <25.510866, 34.290886, 33.021397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.292812, 34.229931, 32.941792>,  <24.929390, 34.128338, 32.809113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.292812, 34.229931, 32.941792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311462, 0.117344, -0.942986,
		-0.278420, 0.960065, 0.027509,
		0.908556, 0.253978, 0.331695,
		25.565378, 34.306126, 33.041302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.084133, 34.847958, 32.624676>,  <24.929390, 34.128338, 32.809113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.084133, 34.847958, 32.624676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.408697, 34.620827, 32.680077>,  <25.603436, 34.484547, 32.713318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.408697, 34.620827, 32.680077>,  <25.084133, 34.847958, 32.624676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.408697, 34.620827, 32.680077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294598, 0.192669, -0.935997,
		0.504799, 0.800282, 0.323615,
		0.811412, -0.567827, 0.138502,
		25.652121, 34.450478, 32.721626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.583437, 35.206650, 32.375061>,  <25.084133, 34.847958, 32.624676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.583437, 35.206650, 32.375061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.748718, 34.843227, 32.350418>,  <25.847887, 34.625175, 32.335632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.748718, 34.843227, 32.350418>,  <25.583437, 35.206650, 32.375061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.748718, 34.843227, 32.350418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278633, 0.190551, -0.941304,
		0.866964, 0.371784, 0.331889,
		0.413203, -0.908552, -0.061609,
		25.872679, 34.570663, 32.331936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.214762, 35.329540, 31.966848>,  <25.583437, 35.206650, 32.375061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.214762, 35.329540, 31.966848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.116619, 34.942593, 31.941566>,  <26.057734, 34.710423, 31.926397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.116619, 34.942593, 31.941566>,  <26.214762, 35.329540, 31.966848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.116619, 34.942593, 31.941566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148029, 0.027049, -0.988613,
		0.958064, -0.251921, 0.136562,
		-0.245358, -0.967370, -0.063206,
		26.043011, 34.652382, 31.922604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.757799, 35.008327, 31.623507>,  <26.214762, 35.329540, 31.966848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.757799, 35.008327, 31.623507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.434969, 34.778385, 31.569592>,  <26.241270, 34.640419, 31.537243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.434969, 34.778385, 31.569592>,  <26.757799, 35.008327, 31.623507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.434969, 34.778385, 31.569592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136791, 0.040024, -0.989791,
		0.574384, -0.817273, 0.046333,
		-0.807075, -0.574858, -0.134785,
		26.192846, 34.605927, 31.529156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.940651, 34.591633, 31.095049>,  <26.757799, 35.008327, 31.623507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.940651, 34.591633, 31.095049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.542015, 34.564594, 31.113979>,  <26.302834, 34.548370, 31.125338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.542015, 34.564594, 31.113979>,  <26.940651, 34.591633, 31.095049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.542015, 34.564594, 31.113979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032072, -0.211107, -0.976937,
		0.076030, -0.975123, 0.208219,
		-0.996590, -0.067598, 0.047325,
		26.243038, 34.544315, 31.128178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.822296, 34.074791, 30.675945>,  <26.940651, 34.591633, 31.095049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.822296, 34.074791, 30.675945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.463900, 34.251541, 30.693604>,  <26.248861, 34.357590, 30.704199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.463900, 34.251541, 30.693604>,  <26.822296, 34.074791, 30.675945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.463900, 34.251541, 30.693604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117415, -0.139862, -0.983185,
		-0.428267, -0.886108, 0.177197,
		-0.895992, 0.441872, 0.044144,
		26.195103, 34.384102, 30.706846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.463568, 33.717888, 30.158417>,  <26.822296, 34.074791, 30.675945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.463568, 33.717888, 30.158417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.243847, 34.044884, 30.227671>,  <26.112015, 34.241081, 30.269224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.243847, 34.044884, 30.227671>,  <26.463568, 33.717888, 30.158417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.243847, 34.044884, 30.227671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299304, 0.000968, -0.954157,
		-0.780183, -0.575940, 0.244147,
		-0.549302, 0.817491, 0.173137,
		26.079056, 34.290131, 30.279612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.792706, 33.560677, 29.928587>,  <26.463568, 33.717888, 30.158417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.792706, 33.560677, 29.928587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.827948, 33.959000, 29.918791>,  <25.849092, 34.197994, 29.912912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.827948, 33.959000, 29.918791>,  <25.792706, 33.560677, 29.928587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.827948, 33.959000, 29.918791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284033, 0.001549, -0.958813,
		-0.954758, 0.091434, 0.282980,
		0.088107, 0.995810, -0.024491,
		25.854380, 34.257744, 29.911444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.147308, 33.836349, 29.747307>,  <25.792706, 33.560677, 29.928587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.147308, 33.836349, 29.747307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.405890, 34.117901, 29.629559>,  <25.561037, 34.286831, 29.558910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.405890, 34.117901, 29.629559>,  <25.147308, 33.836349, 29.747307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.405890, 34.117901, 29.629559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399549, -0.016365, -0.916566,
		-0.649970, 0.710131, 0.270655,
		0.646452, 0.703880, -0.294369,
		25.599825, 34.329063, 29.541248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.807482, 34.275223, 29.261824>,  <25.147308, 33.836349, 29.747307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.807482, 34.275223, 29.261824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.186069, 34.379314, 29.185431>,  <25.413221, 34.441769, 29.139595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.186069, 34.379314, 29.185431>,  <24.807482, 34.275223, 29.261824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.186069, 34.379314, 29.185431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240225, 0.172668, -0.955237,
		-0.215608, 0.949981, 0.225940,
		0.946470, 0.260233, -0.190981,
		25.470011, 34.457386, 29.128136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.867905, 35.056686, 28.927189>,  <24.807482, 34.275223, 29.261824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.867905, 35.056686, 28.927189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.213757, 34.884979, 28.822765>,  <25.421267, 34.781956, 28.760111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.213757, 34.884979, 28.822765>,  <24.867905, 35.056686, 28.927189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.213757, 34.884979, 28.822765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151717, 0.272267, -0.950185,
		0.478958, 0.861163, 0.170283,
		0.864627, -0.429264, -0.261058,
		25.473145, 34.756199, 28.744448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.212362, 35.467377, 28.518244>,  <24.867905, 35.056686, 28.927189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.212362, 35.467377, 28.518244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.412672, 35.131664, 28.433554>,  <25.532858, 34.930237, 28.382740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.412672, 35.131664, 28.433554>,  <25.212362, 35.467377, 28.518244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.412672, 35.131664, 28.433554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091418, 0.191955, -0.977136,
		0.860736, 0.508681, 0.019400,
		0.500775, -0.839284, -0.211726,
		25.562904, 34.879879, 28.370035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.764160, 35.785984, 28.055254>,  <25.212362, 35.467377, 28.518244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.764160, 35.785984, 28.055254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.716204, 35.392666, 28.000473>,  <25.687429, 35.156673, 27.967606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.716204, 35.392666, 28.000473>,  <25.764160, 35.785984, 28.055254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.716204, 35.392666, 28.000473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074465, 0.128651, -0.988890,
		0.989991, -0.128756, 0.057797,
		-0.119890, -0.983296, -0.136951,
		25.680237, 35.097675, 27.959389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.153490, 35.602966, 27.478966>,  <25.764160, 35.785984, 28.055254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.153490, 35.602966, 27.478966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.923107, 35.278275, 27.517683>,  <25.784878, 35.083458, 27.540913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.923107, 35.278275, 27.517683>,  <26.153490, 35.602966, 27.478966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.923107, 35.278275, 27.517683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014249, -0.128355, -0.991626,
		0.817357, -0.569753, 0.085493,
		-0.575955, -0.811730, 0.096793,
		25.750320, 35.034756, 27.546721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.629902, 35.134972, 27.160486>,  <26.153490, 35.602966, 27.478966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.629902, 35.134972, 27.160486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.243956, 35.030262, 27.151493>,  <26.012388, 34.967438, 27.146097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.243956, 35.030262, 27.151493>,  <26.629902, 35.134972, 27.160486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.243956, 35.030262, 27.151493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042193, -0.069921, -0.996660,
		0.259329, -0.962593, 0.078509,
		-0.964867, -0.261775, -0.022482,
		25.954494, 34.951729, 27.144749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.671696, 34.529343, 26.792475>,  <26.629902, 35.134972, 27.160486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.671696, 34.529343, 26.792475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.295986, 34.664860, 26.770618>,  <26.070560, 34.746170, 26.757504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.295986, 34.664860, 26.770618>,  <26.671696, 34.529343, 26.792475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.295986, 34.664860, 26.770618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091158, 0.092815, -0.991502,
		-0.330841, -0.936272, -0.118063,
		-0.939273, 0.338792, -0.054642,
		26.014204, 34.766499, 26.754227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.511417, 34.319523, 26.157339>,  <26.671696, 34.529343, 26.792475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.511417, 34.319523, 26.157339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.191477, 34.548069, 26.230854>,  <25.999512, 34.685196, 26.274963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.191477, 34.548069, 26.230854>,  <26.511417, 34.319523, 26.157339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.191477, 34.548069, 26.230854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089121, 0.189753, -0.977779,
		-0.593544, -0.798458, -0.100853,
		-0.799852, 0.571366, 0.183787,
		25.951521, 34.719479, 26.285990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.804256, 33.943810, 25.944805>,  <26.511417, 34.319523, 26.157339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.804256, 33.943810, 25.944805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.776558, 34.342472, 25.927427>,  <25.759939, 34.581669, 25.917002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.776558, 34.342472, 25.927427>,  <25.804256, 33.943810, 25.944805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.776558, 34.342472, 25.927427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088684, -0.049524, -0.994828,
		-0.993650, -0.065034, 0.091816,
		-0.069245, 0.996653, -0.043442,
		25.755785, 34.641468, 25.914394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.256344, 34.229481, 25.501120>,  <25.804256, 33.943810, 25.944805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.256344, 34.229481, 25.501120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.542665, 34.507652, 25.475822>,  <25.714458, 34.674557, 25.460644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.542665, 34.507652, 25.475822>,  <25.256344, 34.229481, 25.501120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.542665, 34.507652, 25.475822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147652, 0.062211, -0.987081,
		-0.682514, 0.715894, 0.147212,
		0.715803, 0.695432, -0.063243,
		25.757406, 34.716282, 25.456850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.953350, 34.779018, 25.077705>,  <25.256344, 34.229481, 25.501120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.953350, 34.779018, 25.077705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.351847, 34.787598, 25.044128>,  <25.590944, 34.792744, 25.023983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.351847, 34.787598, 25.044128>,  <24.953350, 34.779018, 25.077705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.351847, 34.787598, 25.044128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084116, 0.007418, -0.996428,
		-0.020749, 0.999743, 0.009195,
		0.996240, 0.021448, -0.083940,
		25.650719, 34.794033, 25.018946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.778221, 34.395378, 24.451611>,  <24.953350, 34.779018, 25.077705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.778221, 34.395378, 24.451611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.956779, 34.039764, 24.492290>,  <25.063915, 33.826397, 24.516699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.956779, 34.039764, 24.492290>,  <24.778221, 34.395378, 24.451611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.956779, 34.039764, 24.492290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089731, -0.157553, -0.983425,
		0.890325, 0.429871, -0.150105,
		0.446396, -0.889038, 0.101700,
		25.090698, 33.773052, 24.522800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.966539, 34.234798, 23.621870>,  <24.778221, 34.395378, 24.451611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.966539, 34.234798, 23.621870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.063606, 33.905113, 23.826529>,  <25.121847, 33.707302, 23.949324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.063606, 33.905113, 23.826529>,  <24.966539, 34.234798, 23.621870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.063606, 33.905113, 23.826529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382603, -0.403350, -0.831219,
		0.891475, 0.397469, 0.217466,
		0.242668, -0.824214, 0.511649,
		25.136406, 33.657848, 23.980022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.610401, 33.938343, 23.452055>,  <24.966539, 34.234798, 23.621870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.610401, 33.938343, 23.452055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.504091, 33.593418, 23.624464>,  <25.440306, 33.386463, 23.727909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.504091, 33.593418, 23.624464>,  <25.610401, 33.938343, 23.452055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.504091, 33.593418, 23.624464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531544, -0.504077, -0.680711,
		0.804254, 0.048191, 0.592329,
		-0.265775, -0.862313, 0.431021,
		25.424358, 33.334724, 23.753771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.196106, 33.482559, 23.802494>,  <25.610401, 33.938343, 23.452055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.196106, 33.482559, 23.802494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.867912, 33.302376, 23.661697>,  <25.670996, 33.194267, 23.577219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.867912, 33.302376, 23.661697>,  <26.196106, 33.482559, 23.802494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.867912, 33.302376, 23.661697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495023, -0.251848, -0.831580,
		0.285940, -0.856541, 0.429622,
		-0.820482, -0.450455, -0.351994,
		25.621767, 33.167240, 23.556099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.332157, 32.821262, 24.105528>,  <26.196106, 33.482559, 23.802494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.332157, 32.821262, 24.105528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.570297, 33.022285, 23.854771>,  <26.713182, 33.142899, 23.704317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.570297, 33.022285, 23.854771>,  <26.332157, 32.821262, 24.105528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.570297, 33.022285, 23.854771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798578, -0.284191, 0.530574,
		0.088485, -0.816502, -0.570522,
		0.595352, 0.502554, -0.626893,
		26.748903, 33.173050, 23.666702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.805725, 32.417389, 23.704639>,  <26.332157, 32.821262, 24.105528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.805725, 32.417389, 23.704639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.935406, 32.765358, 23.853298>,  <27.013214, 32.974140, 23.942493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.935406, 32.765358, 23.853298>,  <26.805725, 32.417389, 23.704639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.935406, 32.765358, 23.853298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678254, -0.487621, 0.549725,
		0.659442, 0.073847, -0.748119,
		0.324203, 0.869927, 0.371645,
		27.032667, 33.026337, 23.964792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.591125, 32.535686, 23.674667>,  <26.805725, 32.417389, 23.704639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.591125, 32.535686, 23.674667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.455114, 32.734745, 23.993849>,  <27.373508, 32.854179, 24.185358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.455114, 32.734745, 23.993849>,  <27.591125, 32.535686, 23.674667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.455114, 32.734745, 23.993849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583108, -0.554138, 0.594068,
		0.737813, 0.667291, -0.101761,
		-0.340026, 0.497649, 0.797953,
		27.353107, 32.884041, 24.233234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.068975, 32.038948, 23.902994>,  <27.591125, 32.535686, 23.674667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.068975, 32.038948, 23.902994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.115583, 32.436207, 23.906757>,  <28.143549, 32.674561, 23.909016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.115583, 32.436207, 23.906757>,  <28.068975, 32.038948, 23.902994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.115583, 32.436207, 23.906757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186636, -0.031198, 0.981934,
		0.975495, -0.112659, -0.188992,
		0.116520, 0.993144, 0.009407,
		28.150539, 32.734150, 23.909580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.636219, 32.203648, 24.311567>,  <28.068975, 32.038948, 23.902994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.636219, 32.203648, 24.311567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.390532, 32.519192, 24.303167>,  <28.243118, 32.708519, 24.298126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.390532, 32.519192, 24.303167>,  <28.636219, 32.203648, 24.311567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.390532, 32.519192, 24.303167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138229, 0.133754, 0.981327,
		0.776935, 0.599847, -0.191197,
		-0.614219, 0.788856, -0.021002,
		28.206266, 32.755848, 24.296867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.053659, 32.851555, 24.455854>,  <28.636219, 32.203648, 24.311567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.053659, 32.851555, 24.455854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.670336, 32.863129, 24.569563>,  <28.440342, 32.870075, 24.637789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.670336, 32.863129, 24.569563>,  <29.053659, 32.851555, 24.455854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.670336, 32.863129, 24.569563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270196, 0.415426, 0.868571,
		-0.092961, 0.909166, -0.405925,
		-0.958307, 0.028936, 0.284271,
		28.382843, 32.871811, 24.654844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.057009, 33.508129, 24.788696>,  <29.053659, 32.851555, 24.455854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.057009, 33.508129, 24.788696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.736759, 33.305168, 24.916159>,  <28.544609, 33.183392, 24.992636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.736759, 33.305168, 24.916159>,  <29.057009, 33.508129, 24.788696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.736759, 33.305168, 24.916159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312490, 0.100164, 0.944625,
		-0.511223, 0.855868, 0.078364,
		-0.800625, -0.507403, 0.318656,
		28.496572, 33.152946, 25.011755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.022852, 33.804878, 25.383406>,  <29.057009, 33.508129, 24.788696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.022852, 33.804878, 25.383406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.759375, 33.506893, 25.425659>,  <28.601288, 33.328102, 25.451012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.759375, 33.506893, 25.425659>,  <29.022852, 33.804878, 25.383406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.759375, 33.506893, 25.425659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120128, 0.034468, 0.992160,
		-0.742759, 0.666220, 0.066786,
		-0.658695, -0.744958, 0.105633,
		28.561766, 33.283405, 25.457350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.613380, 34.022552, 25.846348>,  <29.022852, 33.804878, 25.383406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.613380, 34.022552, 25.846348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.549480, 33.629486, 25.883991>,  <28.511141, 33.393646, 25.906578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.549480, 33.629486, 25.883991>,  <28.613380, 34.022552, 25.846348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.549480, 33.629486, 25.883991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025324, 0.099383, 0.994727,
		-0.986832, 0.156525, -0.040761,
		-0.159750, -0.982661, 0.094111,
		28.501554, 33.334686, 25.912224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.092985, 33.931965, 26.318794>,  <28.613380, 34.022552, 25.846348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.092985, 33.931965, 26.318794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.304028, 33.592186, 26.315260>,  <28.430653, 33.388321, 26.313139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.304028, 33.592186, 26.315260>,  <28.092985, 33.931965, 26.318794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.304028, 33.592186, 26.315260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113534, 0.060203, 0.991708,
		-0.841869, -0.524234, 0.128204,
		0.527605, -0.849444, -0.008835,
		28.462309, 33.337353, 26.312609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.875780, 33.506397, 26.887627>,  <28.092985, 33.931965, 26.318794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.875780, 33.506397, 26.887627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.225767, 33.335197, 26.797073>,  <28.435759, 33.232479, 26.742741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.225767, 33.335197, 26.797073>,  <27.875780, 33.506397, 26.887627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.225767, 33.335197, 26.797073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200681, -0.104935, 0.974020,
		-0.440635, -0.897667, -0.005924,
		0.874968, -0.427998, -0.226383,
		28.488258, 33.206799, 26.729158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.931103, 32.864441, 27.227135>,  <27.875780, 33.506397, 26.887627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.931103, 32.864441, 27.227135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.311649, 32.964828, 27.155670>,  <28.539976, 33.025059, 27.112791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.311649, 32.964828, 27.155670>,  <27.931103, 32.864441, 27.227135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.311649, 32.964828, 27.155670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226848, -0.178330, 0.957465,
		0.208432, -0.951427, -0.226588,
		0.951365, 0.250968, -0.178660,
		28.597059, 33.040119, 27.102072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.228668, 32.386501, 27.638006>,  <27.931103, 32.864441, 27.227135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.228668, 32.386501, 27.638006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.517363, 32.650673, 27.555132>,  <28.690578, 32.809177, 27.505407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.517363, 32.650673, 27.555132>,  <28.228668, 32.386501, 27.638006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.517363, 32.650673, 27.555132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281271, -0.006341, 0.959607,
		0.632443, -0.750858, -0.190337,
		0.721736, 0.660433, -0.207184,
		28.733883, 32.848804, 27.492977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.813829, 32.033649, 27.926405>,  <28.228668, 32.386501, 27.638006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.813829, 32.033649, 27.926405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.884697, 32.427059, 27.912043>,  <28.927217, 32.663105, 27.903425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.884697, 32.427059, 27.912043>,  <28.813829, 32.033649, 27.926405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.884697, 32.427059, 27.912043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355504, -0.029935, 0.934195,
		0.917730, -0.178274, -0.354951,
		0.177169, 0.983525, -0.035905,
		28.937847, 32.722118, 27.901272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.554407, 32.029579, 28.071836>,  <28.813829, 32.033649, 27.926405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.554407, 32.029579, 28.071836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.400347, 32.394093, 28.130106>,  <29.307911, 32.612801, 28.165068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.400347, 32.394093, 28.130106>,  <29.554407, 32.029579, 28.071836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.400347, 32.394093, 28.130106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196892, -0.073073, 0.977698,
		0.901605, 0.405245, -0.151280,
		-0.385153, 0.911283, 0.145673,
		29.284801, 32.667477, 28.173807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.124899, 32.464294, 28.380775>,  <29.554407, 32.029579, 28.071836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.124899, 32.464294, 28.380775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.766800, 32.618572, 28.470015>,  <29.551941, 32.711140, 28.523558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.766800, 32.618572, 28.470015>,  <30.124899, 32.464294, 28.380775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.766800, 32.618572, 28.470015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260869, 0.047798, 0.964190,
		0.361216, 0.921389, -0.143406,
		-0.895249, 0.385691, 0.223097,
		29.498226, 32.734280, 28.536943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.224751, 32.999989, 28.918749>,  <30.124899, 32.464294, 28.380775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.224751, 32.999989, 28.918749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.827990, 32.963017, 28.953596>,  <29.589933, 32.940834, 28.974504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.827990, 32.963017, 28.953596>,  <30.224751, 32.999989, 28.918749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.827990, 32.963017, 28.953596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061292, 0.252427, 0.965673,
		-0.111251, 0.963191, -0.244718,
		-0.991900, -0.092433, 0.087119,
		29.530420, 32.935287, 28.979733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.979589, 33.640640, 29.157568>,  <30.224751, 32.999989, 28.918749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.979589, 33.640640, 29.157568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.725681, 33.349606, 29.261637>,  <29.573336, 33.174988, 29.324078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.725681, 33.349606, 29.261637>,  <29.979589, 33.640640, 29.157568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.725681, 33.349606, 29.261637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077460, 0.275089, 0.958293,
		-0.768807, 0.628451, -0.118260,
		-0.634772, -0.727582, 0.260170,
		29.535250, 33.131332, 29.339687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.438009, 33.975224, 29.430000>,  <29.979589, 33.640640, 29.157568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.438009, 33.975224, 29.430000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.413235, 33.608894, 29.588715>,  <29.398371, 33.389099, 29.683943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.413235, 33.608894, 29.588715>,  <29.438009, 33.975224, 29.430000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.413235, 33.608894, 29.588715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339612, 0.393165, 0.854450,
		-0.938524, -0.081832, -0.335374,
		-0.061936, -0.915819, 0.396786,
		29.394653, 33.334148, 29.707750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.876488, 34.049629, 29.837481>,  <29.438009, 33.975224, 29.430000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.876488, 34.049629, 29.837481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.035168, 33.703262, 29.959343>,  <29.130375, 33.495441, 30.032461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.035168, 33.703262, 29.959343>,  <28.876488, 34.049629, 29.837481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.035168, 33.703262, 29.959343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340652, 0.169318, 0.924818,
		-0.852400, -0.470656, -0.227809,
		0.396698, -0.865918, 0.304657,
		29.154177, 33.443485, 30.050739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.426310, 33.787056, 30.157110>,  <28.876488, 34.049629, 29.837481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.426310, 33.787056, 30.157110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.713276, 33.547821, 30.299999>,  <28.885456, 33.404282, 30.385733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.713276, 33.547821, 30.299999>,  <28.426310, 33.787056, 30.157110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.713276, 33.547821, 30.299999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357009, 0.124682, 0.925743,
		-0.598213, -0.791674, -0.124073,
		0.717416, -0.598087, 0.357221,
		28.928501, 33.368397, 30.407166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.155043, 33.456825, 30.688070>,  <28.426310, 33.787056, 30.157110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.155043, 33.456825, 30.688070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.543375, 33.425755, 30.778801>,  <28.776375, 33.407112, 30.833239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.543375, 33.425755, 30.778801>,  <28.155043, 33.456825, 30.688070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.543375, 33.425755, 30.778801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228744, -0.016653, 0.973344,
		-0.071829, -0.996840, -0.033935,
		0.970833, -0.077677, 0.226825,
		28.834625, 33.402451, 30.846848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.207340, 32.943958, 31.180540>,  <28.155043, 33.456825, 30.688070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.207340, 32.943958, 31.180540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.538303, 33.160767, 31.239342>,  <28.736881, 33.290852, 31.274622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.538303, 33.160767, 31.239342>,  <28.207340, 32.943958, 31.180540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.538303, 33.160767, 31.239342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194127, 0.030414, 0.980505,
		0.526980, -0.839817, 0.130385,
		0.827410, 0.542017, 0.147004,
		28.786526, 33.323372, 31.283443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.546137, 32.613667, 31.722874>,  <28.207340, 32.943958, 31.180540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.546137, 32.613667, 31.722874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.653648, 32.998661, 31.708065>,  <28.718155, 33.229660, 31.699179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.653648, 32.998661, 31.708065>,  <28.546137, 32.613667, 31.722874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.653648, 32.998661, 31.708065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181082, 0.088245, 0.979501,
		0.946027, -0.256564, 0.198008,
		0.268778, 0.962491, -0.037023,
		28.734282, 33.287407, 31.696959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.870174, 32.815159, 32.410400>,  <28.546137, 32.613667, 31.722874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.870174, 32.815159, 32.410400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.783459, 33.170033, 32.247475>,  <28.731430, 33.382957, 32.149719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.783459, 33.170033, 32.247475>,  <28.870174, 32.815159, 32.410400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.783459, 33.170033, 32.247475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337349, 0.323450, 0.884068,
		0.916078, 0.329064, 0.229171,
		-0.216790, 0.887185, -0.407314,
		28.718422, 33.436188, 32.125278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.035589, 33.329441, 32.887249>,  <28.870174, 32.815159, 32.410400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.035589, 33.329441, 32.887249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.804947, 33.539242, 32.636677>,  <28.666561, 33.665123, 32.486332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.804947, 33.539242, 32.636677>,  <29.035589, 33.329441, 32.887249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.804947, 33.539242, 32.636677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415503, 0.471924, 0.777589,
		0.703479, 0.708648, -0.054181,
		-0.576606, 0.524505, -0.626435,
		28.631966, 33.696594, 32.448746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.169008, 34.066719, 33.144978>,  <29.035589, 33.329441, 32.887249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.169008, 34.066719, 33.144978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.822708, 34.056286, 32.945057>,  <28.614929, 34.050026, 32.825104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.822708, 34.056286, 32.945057>,  <29.169008, 34.066719, 33.144978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.822708, 34.056286, 32.945057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435051, 0.532887, 0.725784,
		0.247409, 0.845785, -0.472692,
		-0.865748, -0.026080, -0.499800,
		28.562984, 34.048462, 32.795116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.840370, 34.243847, 32.945946>,  <29.169008, 34.066719, 33.144978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.840370, 34.243847, 32.945946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.838663, 34.630318, 33.049080>,  <29.837639, 34.862202, 33.110958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.838663, 34.630318, 33.049080>,  <29.840370, 34.243847, 32.945946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.838663, 34.630318, 33.049080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703566, -0.180324, 0.687371,
		0.710617, 0.184334, -0.679002,
		-0.004266, 0.966180, 0.257833,
		29.837383, 34.920174, 33.126431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.487701, 34.551601, 32.782017>,  <29.840370, 34.243847, 32.945946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.487701, 34.551601, 32.782017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.319481, 34.733219, 33.096210>,  <30.218548, 34.842190, 33.284725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.319481, 34.733219, 33.096210>,  <30.487701, 34.551601, 32.782017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.319481, 34.733219, 33.096210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775997, -0.268552, 0.570709,
		0.470070, 0.849543, -0.239397,
		-0.420551, 0.454045, 0.785481,
		30.193316, 34.869434, 33.331856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.012135, 34.432850, 33.255054>,  <30.487701, 34.551601, 32.782017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.012135, 34.432850, 33.255054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.722448, 34.620571, 33.457150>,  <30.548635, 34.733204, 33.578407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.722448, 34.620571, 33.457150>,  <31.012135, 34.432850, 33.255054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.722448, 34.620571, 33.457150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489444, -0.166279, 0.856035,
		0.485751, 0.867239, -0.109276,
		-0.724217, 0.469304, 0.505236,
		30.505184, 34.761364, 33.608719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.302254, 35.063374, 33.662266>,  <31.012135, 34.432850, 33.255054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.302254, 35.063374, 33.662266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.975267, 34.936596, 33.854637>,  <30.779076, 34.860531, 33.970062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.975267, 34.936596, 33.854637>,  <31.302254, 35.063374, 33.662266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.975267, 34.936596, 33.854637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529713, -0.085827, 0.843824,
		-0.226168, 0.944553, 0.238050,
		-0.817467, -0.316944, 0.480930,
		30.730028, 34.841511, 33.998917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.294388, 35.527306, 34.314907>,  <31.302254, 35.063374, 33.662266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.294388, 35.527306, 34.314907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.094959, 35.180889, 34.329891>,  <30.975302, 34.973042, 34.338882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.094959, 35.180889, 34.329891>,  <31.294388, 35.527306, 34.314907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.094959, 35.180889, 34.329891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259787, -0.108049, 0.959602,
		-0.827004, 0.488164, 0.278856,
		-0.498573, -0.866038, 0.037462,
		30.945387, 34.921078, 34.341129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.745934, 35.570225, 34.729504>,  <31.294388, 35.527306, 34.314907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.745934, 35.570225, 34.729504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.871861, 35.190567, 34.728012>,  <30.947416, 34.962772, 34.727119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.871861, 35.190567, 34.728012>,  <30.745934, 35.570225, 34.729504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.871861, 35.190567, 34.728012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136861, 0.041509, 0.989720,
		-0.939233, -0.312093, 0.142969,
		0.314819, -0.949145, -0.003727,
		30.966307, 34.905823, 34.726894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.513903, 35.220734, 35.267769>,  <30.745934, 35.570225, 34.729504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.513903, 35.220734, 35.267769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.832966, 34.991676, 35.192059>,  <31.024405, 34.854244, 35.146633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.832966, 34.991676, 35.192059>,  <30.513903, 35.220734, 35.267769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.832966, 34.991676, 35.192059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219817, -0.016201, 0.975407,
		-0.561622, -0.819648, 0.112953,
		0.797660, -0.572639, -0.189271,
		31.072264, 34.819885, 35.135277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.646660, 34.888992, 35.904133>,  <30.513903, 35.220734, 35.267769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.646660, 34.888992, 35.904133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.975174, 34.791409, 35.697842>,  <31.172283, 34.732857, 35.574066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.975174, 34.791409, 35.697842>,  <30.646660, 34.888992, 35.904133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.975174, 34.791409, 35.697842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567378, 0.254545, 0.783128,
		-0.059778, -0.935783, 0.347474,
		0.821285, -0.243963, -0.515726,
		31.221560, 34.718220, 35.543125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.939299, 34.356945, 36.207836>,  <30.646660, 34.888992, 35.904133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.939299, 34.356945, 36.207836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.250757, 34.534912, 36.030857>,  <31.437632, 34.641693, 35.924671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.250757, 34.534912, 36.030857>,  <30.939299, 34.356945, 36.207836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.250757, 34.534912, 36.030857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424048, 0.146612, 0.893694,
		0.462488, -0.883489, -0.074507,
		0.778645, 0.444917, -0.442448,
		31.484350, 34.668388, 35.898121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.532835, 34.145020, 36.551254>,  <30.939299, 34.356945, 36.207836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.532835, 34.145020, 36.551254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.677858, 34.461113, 36.353634>,  <31.764872, 34.650768, 36.235062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.677858, 34.461113, 36.353634>,  <31.532835, 34.145020, 36.551254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.677858, 34.461113, 36.353634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530710, 0.260706, 0.806461,
		0.766094, -0.554585, -0.324864,
		0.362557, 0.790233, -0.494048,
		31.786625, 34.698181, 36.205418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.211250, 34.165897, 36.799934>,  <31.532835, 34.145020, 36.551254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.211250, 34.165897, 36.799934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.142033, 34.539806, 36.675827>,  <32.100502, 34.764153, 36.601364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.142033, 34.539806, 36.675827>,  <32.211250, 34.165897, 36.799934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.142033, 34.539806, 36.675827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416760, 0.354917, 0.836866,
		0.892394, 0.015507, -0.450989,
		-0.173041, 0.934769, -0.310264,
		32.090118, 34.820236, 36.582748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.837051, 34.455723, 36.937859>,  <32.211250, 34.165897, 36.799934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.837051, 34.455723, 36.937859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.566753, 34.746677, 36.890072>,  <32.404575, 34.921249, 36.861401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.566753, 34.746677, 36.890072>,  <32.837051, 34.455723, 36.937859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.566753, 34.746677, 36.890072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371152, 0.475777, 0.797422,
		0.636874, 0.494516, -0.591477,
		-0.675750, 0.727385, -0.119470,
		32.364029, 34.964893, 36.854233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.239941, 35.073380, 37.051914>,  <32.837051, 34.455723, 36.937859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.239941, 35.073380, 37.051914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.855537, 35.169701, 37.106281>,  <32.624893, 35.227493, 37.138901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.855537, 35.169701, 37.106281>,  <33.239941, 35.073380, 37.051914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.855537, 35.169701, 37.106281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237571, 0.467518, 0.851462,
		0.141492, 0.850553, -0.506498,
		-0.961010, 0.240804, 0.135917,
		32.567234, 35.241943, 37.147057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.358730, 35.638599, 37.376949>,  <33.239941, 35.073380, 37.051914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.358730, 35.638599, 37.376949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.979023, 35.547703, 37.463902>,  <32.751198, 35.493164, 37.516075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.979023, 35.547703, 37.463902>,  <33.358730, 35.638599, 37.376949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.979023, 35.547703, 37.463902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096592, 0.447151, 0.889228,
		-0.299274, 0.865111, -0.402515,
		-0.949266, -0.227243, 0.217383,
		32.694244, 35.479530, 37.529118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.103558, 36.183273, 37.764374>,  <33.358730, 35.638599, 37.376949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.103558, 36.183273, 37.764374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.841576, 35.899765, 37.869202>,  <32.684387, 35.729660, 37.932098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.841576, 35.899765, 37.869202>,  <33.103558, 36.183273, 37.764374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.841576, 35.899765, 37.869202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053190, 0.389189, 0.919621,
		-0.753797, 0.588367, -0.292599,
		-0.654951, -0.708771, 0.262074,
		32.645092, 35.687134, 37.947823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.792805, 36.547352, 38.274521>,  <33.103558, 36.183273, 37.764374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.792805, 36.547352, 38.274521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.655830, 36.174831, 38.324184>,  <32.573647, 35.951321, 38.353981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.655830, 36.174831, 38.324184>,  <32.792805, 36.547352, 38.274521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.655830, 36.174831, 38.324184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274490, 0.225551, 0.934763,
		-0.898550, 0.286018, -0.332870,
		-0.342438, -0.931301, 0.124159,
		32.553101, 35.895443, 38.361431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.130947, 36.540039, 38.538105>,  <32.792805, 36.547352, 38.274521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.130947, 36.540039, 38.538105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.284985, 36.190987, 38.658245>,  <32.377407, 35.981556, 38.730328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.284985, 36.190987, 38.658245>,  <32.130947, 36.540039, 38.538105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.284985, 36.190987, 38.658245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332079, 0.172620, 0.927322,
		-0.861060, -0.456847, -0.223309,
		0.385097, -0.872636, 0.300345,
		32.400513, 35.929195, 38.748348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.693718, 36.447769, 39.048527>,  <32.130947, 36.540039, 38.538105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.693718, 36.447769, 39.048527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.973846, 36.175297, 39.133888>,  <32.141926, 36.011814, 39.185104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.973846, 36.175297, 39.133888>,  <31.693718, 36.447769, 39.048527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.973846, 36.175297, 39.133888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218267, 0.080296, 0.972580,
		-0.679637, -0.727700, -0.092446,
		0.700323, -0.681180, 0.213405,
		32.183945, 35.970943, 39.197910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.479967, 36.091625, 39.547024>,  <31.693718, 36.447769, 39.048527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.479967, 36.091625, 39.547024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.850868, 35.941990, 39.553474>,  <32.073410, 35.852207, 39.557346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.850868, 35.941990, 39.553474>,  <31.479967, 36.091625, 39.547024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.850868, 35.941990, 39.553474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086564, -0.172255, 0.981242,
		-0.364293, -0.911255, -0.192107,
		0.927252, -0.374089, 0.016131,
		32.129044, 35.829765, 39.558315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.534670, 35.422352, 39.930782>,  <31.479967, 36.091625, 39.547024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.534670, 35.422352, 39.930782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.905165, 35.572376, 39.945839>,  <32.127460, 35.662392, 39.954872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.905165, 35.572376, 39.945839>,  <31.534670, 35.422352, 39.930782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.905165, 35.572376, 39.945839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022126, -0.153793, 0.987855,
		0.376297, -0.914153, -0.150747,
		0.926235, 0.375062, 0.037645,
		32.183037, 35.684895, 39.957134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.013939, 34.925537, 40.226475>,  <31.534670, 35.422352, 39.930782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.013939, 34.925537, 40.226475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.185352, 35.285290, 40.261059>,  <32.288200, 35.501141, 40.281811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.185352, 35.285290, 40.261059>,  <32.013939, 34.925537, 40.226475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.185352, 35.285290, 40.261059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063237, -0.125315, 0.990100,
		0.901311, -0.418822, -0.110575,
		0.428532, 0.899380, 0.086463,
		32.313911, 35.555103, 40.286999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.640453, 34.751015, 40.476963>,  <32.013939, 34.925537, 40.226475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.640453, 34.751015, 40.476963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.553658, 35.128437, 40.577065>,  <32.501579, 35.354889, 40.637127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.553658, 35.128437, 40.577065>,  <32.640453, 34.751015, 40.476963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.553658, 35.128437, 40.577065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348197, -0.314309, 0.883158,
		0.911963, 0.104495, 0.396743,
		-0.216986, 0.943552, 0.250253,
		32.488564, 35.411503, 40.652142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.826862, 34.754948, 41.185299>,  <32.640453, 34.751015, 40.476963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.826862, 34.754948, 41.185299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.634174, 35.103203, 41.145443>,  <32.518562, 35.312157, 41.121529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.634174, 35.103203, 41.145443>,  <32.826862, 34.754948, 41.185299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.634174, 35.103203, 41.145443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097418, 0.059790, 0.993446,
		0.870892, 0.488272, 0.056014,
		-0.481722, 0.870641, -0.099637,
		32.489658, 35.364395, 41.115551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.072182, 35.232784, 41.680805>,  <32.826862, 34.754948, 41.185299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.072182, 35.232784, 41.680805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.723526, 35.399456, 41.577560>,  <32.514332, 35.499458, 41.515614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.723526, 35.399456, 41.577560>,  <33.072182, 35.232784, 41.680805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.723526, 35.399456, 41.577560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217100, 0.143920, 0.965482,
		0.439440, 0.897590, -0.034987,
		-0.871642, 0.416675, -0.258111,
		32.462032, 35.524460, 41.500126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.077351, 35.930813, 42.091141>,  <33.072182, 35.232784, 41.680805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.077351, 35.930813, 42.091141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710426, 35.793602, 42.010281>,  <32.490273, 35.711273, 41.961765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710426, 35.793602, 42.010281>,  <33.077351, 35.930813, 42.091141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.710426, 35.793602, 42.010281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229341, 0.040184, 0.972516,
		-0.325479, 0.938464, -0.115533,
		-0.917314, -0.343030, -0.202149,
		32.435230, 35.690693, 41.949635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.572014, 36.428001, 42.482109>,  <33.077351, 35.930813, 42.091141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.572014, 36.428001, 42.482109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.357395, 36.097801, 42.412064>,  <32.228622, 35.899681, 42.370037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.357395, 36.097801, 42.412064>,  <32.572014, 36.428001, 42.482109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.357395, 36.097801, 42.412064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394516, 0.061947, 0.916799,
		-0.745970, 0.560992, -0.358911,
		-0.536550, -0.825500, -0.175109,
		32.196430, 35.850151, 42.359531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.839947, 36.507511, 42.760120>,  <32.572014, 36.428001, 42.482109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.839947, 36.507511, 42.760120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.897024, 36.112240, 42.737686>,  <31.931271, 35.875076, 42.724224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.897024, 36.112240, 42.737686>,  <31.839947, 36.507511, 42.760120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.897024, 36.112240, 42.737686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438389, -0.113908, 0.891538,
		-0.887385, -0.102630, -0.449460,
		0.142696, -0.988176, -0.056088,
		31.939833, 35.815788, 42.720860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.189966, 36.163727, 42.966721>,  <31.839947, 36.507511, 42.760120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.189966, 36.163727, 42.966721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.481392, 35.893768, 43.013550>,  <31.656246, 35.731792, 43.041649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.481392, 35.893768, 43.013550>,  <31.189966, 36.163727, 42.966721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.481392, 35.893768, 43.013550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347276, -0.216615, 0.912402,
		-0.590420, -0.705399, -0.392194,
		0.728562, -0.674900, 0.117074,
		31.699961, 35.691299, 43.048672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.909393, 35.632118, 43.404846>,  <31.189966, 36.163727, 42.966721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.909393, 35.632118, 43.404846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.300941, 35.555107, 43.432407>,  <31.535870, 35.508900, 43.448944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.300941, 35.555107, 43.432407>,  <30.909393, 35.632118, 43.404846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.300941, 35.555107, 43.432407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124637, -0.294605, 0.947456,
		-0.162109, -0.936025, -0.312375,
		0.978870, -0.192525, 0.068906,
		31.594603, 35.497349, 43.453079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.028896, 34.900372, 43.633511>,  <30.909393, 35.632118, 43.404846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.028896, 34.900372, 43.633511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.349964, 35.114246, 43.739216>,  <31.542604, 35.242569, 43.802639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.349964, 35.114246, 43.739216>,  <31.028896, 34.900372, 43.633511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.349964, 35.114246, 43.739216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049831, -0.501651, 0.863634,
		0.594341, -0.680043, -0.429303,
		0.802668, 0.534685, 0.264264,
		31.590765, 35.274651, 43.818497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.390272, 34.448685, 44.044533>,  <31.028896, 34.900372, 43.633511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.390272, 34.448685, 44.044533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.579901, 34.793259, 44.117393>,  <31.693678, 35.000004, 44.161110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.579901, 34.793259, 44.117393>,  <31.390272, 34.448685, 44.044533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.579901, 34.793259, 44.117393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017444, -0.197648, 0.980118,
		0.880313, -0.467824, -0.078672,
		0.474072, 0.861439, 0.182153,
		31.722122, 35.051689, 44.172039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.898472, 34.222782, 44.478523>,  <31.390272, 34.448685, 44.044533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.898472, 34.222782, 44.478523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.858185, 34.616638, 44.535572>,  <31.834013, 34.852951, 44.569801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.858185, 34.616638, 44.535572>,  <31.898472, 34.222782, 44.478523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.858185, 34.616638, 44.535572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120260, -0.154351, 0.980670,
		0.987620, 0.081619, 0.133959,
		-0.100718, 0.984639, 0.142624,
		31.827969, 34.912029, 44.578358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.294247, 34.417236, 45.113285>,  <31.898472, 34.222782, 44.478523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.294247, 34.417236, 45.113285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.039242, 34.722164, 45.068645>,  <31.886238, 34.905121, 45.041862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.039242, 34.722164, 45.068645>,  <32.294247, 34.417236, 45.113285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.039242, 34.722164, 45.068645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157017, 0.013251, 0.987507,
		0.754270, 0.647070, 0.111249,
		-0.637512, 0.762315, -0.111596,
		31.847988, 34.950859, 45.035168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.567364, 34.982468, 45.555923>,  <32.294247, 34.417236, 45.113285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.567364, 34.982468, 45.555923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.171173, 34.957275, 45.506943>,  <31.933458, 34.942162, 45.477554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.171173, 34.957275, 45.506943>,  <32.567364, 34.982468, 45.555923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.171173, 34.957275, 45.506943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123969, 0.020793, 0.992068,
		-0.059930, 0.997798, -0.028402,
		-0.990475, -0.062976, -0.122450,
		31.874031, 34.938381, 45.470207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.179424, 35.593094, 45.920918>,  <32.567364, 34.982468, 45.555923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.179424, 35.593094, 45.920918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.916264, 35.296413, 45.868683>,  <31.758368, 35.118404, 45.837341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.916264, 35.296413, 45.868683>,  <32.179424, 35.593094, 45.920918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.916264, 35.296413, 45.868683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332294, 0.130283, 0.934134,
		-0.675831, 0.657960, -0.332175,
		-0.657900, -0.741697, -0.130587,
		31.718893, 35.073906, 45.829506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.484386, 35.781109, 46.209503>,  <32.179424, 35.593094, 45.920918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.484386, 35.781109, 46.209503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.478725, 35.381794, 46.232239>,  <31.475328, 35.142204, 46.245880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.478725, 35.381794, 46.232239>,  <31.484386, 35.781109, 46.209503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.478725, 35.381794, 46.232239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476842, 0.056700, 0.877158,
		-0.878875, -0.014686, -0.476826,
		-0.014154, -0.998283, 0.056835,
		31.474480, 35.082310, 46.249290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.842579, 35.706009, 46.512253>,  <31.484386, 35.781109, 46.209503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.842579, 35.706009, 46.512253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.038774, 35.360241, 46.556427>,  <31.156492, 35.152779, 46.582932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.038774, 35.360241, 46.556427>,  <30.842579, 35.706009, 46.512253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.038774, 35.360241, 46.556427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328755, -0.066187, 0.942093,
		-0.807058, -0.498389, -0.316647,
		0.490487, -0.864423, 0.110431,
		31.185921, 35.100914, 46.589558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.485653, 35.278072, 46.970074>,  <30.842579, 35.706009, 46.512253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.485653, 35.278072, 46.970074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.854460, 35.123573, 46.980629>,  <31.075743, 35.030872, 46.986961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.854460, 35.123573, 46.980629>,  <30.485653, 35.278072, 46.970074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.854460, 35.123573, 46.980629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041390, -0.030573, 0.998675,
		-0.384934, -0.921886, -0.044176,
		0.922016, -0.386252, 0.026388,
		31.131065, 35.007698, 46.988544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.420105, 34.669399, 47.337128>,  <30.485653, 35.278072, 46.970074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.420105, 34.669399, 47.337128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.805733, 34.775589, 47.340961>,  <31.037109, 34.839302, 47.343262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.805733, 34.775589, 47.340961>,  <30.420105, 34.669399, 47.337128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.805733, 34.775589, 47.340961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036170, -0.166925, 0.985306,
		0.263174, -0.949558, -0.170530,
		0.964070, 0.265475, 0.009585,
		31.094954, 34.855232, 47.343838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.676914, 34.259800, 47.795910>,  <30.420105, 34.669399, 47.337128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.676914, 34.259800, 47.795910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.973467, 34.525463, 47.757454>,  <31.151398, 34.684860, 47.734379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.973467, 34.525463, 47.757454>,  <30.676914, 34.259800, 47.795910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.973467, 34.525463, 47.757454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355633, -0.267343, 0.895574,
		0.569104, -0.698152, -0.434401,
		0.741381, 0.664163, -0.096140,
		31.195881, 34.724712, 47.728611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.398010, 33.903080, 47.722832>,  <30.676914, 34.259800, 47.795910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.398010, 33.903080, 47.722832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.411928, 34.263958, 47.894798>,  <31.420279, 34.480484, 47.997978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.411928, 34.263958, 47.894798>,  <31.398010, 33.903080, 47.722832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.411928, 34.263958, 47.894798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414318, -0.404490, 0.815309,
		0.909467, 0.149751, -0.387872,
		0.034796, 0.902199, 0.429915,
		31.422367, 34.534618, 48.023773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.903519, 33.789398, 48.162609>,  <31.398010, 33.903080, 47.722832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.903519, 33.789398, 48.162609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.764462, 34.144917, 48.282063>,  <31.681026, 34.358227, 48.353733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.764462, 34.144917, 48.282063>,  <31.903519, 33.789398, 48.162609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.764462, 34.144917, 48.282063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292732, -0.199695, 0.935110,
		0.890759, 0.412506, -0.190757,
		-0.347645, 0.888798, 0.298633,
		31.660168, 34.411556, 48.371651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.412754, 33.935421, 48.595444>,  <31.903519, 33.789398, 48.162609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.412754, 33.935421, 48.595444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.123936, 34.185585, 48.713772>,  <31.950644, 34.335682, 48.784767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.123936, 34.185585, 48.713772>,  <32.412754, 33.935421, 48.595444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.123936, 34.185585, 48.713772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295853, -0.107390, 0.949178,
		0.625394, 0.772871, -0.107489,
		-0.722048, 0.625411, 0.295817,
		31.907322, 34.373207, 48.802517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.764164, 34.360523, 49.096333>,  <32.412754, 33.935421, 48.595444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.764164, 34.360523, 49.096333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.365414, 34.368580, 49.126904>,  <32.126163, 34.373413, 49.145248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.365414, 34.368580, 49.126904>,  <32.764164, 34.360523, 49.096333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.365414, 34.368580, 49.126904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066549, -0.307805, 0.949119,
		0.042644, 0.951236, 0.305501,
		-0.996871, 0.020143, 0.076430,
		32.066353, 34.374622, 49.149834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.667809, 34.549599, 49.822418>,  <32.764164, 34.360523, 49.096333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.667809, 34.549599, 49.822418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.333183, 34.378067, 49.686028>,  <32.132408, 34.275150, 49.604195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.333183, 34.378067, 49.686028>,  <32.667809, 34.549599, 49.822418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.333183, 34.378067, 49.686028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092701, -0.502603, 0.859533,
		-0.539967, 0.750665, 0.380708,
		-0.836566, -0.428827, -0.340976,
		32.082214, 34.249420, 49.583736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.264717, 34.653595, 50.307579>,  <32.667809, 34.549599, 49.822418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.264717, 34.653595, 50.307579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.100159, 34.347492, 50.109535>,  <32.001423, 34.163830, 49.990707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.100159, 34.347492, 50.109535>,  <32.264717, 34.653595, 50.307579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.100159, 34.347492, 50.109535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111024, -0.581237, 0.806125,
		-0.904669, 0.276668, 0.324081,
		-0.411396, -0.765257, -0.495110,
		31.976740, 34.117916, 49.961002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.818687, 34.453308, 50.743294>,  <32.264717, 34.653595, 50.307579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.818687, 34.453308, 50.743294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.918715, 34.152493, 50.499359>,  <31.978731, 33.972004, 50.352997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.918715, 34.152493, 50.499359>,  <31.818687, 34.453308, 50.743294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.918715, 34.152493, 50.499359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024137, -0.634497, 0.772548,
		-0.967928, -0.178468, -0.176818,
		0.250066, -0.752039, -0.609840,
		31.993734, 33.926880, 50.316406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.332720, 33.932869, 50.910011>,  <31.818687, 34.453308, 50.743294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.332720, 33.932869, 50.910011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.666925, 33.763966, 50.769375>,  <31.867449, 33.662624, 50.684994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.666925, 33.763966, 50.769375>,  <31.332720, 33.932869, 50.910011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.666925, 33.763966, 50.769375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021798, -0.664847, 0.746662,
		-0.549038, -0.616181, -0.564692,
		0.835513, -0.422255, -0.351595,
		31.917580, 33.637291, 50.663895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.053436, 33.243778, 50.940022>,  <31.332720, 33.932869, 50.910011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.053436, 33.243778, 50.940022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.346214, 33.105667, 51.174980>,  <31.521881, 33.022800, 51.315956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.346214, 33.105667, 51.174980>,  <31.053436, 33.243778, 50.940022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.346214, 33.105667, 51.174980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639854, -0.644615, 0.418398,
		0.234183, -0.682095, -0.692751,
		0.731946, -0.345278, 0.587400,
		31.565798, 33.002083, 51.351200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.097567, 32.509281, 50.836529>,  <31.053436, 33.243778, 50.940022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.097567, 32.509281, 50.836529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.157614, 32.651951, 51.205364>,  <31.193642, 32.737553, 51.426666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.157614, 32.651951, 51.205364>,  <31.097567, 32.509281, 50.836529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.157614, 32.651951, 51.205364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678511, -0.641183, 0.358478,
		0.719087, -0.679463, 0.145751,
		0.150120, 0.356670, 0.922090,
		31.202650, 32.758953, 51.481991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.200314, 31.920689, 51.329338>,  <31.097567, 32.509281, 50.836529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.200314, 31.920689, 51.329338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.043730, 32.229122, 51.530212>,  <30.949780, 32.414181, 51.650738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.043730, 32.229122, 51.530212>,  <31.200314, 31.920689, 51.329338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.043730, 32.229122, 51.530212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640612, -0.620136, 0.452822,
		0.660586, -0.144444, 0.736724,
		-0.391462, 0.771082, 0.502186,
		30.926291, 32.460445, 51.680870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.224367, 31.902636, 52.104599>,  <31.200314, 31.920689, 51.329338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.224367, 31.902636, 52.104599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.906813, 32.038895, 51.903122>,  <30.716280, 32.120651, 51.782234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.906813, 32.038895, 51.903122>,  <31.224367, 31.902636, 52.104599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.906813, 32.038895, 51.903122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577827, -0.680607, 0.450434,
		-0.189377, 0.648639, 0.737159,
		-0.793885, 0.340648, -0.503693,
		30.668648, 32.141090, 51.752014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.518314, 32.401844, 52.478298>,  <31.224367, 31.902636, 52.104599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.518314, 32.401844, 52.478298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.829077, 32.151966, 52.509735>,  <32.015533, 32.002041, 52.528599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.829077, 32.151966, 52.509735>,  <31.518314, 32.401844, 52.478298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.829077, 32.151966, 52.509735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090347, -0.012921, -0.995826,
		0.623101, 0.780764, 0.046401,
		0.776906, -0.624693, 0.078591,
		32.062149, 31.964558, 52.533314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.640129, 32.555202, 51.871136>,  <31.518314, 32.401844, 52.478298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.640129, 32.555202, 51.871136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.861378, 32.239277, 51.977150>,  <31.994127, 32.049721, 52.040760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.861378, 32.239277, 51.977150>,  <31.640129, 32.555202, 51.871136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.861378, 32.239277, 51.977150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343131, -0.073914, -0.936375,
		0.759154, 0.608873, 0.230127,
		0.553123, -0.789817, 0.265036,
		32.027313, 32.002331, 52.056660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.329514, 32.588806, 51.621407>,  <31.640129, 32.555202, 51.871136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.329514, 32.588806, 51.621407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.200550, 32.211346, 51.651268>,  <32.123173, 31.984869, 51.669186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.200550, 32.211346, 51.651268>,  <32.329514, 32.588806, 51.621407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.200550, 32.211346, 51.651268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206735, -0.147150, -0.967268,
		0.923751, -0.296420, 0.242528,
		-0.322405, -0.943654, 0.074650,
		32.103828, 31.928249, 51.673664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.856281, 32.046223, 51.502399>,  <32.329514, 32.588806, 51.621407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.856281, 32.046223, 51.502399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.508869, 31.880157, 51.394100>,  <32.300423, 31.780519, 51.329121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.508869, 31.880157, 51.394100>,  <32.856281, 32.046223, 51.502399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.508869, 31.880157, 51.394100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337545, -0.095438, -0.936459,
		0.362941, -0.904728, 0.223026,
		-0.868526, -0.415160, -0.270748,
		32.248310, 31.755610, 51.312874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.960278, 31.474215, 51.025875>,  <32.856281, 32.046223, 51.502399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.960278, 31.474215, 51.025875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.599163, 31.636692, 50.969337>,  <32.382492, 31.734179, 50.935417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.599163, 31.636692, 50.969337>,  <32.960278, 31.474215, 51.025875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.599163, 31.636692, 50.969337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070385, -0.184669, -0.980277,
		-0.424285, -0.894932, 0.138127,
		-0.902789, 0.406195, -0.141342,
		32.328327, 31.758551, 50.926933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.224342, 31.117456, 50.835487>,  <32.960278, 31.474215, 51.025875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.224342, 31.117456, 50.835487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.251415, 31.486364, 50.683258>,  <32.267658, 31.707710, 50.591919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.251415, 31.486364, 50.683258>,  <32.224342, 31.117456, 50.835487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.251415, 31.486364, 50.683258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271237, -0.384090, -0.882556,
		-0.960130, -0.043489, -0.276152,
		0.067686, 0.922271, -0.380572,
		32.271721, 31.763046, 50.569088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.725313, 31.215631, 50.212208>,  <32.224342, 31.117456, 50.835487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.725313, 31.215631, 50.212208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.989445, 31.514774, 50.184864>,  <32.147923, 31.694260, 50.168457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.989445, 31.514774, 50.184864>,  <31.725313, 31.215631, 50.212208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.989445, 31.514774, 50.184864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045595, -0.130786, -0.990362,
		-0.749590, 0.650849, -0.120460,
		0.660331, 0.747857, -0.068360,
		32.187546, 31.739132, 50.164356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.419214, 31.732355, 49.726177>,  <31.725313, 31.215631, 50.212208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.419214, 31.732355, 49.726177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.817379, 31.770609, 49.727467>,  <32.056278, 31.793560, 49.728241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.817379, 31.770609, 49.727467>,  <31.419214, 31.732355, 49.726177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.817379, 31.770609, 49.727467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002946, 0.003014, -0.999991,
		-0.095641, 0.995412, 0.002718,
		0.995412, 0.095632, 0.003221,
		32.116001, 31.799299, 49.728432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.500998, 32.067204, 49.106430>,  <31.419214, 31.732355, 49.726177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.500998, 32.067204, 49.106430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.867252, 31.941099, 49.206207>,  <32.087006, 31.865438, 49.266075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.867252, 31.941099, 49.206207>,  <31.500998, 32.067204, 49.106430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.867252, 31.941099, 49.206207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230928, -0.095432, -0.968279,
		0.329061, 0.944196, -0.014580,
		0.915637, -0.315256, 0.249444,
		32.141945, 31.846521, 49.281040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.981144, 32.610954, 48.814697>,  <31.500998, 32.067204, 49.106430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.981144, 32.610954, 48.814697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.172676, 32.266220, 48.881577>,  <32.287594, 32.059380, 48.921703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.172676, 32.266220, 48.881577>,  <31.981144, 32.610954, 48.814697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.172676, 32.266220, 48.881577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280219, -0.030443, -0.959453,
		0.831985, 0.506266, 0.226927,
		0.478830, -0.861840, 0.167194,
		32.316326, 32.007668, 48.931736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.579456, 32.631977, 48.406734>,  <31.981144, 32.610954, 48.814697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.579456, 32.631977, 48.406734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.543415, 32.237991, 48.465702>,  <32.521790, 32.001602, 48.501083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.543415, 32.237991, 48.465702>,  <32.579456, 32.631977, 48.406734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.543415, 32.237991, 48.465702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305704, -0.168226, -0.937147,
		0.947854, -0.039369, 0.316264,
		-0.090099, -0.984962, 0.147418,
		32.516384, 31.942503, 48.509926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.189556, 32.383389, 48.125618>,  <32.579456, 32.631977, 48.406734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.189556, 32.383389, 48.125618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.946651, 32.065742, 48.135509>,  <32.800907, 31.875154, 48.141445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.946651, 32.065742, 48.135509>,  <33.189556, 32.383389, 48.125618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.946651, 32.065742, 48.135509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298625, -0.256987, -0.919120,
		0.736243, -0.550762, 0.393202,
		-0.607264, -0.794115, 0.024733,
		32.764473, 31.827509, 48.142929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.573067, 31.827318, 47.835030>,  <33.189556, 32.383389, 48.125618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.573067, 31.827318, 47.835030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.200989, 31.681587, 47.817142>,  <32.977741, 31.594149, 47.806412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.200989, 31.681587, 47.817142>,  <33.573067, 31.827318, 47.835030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.200989, 31.681587, 47.817142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208236, -0.423453, -0.881661,
		0.302278, -0.829429, 0.469761,
		-0.930196, -0.364328, -0.044717,
		32.921928, 31.572289, 47.803726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.704277, 31.237509, 47.539139>,  <33.573067, 31.827318, 47.835030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.704277, 31.237509, 47.539139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.307652, 31.258924, 47.491920>,  <33.069675, 31.271774, 47.463589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.307652, 31.258924, 47.491920>,  <33.704277, 31.237509, 47.539139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.307652, 31.258924, 47.491920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089378, -0.377162, -0.921825,
		-0.093877, -0.924598, 0.369195,
		-0.991563, 0.053540, -0.118045,
		33.010181, 31.274986, 47.456509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.552853, 30.685646, 47.116425>,  <33.704277, 31.237509, 47.539139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.552853, 30.685646, 47.116425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.267391, 30.962620, 47.074028>,  <33.096115, 31.128803, 47.048592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.267391, 30.962620, 47.074028>,  <33.552853, 30.685646, 47.116425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.267391, 30.962620, 47.074028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136824, -0.010602, -0.990539,
		-0.687005, -0.721404, -0.087175,
		-0.713654, 0.692433, -0.105989,
		33.053295, 31.170349, 47.042233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.107182, 30.544914, 46.578564>,  <33.552853, 30.685646, 47.116425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.107182, 30.544914, 46.578564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.050026, 30.940809, 46.578663>,  <33.015732, 31.178347, 46.578724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.050026, 30.940809, 46.578663>,  <33.107182, 30.544914, 46.578564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.050026, 30.940809, 46.578663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014705, 0.002374, -0.999889,
		-0.989630, -0.142869, -0.014893,
		-0.142888, 0.989739, 0.000249,
		33.007160, 31.237730, 46.578739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.628300, 30.691387, 45.982758>,  <33.107182, 30.544914, 46.578564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.628300, 30.691387, 45.982758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.784706, 31.048380, 46.072720>,  <32.878551, 31.262575, 46.126698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.784706, 31.048380, 46.072720>,  <32.628300, 30.691387, 45.982758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.784706, 31.048380, 46.072720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040492, 0.260807, -0.964542,
		-0.919492, 0.368046, 0.138119,
		0.391018, 0.892481, 0.224906,
		32.902012, 31.316124, 46.140190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.243065, 31.207546, 45.633644>,  <32.628300, 30.691387, 45.982758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.243065, 31.207546, 45.633644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.585815, 31.399601, 45.708733>,  <32.791466, 31.514833, 45.753784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.585815, 31.399601, 45.708733>,  <32.243065, 31.207546, 45.633644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.585815, 31.399601, 45.708733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040863, 0.299731, -0.953148,
		-0.513906, 0.824397, 0.237212,
		0.856872, 0.480136, 0.187721,
		32.842876, 31.543642, 45.765049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.147503, 31.804546, 45.413811>,  <32.243065, 31.207546, 45.633644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.147503, 31.804546, 45.413811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.546734, 31.785318, 45.429428>,  <32.786274, 31.773781, 45.438797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.546734, 31.785318, 45.429428>,  <32.147503, 31.804546, 45.413811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.546734, 31.785318, 45.429428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053281, 0.345256, -0.936995,
		0.031562, 0.937276, 0.347155,
		0.998081, -0.048070, 0.039041,
		32.846157, 31.770897, 45.441139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.433487, 32.444885, 45.347950>,  <32.147503, 31.804546, 45.413811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.433487, 32.444885, 45.347950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.725376, 32.192028, 45.243721>,  <32.900509, 32.040314, 45.181183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.725376, 32.192028, 45.243721>,  <32.433487, 32.444885, 45.347950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.725376, 32.192028, 45.243721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000869, 0.380247, -0.924885,
		0.683739, 0.675139, 0.276927,
		0.729726, -0.632139, -0.260576,
		32.944294, 32.002388, 45.165546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.904598, 32.779785, 44.912865>,  <32.433487, 32.444885, 45.347950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.904598, 32.779785, 44.912865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.016376, 32.407166, 44.819798>,  <33.083443, 32.183594, 44.763958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.016376, 32.407166, 44.819798>,  <32.904598, 32.779785, 44.912865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.016376, 32.407166, 44.819798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180834, 0.289044, -0.940081,
		0.942979, 0.220627, 0.249227,
		0.279445, -0.931546, -0.232665,
		33.100208, 32.127701, 44.749996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.490490, 32.867294, 44.511055>,  <32.904598, 32.779785, 44.912865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.490490, 32.867294, 44.511055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.329739, 32.506447, 44.448227>,  <33.233288, 32.289936, 44.410530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.329739, 32.506447, 44.448227>,  <33.490490, 32.867294, 44.511055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.329739, 32.506447, 44.448227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005179, 0.169286, -0.985554,
		0.915679, -0.396885, -0.063360,
		-0.401877, -0.902122, -0.157067,
		33.209175, 32.235809, 44.401108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.951923, 32.560841, 44.090332>,  <33.490490, 32.867294, 44.511055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.951923, 32.560841, 44.090332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.605919, 32.370785, 44.025837>,  <33.398315, 32.256752, 43.987141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.605919, 32.370785, 44.025837>,  <33.951923, 32.560841, 44.090332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.605919, 32.370785, 44.025837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070133, 0.203708, -0.976516,
		0.496827, -0.856006, -0.142887,
		-0.865011, -0.475139, -0.161242,
		33.346416, 32.228245, 43.977463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.073215, 32.204380, 43.540668>,  <33.951923, 32.560841, 44.090332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.073215, 32.204380, 43.540668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.674080, 32.179592, 43.531948>,  <33.434597, 32.164719, 43.526714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.674080, 32.179592, 43.531948>,  <34.073215, 32.204380, 43.540668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.674080, 32.179592, 43.531948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002537, 0.295271, -0.955410,
		0.065642, -0.953402, -0.294476,
		-0.997840, -0.061969, -0.021801,
		33.374729, 32.161003, 43.525410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.838730, 31.802046, 43.053391>,  <34.073215, 32.204380, 43.540668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.838730, 31.802046, 43.053391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.526581, 32.047878, 43.099541>,  <33.339291, 32.195377, 43.127232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.526581, 32.047878, 43.099541>,  <33.838730, 31.802046, 43.053391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.526581, 32.047878, 43.099541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042348, 0.132145, -0.990325,
		-0.623883, -0.777706, -0.077096,
		-0.780370, 0.614582, 0.115377,
		33.292469, 32.232254, 43.134155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.348213, 31.547073, 42.545544>,  <33.838730, 31.802046, 43.053391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.348213, 31.547073, 42.545544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.241680, 31.919767, 42.644287>,  <33.177761, 32.143383, 42.703533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.241680, 31.919767, 42.644287>,  <33.348213, 31.547073, 42.545544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.241680, 31.919767, 42.644287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312496, 0.158806, -0.936551,
		-0.911818, -0.326577, 0.248868,
		-0.266334, 0.931734, 0.246857,
		33.161781, 32.199287, 42.718346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.659409, 31.654528, 42.240925>,  <33.348213, 31.547073, 42.545544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.659409, 31.654528, 42.240925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.786217, 32.027897, 42.308121>,  <32.862301, 32.251919, 42.348438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.786217, 32.027897, 42.308121>,  <32.659409, 31.654528, 42.240925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.786217, 32.027897, 42.308121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356714, 0.281471, -0.890802,
		-0.878778, 0.222482, 0.422198,
		0.317024, 0.933421, 0.167988,
		32.881325, 32.307922, 42.358517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.102058, 32.012260, 42.011860>,  <32.659409, 31.654528, 42.240925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.102058, 32.012260, 42.011860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.397240, 32.282200, 42.012466>,  <32.574348, 32.444164, 42.012833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.397240, 32.282200, 42.012466>,  <32.102058, 32.012260, 42.011860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.397240, 32.282200, 42.012466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264193, 0.290967, -0.919533,
		-0.620988, 0.678172, 0.393011,
		0.737954, 0.674849, 0.001519,
		32.618626, 32.484653, 42.012920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.978527, 32.483200, 41.575607>,  <32.102058, 32.012260, 42.011860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.978527, 32.483200, 41.575607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.365307, 32.585136, 41.578819>,  <32.597374, 32.646297, 41.580746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.365307, 32.585136, 41.578819>,  <31.978527, 32.483200, 41.575607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.365307, 32.585136, 41.578819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092250, 0.379050, -0.920767,
		-0.237689, 0.889595, 0.390031,
		0.966951, 0.254836, 0.008031,
		32.655392, 32.661587, 41.581230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.006092, 33.104824, 41.386375>,  <31.978527, 32.483200, 41.575607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.006092, 33.104824, 41.386375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.372475, 32.966450, 41.305042>,  <32.592304, 32.883423, 41.256241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.372475, 32.966450, 41.305042>,  <32.006092, 33.104824, 41.386375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.372475, 32.966450, 41.305042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047813, 0.409026, -0.911269,
		0.398412, 0.844407, 0.358111,
		0.915959, -0.345939, -0.203334,
		32.647263, 32.862667, 41.244041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.310394, 33.596676, 40.962780>,  <32.006092, 33.104824, 41.386375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.310394, 33.596676, 40.962780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.557476, 33.285336, 40.917847>,  <32.705723, 33.098534, 40.890888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.557476, 33.285336, 40.917847>,  <32.310394, 33.596676, 40.962780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.557476, 33.285336, 40.917847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068795, 0.195777, -0.978232,
		0.783398, 0.596527, 0.174478,
		0.617701, -0.778349, -0.112334,
		32.742786, 33.051830, 40.884148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.749905, 33.855377, 40.554951>,  <32.310394, 33.596676, 40.962780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.749905, 33.855377, 40.554951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.797150, 33.462860, 40.494148>,  <32.825497, 33.227348, 40.457668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.797150, 33.462860, 40.494148>,  <32.749905, 33.855377, 40.554951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.797150, 33.462860, 40.494148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163006, 0.170162, -0.971841,
		0.979530, 0.090006, 0.180055,
		0.118110, -0.981297, -0.152007,
		32.832584, 33.168472, 40.448547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.180569, 33.759663, 40.050381>,  <32.749905, 33.855377, 40.554951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.180569, 33.759663, 40.050381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.039703, 33.386070, 40.026184>,  <32.955185, 33.161915, 40.011665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.039703, 33.386070, 40.026184>,  <33.180569, 33.759663, 40.050381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.039703, 33.386070, 40.026184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280624, -0.043707, -0.958822,
		0.892877, -0.354642, 0.277489,
		-0.352167, -0.933980, -0.060496,
		32.934052, 33.105877, 40.008034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.681324, 33.354710, 39.723766>,  <33.180569, 33.759663, 40.050381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.681324, 33.354710, 39.723766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.319973, 33.193687, 39.664623>,  <33.103165, 33.097073, 39.629139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.319973, 33.193687, 39.664623>,  <33.681324, 33.354710, 39.723766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.319973, 33.193687, 39.664623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233698, -0.173020, -0.956791,
		0.359583, -0.898894, 0.250379,
		-0.903374, -0.402559, -0.147855,
		33.048962, 33.072918, 39.620266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.773540, 32.767204, 39.323997>,  <33.681324, 33.354710, 39.723766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.773540, 32.767204, 39.323997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.389767, 32.846264, 39.243584>,  <33.159500, 32.893700, 39.195335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.389767, 32.846264, 39.243584>,  <33.773540, 32.767204, 39.323997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.389767, 32.846264, 39.243584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132844, -0.311985, -0.940754,
		-0.248657, -0.929301, 0.273074,
		-0.959439, 0.197648, -0.201030,
		33.101936, 32.905560, 39.183273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.629910, 32.411091, 38.733143>,  <33.773540, 32.767204, 39.323997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.629910, 32.411091, 38.733143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.302979, 32.640785, 38.752022>,  <33.106819, 32.778603, 38.763348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.302979, 32.640785, 38.752022>,  <33.629910, 32.411091, 38.733143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.302979, 32.640785, 38.752022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168281, -0.159573, -0.972737,
		-0.551053, -0.802985, 0.227057,
		-0.817326, 0.574239, 0.047194,
		33.057781, 32.813057, 38.766182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.119640, 32.067749, 38.425919>,  <33.629910, 32.411091, 38.733143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.119640, 32.067749, 38.425919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.004078, 32.450516, 38.414230>,  <32.934742, 32.680176, 38.407219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.004078, 32.450516, 38.414230>,  <33.119640, 32.067749, 38.425919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.004078, 32.450516, 38.414230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171546, -0.081770, -0.981777,
		-0.941864, -0.278625, 0.187778,
		-0.288903, 0.956913, -0.029220,
		32.917408, 32.737591, 38.405464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.393158, 32.065071, 38.233242>,  <33.119640, 32.067749, 38.425919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.393158, 32.065071, 38.233242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.562244, 32.414818, 38.137920>,  <32.663696, 32.624668, 38.080727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.562244, 32.414818, 38.137920>,  <32.393158, 32.065071, 38.233242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.562244, 32.414818, 38.137920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212397, -0.160048, -0.963988,
		-0.881023, 0.458105, 0.118060,
		0.422713, 0.874371, -0.238306,
		32.689056, 32.677128, 38.066429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.102192, 32.181164, 37.620506>,  <32.393158, 32.065071, 38.233242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.102192, 32.181164, 37.620506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.403408, 32.444256, 37.613235>,  <32.584137, 32.602112, 37.608871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.403408, 32.444256, 37.613235>,  <32.102192, 32.181164, 37.620506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.403408, 32.444256, 37.613235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055214, 0.035637, -0.997838,
		-0.655657, 0.752413, 0.063152,
		0.753037, 0.657727, -0.018178,
		32.629318, 32.641575, 37.607780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.989008, 32.525127, 37.073616>,  <32.102192, 32.181164, 37.620506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.989008, 32.525127, 37.073616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.376495, 32.612343, 37.121014>,  <32.608990, 32.664673, 37.149452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.376495, 32.612343, 37.121014>,  <31.989008, 32.525127, 37.073616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.376495, 32.612343, 37.121014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116387, 0.022532, -0.992948,
		-0.219170, 0.975680, -0.003550,
		0.968720, 0.218038, 0.118495,
		32.667110, 32.677753, 37.156563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.169258, 33.081333, 36.652370>,  <31.989008, 32.525127, 37.073616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.169258, 33.081333, 36.652370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.509109, 32.885616, 36.731091>,  <32.713020, 32.768188, 36.778320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.509109, 32.885616, 36.731091>,  <32.169258, 33.081333, 36.652370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.509109, 32.885616, 36.731091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235160, 0.017480, -0.971799,
		0.472050, 0.871947, 0.129913,
		0.849629, -0.489288, 0.196796,
		32.764000, 32.738831, 36.790131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.587395, 33.470043, 36.233135>,  <32.169258, 33.081333, 36.652370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.587395, 33.470043, 36.233135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.800457, 33.141129, 36.313267>,  <32.928291, 32.943779, 36.361343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.800457, 33.141129, 36.313267>,  <32.587395, 33.470043, 36.233135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.800457, 33.141129, 36.313267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446568, 0.072001, -0.891848,
		0.718930, 0.564503, 0.405557,
		0.532651, -0.822285, 0.200325,
		32.960251, 32.894444, 36.373363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.234619, 33.641453, 36.229942>,  <32.587395, 33.470043, 36.233135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.234619, 33.641453, 36.229942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.231873, 33.249962, 36.147930>,  <33.230225, 33.015068, 36.098724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.231873, 33.249962, 36.147930>,  <33.234619, 33.641453, 36.229942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.231873, 33.249962, 36.147930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577437, 0.163515, -0.799893,
		0.816406, -0.123888, 0.564033,
		-0.006870, -0.978731, -0.205032,
		33.229813, 32.956341, 36.086422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.972534, 33.535065, 35.991940>,  <33.234619, 33.641453, 36.229942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.972534, 33.535065, 35.991940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.745472, 33.218777, 35.900257>,  <33.609234, 33.029003, 35.845249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.745472, 33.218777, 35.900257>,  <33.972534, 33.535065, 35.991940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.745472, 33.218777, 35.900257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363666, 0.008934, -0.931487,
		0.738589, -0.612118, 0.282485,
		-0.567657, -0.790716, -0.229205,
		33.575176, 32.981564, 35.831497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.501514, 33.072422, 35.510242>,  <33.972534, 33.535065, 35.991940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.501514, 33.072422, 35.510242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.110260, 33.012619, 35.452408>,  <33.875507, 32.976738, 35.417709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.110260, 33.012619, 35.452408>,  <34.501514, 33.072422, 35.510242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.110260, 33.012619, 35.452408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124375, 0.136699, -0.982774,
		0.166704, -0.979264, -0.115114,
		-0.978131, -0.149515, -0.144585,
		33.816822, 32.967766, 35.409031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.639503, 32.372025, 35.277901>,  <34.501514, 33.072422, 35.510242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.639503, 32.372025, 35.277901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.028107, 32.400970, 35.368176>,  <35.261269, 32.418339, 35.422340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.028107, 32.400970, 35.368176>,  <34.639503, 32.372025, 35.277901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.028107, 32.400970, 35.368176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155709, -0.523004, 0.837987,
		0.178672, -0.849253, -0.496836,
		0.971510, 0.072364, 0.225682,
		35.319561, 32.422680, 35.435879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.829662, 31.729515, 35.569462>,  <34.639503, 32.372025, 35.277901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.829662, 31.729515, 35.569462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.117756, 31.977983, 35.693016>,  <35.290611, 32.127064, 35.767151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.117756, 31.977983, 35.693016>,  <34.829662, 31.729515, 35.569462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.117756, 31.977983, 35.693016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088039, -0.523498, 0.847466,
		0.688123, -0.583179, -0.431728,
		0.720233, 0.621170, 0.308889,
		35.333824, 32.164333, 35.785683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.279469, 31.308062, 36.035042>,  <34.829662, 31.729515, 35.569462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.279469, 31.308062, 36.035042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.425629, 31.672180, 36.112862>,  <35.513325, 31.890652, 36.159554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.425629, 31.672180, 36.112862>,  <35.279469, 31.308062, 36.035042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.425629, 31.672180, 36.112862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104727, -0.247873, 0.963115,
		0.924942, -0.331544, -0.185904,
		0.365396, 0.910295, 0.194547,
		35.535248, 31.945269, 36.171227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.879745, 31.152512, 36.453083>,  <35.279469, 31.308062, 36.035042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.879745, 31.152512, 36.453083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.743568, 31.521935, 36.523670>,  <35.661861, 31.743587, 36.566025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.743568, 31.521935, 36.523670>,  <35.879745, 31.152512, 36.453083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.743568, 31.521935, 36.523670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140511, -0.135605, 0.980749,
		0.929708, 0.358683, -0.083604,
		-0.340441, 0.923557, 0.176472,
		35.641438, 31.799002, 36.576611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.366573, 31.517740, 36.774086>,  <35.879745, 31.152512, 36.453083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.366573, 31.517740, 36.774086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.065498, 31.746506, 36.904552>,  <35.884853, 31.883766, 36.982830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.065498, 31.746506, 36.904552>,  <36.366573, 31.517740, 36.774086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.065498, 31.746506, 36.904552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202071, -0.270813, 0.941184,
		0.626606, 0.774321, 0.088269,
		-0.752683, 0.571915, 0.326162,
		35.839695, 31.918079, 37.002399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.627548, 32.023617, 37.350777>,  <36.366573, 31.517740, 36.774086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.627548, 32.023617, 37.350777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.235912, 31.946447, 37.376575>,  <36.000931, 31.900145, 37.392056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.235912, 31.946447, 37.376575>,  <36.627548, 32.023617, 37.350777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.235912, 31.946447, 37.376575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129582, -0.347108, 0.928830,
		-0.156809, 0.917766, 0.364850,
		-0.979091, -0.192927, 0.064496,
		35.942184, 31.888569, 37.395924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426441, 32.310265, 37.980370>,  <36.627548, 32.023617, 37.350777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.426441, 32.310265, 37.980370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.114273, 32.077511, 37.888844>,  <35.926971, 31.937859, 37.833927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.114273, 32.077511, 37.888844>,  <36.426441, 32.310265, 37.980370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.114273, 32.077511, 37.888844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013339, -0.381373, 0.924325,
		-0.625112, 0.718310, 0.305393,
		-0.780421, -0.581881, -0.228820,
		35.880146, 31.902946, 37.820198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.052044, 32.323357, 38.610340>,  <36.426441, 32.310265, 37.980370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.052044, 32.323357, 38.610340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.926086, 32.001923, 38.408314>,  <35.850513, 31.809063, 38.287098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.926086, 32.001923, 38.408314>,  <36.052044, 32.323357, 38.610340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.926086, 32.001923, 38.408314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051606, -0.516856, 0.854515,
		-0.947723, 0.295145, 0.121284,
		-0.314892, -0.803585, -0.505068,
		35.831619, 31.760847, 38.256794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.474236, 32.171860, 38.930462>,  <36.052044, 32.323357, 38.610340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.474236, 32.171860, 38.930462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.561935, 31.820124, 38.761375>,  <35.614555, 31.609081, 38.659924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.561935, 31.820124, 38.761375>,  <35.474236, 32.171860, 38.930462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.561935, 31.820124, 38.761375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030794, -0.426803, 0.903820,
		-0.975183, -0.211180, -0.066499,
		0.219250, -0.879342, -0.422714,
		35.627712, 31.556320, 38.634560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.027351, 31.724102, 39.150074>,  <35.474236, 32.171860, 38.930462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.027351, 31.724102, 39.150074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.326214, 31.482218, 39.039745>,  <35.505531, 31.337088, 38.973549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.326214, 31.482218, 39.039745>,  <35.027351, 31.724102, 39.150074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.326214, 31.482218, 39.039745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003115, -0.418171, 0.908363,
		-0.664640, -0.677831, -0.314324,
		0.747158, -0.604713, -0.275822,
		35.550362, 31.300804, 38.957001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.932625, 30.984341, 39.475361>,  <35.027351, 31.724102, 39.150074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.932625, 30.984341, 39.475361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.320633, 31.014980, 39.383114>,  <35.553440, 31.033365, 39.327766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.320633, 31.014980, 39.383114>,  <34.932625, 30.984341, 39.475361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.320633, 31.014980, 39.383114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242808, -0.343953, 0.907051,
		-0.009840, -0.935857, -0.352242,
		0.970024, 0.076602, -0.230618,
		35.611641, 31.037960, 39.313927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.193356, 30.419075, 39.795074>,  <34.932625, 30.984341, 39.475361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.193356, 30.419075, 39.795074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.508221, 30.658569, 39.735886>,  <35.697140, 30.802265, 39.700375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.508221, 30.658569, 39.735886>,  <35.193356, 30.419075, 39.795074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.508221, 30.658569, 39.735886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333590, -0.211535, 0.918679,
		0.518744, -0.772509, -0.366244,
		0.787161, 0.598734, -0.147969,
		35.744370, 30.838190, 39.691494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.782059, 30.090868, 40.138954>,  <35.193356, 30.419075, 39.795074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.782059, 30.090868, 40.138954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.874443, 30.479517, 40.118542>,  <35.929874, 30.712708, 40.106293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.874443, 30.479517, 40.118542>,  <35.782059, 30.090868, 40.138954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.874443, 30.479517, 40.118542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435305, -0.056284, 0.898522,
		0.870153, -0.229738, -0.435952,
		0.230962, 0.971624, -0.051030,
		35.943733, 30.771004, 40.103233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.528240, 30.094933, 40.360794>,  <35.782059, 30.090868, 40.138954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.528240, 30.094933, 40.360794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.364738, 30.454227, 40.425404>,  <36.266636, 30.669804, 40.464169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.364738, 30.454227, 40.425404>,  <36.528240, 30.094933, 40.360794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.364738, 30.454227, 40.425404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317983, -0.025729, 0.947747,
		0.855456, 0.438762, -0.275106,
		-0.408757, 0.898235, 0.161528,
		36.242111, 30.723698, 40.473862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.974319, 30.332079, 40.948795>,  <36.528240, 30.094933, 40.360794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.974319, 30.332079, 40.948795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.667213, 30.586126, 40.914955>,  <36.482948, 30.738554, 40.894650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.667213, 30.586126, 40.914955>,  <36.974319, 30.332079, 40.948795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.667213, 30.586126, 40.914955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002669, 0.128868, 0.991658,
		0.640721, 0.761590, -0.097246,
		-0.767769, 0.635117, -0.084601,
		36.436882, 30.776661, 40.889576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.121017, 30.783703, 41.474995>,  <36.974319, 30.332079, 40.948795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.121017, 30.783703, 41.474995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.732616, 30.848480, 41.404659>,  <36.499577, 30.887346, 41.362457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.732616, 30.848480, 41.404659>,  <37.121017, 30.783703, 41.474995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.732616, 30.848480, 41.404659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147021, 0.175455, 0.973448,
		0.188494, 0.971077, -0.146559,
		-0.971007, 0.161942, -0.175841,
		36.441315, 30.897062, 41.351906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.860935, 31.431427, 41.762535>,  <37.121017, 30.783703, 41.474995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.860935, 31.431427, 41.762535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.518425, 31.226715, 41.734615>,  <36.312920, 31.103888, 41.717861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.518425, 31.226715, 41.734615>,  <36.860935, 31.431427, 41.762535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.518425, 31.226715, 41.734615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163418, 0.140226, 0.976541,
		-0.489987, 0.847595, -0.203706,
		-0.856275, -0.511781, -0.069803,
		36.261543, 31.073181, 41.713673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.410770, 31.819750, 42.102020>,  <36.860935, 31.431427, 41.762535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.410770, 31.819750, 42.102020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.261242, 31.448803, 42.108265>,  <36.171524, 31.226234, 42.112011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.261242, 31.448803, 42.108265>,  <36.410770, 31.819750, 42.102020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.261242, 31.448803, 42.108265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276415, 0.127456, 0.952549,
		-0.885353, 0.351771, -0.303984,
		-0.373824, -0.927368, 0.015609,
		36.149094, 31.170593, 42.112949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.652096, 31.814659, 42.340828>,  <36.410770, 31.819750, 42.102020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.652096, 31.814659, 42.340828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.740005, 31.429373, 42.402687>,  <35.792751, 31.198202, 42.439804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.740005, 31.429373, 42.402687>,  <35.652096, 31.814659, 42.340828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.740005, 31.429373, 42.402687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151109, 0.123000, 0.980835,
		-0.963776, -0.238933, -0.118518,
		0.219776, -0.963215, 0.154649,
		35.805939, 31.140408, 42.449081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.072708, 31.589891, 42.700024>,  <35.652096, 31.814659, 42.340828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.072708, 31.589891, 42.700024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.356640, 31.319899, 42.780563>,  <35.527000, 31.157904, 42.828888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.356640, 31.319899, 42.780563>,  <35.072708, 31.589891, 42.700024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.356640, 31.319899, 42.780563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238019, 0.039188, 0.970470,
		-0.662938, -0.736795, -0.132841,
		0.709831, -0.674980, 0.201350,
		35.569588, 31.117405, 42.840969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.822338, 30.944008, 43.120377>,  <35.072708, 31.589891, 42.700024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.822338, 30.944008, 43.120377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.214581, 30.917812, 43.194263>,  <35.449928, 30.902096, 43.238594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.214581, 30.917812, 43.194263>,  <34.822338, 30.944008, 43.120377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.214581, 30.917812, 43.194263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179496, 0.078225, 0.980644,
		-0.078668, -0.994783, 0.064953,
		0.980608, -0.065487, 0.184714,
		35.508762, 30.898167, 43.249676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.826855, 30.554924, 43.634434>,  <34.822338, 30.944008, 43.120377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.826855, 30.554924, 43.634434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.195774, 30.709496, 43.636860>,  <35.417126, 30.802238, 43.638313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.195774, 30.709496, 43.636860>,  <34.826855, 30.554924, 43.634434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.195774, 30.709496, 43.636860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081202, 0.178422, 0.980598,
		0.377847, -0.904898, 0.195938,
		0.922300, 0.386426, 0.006063,
		35.472466, 30.825424, 43.638680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.093201, 30.304653, 44.250446>,  <34.826855, 30.554924, 43.634434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.093201, 30.304653, 44.250446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.318604, 30.616508, 44.141174>,  <35.453846, 30.803621, 44.075611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.318604, 30.616508, 44.141174>,  <35.093201, 30.304653, 44.250446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.318604, 30.616508, 44.141174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050609, 0.297481, 0.953385,
		0.824561, -0.551064, 0.128175,
		0.563506, 0.779637, -0.273180,
		35.487656, 30.850399, 44.059219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733799, 30.274775, 44.728153>,  <35.093201, 30.304653, 44.250446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.733799, 30.274775, 44.728153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.667698, 30.642935, 44.586418>,  <35.628036, 30.863831, 44.501377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.667698, 30.642935, 44.586418>,  <35.733799, 30.274775, 44.728153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.667698, 30.642935, 44.586418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027404, 0.363425, 0.931220,
		0.985870, 0.144178, -0.085281,
		-0.165255, 0.920399, -0.354339,
		35.618122, 30.919054, 44.480118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.203205, 30.788435, 45.035568>,  <35.733799, 30.274775, 44.728153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.203205, 30.788435, 45.035568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.900749, 31.020754, 44.914948>,  <35.719276, 31.160145, 44.842575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.900749, 31.020754, 44.914948>,  <36.203205, 30.788435, 45.035568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.900749, 31.020754, 44.914948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022035, 0.483125, 0.875274,
		0.654042, 0.655182, -0.378107,
		-0.756137, 0.580798, -0.301547,
		35.673908, 31.194994, 44.824482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.428326, 31.513065, 45.202423>,  <36.203205, 30.788435, 45.035568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.428326, 31.513065, 45.202423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.033283, 31.532238, 45.142639>,  <35.796257, 31.543741, 45.106770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.033283, 31.532238, 45.142639>,  <36.428326, 31.513065, 45.202423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.033283, 31.532238, 45.142639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117650, 0.404269, 0.907042,
		0.103898, 0.913384, -0.393619,
		-0.987605, 0.047930, -0.149463,
		35.737003, 31.546618, 45.097801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.219269, 32.134117, 45.450535>,  <36.428326, 31.513065, 45.202423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.219269, 32.134117, 45.450535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.855183, 31.968605, 45.443615>,  <35.636730, 31.869299, 45.439465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.855183, 31.968605, 45.443615>,  <36.219269, 32.134117, 45.450535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.855183, 31.968605, 45.443615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231686, 0.474141, 0.849418,
		-0.343267, 0.777161, -0.527436,
		-0.910214, -0.413777, -0.017301,
		35.582119, 31.844473, 45.438423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.689575, 32.675537, 45.491741>,  <36.219269, 32.134117, 45.450535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.689575, 32.675537, 45.491741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.554432, 32.324043, 45.626606>,  <35.473347, 32.113148, 45.707523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.554432, 32.324043, 45.626606>,  <35.689575, 32.675537, 45.491741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.554432, 32.324043, 45.626606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238307, 0.426418, 0.872569,
		-0.910529, 0.214454, -0.353477,
		-0.337855, -0.878736, 0.337160,
		35.453075, 32.060421, 45.727753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.270084, 32.897835, 45.983814>,  <35.689575, 32.675537, 45.491741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.270084, 32.897835, 45.983814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.270203, 32.518967, 46.112103>,  <35.270271, 32.291645, 46.189075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.270203, 32.518967, 46.112103>,  <35.270084, 32.897835, 45.983814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.270203, 32.518967, 46.112103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010310, 0.320711, 0.947121,
		-0.999947, 0.003031, 0.009859,
		0.000291, -0.947172, 0.320725,
		35.270290, 32.234814, 46.208321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.815758, 32.885616, 46.474861>,  <35.270084, 32.897835, 45.983814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.815758, 32.885616, 46.474861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.034225, 32.559723, 46.552750>,  <35.165306, 32.364189, 46.599483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.034225, 32.559723, 46.552750>,  <34.815758, 32.885616, 46.474861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.034225, 32.559723, 46.552750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048768, 0.262981, 0.963568,
		-0.836256, -0.516772, 0.183365,
		0.546166, -0.814732, 0.194718,
		35.198074, 32.315304, 46.611164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.476673, 32.453236, 46.881405>,  <34.815758, 32.885616, 46.474861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.476673, 32.453236, 46.881405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.849220, 32.331882, 46.961914>,  <35.072750, 32.259071, 47.010220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.849220, 32.331882, 46.961914>,  <34.476673, 32.453236, 46.881405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.849220, 32.331882, 46.961914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172310, 0.119668, 0.977747,
		-0.320713, -0.945326, 0.059181,
		0.931371, -0.303379, 0.201268,
		35.128632, 32.240868, 47.022293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.358936, 32.033901, 47.457577>,  <34.476673, 32.453236, 46.881405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.358936, 32.033901, 47.457577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.752808, 32.103191, 47.449528>,  <34.989128, 32.144764, 47.444698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.752808, 32.103191, 47.449528>,  <34.358936, 32.033901, 47.457577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.752808, 32.103191, 47.449528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036219, 0.316013, 0.948063,
		0.170587, -0.932807, 0.317445,
		0.984677, 0.173224, -0.020122,
		35.048210, 32.155159, 47.443493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.526989, 31.748526, 48.027477>,  <34.358936, 32.033901, 47.457577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.526989, 31.748526, 48.027477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.824425, 31.996050, 47.926159>,  <35.002884, 32.144566, 47.865368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.824425, 31.996050, 47.926159>,  <34.526989, 31.748526, 48.027477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.824425, 31.996050, 47.926159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030575, 0.409890, 0.911623,
		0.667943, -0.670124, 0.323708,
		0.743584, 0.618809, -0.253294,
		35.047501, 32.181694, 47.850170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.829967, 31.777962, 48.629784>,  <34.526989, 31.748526, 48.027477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.829967, 31.777962, 48.629784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.034599, 32.066456, 48.442978>,  <35.157379, 32.239552, 48.330894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.034599, 32.066456, 48.442978>,  <34.829967, 31.777962, 48.629784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.034599, 32.066456, 48.442978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128565, 0.473156, 0.871547,
		0.849561, -0.505910, 0.149333,
		0.511582, 0.721234, -0.467017,
		35.188072, 32.282825, 48.302872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.432854, 31.966061, 49.036526>,  <34.829967, 31.777962, 48.629784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.432854, 31.966061, 49.036526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.310047, 32.278072, 48.818424>,  <35.236362, 32.465279, 48.687565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.310047, 32.278072, 48.818424>,  <35.432854, 31.966061, 49.036526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.310047, 32.278072, 48.818424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082120, 0.592497, 0.801377,
		0.948156, 0.201258, -0.245960,
		-0.307014, 0.780028, -0.545252,
		35.217941, 32.512081, 48.654850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.864399, 32.516762, 49.281364>,  <35.432854, 31.966061, 49.036526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.864399, 32.516762, 49.281364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.530079, 32.659088, 49.114109>,  <35.329487, 32.744484, 49.013756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.530079, 32.659088, 49.114109>,  <35.864399, 32.516762, 49.281364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.530079, 32.659088, 49.114109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080767, 0.673613, 0.734658,
		0.543063, 0.647798, -0.534266,
		-0.835799, 0.355815, -0.418135,
		35.279339, 32.765831, 48.988670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.886166, 33.297836, 49.171551>,  <35.864399, 32.516762, 49.281364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.886166, 33.297836, 49.171551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.503799, 33.186714, 49.209591>,  <35.274380, 33.120041, 49.232414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.503799, 33.186714, 49.209591>,  <35.886166, 33.297836, 49.171551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.503799, 33.186714, 49.209591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130064, 0.690975, 0.711082,
		-0.263257, 0.667366, -0.696648,
		-0.955918, -0.277806, 0.095104,
		35.217026, 33.103371, 49.238121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.447712, 33.943024, 48.998032>,  <35.886166, 33.297836, 49.171551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.447712, 33.943024, 48.998032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.317795, 33.673412, 49.263420>,  <35.239845, 33.511646, 49.422653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.317795, 33.673412, 49.263420>,  <35.447712, 33.943024, 48.998032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.317795, 33.673412, 49.263420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125596, 0.664554, 0.736610,
		-0.937410, 0.322573, -0.131185,
		-0.324790, -0.674029, 0.663473,
		35.220356, 33.471203, 49.462463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.102909, 34.191292, 49.132874>,  <35.447712, 33.943024, 48.998032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.102909, 34.191292, 49.132874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.238926, 34.529320, 49.297909>,  <36.320538, 34.732136, 49.396931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.238926, 34.529320, 49.297909>,  <36.102909, 34.191292, 49.132874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.238926, 34.529320, 49.297909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292608, 0.321880, -0.900430,
		-0.893728, 0.426915, -0.137820,
		0.340045, 0.845066, 0.412592,
		36.340939, 34.782841, 49.421688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.730953, 34.699043, 48.869431>,  <36.102909, 34.191292, 49.132874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.730953, 34.699043, 48.869431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.095123, 34.815845, 48.986629>,  <36.313625, 34.885929, 49.056950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.095123, 34.815845, 48.986629>,  <35.730953, 34.699043, 48.869431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.095123, 34.815845, 48.986629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208227, 0.288518, -0.934558,
		-0.357434, 0.911860, 0.201872,
		0.910430, 0.292008, 0.293000,
		36.368252, 34.903446, 49.074528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.812996, 35.297451, 48.565334>,  <35.730953, 34.699043, 48.869431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.812996, 35.297451, 48.565334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.188618, 35.188725, 48.649525>,  <36.413990, 35.123489, 48.700039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.188618, 35.188725, 48.649525>,  <35.812996, 35.297451, 48.565334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.188618, 35.188725, 48.649525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288893, 0.292073, -0.911721,
		0.186348, 0.916956, 0.352798,
		0.939050, -0.271818, 0.210475,
		36.470333, 35.107178, 48.712666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.176464, 35.792854, 48.238049>,  <35.812996, 35.297451, 48.565334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.176464, 35.792854, 48.238049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.452034, 35.506355, 48.282532>,  <36.617374, 35.334454, 48.309219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.452034, 35.506355, 48.282532>,  <36.176464, 35.792854, 48.238049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.452034, 35.506355, 48.282532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387275, 0.234044, -0.891763,
		0.612699, 0.657426, 0.438625,
		0.688926, -0.716250, 0.111206,
		36.658710, 35.291481, 48.315895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.679836, 36.058472, 48.021675>,  <36.176464, 35.792854, 48.238049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.679836, 36.058472, 48.021675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.788662, 35.673733, 48.010113>,  <36.853958, 35.442890, 48.003178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.788662, 35.673733, 48.010113>,  <36.679836, 36.058472, 48.021675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.788662, 35.673733, 48.010113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301889, 0.113833, -0.946523,
		0.913699, 0.248785, 0.321340,
		0.272060, -0.961846, -0.028903,
		36.870281, 35.385178, 48.001442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.362766, 36.071171, 47.804020>,  <36.679836, 36.058472, 48.021675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.362766, 36.071171, 47.804020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.252571, 35.695057, 47.724049>,  <37.186455, 35.469387, 47.676064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.252571, 35.695057, 47.724049>,  <37.362766, 36.071171, 47.804020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.252571, 35.695057, 47.724049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334150, 0.101345, -0.937056,
		0.901360, -0.324954, 0.286277,
		-0.275487, -0.940284, -0.199931,
		37.169926, 35.412971, 47.664070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.926399, 35.754745, 47.598331>,  <37.362766, 36.071171, 47.804020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.926399, 35.754745, 47.598331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.617275, 35.549507, 47.448936>,  <37.431801, 35.426365, 47.359299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.617275, 35.549507, 47.448936>,  <37.926399, 35.754745, 47.598331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.617275, 35.549507, 47.448936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416928, 0.033210, -0.908332,
		0.478467, -0.857688, 0.188260,
		-0.772813, -0.513097, -0.373484,
		37.385429, 35.395576, 47.336891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.233738, 35.416496, 47.044643>,  <37.926399, 35.754745, 47.598331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.233738, 35.416496, 47.044643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.852261, 35.338722, 46.952850>,  <37.623375, 35.292057, 46.897774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.852261, 35.338722, 46.952850>,  <38.233738, 35.416496, 47.044643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.852261, 35.338722, 46.952850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225016, 0.045054, -0.973313,
		0.199590, -0.979879, 0.000785,
		-0.953694, -0.194440, -0.229481,
		37.566151, 35.280392, 46.884007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218998, 34.818619, 46.516983>,  <38.233738, 35.416496, 47.044643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.218998, 34.818619, 46.516983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.894638, 35.048870, 46.474850>,  <37.700024, 35.187023, 46.449570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.894638, 35.048870, 46.474850>,  <38.218998, 34.818619, 46.516983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.894638, 35.048870, 46.474850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060796, -0.096156, -0.993508,
		-0.582022, -0.812037, 0.042977,
		-0.810897, 0.575630, -0.105334,
		37.651367, 35.221558, 46.443249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.915886, 34.422253, 46.071255>,  <38.218998, 34.818619, 46.516983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.915886, 34.422253, 46.071255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.713951, 34.767452, 46.063553>,  <37.592789, 34.974571, 46.058929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.713951, 34.767452, 46.063553>,  <37.915886, 34.422253, 46.071255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.713951, 34.767452, 46.063553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162715, -0.117046, -0.979706,
		-0.847739, -0.491461, 0.199513,
		-0.504839, 0.862998, -0.019257,
		37.562500, 35.026352, 46.057777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.409744, 34.245033, 45.666630>,  <37.915886, 34.422253, 46.071255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.409744, 34.245033, 45.666630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.418690, 34.644474, 45.647472>,  <37.424057, 34.884140, 45.635979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.418690, 34.644474, 45.647472>,  <37.409744, 34.245033, 45.666630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.418690, 34.644474, 45.647472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077473, -0.046032, -0.995931,
		-0.996744, 0.025984, 0.076335,
		0.022364, 0.998602, -0.047895,
		37.425400, 34.944054, 45.633102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.867043, 34.441719, 45.226414>,  <37.409744, 34.245033, 45.666630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.867043, 34.441719, 45.226414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.115673, 34.754971, 45.233955>,  <37.264851, 34.942921, 45.238480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.115673, 34.754971, 45.233955>,  <36.867043, 34.441719, 45.226414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.115673, 34.754971, 45.233955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105586, 0.107604, -0.988571,
		-0.776207, 0.612479, 0.149571,
		0.621574, 0.783129, 0.018854,
		37.302147, 34.989910, 45.239613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.558025, 35.014324, 44.858315>,  <36.867043, 34.441719, 45.226414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.558025, 35.014324, 44.858315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.957405, 35.030033, 44.842525>,  <37.197033, 35.039459, 44.833054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.957405, 35.030033, 44.842525>,  <36.558025, 35.014324, 44.858315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.957405, 35.030033, 44.842525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037517, -0.049383, -0.998075,
		-0.041145, 0.998008, -0.047833,
		0.998449, 0.039272, -0.039474,
		37.256939, 35.041813, 44.830685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.770802, 35.665638, 44.480377>,  <36.558025, 35.014324, 44.858315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.770802, 35.665638, 44.480377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.031963, 35.363552, 44.457165>,  <37.188660, 35.182301, 44.443237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.031963, 35.363552, 44.457165>,  <36.770802, 35.665638, 44.480377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.031963, 35.363552, 44.457165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146953, -0.051145, -0.987820,
		0.743044, 0.653484, -0.144373,
		0.652909, -0.755210, -0.058029,
		37.227837, 35.136990, 44.439754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.189396, 35.863476, 43.934715>,  <36.770802, 35.665638, 44.480377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.189396, 35.863476, 43.934715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.241261, 35.468727, 43.973236>,  <37.272377, 35.231876, 43.996349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.241261, 35.468727, 43.973236>,  <37.189396, 35.863476, 43.934715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.241261, 35.468727, 43.973236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167718, -0.073898, -0.983061,
		0.977271, 0.143616, 0.155935,
		0.129660, -0.986871, 0.096306,
		37.280159, 35.172665, 44.002129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.563663, 35.641140, 43.405602>,  <37.189396, 35.863476, 43.934715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.563663, 35.641140, 43.405602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.452431, 35.269196, 43.501965>,  <37.385693, 35.046028, 43.559784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.452431, 35.269196, 43.501965>,  <37.563663, 35.641140, 43.405602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.452431, 35.269196, 43.501965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252820, -0.312811, -0.915549,
		0.926689, -0.193690, 0.322074,
		-0.278081, -0.929856, 0.240910,
		37.369007, 34.990238, 43.574238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.096397, 35.164452, 43.099491>,  <37.563663, 35.641140, 43.405602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.096397, 35.164452, 43.099491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.790829, 34.912701, 43.156475>,  <37.607487, 34.761650, 43.190666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.790829, 34.912701, 43.156475>,  <38.096397, 35.164452, 43.099491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.790829, 34.912701, 43.156475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049945, -0.277774, -0.959347,
		0.643368, -0.725755, 0.243633,
		-0.763926, -0.629382, 0.142463,
		37.561649, 34.723885, 43.199215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.286182, 34.448387, 42.823936>,  <38.096397, 35.164452, 43.099491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.286182, 34.448387, 42.823936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.887703, 34.480209, 42.809750>,  <37.648617, 34.499302, 42.801239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.887703, 34.480209, 42.809750>,  <38.286182, 34.448387, 42.823936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.887703, 34.480209, 42.809750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003914, -0.447658, -0.894196,
		-0.087013, -0.890659, 0.446268,
		-0.996199, 0.079554, -0.035466,
		37.588844, 34.504074, 42.799110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188862, 33.976349, 42.353996>,  <38.286182, 34.448387, 42.823936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.188862, 33.976349, 42.353996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.811699, 34.104847, 42.389164>,  <37.585400, 34.181946, 42.410263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.811699, 34.104847, 42.389164>,  <38.188862, 33.976349, 42.353996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.811699, 34.104847, 42.389164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233309, -0.448716, -0.862683,
		-0.237680, -0.833941, 0.498046,
		-0.942908, 0.321241, 0.087915,
		37.528828, 34.201218, 42.415539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660442, 33.388088, 42.339558>,  <38.188862, 33.976349, 42.353996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.660442, 33.388088, 42.339558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.481606, 33.721962, 42.210922>,  <37.374306, 33.922287, 42.133739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.481606, 33.721962, 42.210922>,  <37.660442, 33.388088, 42.339558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.481606, 33.721962, 42.210922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205559, -0.445774, -0.871224,
		-0.870550, -0.323408, 0.370876,
		-0.447088, 0.834681, -0.321589,
		37.347481, 33.972366, 42.114445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.059349, 33.189007, 42.024376>,  <37.660442, 33.388088, 42.339558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.059349, 33.189007, 42.024376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.133896, 33.553745, 41.878059>,  <37.178623, 33.772587, 41.790268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.133896, 33.553745, 41.878059>,  <37.059349, 33.189007, 42.024376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.133896, 33.553745, 41.878059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076632, -0.357688, -0.930692,
		-0.979487, 0.201482, 0.003215,
		0.186368, 0.911847, -0.365791,
		37.189808, 33.827301, 41.768322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.491280, 33.301693, 41.619225>,  <37.059349, 33.189007, 42.024376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.491280, 33.301693, 41.619225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.762177, 33.566658, 41.491127>,  <36.924713, 33.725636, 41.414268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.762177, 33.566658, 41.491127>,  <36.491280, 33.301693, 41.619225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.762177, 33.566658, 41.491127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287073, -0.162856, -0.943964,
		-0.677447, 0.731223, 0.079868,
		0.677241, 0.662413, -0.320241,
		36.965347, 33.765381, 41.395054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.176884, 33.714809, 41.085556>,  <36.491280, 33.301693, 41.619225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.176884, 33.714809, 41.085556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.570400, 33.739304, 41.018139>,  <36.806511, 33.754002, 40.977688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.570400, 33.739304, 41.018139>,  <36.176884, 33.714809, 41.085556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.570400, 33.739304, 41.018139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154201, -0.190888, -0.969425,
		-0.091538, 0.979700, -0.178351,
		0.983790, 0.061237, -0.168544,
		36.865536, 33.757675, 40.967575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.148117, 34.038361, 40.506771>,  <36.176884, 33.714809, 41.085556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.148117, 34.038361, 40.506771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.511810, 33.876606, 40.546280>,  <36.730026, 33.779552, 40.569984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.511810, 33.876606, 40.546280>,  <36.148117, 34.038361, 40.506771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.511810, 33.876606, 40.546280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017215, -0.200544, -0.979533,
		0.415921, 0.892329, -0.175380,
		0.909238, -0.404390, 0.098772,
		36.784580, 33.755287, 40.575912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.536251, 34.289516, 39.928719>,  <36.148117, 34.038361, 40.506771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.536251, 34.289516, 39.928719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.725136, 33.961147, 40.057152>,  <36.838467, 33.764126, 40.134212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.725136, 33.961147, 40.057152>,  <36.536251, 34.289516, 39.928719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.725136, 33.961147, 40.057152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155921, -0.280721, -0.947040,
		0.867583, 0.497271, -0.004562,
		0.472216, -0.820925, 0.321084,
		36.866802, 33.714870, 40.153477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241997, 34.190456, 39.558022>,  <36.536251, 34.289516, 39.928719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.241997, 34.190456, 39.558022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.177986, 33.825443, 39.708584>,  <37.139580, 33.606434, 39.798920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.177986, 33.825443, 39.708584>,  <37.241997, 34.190456, 39.558022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.177986, 33.825443, 39.708584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476675, -0.405346, -0.780049,
		0.864392, 0.054596, 0.499845,
		-0.160022, -0.912532, 0.376402,
		37.129978, 33.551685, 39.821503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902828, 33.924061, 39.863434>,  <37.241997, 34.190456, 39.558022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.902828, 33.924061, 39.863434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.633423, 33.650311, 39.751713>,  <37.471779, 33.486061, 39.684681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.633423, 33.650311, 39.751713>,  <37.902828, 33.924061, 39.863434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.633423, 33.650311, 39.751713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564162, -0.231800, -0.792458,
		0.477596, -0.691303, 0.542219,
		-0.673515, -0.684374, -0.279300,
		37.431370, 33.445000, 39.667923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.302765, 33.483986, 39.560539>,  <37.902828, 33.924061, 39.863434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.302765, 33.483986, 39.560539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.937653, 33.382549, 39.432461>,  <37.718586, 33.321686, 39.355614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.937653, 33.382549, 39.432461>,  <38.302765, 33.483986, 39.560539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.937653, 33.382549, 39.432461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388518, -0.297143, -0.872216,
		0.126045, -0.920541, 0.369751,
		-0.912780, -0.253593, -0.320193,
		37.663818, 33.306473, 39.336403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.414852, 32.828201, 39.212700>,  <38.302765, 33.483986, 39.560539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.414852, 32.828201, 39.212700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.073048, 32.988415, 39.080406>,  <37.867966, 33.084545, 39.001030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.073048, 32.988415, 39.080406>,  <38.414852, 32.828201, 39.212700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.073048, 32.988415, 39.080406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265864, -0.209752, -0.940915,
		-0.446243, -0.891950, 0.072746,
		-0.854507, 0.400536, -0.330738,
		37.816696, 33.108574, 38.981186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.038921, 32.320160, 38.724464>,  <38.414852, 32.828201, 39.212700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.038921, 32.320160, 38.724464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.915684, 32.686050, 38.619884>,  <37.841740, 32.905582, 38.557137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.915684, 32.686050, 38.619884>,  <38.038921, 32.320160, 38.724464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.915684, 32.686050, 38.619884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175131, -0.215591, -0.960651,
		-0.935097, -0.341760, -0.093774,
		-0.308095, 0.914724, -0.261451,
		37.823254, 32.960468, 38.541451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.930866, 32.219730, 38.074047>,  <38.038921, 32.320160, 38.724464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.930866, 32.219730, 38.074047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.883823, 32.616753, 38.086754>,  <37.855598, 32.854965, 38.094376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.883823, 32.616753, 38.086754>,  <37.930866, 32.219730, 38.074047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.883823, 32.616753, 38.086754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224041, 0.057680, -0.972871,
		-0.967457, -0.107303, -0.229156,
		-0.117610, 0.992552, 0.031763,
		37.848541, 32.914516, 38.096283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694656, 32.448582, 37.393700>,  <37.930866, 32.219730, 38.074047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.694656, 32.448582, 37.393700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.842930, 32.781357, 37.558853>,  <37.931892, 32.981022, 37.657944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.842930, 32.781357, 37.558853>,  <37.694656, 32.448582, 37.393700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.842930, 32.781357, 37.558853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431846, 0.239184, -0.869655,
		-0.822256, 0.500666, -0.270609,
		0.370681, 0.831940, 0.412881,
		37.954136, 33.030937, 37.682716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.493183, 33.053493, 36.901382>,  <37.694656, 32.448582, 37.393700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.493183, 33.053493, 36.901382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.807434, 33.161507, 37.124050>,  <37.995983, 33.226315, 37.257648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.807434, 33.161507, 37.124050>,  <37.493183, 33.053493, 36.901382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.807434, 33.161507, 37.124050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482758, 0.295184, -0.824506,
		-0.386963, 0.916487, 0.101543,
		0.785623, 0.270033, 0.556667,
		38.043121, 33.242516, 37.291050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.669247, 33.598736, 36.556133>,  <37.493183, 33.053493, 36.901382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.669247, 33.598736, 36.556133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.990097, 33.539146, 36.787445>,  <38.182606, 33.503391, 36.926231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.990097, 33.539146, 36.787445>,  <37.669247, 33.598736, 36.556133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.990097, 33.539146, 36.787445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584550, 0.393847, -0.709356,
		-0.122077, 0.907023, 0.402997,
		0.802121, -0.148976, 0.578280,
		38.230732, 33.494453, 36.960930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036232, 34.176727, 36.499367>,  <37.669247, 33.598736, 36.556133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.036232, 34.176727, 36.499367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.304504, 33.919434, 36.647114>,  <38.465469, 33.765057, 36.735764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.304504, 33.919434, 36.647114>,  <38.036232, 34.176727, 36.499367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.304504, 33.919434, 36.647114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685669, 0.347695, -0.639505,
		0.282926, 0.682168, 0.674240,
		0.670680, -0.643238, 0.369370,
		38.505707, 33.726463, 36.757923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.645191, 34.605705, 36.789551>,  <38.036232, 34.176727, 36.499367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.645191, 34.605705, 36.789551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.739731, 34.231365, 36.684994>,  <38.796455, 34.006763, 36.622261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.739731, 34.231365, 36.684994>,  <38.645191, 34.605705, 36.789551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.739731, 34.231365, 36.684994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701205, 0.350502, -0.620854,
		0.672644, -0.036550, 0.739063,
		0.236351, -0.935848, -0.261392,
		38.810635, 33.950611, 36.606575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.391525, 34.594402, 36.899258>,  <38.645191, 34.605705, 36.789551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.391525, 34.594402, 36.899258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.314617, 34.279205, 36.665298>,  <39.268471, 34.090088, 36.524921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.314617, 34.279205, 36.665298>,  <39.391525, 34.594402, 36.899258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.314617, 34.279205, 36.665298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734298, 0.279878, -0.618445,
		0.651027, -0.548401, 0.524805,
		-0.192274, -0.787988, -0.584898,
		39.256935, 34.042809, 36.489830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.060947, 34.232681, 36.812981>,  <39.391525, 34.594402, 36.899258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.060947, 34.232681, 36.812981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.826225, 34.091702, 36.521381>,  <39.685390, 34.007114, 36.346420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.826225, 34.091702, 36.521381>,  <40.060947, 34.232681, 36.812981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.826225, 34.091702, 36.521381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731493, 0.155346, -0.663916,
		0.347243, -0.922848, 0.166654,
		-0.586805, -0.352447, -0.729000,
		39.650185, 33.985970, 36.302681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.526646, 33.848953, 36.249741>,  <40.060947, 34.232681, 36.812981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.526646, 33.848953, 36.249741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.186451, 33.945045, 36.062569>,  <39.982334, 34.002701, 35.950264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.186451, 33.945045, 36.062569>,  <40.526646, 33.848953, 36.249741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.186451, 33.945045, 36.062569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516433, 0.212536, -0.829533,
		-0.099828, -0.947163, -0.304823,
		-0.850489, 0.240232, -0.467929,
		39.931305, 34.017117, 35.922192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.646141, 33.646057, 35.489643>,  <40.526646, 33.848953, 36.249741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.646141, 33.646057, 35.489643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.340885, 33.903145, 35.462746>,  <40.157730, 34.057396, 35.446606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.340885, 33.903145, 35.462746>,  <40.646141, 33.646057, 35.489643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.340885, 33.903145, 35.462746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406908, 0.397075, -0.822652,
		-0.502033, -0.655166, -0.564553,
		-0.763144, 0.642720, -0.067248,
		40.111942, 34.095963, 35.442570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.271893, 33.523155, 34.842964>,  <40.646141, 33.646057, 35.489643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.271893, 33.523155, 34.842964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.243988, 33.900265, 34.973385>,  <40.227245, 34.126530, 35.051636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.243988, 33.900265, 34.973385>,  <40.271893, 33.523155, 34.842964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.243988, 33.900265, 34.973385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651235, 0.290628, -0.701020,
		-0.755663, 0.163429, -0.634243,
		-0.069762, 0.942776, 0.326048,
		40.223061, 34.183098, 35.071198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.036373, 33.961666, 34.230816>,  <40.271893, 33.523155, 34.842964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.036373, 33.961666, 34.230816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.236244, 34.169689, 34.507904>,  <40.356167, 34.294502, 34.674156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.236244, 34.169689, 34.507904>,  <40.036373, 33.961666, 34.230816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.236244, 34.169689, 34.507904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588401, 0.383104, -0.712051,
		-0.635691, 0.763394, -0.114573,
		0.499681, 0.520059, 0.692717,
		40.386150, 34.325706, 34.715717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.066826, 34.729408, 34.146309>,  <40.036373, 33.961666, 34.230816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.066826, 34.729408, 34.146309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.386967, 34.603436, 34.350368>,  <40.579052, 34.527851, 34.472805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.386967, 34.603436, 34.350368>,  <40.066826, 34.729408, 34.146309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.386967, 34.603436, 34.350368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598321, 0.473570, -0.646331,
		-0.038043, 0.822527, 0.567453,
		0.800353, -0.314930, 0.510151,
		40.627071, 34.508957, 34.503414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.574673, 35.322491, 34.269852>,  <40.066826, 34.729408, 34.146309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.574673, 35.322491, 34.269852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.758846, 34.968983, 34.303192>,  <40.869350, 34.756878, 34.323196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.758846, 34.968983, 34.303192>,  <40.574673, 35.322491, 34.269852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.758846, 34.968983, 34.303192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728193, 0.322331, -0.604846,
		0.507680, 0.339186, 0.791968,
		0.460431, -0.883774, 0.083352,
		40.896976, 34.703850, 34.328197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.226120, 35.310253, 34.530769>,  <40.574673, 35.322491, 34.269852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.226120, 35.310253, 34.530769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.195686, 35.030071, 34.246918>,  <41.177425, 34.861961, 34.076607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.195686, 35.030071, 34.246918>,  <41.226120, 35.310253, 34.530769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.195686, 35.030071, 34.246918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822955, 0.357724, -0.441337,
		0.562989, -0.617572, 0.549225,
		-0.076086, -0.700455, -0.709629,
		41.172859, 34.819935, 34.034031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.884377, 35.057781, 34.338718>,  <41.226120, 35.310253, 34.530769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.884377, 35.057781, 34.338718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.663029, 34.980877, 34.014542>,  <41.530220, 34.934734, 33.820034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.663029, 34.980877, 34.014542>,  <41.884377, 35.057781, 34.338718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.663029, 34.980877, 34.014542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703925, 0.412208, -0.578424,
		0.445282, -0.890573, -0.092762,
		-0.553366, -0.192264, -0.810445,
		41.497017, 34.923199, 33.771408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.367455, 35.099922, 33.825294>,  <41.884377, 35.057781, 34.338718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.367455, 35.099922, 33.825294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.052937, 35.125732, 33.579506>,  <41.864227, 35.141220, 33.432034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.052937, 35.125732, 33.579506>,  <42.367455, 35.099922, 33.825294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.052937, 35.125732, 33.579506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488326, 0.674192, -0.554078,
		0.378521, -0.735732, -0.561623,
		-0.786295, 0.064525, -0.614473,
		41.817047, 35.145088, 33.395164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.148743, 35.762146, 34.114128>,  <42.367455, 35.099922, 33.825294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.148743, 35.762146, 34.114128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.515129, 35.685154, 34.254963>,  <42.734959, 35.638958, 34.339462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.515129, 35.685154, 34.254963>,  <42.148743, 35.762146, 34.114128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.515129, 35.685154, 34.254963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095160, 0.956608, 0.275402,
		-0.389819, -0.218753, 0.894532,
		0.915962, -0.192480, 0.352087,
		42.789917, 35.627411, 34.360588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.180561, 35.895817, 34.805111>,  <42.148743, 35.762146, 34.114128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.180561, 35.895817, 34.805111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.552715, 35.928249, 34.662106>,  <42.776009, 35.947708, 34.576302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.552715, 35.928249, 34.662106>,  <42.180561, 35.895817, 34.805111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.552715, 35.928249, 34.662106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061218, 0.927181, 0.369578,
		0.361445, -0.365735, 0.857669,
		0.930382, 0.081078, -0.357514,
		42.831829, 35.952572, 34.554852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.603851, 36.158195, 35.342632>,  <42.180561, 35.895817, 34.805111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.603851, 36.158195, 35.342632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.832893, 36.248497, 35.027378>,  <42.970318, 36.302677, 34.838226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.832893, 36.248497, 35.027378>,  <42.603851, 36.158195, 35.342632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.832893, 36.248497, 35.027378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025258, 0.965740, 0.258280,
		0.819440, -0.127986, 0.558693,
		0.572608, 0.225756, -0.788133,
		43.004677, 36.316223, 34.790939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.929886, 36.686066, 35.591286>,  <42.603851, 36.158195, 35.342632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.929886, 36.686066, 35.591286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.011066, 36.719986, 35.201080>,  <43.059772, 36.740337, 34.966957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.011066, 36.719986, 35.201080>,  <42.929886, 36.686066, 35.591286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.011066, 36.719986, 35.201080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000955, 0.996225, 0.086804,
		0.979189, -0.018548, 0.202101,
		0.202949, 0.084805, -0.975510,
		43.071953, 36.745426, 34.908428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.502785, 37.201328, 35.568531>,  <42.929886, 36.686066, 35.591286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.502785, 37.201328, 35.568531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.356098, 37.195686, 35.196442>,  <43.268085, 37.192303, 34.973186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.356098, 37.195686, 35.196442>,  <43.502785, 37.201328, 35.568531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.356098, 37.195686, 35.196442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001803, 0.999872, -0.015868,
		0.930330, -0.007496, -0.366648,
		-0.366720, -0.014101, -0.930224,
		43.246082, 37.191456, 34.917374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.873318, 37.571171, 35.141315>,  <43.502785, 37.201328, 35.568531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.873318, 37.571171, 35.141315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.536217, 37.601284, 34.928112>,  <43.333954, 37.619354, 34.800190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.536217, 37.601284, 34.928112>,  <43.873318, 37.571171, 35.141315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.536217, 37.601284, 34.928112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087377, 0.996172, 0.002554,
		0.531156, -0.044419, -0.846109,
		-0.842757, 0.075287, -0.533004,
		43.283390, 37.623871, 34.768211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.977859, 38.065975, 34.707130>,  <43.873318, 37.571171, 35.141315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.977859, 38.065975, 34.707130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.578815, 38.038834, 34.712318>,  <43.339390, 38.022549, 34.715431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.578815, 38.038834, 34.712318>,  <43.977859, 38.065975, 34.707130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.578815, 38.038834, 34.712318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066913, 0.995779, 0.062818,
		-0.017180, 0.061800, -0.997941,
		-0.997611, -0.067854, 0.012973,
		43.279533, 38.018478, 34.716209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.757240, 38.745644, 34.418583>,  <43.977859, 38.065975, 34.707130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.757240, 38.745644, 34.418583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.443573, 38.591557, 34.613186>,  <43.255371, 38.499104, 34.729946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.443573, 38.591557, 34.613186>,  <43.757240, 38.745644, 34.418583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.443573, 38.591557, 34.613186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259668, 0.915750, 0.306552,
		-0.563605, 0.114059, -0.818132,
		-0.784169, -0.385217, 0.486504,
		43.208321, 38.475990, 34.759136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.276802, 39.249630, 34.411366>,  <43.757240, 38.745644, 34.418583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.276802, 39.249630, 34.411366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.155869, 39.008167, 34.706444>,  <43.083309, 38.863289, 34.883492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.155869, 39.008167, 34.706444>,  <43.276802, 39.249630, 34.411366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.155869, 39.008167, 34.706444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225020, 0.797235, 0.560163,
		-0.926262, 0.003359, -0.376864,
		-0.302331, -0.603660, 0.737692,
		43.065170, 38.827068, 34.927750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.617126, 39.470108, 34.543720>,  <43.276802, 39.249630, 34.411366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.617126, 39.470108, 34.543720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.705502, 39.302158, 34.895832>,  <42.758526, 39.201389, 35.107098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.705502, 39.302158, 34.895832>,  <42.617126, 39.470108, 34.543720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.705502, 39.302158, 34.895832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161070, 0.874479, 0.457540,
		-0.961895, -0.242875, 0.125579,
		0.220941, -0.419879, 0.880277,
		42.771786, 39.176193, 35.159916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.077049, 39.628643, 35.091789>,  <42.617126, 39.470108, 34.543720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.077049, 39.628643, 35.091789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.407932, 39.522545, 35.289928>,  <42.606464, 39.458885, 35.408813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.407932, 39.522545, 35.289928>,  <42.077049, 39.628643, 35.091789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.407932, 39.522545, 35.289928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111321, 0.786733, 0.607173,
		-0.550755, -0.557402, 0.621266,
		0.827210, -0.265243, 0.495348,
		42.656094, 39.442970, 35.438534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.911640, 39.802448, 35.854584>,  <42.077049, 39.628643, 35.091789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.911640, 39.802448, 35.854584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.308575, 39.777630, 35.811844>,  <42.546734, 39.762737, 35.786201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.308575, 39.777630, 35.811844>,  <41.911640, 39.802448, 35.854584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.308575, 39.777630, 35.811844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114634, 0.784980, 0.608823,
		0.046099, -0.616406, 0.786078,
		0.992337, -0.062045, -0.106848,
		42.606277, 39.759018, 35.779789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.205814, 39.736511, 36.579578>,  <41.911640, 39.802448, 35.854584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.205814, 39.736511, 36.579578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.478809, 39.871830, 36.320423>,  <42.642609, 39.953022, 36.164928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.478809, 39.871830, 36.320423>,  <42.205814, 39.736511, 36.579578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.478809, 39.871830, 36.320423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076082, 0.914502, 0.397362,
		0.726923, -0.221903, 0.649878,
		0.682491, 0.338296, -0.647890,
		42.683556, 39.973320, 36.126057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.570446, 40.206413, 36.998672>,  <42.205814, 39.736511, 36.579578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.570446, 40.206413, 36.998672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.729916, 40.313564, 36.647835>,  <42.825596, 40.377853, 36.437332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.729916, 40.313564, 36.647835>,  <42.570446, 40.206413, 36.998672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.729916, 40.313564, 36.647835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038610, 0.950640, 0.307884,
		0.916279, -0.156610, 0.368653,
		0.398675, 0.267874, -0.877098,
		42.849518, 40.393925, 36.384705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.186714, 40.587807, 37.099613>,  <42.570446, 40.206413, 36.998672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.186714, 40.587807, 37.099613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.121677, 40.690960, 36.718655>,  <43.082653, 40.752853, 36.490078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.121677, 40.690960, 36.718655>,  <43.186714, 40.587807, 37.099613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.121677, 40.690960, 36.718655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236015, 0.947386, 0.216232,
		0.958050, -0.189621, -0.214906,
		-0.162597, 0.257883, -0.952396,
		43.072899, 40.768326, 36.432934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.777298, 40.949375, 36.851532>,  <43.186714, 40.587807, 37.099613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.777298, 40.949375, 36.851532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.473686, 41.066902, 36.619137>,  <43.291519, 41.137417, 36.479698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.473686, 41.066902, 36.619137>,  <43.777298, 40.949375, 36.851532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.473686, 41.066902, 36.619137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165524, 0.950143, 0.264254,
		0.629665, 0.104409, -0.769819,
		-0.759028, 0.293815, -0.580989,
		43.245979, 41.155048, 36.444839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.952442, 41.538490, 36.478539>,  <43.777298, 40.949375, 36.851532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.952442, 41.538490, 36.478539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.555763, 41.584972, 36.456490>,  <43.317757, 41.612862, 36.443260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.555763, 41.584972, 36.456490>,  <43.952442, 41.538490, 36.478539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.555763, 41.584972, 36.456490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106878, 0.982978, 0.149439,
		0.071550, 0.142306, -0.987233,
		-0.991694, 0.116206, -0.055123,
		43.258255, 41.619835, 36.439953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.886936, 42.050694, 36.066246>,  <43.952442, 41.538490, 36.478539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.886936, 42.050694, 36.066246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.522957, 42.061279, 36.231796>,  <43.304569, 42.067631, 36.331127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.522957, 42.061279, 36.231796>,  <43.886936, 42.050694, 36.066246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.522957, 42.061279, 36.231796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012639, 0.995730, -0.091447,
		-0.414527, -0.088443, -0.905729,
		-0.909950, 0.026460, 0.413875,
		43.249973, 42.069218, 36.355957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.504250, 42.586559, 35.757660>,  <43.886936, 42.050694, 36.066246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.504250, 42.586559, 35.757660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.290417, 42.547329, 36.093422>,  <43.162117, 42.523788, 36.294880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.290417, 42.547329, 36.093422>,  <43.504250, 42.586559, 35.757660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.290417, 42.547329, 36.093422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232370, 0.972019, -0.034413,
		-0.812542, -0.213449, -0.542416,
		-0.534584, -0.098078, 0.839405,
		43.130043, 42.517906, 36.345245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.906326, 43.071129, 35.701637>,  <43.504250, 42.586559, 35.757660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.906326, 43.071129, 35.701637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.921284, 43.013737, 36.097218>,  <42.930256, 42.979301, 36.334564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.921284, 43.013737, 36.097218>,  <42.906326, 43.071129, 35.701637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.921284, 43.013737, 36.097218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390605, 0.908807, 0.146620,
		-0.919799, -0.391769, -0.022064,
		0.037389, -0.143479, 0.988947,
		42.932499, 42.970692, 36.393902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.288017, 43.411633, 35.937454>,  <42.906326, 43.071129, 35.701637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.288017, 43.411633, 35.937454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.529663, 43.350887, 36.250370>,  <42.674652, 43.314442, 36.438122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.529663, 43.350887, 36.250370>,  <42.288017, 43.411633, 35.937454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.529663, 43.350887, 36.250370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229447, 0.906955, 0.353251,
		-0.763152, -0.392899, 0.513059,
		0.604113, -0.151865, 0.782294,
		42.710896, 43.305328, 36.485058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.873344, 43.396290, 36.609535>,  <42.288017, 43.411633, 35.937454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.873344, 43.396290, 36.609535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.237480, 43.534630, 36.700455>,  <42.455963, 43.617634, 36.755005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.237480, 43.534630, 36.700455>,  <41.873344, 43.396290, 36.609535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.237480, 43.534630, 36.700455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407961, 0.657534, 0.633417,
		0.069616, -0.669354, 0.739675,
		0.910341, 0.345854, 0.227295,
		42.510582, 43.638386, 36.768642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.244186, 43.243374, 37.360020>,  <41.873344, 43.396290, 36.609535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.244186, 43.243374, 37.360020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.271473, 43.576359, 37.140072>,  <42.287846, 43.776150, 37.008102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.271473, 43.576359, 37.140072>,  <42.244186, 43.243374, 37.360020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.271473, 43.576359, 37.140072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523371, 0.499087, 0.690648,
		0.849370, 0.240670, 0.469733,
		0.068219, 0.832460, -0.549869,
		42.291939, 43.826096, 36.975113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.496174, 43.785683, 37.794411>,  <42.244186, 43.243374, 37.360020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.496174, 43.785683, 37.794411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.212383, 43.890530, 37.532742>,  <42.042110, 43.953438, 37.375740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.212383, 43.890530, 37.532742>,  <42.496174, 43.785683, 37.794411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.212383, 43.890530, 37.532742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526321, 0.420215, 0.739192,
		0.468648, 0.868743, -0.160175,
		-0.709476, 0.262117, -0.654170,
		41.999542, 43.969166, 37.336491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.074600, 44.144909, 38.327286>,  <42.496174, 43.785683, 37.794411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.074600, 44.144909, 38.327286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.822056, 43.836651, 38.292664>,  <41.670528, 43.651695, 38.271889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.822056, 43.836651, 38.292664>,  <42.074600, 44.144909, 38.327286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.822056, 43.836651, 38.292664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754591, -0.584773, -0.297712,
		0.178812, -0.253282, 0.950723,
		-0.631363, -0.770641, -0.086560,
		41.632648, 43.605457, 38.266697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.574886, 43.533566, 38.457497>,  <42.074600, 44.144909, 38.327286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.574886, 43.533566, 38.457497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.251717, 43.419544, 38.251190>,  <42.057816, 43.351131, 38.127407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.251717, 43.419544, 38.251190>,  <42.574886, 43.533566, 38.457497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.251717, 43.419544, 38.251190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566185, -0.618162, -0.545262,
		-0.163397, -0.732545, 0.660818,
		-0.807921, -0.285051, -0.515761,
		42.009342, 43.334030, 38.096462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.918362, 42.942677, 38.347164>,  <42.574886, 43.533566, 38.457497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.918362, 42.942677, 38.347164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.573730, 42.965641, 38.145416>,  <42.366951, 42.979420, 38.024368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.573730, 42.965641, 38.145416>,  <42.918362, 42.942677, 38.347164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.573730, 42.965641, 38.145416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215531, -0.858206, -0.465863,
		-0.459597, -0.510084, 0.727038,
		-0.861578, 0.057410, -0.504369,
		42.315258, 42.982864, 37.994106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.245975, 43.509064, 38.820499>,  <42.918362, 42.942677, 38.347164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.245975, 43.509064, 38.820499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.916531, 43.373158, 39.002148>,  <42.718864, 43.291615, 39.111137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.916531, 43.373158, 39.002148>,  <43.245975, 43.509064, 38.820499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.916531, 43.373158, 39.002148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093525, 0.708375, 0.699613,
		-0.559393, 0.618679, -0.551648,
		-0.823610, -0.339766, 0.454122,
		42.669449, 43.271229, 39.138386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.315216, 42.988464, 39.464161>,  <43.245975, 43.509064, 38.820499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.315216, 42.988464, 39.464161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.604328, 42.872536, 39.715107>,  <43.777794, 42.802979, 39.865677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.604328, 42.872536, 39.715107>,  <43.315216, 42.988464, 39.464161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.604328, 42.872536, 39.715107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188166, -0.790982, -0.582186,
		0.664968, 0.538842, -0.517172,
		0.722780, -0.289821, 0.627370,
		43.821163, 42.785591, 39.903316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.771240, 42.866695, 38.980183>,  <43.315216, 42.988464, 39.464161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.771240, 42.866695, 38.980183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.774651, 42.663738, 39.324852>,  <43.776699, 42.541962, 39.531654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.774651, 42.663738, 39.324852>,  <43.771240, 42.866695, 38.980183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.774651, 42.663738, 39.324852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206904, -0.842160, -0.497954,
		0.978324, 0.182531, 0.097798,
		0.008530, -0.507395, 0.861671,
		43.777210, 42.511520, 39.583355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.171196, 42.281181, 38.769871>,  <43.771240, 42.866695, 38.980183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.171196, 42.281181, 38.769871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.014896, 42.183308, 39.124825>,  <43.921116, 42.124584, 39.337795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.014896, 42.183308, 39.124825>,  <44.171196, 42.281181, 38.769871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.014896, 42.183308, 39.124825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219590, -0.960970, -0.168279,
		0.893922, 0.129105, 0.429226,
		-0.390748, -0.244682, 0.887382,
		43.897671, 42.109901, 39.391041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.624748, 41.812634, 38.990501>,  <44.171196, 42.281181, 38.769871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.624748, 41.812634, 38.990501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.266083, 41.757755, 39.158867>,  <44.050884, 41.724827, 39.259884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.266083, 41.757755, 39.158867>,  <44.624748, 41.812634, 38.990501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.266083, 41.757755, 39.158867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047147, -0.974953, -0.217356,
		0.440188, -0.175051, 0.880677,
		-0.896667, -0.137199, 0.420910,
		43.997082, 41.716595, 39.285141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.646500, 41.235703, 39.490025>,  <44.624748, 41.812634, 38.990501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.646500, 41.235703, 39.490025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.265221, 41.240402, 39.369179>,  <44.036453, 41.243221, 39.296673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.265221, 41.240402, 39.369179>,  <44.646500, 41.235703, 39.490025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.265221, 41.240402, 39.369179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122132, -0.899125, -0.420307,
		-0.276573, -0.437534, 0.855612,
		-0.953201, 0.011748, -0.302110,
		43.979259, 41.243927, 39.278545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.367855, 40.522144, 39.772964>,  <44.646500, 41.235703, 39.490025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.367855, 40.522144, 39.772964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.153229, 40.663910, 39.466633>,  <44.024452, 40.748970, 39.282833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.153229, 40.663910, 39.466633>,  <44.367855, 40.522144, 39.772964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.153229, 40.663910, 39.466633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002560, -0.908209, -0.418509,
		-0.843857, -0.222596, 0.488218,
		-0.536562, 0.354411, -0.765829,
		43.992260, 40.770233, 39.236885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.899815, 40.076054, 39.673676>,  <44.367855, 40.522144, 39.772964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.899815, 40.076054, 39.673676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.930870, 40.260029, 39.319855>,  <43.949501, 40.370415, 39.107563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.930870, 40.260029, 39.319855>,  <43.899815, 40.076054, 39.673676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.930870, 40.260029, 39.319855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161672, -0.869676, -0.466396,
		-0.983786, 0.179217, 0.006840,
		0.077637, 0.459940, -0.884549,
		43.954163, 40.398010, 39.054489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.399879, 39.708817, 39.279045>,  <43.899815, 40.076054, 39.673676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.399879, 39.708817, 39.279045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.646755, 39.912815, 39.039387>,  <43.794880, 40.035213, 38.895592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.646755, 39.912815, 39.039387>,  <43.399879, 39.708817, 39.279045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.646755, 39.912815, 39.039387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049714, -0.785239, -0.617194,
		-0.785239, 0.351142, -0.509999,
		0.617194, 0.509999, -0.599144,
		43.831913, 40.065815, 38.859642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.065735, 39.652687, 38.667362>,  <43.399879, 39.708817, 39.279045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.065735, 39.652687, 38.667362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.450584, 39.734070, 38.594784>,  <43.681496, 39.782898, 38.551235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.450584, 39.734070, 38.594784>,  <43.065735, 39.652687, 38.667362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.450584, 39.734070, 38.594784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031014, -0.742963, -0.668613,
		-0.270841, 0.637662, -0.721133,
		0.962124, 0.203453, -0.181449,
		43.739223, 39.795105, 38.540348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.289516, 39.424767, 37.981373>,  <43.065735, 39.652687, 38.667362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.289516, 39.424767, 37.981373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.659798, 39.492756, 38.116539>,  <43.881966, 39.533550, 38.197639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.659798, 39.492756, 38.116539>,  <43.289516, 39.424767, 37.981373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.659798, 39.492756, 38.116539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357251, -0.686422, -0.633402,
		0.124293, 0.707061, -0.696143,
		0.925702, 0.169970, 0.337915,
		43.937508, 39.543747, 38.217915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.655293, 39.716583, 37.404797>,  <43.289516, 39.424767, 37.981373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.655293, 39.716583, 37.404797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.886177, 39.506546, 37.654949>,  <44.024708, 39.380524, 37.805042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.886177, 39.506546, 37.654949>,  <43.655293, 39.716583, 37.404797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.886177, 39.506546, 37.654949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288249, -0.585529, -0.757673,
		0.764032, 0.617601, -0.186614,
		0.577207, -0.525095, 0.625386,
		44.059338, 39.349018, 37.842564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.280468, 39.715443, 37.058033>,  <43.655293, 39.716583, 37.404797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.280468, 39.715443, 37.058033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.305218, 39.403831, 37.307602>,  <44.320068, 39.216866, 37.457344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.305218, 39.403831, 37.307602>,  <44.280468, 39.715443, 37.058033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.305218, 39.403831, 37.307602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355459, -0.566935, -0.743124,
		0.932642, 0.267761, 0.241834,
		0.061875, -0.779031, 0.623925,
		44.323780, 39.170124, 37.494778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.774357, 39.420605, 36.750546>,  <44.280468, 39.715443, 37.058033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.774357, 39.420605, 36.750546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.675499, 39.124790, 37.000988>,  <44.616184, 38.947304, 37.151253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.675499, 39.124790, 37.000988>,  <44.774357, 39.420605, 36.750546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.675499, 39.124790, 37.000988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415047, -0.664671, -0.621247,
		0.875587, 0.106324, 0.471213,
		-0.247149, -0.739532, 0.626107,
		44.601353, 38.902931, 37.188820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.343372, 39.006386, 36.700359>,  <44.774357, 39.420605, 36.750546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.343372, 39.006386, 36.700359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.046177, 38.780087, 36.843414>,  <44.867859, 38.644306, 36.929249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.046177, 38.780087, 36.843414>,  <45.343372, 39.006386, 36.700359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.046177, 38.780087, 36.843414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259506, -0.736041, -0.625221,
		0.616951, -0.371721, 0.693682,
		-0.742986, -0.565745, 0.357637,
		44.823280, 38.610363, 36.950706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.706329, 38.374432, 36.744122>,  <45.343372, 39.006386, 36.700359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.706329, 38.374432, 36.744122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.316113, 38.292915, 36.777081>,  <45.081982, 38.244003, 36.796856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.316113, 38.292915, 36.777081>,  <45.706329, 38.374432, 36.744122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.316113, 38.292915, 36.777081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146610, -0.882486, -0.446905,
		0.163788, -0.423894, 0.890779,
		-0.975541, -0.203794, 0.082394,
		45.023449, 38.231777, 36.801800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.738991, 37.709732, 37.020638>,  <45.706329, 38.374432, 36.744122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.738991, 37.709732, 37.020638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.384117, 37.768387, 36.845638>,  <45.171192, 37.803581, 36.740639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.384117, 37.768387, 36.845638>,  <45.738991, 37.709732, 37.020638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.384117, 37.768387, 36.845638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038354, -0.968313, -0.246777,
		-0.459827, -0.202155, 0.864692,
		-0.887180, 0.146639, -0.437503,
		45.117962, 37.812378, 36.714386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.329433, 37.110813, 37.160465>,  <45.738991, 37.709732, 37.020638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.329433, 37.110813, 37.160465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.144371, 37.265461, 36.841351>,  <45.033333, 37.358250, 36.649879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.144371, 37.265461, 36.841351>,  <45.329433, 37.110813, 37.160465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.144371, 37.265461, 36.841351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092180, -0.915998, -0.390448,
		-0.881730, -0.107105, 0.459436,
		-0.462661, 0.386621, -0.797790,
		45.005573, 37.381447, 36.602013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.724327, 36.712070, 37.001175>,  <45.329433, 37.110813, 37.160465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.724327, 36.712070, 37.001175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.809612, 36.911404, 36.665031>,  <44.860783, 37.031002, 36.463345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.809612, 36.911404, 36.665031>,  <44.724327, 36.712070, 37.001175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.809612, 36.911404, 36.665031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117431, -0.840831, -0.528407,
		-0.969922, 0.211349, -0.120758,
		0.213215, 0.498333, -0.840359,
		44.873577, 37.060902, 36.412922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.209110, 36.587902, 36.393105>,  <44.724327, 36.712070, 37.001175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.209110, 36.587902, 36.393105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.553741, 36.697929, 36.222450>,  <44.760521, 36.763947, 36.120056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.553741, 36.697929, 36.222450>,  <44.209110, 36.587902, 36.393105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.553741, 36.697929, 36.222450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121045, -0.704888, -0.698914,
		-0.492982, 0.653811, -0.574020,
		0.861578, 0.275070, -0.426638,
		44.812214, 36.780449, 36.094460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.031429, 36.548443, 35.718136>,  <44.209110, 36.587902, 36.393105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.031429, 36.548443, 35.718136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.431377, 36.542526, 35.715851>,  <44.671349, 36.538979, 35.714478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.431377, 36.542526, 35.715851>,  <44.031429, 36.548443, 35.718136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.431377, 36.542526, 35.715851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014823, -0.744051, -0.667959,
		0.005624, 0.667960, -0.744176,
		0.999874, -0.014788, -0.005716,
		44.731339, 36.538090, 35.714134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.190922, 36.438847, 35.037888>,  <44.031429, 36.548443, 35.718136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.190922, 36.438847, 35.037888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.523155, 36.339851, 35.237438>,  <44.722496, 36.280453, 35.357170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.523155, 36.339851, 35.237438>,  <44.190922, 36.438847, 35.037888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.523155, 36.339851, 35.237438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175070, -0.734367, -0.655786,
		0.528661, 0.632024, -0.566625,
		0.830583, -0.247490, 0.498880,
		44.772331, 36.265606, 35.387104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.718899, 36.406101, 34.540436>,  <44.190922, 36.438847, 35.037888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.718899, 36.406101, 34.540436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.849102, 36.180893, 34.844292>,  <44.927223, 36.045769, 35.026608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.849102, 36.180893, 34.844292>,  <44.718899, 36.406101, 34.540436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.849102, 36.180893, 34.844292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426342, -0.629697, -0.649395,
		0.843965, 0.535252, 0.035066,
		0.325509, -0.563016, 0.759643,
		44.946754, 36.011990, 35.072186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.514606, 36.192726, 34.312557>,  <44.718899, 36.406101, 34.540436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.514606, 36.192726, 34.312557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.332260, 35.961990, 34.583683>,  <45.222851, 35.823547, 34.746361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.332260, 35.961990, 34.583683>,  <45.514606, 36.192726, 34.312557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.332260, 35.961990, 34.583683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255982, -0.814350, -0.520872,
		0.852441, -0.063941, 0.518899,
		-0.455870, -0.576842, 0.677817,
		45.195499, 35.788937, 34.787029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.059586, 35.697868, 34.538143>,  <45.514606, 36.192726, 34.312557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.059586, 35.697868, 34.538143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.696556, 35.548351, 34.614655>,  <45.478737, 35.458641, 34.660561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.696556, 35.548351, 34.614655>,  <46.059586, 35.697868, 34.538143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.696556, 35.548351, 34.614655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257319, -0.855103, -0.450096,
		0.331801, -0.359278, 0.872254,
		-0.907577, -0.373790, 0.191275,
		45.424282, 35.436214, 34.672035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.719421, 36.160542, 34.619736>,  <46.059586, 35.697868, 34.538143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.719421, 36.160542, 34.619736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.867374, 35.830269, 34.449356>,  <46.956146, 35.632107, 34.347126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.867374, 35.830269, 34.449356>,  <46.719421, 36.160542, 34.619736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.867374, 35.830269, 34.449356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686047, -0.066432, 0.724518,
		-0.626517, -0.560213, 0.541883,
		0.369886, -0.825680, -0.425954,
		46.978340, 35.582565, 34.321571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.294758, 35.949886, 35.088295>,  <46.719421, 36.160542, 34.619736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.294758, 35.949886, 35.088295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.459904, 35.713364, 34.811195>,  <47.558990, 35.571449, 34.644936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.459904, 35.713364, 34.811195>,  <47.294758, 35.949886, 35.088295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.459904, 35.713364, 34.811195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691535, -0.291464, 0.660930,
		-0.592722, -0.751935, 0.288573,
		0.412868, -0.591306, -0.692746,
		47.583763, 35.535973, 34.603371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.275684, 35.223782, 35.346493>,  <47.294758, 35.949886, 35.088295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.275684, 35.223782, 35.346493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.568222, 35.288239, 35.081413>,  <47.743744, 35.326912, 34.922363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.568222, 35.288239, 35.081413>,  <47.275684, 35.223782, 35.346493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.568222, 35.288239, 35.081413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664262, -0.388540, 0.638586,
		-0.154580, -0.907232, -0.391199,
		0.731342, 0.161146, -0.662700,
		47.787624, 35.336582, 34.882603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.625229, 34.535015, 35.153912>,  <47.275684, 35.223782, 35.346493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.625229, 34.535015, 35.153912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.839954, 34.872215, 35.140160>,  <47.968788, 35.074535, 35.131908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.839954, 34.872215, 35.140160>,  <47.625229, 34.535015, 35.153912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.839954, 34.872215, 35.140160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734051, -0.446567, 0.511613,
		0.415936, -0.299879, -0.858528,
		0.536812, 0.843001, -0.034383,
		48.000999, 35.125114, 35.129845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.922318, 37.361042, 43.682034> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.525753, 37.326565, 43.642700>,  <34.287815, 37.305878, 43.619099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.525753, 37.326565, 43.642700>,  <34.922318, 37.361042, 43.682034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.525753, 37.326565, 43.642700> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121376, -0.326839, -0.937253,
		0.048645, -0.941141, 0.334495,
		-0.991414, -0.086192, -0.098333,
		34.228329, 37.300709, 43.613201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.676529, 36.702557, 43.396626>,  <34.922318, 37.361042, 43.682034>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.676529, 36.702557, 43.396626> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.355064, 36.923626, 43.308365>,  <34.162186, 37.056267, 43.255409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.355064, 36.923626, 43.308365>,  <34.676529, 36.702557, 43.396626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.355064, 36.923626, 43.308365> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007014, -0.379558, -0.925141,
		-0.595048, -0.741951, 0.308912,
		-0.803660, 0.552670, -0.220651,
		34.113968, 37.089428, 43.242168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.171230, 36.298923, 43.047367>,  <34.676529, 36.702557, 43.396626>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.171230, 36.298923, 43.047367> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.079311, 36.675541, 42.948826>,  <34.024162, 36.901512, 42.889702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.079311, 36.675541, 42.948826>,  <34.171230, 36.298923, 43.047367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.079311, 36.675541, 42.948826> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008819, -0.255128, -0.966867,
		-0.973199, -0.220008, 0.066931,
		-0.229795, 0.941545, -0.246350,
		34.010372, 36.958004, 42.874920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.756603, 36.273849, 42.443138>,  <34.171230, 36.298923, 43.047367>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.756603, 36.273849, 42.443138> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.883907, 36.653038, 42.440170>,  <33.960289, 36.880550, 42.438389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.883907, 36.653038, 42.440170>,  <33.756603, 36.273849, 42.443138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.883907, 36.653038, 42.440170> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119571, -0.047906, -0.991669,
		-0.940432, 0.314724, -0.128597,
		0.318263, 0.947974, -0.007420,
		33.979385, 36.937431, 42.437943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.307697, 36.602501, 42.001831>,  <33.756603, 36.273849, 42.443138>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.307697, 36.602501, 42.001831> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.643250, 36.820202, 41.998646>,  <33.844582, 36.950821, 41.996735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.643250, 36.820202, 41.998646>,  <33.307697, 36.602501, 42.001831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.643250, 36.820202, 41.998646> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000988, -0.013114, -0.999914,
		-0.544309, 0.838819, -0.010464,
		0.838884, 0.544252, -0.007967,
		33.894917, 36.983479, 41.996254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.198227, 36.908421, 41.410606>,  <33.307697, 36.602501, 42.001831>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.198227, 36.908421, 41.410606> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.586971, 36.957439, 41.491070>,  <33.820217, 36.986851, 41.539349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.586971, 36.957439, 41.491070>,  <33.198227, 36.908421, 41.410606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.586971, 36.957439, 41.491070> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181385, 0.155447, -0.971049,
		-0.150268, 0.980214, 0.128845,
		0.971864, 0.122547, 0.201155,
		33.878529, 36.994205, 41.551414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.347515, 37.471512, 40.977634>,  <33.198227, 36.908421, 41.410606>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.347515, 37.471512, 40.977634> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.711849, 37.335701, 41.071526>,  <33.930450, 37.254215, 41.127861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.711849, 37.335701, 41.071526>,  <33.347515, 37.471512, 40.977634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.711849, 37.335701, 41.071526> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283822, 0.102258, -0.953409,
		0.299708, 0.935020, 0.189506,
		0.910835, -0.339530, 0.234732,
		33.985100, 37.233841, 41.141945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.801899, 37.704601, 40.576965>,  <33.347515, 37.471512, 40.977634>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.801899, 37.704601, 40.576965> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.014450, 37.381451, 40.678921>,  <34.141983, 37.187561, 40.740093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.014450, 37.381451, 40.678921>,  <33.801899, 37.704601, 40.576965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.014450, 37.381451, 40.678921> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400991, -0.025165, -0.915736,
		0.746218, 0.588811, 0.310580,
		0.531380, -0.807879, 0.254887,
		34.173862, 37.139088, 40.755386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.544113, 37.732719, 40.380730>,  <33.801899, 37.704601, 40.576965>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.544113, 37.732719, 40.380730> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.463398, 37.343273, 40.423336>,  <34.414970, 37.109604, 40.448898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.463398, 37.343273, 40.423336>,  <34.544113, 37.732719, 40.380730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.463398, 37.343273, 40.423336> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570199, -0.205203, -0.795465,
		0.796338, -0.099779, 0.596565,
		-0.201788, -0.973620, 0.106517,
		34.402863, 37.051186, 40.455292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.132339, 37.411709, 40.295944>,  <34.544113, 37.732719, 40.380730>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.132339, 37.411709, 40.295944> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.921562, 37.074268, 40.254650>,  <34.795094, 36.871803, 40.229874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.921562, 37.074268, 40.254650>,  <35.132339, 37.411709, 40.295944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.921562, 37.074268, 40.254650> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724248, -0.382156, -0.573952,
		0.444737, -0.377210, 0.812356,
		-0.526948, -0.843605, -0.103235,
		34.763477, 36.821186, 40.223679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.573322, 36.734982, 40.453373>,  <35.132339, 37.411709, 40.295944>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.573322, 36.734982, 40.453373> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.283844, 36.632607, 40.197010>,  <35.110157, 36.571182, 40.043194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.283844, 36.632607, 40.197010>,  <35.573322, 36.734982, 40.453373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.283844, 36.632607, 40.197010> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689012, -0.320512, -0.650026,
		-0.039050, -0.912013, 0.408298,
		-0.723697, -0.255939, -0.640904,
		35.066734, 36.555824, 40.004738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.771095, 36.133125, 39.983219>,  <35.573322, 36.734982, 40.453373>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.771095, 36.133125, 39.983219> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.438911, 36.257706, 39.798470>,  <35.239601, 36.332455, 39.687618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.438911, 36.257706, 39.798470>,  <35.771095, 36.133125, 39.983219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.438911, 36.257706, 39.798470> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331279, -0.390464, -0.858948,
		-0.447871, -0.866333, 0.221086,
		-0.830461, 0.311457, -0.461876,
		35.189774, 36.351143, 39.659908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.453896, 35.497368, 39.623108>,  <35.771095, 36.133125, 39.983219>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.453896, 35.497368, 39.623108> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.339970, 35.832958, 39.437634>,  <35.271614, 36.034313, 39.326347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.339970, 35.832958, 39.437634>,  <35.453896, 35.497368, 39.623108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.339970, 35.832958, 39.437634> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420254, -0.325470, -0.847028,
		-0.861548, -0.436114, -0.259882,
		-0.284817, 0.838972, -0.463687,
		35.254524, 36.084648, 39.298527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.058079, 35.270023, 39.051567>,  <35.453896, 35.497368, 39.623108>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.058079, 35.270023, 39.051567> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.164291, 35.643833, 38.956779>,  <35.228020, 35.868118, 38.899906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.164291, 35.643833, 38.956779>,  <35.058079, 35.270023, 39.051567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.164291, 35.643833, 38.956779> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456959, -0.338429, -0.822590,
		-0.848928, 0.110140, -0.516904,
		0.265535, 0.934524, -0.236972,
		35.243954, 35.924191, 38.885689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.910416, 35.244324, 38.357826>,  <35.058079, 35.270023, 39.051567>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.910416, 35.244324, 38.357826> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.166470, 35.548424, 38.402081>,  <35.320103, 35.730885, 38.428635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.166470, 35.548424, 38.402081>,  <34.910416, 35.244324, 38.357826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.166470, 35.548424, 38.402081> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322476, -0.135184, -0.936875,
		-0.697305, 0.635407, -0.331699,
		0.640137, 0.760252, 0.110640,
		35.358509, 35.776501, 38.435272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.892426, 35.581013, 37.753853>,  <34.910416, 35.244324, 38.357826>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.892426, 35.581013, 37.753853> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.240490, 35.728420, 37.884705>,  <35.449329, 35.816864, 37.963215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.240490, 35.728420, 37.884705>,  <34.892426, 35.581013, 37.753853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.240490, 35.728420, 37.884705> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361717, -0.026853, -0.931901,
		-0.334636, 0.929233, -0.156665,
		0.870160, 0.368516, 0.327134,
		35.501537, 35.838974, 37.982845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.126328, 36.198563, 37.411098>,  <34.892426, 35.581013, 37.753853>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.126328, 36.198563, 37.411098> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.479889, 36.053978, 37.529800>,  <35.692024, 35.967228, 37.601021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.479889, 36.053978, 37.529800>,  <35.126328, 36.198563, 37.411098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.479889, 36.053978, 37.529800> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397512, 0.246383, -0.883900,
		0.246383, 0.899244, 0.361464,
		0.883900, -0.361464, 0.296755,
		35.745060, 35.945538, 37.618828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590878, 36.606171, 37.132336>,  <35.126328, 36.198563, 37.411098>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.590878, 36.606171, 37.132336> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.800980, 36.279438, 37.227745>,  <35.927040, 36.083397, 37.284992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.800980, 36.279438, 37.227745>,  <35.590878, 36.606171, 37.132336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.800980, 36.279438, 37.227745> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514675, 0.081731, -0.853481,
		0.677656, 0.571055, 0.463333,
		0.525253, -0.816833, 0.238522,
		35.958557, 36.034389, 37.299301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.230854, 36.793812, 36.907467>,  <35.590878, 36.606171, 37.132336>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.230854, 36.793812, 36.907467> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.234535, 36.396984, 36.957619>,  <36.236744, 36.158890, 36.987709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.234535, 36.396984, 36.957619>,  <36.230854, 36.793812, 36.907467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.234535, 36.396984, 36.957619> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334413, -0.115116, -0.935369,
		0.942382, 0.050540, 0.330700,
		0.009205, -0.992065, 0.125384,
		36.237297, 36.099365, 36.995235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.900749, 36.596367, 36.600189>,  <36.230854, 36.793812, 36.907467>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.900749, 36.596367, 36.600189> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.662647, 36.275021, 36.593670>,  <36.519787, 36.082211, 36.589760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.662647, 36.275021, 36.593670>,  <36.900749, 36.596367, 36.600189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.662647, 36.275021, 36.593670> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228406, -0.149724, -0.961984,
		0.770389, -0.576350, 0.272619,
		-0.595257, -0.803370, -0.016296,
		36.484070, 36.034008, 36.588779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313046, 36.099258, 36.130611>,  <36.900749, 36.596367, 36.600189>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.313046, 36.099258, 36.130611> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.936203, 35.965916, 36.145065>,  <36.710098, 35.885910, 36.153740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.936203, 35.965916, 36.145065>,  <37.313046, 36.099258, 36.130611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.936203, 35.965916, 36.145065> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022206, -0.169564, -0.985269,
		0.334576, -0.927427, 0.167150,
		-0.942107, -0.333359, 0.036137,
		36.653572, 35.865910, 36.155907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.307659, 35.569344, 35.841854>,  <37.313046, 36.099258, 36.130611>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.307659, 35.569344, 35.841854> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.924496, 35.681831, 35.818798>,  <36.694595, 35.749325, 35.804962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.924496, 35.681831, 35.818798>,  <37.307659, 35.569344, 35.841854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.924496, 35.681831, 35.818798> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048225, -0.040305, -0.998023,
		-0.282986, -0.958797, 0.025047,
		-0.957911, 0.281218, -0.057644,
		36.637123, 35.766197, 35.801506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.909275, 35.937206, 35.583752>,  <37.307659, 35.569344, 35.841854>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.909275, 35.937206, 35.583752> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.282692, 36.072109, 35.632336>,  <38.506744, 36.153049, 35.661488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.282692, 36.072109, 35.632336>,  <37.909275, 35.937206, 35.583752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.282692, 36.072109, 35.632336> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067402, -0.167640, 0.983542,
		0.352069, -0.926366, -0.133767,
		0.933544, 0.337258, 0.121459,
		38.562756, 36.173286, 35.668774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.255005, 35.519062, 36.108089>,  <37.909275, 35.937206, 35.583752>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.255005, 35.519062, 36.108089> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.480076, 35.849400, 36.093288>,  <38.615120, 36.047604, 36.084408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.480076, 35.849400, 36.093288>,  <38.255005, 35.519062, 36.108089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.480076, 35.849400, 36.093288> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056579, 0.006184, 0.998379,
		0.824736, -0.563862, -0.043246,
		0.562680, 0.825846, -0.037003,
		38.648880, 36.097153, 36.082188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.813068, 35.484165, 36.484013>,  <38.255005, 35.519062, 36.108089>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.813068, 35.484165, 36.484013> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.758152, 35.880024, 36.467308>,  <38.725204, 36.117538, 36.457287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.758152, 35.880024, 36.467308>,  <38.813068, 35.484165, 36.484013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.758152, 35.880024, 36.467308> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062397, 0.050718, 0.996762,
		0.988564, 0.134239, -0.068714,
		-0.137289, 0.989650, -0.041762,
		38.716965, 36.176918, 36.454781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.298397, 35.735626, 36.933506>,  <38.813068, 35.484165, 36.484013>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.298397, 35.735626, 36.933506> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.013317, 36.012733, 36.889439>,  <38.842270, 36.178997, 36.862999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.013317, 36.012733, 36.889439>,  <39.298397, 35.735626, 36.933506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.013317, 36.012733, 36.889439> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043896, 0.200792, 0.978650,
		0.700097, 0.692646, -0.173513,
		-0.712698, 0.692766, -0.110169,
		38.799507, 36.220562, 36.856388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.518269, 36.014671, 37.543480>,  <39.298397, 35.735626, 36.933506>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.518269, 36.014671, 37.543480> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.212128, 36.222141, 37.391056>,  <39.028442, 36.346622, 37.299603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.212128, 36.222141, 37.391056>,  <39.518269, 36.014671, 37.543480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.212128, 36.222141, 37.391056> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149224, 0.432933, 0.888989,
		0.626071, 0.737255, -0.253948,
		-0.765354, 0.518675, -0.381063,
		38.982521, 36.377743, 37.276737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.548973, 36.734829, 37.847725>,  <39.518269, 36.014671, 37.543480>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.548973, 36.734829, 37.847725> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.159042, 36.703091, 37.764385>,  <38.925083, 36.684048, 37.714382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.159042, 36.703091, 37.764385>,  <39.548973, 36.734829, 37.847725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.159042, 36.703091, 37.764385> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221210, 0.460581, 0.859611,
		0.027753, 0.884064, -0.466541,
		-0.974831, -0.079346, -0.208346,
		38.866592, 36.679287, 37.701881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.230213, 37.445999, 37.933437>,  <39.548973, 36.734829, 37.847725>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.230213, 37.445999, 37.933437> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.947708, 37.163532, 37.953522>,  <38.778206, 36.994053, 37.965572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.947708, 37.163532, 37.953522>,  <39.230213, 37.445999, 37.933437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.947708, 37.163532, 37.953522> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378857, 0.436917, 0.815825,
		-0.598051, 0.557160, -0.576114,
		-0.706259, -0.706170, 0.050215,
		38.735832, 36.951679, 37.968586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.614872, 37.810619, 38.036835>,  <39.230213, 37.445999, 37.933437>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.614872, 37.810619, 38.036835> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.597004, 37.437572, 38.180073>,  <38.586281, 37.213745, 38.266014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.597004, 37.437572, 38.180073>,  <38.614872, 37.810619, 38.036835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.597004, 37.437572, 38.180073> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103775, 0.360845, 0.926834,
		-0.993597, 0.004244, -0.112903,
		-0.044674, -0.932616, 0.358094,
		38.583603, 37.157787, 38.287502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.108711, 37.893250, 38.514599>,  <38.614872, 37.810619, 38.036835>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.108711, 37.893250, 38.514599> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.272278, 37.542091, 38.614262>,  <38.370419, 37.331394, 38.674057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.272278, 37.542091, 38.614262>,  <38.108711, 37.893250, 38.514599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.272278, 37.542091, 38.614262> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311601, 0.122294, 0.942310,
		-0.857724, -0.462964, -0.223547,
		0.408917, -0.877900, 0.249155,
		38.394955, 37.278721, 38.689007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.665573, 37.593437, 39.001591>,  <38.108711, 37.893250, 38.514599>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.665573, 37.593437, 39.001591> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.020775, 37.412872, 39.036644>,  <38.233894, 37.304535, 39.057674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.020775, 37.412872, 39.036644>,  <37.665573, 37.593437, 39.001591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.020775, 37.412872, 39.036644> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013173, 0.165522, 0.986118,
		-0.459647, -0.876831, 0.141037,
		0.888004, -0.451408, 0.087632,
		38.287178, 37.277451, 39.062935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504795, 37.168579, 39.469910>,  <37.665573, 37.593437, 39.001591>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.504795, 37.168579, 39.469910> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.899975, 37.213455, 39.512569>,  <38.137081, 37.240379, 39.538166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.899975, 37.213455, 39.512569>,  <37.504795, 37.168579, 39.469910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.899975, 37.213455, 39.512569> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142729, 0.393579, 0.908143,
		0.059908, -0.912420, 0.404847,
		0.987947, 0.112188, 0.106650,
		38.196358, 37.247112, 39.544563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.700100, 36.829620, 40.013798>,  <37.504795, 37.168579, 39.469910>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.700100, 36.829620, 40.013798> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.003819, 37.084698, 39.961922>,  <38.186050, 37.237743, 39.930798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.003819, 37.084698, 39.961922>,  <37.700100, 36.829620, 40.013798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.003819, 37.084698, 39.961922> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107264, 0.319211, 0.941594,
		0.641844, -0.701037, 0.310777,
		0.759296, 0.637692, -0.129688,
		38.231606, 37.276005, 39.923016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.026730, 36.850502, 40.607956>,  <37.700100, 36.829620, 40.013798>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.026730, 36.850502, 40.607956> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.117317, 37.208748, 40.454815>,  <38.171669, 37.423695, 40.362930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.117317, 37.208748, 40.454815>,  <38.026730, 36.850502, 40.607956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.117317, 37.208748, 40.454815> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028266, 0.386858, 0.921706,
		0.973608, -0.219562, 0.062297,
		0.226472, 0.895619, -0.382854,
		38.185257, 37.477432, 40.339958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.452656, 37.038353, 41.257675>,  <38.026730, 36.850502, 40.607956>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.452656, 37.038353, 41.257675> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.237679, 37.375126, 41.238518>,  <38.108692, 37.577190, 41.227024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.237679, 37.375126, 41.238518>,  <38.452656, 37.038353, 41.257675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.237679, 37.375126, 41.238518> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273099, -0.120033, 0.954468,
		0.797851, 0.526057, 0.294443,
		-0.537448, 0.841936, -0.047897,
		38.076443, 37.627708, 41.224148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.542225, 37.405689, 41.802299>,  <38.452656, 37.038353, 41.257675>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.542225, 37.405689, 41.802299> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.176800, 37.539421, 41.709679>,  <37.957542, 37.619659, 41.654106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.176800, 37.539421, 41.709679>,  <38.542225, 37.405689, 41.802299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.176800, 37.539421, 41.709679> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273797, -0.084607, 0.958059,
		0.300720, 0.938649, 0.168834,
		-0.913566, 0.334334, -0.231556,
		37.902729, 37.639721, 41.640213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.286598, 37.783142, 42.343182>,  <38.542225, 37.405689, 41.802299>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.286598, 37.783142, 42.343182> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.941307, 37.690041, 42.164005>,  <37.734131, 37.634178, 42.056499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.941307, 37.690041, 42.164005>,  <38.286598, 37.783142, 42.343182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.941307, 37.690041, 42.164005> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418149, -0.167436, 0.892814,
		-0.282811, 0.958013, 0.047209,
		-0.863232, -0.232758, -0.447945,
		37.682339, 37.620213, 42.029621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.888924, 38.323204, 42.568035>,  <38.286598, 37.783142, 42.343182>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.888924, 38.323204, 42.568035> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.651112, 38.029160, 42.437714>,  <37.508427, 37.852734, 42.359520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.651112, 38.029160, 42.437714>,  <37.888924, 38.323204, 42.568035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.651112, 38.029160, 42.437714> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571955, 0.101831, 0.813940,
		-0.565159, 0.670254, -0.480992,
		-0.594527, -0.735112, -0.325805,
		37.472755, 37.808624, 42.339973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.212200, 38.579891, 42.561398>,  <37.888924, 38.323204, 42.568035>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.212200, 38.579891, 42.561398> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.158417, 38.183620, 42.570137>,  <37.126148, 37.945858, 42.575382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.158417, 38.183620, 42.570137>,  <37.212200, 38.579891, 42.561398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.158417, 38.183620, 42.570137> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578196, 0.096341, 0.810190,
		-0.804742, 0.096303, -0.585760,
		-0.134456, -0.990678, 0.021848,
		37.118080, 37.886417, 42.576691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.467953, 38.450809, 42.642124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.631783, 38.110962, 42.775024>,  <36.730080, 37.907055, 42.854767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.631783, 38.110962, 42.775024>,  <36.467953, 38.450809, 42.642124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.631783, 38.110962, 42.775024> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480974, 0.108365, 0.870012,
		-0.775185, -0.516142, -0.364262,
		0.409577, -0.849620, 0.332253,
		36.754654, 37.856075, 42.874699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.976475, 38.012188, 42.961807>,  <36.467953, 38.450809, 42.642124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.976475, 38.012188, 42.961807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.289932, 37.823223, 43.123173>,  <36.478004, 37.709846, 43.219990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.289932, 37.823223, 43.123173>,  <35.976475, 38.012188, 42.961807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.289932, 37.823223, 43.123173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537392, -0.189742, 0.821710,
		-0.311642, -0.860712, -0.402560,
		0.783638, -0.472412, 0.403409,
		36.525024, 37.681499, 43.244194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.694859, 37.383747, 43.358730>,  <35.976475, 38.012188, 42.961807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.694859, 37.383747, 43.358730> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.063831, 37.467541, 43.488491>,  <36.285213, 37.517815, 43.566345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.063831, 37.467541, 43.488491>,  <35.694859, 37.383747, 43.358730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.063831, 37.467541, 43.488491> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320605, -0.052798, 0.945740,
		0.215243, -0.976386, 0.018458,
		0.922433, 0.209481, 0.324398,
		36.340561, 37.530384, 43.585812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.881943, 36.907276, 43.755356>,  <35.694859, 37.383747, 43.358730>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.881943, 36.907276, 43.755356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.132679, 37.199352, 43.864090>,  <36.283123, 37.374596, 43.929333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.132679, 37.199352, 43.864090>,  <35.881943, 36.907276, 43.755356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.132679, 37.199352, 43.864090> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263716, -0.129467, 0.955873,
		0.733159, -0.670870, 0.111407,
		0.626842, 0.730187, 0.271839,
		36.320732, 37.418407, 43.945641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291088, 36.600559, 44.342602>,  <35.881943, 36.907276, 43.755356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291088, 36.600559, 44.342602> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.316006, 36.998699, 44.371990>,  <36.330956, 37.237583, 44.389622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.316006, 36.998699, 44.371990>,  <36.291088, 36.600559, 44.342602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.316006, 36.998699, 44.371990> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188826, -0.060532, 0.980143,
		0.980033, -0.074925, 0.184177,
		0.062289, 0.995350, 0.073471,
		36.334694, 37.297306, 44.394032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.449520, 36.715160, 45.071850>,  <36.291088, 36.600559, 44.342602>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.449520, 36.715160, 45.071850> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.368328, 37.090305, 44.959270>,  <36.319614, 37.315392, 44.891724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.368328, 37.090305, 44.959270>,  <36.449520, 36.715160, 45.071850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.368328, 37.090305, 44.959270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085181, 0.269432, 0.959245,
		0.975471, 0.218679, 0.025200,
		-0.202977, 0.937862, -0.281451,
		36.307434, 37.371662, 44.874836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.925526, 37.113068, 45.373104>,  <36.449520, 36.715160, 45.071850>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.925526, 37.113068, 45.373104> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.598396, 37.326405, 45.286655>,  <36.402119, 37.454407, 45.234787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.598396, 37.326405, 45.286655>,  <36.925526, 37.113068, 45.373104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.598396, 37.326405, 45.286655> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047612, 0.311560, 0.949033,
		0.573496, 0.786432, -0.229408,
		-0.817824, 0.533344, -0.216123,
		36.353050, 37.486408, 45.221817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.912861, 37.737278, 45.800877>,  <36.925526, 37.113068, 45.373104>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.912861, 37.737278, 45.800877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.531612, 37.697449, 45.686588>,  <36.302864, 37.673553, 45.618015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.531612, 37.697449, 45.686588>,  <36.912861, 37.737278, 45.800877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.531612, 37.697449, 45.686588> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300053, 0.432744, 0.850118,
		0.038999, 0.896001, -0.442336,
		-0.953125, -0.099570, -0.285724,
		36.245674, 37.667580, 45.600872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.669449, 38.409046, 45.778488>,  <36.912861, 37.737278, 45.800877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.669449, 38.409046, 45.778488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.373821, 38.148434, 45.846939>,  <36.196445, 37.992065, 45.888012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.373821, 38.148434, 45.846939>,  <36.669449, 38.409046, 45.778488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.373821, 38.148434, 45.846939> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191459, 0.446732, 0.873942,
		-0.645846, 0.613141, -0.454908,
		-0.739071, -0.651528, 0.171129,
		36.152100, 37.952976, 45.898277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.083786, 38.789848, 46.161510>,  <36.669449, 38.409046, 45.778488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.083786, 38.789848, 46.161510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.016773, 38.400620, 46.224831>,  <35.976566, 38.167080, 46.262825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.016773, 38.400620, 46.224831>,  <36.083786, 38.789848, 46.161510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.016773, 38.400620, 46.224831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299144, 0.203177, 0.932326,
		-0.939386, 0.108839, -0.325128,
		-0.167532, -0.973074, 0.158303,
		35.966515, 38.108696, 46.272320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.526489, 38.754433, 46.552307>,  <36.083786, 38.789848, 46.161510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.526489, 38.754433, 46.552307> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.661694, 38.387543, 46.636635>,  <35.742817, 38.167408, 46.687233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.661694, 38.387543, 46.636635>,  <35.526489, 38.754433, 46.552307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.661694, 38.387543, 46.636635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369110, 0.076864, 0.926202,
		-0.865740, -0.390884, -0.312576,
		0.338012, -0.917225, 0.210824,
		35.763096, 38.112377, 46.699883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.010006, 38.488998, 47.080933>,  <35.526489, 38.754433, 46.552307>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.010006, 38.488998, 47.080933> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.301083, 38.217518, 47.120586>,  <35.475727, 38.054630, 47.144379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.301083, 38.217518, 47.120586>,  <35.010006, 38.488998, 47.080933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.301083, 38.217518, 47.120586> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218692, -0.092592, 0.971391,
		-0.650109, -0.728551, -0.215805,
		0.727690, -0.678705, 0.099134,
		35.519390, 38.013905, 47.150326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.806496, 38.107895, 47.675217>,  <35.010006, 38.488998, 47.080933>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.806496, 38.107895, 47.675217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.178104, 37.971874, 47.616852>,  <35.401070, 37.890263, 47.581833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.178104, 37.971874, 47.616852>,  <34.806496, 38.107895, 47.675217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.178104, 37.971874, 47.616852> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044408, -0.493939, 0.868361,
		-0.367358, -0.800244, -0.473980,
		0.929019, -0.340048, -0.145916,
		35.456810, 37.869858, 47.573078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.807549, 37.338856, 47.833412>,  <34.806496, 38.107895, 47.675217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.807549, 37.338856, 47.833412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.170258, 37.495197, 47.896645>,  <35.387882, 37.589005, 47.934586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.170258, 37.495197, 47.896645>,  <34.807549, 37.338856, 47.833412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.170258, 37.495197, 47.896645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020802, -0.333014, 0.942693,
		0.421102, -0.858098, -0.293838,
		0.906775, 0.390858, 0.158083,
		35.442291, 37.612453, 47.944069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.312256, 36.723705, 47.935997>,  <34.807549, 37.338856, 47.833412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.312256, 36.723705, 47.935997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.472458, 37.058979, 48.084072>,  <35.568577, 37.260143, 48.172916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.472458, 37.058979, 48.084072>,  <35.312256, 36.723705, 47.935997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.472458, 37.058979, 48.084072> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015415, -0.410113, 0.911905,
		0.916167, -0.359512, -0.177171,
		0.400501, 0.838188, 0.370190,
		35.592609, 37.310436, 48.195129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.769276, 36.499306, 48.432098>,  <35.312256, 36.723705, 47.935997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.769276, 36.499306, 48.432098> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.737534, 36.885685, 48.530598>,  <35.718491, 37.117512, 48.589699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.737534, 36.885685, 48.530598>,  <35.769276, 36.499306, 48.432098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.737534, 36.885685, 48.530598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026566, -0.244892, 0.969186,
		0.996493, 0.083449, -0.006229,
		-0.079352, 0.965952, 0.246250,
		35.713730, 37.175472, 48.604473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298859, 36.504227, 48.977261>,  <35.769276, 36.499306, 48.432098>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.298859, 36.504227, 48.977261> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.076000, 36.835789, 48.997311>,  <35.942284, 37.034725, 49.009338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.076000, 36.835789, 48.997311>,  <36.298859, 36.504227, 48.977261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.076000, 36.835789, 48.997311> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068595, -0.106088, 0.991988,
		0.827578, 0.549243, 0.115965,
		-0.557145, 0.828902, 0.050121,
		35.908855, 37.084457, 49.012348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640892, 37.002167, 49.384789>,  <36.298859, 36.504227, 48.977261>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640892, 37.002167, 49.384789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.243580, 37.041378, 49.409424>,  <36.005192, 37.064903, 49.424206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.243580, 37.041378, 49.409424>,  <36.640892, 37.002167, 49.384789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.243580, 37.041378, 49.409424> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047395, -0.141020, 0.988872,
		0.105619, 0.985142, 0.135426,
		-0.993277, 0.098025, 0.061586,
		35.945599, 37.070786, 49.427898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426807, 37.313816, 50.019741>,  <36.640892, 37.002167, 49.384789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.426807, 37.313816, 50.019741> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.061893, 37.172546, 49.936787>,  <35.842945, 37.087784, 49.887012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.061893, 37.172546, 49.936787>,  <36.426807, 37.313816, 50.019741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.061893, 37.172546, 49.936787> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197221, -0.064966, 0.978204,
		-0.358948, 0.933300, -0.010386,
		-0.912283, -0.353173, -0.207386,
		35.788208, 37.066593, 49.874573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.096706, 37.524578, 50.603081>,  <36.426807, 37.313816, 50.019741>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.096706, 37.524578, 50.603081> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.845650, 37.259048, 50.440403>,  <35.695015, 37.099731, 50.342796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.845650, 37.259048, 50.440403>,  <36.096706, 37.524578, 50.603081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.845650, 37.259048, 50.440403> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438179, -0.130578, 0.889353,
		-0.643482, 0.736399, -0.208920,
		-0.627638, -0.663827, -0.406699,
		35.657360, 37.059902, 50.318394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.554390, 37.734089, 50.905952>,  <36.096706, 37.524578, 50.603081>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.554390, 37.734089, 50.905952> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.441021, 37.368774, 50.788933>,  <35.372997, 37.149586, 50.718719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.441021, 37.368774, 50.788933>,  <35.554390, 37.734089, 50.905952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.441021, 37.368774, 50.788933> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576056, -0.081756, 0.813312,
		-0.766701, 0.399039, -0.502930,
		-0.283426, -0.913282, -0.292551,
		35.355991, 37.094791, 50.701168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.800133, 37.704842, 51.066231>,  <35.554390, 37.734089, 50.905952>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.800133, 37.704842, 51.066231> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.923092, 37.325001, 51.041721>,  <34.996868, 37.097095, 51.027016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.923092, 37.325001, 51.041721>,  <34.800133, 37.704842, 51.066231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.923092, 37.325001, 51.041721> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712427, -0.272350, 0.646741,
		-0.630836, -0.155155, -0.760245,
		0.307398, -0.949606, -0.061271,
		35.015312, 37.040119, 51.023338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.178226, 37.336544, 50.794342>,  <34.800133, 37.704842, 51.066231>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.178226, 37.336544, 50.794342> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.452042, 37.141422, 51.011028>,  <34.616333, 37.024349, 51.141037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.452042, 37.141422, 51.011028>,  <34.178226, 37.336544, 50.794342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.452042, 37.141422, 51.011028> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642328, -0.052239, 0.764647,
		-0.344699, -0.871389, -0.349090,
		0.684541, -0.487804, 0.541711,
		34.657406, 36.995083, 51.173542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.982487, 36.651405, 50.902096>,  <34.178226, 37.336544, 50.794342>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.982487, 36.651405, 50.902096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.206825, 36.821232, 51.186405>,  <34.341427, 36.923126, 51.356991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.206825, 36.821232, 51.186405>,  <33.982487, 36.651405, 50.902096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.206825, 36.821232, 51.186405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701856, -0.211560, 0.680176,
		0.439149, -0.880334, 0.179331,
		0.560843, 0.424563, 0.710775,
		34.375080, 36.948601, 51.399639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.401081, 36.166771, 51.170940>,  <33.982487, 36.651405, 50.902096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.401081, 36.166771, 51.170940> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.004681, 36.148270, 51.221191>,  <32.766842, 36.137169, 51.251343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.004681, 36.148270, 51.221191>,  <33.401081, 36.166771, 51.170940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.004681, 36.148270, 51.221191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128886, 0.075876, -0.988752,
		0.036198, -0.996044, -0.081154,
		-0.990998, -0.046250, 0.125630,
		32.707382, 36.134392, 51.258881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.181988, 35.680164, 50.757671>,  <33.401081, 36.166771, 51.170940>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.181988, 35.680164, 50.757671> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.880447, 35.932789, 50.830147>,  <32.699524, 36.084366, 50.873631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.880447, 35.932789, 50.830147>,  <33.181988, 35.680164, 50.757671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.880447, 35.932789, 50.830147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107760, 0.153183, -0.982305,
		-0.648144, -0.760040, -0.047420,
		-0.753854, 0.631565, 0.181187,
		32.654289, 36.122257, 50.884502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.708248, 35.524929, 50.220425>,  <33.181988, 35.680164, 50.757671>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.708248, 35.524929, 50.220425> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.603050, 35.891499, 50.341091>,  <32.539932, 36.111439, 50.413490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.603050, 35.891499, 50.341091>,  <32.708248, 35.524929, 50.220425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.603050, 35.891499, 50.341091> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019993, 0.307428, -0.951361,
		-0.964590, -0.256234, -0.062529,
		-0.262994, 0.916424, 0.301665,
		32.524151, 36.166428, 50.431591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.098896, 35.705837, 49.779720>,  <32.708248, 35.524929, 50.220425>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.098896, 35.705837, 49.779720> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.251301, 36.049736, 49.915756>,  <32.342743, 36.256077, 49.997375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.251301, 36.049736, 49.915756>,  <32.098896, 35.705837, 49.779720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.251301, 36.049736, 49.915756> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017450, 0.361079, -0.932372,
		-0.924404, 0.361183, 0.122574,
		0.381015, 0.859749, 0.340086,
		32.365604, 36.307659, 50.017780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.714226, 36.150070, 49.507877>,  <32.098896, 35.705837, 49.779720>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.714226, 36.150070, 49.507877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.028866, 36.375229, 49.609390>,  <32.217651, 36.510323, 49.670300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.028866, 36.375229, 49.609390>,  <31.714226, 36.150070, 49.507877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.028866, 36.375229, 49.609390> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140347, 0.237259, -0.961255,
		-0.601299, 0.791742, 0.107628,
		0.786602, 0.562897, 0.253782,
		32.264847, 36.544098, 49.685524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.700609, 36.792706, 49.180119>,  <31.714226, 36.150070, 49.507877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.700609, 36.792706, 49.180119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.084030, 36.819244, 49.290951>,  <32.314083, 36.835167, 49.357452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.084030, 36.819244, 49.290951>,  <31.700609, 36.792706, 49.180119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.084030, 36.819244, 49.290951> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233520, 0.374220, -0.897456,
		-0.163234, 0.924964, 0.343216,
		0.958553, 0.066348, 0.277083,
		32.371597, 36.839149, 49.374077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.948635, 37.541138, 49.079987>,  <31.700609, 36.792706, 49.180119>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.948635, 37.541138, 49.079987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.246651, 37.274406, 49.086372>,  <32.425461, 37.114368, 49.090202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.246651, 37.274406, 49.086372>,  <31.948635, 37.541138, 49.079987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.246651, 37.274406, 49.086372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317654, 0.333662, -0.887562,
		0.586529, 0.666337, 0.460413,
		0.745037, -0.666832, 0.015962,
		32.470161, 37.074356, 49.091160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.545696, 37.885345, 48.761738>,  <31.948635, 37.541138, 49.079987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.545696, 37.885345, 48.761738> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.668732, 37.505280, 48.741474>,  <32.742554, 37.277241, 48.729317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.668732, 37.505280, 48.741474>,  <32.545696, 37.885345, 48.761738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.668732, 37.505280, 48.741474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271146, 0.138565, -0.952512,
		0.912068, 0.279247, 0.300256,
		0.307591, -0.950169, -0.050664,
		32.761009, 37.220230, 48.726276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.257687, 37.899628, 48.460526>,  <32.545696, 37.885345, 48.761738>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.257687, 37.899628, 48.460526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.115612, 37.536221, 48.372490>,  <33.030369, 37.318176, 48.319668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.115612, 37.536221, 48.372490>,  <33.257687, 37.899628, 48.460526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.115612, 37.536221, 48.372490> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370059, 0.079547, -0.925596,
		0.858429, -0.410202, 0.307952,
		-0.355185, -0.908519, -0.220084,
		33.009056, 37.263664, 48.306465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.717613, 37.609077, 47.992794>,  <33.257687, 37.899628, 48.460526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.717613, 37.609077, 47.992794> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.393265, 37.382206, 47.935116>,  <33.198654, 37.246082, 47.900509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.393265, 37.382206, 47.935116>,  <33.717613, 37.609077, 47.992794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.393265, 37.382206, 47.935116> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198916, -0.035385, -0.979377,
		0.550379, -0.822834, 0.141514,
		-0.810873, -0.567178, -0.144200,
		33.150002, 37.212051, 47.891857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.929474, 37.080051, 47.670864>,  <33.717613, 37.609077, 47.992794>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.929474, 37.080051, 47.670864> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.543533, 37.102345, 47.568142>,  <33.311970, 37.115719, 47.506508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.543533, 37.102345, 47.568142>,  <33.929474, 37.080051, 47.670864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.543533, 37.102345, 47.568142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255652, -0.027098, -0.966389,
		-0.060820, -0.998078, 0.011898,
		-0.964854, 0.055734, -0.256808,
		33.254078, 37.119064, 47.491100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.916340, 36.674847, 47.103622>,  <33.929474, 37.080051, 47.670864>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.916340, 36.674847, 47.103622> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.568676, 36.870415, 47.073879>,  <33.360077, 36.987755, 47.056034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.568676, 36.870415, 47.073879>,  <33.916340, 36.674847, 47.103622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.568676, 36.870415, 47.073879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153421, 0.123625, -0.980397,
		-0.470139, -0.863526, -0.182460,
		-0.869155, 0.488917, -0.074362,
		33.307930, 37.017090, 47.051571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.641125, 36.443924, 46.422947>,  <33.916340, 36.674847, 47.103622>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.641125, 36.443924, 46.422947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.449226, 36.782909, 46.513855>,  <33.334087, 36.986301, 46.568401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.449226, 36.782909, 46.513855>,  <33.641125, 36.443924, 46.422947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.449226, 36.782909, 46.513855> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084924, 0.212958, -0.973364,
		-0.873286, -0.486271, -0.030197,
		-0.479749, 0.847460, 0.227269,
		33.305302, 37.037148, 46.582035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.993664, 36.426468, 46.047180>,  <33.641125, 36.443924, 46.422947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.993664, 36.426468, 46.047180> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.082333, 36.803699, 46.146355>,  <33.135532, 37.030037, 46.205860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.082333, 36.803699, 46.146355>,  <32.993664, 36.426468, 46.047180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.082333, 36.803699, 46.146355> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051282, 0.265185, -0.962833,
		-0.973773, 0.200714, 0.107146,
		0.221668, 0.943075, 0.247937,
		33.148834, 37.086620, 46.220737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.680969, 36.863976, 45.523136>,  <32.993664, 36.426468, 46.047180>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.680969, 36.863976, 45.523136> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.941612, 37.115444, 45.692928>,  <33.098000, 37.266323, 45.794804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.941612, 37.115444, 45.692928>,  <32.680969, 36.863976, 45.523136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.941612, 37.115444, 45.692928> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194343, 0.402559, -0.894526,
		-0.733239, 0.665375, 0.140133,
		0.651607, 0.628667, 0.424483,
		33.137093, 37.304043, 45.820274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.558979, 37.438160, 45.233864>,  <32.680969, 36.863976, 45.523136>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.558979, 37.438160, 45.233864> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.932762, 37.477097, 45.370865>,  <33.157032, 37.500458, 45.453064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.932762, 37.477097, 45.370865>,  <32.558979, 37.438160, 45.233864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.932762, 37.477097, 45.370865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298753, 0.309016, -0.902915,
		-0.193729, 0.946063, 0.259682,
		0.934460, 0.097340, 0.342504,
		33.213100, 37.506298, 45.473618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.816372, 38.151871, 44.987965>,  <32.558979, 37.438160, 45.233864>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.816372, 38.151871, 44.987965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.132301, 37.921719, 45.072933>,  <33.321857, 37.783627, 45.123913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.132301, 37.921719, 45.072933>,  <32.816372, 38.151871, 44.987965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.132301, 37.921719, 45.072933> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445856, 0.300782, -0.843055,
		0.421182, 0.760573, 0.494100,
		0.789821, -0.575377, 0.212422,
		33.369247, 37.749104, 45.136662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.317211, 38.483501, 44.546257>,  <32.816372, 38.151871, 44.987965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.317211, 38.483501, 44.546257> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.486286, 38.132607, 44.637287>,  <33.587730, 37.922070, 44.691906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.486286, 38.132607, 44.637287>,  <33.317211, 38.483501, 44.546257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.486286, 38.132607, 44.637287> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401851, -0.043660, -0.914664,
		0.812311, 0.478072, 0.334063,
		0.422690, -0.877235, 0.227579,
		33.613094, 37.869434, 44.705563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.934887, 38.552391, 44.292328>,  <33.317211, 38.483501, 44.546257>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.934887, 38.552391, 44.292328> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.858894, 38.161209, 44.327011>,  <33.813301, 37.926502, 44.347820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.858894, 38.161209, 44.327011>,  <33.934887, 38.552391, 44.292328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.858894, 38.161209, 44.327011> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441741, -0.164013, -0.882023,
		0.876797, -0.129263, 0.463161,
		-0.189977, -0.977952, 0.086705,
		33.801903, 37.867825, 44.353024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.507412, 38.107868, 44.141773>,  <33.934887, 38.552391, 44.292328>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.507412, 38.107868, 44.141773> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.217735, 37.843464, 44.063175>,  <34.043930, 37.684822, 44.016018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.217735, 37.843464, 44.063175>,  <34.507412, 38.107868, 44.141773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.217735, 37.843464, 44.063175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525078, -0.343850, -0.778499,
		0.447032, -0.666957, 0.596096,
		-0.724193, -0.661011, -0.196493,
		34.000477, 37.645161, 44.004227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.430912, 43.402924, 37.588707> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.150684, 43.317753, 37.316277>,  <42.982548, 43.266651, 37.152817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.150684, 43.317753, 37.316277>,  <43.430912, 43.402924, 37.588707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.150684, 43.317753, 37.316277> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254143, -0.966311, 0.040682,
		-0.666795, -0.144590, 0.731080,
		-0.700568, -0.212925, -0.681078,
		42.940514, 43.253876, 37.111954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.134045, 42.686844, 37.716709>,  <43.430912, 43.402924, 37.588707>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.134045, 42.686844, 37.716709> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.049572, 42.769600, 37.334591>,  <42.998886, 42.819256, 37.105320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.049572, 42.769600, 37.334591>,  <43.134045, 42.686844, 37.716709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.049572, 42.769600, 37.334591> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219353, -0.942382, -0.252586,
		-0.952515, -0.262890, 0.153634,
		-0.211184, 0.206892, -0.955300,
		42.986217, 42.831669, 37.048000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.659191, 42.195530, 37.533062>,  <43.134045, 42.686844, 37.716709>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.659191, 42.195530, 37.533062> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.788433, 42.296669, 37.168278>,  <42.865978, 42.357353, 36.949406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.788433, 42.296669, 37.168278>,  <42.659191, 42.195530, 37.533062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.788433, 42.296669, 37.168278> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192704, -0.925879, -0.324982,
		-0.926536, 0.280741, -0.250430,
		0.323104, 0.252848, -0.911960,
		42.885365, 42.372524, 36.894691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.195354, 42.020733, 37.070782>,  <42.659191, 42.195530, 37.533062>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.195354, 42.020733, 37.070782> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.534969, 42.038589, 36.860207>,  <42.738739, 42.049301, 36.733860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.534969, 42.038589, 36.860207>,  <42.195354, 42.020733, 37.070782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.534969, 42.038589, 36.860207> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211475, -0.884405, -0.416060,
		-0.484155, 0.464581, -0.741457,
		0.849042, 0.044638, -0.526436,
		42.789680, 42.051979, 36.702274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.958580, 41.740715, 36.445648>,  <42.195354, 42.020733, 37.070782>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.958580, 41.740715, 36.445648> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.357769, 41.722912, 36.463879>,  <42.597282, 41.712231, 36.474815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.357769, 41.722912, 36.463879>,  <41.958580, 41.740715, 36.445648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.357769, 41.722912, 36.463879> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020231, -0.899802, -0.435829,
		0.060406, 0.434022, -0.898875,
		0.997969, -0.044512, 0.045572,
		42.657158, 41.709557, 36.477551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.141006, 41.425167, 35.737556>,  <41.958580, 41.740715, 36.445648>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.141006, 41.425167, 35.737556> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.466690, 41.372269, 35.963680>,  <42.662098, 41.340530, 36.099354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.466690, 41.372269, 35.963680>,  <42.141006, 41.425167, 35.737556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.466690, 41.372269, 35.963680> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086207, -0.935378, -0.342981,
		0.574141, 0.327991, -0.750189,
		0.814205, -0.132248, 0.565314,
		42.710953, 41.332596, 36.133274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.585133, 41.056637, 35.274666>,  <42.141006, 41.425167, 35.737556>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.585133, 41.056637, 35.274666> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.754402, 40.985878, 35.630112>,  <42.855965, 40.943424, 35.843380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.754402, 40.985878, 35.630112>,  <42.585133, 41.056637, 35.274666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.754402, 40.985878, 35.630112> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175042, -0.946317, -0.271742,
		0.888980, 0.270539, -0.369491,
		0.423172, -0.176897, 0.888613,
		42.881355, 40.932808, 35.896694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.121510, 40.657993, 35.149044>,  <42.585133, 41.056637, 35.274666>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.121510, 40.657993, 35.149044> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.037952, 40.583508, 35.533062>,  <42.987816, 40.538818, 35.763474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.037952, 40.583508, 35.533062>,  <43.121510, 40.657993, 35.149044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.037952, 40.583508, 35.533062> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164521, -0.974404, -0.153197,
		0.964000, 0.125946, 0.234184,
		-0.208896, -0.186210, 0.960046,
		42.975285, 40.527645, 35.821075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.713539, 40.404591, 35.465324>,  <43.121510, 40.657993, 35.149044>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.713539, 40.404591, 35.465324> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.382668, 40.260048, 35.637463>,  <43.184143, 40.173325, 35.740746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.382668, 40.260048, 35.637463>,  <43.713539, 40.404591, 35.465324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.382668, 40.260048, 35.637463> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258996, -0.924792, -0.278712,
		0.498690, -0.119089, 0.858560,
		-0.827182, -0.361354, 0.430341,
		43.134514, 40.151642, 35.766563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.907536, 39.685524, 35.634575>,  <43.713539, 40.404591, 35.465324>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.907536, 39.685524, 35.634575> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.511414, 39.687363, 35.690102>,  <43.273739, 39.688465, 35.723419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.511414, 39.687363, 35.690102>,  <43.907536, 39.685524, 35.634575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.511414, 39.687363, 35.690102> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036727, -0.972543, -0.229808,
		0.133953, -0.232679, 0.963285,
		-0.990307, 0.004596, 0.138821,
		43.214321, 39.688740, 35.731747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.754185, 39.055279, 36.119362>,  <43.907536, 39.685524, 35.634575>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.754185, 39.055279, 36.119362> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.431976, 39.157238, 35.905388>,  <43.238651, 39.218414, 35.777004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.431976, 39.157238, 35.905388>,  <43.754185, 39.055279, 36.119362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.431976, 39.157238, 35.905388> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074821, -0.939280, -0.334894,
		-0.587820, -0.229741, 0.775685,
		-0.805525, 0.254895, -0.534938,
		43.190319, 39.233707, 35.744907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.142193, 38.469536, 36.193645>,  <43.754185, 39.055279, 36.119362>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.142193, 38.469536, 36.193645> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.047394, 38.699844, 35.880642>,  <42.990517, 38.838028, 35.692841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.047394, 38.699844, 35.880642>,  <43.142193, 38.469536, 36.193645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.047394, 38.699844, 35.880642> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301510, -0.809276, -0.504147,
		-0.923540, 0.116456, 0.365393,
		-0.236993, 0.575769, -0.782512,
		42.976295, 38.872574, 35.645889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.501957, 38.175846, 35.925591>,  <43.142193, 38.469536, 36.193645>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.501957, 38.175846, 35.925591> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.686089, 38.351357, 35.616898>,  <42.796570, 38.456661, 35.431683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.686089, 38.351357, 35.616898>,  <42.501957, 38.175846, 35.925591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.686089, 38.351357, 35.616898> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243882, -0.773363, -0.585176,
		-0.853589, 0.457587, -0.248996,
		0.460334, 0.438774, -0.771732,
		42.824188, 38.482990, 35.385380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.119202, 38.062843, 35.403038>,  <42.501957, 38.175846, 35.925591>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.119202, 38.062843, 35.403038> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.445412, 38.183365, 35.205399>,  <42.641140, 38.255676, 35.086815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.445412, 38.183365, 35.205399>,  <42.119202, 38.062843, 35.403038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.445412, 38.183365, 35.205399> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062236, -0.803163, -0.592500,
		-0.575363, 0.513950, -0.636249,
		0.815527, 0.301305, -0.494096,
		42.690071, 38.273758, 35.057171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.962360, 37.979366, 34.693367>,  <42.119202, 38.062843, 35.403038>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.962360, 37.979366, 34.693367> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.362270, 37.986164, 34.698315>,  <42.602219, 37.990242, 34.701283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.362270, 37.986164, 34.698315>,  <41.962360, 37.979366, 34.693367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.362270, 37.986164, 34.698315> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021020, -0.812005, -0.583271,
		0.000131, 0.583403, -0.812183,
		0.999779, 0.016995, 0.012370,
		42.662205, 37.991264, 34.702026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.146626, 37.690453, 34.141487>,  <41.962360, 37.979366, 34.693367>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.146626, 37.690453, 34.141487> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.483479, 37.658691, 34.354847>,  <42.685589, 37.639633, 34.482861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.483479, 37.658691, 34.354847>,  <42.146626, 37.690453, 34.141487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.483479, 37.658691, 34.354847> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106880, -0.944904, -0.309407,
		0.528578, 0.317570, -0.787245,
		0.842129, -0.079405, 0.533398,
		42.736118, 37.634869, 34.514866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.652531, 37.154469, 33.792740>,  <42.146626, 37.690453, 34.141487>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.652531, 37.154469, 33.792740> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.847507, 37.173454, 34.141483>,  <42.964493, 37.184845, 34.350731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.847507, 37.173454, 34.141483>,  <42.652531, 37.154469, 33.792740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.847507, 37.173454, 34.141483> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230507, -0.970093, -0.076062,
		0.842178, 0.238046, -0.483808,
		0.487446, 0.047463, 0.871862,
		42.993740, 37.187695, 34.403042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.158840, 36.792324, 33.626190>,  <42.652531, 37.154469, 33.792740>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.158840, 36.792324, 33.626190> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.161358, 36.795006, 34.026173>,  <43.162868, 36.796616, 34.266163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.161358, 36.795006, 34.026173>,  <43.158840, 36.792324, 33.626190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.161358, 36.795006, 34.026173> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279877, -0.960024, 0.004678,
		0.960015, 0.279836, -0.007922,
		0.006296, 0.006708, 0.999958,
		43.163246, 36.797020, 34.326160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.850143, 36.645164, 33.877102>,  <43.158840, 36.792324, 33.626190>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.850143, 36.645164, 33.877102> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.553219, 36.528278, 34.118290>,  <43.375065, 36.458145, 34.263004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.553219, 36.528278, 34.118290>,  <43.850143, 36.645164, 33.877102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.553219, 36.528278, 34.118290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249168, -0.955743, -0.156429,
		0.622000, 0.034122, 0.782273,
		-0.742315, -0.292217, 0.602975,
		43.330524, 36.440613, 34.299183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.108166, 36.095013, 34.289993>,  <43.850143, 36.645164, 33.877102>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.108166, 36.095013, 34.289993> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.710861, 36.062695, 34.323215>,  <43.472477, 36.043304, 34.343147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.710861, 36.062695, 34.323215>,  <44.108166, 36.095013, 34.289993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.710861, 36.062695, 34.323215> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070844, -0.990662, -0.116489,
		0.091693, -0.109821, 0.989713,
		-0.993264, -0.080796, 0.083056,
		43.412884, 36.038456, 34.348133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.040413, 35.469994, 34.665310>,  <44.108166, 36.095013, 34.289993>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.040413, 35.469994, 34.665310> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.667492, 35.515087, 34.527847>,  <43.443741, 35.542145, 34.445370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.667492, 35.515087, 34.527847>,  <44.040413, 35.469994, 34.665310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.667492, 35.515087, 34.527847> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112590, -0.993431, -0.020441,
		-0.343708, 0.019635, 0.938871,
		-0.932303, 0.112733, -0.343661,
		43.387802, 35.548908, 34.424747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.303661, 34.939560, 35.160332>,  <44.040413, 35.469994, 34.665310>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.303661, 34.939560, 35.160332> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.661255, 35.058632, 35.026356>,  <44.875813, 35.130074, 34.945972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.661255, 35.058632, 35.026356>,  <44.303661, 34.939560, 35.160332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.661255, 35.058632, 35.026356> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008548, 0.758650, 0.651443,
		0.448020, -0.579515, 0.680765,
		0.893983, 0.297678, -0.334936,
		44.929451, 35.147934, 34.925877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.723373, 35.011040, 35.702808>,  <44.303661, 34.939560, 35.160332>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.723373, 35.011040, 35.702808> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.868191, 35.264458, 35.429298>,  <44.955082, 35.416508, 35.265194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.868191, 35.264458, 35.429298>,  <44.723373, 35.011040, 35.702808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.868191, 35.264458, 35.429298> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149579, 0.684546, 0.713458,
		0.920083, -0.360579, 0.153068,
		0.362040, 0.633545, -0.683774,
		44.976803, 35.454521, 35.224167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.441261, 35.258789, 35.991936>,  <44.723373, 35.011040, 35.702808>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.441261, 35.258789, 35.991936> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.281628, 35.510761, 35.725430>,  <45.185848, 35.661945, 35.565525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.281628, 35.510761, 35.725430>,  <45.441261, 35.258789, 35.991936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.281628, 35.510761, 35.725430> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149213, 0.761575, 0.630665,
		0.904690, 0.152274, -0.397929,
		-0.399087, 0.629933, -0.666269,
		45.161903, 35.699741, 35.525547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.744949, 35.914539, 36.077454>,  <45.441261, 35.258789, 35.991936>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.744949, 35.914539, 36.077454> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.438007, 36.032417, 35.849655>,  <45.253841, 36.103146, 35.712975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.438007, 36.032417, 35.849655>,  <45.744949, 35.914539, 36.077454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.438007, 36.032417, 35.849655> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122945, 0.939274, 0.320388,
		0.629330, 0.175834, -0.756985,
		-0.767352, 0.294697, -0.569495,
		45.207802, 36.120827, 35.678806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.056072, 36.448513, 35.738934>,  <45.744949, 35.914539, 36.077454>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.056072, 36.448513, 35.738934> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.659714, 36.500946, 35.726658>,  <45.421898, 36.532406, 35.719292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.659714, 36.500946, 35.726658>,  <46.056072, 36.448513, 35.738934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.659714, 36.500946, 35.726658> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113887, 0.937713, 0.328214,
		0.071798, 0.321731, -0.944105,
		-0.990896, 0.131086, -0.030685,
		45.362446, 36.540272, 35.717453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.844757, 37.156784, 35.410393>,  <46.056072, 36.448513, 35.738934>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.844757, 37.156784, 35.410393> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.523052, 37.069927, 35.631668>,  <45.330029, 37.017815, 35.764435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.523052, 37.069927, 35.631668>,  <45.844757, 37.156784, 35.410393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.523052, 37.069927, 35.631668> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019729, 0.940099, 0.340331,
		-0.593952, 0.262800, -0.760367,
		-0.804259, -0.217141, 0.553189,
		45.281776, 37.004784, 35.797626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.259441, 37.689304, 35.321552>,  <45.844757, 37.156784, 35.410393>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.259441, 37.689304, 35.321552> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.145393, 37.498772, 35.654251>,  <45.076965, 37.384453, 35.853870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.145393, 37.498772, 35.654251>,  <45.259441, 37.689304, 35.321552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.145393, 37.498772, 35.654251> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290873, 0.869848, 0.398444,
		-0.913291, -0.128330, -0.386564,
		-0.285120, -0.476336, 0.831752,
		45.059856, 37.355869, 35.903778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.570610, 37.945953, 35.565220>,  <45.259441, 37.689304, 35.321552>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.570610, 37.945953, 35.565220> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.699574, 37.773270, 35.902187>,  <44.776951, 37.669659, 36.104370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.699574, 37.773270, 35.902187>,  <44.570610, 37.945953, 35.565220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.699574, 37.773270, 35.902187> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330275, 0.782715, 0.527519,
		-0.887113, -0.448309, 0.109772,
		0.322412, -0.431713, 0.842422,
		44.796299, 37.643757, 36.154915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.988121, 37.919994, 36.024876>,  <44.570610, 37.945953, 35.565220>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.988121, 37.919994, 36.024876> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.320374, 37.898666, 36.246582>,  <44.519726, 37.885868, 36.379604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.320374, 37.898666, 36.246582>,  <43.988121, 37.919994, 36.024876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.320374, 37.898666, 36.246582> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335945, 0.745842, 0.575205,
		-0.444068, -0.663985, 0.601604,
		0.830629, -0.053324, 0.554267,
		44.569561, 37.882668, 36.412861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.730850, 38.148407, 36.664959>,  <43.988121, 37.919994, 36.024876>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.730850, 38.148407, 36.664959> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.126076, 38.135105, 36.725128>,  <44.363213, 38.127125, 36.761230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.126076, 38.135105, 36.725128>,  <43.730850, 38.148407, 36.664959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.126076, 38.135105, 36.725128> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085882, 0.691728, 0.717033,
		-0.127895, -0.721392, 0.680615,
		0.988063, -0.033252, 0.150423,
		44.422493, 38.125130, 36.770256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.818993, 37.838280, 37.380001>,  <43.730850, 38.148407, 36.664959>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.818993, 37.838280, 37.380001> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.124146, 38.063931, 37.253658>,  <44.307240, 38.199322, 37.177853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.124146, 38.063931, 37.253658>,  <43.818993, 37.838280, 37.380001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.124146, 38.063931, 37.253658> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091899, 0.578190, 0.810710,
		0.639972, -0.589450, 0.492935,
		0.762883, 0.564132, -0.315855,
		44.353012, 38.233170, 37.158901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.285366, 37.934181, 37.990513>,  <43.818993, 37.838280, 37.380001>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.285366, 37.934181, 37.990513> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.360130, 38.227562, 37.729095>,  <44.404991, 38.403591, 37.572247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.360130, 38.227562, 37.729095>,  <44.285366, 37.934181, 37.990513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.360130, 38.227562, 37.729095> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104780, 0.676354, 0.729086,
		0.976772, -0.067799, 0.203272,
		0.186915, 0.733449, -0.653540,
		44.416206, 38.447598, 37.533035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.848167, 38.351837, 38.261795>,  <44.285366, 37.934181, 37.990513>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.848167, 38.351837, 38.261795> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.658169, 38.603607, 38.015800>,  <44.544170, 38.754669, 37.868202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.658169, 38.603607, 38.015800>,  <44.848167, 38.351837, 38.261795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.658169, 38.603607, 38.015800> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011847, 0.703369, 0.710726,
		0.879908, 0.330307, -0.341554,
		-0.474996, 0.629420, -0.614987,
		44.515671, 38.792435, 37.831303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.915817, 38.872978, 38.742142>,  <44.848167, 38.351837, 38.261795>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.915817, 38.872978, 38.742142> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.684795, 39.033024, 38.457512>,  <44.546181, 39.129051, 38.286736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.684795, 39.033024, 38.457512>,  <44.915817, 38.872978, 38.742142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.684795, 39.033024, 38.457512> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012216, 0.875792, 0.482534,
		0.816258, 0.269998, -0.510708,
		-0.577558, 0.400111, -0.711575,
		44.511528, 39.153057, 38.244041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.115757, 39.645031, 38.695850>,  <44.915817, 38.872978, 38.742142>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.115757, 39.645031, 38.695850> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.751583, 39.621914, 38.532017>,  <44.533077, 39.608044, 38.433716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.751583, 39.621914, 38.532017>,  <45.115757, 39.645031, 38.695850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.751583, 39.621914, 38.532017> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173841, 0.951958, 0.252102,
		0.375341, 0.300727, -0.876745,
		-0.910438, -0.057790, -0.409588,
		44.478451, 39.604576, 38.409142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.981792, 40.254944, 38.365700>,  <45.115757, 39.645031, 38.695850>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.981792, 40.254944, 38.365700> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.602840, 40.131763, 38.400661>,  <44.375469, 40.057854, 38.421638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.602840, 40.131763, 38.400661>,  <44.981792, 40.254944, 38.365700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.602840, 40.131763, 38.400661> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261724, 0.902349, 0.342441,
		-0.184327, 0.301545, -0.935465,
		-0.947377, -0.307955, 0.087405,
		44.318626, 40.039375, 38.426884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.624001, 40.724361, 38.046654>,  <44.981792, 40.254944, 38.365700>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.624001, 40.724361, 38.046654> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.374203, 40.532322, 38.293072>,  <44.224323, 40.417099, 38.440922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.374203, 40.532322, 38.293072>,  <44.624001, 40.724361, 38.046654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.374203, 40.532322, 38.293072> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349587, 0.877161, 0.329209,
		-0.698424, -0.009772, -0.715618,
		-0.624495, -0.480098, 0.616046,
		44.186855, 40.388294, 38.477886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.949150, 40.949318, 37.915558>,  <44.624001, 40.724361, 38.046654>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.949150, 40.949318, 37.915558> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.925953, 40.788849, 38.281223>,  <43.912033, 40.692566, 38.500622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.925953, 40.788849, 38.281223>,  <43.949150, 40.949318, 37.915558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.925953, 40.788849, 38.281223> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314539, 0.876411, 0.364648,
		-0.947471, -0.266392, -0.177014,
		-0.057998, -0.401172, 0.914165,
		43.908554, 40.668499, 38.555473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.411400, 41.241543, 38.182983>,  <43.949150, 40.949318, 37.915558>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.411400, 41.241543, 38.182983> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.576004, 41.096550, 38.517471>,  <43.674767, 41.009556, 38.718166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.576004, 41.096550, 38.517471>,  <43.411400, 41.241543, 38.182983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.576004, 41.096550, 38.517471> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129579, 0.884920, 0.447354,
		-0.902146, -0.292448, 0.317185,
		0.411512, -0.362478, 0.836223,
		43.699459, 40.987808, 38.768337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.888680, 41.316212, 38.703362>,  <43.411400, 41.241543, 38.182983>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.888680, 41.316212, 38.703362> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.251492, 41.319618, 38.871754>,  <43.469177, 41.321663, 38.972790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.251492, 41.319618, 38.871754>,  <42.888680, 41.316212, 38.703362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.251492, 41.319618, 38.871754> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269383, 0.780141, 0.564635,
		-0.323614, -0.625546, 0.709906,
		0.907032, 0.008513, 0.420977,
		43.523602, 41.322170, 38.998047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.704124, 41.440536, 39.519039>,  <42.888680, 41.316212, 38.703362>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.704124, 41.440536, 39.519039> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.083469, 41.538555, 39.438480>,  <43.311077, 41.597366, 39.390144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.083469, 41.538555, 39.438480>,  <42.704124, 41.440536, 39.519039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.083469, 41.538555, 39.438480> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019221, 0.678172, 0.734652,
		0.316604, -0.692846, 0.647863,
		0.948363, 0.245047, -0.201395,
		43.367977, 41.612068, 39.378063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.318295, 37.998501, 39.924461> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.007328, 37.746937, 39.920700>,  <38.820747, 37.595997, 39.918446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.007328, 37.746937, 39.920700>,  <39.318295, 37.998501, 39.924461>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.007328, 37.746937, 39.920700> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358363, -0.430604, -0.828345,
		0.516909, -0.647340, 0.560139,
		-0.777419, -0.628913, -0.009400,
		38.774101, 37.558262, 39.917881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.446518, 37.399235, 39.415218>,  <39.318295, 37.998501, 39.924461>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.446518, 37.399235, 39.415218> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.053566, 37.350815, 39.472179>,  <38.817795, 37.321762, 39.506355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.053566, 37.350815, 39.472179>,  <39.446518, 37.399235, 39.415218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.053566, 37.350815, 39.472179> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067020, -0.483092, -0.873001,
		0.174465, -0.867162, 0.466467,
		-0.982380, -0.121046, 0.142400,
		38.758850, 37.314503, 39.514900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340179, 36.692543, 39.278610>,  <39.446518, 37.399235, 39.415218>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.340179, 36.692543, 39.278610> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.978371, 36.859032, 39.241505>,  <38.761288, 36.958923, 39.219242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.978371, 36.859032, 39.241505>,  <39.340179, 36.692543, 39.278610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.978371, 36.859032, 39.241505> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083043, -0.385304, -0.919045,
		-0.418270, -0.823590, 0.383079,
		-0.904518, 0.416222, -0.092768,
		38.707016, 36.983898, 39.213676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.899940, 36.172871, 39.088634>,  <39.340179, 36.692543, 39.278610>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.899940, 36.172871, 39.088634> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.770939, 36.522175, 38.942535>,  <38.693539, 36.731758, 38.854877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.770939, 36.522175, 38.942535>,  <38.899940, 36.172871, 39.088634>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.770939, 36.522175, 38.942535> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001725, -0.385317, -0.922782,
		-0.946568, -0.298227, 0.122758,
		-0.322500, 0.873265, -0.365244,
		38.674191, 36.784153, 38.832962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.367065, 35.958630, 38.718430>,  <38.899940, 36.172871, 39.088634>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.367065, 35.958630, 38.718430> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.438049, 36.331413, 38.591969>,  <38.480640, 36.555084, 38.516090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.438049, 36.331413, 38.591969>,  <38.367065, 35.958630, 38.718430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.438049, 36.331413, 38.591969> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111392, -0.300166, -0.947361,
		-0.977804, 0.203336, 0.050545,
		0.177460, 0.931963, -0.316153,
		38.491287, 36.611004, 38.497124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.936489, 35.982929, 38.126514>,  <38.367065, 35.958630, 38.718430>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.936489, 35.982929, 38.126514> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.189777, 36.287846, 38.072945>,  <38.341751, 36.470795, 38.040802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.189777, 36.287846, 38.072945>,  <37.936489, 35.982929, 38.126514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.189777, 36.287846, 38.072945> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013508, -0.183900, -0.982852,
		-0.773852, 0.620555, -0.126746,
		0.633222, 0.762294, -0.133929,
		38.379745, 36.516533, 38.032764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.640041, 36.404079, 37.633354>,  <37.936489, 35.982929, 38.126514>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.640041, 36.404079, 37.633354> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036968, 36.452801, 37.624603>,  <38.275124, 36.482033, 37.619350>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036968, 36.452801, 37.624603>,  <37.640041, 36.404079, 37.633354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.036968, 36.452801, 37.624603> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003543, -0.148760, -0.988867,
		-0.123701, 0.981343, -0.147185,
		0.992313, 0.121802, -0.021879,
		38.334663, 36.489342, 37.618038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.767738, 36.902916, 36.989559>,  <37.640041, 36.404079, 37.633354>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.767738, 36.902916, 36.989559> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.124836, 36.744976, 37.076374>,  <38.339092, 36.650211, 37.128464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.124836, 36.744976, 37.076374>,  <37.767738, 36.902916, 36.989559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.124836, 36.744976, 37.076374> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305141, 0.175407, -0.936013,
		0.331518, 0.901844, 0.277079,
		0.892740, -0.394853, 0.217039,
		38.392658, 36.626518, 37.141487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.315468, 37.406788, 36.834427>,  <37.767738, 36.902916, 36.989559>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.315468, 37.406788, 36.834427> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.430943, 37.024635, 36.809418>,  <38.500225, 36.795345, 36.794411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.430943, 37.024635, 36.809418>,  <38.315468, 37.406788, 36.834427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.430943, 37.024635, 36.809418> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297392, 0.151556, -0.942650,
		0.910066, 0.253531, 0.327874,
		0.288682, -0.955381, -0.062527,
		38.517548, 36.738022, 36.790661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.631931, 37.468277, 36.272797>,  <38.315468, 37.406788, 36.834427>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.631931, 37.468277, 36.272797> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.659832, 37.075882, 36.345245>,  <38.676575, 36.840446, 36.388714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.659832, 37.075882, 36.345245>,  <38.631931, 37.468277, 36.272797>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.659832, 37.075882, 36.345245> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466598, -0.128393, -0.875101,
		0.881714, 0.145555, 0.448769,
		0.069757, -0.980984, 0.181122,
		38.680759, 36.781586, 36.399582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.271404, 37.212505, 36.154934>,  <38.631931, 37.468277, 36.272797>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.271404, 37.212505, 36.154934> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.070545, 36.867828, 36.125725>,  <38.950031, 36.661022, 36.108200>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.070545, 36.867828, 36.125725>,  <39.271404, 37.212505, 36.154934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.070545, 36.867828, 36.125725> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487900, -0.212573, -0.846621,
		0.714005, -0.460755, 0.527164,
		-0.502145, -0.861695, -0.073024,
		38.919903, 36.609322, 36.103817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.734924, 36.704662, 35.889664>,  <39.271404, 37.212505, 36.154934>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.734924, 36.704662, 35.889664> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.374474, 36.550770, 35.809715>,  <39.158203, 36.458435, 35.761745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.374474, 36.550770, 35.809715>,  <39.734924, 36.704662, 35.889664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.374474, 36.550770, 35.809715> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307766, -0.242957, -0.919919,
		0.305360, -0.890480, 0.337343,
		-0.901130, -0.384729, -0.199870,
		39.104134, 36.435352, 35.749756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.802246, 35.899014, 35.775948>,  <39.734924, 36.704662, 35.889664>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.802246, 35.899014, 35.775948> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516506, 36.115471, 35.598469>,  <39.345062, 36.245346, 35.491982>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516506, 36.115471, 35.598469>,  <39.802246, 35.899014, 35.775948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.516506, 36.115471, 35.598469> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328710, -0.300263, -0.895428,
		-0.617779, -0.785498, 0.036615,
		-0.714352, 0.541141, -0.443698,
		39.302200, 36.277813, 35.465359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.952797, 35.201920, 35.728542>,  <39.802246, 35.899014, 35.775948>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.952797, 35.201920, 35.728542> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.966316, 34.919666, 35.445435>,  <39.974426, 34.750313, 35.275570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.966316, 34.919666, 35.445435>,  <39.952797, 35.201920, 35.728542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.966316, 34.919666, 35.445435> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588597, -0.586387, 0.556509,
		-0.807719, 0.397785, -0.435150,
		0.033795, -0.705632, -0.707772,
		39.976456, 34.707977, 35.233105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.265701, 35.075638, 35.488491>,  <39.952797, 35.201920, 35.728542>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.265701, 35.075638, 35.488491> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.495846, 34.749966, 35.457340>,  <39.633934, 34.554562, 35.438652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.495846, 34.749966, 35.457340>,  <39.265701, 35.075638, 35.488491>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.495846, 34.749966, 35.457340> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565698, -0.464907, 0.681064,
		-0.590716, -0.347803, -0.728071,
		0.575361, -0.814183, -0.077876,
		39.668453, 34.505711, 35.433979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.825752, 34.447433, 35.333729>,  <39.265701, 35.075638, 35.488491>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.825752, 34.447433, 35.333729> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.159863, 34.341961, 35.526722>,  <39.360329, 34.278675, 35.642517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.159863, 34.341961, 35.526722>,  <38.825752, 34.447433, 35.333729>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.159863, 34.341961, 35.526722> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534450, -0.595498, 0.599788,
		0.129162, -0.758849, -0.638330,
		0.835273, -0.263686, 0.482482,
		39.410446, 34.262856, 35.671467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.854450, 33.700249, 35.336895>,  <38.825752, 34.447433, 35.333729>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.854450, 33.700249, 35.336895> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.102264, 33.795700, 35.636024>,  <39.250954, 33.852970, 35.815502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.102264, 33.795700, 35.636024>,  <38.854450, 33.700249, 35.336895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.102264, 33.795700, 35.636024> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488034, -0.629080, 0.605047,
		0.614819, -0.739809, -0.273278,
		0.619532, 0.238625, 0.747822,
		39.288124, 33.867287, 35.860371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.013798, 33.001659, 35.780304>,  <38.854450, 33.700249, 35.336895>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.013798, 33.001659, 35.780304> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.096241, 33.321842, 36.005440>,  <39.145706, 33.513950, 36.140522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.096241, 33.321842, 36.005440>,  <39.013798, 33.001659, 35.780304>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.096241, 33.321842, 36.005440> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508821, -0.403645, 0.760376,
		0.835835, -0.443106, 0.324093,
		0.206109, 0.800455, 0.562842,
		39.158073, 33.561977, 36.174294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.291965, 32.729370, 36.327389>,  <39.013798, 33.001659, 35.780304>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.291965, 32.729370, 36.327389> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.146759, 33.087681, 36.430000>,  <39.059635, 33.302666, 36.491570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.146759, 33.087681, 36.430000>,  <39.291965, 32.729370, 36.327389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.146759, 33.087681, 36.430000> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528652, -0.424713, 0.734946,
		0.767297, 0.131183, 0.627731,
		-0.363018, 0.895773, 0.256531,
		39.037853, 33.356411, 36.506958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.383492, 32.826031, 37.028301>,  <39.291965, 32.729370, 36.327389>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.383492, 32.826031, 37.028301> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.097446, 33.093853, 36.947994>,  <38.925819, 33.254547, 36.899811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.097446, 33.093853, 36.947994>,  <39.383492, 32.826031, 37.028301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.097446, 33.093853, 36.947994> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412339, -0.172141, 0.894620,
		0.564441, 0.722535, 0.399185,
		-0.715111, 0.669559, -0.200766,
		38.882912, 33.294720, 36.887764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.325378, 33.309040, 37.588497>,  <39.383492, 32.826031, 37.028301>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.325378, 33.309040, 37.588497> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.976513, 33.349838, 37.397110>,  <38.767193, 33.374317, 37.282280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.976513, 33.349838, 37.397110>,  <39.325378, 33.309040, 37.588497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.976513, 33.349838, 37.397110> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486951, -0.086995, 0.869086,
		0.047021, 0.990973, 0.125542,
		-0.872163, 0.101998, -0.478464,
		38.714863, 33.380436, 37.253571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.983696, 33.716278, 38.080933>,  <39.325378, 33.309040, 37.588497>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.983696, 33.716278, 38.080933> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.707245, 33.587490, 37.822109>,  <38.541374, 33.510216, 37.666817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.707245, 33.587490, 37.822109>,  <38.983696, 33.716278, 38.080933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.707245, 33.587490, 37.822109> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639298, -0.145257, 0.755115,
		-0.337113, 0.935541, -0.105444,
		-0.691125, -0.321970, -0.647057,
		38.499908, 33.490898, 37.627991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.430981, 34.078613, 38.272957>,  <38.983696, 33.716278, 38.080933>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.430981, 34.078613, 38.272957> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.295307, 33.751102, 38.087677>,  <38.213905, 33.554596, 37.976509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.295307, 33.751102, 38.087677>,  <38.430981, 34.078613, 38.272957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.295307, 33.751102, 38.087677> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610395, -0.183110, 0.770642,
		-0.715804, 0.544121, -0.437673,
		-0.339180, -0.818781, -0.463200,
		38.193554, 33.505466, 37.948715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.832420, 34.197826, 38.337414>,  <38.430981, 34.078613, 38.272957>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.832420, 34.197826, 38.337414> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.854805, 33.805046, 38.265148>,  <37.868237, 33.569378, 38.221790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.854805, 33.805046, 38.265148>,  <37.832420, 34.197826, 38.337414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.854805, 33.805046, 38.265148> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593672, -0.178205, 0.784727,
		-0.802759, 0.063342, -0.592929,
		0.055957, -0.981953, -0.180660,
		37.871593, 33.510460, 38.210949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.141666, 34.039051, 38.249641>,  <37.832420, 34.197826, 38.337414>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.141666, 34.039051, 38.249641> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.341316, 33.705055, 38.342308>,  <37.461105, 33.504658, 38.397907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.341316, 33.705055, 38.342308>,  <37.141666, 34.039051, 38.249641>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.341316, 33.705055, 38.342308> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453725, -0.024067, 0.890817,
		-0.738246, -0.549741, -0.390868,
		0.499125, -0.834989, 0.231664,
		37.491055, 33.454559, 38.411808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.684669, 33.625484, 38.639820>,  <37.141666, 34.039051, 38.249641>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.684669, 33.625484, 38.639820> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.038185, 33.457203, 38.721718>,  <37.250294, 33.356232, 38.770859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.038185, 33.457203, 38.721718>,  <36.684669, 33.625484, 38.639820>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.038185, 33.457203, 38.721718> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331988, -0.255502, 0.908022,
		-0.329698, -0.870474, -0.365479,
		0.883789, -0.420708, 0.204748,
		37.303322, 33.330990, 38.783142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.509464, 32.924168, 38.902859>,  <36.684669, 33.625484, 38.639820>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.509464, 32.924168, 38.902859> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.862572, 33.039410, 39.051300>,  <37.074436, 33.108555, 39.140366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.862572, 33.039410, 39.051300>,  <36.509464, 32.924168, 38.902859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.862572, 33.039410, 39.051300> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341941, -0.147681, 0.928045,
		0.322180, -0.946142, -0.031853,
		0.882766, 0.288106, 0.371105,
		37.127403, 33.125843, 39.162632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.607025, 32.467926, 39.392170>,  <36.509464, 32.924168, 38.902859>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.607025, 32.467926, 39.392170> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.832378, 32.784660, 39.486485>,  <36.967590, 32.974701, 39.543072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.832378, 32.784660, 39.486485>,  <36.607025, 32.467926, 39.392170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.832378, 32.784660, 39.486485> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367582, -0.015353, 0.929865,
		0.739920, -0.610540, 0.282415,
		0.563384, 0.791836, 0.235783,
		37.001392, 33.022213, 39.557220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.700825, 31.671061, 39.466152>,  <36.607025, 32.467926, 39.392170>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.700825, 31.671061, 39.466152> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.403511, 31.412971, 39.536819>,  <36.225121, 31.258118, 39.579220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.403511, 31.412971, 39.536819>,  <36.700825, 31.671061, 39.466152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.403511, 31.412971, 39.536819> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176796, -0.065235, -0.982083,
		0.645187, -0.761205, -0.065584,
		-0.743288, -0.645222, 0.176667,
		36.180523, 31.219404, 39.589821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.854172, 31.036860, 39.027103>,  <36.700825, 31.671061, 39.466152>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.854172, 31.036860, 39.027103> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.464394, 31.046631, 39.116413>,  <36.230526, 31.052494, 39.169998>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.464394, 31.046631, 39.116413>,  <36.854172, 31.036860, 39.027103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.464394, 31.046631, 39.116413> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224150, -0.169240, -0.959747,
		0.014344, -0.985272, 0.170391,
		-0.974449, 0.024427, 0.223277,
		36.172058, 31.053959, 39.183395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.541042, 30.519537, 38.564365>,  <36.854172, 31.036860, 39.027103>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.541042, 30.519537, 38.564365> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.258732, 30.778776, 38.678802>,  <36.089344, 30.934319, 38.747463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.258732, 30.778776, 38.678802>,  <36.541042, 30.519537, 38.564365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.258732, 30.778776, 38.678802> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304123, 0.087550, -0.948601,
		-0.639832, -0.756509, 0.135309,
		-0.705779, 0.648096, 0.286089,
		36.046997, 30.973206, 38.764629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.051277, 30.486166, 38.084118>,  <36.541042, 30.519537, 38.564365>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.051277, 30.486166, 38.084118> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.930794, 30.833044, 38.242733>,  <35.858501, 31.041170, 38.337902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.930794, 30.833044, 38.242733>,  <36.051277, 30.486166, 38.084118>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.930794, 30.833044, 38.242733> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358866, 0.282187, -0.889711,
		-0.883452, -0.410295, 0.226210,
		-0.301211, 0.867196, 0.396540,
		35.840431, 31.093203, 38.361694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.489902, 30.653765, 37.643665>,  <36.051277, 30.486166, 38.084118>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.489902, 30.653765, 37.643665> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.576797, 30.999496, 37.825100>,  <35.628937, 31.206936, 37.933960>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.576797, 30.999496, 37.825100>,  <35.489902, 30.653765, 37.643665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.576797, 30.999496, 37.825100> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252285, 0.498614, -0.829299,
		-0.942952, 0.065725, 0.326377,
		0.217241, 0.864329, 0.453587,
		35.641972, 31.258795, 37.961178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.886112, 31.134022, 37.559387>,  <35.489902, 30.653765, 37.643665>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.886112, 31.134022, 37.559387> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.215672, 31.353474, 37.616234>,  <35.413406, 31.485146, 37.650341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.215672, 31.353474, 37.616234>,  <34.886112, 31.134022, 37.559387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.215672, 31.353474, 37.616234> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170782, 0.479451, -0.860791,
		-0.540396, 0.684931, 0.488714,
		0.823897, 0.548631, 0.142119,
		35.462841, 31.518063, 37.658871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.679119, 31.855213, 37.480366>,  <34.886112, 31.134022, 37.559387>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.679119, 31.855213, 37.480366> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.077991, 31.855610, 37.450348>,  <35.317314, 31.855848, 37.432335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.077991, 31.855610, 37.450348>,  <34.679119, 31.855213, 37.480366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.077991, 31.855610, 37.450348> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069221, 0.398687, -0.914471,
		0.029013, 0.917086, 0.397631,
		0.997179, 0.000993, -0.075049,
		35.377144, 31.855907, 37.427834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.730949, 32.486923, 37.265835>,  <34.679119, 31.855213, 37.480366>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.730949, 32.486923, 37.265835> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.084721, 32.322411, 37.177624>,  <35.296982, 32.223701, 37.124695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.084721, 32.322411, 37.177624>,  <34.730949, 32.486923, 37.265835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.084721, 32.322411, 37.177624> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014715, 0.496899, -0.867684,
		0.466444, 0.764159, 0.445523,
		0.884428, -0.411282, -0.220531,
		35.350048, 32.199024, 37.111465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.169518, 33.009144, 36.904964>,  <34.730949, 32.486923, 37.265835>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.169518, 33.009144, 36.904964> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.303375, 32.649902, 36.790829>,  <35.383690, 32.434357, 36.722347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.303375, 32.649902, 36.790829>,  <35.169518, 33.009144, 36.904964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.303375, 32.649902, 36.790829> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160294, 0.352634, -0.921930,
		0.928610, 0.262784, 0.261969,
		0.334647, -0.898106, -0.285337,
		35.403770, 32.380470, 36.705227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.696796, 33.229210, 36.495182>,  <35.169518, 33.009144, 36.904964>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.696796, 33.229210, 36.495182> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590034, 32.853394, 36.409363>,  <35.525978, 32.627903, 36.357872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590034, 32.853394, 36.409363>,  <35.696796, 33.229210, 36.495182>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.590034, 32.853394, 36.409363> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174006, 0.171980, -0.969611,
		0.947883, -0.296129, 0.117582,
		-0.266908, -0.939538, -0.214545,
		35.509964, 32.571533, 36.345001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.293102, 32.969501, 36.110420>,  <35.696796, 33.229210, 36.495182>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.293102, 32.969501, 36.110420> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.989971, 32.725746, 36.017178>,  <35.808090, 32.579494, 35.961231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.989971, 32.725746, 36.017178>,  <36.293102, 32.969501, 36.110420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.989971, 32.725746, 36.017178> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204357, 0.117597, -0.971807,
		0.619621, -0.784102, 0.035414,
		-0.757831, -0.609389, -0.233102,
		35.762623, 32.542931, 35.947247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656551, 32.497398, 35.758274>,  <36.293102, 32.969501, 36.110420>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.656551, 32.497398, 35.758274> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.264957, 32.484276, 35.677765>,  <36.030003, 32.476402, 35.629459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.264957, 32.484276, 35.677765>,  <36.656551, 32.497398, 35.758274>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.264957, 32.484276, 35.677765> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186573, 0.254340, -0.948948,
		0.082324, -0.966558, -0.242874,
		-0.978986, -0.032807, -0.201272,
		35.971260, 32.474434, 35.617382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.764500, 30.852499, 43.408829> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.371342, 30.888561, 43.344589>,  <36.135448, 30.910198, 43.306046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.371342, 30.888561, 43.344589>,  <36.764500, 30.852499, 43.408829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.371342, 30.888561, 43.344589> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111426, -0.403222, -0.908293,
		-0.146643, -0.910651, 0.386279,
		-0.982894, 0.090153, -0.160600,
		36.076473, 30.915607, 43.296410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.573311, 30.327881, 43.095234>,  <36.764500, 30.852499, 43.408829>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.573311, 30.327881, 43.095234> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.267815, 30.573135, 43.014473>,  <36.084518, 30.720287, 42.966019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.267815, 30.573135, 43.014473>,  <36.573311, 30.327881, 43.095234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.267815, 30.573135, 43.014473> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026393, -0.282849, -0.958801,
		-0.644984, -0.737604, 0.199841,
		-0.763740, 0.613137, -0.201901,
		36.038692, 30.757076, 42.953903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.184765, 29.971855, 42.566586>,  <36.573311, 30.327881, 43.095234>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.184765, 29.971855, 42.566586> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.089409, 30.359850, 42.547428>,  <36.032196, 30.592648, 42.535934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.089409, 30.359850, 42.547428>,  <36.184765, 29.971855, 42.566586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.089409, 30.359850, 42.547428> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106812, -0.075204, -0.991431,
		-0.965277, -0.231236, 0.121535,
		-0.238395, 0.969987, -0.047894,
		36.017891, 30.650846, 42.533058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.581917, 30.002443, 42.065407>,  <36.184765, 29.971855, 42.566586>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.581917, 30.002443, 42.065407> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.756084, 30.360775, 42.100952>,  <35.860584, 30.575773, 42.122280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.756084, 30.360775, 42.100952>,  <35.581917, 30.002443, 42.065407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.756084, 30.360775, 42.100952> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122902, 0.156945, -0.979930,
		-0.891796, 0.415763, 0.178437,
		0.435424, 0.895829, 0.088865,
		35.886711, 30.629524, 42.127613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.168121, 30.466507, 41.673813>,  <35.581917, 30.002443, 42.065407>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.168121, 30.466507, 41.673813> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.516697, 30.662689, 41.670952>,  <35.725842, 30.780399, 41.669235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.516697, 30.662689, 41.670952>,  <35.168121, 30.466507, 41.673813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.516697, 30.662689, 41.670952> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067870, 0.106113, -0.992035,
		-0.485791, 0.864981, 0.125758,
		0.871436, 0.490457, -0.007157,
		35.778130, 30.809826, 41.668804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.082703, 31.026491, 41.201981>,  <35.168121, 30.466507, 41.673813>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.082703, 31.026491, 41.201981> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.475967, 30.963358, 41.238808>,  <35.711926, 30.925478, 41.260902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.475967, 30.963358, 41.238808>,  <35.082703, 31.026491, 41.201981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.475967, 30.963358, 41.238808> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107590, 0.092795, -0.989855,
		0.147687, 0.983096, 0.108214,
		0.983165, -0.157831, 0.092067,
		35.770916, 30.916008, 41.266426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.354469, 31.535257, 40.763977>,  <35.082703, 31.026491, 41.201981>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.354469, 31.535257, 40.763977> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.687157, 31.318487, 40.812248>,  <35.886768, 31.188425, 40.841209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.687157, 31.318487, 40.812248>,  <35.354469, 31.535257, 40.763977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.687157, 31.318487, 40.812248> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131349, -0.019124, -0.991152,
		0.539440, 0.840208, 0.055276,
		0.831717, -0.541927, 0.120677,
		35.936672, 31.155909, 40.848450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.896278, 31.932371, 40.596230>,  <35.354469, 31.535257, 40.763977>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.896278, 31.932371, 40.596230> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.025742, 31.558565, 40.536995>,  <36.103420, 31.334282, 40.501453>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.025742, 31.558565, 40.536995>,  <35.896278, 31.932371, 40.596230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.025742, 31.558565, 40.536995> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114745, 0.194127, -0.974243,
		0.939190, 0.298330, 0.170061,
		0.323659, -0.934513, -0.148090,
		36.122841, 31.278212, 40.492569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.429424, 31.977043, 40.082207>,  <35.896278, 31.932371, 40.596230>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.429424, 31.977043, 40.082207> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.292538, 31.601255, 40.075417>,  <36.210407, 31.375782, 40.071342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.292538, 31.601255, 40.075417>,  <36.429424, 31.977043, 40.082207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.292538, 31.601255, 40.075417> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041074, 0.033003, -0.998611,
		0.938724, -0.341042, -0.049882,
		-0.342214, -0.939468, -0.016973,
		36.189873, 31.319414, 40.070324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.945538, 32.347897, 40.345829>,  <36.429424, 31.977043, 40.082207>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.945538, 32.347897, 40.345829> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.015869, 32.702850, 40.175354>,  <37.058067, 32.915821, 40.073067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.015869, 32.702850, 40.175354>,  <36.945538, 32.347897, 40.345829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.015869, 32.702850, 40.175354> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028120, 0.437285, 0.898883,
		0.984019, -0.146064, 0.101840,
		0.175828, 0.887382, -0.426190,
		37.068619, 32.969067, 40.047497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.551327, 32.626427, 40.534916>,  <36.945538, 32.347897, 40.345829>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.551327, 32.626427, 40.534916> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.349277, 32.959743, 40.445042>,  <37.228050, 33.159733, 40.391117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.349277, 32.959743, 40.445042>,  <37.551327, 32.626427, 40.534916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.349277, 32.959743, 40.445042> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151435, 0.341880, 0.927462,
		0.849659, 0.434453, -0.298880,
		-0.505120, 0.833288, -0.224690,
		37.197742, 33.209728, 40.377636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.016247, 33.169323, 40.684959>,  <37.551327, 32.626427, 40.534916>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.016247, 33.169323, 40.684959> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.671879, 33.368916, 40.645275>,  <37.465260, 33.488670, 40.621464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.671879, 33.368916, 40.645275>,  <38.016247, 33.169323, 40.684959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.671879, 33.368916, 40.645275> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239432, 0.569457, 0.786378,
		0.448884, 0.653251, -0.609727,
		-0.860916, 0.498980, -0.099211,
		37.413605, 33.518608, 40.615513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.204910, 33.846207, 40.810719>,  <38.016247, 33.169323, 40.684959>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.204910, 33.846207, 40.810719> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.808567, 33.812771, 40.853081>,  <37.570763, 33.792709, 40.878498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.808567, 33.812771, 40.853081>,  <38.204910, 33.846207, 40.810719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.808567, 33.812771, 40.853081> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053374, 0.478082, 0.876692,
		-0.123917, 0.874328, -0.469249,
		-0.990856, -0.083591, 0.105909,
		37.511311, 33.787693, 40.884853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072308, 34.534458, 41.097633>,  <38.204910, 33.846207, 40.810719>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.072308, 34.534458, 41.097633> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.764740, 34.290863, 41.175507>,  <37.580200, 34.144707, 41.222229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.764740, 34.290863, 41.175507>,  <38.072308, 34.534458, 41.097633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.764740, 34.290863, 41.175507> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097839, 0.412994, 0.905463,
		-0.631819, 0.677178, -0.377140,
		-0.768916, -0.608988, 0.194683,
		37.534065, 34.108166, 41.233913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405628, 34.999783, 41.309464>,  <38.072308, 34.534458, 41.097633>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.405628, 34.999783, 41.309464> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.351173, 34.631340, 41.455353>,  <37.318501, 34.410275, 41.542889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.351173, 34.631340, 41.455353>,  <37.405628, 34.999783, 41.309464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.351173, 34.631340, 41.455353> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304821, 0.389239, 0.869239,
		-0.942630, 0.007159, -0.333763,
		-0.136137, -0.921109, 0.364726,
		37.310333, 34.355007, 41.564770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.785950, 35.062721, 41.754627>,  <37.405628, 34.999783, 41.309464>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.785950, 35.062721, 41.754627> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.946693, 34.719070, 41.881378>,  <37.043140, 34.512878, 41.957428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.946693, 34.719070, 41.881378>,  <36.785950, 35.062721, 41.754627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.946693, 34.719070, 41.881378> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057013, 0.321903, 0.945054,
		-0.913925, -0.397845, 0.080378,
		0.401859, -0.859126, 0.316878,
		37.067253, 34.461334, 41.976440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.396763, 34.852150, 42.337215>,  <36.785950, 35.062721, 41.754627>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.396763, 34.852150, 42.337215> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.747135, 34.660610, 42.360718>,  <36.957359, 34.545689, 42.374821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.747135, 34.660610, 42.360718>,  <36.396763, 34.852150, 42.337215>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.747135, 34.660610, 42.360718> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030825, 0.177090, 0.983712,
		-0.481454, -0.859851, 0.169878,
		0.875929, -0.478848, 0.058756,
		37.009914, 34.516956, 42.378345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.310577, 34.573566, 42.940716>,  <36.396763, 34.852150, 42.337215>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.310577, 34.573566, 42.940716> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.703007, 34.526325, 42.879330>,  <36.938465, 34.497982, 42.842499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.703007, 34.526325, 42.879330>,  <36.310577, 34.573566, 42.940716>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.703007, 34.526325, 42.879330> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171541, 0.162291, 0.971718,
		-0.089857, -0.979649, 0.179478,
		0.981071, -0.118103, -0.153467,
		36.997330, 34.490894, 42.833290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436165, 34.078362, 43.430164>,  <36.310577, 34.573566, 42.940716>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.436165, 34.078362, 43.430164> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.777931, 34.269653, 43.348907>,  <36.982990, 34.384426, 43.300152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.777931, 34.269653, 43.348907>,  <36.436165, 34.078362, 43.430164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.777931, 34.269653, 43.348907> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164252, 0.122320, 0.978805,
		0.492939, -0.869676, 0.025963,
		0.854419, 0.478227, -0.203142,
		37.034256, 34.413120, 43.287964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.940308, 33.858936, 43.810619>,  <36.436165, 34.078362, 43.430164>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.940308, 33.858936, 43.810619> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.123032, 34.206512, 43.734447>,  <37.232666, 34.415058, 43.688744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.123032, 34.206512, 43.734447>,  <36.940308, 33.858936, 43.810619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.123032, 34.206512, 43.734447> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186592, 0.115705, 0.975600,
		0.869773, -0.481198, -0.109282,
		0.456813, 0.868942, -0.190425,
		37.260075, 34.467194, 43.677319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.573006, 33.864990, 44.147583>,  <36.940308, 33.858936, 43.810619>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.573006, 33.864990, 44.147583> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.493053, 34.254227, 44.101738>,  <37.445080, 34.487770, 44.074230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.493053, 34.254227, 44.101738>,  <37.573006, 33.864990, 44.147583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.493053, 34.254227, 44.101738> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392555, 0.186710, 0.900577,
		0.897745, 0.135017, -0.419313,
		-0.199883, 0.973093, -0.114616,
		37.433090, 34.546154, 44.067352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.172558, 34.187881, 44.432789>,  <37.573006, 33.864990, 44.147583>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.172558, 34.187881, 44.432789> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.904835, 34.484367, 44.412304>,  <37.744202, 34.662258, 44.400013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.904835, 34.484367, 44.412304>,  <38.172558, 34.187881, 44.432789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.904835, 34.484367, 44.412304> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354897, 0.379500, 0.854417,
		0.652744, 0.553693, -0.517058,
		-0.669308, 0.741218, -0.051212,
		37.704041, 34.706734, 44.396942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.479931, 34.881775, 44.651665>,  <38.172558, 34.187881, 44.432789>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.479931, 34.881775, 44.651665> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.087807, 34.896767, 44.729214>,  <37.852531, 34.905762, 44.775745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.087807, 34.896767, 44.729214>,  <38.479931, 34.881775, 44.651665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.087807, 34.896767, 44.729214> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188108, 0.475899, 0.859148,
		-0.060063, 0.878701, -0.473579,
		-0.980310, 0.037481, 0.193875,
		37.793713, 34.908012, 44.787376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.091398, 35.971226, 45.167854> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.336164, 35.657784, 45.124931>,  <31.483025, 35.469719, 45.099178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.336164, 35.657784, 45.124931>,  <31.091398, 35.971226, 45.167854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.336164, 35.657784, 45.124931> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164542, 0.258834, -0.951804,
		0.773617, 0.564767, 0.287322,
		0.611917, -0.783609, -0.107311,
		31.519739, 35.422703, 45.092739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.620382, 36.173298, 44.810181>,  <31.091398, 35.971226, 45.167854>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.620382, 36.173298, 44.810181> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.704855, 35.787964, 44.743984>,  <31.755539, 35.556763, 44.704266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.704855, 35.787964, 44.743984>,  <31.620382, 36.173298, 44.810181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.704855, 35.787964, 44.743984> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428114, 0.243368, -0.870339,
		0.878704, 0.112948, 0.463811,
		0.211180, -0.963335, -0.165494,
		31.768209, 35.498962, 44.694336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.182755, 36.267586, 44.420311>,  <31.620382, 36.173298, 44.810181>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.182755, 36.267586, 44.420311> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.053093, 35.894115, 44.359421>,  <31.975294, 35.670033, 44.322887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.053093, 35.894115, 44.359421>,  <32.182755, 36.267586, 44.420311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.053093, 35.894115, 44.359421> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217224, 0.083147, -0.972574,
		0.920725, -0.348334, 0.175864,
		-0.324158, -0.933675, -0.152222,
		31.955845, 35.614014, 44.313755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.675812, 35.961025, 43.850605>,  <32.182755, 36.267586, 44.420311>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.675812, 35.961025, 43.850605> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.328053, 35.763977, 43.865997>,  <32.119396, 35.645748, 43.875233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.328053, 35.763977, 43.865997>,  <32.675812, 35.961025, 43.850605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.328053, 35.763977, 43.865997> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022801, -0.117784, -0.992778,
		0.493594, -0.862237, 0.113633,
		-0.869394, -0.492620, 0.038477,
		32.067234, 35.616192, 43.877541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.823273, 35.355724, 43.373184>,  <32.675812, 35.961025, 43.850605>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.823273, 35.355724, 43.373184> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.428738, 35.377422, 43.435402>,  <32.192017, 35.390442, 43.472733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.428738, 35.377422, 43.435402>,  <32.823273, 35.355724, 43.373184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.428738, 35.377422, 43.435402> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161858, -0.143566, -0.976315,
		-0.030630, -0.988153, 0.150385,
		-0.986338, 0.054245, 0.155543,
		32.132835, 35.393696, 43.482063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.576511, 34.789543, 42.990719>,  <32.823273, 35.355724, 43.373184>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.576511, 34.789543, 42.990719> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.306286, 35.079472, 43.044754>,  <32.144150, 35.253429, 43.077175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.306286, 35.079472, 43.044754>,  <32.576511, 34.789543, 42.990719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.306286, 35.079472, 43.044754> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245733, -0.048602, -0.968118,
		-0.695147, -0.687221, 0.210946,
		-0.675563, 0.724821, 0.135088,
		32.103619, 35.296917, 43.085281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.008537, 34.525108, 42.499748>,  <32.576511, 34.789543, 42.990719>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.008537, 34.525108, 42.499748> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.998819, 34.914482, 42.590813>,  <31.992990, 35.148106, 42.645451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.998819, 34.914482, 42.590813>,  <32.008537, 34.525108, 42.499748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.998819, 34.914482, 42.590813> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015489, 0.228068, -0.973522,
		-0.999585, -0.020121, -0.020618,
		-0.024290, 0.973437, 0.227662,
		31.991531, 35.206512, 42.659111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.492296, 34.766300, 42.028988>,  <32.008537, 34.525108, 42.499748>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.492296, 34.766300, 42.028988> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.715408, 35.078491, 42.141937>,  <31.849276, 35.265804, 42.209709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.715408, 35.078491, 42.141937>,  <31.492296, 34.766300, 42.028988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.715408, 35.078491, 42.141937> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180280, 0.218167, -0.959115,
		-0.810174, 0.585882, -0.019015,
		0.557780, 0.780478, 0.282376,
		31.882742, 35.312634, 42.226650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.237917, 35.352131, 41.684704>,  <31.492296, 34.766300, 42.028988>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.237917, 35.352131, 41.684704> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.619011, 35.445950, 41.761940>,  <31.847668, 35.502239, 41.808281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.619011, 35.445950, 41.761940>,  <31.237917, 35.352131, 41.684704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.619011, 35.445950, 41.761940> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127056, 0.269696, -0.954526,
		-0.275957, 0.933944, 0.227148,
		0.952735, 0.234548, 0.193088,
		31.904831, 35.516315, 41.819866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.343208, 36.045734, 41.378464>,  <31.237917, 35.352131, 41.684704>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.343208, 36.045734, 41.378464> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.694420, 35.856255, 41.405819>,  <31.905148, 35.742569, 41.422234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.694420, 35.856255, 41.405819>,  <31.343208, 36.045734, 41.378464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.694420, 35.856255, 41.405819> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258418, 0.348948, -0.900808,
		0.402845, 0.808609, 0.428798,
		0.878030, -0.473695, 0.068387,
		31.957829, 35.714146, 41.426334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.646442, 36.384628, 40.915356>,  <31.343208, 36.045734, 41.378464>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.646442, 36.384628, 40.915356> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.917231, 36.096210, 40.974422>,  <32.079704, 35.923161, 41.009865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.917231, 36.096210, 40.974422>,  <31.646442, 36.384628, 40.915356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.917231, 36.096210, 40.974422> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463935, 0.262285, -0.846150,
		0.571381, 0.641327, 0.512077,
		0.676969, -0.721045, 0.147669,
		32.120323, 35.879898, 41.018723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.306004, 36.725433, 40.852413>,  <31.646442, 36.384628, 40.915356>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.306004, 36.725433, 40.852413> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.328159, 36.334236, 40.771957>,  <32.341454, 36.099518, 40.723686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.328159, 36.334236, 40.771957>,  <32.306004, 36.725433, 40.852413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.328159, 36.334236, 40.771957> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412769, 0.205853, -0.887269,
		0.909150, -0.033879, 0.415089,
		0.055387, -0.977996, -0.201135,
		32.344776, 36.040836, 40.711617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.956081, 36.673027, 40.372810>,  <32.306004, 36.725433, 40.852413>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.956081, 36.673027, 40.372810> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.780861, 36.313488, 40.367451>,  <32.675728, 36.097763, 40.364235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.780861, 36.313488, 40.367451>,  <32.956081, 36.673027, 40.372810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.780861, 36.313488, 40.367451> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211034, -0.088336, -0.973479,
		0.873826, -0.429265, 0.228384,
		-0.438055, -0.898848, -0.013399,
		32.649445, 36.043835, 40.363430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.418144, 36.346943, 40.040680>,  <32.956081, 36.673027, 40.372810>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.418144, 36.346943, 40.040680> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.073719, 36.145935, 40.009583>,  <32.867065, 36.025330, 39.990925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.073719, 36.145935, 40.009583>,  <33.418144, 36.346943, 40.040680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.073719, 36.145935, 40.009583> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086106, 0.006579, -0.996264,
		0.501158, -0.864538, 0.037606,
		-0.861061, -0.502524, -0.077739,
		32.815399, 35.995178, 39.986259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.987232, 35.841160, 40.044685>,  <33.418144, 36.346943, 40.040680>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.987232, 35.841160, 40.044685> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.240604, 36.144039, 40.108456>,  <34.392628, 36.325768, 40.146717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.240604, 36.144039, 40.108456>,  <33.987232, 35.841160, 40.044685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.240604, 36.144039, 40.108456> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439961, 0.182936, 0.879186,
		0.636557, -0.627041, 0.449016,
		0.633427, 0.757202, 0.159425,
		34.430634, 36.371201, 40.156284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.323036, 35.747173, 40.685551>,  <33.987232, 35.841160, 40.044685>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.323036, 35.747173, 40.685551> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.367920, 36.139359, 40.620937>,  <34.394848, 36.374672, 40.582169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.367920, 36.139359, 40.620937>,  <34.323036, 35.747173, 40.685551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.367920, 36.139359, 40.620937> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320125, 0.189562, 0.928217,
		0.940707, -0.052441, 0.335142,
		0.112206, 0.980468, -0.161534,
		34.401581, 36.433498, 40.572475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.883160, 36.044247, 41.135113>,  <34.323036, 35.747173, 40.685551>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.883160, 36.044247, 41.135113> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.649967, 36.353287, 41.034538>,  <34.510052, 36.538712, 40.974194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.649967, 36.353287, 41.034538>,  <34.883160, 36.044247, 41.135113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.649967, 36.353287, 41.034538> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025612, 0.291841, 0.956124,
		0.812080, 0.563844, -0.150351,
		-0.582984, 0.772599, -0.251439,
		34.475071, 36.585068, 40.959106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.161053, 36.669678, 41.433361>,  <34.883160, 36.044247, 41.135113>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.161053, 36.669678, 41.433361> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.785931, 36.780758, 41.350025>,  <34.560856, 36.847408, 41.300026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.785931, 36.780758, 41.350025>,  <35.161053, 36.669678, 41.433361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.785931, 36.780758, 41.350025> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078049, 0.416092, 0.905967,
		0.338276, 0.865880, -0.368538,
		-0.937805, 0.277703, -0.208335,
		34.504589, 36.864067, 41.287525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.111355, 37.322887, 41.820091>,  <35.161053, 36.669678, 41.433361>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.111355, 37.322887, 41.820091> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.733070, 37.209969, 41.755669>,  <34.506100, 37.142220, 41.717014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.733070, 37.209969, 41.755669>,  <35.111355, 37.322887, 41.820091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.733070, 37.209969, 41.755669> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279089, 0.451435, 0.847535,
		-0.166547, 0.846473, -0.505712,
		-0.945712, -0.282293, -0.161056,
		34.449356, 37.125282, 41.707352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.745033, 37.902084, 41.935169>,  <35.111355, 37.322887, 41.820091>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.745033, 37.902084, 41.935169> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.491871, 37.594051, 41.967175>,  <34.339973, 37.409229, 41.986378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.491871, 37.594051, 41.967175>,  <34.745033, 37.902084, 41.935169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.491871, 37.594051, 41.967175> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220898, 0.278657, 0.934641,
		-0.742051, 0.573862, -0.346473,
		-0.632902, -0.770086, 0.080013,
		34.302002, 37.363026, 41.991177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.259720, 38.172894, 42.445595>,  <34.745033, 37.902084, 41.935169>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.259720, 38.172894, 42.445595> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.159863, 37.785793, 42.432076>,  <34.099949, 37.553535, 42.423965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.159863, 37.785793, 42.432076>,  <34.259720, 38.172894, 42.445595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.159863, 37.785793, 42.432076> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508694, 0.101369, 0.854959,
		-0.823959, 0.230627, -0.517594,
		-0.249645, -0.967748, -0.033795,
		34.084969, 37.495468, 42.421936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.623051, 38.145916, 42.579662>,  <34.259720, 38.172894, 42.445595>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.623051, 38.145916, 42.579662> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.739506, 37.776264, 42.678635>,  <33.809380, 37.554474, 42.738018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.739506, 37.776264, 42.678635>,  <33.623051, 38.145916, 42.579662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.739506, 37.776264, 42.678635> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353450, 0.136437, 0.925450,
		-0.888995, -0.356887, -0.286912,
		0.291136, -0.924130, 0.247434,
		33.826847, 37.499023, 42.752865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.078381, 37.777119, 43.090176>,  <33.623051, 38.145916, 42.579662>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.078381, 37.777119, 43.090176> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.416065, 37.563976, 43.113411>,  <33.618675, 37.436089, 43.127350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.416065, 37.563976, 43.113411>,  <33.078381, 37.777119, 43.090176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.416065, 37.563976, 43.113411> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188793, -0.194172, 0.962629,
		-0.501669, -0.823624, -0.264521,
		0.844207, -0.532861, 0.058084,
		33.669327, 37.404118, 43.130836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.906212, 37.169456, 43.452744>,  <33.078381, 37.777119, 43.090176>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.906212, 37.169456, 43.452744> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.301800, 37.211300, 43.494690>,  <33.539154, 37.236404, 43.519855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.301800, 37.211300, 43.494690>,  <32.906212, 37.169456, 43.452744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.301800, 37.211300, 43.494690> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102889, -0.024118, 0.994400,
		0.106550, -0.994221, -0.013089,
		0.988969, 0.104607, 0.104864,
		33.598492, 37.242680, 43.526150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.065224, 36.744797, 43.953117>,  <32.906212, 37.169456, 43.452744>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.065224, 36.744797, 43.953117> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.365982, 37.008511, 43.952339>,  <33.546436, 37.166737, 43.951870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.365982, 37.008511, 43.952339>,  <33.065224, 36.744797, 43.953117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.365982, 37.008511, 43.952339> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099305, -0.110331, 0.988921,
		0.651762, -0.743758, -0.148427,
		0.751894, 0.659281, -0.001950,
		33.591549, 37.206295, 43.951756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.681545, 36.582214, 44.352722>,  <33.065224, 36.744797, 43.953117>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.681545, 36.582214, 44.352722> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.756111, 36.974392, 44.377945>,  <33.800850, 37.209698, 44.393078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.756111, 36.974392, 44.377945>,  <33.681545, 36.582214, 44.352722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.756111, 36.974392, 44.377945> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222031, -0.020480, 0.974825,
		0.957054, -0.195723, 0.213871,
		0.186415, 0.980446, 0.063057,
		33.812035, 37.268524, 44.396862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.075047, 36.663860, 44.826454>,  <33.681545, 36.582214, 44.352722>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.075047, 36.663860, 44.826454> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.919029, 37.031311, 44.801178>,  <33.825417, 37.251781, 44.786015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.919029, 37.031311, 44.801178>,  <34.075047, 36.663860, 44.826454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.919029, 37.031311, 44.801178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066717, 0.040249, 0.996960,
		0.918375, 0.393076, 0.045589,
		-0.390046, 0.918625, -0.063188,
		33.802017, 37.306900, 44.782223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.482445, 37.115608, 45.289295>,  <34.075047, 36.663860, 44.826454>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.482445, 37.115608, 45.289295> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.132748, 37.306625, 45.254314>,  <33.922928, 37.421234, 45.233326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.132748, 37.306625, 45.254314>,  <34.482445, 37.115608, 45.289295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.132748, 37.306625, 45.254314> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082278, 0.031796, 0.996102,
		0.478464, 0.878032, 0.011494,
		-0.874244, 0.477544, -0.087456,
		33.870476, 37.449890, 45.228077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.003342, 37.694466, 45.263222>,  <34.482445, 37.115608, 45.289295>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.003342, 37.694466, 45.263222> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.388283, 37.682693, 45.371307>,  <35.619247, 37.675629, 45.436157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.388283, 37.682693, 45.371307>,  <35.003342, 37.694466, 45.263222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.388283, 37.682693, 45.371307> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271785, 0.089657, -0.958173,
		0.003976, 0.995538, 0.094281,
		0.962350, -0.029433, 0.270215,
		35.676987, 37.673862, 45.452374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.277683, 38.217365, 44.875111>,  <35.003342, 37.694466, 45.263222>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.277683, 38.217365, 44.875111> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.588009, 37.988674, 44.981880>,  <35.774204, 37.851460, 45.045940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.588009, 37.988674, 44.981880>,  <35.277683, 38.217365, 44.875111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.588009, 37.988674, 44.981880> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353953, 0.044143, -0.934221,
		0.522335, 0.819257, 0.236611,
		0.775811, -0.571726, 0.266921,
		35.820751, 37.817158, 45.061958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.909698, 38.537373, 44.544292>,  <35.277683, 38.217365, 44.875111>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.909698, 38.537373, 44.544292> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.009941, 38.161716, 44.638283>,  <36.070087, 37.936321, 44.694675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.009941, 38.161716, 44.638283>,  <35.909698, 38.537373, 44.544292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.009941, 38.161716, 44.638283> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447409, -0.102884, -0.888391,
		0.858499, 0.327766, 0.394397,
		0.250607, -0.939140, 0.234972,
		36.085125, 37.879974, 44.708775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.623890, 38.537872, 44.536915>,  <35.909698, 38.537373, 44.544292>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.623890, 38.537872, 44.536915> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.516998, 38.155674, 44.486927>,  <36.452862, 37.926353, 44.456936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.516998, 38.155674, 44.486927>,  <36.623890, 38.537872, 44.536915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.516998, 38.155674, 44.486927> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416985, 0.002255, -0.908911,
		0.868741, -0.295001, 0.397824,
		-0.267232, -0.955494, -0.124970,
		36.436829, 37.869026, 44.449436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.257103, 38.225319, 44.357208>,  <36.623890, 38.537872, 44.536915>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.257103, 38.225319, 44.357208> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.960804, 37.980431, 44.246590>,  <36.783024, 37.833496, 44.180218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.960804, 37.980431, 44.246590>,  <37.257103, 38.225319, 44.357208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.960804, 37.980431, 44.246590> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343186, 0.009017, -0.939224,
		0.577507, -0.790635, 0.203426,
		-0.740749, -0.612222, -0.276542,
		36.738579, 37.796764, 44.163628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.563171, 37.776512, 43.987976>,  <37.257103, 38.225319, 44.357208>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.563171, 37.776512, 43.987976> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.187691, 37.727184, 43.859215>,  <36.962402, 37.697590, 43.781956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.187691, 37.727184, 43.859215>,  <37.563171, 37.776512, 43.987976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.187691, 37.727184, 43.859215> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338839, -0.158342, -0.927424,
		0.063398, -0.979653, 0.190422,
		-0.938706, -0.123319, -0.321906,
		36.906078, 37.690189, 43.762642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.516968, 37.034973, 43.701511>,  <37.563171, 37.776512, 43.987976>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.516968, 37.034973, 43.701511> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.221195, 37.262127, 43.556873>,  <37.043732, 37.398418, 43.470089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.221195, 37.262127, 43.556873>,  <37.516968, 37.034973, 43.701511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.221195, 37.262127, 43.556873> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347654, -0.137864, -0.927432,
		-0.576525, -0.811481, -0.095486,
		-0.739429, 0.567884, -0.361597,
		36.999367, 37.432491, 43.448395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.274853, 36.706997, 43.162571>,  <37.516968, 37.034973, 43.701511>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.274853, 36.706997, 43.162571> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.123104, 37.067379, 43.078327>,  <37.032055, 37.283607, 43.027779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.123104, 37.067379, 43.078327>,  <37.274853, 36.706997, 43.162571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.123104, 37.067379, 43.078327> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315266, -0.088132, -0.944902,
		-0.869875, -0.424871, -0.250605,
		-0.379375, 0.900954, -0.210612,
		37.009293, 37.337666, 43.015144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.062233, 36.613823, 42.440948>,  <37.274853, 36.706997, 43.162571>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.062233, 36.613823, 42.440948> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.051849, 37.010250, 42.493271>,  <37.045620, 37.248108, 42.524666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.051849, 37.010250, 42.493271>,  <37.062233, 36.613823, 42.440948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.051849, 37.010250, 42.493271> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253324, 0.133103, -0.958181,
		-0.967033, 0.008264, -0.254517,
		-0.025959, 0.991068, 0.130809,
		37.044064, 37.307571, 42.532513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.575630, 36.897163, 41.938522>,  <37.062233, 36.613823, 42.440948>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.575630, 36.897163, 41.938522> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.844307, 37.168137, 42.058464>,  <37.005512, 37.330723, 42.130428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.844307, 37.168137, 42.058464>,  <36.575630, 36.897163, 41.938522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.844307, 37.168137, 42.058464> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221680, 0.202419, -0.953879,
		-0.706887, 0.707184, -0.014210,
		0.671691, 0.677435, 0.299856,
		37.045815, 37.371368, 42.148422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.493279, 37.449104, 41.512897>,  <36.575630, 36.897163, 41.938522>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.493279, 37.449104, 41.512897> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.858349, 37.502773, 41.667305>,  <37.077393, 37.534973, 41.759949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.858349, 37.502773, 41.667305>,  <36.493279, 37.449104, 41.512897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.858349, 37.502773, 41.667305> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337350, 0.285802, -0.896946,
		-0.230671, 0.948849, 0.215582,
		0.912681, 0.134173, 0.386021,
		37.132153, 37.543026, 41.783112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.782955, 38.007500, 41.115990>,  <36.493279, 37.449104, 41.512897>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.782955, 38.007500, 41.115990> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.128860, 37.899857, 41.285583>,  <37.336403, 37.835270, 41.387341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.128860, 37.899857, 41.285583>,  <36.782955, 38.007500, 41.115990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.128860, 37.899857, 41.285583> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502176, 0.464321, -0.729538,
		-0.000537, 0.843792, 0.536669,
		0.864765, -0.269111, 0.423982,
		37.388290, 37.819122, 41.412777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.157738, 38.604668, 41.128506>,  <36.782955, 38.007500, 41.115990>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.157738, 38.604668, 41.128506> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.417171, 38.301300, 41.154282>,  <37.572830, 38.119282, 41.169746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.417171, 38.301300, 41.154282>,  <37.157738, 38.604668, 41.128506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.417171, 38.301300, 41.154282> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451451, 0.315145, -0.834791,
		0.612810, 0.570519, 0.546783,
		0.648580, -0.758414, 0.064437,
		37.611744, 38.073776, 41.173615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.774223, 38.794106, 40.816948>,  <37.157738, 38.604668, 41.128506>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.774223, 38.794106, 40.816948> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.781139, 38.394169, 40.815353>,  <37.785290, 38.154205, 40.814396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.781139, 38.394169, 40.815353>,  <37.774223, 38.794106, 40.816948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.781139, 38.394169, 40.815353> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612312, 0.013737, -0.790497,
		0.790428, 0.011224, 0.612453,
		0.017286, -0.999843, -0.003985,
		37.786324, 38.094215, 40.814159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<25.623255, 35.892319, 26.091282> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.616167, 35.503193, 25.998919>,  <25.611916, 35.269718, 25.943501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.616167, 35.503193, 25.998919>,  <25.623255, 35.892319, 26.091282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.616167, 35.503193, 25.998919> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144731, -0.226015, 0.963312,
		-0.989312, 0.050487, -0.136792,
		-0.017718, -0.972815, -0.230907,
		25.610851, 35.211349, 25.929646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.013020, 35.599262, 26.409315>,  <25.623255, 35.892319, 26.091282>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.013020, 35.599262, 26.409315> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.300564, 35.323494, 26.373680>,  <25.473091, 35.158031, 26.352299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.300564, 35.323494, 26.373680>,  <25.013020, 35.599262, 26.409315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.300564, 35.323494, 26.373680> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212737, -0.340186, 0.915979,
		-0.661801, -0.639510, -0.391212,
		0.718863, -0.689421, -0.089088,
		25.516222, 35.116669, 26.346954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.744026, 35.064133, 26.697536>,  <25.013020, 35.599262, 26.409315>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.744026, 35.064133, 26.697536> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.135204, 34.986225, 26.727711>,  <25.369911, 34.939480, 26.745815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.135204, 34.986225, 26.727711>,  <24.744026, 35.064133, 26.697536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.135204, 34.986225, 26.727711> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113172, -0.190564, 0.975129,
		-0.175530, -0.962163, -0.208402,
		0.977947, -0.194750, 0.075440,
		25.428587, 34.927795, 26.750341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.746899, 34.558567, 27.172836>,  <24.744026, 35.064133, 26.697536>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.746899, 34.558567, 27.172836> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.125481, 34.684517, 27.144344>,  <25.352631, 34.760086, 27.127249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.125481, 34.684517, 27.144344>,  <24.746899, 34.558567, 27.172836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.125481, 34.684517, 27.144344> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167158, -0.289221, 0.942555,
		0.276186, -0.903994, -0.326369,
		0.946456, 0.314875, -0.071231,
		25.409418, 34.778980, 27.122974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.019073, 34.031197, 27.400452>,  <24.746899, 34.558567, 27.172836>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.019073, 34.031197, 27.400452> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.298077, 34.313858, 27.447998>,  <25.465479, 34.483456, 27.476526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.298077, 34.313858, 27.447998>,  <25.019073, 34.031197, 27.400452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.298077, 34.313858, 27.447998> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209773, -0.359978, 0.909072,
		0.685185, -0.609149, -0.399324,
		0.697508, 0.706649, 0.118868,
		25.507328, 34.525852, 27.483658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.597460, 33.742943, 27.825439>,  <25.019073, 34.031197, 27.400452>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.597460, 33.742943, 27.825439> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.642122, 34.139431, 27.853750>,  <25.668921, 34.377323, 27.870737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.642122, 34.139431, 27.853750>,  <25.597460, 33.742943, 27.825439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.642122, 34.139431, 27.853750> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392657, -0.109434, 0.913151,
		0.912882, -0.074168, -0.401430,
		0.111657, 0.991223, 0.070777,
		25.675619, 34.436798, 27.874983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.189861, 33.797337, 28.081776>,  <25.597460, 33.742943, 27.825439>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.189861, 33.797337, 28.081776> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.007515, 34.142971, 28.167130>,  <25.898108, 34.350353, 28.218342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.007515, 34.142971, 28.167130>,  <26.189861, 33.797337, 28.081776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.007515, 34.142971, 28.167130> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252623, -0.104270, 0.961930,
		0.853443, 0.492419, -0.170756,
		-0.455868, 0.864090, 0.213385,
		25.870754, 34.402199, 28.231146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.621969, 34.200832, 28.506168>,  <26.189861, 33.797337, 28.081776>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.621969, 34.200832, 28.506168> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.265459, 34.363514, 28.586388>,  <26.051554, 34.461124, 28.634520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.265459, 34.363514, 28.586388>,  <26.621969, 34.200832, 28.506168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.265459, 34.363514, 28.586388> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153028, -0.146556, 0.977294,
		0.426862, 0.901727, 0.068384,
		-0.891275, 0.406705, 0.200549,
		25.998077, 34.485527, 28.646553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.756702, 34.665928, 29.079836>,  <26.621969, 34.200832, 28.506168>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.756702, 34.665928, 29.079836> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.361055, 34.608231, 29.091446>,  <26.123667, 34.573612, 29.098412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.361055, 34.608231, 29.091446>,  <26.756702, 34.665928, 29.079836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.361055, 34.608231, 29.091446> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016456, 0.087563, 0.996023,
		-0.146209, 0.985661, -0.084236,
		-0.989117, -0.144241, 0.029023,
		26.064320, 34.564957, 29.100153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.547157, 35.209625, 29.475519>,  <26.756702, 34.665928, 29.079836>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.547157, 35.209625, 29.475519> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.219528, 34.980312, 29.484200>,  <26.022951, 34.842724, 29.489408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.219528, 34.980312, 29.484200>,  <26.547157, 35.209625, 29.475519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.219528, 34.980312, 29.484200> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017164, 0.062301, 0.997910,
		-0.573433, 0.816988, -0.060869,
		-0.819072, -0.573280, 0.021703,
		25.973806, 34.808327, 29.490711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.035831, 35.542999, 29.924021>,  <26.547157, 35.209625, 29.475519>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.035831, 35.542999, 29.924021> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.944185, 35.154190, 29.903290>,  <25.889198, 34.920906, 29.890852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.944185, 35.154190, 29.903290>,  <26.035831, 35.542999, 29.924021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.944185, 35.154190, 29.903290> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135222, -0.020944, 0.990594,
		-0.963961, 0.233969, -0.126640,
		-0.229116, -0.972018, -0.051827,
		25.875450, 34.862583, 29.887741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.420464, 35.393021, 30.271446>,  <26.035831, 35.542999, 29.924021>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.420464, 35.393021, 30.271446> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.617619, 35.045784, 30.295057>,  <25.735912, 34.837444, 30.309223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.617619, 35.045784, 30.295057>,  <25.420464, 35.393021, 30.271446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.617619, 35.045784, 30.295057> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137572, -0.010766, 0.990433,
		-0.859148, -0.496293, -0.124731,
		0.492888, -0.868088, 0.059027,
		25.765486, 34.785358, 30.312765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.156424, 35.140018, 30.766628>,  <25.420464, 35.393021, 30.271446>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.156424, 35.140018, 30.766628> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.477770, 34.902878, 30.744232>,  <25.670578, 34.760593, 30.730795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.477770, 34.902878, 30.744232>,  <25.156424, 35.140018, 30.766628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.477770, 34.902878, 30.744232> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211725, -0.372252, 0.903660,
		-0.556575, -0.714115, -0.424575,
		0.803366, -0.592847, -0.055990,
		25.718781, 34.725025, 30.727436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.929821, 34.527431, 31.092218>,  <25.156424, 35.140018, 30.766628>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.929821, 34.527431, 31.092218> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.328707, 34.539322, 31.119591>,  <25.568037, 34.546455, 31.136015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.328707, 34.539322, 31.119591>,  <24.929821, 34.527431, 31.092218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.328707, 34.539322, 31.119591> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056820, -0.291853, 0.954774,
		0.048357, -0.956001, -0.289350,
		0.997213, 0.029729, 0.068433,
		25.627871, 34.548241, 31.140121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.201166, 33.836979, 31.352566>,  <24.929821, 34.527431, 31.092218>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.201166, 33.836979, 31.352566> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.518951, 34.072170, 31.413364>,  <25.709623, 34.213287, 31.449844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.518951, 34.072170, 31.413364>,  <25.201166, 33.836979, 31.352566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.518951, 34.072170, 31.413364> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007540, -0.240713, 0.970567,
		0.607263, -0.772227, -0.186805,
		0.794464, 0.587981, 0.151999,
		25.757292, 34.248566, 31.458963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.620562, 33.414276, 31.707045>,  <25.201166, 33.836979, 31.352566>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.620562, 33.414276, 31.707045> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.754349, 33.783745, 31.781847>,  <25.834621, 34.005424, 31.826729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.754349, 33.783745, 31.781847>,  <25.620562, 33.414276, 31.707045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.754349, 33.783745, 31.781847> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103380, -0.161274, 0.981480,
		0.936720, -0.347605, 0.041548,
		0.334467, 0.923667, 0.187004,
		25.854689, 34.060844, 31.837948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.255493, 33.364765, 32.176716>,  <25.620562, 33.414276, 31.707045>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.255493, 33.364765, 32.176716> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.120611, 33.738316, 32.224319>,  <26.039682, 33.962448, 32.252884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.120611, 33.738316, 32.224319>,  <26.255493, 33.364765, 32.176716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.120611, 33.738316, 32.224319> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132602, -0.078040, 0.988092,
		0.932046, 0.348972, -0.097519,
		-0.337206, 0.933878, 0.119011,
		26.019449, 34.018478, 32.260021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.713526, 33.587635, 32.655468>,  <26.255493, 33.364765, 32.176716>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.713526, 33.587635, 32.655468> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.391649, 33.824684, 32.669685>,  <26.198523, 33.966915, 32.678215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.391649, 33.824684, 32.669685>,  <26.713526, 33.587635, 32.655468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.391649, 33.824684, 32.669685> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090590, 0.063396, 0.993868,
		0.586738, 0.802979, -0.104701,
		-0.804693, 0.592626, 0.035545,
		26.150242, 34.002472, 32.680347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.420544, 33.559608, 32.949169>,  <26.713526, 33.587635, 32.655468>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.420544, 33.559608, 32.949169> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.671286, 33.868481, 32.907627>,  <27.821730, 34.053806, 32.882702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.671286, 33.868481, 32.907627>,  <27.420544, 33.559608, 32.949169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.671286, 33.868481, 32.907627> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431774, -0.455237, -0.778672,
		-0.648557, 0.443272, -0.618776,
		0.626853, 0.772185, -0.103854,
		27.859341, 34.100136, 32.876472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.380322, 33.902348, 32.245182>,  <27.420544, 33.559608, 32.949169>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.380322, 33.902348, 32.245182> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.741259, 33.940006, 32.413425>,  <27.957821, 33.962601, 32.514370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.741259, 33.940006, 32.413425>,  <27.380322, 33.902348, 32.245182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.741259, 33.940006, 32.413425> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399996, -0.546441, -0.735803,
		0.160562, 0.832189, -0.530737,
		0.902343, 0.094151, 0.420610,
		28.011961, 33.968250, 32.539608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.838573, 34.238853, 31.578911>,  <27.380322, 33.902348, 32.245182>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.838573, 34.238853, 31.578911> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.077477, 34.073219, 31.853666>,  <28.220818, 33.973839, 32.018520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.077477, 34.073219, 31.853666>,  <27.838573, 34.238853, 31.578911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.077477, 34.073219, 31.853666> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639898, -0.270306, -0.719350,
		0.483542, 0.869177, 0.103530,
		0.597258, -0.414085, 0.686889,
		28.256655, 33.948994, 32.059734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.494665, 34.632683, 31.601336>,  <27.838573, 34.238853, 31.578911>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.494665, 34.632683, 31.601336> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.541622, 34.259773, 31.738203>,  <28.569798, 34.036026, 31.820324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.541622, 34.259773, 31.738203>,  <28.494665, 34.632683, 31.601336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.541622, 34.259773, 31.738203> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671961, -0.179128, -0.718597,
		0.731223, 0.314284, 0.605424,
		0.117395, -0.932276, 0.342169,
		28.576841, 33.980091, 31.840853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.224779, 34.539856, 31.674660>,  <28.494665, 34.632683, 31.601336>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.224779, 34.539856, 31.674660> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.054049, 34.178185, 31.668036>,  <28.951611, 33.961182, 31.664061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.054049, 34.178185, 31.668036>,  <29.224779, 34.539856, 31.674660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.054049, 34.178185, 31.668036> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516442, -0.228678, -0.825224,
		0.742365, -0.360781, 0.564563,
		-0.426829, -0.904181, -0.016560,
		28.926001, 33.906929, 31.663067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.761030, 34.157913, 31.460381>,  <29.224779, 34.539856, 31.674660>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.761030, 34.157913, 31.460381> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.457737, 33.900745, 31.417048>,  <29.275761, 33.746445, 31.391047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.457737, 33.900745, 31.417048>,  <29.761030, 34.157913, 31.460381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.457737, 33.900745, 31.417048> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398874, -0.325988, -0.857106,
		0.515737, -0.693096, 0.503619,
		-0.758231, -0.642922, -0.108334,
		29.230267, 33.707870, 31.384548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.044273, 33.516102, 31.222025>,  <29.761030, 34.157913, 31.460381>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.044273, 33.516102, 31.222025> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.663727, 33.461971, 31.111324>,  <29.435400, 33.429493, 31.044905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.663727, 33.461971, 31.111324>,  <30.044273, 33.516102, 31.222025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.663727, 33.461971, 31.111324> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300708, -0.212763, -0.929681,
		0.066931, -0.967687, 0.243110,
		-0.951365, -0.135330, -0.276750,
		29.378317, 33.421371, 31.028299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.983234, 32.817791, 30.835890>,  <30.044273, 33.516102, 31.222025>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.983234, 32.817791, 30.835890> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.640999, 32.983696, 30.711996>,  <29.435658, 33.083241, 30.637659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.640999, 32.983696, 30.711996>,  <29.983234, 32.817791, 30.835890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.640999, 32.983696, 30.711996> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219436, -0.251326, -0.942700,
		-0.468842, -0.874532, 0.124018,
		-0.855590, 0.414763, -0.309737,
		29.384321, 33.108124, 30.619076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.539469, 32.272789, 30.523874>,  <29.983234, 32.817791, 30.835890>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.539469, 32.272789, 30.523874> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.418619, 32.628399, 30.386265>,  <29.346109, 32.841766, 30.303699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.418619, 32.628399, 30.386265>,  <29.539469, 32.272789, 30.523874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.418619, 32.628399, 30.386265> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186721, -0.298709, -0.935900,
		-0.934802, -0.346996, -0.075752,
		-0.302125, 0.889026, -0.344025,
		29.327982, 32.895107, 30.283058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.054201, 32.051952, 29.960049>,  <29.539469, 32.272789, 30.523874>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.054201, 32.051952, 29.960049> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.210388, 32.418182, 29.921553>,  <29.304100, 32.637920, 29.898455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.210388, 32.418182, 29.921553>,  <29.054201, 32.051952, 29.960049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.210388, 32.418182, 29.921553> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047101, -0.084533, -0.995307,
		-0.919411, 0.393167, 0.010117,
		0.390467, 0.915573, -0.096239,
		29.327528, 32.692856, 29.892681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.588280, 32.424290, 29.704409>,  <29.054201, 32.051952, 29.960049>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.588280, 32.424290, 29.704409> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.923967, 32.605576, 29.584204>,  <29.125380, 32.714348, 29.512081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.923967, 32.605576, 29.584204>,  <28.588280, 32.424290, 29.704409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.923967, 32.605576, 29.584204> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344013, 0.014488, -0.938853,
		-0.421148, 0.891284, 0.168070,
		0.839219, 0.453214, -0.300512,
		29.175734, 32.741539, 29.494051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.256096, 32.793171, 29.179171>,  <28.588280, 32.424290, 29.704409>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.256096, 32.793171, 29.179171> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.648603, 32.835770, 29.114962>,  <28.884108, 32.861328, 29.076437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.648603, 32.835770, 29.114962>,  <28.256096, 32.793171, 29.179171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.648603, 32.835770, 29.114962> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164192, 0.026570, -0.986070,
		-0.100751, 0.993958, 0.043559,
		0.981270, 0.106500, -0.160523,
		28.942984, 32.867718, 29.066805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.394892, 33.393589, 28.668945>,  <28.256096, 32.793171, 29.179171>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.394892, 33.393589, 28.668945> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.740812, 33.195030, 28.638704>,  <28.948364, 33.075897, 28.620560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.740812, 33.195030, 28.638704>,  <28.394892, 33.393589, 28.668945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.740812, 33.195030, 28.638704> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017026, 0.121487, -0.992447,
		0.501828, 0.859555, 0.096610,
		0.864800, -0.496393, -0.075600,
		29.000252, 33.046112, 28.616024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.781773, 33.929626, 28.355986>,  <28.394892, 33.393589, 28.668945>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.781773, 33.929626, 28.355986> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.950754, 33.568947, 28.319172>,  <29.052143, 33.352539, 28.297083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.950754, 33.568947, 28.319172>,  <28.781773, 33.929626, 28.355986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.950754, 33.568947, 28.319172> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030953, 0.115833, -0.992786,
		0.905855, 0.416559, 0.076844,
		0.422455, -0.901699, -0.092034,
		29.077490, 33.298435, 28.291561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.292454, 33.999889, 27.735373>,  <28.781773, 33.929626, 28.355986>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.292454, 33.999889, 27.735373> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.171473, 33.623371, 27.795345>,  <29.098885, 33.397461, 27.831329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.171473, 33.623371, 27.795345>,  <29.292454, 33.999889, 27.735373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.171473, 33.623371, 27.795345> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128463, -0.115610, -0.984953,
		0.944468, -0.317162, -0.085955,
		-0.302452, -0.941298, 0.149934,
		29.080736, 33.340981, 27.840326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.757490, 33.601025, 27.464630>,  <29.292454, 33.999889, 27.735373>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.757490, 33.601025, 27.464630> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.418592, 33.388557, 27.467068>,  <29.215254, 33.261078, 27.468531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.418592, 33.388557, 27.467068>,  <29.757490, 33.601025, 27.464630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.418592, 33.388557, 27.467068> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058349, -0.104456, -0.992816,
		0.527988, -0.840803, 0.119493,
		-0.847245, -0.531168, 0.006092,
		29.164419, 33.229206, 27.468895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.863714, 33.203407, 26.859028>,  <29.757490, 33.601025, 27.464630>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.863714, 33.203407, 26.859028> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.473703, 33.163322, 26.938301>,  <29.239697, 33.139271, 26.985865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.473703, 33.163322, 26.938301>,  <29.863714, 33.203407, 26.859028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.473703, 33.163322, 26.938301> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181339, -0.155900, -0.970985,
		0.128199, -0.982677, 0.133836,
		-0.975029, -0.100209, 0.198183,
		29.181194, 33.133259, 26.997757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.682808, 32.695065, 26.399075>,  <29.863714, 33.203407, 26.859028>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.682808, 32.695065, 26.399075> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.320421, 32.828552, 26.503275>,  <29.102989, 32.908646, 26.565796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.320421, 32.828552, 26.503275>,  <29.682808, 32.695065, 26.399075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.320421, 32.828552, 26.503275> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312484, -0.111980, -0.943299,
		-0.285625, -0.935998, 0.205731,
		-0.905965, 0.333718, 0.260501,
		29.048632, 32.928665, 26.581425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.143150, 32.246281, 26.124588>,  <29.682808, 32.695065, 26.399075>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.143150, 32.246281, 26.124588> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.949654, 32.590836, 26.186558>,  <28.833555, 32.797569, 26.223740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.949654, 32.590836, 26.186558>,  <29.143150, 32.246281, 26.124588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.949654, 32.590836, 26.186558> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393318, -0.055829, -0.917706,
		-0.781854, -0.504866, 0.365807,
		-0.483741, 0.861391, 0.154923,
		28.804531, 32.849251, 26.233034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.427435, 32.086109, 25.968212>,  <29.143150, 32.246281, 26.124588>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.427435, 32.086109, 25.968212> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.406204, 32.483829, 25.931227>,  <28.393465, 32.722462, 25.909035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.406204, 32.483829, 25.931227>,  <28.427435, 32.086109, 25.968212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.406204, 32.483829, 25.931227> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355482, -0.105343, -0.928728,
		-0.933175, -0.016424, 0.359047,
		-0.053076, 0.994301, -0.092465,
		28.390282, 32.782120, 25.903488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.793861, 32.302864, 25.632429>,  <28.427435, 32.086109, 25.968212>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.793861, 32.302864, 25.632429> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.005146, 32.635895, 25.565723>,  <28.131916, 32.835712, 25.525700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.005146, 32.635895, 25.565723>,  <27.793861, 32.302864, 25.632429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.005146, 32.635895, 25.565723> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209168, -0.062761, -0.975864,
		-0.822947, 0.550343, 0.140997,
		0.528211, 0.832577, -0.166763,
		28.163609, 32.885666, 25.515694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.360435, 32.635418, 25.247494>,  <27.793861, 32.302864, 25.632429>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.360435, 32.635418, 25.247494> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.703350, 32.833431, 25.190931>,  <27.909100, 32.952240, 25.156994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.703350, 32.833431, 25.190931>,  <27.360435, 32.635418, 25.247494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.703350, 32.833431, 25.190931> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181883, 0.034264, -0.982723,
		-0.481639, 0.868196, 0.119413,
		0.857288, 0.495037, -0.141407,
		27.960537, 32.981941, 25.148510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.178354, 33.284218, 24.833643>,  <27.360435, 32.635418, 25.247494>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.178354, 33.284218, 24.833643> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.561766, 33.177525, 24.793489>,  <27.791813, 33.113510, 24.769398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.561766, 33.177525, 24.793489>,  <27.178354, 33.284218, 24.833643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.561766, 33.177525, 24.793489> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085193, 0.067952, -0.994045,
		0.271962, 0.961373, 0.042410,
		0.958530, -0.266729, -0.100383,
		27.849325, 33.097507, 24.763374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.399418, 33.742718, 24.254118>,  <27.178354, 33.284218, 24.833643>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.399418, 33.742718, 24.254118> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.637774, 33.422012, 24.272417>,  <27.780787, 33.229588, 24.283396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.637774, 33.422012, 24.272417>,  <27.399418, 33.742718, 24.254118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.637774, 33.422012, 24.272417> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188192, -0.194794, -0.962621,
		0.780705, 0.565006, -0.266961,
		0.595889, -0.801763, 0.045747,
		27.816540, 33.181484, 24.286140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.176220, 35.931656, 45.201393> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.899078, 35.643406, 45.211662>,  <37.732796, 35.470455, 45.217823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.899078, 35.643406, 45.211662>,  <38.176220, 35.931656, 45.201393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.899078, 35.643406, 45.211662> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191148, 0.217875, 0.957075,
		-0.695285, 0.658203, -0.288700,
		-0.692850, -0.720624, 0.025671,
		37.691223, 35.427219, 45.219364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.526264, 36.216049, 45.520290>,  <38.176220, 35.931656, 45.201393>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.526264, 36.216049, 45.520290> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.490471, 35.820717, 45.569603>,  <37.468994, 35.583519, 45.599190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.490471, 35.820717, 45.569603>,  <37.526264, 36.216049, 45.520290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.490471, 35.820717, 45.569603> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036657, 0.126961, 0.991230,
		-0.995314, 0.084175, -0.047590,
		-0.089479, -0.988329, 0.123281,
		37.463627, 35.524220, 45.606586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.965405, 36.219742, 46.033623>,  <37.526264, 36.216049, 45.520290>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.965405, 36.219742, 46.033623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.147404, 35.863567, 46.029678>,  <37.256603, 35.649860, 46.027309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.147404, 35.863567, 46.029678>,  <36.965405, 36.219742, 46.033623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.147404, 35.863567, 46.029678> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125138, -0.074903, 0.989308,
		-0.881658, -0.448895, -0.145509,
		0.454994, -0.890440, -0.009864,
		37.283901, 35.596436, 46.026718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.562550, 35.895798, 46.295166>,  <36.965405, 36.219742, 46.033623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.562550, 35.895798, 46.295166> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.889194, 35.668884, 46.337730>,  <37.085182, 35.532734, 46.363270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.889194, 35.668884, 46.337730>,  <36.562550, 35.895798, 46.295166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.889194, 35.668884, 46.337730> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283583, -0.233776, 0.930016,
		-0.502711, -0.789641, -0.351779,
		0.816617, -0.567288, 0.106407,
		37.134178, 35.498699, 46.369652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.300514, 35.243355, 46.606995>,  <36.562550, 35.895798, 46.295166>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.300514, 35.243355, 46.606995> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.692226, 35.254349, 46.687256>,  <36.927254, 35.260944, 46.735413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.692226, 35.254349, 46.687256>,  <36.300514, 35.243355, 46.606995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.692226, 35.254349, 46.687256> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182409, -0.310748, 0.932825,
		0.087991, -0.950095, -0.299295,
		0.979277, 0.027486, 0.200649,
		36.986012, 35.262596, 46.747452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.546021, 34.505283, 46.821747>,  <36.300514, 35.243355, 46.606995>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.546021, 34.505283, 46.821747> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.778084, 34.793224, 46.974178>,  <36.917324, 34.965988, 47.065639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.778084, 34.793224, 46.974178>,  <36.546021, 34.505283, 46.821747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.778084, 34.793224, 46.974178> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257541, -0.281738, 0.924282,
		0.772714, -0.634376, 0.021939,
		0.580161, 0.719855, 0.381080,
		36.952133, 35.009182, 47.088501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.645805, 34.260117, 47.514278>,  <36.546021, 34.505283, 46.821747>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.645805, 34.260117, 47.514278> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.829533, 34.612244, 47.561707>,  <36.939770, 34.823521, 47.590164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.829533, 34.612244, 47.561707>,  <36.645805, 34.260117, 47.514278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.829533, 34.612244, 47.561707> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043893, -0.110832, 0.992869,
		0.887186, -0.461249, -0.012267,
		0.459319, 0.880322, 0.118574,
		36.967327, 34.876339, 47.597279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.243240, 34.187527, 47.943241>,  <36.645805, 34.260117, 47.514278>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.243240, 34.187527, 47.943241> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.110287, 34.563168, 47.978142>,  <37.030514, 34.788551, 47.999081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.110287, 34.563168, 47.978142>,  <37.243240, 34.187527, 47.943241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.110287, 34.563168, 47.978142> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029220, -0.102718, 0.994281,
		0.942690, 0.327937, 0.061583,
		-0.332387, 0.939099, 0.087249,
		37.010571, 34.844898, 48.004318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.609997, 34.506638, 48.517342>,  <37.243240, 34.187527, 47.943241>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.609997, 34.506638, 48.517342> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.306717, 34.763142, 48.470158>,  <37.124748, 34.917046, 48.441849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.306717, 34.763142, 48.470158>,  <37.609997, 34.506638, 48.517342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.306717, 34.763142, 48.470158> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111381, 0.050876, 0.992475,
		0.642437, 0.765634, 0.032850,
		-0.758201, 0.641262, -0.117962,
		37.079258, 34.955521, 48.434769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.675377, 34.863064, 49.044529>,  <37.609997, 34.506638, 48.517342>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.675377, 34.863064, 49.044529> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.305820, 34.956951, 48.923645>,  <37.084087, 35.013283, 48.851116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.305820, 34.956951, 48.923645>,  <37.675377, 34.863064, 49.044529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.305820, 34.956951, 48.923645> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292303, 0.076769, 0.953240,
		0.246945, 0.969027, -0.002317,
		-0.923893, 0.234720, -0.302207,
		37.028652, 35.027367, 48.832985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.473545, 35.438652, 49.530777>,  <37.675377, 34.863064, 49.044529>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.473545, 35.438652, 49.530777> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.133419, 35.279850, 49.392593>,  <36.929344, 35.184566, 49.309685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.133419, 35.279850, 49.392593>,  <37.473545, 35.438652, 49.530777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.133419, 35.279850, 49.392593> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358136, -0.044458, 0.932610,
		-0.385612, 0.916738, -0.104380,
		-0.850319, -0.397008, -0.345460,
		36.878323, 35.160748, 49.288956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.990524, 35.647522, 50.071377>,  <37.473545, 35.438652, 49.530777>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.990524, 35.647522, 50.071377> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.798634, 35.366863, 49.860645>,  <36.683498, 35.198467, 49.734207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.798634, 35.366863, 49.860645>,  <36.990524, 35.647522, 50.071377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.798634, 35.366863, 49.860645> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584345, -0.192415, 0.788364,
		-0.654524, 0.686051, -0.317697,
		-0.479729, -0.701648, -0.526830,
		36.654716, 35.156368, 49.702595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.483902, 35.613346, 50.558105>,  <36.990524, 35.647522, 50.071377>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.483902, 35.613346, 50.558105> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.394897, 35.357807, 50.263523>,  <36.341496, 35.204483, 50.086773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.394897, 35.357807, 50.263523>,  <36.483902, 35.613346, 50.558105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.394897, 35.357807, 50.263523> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563113, -0.532429, 0.632000,
		-0.795859, 0.555335, -0.241270,
		-0.222513, -0.638845, -0.736455,
		36.328144, 35.166153, 50.042587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.796619, 35.372353, 50.511612>,  <36.483902, 35.613346, 50.558105>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.796619, 35.372353, 50.511612> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.025375, 35.098396, 50.331005>,  <36.162628, 34.934021, 50.222641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.025375, 35.098396, 50.331005>,  <35.796619, 35.372353, 50.511612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.025375, 35.098396, 50.331005> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422640, -0.717732, 0.553387,
		-0.703080, -0.125644, -0.699923,
		0.571886, -0.684890, -0.451521,
		36.196941, 34.892929, 50.195549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.389244, 35.809780, 50.936172>,  <35.796619, 35.372353, 50.511612>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.389244, 35.809780, 50.936172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.258827, 36.187878, 50.930443>,  <35.180576, 36.414738, 50.927006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.258827, 36.187878, 50.930443>,  <35.389244, 35.809780, 50.936172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.258827, 36.187878, 50.930443> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458155, 0.144742, -0.877008,
		-0.826917, -0.292502, -0.480262,
		-0.326041, 0.945247, -0.014321,
		35.161015, 36.471451, 50.926147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.027782, 35.861248, 50.337208>,  <35.389244, 35.809780, 50.936172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.027782, 35.861248, 50.337208> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.108425, 36.235611, 50.452751>,  <35.156811, 36.460228, 50.522076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.108425, 36.235611, 50.452751>,  <35.027782, 35.861248, 50.337208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.108425, 36.235611, 50.452751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277823, 0.228157, -0.933144,
		-0.939238, 0.268382, -0.214017,
		0.201610, 0.935903, 0.288857,
		35.168907, 36.516380, 50.539410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.818928, 36.235798, 49.765285>,  <35.027782, 35.861248, 50.337208>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.818928, 36.235798, 49.765285> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.049232, 36.511608, 49.941040>,  <35.187416, 36.677094, 50.046494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.049232, 36.511608, 49.941040>,  <34.818928, 36.235798, 49.765285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.049232, 36.511608, 49.941040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101754, 0.472790, -0.875281,
		-0.811261, 0.548662, 0.202053,
		0.575762, 0.689522, 0.439384,
		35.221962, 36.718464, 50.072857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.543659, 36.903194, 49.618664>,  <34.818928, 36.235798, 49.765285>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.543659, 36.903194, 49.618664> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.932663, 36.937050, 49.705437>,  <35.166065, 36.957363, 49.757500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.932663, 36.937050, 49.705437>,  <34.543659, 36.903194, 49.618664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.932663, 36.937050, 49.705437> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139820, 0.532709, -0.834669,
		-0.186209, 0.842056, 0.506230,
		0.972511, 0.084642, 0.216931,
		35.224415, 36.962440, 49.770515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.683208, 37.475773, 49.202919>,  <34.543659, 36.903194, 49.618664>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.683208, 37.475773, 49.202919> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.049271, 37.337021, 49.285057>,  <35.268906, 37.253769, 49.334339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.049271, 37.337021, 49.285057>,  <34.683208, 37.475773, 49.202919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.049271, 37.337021, 49.285057> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341226, 0.395399, -0.852775,
		0.214617, 0.850490, 0.480215,
		0.915153, -0.346882, 0.205349,
		35.323818, 37.232956, 49.346661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.027348, 38.022236, 49.125492>,  <34.683208, 37.475773, 49.202919>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.027348, 38.022236, 49.125492> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.304596, 37.735584, 49.094452>,  <35.470943, 37.563591, 49.075829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.304596, 37.735584, 49.094452>,  <35.027348, 38.022236, 49.125492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.304596, 37.735584, 49.094452> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265253, 0.353681, -0.896967,
		0.670243, 0.601122, 0.435232,
		0.693120, -0.716633, -0.077603,
		35.512531, 37.520596, 49.071171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.530609, 38.380573, 48.988373>,  <35.027348, 38.022236, 49.125492>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.530609, 38.380573, 48.988373> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.610950, 38.007812, 48.867569>,  <35.659153, 37.784157, 48.795086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.610950, 38.007812, 48.867569>,  <35.530609, 38.380573, 48.988373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.610950, 38.007812, 48.867569> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248624, 0.346690, -0.904429,
		0.947547, 0.106568, 0.301327,
		0.200850, -0.931906, -0.302010,
		35.671207, 37.728241, 48.776966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.067303, 38.471420, 48.627087>,  <35.530609, 38.380573, 48.988373>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.067303, 38.471420, 48.627087> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.927006, 38.119225, 48.499512>,  <35.842827, 37.907909, 48.422966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.927006, 38.119225, 48.499512>,  <36.067303, 38.471420, 48.627087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.927006, 38.119225, 48.499512> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131743, 0.290798, -0.947671,
		0.927158, -0.374410, 0.014001,
		-0.350746, -0.880485, -0.318941,
		35.821781, 37.855080, 48.403828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582973, 38.174603, 48.186451>,  <36.067303, 38.471420, 48.627087>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.582973, 38.174603, 48.186451> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.232861, 37.999920, 48.103336>,  <36.022793, 37.895111, 48.053467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.232861, 37.999920, 48.103336>,  <36.582973, 38.174603, 48.186451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.232861, 37.999920, 48.103336> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113401, 0.232333, -0.966003,
		0.470134, -0.869085, -0.153834,
		-0.875280, -0.436706, -0.207783,
		35.970276, 37.868908, 48.041000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.715965, 37.783192, 47.591606>,  <36.582973, 38.174603, 48.186451>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.715965, 37.783192, 47.591606> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.316097, 37.779282, 47.582165>,  <36.076176, 37.776936, 47.576500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.316097, 37.779282, 47.582165>,  <36.715965, 37.783192, 47.591606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.316097, 37.779282, 47.582165> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023505, 0.010004, -0.999674,
		0.010004, -0.999902, -0.009771,
		0.999674, 0.009771, 0.023603,
		36.016193, 37.776352, 47.575085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.619251, 37.249767, 47.218998>,  <36.715965, 37.783192, 47.591606>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.619251, 37.249767, 47.218998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.284565, 37.467770, 47.197559>,  <36.083752, 37.598572, 47.184696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.284565, 37.467770, 47.197559>,  <36.619251, 37.249767, 47.218998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.284565, 37.467770, 47.197559> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018105, -0.125348, -0.991948,
		-0.547339, -0.829007, 0.114748,
		-0.836715, 0.545009, -0.053599,
		36.033550, 37.631271, 47.181480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.120537, 36.886608, 46.822094>,  <36.619251, 37.249767, 47.218998>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.120537, 36.886608, 46.822094> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.993305, 37.264507, 46.790386>,  <35.916965, 37.491245, 46.771362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.993305, 37.264507, 46.790386>,  <36.120537, 36.886608, 46.822094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.993305, 37.264507, 46.790386> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084722, -0.111605, -0.990135,
		-0.944271, -0.308225, 0.115539,
		-0.318079, 0.944744, -0.079272,
		35.897881, 37.547932, 46.766605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.508049, 36.934399, 46.452065>,  <36.120537, 36.886608, 46.822094>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.508049, 36.934399, 46.452065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.693542, 37.283695, 46.392185>,  <35.804836, 37.493271, 46.356258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.693542, 37.283695, 46.392185>,  <35.508049, 36.934399, 46.452065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.693542, 37.283695, 46.392185> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117080, -0.107082, -0.987333,
		-0.878206, 0.475384, 0.052582,
		0.463731, 0.873237, -0.149698,
		35.832661, 37.545666, 46.347275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.062119, 37.202442, 45.887970>,  <35.508049, 36.934399, 46.452065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.062119, 37.202442, 45.887970> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.416275, 37.386955, 45.910965>,  <35.628769, 37.497662, 45.924763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.416275, 37.386955, 45.910965>,  <35.062119, 37.202442, 45.887970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.416275, 37.386955, 45.910965> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080828, -0.030988, -0.996246,
		-0.457765, 0.886714, -0.064721,
		0.885391, 0.461278, 0.057486,
		35.681892, 37.525337, 45.928211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.405270, 37.529640, 45.960743>,  <35.062119, 37.202442, 45.887970>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.405270, 37.529640, 45.960743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.033382, 37.551090, 45.815002>,  <33.810249, 37.563961, 45.727558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.033382, 37.551090, 45.815002>,  <34.405270, 37.529640, 45.960743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.033382, 37.551090, 45.815002> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356129, 0.121130, 0.926552,
		0.093819, 0.991187, -0.093520,
		-0.929715, 0.053623, -0.364355,
		33.754467, 37.567177, 45.705696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.030033, 38.103111, 46.328262>,  <34.405270, 37.529640, 45.960743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.030033, 38.103111, 46.328262> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.757832, 37.849819, 46.180790>,  <33.594509, 37.697845, 46.092304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.757832, 37.849819, 46.180790>,  <34.030033, 38.103111, 46.328262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.757832, 37.849819, 46.180790> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449663, -0.036379, 0.892457,
		-0.578544, 0.773107, -0.259985,
		-0.680507, -0.633231, -0.368685,
		33.553680, 37.659851, 46.070183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.389618, 38.347359, 46.467537>,  <34.030033, 38.103111, 46.328262>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.389618, 38.347359, 46.467537> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.320976, 37.957195, 46.412220>,  <33.279793, 37.723095, 46.379028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.320976, 37.957195, 46.412220>,  <33.389618, 38.347359, 46.467537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.320976, 37.957195, 46.412220> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408822, -0.057214, 0.910819,
		-0.896335, 0.212841, -0.388951,
		-0.171606, -0.975411, -0.138297,
		33.269493, 37.664574, 46.370731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.741047, 38.190853, 46.772224>,  <33.389618, 38.347359, 46.467537>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.741047, 38.190853, 46.772224> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.893421, 37.825588, 46.714237>,  <32.984844, 37.606430, 46.679443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.893421, 37.825588, 46.714237>,  <32.741047, 38.190853, 46.772224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.893421, 37.825588, 46.714237> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314177, -0.275304, 0.908571,
		-0.869586, -0.300561, -0.391769,
		0.380936, -0.913165, -0.144972,
		33.007702, 37.551640, 46.670746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.162918, 37.607784, 46.879009>,  <32.741047, 38.190853, 46.772224>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.162918, 37.607784, 46.879009> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.511623, 37.427212, 46.955166>,  <32.720844, 37.318867, 47.000858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.511623, 37.427212, 46.955166>,  <32.162918, 37.607784, 46.879009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.511623, 37.427212, 46.955166> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332347, -0.259359, 0.906796,
		-0.359974, -0.853783, -0.376129,
		0.871759, -0.451429, 0.190390,
		32.773151, 37.291782, 47.012283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.009228, 36.978893, 47.185375>,  <32.162918, 37.607784, 46.879009>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.009228, 36.978893, 47.185375> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.390408, 37.031792, 47.294487>,  <32.619114, 37.063530, 47.359955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.390408, 37.031792, 47.294487>,  <32.009228, 36.978893, 47.185375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.390408, 37.031792, 47.294487> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203855, -0.386412, 0.899516,
		0.224364, -0.912796, -0.341270,
		0.952945, 0.132250, 0.272775,
		32.676292, 37.071465, 47.376320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.183689, 36.400631, 47.639469>,  <32.009228, 36.978893, 47.185375>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.183689, 36.400631, 47.639469> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.476082, 36.657791, 47.730976>,  <32.651520, 36.812088, 47.785881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.476082, 36.657791, 47.730976>,  <32.183689, 36.400631, 47.639469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.476082, 36.657791, 47.730976> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133395, -0.194148, 0.971860,
		0.669228, -0.740932, -0.056158,
		0.730985, 0.642905, 0.228766,
		32.695377, 36.850662, 47.799606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.106682, 35.673264, 47.718246>,  <32.183689, 36.400631, 47.639469>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.106682, 35.673264, 47.718246> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.836802, 35.378105, 47.725090>,  <31.674873, 35.201012, 47.729198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.836802, 35.378105, 47.725090>,  <32.106682, 35.673264, 47.718246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.836802, 35.378105, 47.725090> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120165, 0.086941, -0.988939,
		0.728247, -0.669291, -0.147328,
		-0.674698, -0.737896, 0.017111,
		31.634392, 35.156738, 47.730225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.417171, 35.148548, 47.307201>,  <32.106682, 35.673264, 47.718246>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.417171, 35.148548, 47.307201> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.026524, 35.063969, 47.322708>,  <31.792135, 35.013222, 47.332012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.026524, 35.063969, 47.322708>,  <32.417171, 35.148548, 47.307201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.026524, 35.063969, 47.322708> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016960, -0.104006, -0.994432,
		0.214302, -0.971840, 0.097988,
		-0.976620, -0.211447, 0.038771,
		31.733538, 35.000534, 47.334339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.302608, 34.520523, 46.916019>,  <32.417171, 35.148548, 47.307201>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.302608, 34.520523, 46.916019> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.925983, 34.652912, 46.941044>,  <31.700008, 34.732346, 46.956059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.925983, 34.652912, 46.941044>,  <32.302608, 34.520523, 46.916019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.925983, 34.652912, 46.941044> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104683, -0.111013, -0.988290,
		-0.320150, -0.937088, 0.139173,
		-0.941566, 0.330970, 0.062556,
		31.643515, 34.752201, 46.959812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.882872, 34.041050, 46.651943>,  <32.302608, 34.520523, 46.916019>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.882872, 34.041050, 46.651943> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.684444, 34.384815, 46.602413>,  <31.565388, 34.591072, 46.572693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.684444, 34.384815, 46.602413>,  <31.882872, 34.041050, 46.651943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.684444, 34.384815, 46.602413> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040368, -0.119629, -0.991998,
		-0.867345, -0.497097, 0.024651,
		-0.496067, 0.859409, -0.123827,
		31.535624, 34.642639, 46.565266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.287685, 33.833591, 46.222542>,  <31.882872, 34.041050, 46.651943>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.287685, 33.833591, 46.222542> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.362881, 34.226425, 46.227753>,  <31.407997, 34.462124, 46.230881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.362881, 34.226425, 46.227753>,  <31.287685, 33.833591, 46.222542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.362881, 34.226425, 46.227753> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219857, -0.029147, -0.975097,
		-0.957248, 0.186171, -0.221397,
		0.187988, 0.982085, 0.013030,
		31.419277, 34.521049, 46.231663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.815483, 34.146763, 45.860107>,  <31.287685, 33.833591, 46.222542>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.815483, 34.146763, 45.860107> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.123652, 34.401440, 45.846947>,  <31.308552, 34.554245, 45.839050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.123652, 34.401440, 45.846947>,  <30.815483, 34.146763, 45.860107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.123652, 34.401440, 45.846947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158416, 0.141185, -0.977226,
		-0.617542, 0.758087, 0.209633,
		0.770419, 0.636688, -0.032905,
		31.354776, 34.592445, 45.837074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.565250, 34.898476, 45.671219>,  <30.815483, 34.146763, 45.860107>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.565250, 34.898476, 45.671219> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.946457, 34.820549, 45.578434>,  <31.175180, 34.773792, 45.522762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.946457, 34.820549, 45.578434>,  <30.565250, 34.898476, 45.671219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.946457, 34.820549, 45.578434> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184422, 0.234331, -0.954504,
		0.240308, 0.952437, 0.187393,
		0.953016, -0.194815, -0.231962,
		31.232363, 34.762104, 45.508846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<34.166782, 32.840588, 49.618393> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.426929, 33.121201, 49.501858>,  <34.583015, 33.289570, 49.431938>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.426929, 33.121201, 49.501858>,  <34.166782, 32.840588, 49.618393>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.426929, 33.121201, 49.501858> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125081, -0.477194, -0.869851,
		-0.749253, 0.529280, -0.398098,
		0.650365, 0.701533, -0.291336,
		34.622040, 33.331661, 49.414455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.104485, 32.958298, 48.900879>,  <34.166782, 32.840588, 49.618393>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.104485, 32.958298, 48.900879> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.470955, 33.098183, 48.979191>,  <34.690838, 33.182114, 49.026180>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.470955, 33.098183, 48.979191>,  <34.104485, 32.958298, 48.900879>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.470955, 33.098183, 48.979191> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323889, -0.358311, -0.875620,
		-0.236064, 0.865629, -0.441542,
		0.916171, 0.349713, 0.195783,
		34.745808, 33.203098, 49.037926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.333290, 33.349358, 48.291031>,  <34.104485, 32.958298, 48.900879>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.333290, 33.349358, 48.291031> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.647991, 33.216167, 48.498936>,  <34.836811, 33.136253, 48.623676>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.647991, 33.216167, 48.498936>,  <34.333290, 33.349358, 48.291031>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.647991, 33.216167, 48.498936> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335948, -0.475420, -0.813090,
		0.517839, 0.814313, -0.262178,
		0.786754, -0.332971, 0.519758,
		34.884018, 33.116276, 48.654861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.983768, 33.568951, 47.960323>,  <34.333290, 33.349358, 48.291031>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.983768, 33.568951, 47.960323> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.035942, 33.229630, 48.165604>,  <35.067245, 33.026035, 48.288773>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.035942, 33.229630, 48.165604>,  <34.983768, 33.568951, 47.960323>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.035942, 33.229630, 48.165604> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447249, -0.411617, -0.794065,
		0.884848, 0.333101, 0.325713,
		0.130435, -0.848301, 0.513197,
		35.075073, 32.975140, 48.319561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.654797, 33.495834, 47.895111>,  <34.983768, 33.568951, 47.960323>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.654797, 33.495834, 47.895111> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.526417, 33.135494, 48.012047>,  <35.449390, 32.919289, 48.082211>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.526417, 33.135494, 48.012047>,  <35.654797, 33.495834, 47.895111>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.526417, 33.135494, 48.012047> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452092, -0.416957, -0.788517,
		0.832230, -0.120905, 0.541087,
		-0.320946, -0.900849, 0.292344,
		35.430134, 32.865238, 48.099751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.053116, 33.062191, 47.579044>,  <35.654797, 33.495834, 47.895111>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.053116, 33.062191, 47.579044> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.752914, 32.811172, 47.661922>,  <35.572796, 32.660561, 47.711651>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.752914, 32.811172, 47.661922>,  <36.053116, 33.062191, 47.579044>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.752914, 32.811172, 47.661922> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260313, -0.568890, -0.780129,
		0.607443, -0.531550, 0.590311,
		-0.750500, -0.627550, 0.207199,
		35.527763, 32.622906, 47.724083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.305954, 32.420052, 47.563229>,  <36.053116, 33.062191, 47.579044>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.305954, 32.420052, 47.563229> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.916290, 32.362637, 47.493473>,  <35.682491, 32.328186, 47.451618>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.916290, 32.362637, 47.493473>,  <36.305954, 32.420052, 47.563229>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.916290, 32.362637, 47.493473> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225815, -0.602202, -0.765742,
		0.004894, -0.785334, 0.619053,
		-0.974158, -0.143539, -0.174393,
		35.624043, 32.319576, 47.441154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.262070, 31.734774, 47.303143>,  <36.305954, 32.420052, 47.563229>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.262070, 31.734774, 47.303143> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.899788, 31.885147, 47.224796>,  <35.682419, 31.975370, 47.177788>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.899788, 31.885147, 47.224796>,  <36.262070, 31.734774, 47.303143>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.899788, 31.885147, 47.224796> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009828, -0.443318, -0.896310,
		-0.423777, -0.813725, 0.397824,
		-0.905713, 0.375926, -0.195865,
		35.628075, 31.997927, 47.166035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.972485, 31.251699, 46.850704>,  <36.262070, 31.734774, 47.303143>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.972485, 31.251699, 46.850704> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.739124, 31.570238, 46.786865>,  <35.599110, 31.761362, 46.748562>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.739124, 31.570238, 46.786865>,  <35.972485, 31.251699, 46.850704>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.739124, 31.570238, 46.786865> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096767, -0.263261, -0.959859,
		-0.806399, -0.544538, 0.230647,
		-0.583401, 0.796349, -0.159600,
		35.564102, 31.809143, 46.738987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.335094, 30.973715, 46.526840>,  <35.972485, 31.251699, 46.850704>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.335094, 30.973715, 46.526840> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.319386, 31.362986, 46.436165>,  <35.309959, 31.596548, 46.381760>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.319386, 31.362986, 46.436165>,  <35.335094, 30.973715, 46.526840>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.319386, 31.362986, 46.436165> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161022, -0.230063, -0.959762,
		-0.986169, -0.001190, 0.165738,
		-0.039273, 0.973175, -0.226689,
		35.307602, 31.654938, 46.368156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.779247, 31.078335, 46.141338>,  <35.335094, 30.973715, 46.526840>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.779247, 31.078335, 46.141338> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.011963, 31.383972, 46.029850>,  <35.151592, 31.567354, 45.962955>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.011963, 31.383972, 46.029850>,  <34.779247, 31.078335, 46.141338>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.011963, 31.383972, 46.029850> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165457, -0.224339, -0.960363,
		-0.796335, 0.604843, -0.004093,
		0.581786, 0.764092, -0.278725,
		35.186501, 31.613199, 45.946232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.581989, 31.100176, 45.471645>,  <34.779247, 31.078335, 46.141338>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.581989, 31.100176, 45.471645> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.896172, 31.345638, 45.439434>,  <35.084682, 31.492916, 45.420109>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.896172, 31.345638, 45.439434>,  <34.581989, 31.100176, 45.471645>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.896172, 31.345638, 45.439434> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028015, -0.094719, -0.995110,
		-0.618282, 0.783871, -0.057206,
		0.785457, 0.613656, -0.080524,
		35.131809, 31.529736, 45.415276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.133518, 31.630510, 45.516922>,  <34.581989, 31.100176, 45.471645>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.133518, 31.630510, 45.516922> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.738598, 31.681698, 45.479259>,  <33.501648, 31.712410, 45.456661>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.738598, 31.681698, 45.479259>,  <34.133518, 31.630510, 45.516922>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.738598, 31.681698, 45.479259> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110130, -0.124055, 0.986145,
		0.114517, 0.983989, 0.136573,
		-0.987298, 0.127971, -0.094160,
		33.442410, 31.720089, 45.451012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.957043, 32.243191, 45.947372>,  <34.133518, 31.630510, 45.516922>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.957043, 32.243191, 45.947372> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.630817, 32.017162, 45.897480>,  <33.435081, 31.881546, 45.867546>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.630817, 32.017162, 45.897480>,  <33.957043, 32.243191, 45.947372>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.630817, 32.017162, 45.897480> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223512, 0.108783, 0.968612,
		-0.533765, 0.817840, -0.215019,
		-0.815560, -0.565070, -0.124733,
		33.386150, 31.847641, 45.860062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.397285, 32.507626, 46.390022>,  <33.957043, 32.243191, 45.947372>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.397285, 32.507626, 46.390022> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.240776, 32.146084, 46.320805>,  <33.146870, 31.929157, 46.279274>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.240776, 32.146084, 46.320805>,  <33.397285, 32.507626, 46.390022>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.240776, 32.146084, 46.320805> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276880, -0.063703, 0.958791,
		-0.877634, 0.423063, -0.225335,
		-0.391275, -0.903858, -0.173045,
		33.123394, 31.874926, 46.268890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.649487, 32.523727, 46.549095>,  <33.397285, 32.507626, 46.390022>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.649487, 32.523727, 46.549095> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.785793, 32.148514, 46.574268>,  <32.867577, 31.923386, 46.589375>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.785793, 32.148514, 46.574268>,  <32.649487, 32.523727, 46.549095>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.785793, 32.148514, 46.574268> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368948, -0.071857, 0.926668,
		-0.864727, -0.339003, -0.370573,
		0.340771, -0.938037, 0.062938,
		32.888023, 31.867104, 46.593151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.162857, 32.181118, 46.946606>,  <32.649487, 32.523727, 46.549095>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.162857, 32.181118, 46.946606> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.429062, 31.883331, 46.968037>,  <32.588783, 31.704660, 46.980896>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.429062, 31.883331, 46.968037>,  <32.162857, 32.181118, 46.946606>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.429062, 31.883331, 46.968037> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285105, -0.187216, 0.940035,
		-0.689792, -0.640877, -0.336844,
		0.665509, -0.744464, 0.053578,
		32.628716, 31.659992, 46.984112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.798073, 31.617128, 47.202412>,  <32.162857, 32.181118, 46.946606>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.798073, 31.617128, 47.202412> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.178894, 31.526426, 47.284557>,  <32.407387, 31.472006, 47.333843>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.178894, 31.526426, 47.284557>,  <31.798073, 31.617128, 47.202412>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.178894, 31.526426, 47.284557> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216602, -0.025561, 0.975925,
		-0.216048, -0.973616, -0.073451,
		0.952054, -0.226757, 0.205365,
		32.464512, 31.458399, 47.346169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.748737, 31.068739, 47.703217>,  <31.798073, 31.617128, 47.202412>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.748737, 31.068739, 47.703217> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.107365, 31.244350, 47.726620>,  <32.322540, 31.349716, 47.740662>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.107365, 31.244350, 47.726620>,  <31.748737, 31.068739, 47.703217>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.107365, 31.244350, 47.726620> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067590, 0.005075, 0.997700,
		0.437720, -0.898460, 0.034224,
		0.896567, 0.439027, 0.058506,
		32.376335, 31.376059, 47.744171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.203705, 30.697451, 48.141006>,  <31.748737, 31.068739, 47.703217>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.203705, 30.697451, 48.141006> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.329174, 31.077236, 48.136440>,  <32.404457, 31.305107, 48.133701>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.329174, 31.077236, 48.136440>,  <32.203705, 30.697451, 48.141006>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.329174, 31.077236, 48.136440> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028910, 0.021567, 0.999349,
		0.949091, -0.313140, 0.034214,
		0.313674, 0.949462, -0.011417,
		32.423275, 31.362074, 48.133015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.366882, 30.715017, 48.822075>,  <32.203705, 30.697451, 48.141006>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.366882, 30.715017, 48.822075> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.440781, 31.096096, 48.725540>,  <32.485119, 31.324743, 48.667618>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.440781, 31.096096, 48.725540>,  <32.366882, 30.715017, 48.822075>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.440781, 31.096096, 48.725540> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023359, 0.249750, 0.968028,
		0.982509, -0.173199, 0.068393,
		0.184742, 0.952695, -0.241336,
		32.496204, 31.381905, 48.653141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.887856, 30.931128, 49.327858>,  <32.366882, 30.715017, 48.822075>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.887856, 30.931128, 49.327858> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.725227, 31.261866, 49.172409>,  <32.627651, 31.460308, 49.079140>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.725227, 31.261866, 49.172409>,  <32.887856, 30.931128, 49.327858>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.725227, 31.261866, 49.172409> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108993, 0.466225, 0.877926,
		0.907095, 0.314580, -0.279673,
		-0.406569, 0.826845, -0.388624,
		32.603256, 31.509920, 49.055820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.386921, 31.534153, 49.625278>,  <32.887856, 30.931128, 49.327858>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.386921, 31.534153, 49.625278> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.016449, 31.648830, 49.527302>,  <32.794167, 31.717636, 49.468513>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.016449, 31.648830, 49.527302>,  <33.386921, 31.534153, 49.625278>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.016449, 31.648830, 49.527302> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094887, 0.451482, 0.887221,
		0.364947, 0.844969, -0.390950,
		-0.926180, 0.286692, -0.244944,
		32.738594, 31.734838, 49.453819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.405647, 32.200489, 49.878334>,  <33.386921, 31.534153, 49.625278>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.405647, 32.200489, 49.878334> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.034676, 32.061649, 49.822624>,  <32.812092, 31.978346, 49.789196>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.034676, 32.061649, 49.822624>,  <33.405647, 32.200489, 49.878334>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.034676, 32.061649, 49.822624> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264125, 0.344195, 0.900981,
		-0.264790, 0.872383, -0.410894,
		-0.927429, -0.347098, -0.139279,
		32.756447, 31.957520, 49.780842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.070576, 32.719986, 50.203621>,  <33.405647, 32.200489, 49.878334>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.070576, 32.719986, 50.203621> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.815601, 32.413761, 50.168762>,  <32.662617, 32.230026, 50.147846>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.815601, 32.413761, 50.168762>,  <33.070576, 32.719986, 50.203621>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.815601, 32.413761, 50.168762> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494750, 0.319972, 0.807985,
		-0.590680, 0.558149, -0.582723,
		-0.637432, -0.765563, -0.087143,
		32.624371, 32.184093, 50.142620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.415974, 33.034103, 50.308205>,  <33.070576, 32.719986, 50.203621>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.415974, 33.034103, 50.308205> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.390968, 32.642887, 50.387737>,  <32.375965, 32.408157, 50.435455>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.390968, 32.642887, 50.387737>,  <32.415974, 33.034103, 50.308205>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.390968, 32.642887, 50.387737> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382379, 0.207489, 0.900408,
		-0.921889, -0.019745, -0.386952,
		-0.062510, -0.978038, 0.198832,
		32.372215, 32.349476, 50.447388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.062862, 32.974693, 49.676785>,  <32.415974, 33.034103, 50.308205>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.062862, 32.974693, 49.676785> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.827417, 33.240509, 49.860924>,  <31.686150, 33.399998, 49.971409>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.827417, 33.240509, 49.860924>,  <32.062862, 32.974693, 49.676785>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.827417, 33.240509, 49.860924> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037251, 0.546544, -0.836602,
		-0.807557, -0.509582, -0.296948,
		-0.588612, 0.664542, 0.460347,
		31.650833, 33.439873, 49.999027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.435143, 33.195927, 49.272282>,  <32.062862, 32.974693, 49.676785>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.435143, 33.195927, 49.272282> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.528294, 33.493740, 49.522541>,  <31.584185, 33.672428, 49.672699>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.528294, 33.493740, 49.522541>,  <31.435143, 33.195927, 49.272282>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.528294, 33.493740, 49.522541> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170671, 0.664645, -0.727406,
		-0.957413, 0.062616, 0.281851,
		0.232879, 0.744531, 0.625653,
		31.598158, 33.717098, 49.710236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.940769, 33.724667, 49.171169>,  <31.435143, 33.195927, 49.272282>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.940769, 33.724667, 49.171169> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.288044, 33.883930, 49.289639>,  <31.496408, 33.979488, 49.360722>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.288044, 33.883930, 49.289639>,  <30.940769, 33.724667, 49.171169>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.288044, 33.883930, 49.289639> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032379, 0.641018, -0.766842,
		-0.495181, 0.656172, 0.569415,
		0.868186, 0.398163, 0.296174,
		31.548500, 34.003380, 49.378490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.782127, 34.409908, 49.209991>,  <30.940769, 33.724667, 49.171169>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.782127, 34.409908, 49.209991> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.180944, 34.384758, 49.192310>,  <31.420235, 34.369667, 49.181702>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.180944, 34.384758, 49.192310>,  <30.782127, 34.409908, 49.209991>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.180944, 34.384758, 49.192310> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004160, 0.618457, -0.785808,
		0.076748, 0.783300, 0.616889,
		0.997042, -0.062875, -0.044207,
		31.480057, 34.365894, 49.179047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.028906, 35.145508, 49.326267>,  <30.782127, 34.409908, 49.209991>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.028906, 35.145508, 49.326267> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.282270, 34.907669, 49.128181>,  <31.434290, 34.764965, 49.009331>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.282270, 34.907669, 49.128181>,  <31.028906, 35.145508, 49.326267>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.282270, 34.907669, 49.128181> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023767, 0.624719, -0.780488,
		0.773451, 0.506140, 0.381571,
		0.633411, -0.594600, -0.495219,
		31.472294, 34.729290, 48.979614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.276894, 35.532837, 48.836971>,  <31.028906, 35.145508, 49.326267>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.276894, 35.532837, 48.836971> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.390444, 35.179203, 48.688480>,  <31.458574, 34.967022, 48.599384>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.390444, 35.179203, 48.688480>,  <31.276894, 35.532837, 48.836971>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.390444, 35.179203, 48.688480> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071766, 0.405661, -0.911202,
		0.956172, 0.232027, 0.178605,
		0.283876, -0.884083, -0.371230,
		31.475607, 34.913979, 48.577110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.871651, 35.619003, 48.464874>,  <31.276894, 35.532837, 48.836971>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.871651, 35.619003, 48.464874> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.692604, 35.303066, 48.297169>,  <31.585176, 35.113503, 48.196545>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.692604, 35.303066, 48.297169>,  <31.871651, 35.619003, 48.464874>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.692604, 35.303066, 48.297169> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062296, 0.440175, -0.895749,
		0.892054, -0.427069, -0.147825,
		-0.447615, -0.789847, -0.419264,
		31.558319, 35.066113, 48.171391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.526661, 36.014812, 48.254078>,  <31.871651, 35.619003, 48.464874>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.526661, 36.014812, 48.254078> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.657265, 36.392712, 48.265724>,  <32.735626, 36.619450, 48.272713>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.657265, 36.392712, 48.265724>,  <32.526661, 36.014812, 48.254078>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.657265, 36.392712, 48.265724> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083148, -0.059394, 0.994766,
		0.941528, -0.322383, -0.097947,
		0.326513, 0.944744, 0.029116,
		32.755219, 36.676136, 48.274460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.144829, 36.016453, 48.524712>,  <32.526661, 36.014812, 48.254078>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.144829, 36.016453, 48.524712> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.015053, 36.382999, 48.618530>,  <32.937187, 36.602928, 48.674824>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.015053, 36.382999, 48.618530>,  <33.144829, 36.016453, 48.524712>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.015053, 36.382999, 48.618530> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261556, -0.151383, 0.953243,
		0.909025, 0.370618, -0.190566,
		-0.324440, 0.916365, 0.234548,
		32.917721, 36.657909, 48.688896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.497730, 36.257954, 49.170227>,  <33.144829, 36.016453, 48.524712>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.497730, 36.257954, 49.170227> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.174953, 36.490761, 49.130028>,  <32.981289, 36.630447, 49.105907>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.174953, 36.490761, 49.130028>,  <33.497730, 36.257954, 49.170227>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.174953, 36.490761, 49.130028> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019904, 0.143253, 0.989486,
		0.590297, 0.800457, -0.104012,
		-0.806941, 0.582021, -0.100494,
		32.932873, 36.665367, 49.099880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.602379, 36.746853, 49.625263>,  <33.497730, 36.257954, 49.170227>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.602379, 36.746853, 49.625263> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.213676, 36.780384, 49.537018>,  <32.980457, 36.800503, 49.484070>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.213676, 36.780384, 49.537018>,  <33.602379, 36.746853, 49.625263>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.213676, 36.780384, 49.537018> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220006, 0.016575, 0.975358,
		0.085417, 0.996343, 0.002336,
		-0.971752, 0.083826, -0.220617,
		32.922150, 36.805531, 49.470833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.296341, 37.246185, 50.063374>,  <33.602379, 36.746853, 49.625263>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.296341, 37.246185, 50.063374> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.982578, 37.028481, 49.944386>,  <32.794323, 36.897858, 49.872993>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.982578, 37.028481, 49.944386>,  <33.296341, 37.246185, 50.063374>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.982578, 37.028481, 49.944386> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314993, -0.063598, 0.946961,
		-0.534311, 0.836503, -0.121552,
		-0.784405, -0.544260, -0.297473,
		32.747257, 36.865204, 49.855145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.604679, 37.537483, 50.450710>,  <33.296341, 37.246185, 50.063374>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.604679, 37.537483, 50.450710> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.549973, 37.164192, 50.317810>,  <32.517147, 36.940220, 50.238071>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.549973, 37.164192, 50.317810>,  <32.604679, 37.537483, 50.450710>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.549973, 37.164192, 50.317810> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338875, -0.271090, 0.900929,
		-0.930838, 0.235807, -0.279170,
		-0.136766, -0.933223, -0.332250,
		32.508942, 36.884224, 50.218136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.981298, 37.284950, 50.762016>,  <32.604679, 37.537483, 50.450710>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.981298, 37.284950, 50.762016> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.137150, 36.930553, 50.661449>,  <32.230659, 36.717915, 50.601109>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.137150, 36.930553, 50.661449>,  <31.981298, 37.284950, 50.762016>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.137150, 36.930553, 50.661449> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257652, -0.366949, 0.893848,
		-0.884198, -0.283489, -0.371251,
		0.389627, -0.885992, -0.251414,
		32.254040, 36.664757, 50.586025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.554928, 36.853291, 51.064888>,  <31.981298, 37.284950, 50.762016>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.554928, 36.853291, 51.064888> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.877716, 36.625961, 51.000626>,  <32.071388, 36.489563, 50.962067>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.877716, 36.625961, 51.000626>,  <31.554928, 36.853291, 51.064888>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.877716, 36.625961, 51.000626> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157546, -0.469325, 0.868858,
		-0.569191, -0.675831, -0.468268,
		0.806970, -0.568320, -0.160661,
		32.119808, 36.455467, 50.952427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.409763, 36.265469, 51.383060>,  <31.554928, 36.853291, 51.064888>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.409763, 36.265469, 51.383060> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.805769, 36.224857, 51.343948>,  <32.043373, 36.200489, 51.320480>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.805769, 36.224857, 51.343948>,  <31.409763, 36.265469, 51.383060>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.805769, 36.224857, 51.343948> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043487, -0.439854, 0.897016,
		-0.134081, -0.892312, -0.431047,
		0.990016, -0.101528, -0.097780,
		32.102776, 36.194397, 51.314613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.371971, 36.054272, 35.908703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.760132, 35.964752, 35.872429>,  <35.993031, 35.911041, 35.850662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.760132, 35.964752, 35.872429>,  <35.371971, 36.054272, 35.908703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.760132, 35.964752, 35.872429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005056, -0.394298, 0.918969,
		-0.241425, -0.891314, -0.383761,
		0.970406, -0.223803, -0.090687,
		36.051254, 35.897610, 35.845222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.386017, 35.407314, 36.174862>,  <35.371971, 36.054272, 35.908703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.386017, 35.407314, 36.174862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.761333, 35.545494, 36.181484>,  <35.986523, 35.628403, 36.185459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.761333, 35.545494, 36.181484>,  <35.386017, 35.407314, 36.174862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.761333, 35.545494, 36.181484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060784, -0.211853, 0.975410,
		0.340459, -0.914213, -0.219777,
		0.938293, 0.345446, 0.016558,
		36.042820, 35.649128, 36.186451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.873741, 34.928970, 36.488525>,  <35.386017, 35.407314, 36.174862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.873741, 34.928970, 36.488525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.046383, 35.282719, 36.559639>,  <36.149967, 35.494968, 36.602306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.046383, 35.282719, 36.559639>,  <35.873741, 34.928970, 36.488525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.046383, 35.282719, 36.559639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016618, -0.189260, 0.981786,
		0.901908, -0.426701, -0.066990,
		0.431608, 0.884368, 0.177786,
		36.175865, 35.548031, 36.612976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.300331, 34.815605, 37.150047>,  <35.873741, 34.928970, 36.488525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.300331, 34.815605, 37.150047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.295979, 35.212944, 37.104183>,  <36.293369, 35.451347, 37.076664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.295979, 35.212944, 37.104183>,  <36.300331, 34.815605, 37.150047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.295979, 35.212944, 37.104183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175285, 0.110995, 0.978241,
		0.984458, 0.030739, 0.172911,
		-0.010878, 0.993345, -0.114658,
		36.292717, 35.510948, 37.069786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.814346, 35.126995, 37.597404>,  <36.300331, 34.815605, 37.150047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.814346, 35.126995, 37.597404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.516548, 35.370857, 37.488556>,  <36.337872, 35.517174, 37.423248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.516548, 35.370857, 37.488556>,  <36.814346, 35.126995, 37.597404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.516548, 35.370857, 37.488556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289702, 0.072220, 0.954388,
		0.601500, 0.789370, 0.122851,
		-0.744493, 0.609655, -0.272123,
		36.293201, 35.553753, 37.406918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.827404, 35.586044, 38.141319>,  <36.814346, 35.126995, 37.597404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.827404, 35.586044, 38.141319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.480770, 35.674351, 37.962299>,  <36.272789, 35.727337, 37.854889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.480770, 35.674351, 37.962299>,  <36.827404, 35.586044, 38.141319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.480770, 35.674351, 37.962299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417967, 0.168898, 0.892624,
		0.272654, 0.960590, -0.054089,
		-0.866581, 0.220770, -0.447546,
		36.220795, 35.740582, 37.828037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.651108, 36.238712, 38.327362>,  <36.827404, 35.586044, 38.141319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.651108, 36.238712, 38.327362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.280289, 36.126396, 38.227978>,  <36.057796, 36.059006, 38.168346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.280289, 36.126396, 38.227978>,  <36.651108, 36.238712, 38.327362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.280289, 36.126396, 38.227978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363534, 0.510974, 0.778941,
		-0.091759, 0.812443, -0.575775,
		-0.927051, -0.280788, -0.248464,
		36.002174, 36.042160, 38.153439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.200153, 36.789898, 38.509243>,  <36.651108, 36.238712, 38.327362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.200153, 36.789898, 38.509243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.936417, 36.489681, 38.491516>,  <35.778175, 36.309551, 38.480881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.936417, 36.489681, 38.491516>,  <36.200153, 36.789898, 38.509243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.936417, 36.489681, 38.491516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510406, 0.403551, 0.759364,
		-0.552050, 0.523295, -0.649156,
		-0.659339, -0.750539, -0.044313,
		35.738613, 36.264519, 38.478222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.566429, 37.123154, 38.644478>,  <36.200153, 36.789898, 38.509243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.566429, 37.123154, 38.644478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.479633, 36.741306, 38.726082>,  <35.427555, 36.512199, 38.775043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.479633, 36.741306, 38.726082>,  <35.566429, 37.123154, 38.644478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.479633, 36.741306, 38.726082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518673, 0.289794, 0.804362,
		-0.826979, 0.068721, -0.558017,
		-0.216987, -0.954619, 0.204010,
		35.414536, 36.454922, 38.787285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846516, 37.192394, 38.765942>,  <35.566429, 37.123154, 38.644478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.846516, 37.192394, 38.765942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.963581, 36.838806, 38.911793>,  <35.033821, 36.626656, 38.999302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.963581, 36.838806, 38.911793>,  <34.846516, 37.192394, 38.765942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.963581, 36.838806, 38.911793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602587, 0.125583, 0.788110,
		-0.742454, -0.450370, -0.495913,
		0.292663, -0.883966, 0.364626,
		35.051380, 36.573616, 39.021179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.259789, 36.880054, 39.027695>,  <34.846516, 37.192394, 38.765942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.259789, 36.880054, 39.027695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.557388, 36.688732, 39.214325>,  <34.735947, 36.573940, 39.326305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.557388, 36.688732, 39.214325>,  <34.259789, 36.880054, 39.027695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.557388, 36.688732, 39.214325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499126, 0.066419, 0.863980,
		-0.444234, -0.875680, -0.189318,
		0.743996, -0.478302, 0.466580,
		34.780586, 36.545242, 39.354298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.019199, 36.320812, 39.326973>,  <34.259789, 36.880054, 39.027695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.019199, 36.320812, 39.326973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.356331, 36.380421, 39.533829>,  <34.558609, 36.416183, 39.657944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.356331, 36.380421, 39.533829>,  <34.019199, 36.320812, 39.326973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.356331, 36.380421, 39.533829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512038, -0.073846, 0.855783,
		0.165718, -0.986073, 0.014065,
		0.842826, 0.149021, 0.517144,
		34.609180, 36.425125, 39.688972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.461525, 35.770454, 39.566948>,  <34.019199, 36.320812, 39.326973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.461525, 35.770454, 39.566948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.061958, 35.781723, 39.581806>,  <32.822220, 35.788483, 39.590721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.061958, 35.781723, 39.581806>,  <33.461525, 35.770454, 39.566948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.061958, 35.781723, 39.581806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045720, -0.436195, -0.898690,
		-0.009116, -0.899411, 0.437009,
		-0.998913, 0.028172, 0.037145,
		32.762283, 35.790176, 39.592949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.179623, 35.178276, 39.366608>,  <33.461525, 35.770454, 39.566948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.179623, 35.178276, 39.366608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.853004, 35.404491, 39.320271>,  <32.657032, 35.540218, 39.292469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.853004, 35.404491, 39.320271>,  <33.179623, 35.178276, 39.366608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.853004, 35.404491, 39.320271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103176, -0.340410, -0.934599,
		-0.567982, -0.751193, 0.336311,
		-0.816548, 0.565535, -0.115842,
		32.608040, 35.574150, 39.285519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.779758, 34.698761, 38.960247>,  <33.179623, 35.178276, 39.366608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.779758, 34.698761, 38.960247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.649647, 35.075523, 38.926777>,  <32.571579, 35.301582, 38.906696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.649647, 35.075523, 38.926777>,  <32.779758, 34.698761, 38.960247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.649647, 35.075523, 38.926777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279582, -0.180324, -0.943036,
		-0.903343, -0.283354, 0.321997,
		-0.325277, 0.941909, -0.083674,
		32.552063, 35.358097, 38.901676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.289356, 34.548649, 38.565090>,  <32.779758, 34.698761, 38.960247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.289356, 34.548649, 38.565090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.348003, 34.942337, 38.525463>,  <32.383190, 35.178551, 38.501686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.348003, 34.942337, 38.525463>,  <32.289356, 34.548649, 38.565090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.348003, 34.942337, 38.525463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289024, -0.053154, -0.955845,
		-0.946028, 0.168772, 0.276671,
		0.146614, 0.984221, -0.099064,
		32.391987, 35.237602, 38.495743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.760246, 34.789589, 38.207634>,  <32.289356, 34.548649, 38.565090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.760246, 34.789589, 38.207634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.018822, 35.086182, 38.135712>,  <32.173965, 35.264137, 38.092560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.018822, 35.086182, 38.135712>,  <31.760246, 34.789589, 38.207634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.018822, 35.086182, 38.135712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208876, -0.054674, -0.976413,
		-0.733819, 0.668746, 0.119533,
		0.646437, 0.741478, -0.179806,
		32.212753, 35.308624, 38.081768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.444933, 35.059528, 37.743492>,  <31.760246, 34.789589, 38.207634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.444933, 35.059528, 37.743492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.813597, 35.202732, 37.683662>,  <32.034794, 35.288654, 37.647766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.813597, 35.202732, 37.683662>,  <31.444933, 35.059528, 37.743492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.813597, 35.202732, 37.683662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194570, 0.092935, -0.976476,
		-0.335685, 0.929082, 0.155312,
		0.921660, 0.358008, -0.149574,
		32.090096, 35.310135, 37.638790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.325558, 35.599472, 37.312832>,  <31.444933, 35.059528, 37.743492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.325558, 35.599472, 37.312832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.716967, 35.539303, 37.256447>,  <31.951811, 35.503201, 37.222618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.716967, 35.539303, 37.256447>,  <31.325558, 35.599472, 37.312832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.716967, 35.539303, 37.256447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175179, -0.246291, -0.953233,
		0.108672, 0.957451, -0.267352,
		0.978521, -0.150424, -0.140961,
		32.010521, 35.494175, 37.214157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.470959, 36.023346, 36.836132>,  <31.325558, 35.599472, 37.312832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.470959, 36.023346, 36.836132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.718594, 35.709274, 36.830257>,  <31.867174, 35.520832, 36.826733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.718594, 35.709274, 36.830257>,  <31.470959, 36.023346, 36.836132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.718594, 35.709274, 36.830257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189671, -0.131355, -0.973022,
		0.762072, 0.605172, -0.230247,
		0.619089, -0.785183, -0.014682,
		31.904320, 35.473721, 36.825851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.735703, 35.986534, 36.172981>,  <31.470959, 36.023346, 36.836132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.735703, 35.986534, 36.172981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.841827, 35.626705, 36.311764>,  <31.905502, 35.410809, 36.395035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.841827, 35.626705, 36.311764>,  <31.735703, 35.986534, 36.172981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.841827, 35.626705, 36.311764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317290, -0.421273, -0.849621,
		0.910459, 0.115329, -0.397194,
		0.265313, -0.899571, 0.346959,
		31.921421, 35.356834, 36.415852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.156471, 35.804230, 35.743530>,  <31.735703, 35.986534, 36.172981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.156471, 35.804230, 35.743530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.038788, 35.450809, 35.889282>,  <31.968180, 35.238758, 35.976734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.038788, 35.450809, 35.889282>,  <32.156471, 35.804230, 35.743530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.038788, 35.450809, 35.889282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148785, -0.334266, -0.930660,
		0.944091, -0.328019, -0.033118,
		-0.294204, -0.883555, 0.364382,
		31.950527, 35.185741, 35.998596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.502388, 35.295284, 35.304802>,  <32.156471, 35.804230, 35.743530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.502388, 35.295284, 35.304802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.174019, 35.127747, 35.460056>,  <31.976997, 35.027222, 35.553211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.174019, 35.127747, 35.460056>,  <32.502388, 35.295284, 35.304802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.174019, 35.127747, 35.460056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282813, -0.292278, -0.913559,
		0.496087, -0.859732, 0.121482,
		-0.820923, -0.418848, 0.388138,
		31.927742, 35.002090, 35.576496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.349396, 34.701828, 34.879547>,  <32.502388, 35.295284, 35.304802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.349396, 34.701828, 34.879547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.006821, 34.708633, 35.085938>,  <31.801275, 34.712715, 35.209770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.006821, 34.708633, 35.085938>,  <32.349396, 34.701828, 34.879547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.006821, 34.708633, 35.085938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492388, -0.327280, -0.806500,
		0.155148, -0.944774, 0.288671,
		-0.856436, 0.017011, 0.515972,
		31.749889, 34.713737, 35.240730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.048859, 34.011261, 34.806831>,  <32.349396, 34.701828, 34.879547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.048859, 34.011261, 34.806831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.751129, 34.261776, 34.899559>,  <31.572491, 34.412086, 34.955196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.751129, 34.261776, 34.899559>,  <32.048859, 34.011261, 34.806831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.751129, 34.261776, 34.899559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598101, -0.470755, -0.648586,
		-0.297068, -0.621415, 0.724979,
		-0.744329, 0.626285, 0.231823,
		31.527830, 34.449661, 34.969105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.355762, 33.717880, 34.732498>,  <32.048859, 34.011261, 34.806831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.355762, 33.717880, 34.732498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.237545, 34.097172, 34.686012>,  <31.166615, 34.324749, 34.658119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.237545, 34.097172, 34.686012>,  <31.355762, 33.717880, 34.732498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.237545, 34.097172, 34.686012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678999, -0.294073, -0.672668,
		-0.672022, -0.119892, 0.730761,
		-0.295545, 0.948234, -0.116217,
		31.148882, 34.381641, 34.651146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.847668, 33.086643, 34.938469>,  <31.355762, 33.717880, 34.732498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.847668, 33.086643, 34.938469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.547598, 32.828060, 34.882866>,  <31.367556, 32.672909, 34.849506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.547598, 32.828060, 34.882866>,  <31.847668, 33.086643, 34.938469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.547598, 32.828060, 34.882866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507442, 0.697615, -0.505803,
		0.423954, -0.308904, -0.851376,
		-0.750177, -0.646461, -0.139005,
		31.322544, 32.634121, 34.841164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.614521, 33.178787, 35.026138>,  <31.847668, 33.086643, 34.938469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.614521, 33.178787, 35.026138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.947613, 32.972095, 34.946590>,  <33.147469, 32.848080, 34.898861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.947613, 32.972095, 34.946590>,  <32.614521, 33.178787, 35.026138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.947613, 32.972095, 34.946590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083787, -0.237446, 0.967780,
		-0.547298, -0.822566, -0.154434,
		0.832733, -0.516725, -0.198874,
		33.197433, 32.817078, 34.886929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.579281, 32.505970, 35.292591>,  <32.614521, 33.178787, 35.026138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.579281, 32.505970, 35.292591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.954414, 32.644253, 35.304901>,  <33.179497, 32.727222, 35.312286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.954414, 32.644253, 35.304901>,  <32.579281, 32.505970, 35.292591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.954414, 32.644253, 35.304901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067840, -0.269543, 0.960596,
		0.340381, -0.898795, -0.276240,
		0.937837, 0.345709, 0.030773,
		33.235767, 32.747967, 35.314133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.872322, 31.961445, 35.484093>,  <32.579281, 32.505970, 35.292591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.872322, 31.961445, 35.484093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.078220, 32.285397, 35.596619>,  <33.201759, 32.479767, 35.664135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.078220, 32.285397, 35.596619>,  <32.872322, 31.961445, 35.484093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.078220, 32.285397, 35.596619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109369, -0.263410, 0.958464,
		0.850340, -0.524130, -0.047013,
		0.514744, 0.809878, 0.281312,
		33.232643, 32.528358, 35.681011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.341278, 31.663824, 35.951107>,  <32.872322, 31.961445, 35.484093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.341278, 31.663824, 35.951107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.310719, 32.058239, 36.010300>,  <33.292381, 32.294888, 36.045815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.310719, 32.058239, 36.010300>,  <33.341278, 31.663824, 35.951107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.310719, 32.058239, 36.010300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216583, -0.161280, 0.962850,
		0.973270, 0.041513, 0.225880,
		-0.076400, 0.986035, 0.147978,
		33.287800, 32.354050, 36.054691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.380924, 31.702593, 36.697289>,  <33.341278, 31.663824, 35.951107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.380924, 31.702593, 36.697289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.279026, 32.073982, 36.589184>,  <33.217888, 32.296818, 36.524323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.279026, 32.073982, 36.589184>,  <33.380924, 31.702593, 36.697289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.279026, 32.073982, 36.589184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070084, 0.296474, 0.952466,
		0.964465, 0.223696, -0.140597,
		-0.254747, 0.928473, -0.270261,
		33.202602, 32.352524, 36.508106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.905670, 32.189293, 36.939629>,  <33.380924, 31.702593, 36.697289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.905670, 32.189293, 36.939629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.540024, 32.346432, 36.899479>,  <33.320637, 32.440716, 36.875389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.540024, 32.346432, 36.899479>,  <33.905670, 32.189293, 36.939629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.540024, 32.346432, 36.899479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027820, 0.186198, 0.982118,
		0.404508, 0.900558, -0.159277,
		-0.914111, 0.392844, -0.100372,
		33.265789, 32.464283, 36.869366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.940426, 32.805676, 37.333591>,  <33.905670, 32.189293, 36.939629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.940426, 32.805676, 37.333591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.548882, 32.742237, 37.281921>,  <33.313957, 32.704174, 37.250919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.548882, 32.742237, 37.281921>,  <33.940426, 32.805676, 37.333591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.548882, 32.742237, 37.281921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173409, 0.308505, 0.935283,
		-0.108483, 0.937908, -0.329484,
		-0.978857, -0.158598, -0.129174,
		33.255226, 32.694656, 37.243168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.737778, 33.376499, 37.589027>,  <33.940426, 32.805676, 37.333591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.737778, 33.376499, 37.589027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.390018, 33.179878, 37.609127>,  <33.181362, 33.061905, 37.621185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.390018, 33.179878, 37.609127>,  <33.737778, 33.376499, 37.589027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.390018, 33.179878, 37.609127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070469, 0.224002, 0.972038,
		-0.489060, 0.841547, -0.229387,
		-0.869399, -0.491550, 0.050247,
		33.129200, 33.032413, 37.624203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.197845, 33.839371, 37.839775>,  <33.737778, 33.376499, 37.589027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.197845, 33.839371, 37.839775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.045837, 33.475033, 37.904213>,  <32.954632, 33.256432, 37.942875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.045837, 33.475033, 37.904213>,  <33.197845, 33.839371, 37.839775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.045837, 33.475033, 37.904213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189140, 0.247002, 0.950377,
		-0.905433, 0.330694, -0.266143,
		-0.380022, -0.910841, 0.161096,
		32.931831, 33.201782, 37.952541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.560135, 33.963982, 38.269993>,  <33.197845, 33.839371, 37.839775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.560135, 33.963982, 38.269993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.676109, 33.583797, 38.314827>,  <32.745693, 33.355686, 38.341728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.676109, 33.583797, 38.314827>,  <32.560135, 33.963982, 38.269993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.676109, 33.583797, 38.314827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006041, 0.115295, 0.993313,
		-0.957028, -0.288670, 0.027686,
		0.289932, -0.950461, 0.112084,
		32.763088, 33.298660, 38.348454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.120270, 33.701183, 38.798386>,  <32.560135, 33.963982, 38.269993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.120270, 33.701183, 38.798386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.404182, 33.420284, 38.776253>,  <32.574528, 33.251743, 38.762974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.404182, 33.420284, 38.776253>,  <32.120270, 33.701183, 38.798386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.404182, 33.420284, 38.776253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150054, -0.227471, 0.962154,
		-0.688257, -0.674614, -0.266829,
		0.709779, -0.702248, -0.055330,
		32.617115, 33.209610, 38.759655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.899725, 33.186134, 39.191578>,  <32.120270, 33.701183, 38.798386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.899725, 33.186134, 39.191578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.281750, 33.075386, 39.149239>,  <32.510963, 33.008938, 39.123837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.281750, 33.075386, 39.149239>,  <31.899725, 33.186134, 39.191578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.281750, 33.075386, 39.149239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025115, -0.431396, 0.901813,
		-0.295345, -0.858628, -0.418963,
		0.955061, -0.276868, -0.105846,
		32.568268, 32.992325, 39.117485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.866966, 32.587070, 39.439983>,  <31.899725, 33.186134, 39.191578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.866966, 32.587070, 39.439983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.227707, 32.757870, 39.466320>,  <32.444153, 32.860348, 39.482121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.227707, 32.757870, 39.466320>,  <31.866966, 32.587070, 39.439983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.227707, 32.757870, 39.466320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056437, -0.267513, 0.961900,
		0.428340, -0.863777, -0.265356,
		0.901854, 0.426996, 0.065838,
		32.498264, 32.885967, 39.486073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.256023, 32.082973, 39.851048>,  <31.866966, 32.587070, 39.439983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.256023, 32.082973, 39.851048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.438988, 32.435127, 39.901161>,  <32.548767, 32.646420, 39.931229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.438988, 32.435127, 39.901161>,  <32.256023, 32.082973, 39.851048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.438988, 32.435127, 39.901161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022307, -0.152200, 0.988098,
		0.888976, -0.449172, -0.089257,
		0.457411, 0.880386, 0.125283,
		32.576210, 32.699242, 39.938747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.860798, 31.856871, 40.263470>,  <32.256023, 32.082973, 39.851048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.860798, 31.856871, 40.263470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.827560, 32.249836, 40.330353>,  <32.807617, 32.485615, 40.370483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.827560, 32.249836, 40.330353>,  <32.860798, 31.856871, 40.263470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.827560, 32.249836, 40.330353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198588, -0.148102, 0.968828,
		0.976554, 0.113711, -0.182788,
		-0.083095, 0.982413, 0.167211,
		32.802631, 32.544559, 40.380516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.424278, 31.970768, 40.760578>,  <32.860798, 31.856871, 40.263470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.424278, 31.970768, 40.760578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.214504, 32.308743, 40.802620>,  <33.088638, 32.511528, 40.827847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.214504, 32.308743, 40.802620>,  <33.424278, 31.970768, 40.760578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.214504, 32.308743, 40.802620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251408, 0.035729, 0.967221,
		0.813487, 0.533669, -0.231162,
		-0.524435, 0.844938, 0.105104,
		33.057175, 32.562225, 40.834152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.855167, 32.406631, 41.090755>,  <33.424278, 31.970768, 40.760578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.855167, 32.406631, 41.090755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.486225, 32.550594, 41.146938>,  <33.264862, 32.636974, 41.180649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.486225, 32.550594, 41.146938>,  <33.855167, 32.406631, 41.090755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.486225, 32.550594, 41.146938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201448, 0.137815, 0.969755,
		0.329669, 0.922752, -0.199618,
		-0.922354, 0.359911, 0.140454,
		33.209518, 32.658569, 41.189075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.904682, 32.982662, 41.557110>,  <33.855167, 32.406631, 41.090755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.904682, 32.982662, 41.557110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.517422, 32.886513, 41.585110>,  <33.285065, 32.828823, 41.601910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.517422, 32.886513, 41.585110>,  <33.904682, 32.982662, 41.557110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.517422, 32.886513, 41.585110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048456, 0.094383, 0.994356,
		-0.245621, 0.966082, -0.079729,
		-0.968154, -0.240371, 0.069995,
		33.226974, 32.814400, 41.606110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.620312, 33.354881, 42.076626>,  <33.904682, 32.982662, 41.557110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.620312, 33.354881, 42.076626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.333248, 33.077438, 42.051743>,  <33.161011, 32.910973, 42.036812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.333248, 33.077438, 42.051743>,  <33.620312, 33.354881, 42.076626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.333248, 33.077438, 42.051743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017570, -0.107333, 0.994068,
		-0.696174, 0.712308, 0.089215,
		-0.717658, -0.693612, -0.062207,
		33.117950, 32.869354, 42.033081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.308800, 33.492916, 42.654854>,  <33.620312, 33.354881, 42.076626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.308800, 33.492916, 42.654854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.168797, 33.129452, 42.563793>,  <33.084793, 32.911373, 42.509155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.168797, 33.129452, 42.563793>,  <33.308800, 33.492916, 42.654854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.168797, 33.129452, 42.563793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071098, -0.268092, 0.960766,
		-0.934044, 0.320093, 0.158439,
		-0.350011, -0.908662, -0.227651,
		33.063793, 32.856853, 42.495499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.646210, 33.379505, 42.974800>,  <33.308800, 33.492916, 42.654854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.646210, 33.379505, 42.974800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.823212, 33.027370, 42.906452>,  <32.929413, 32.816090, 42.865444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.823212, 33.027370, 42.906452>,  <32.646210, 33.379505, 42.974800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.823212, 33.027370, 42.906452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070053, -0.223891, 0.972093,
		-0.894027, -0.418184, -0.160743,
		0.442503, -0.880338, -0.170869,
		32.955963, 32.763268, 42.855190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.188179, 32.860607, 43.185974>,  <32.646210, 33.379505, 42.974800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.188179, 32.860607, 43.185974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.550728, 32.693314, 43.162086>,  <32.768257, 32.592937, 43.147755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.550728, 32.693314, 43.162086>,  <32.188179, 32.860607, 43.185974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.550728, 32.693314, 43.162086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079394, -0.307460, 0.948243,
		-0.414953, -0.854720, -0.311879,
		0.906372, -0.418238, -0.059722,
		32.822639, 32.567841, 43.144169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.089520, 32.270596, 43.418522>,  <32.188179, 32.860607, 43.185974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.089520, 32.270596, 43.418522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.483337, 32.280903, 43.487816>,  <32.719627, 32.287086, 43.529392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.483337, 32.280903, 43.487816>,  <32.089520, 32.270596, 43.418522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.483337, 32.280903, 43.487816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147598, -0.410403, 0.899880,
		0.094284, -0.911540, -0.400256,
		0.984543, 0.025767, 0.173236,
		32.778702, 32.288631, 43.539787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.185081, 31.668552, 43.847805>,  <32.089520, 32.270596, 43.418522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.185081, 31.668552, 43.847805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.552162, 31.825420, 43.873165>,  <32.772411, 31.919540, 43.888382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.552162, 31.825420, 43.873165>,  <32.185081, 31.668552, 43.847805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.552162, 31.825420, 43.873165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126365, -0.439482, 0.889319,
		0.376628, -0.808121, -0.452871,
		0.917706, 0.392169, 0.063403,
		32.827473, 31.943071, 43.892185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.639034, 31.094936, 44.121052>,  <32.185081, 31.668552, 43.847805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.639034, 31.094936, 44.121052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816372, 31.445532, 44.196117>,  <32.922775, 31.655890, 44.241158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816372, 31.445532, 44.196117>,  <32.639034, 31.094936, 44.121052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.816372, 31.445532, 44.196117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400612, -0.381048, 0.833254,
		0.801847, -0.294234, -0.520066,
		0.443341, 0.876487, 0.187668,
		32.949375, 31.708477, 44.252419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.255630, 30.916880, 44.474018>,  <32.639034, 31.094936, 44.121052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.255630, 30.916880, 44.474018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.204990, 31.305811, 44.552559>,  <33.174606, 31.539169, 44.599686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.204990, 31.305811, 44.552559>,  <33.255630, 30.916880, 44.474018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.204990, 31.305811, 44.552559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289266, -0.153158, 0.944917,
		0.948841, 0.176422, -0.261871,
		-0.126596, 0.972326, 0.196356,
		33.167011, 31.597509, 44.611465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.863213, 31.211891, 44.790024>,  <33.255630, 30.916880, 44.474018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.863213, 31.211891, 44.790024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.564415, 31.441774, 44.923714>,  <33.385136, 31.579704, 45.003929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.564415, 31.441774, 44.923714>,  <33.863213, 31.211891, 44.790024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.564415, 31.441774, 44.923714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245759, -0.228412, 0.942035,
		0.617735, 0.785837, 0.029383,
		-0.746998, 0.574707, 0.334225,
		33.340317, 31.614187, 45.023979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.450947, 31.627342, 44.833591>,  <33.863213, 31.211891, 44.790024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.450947, 31.627342, 44.833591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.840252, 31.599134, 44.921036>,  <35.073833, 31.582211, 44.973503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.840252, 31.599134, 44.921036>,  <34.450947, 31.627342, 44.833591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.840252, 31.599134, 44.921036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197480, -0.229217, -0.953132,
		0.117324, 0.970817, -0.209162,
		0.973261, -0.070520, 0.218609,
		35.132229, 31.577978, 44.986618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.720005, 31.968382, 44.308842>,  <34.450947, 31.627342, 44.833591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.720005, 31.968382, 44.308842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.004784, 31.734924, 44.465042>,  <35.175652, 31.594849, 44.558762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.004784, 31.734924, 44.465042>,  <34.720005, 31.968382, 44.308842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.004784, 31.734924, 44.465042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238294, -0.322290, -0.916158,
		0.660565, 0.745310, -0.090375,
		0.711948, -0.583646, 0.390496,
		35.218369, 31.559830, 44.582191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.332172, 32.101318, 43.949272>,  <34.720005, 31.968382, 44.308842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.332172, 32.101318, 43.949272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.419796, 31.740835, 44.098846>,  <35.472370, 31.524544, 44.188591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.419796, 31.740835, 44.098846>,  <35.332172, 32.101318, 43.949272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.419796, 31.740835, 44.098846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298178, -0.303081, -0.905114,
		0.929034, 0.309773, 0.202330,
		0.219058, -0.901212, 0.373940,
		35.485512, 31.470472, 44.211029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.110680, 31.930429, 43.861416>,  <35.332172, 32.101318, 43.949272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.110680, 31.930429, 43.861416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.907814, 31.589464, 43.912289>,  <35.786095, 31.384884, 43.942810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.907814, 31.589464, 43.912289>,  <36.110680, 31.930429, 43.861416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.907814, 31.589464, 43.912289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387227, -0.357203, -0.849977,
		0.769962, -0.381830, 0.511238,
		-0.507163, -0.852415, 0.127177,
		35.755665, 31.333740, 43.950443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.528011, 31.557436, 43.518570>,  <36.110680, 31.930429, 43.861416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.528011, 31.557436, 43.518570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.197720, 31.335369, 43.558491>,  <35.999542, 31.202129, 43.582443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.197720, 31.335369, 43.558491>,  <36.528011, 31.557436, 43.518570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.197720, 31.335369, 43.558491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165297, -0.407321, -0.898202,
		0.539301, -0.725176, 0.428105,
		-0.825731, -0.555165, 0.099799,
		35.950001, 31.168819, 43.588432>
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
