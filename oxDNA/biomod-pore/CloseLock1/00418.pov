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
	<24.365133, 34.896824, 34.756123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.445234, 34.787533, 35.132473>,  <24.493296, 34.721958, 35.358284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.445234, 34.787533, 35.132473>,  <24.365133, 34.896824, 34.756123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.445234, 34.787533, 35.132473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964517, 0.223628, -0.140345,
		-0.172060, 0.935594, 0.308316,
		0.200254, -0.273228, 0.940875,
		24.505310, 34.705563, 35.414734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.603727, 35.565777, 35.205254>,  <24.365133, 34.896824, 34.756123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.603727, 35.565777, 35.205254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.748411, 35.196159, 35.254734>,  <24.835222, 34.974388, 35.284424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.748411, 35.196159, 35.254734>,  <24.603727, 35.565777, 35.205254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.748411, 35.196159, 35.254734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919047, 0.331133, -0.213784,
		0.156586, 0.191014, 0.969017,
		0.361709, -0.924048, 0.123700,
		24.856924, 34.918945, 35.291843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.271885, 35.533318, 35.496521>,  <24.603727, 35.565777, 35.205254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.271885, 35.533318, 35.496521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.300266, 35.172337, 35.326553>,  <25.317295, 34.955750, 35.224575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.300266, 35.172337, 35.326553>,  <25.271885, 35.533318, 35.496521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.300266, 35.172337, 35.326553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988375, 0.121031, -0.092013,
		0.134465, -0.413447, 0.900545,
		0.070952, -0.902448, -0.424915,
		25.321552, 34.901604, 35.199078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.745026, 35.111485, 35.860905>,  <25.271885, 35.533318, 35.496521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.745026, 35.111485, 35.860905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.725302, 34.996243, 35.478374>,  <25.713469, 34.927097, 35.248856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.725302, 34.996243, 35.478374>,  <25.745026, 35.111485, 35.860905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.725302, 34.996243, 35.478374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988585, 0.122400, -0.087845,
		0.142363, -0.949745, 0.278779,
		-0.049308, -0.288103, -0.956329,
		25.710508, 34.909813, 35.191475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.090288, 34.547672, 35.691505>,  <25.745026, 35.111485, 35.860905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.090288, 34.547672, 35.691505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.158321, 34.771667, 35.367165>,  <26.199142, 34.906063, 35.172558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.158321, 34.771667, 35.367165>,  <26.090288, 34.547672, 35.691505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.158321, 34.771667, 35.367165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981171, -0.172648, 0.086578,
		-0.091510, -0.810313, -0.578808,
		0.170085, 0.559987, -0.810855,
		26.209347, 34.939663, 35.123909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.623636, 34.401924, 35.161934>,  <26.090288, 34.547672, 35.691505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.623636, 34.401924, 35.161934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.995829, 34.263721, 35.210644>,  <27.219145, 34.180801, 35.239868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.995829, 34.263721, 35.210644>,  <26.623636, 34.401924, 35.161934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.995829, 34.263721, 35.210644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184129, -0.728455, -0.659886,
		0.316700, 0.591591, -0.741432,
		0.930483, -0.345505, 0.121773,
		27.274973, 34.160069, 35.247177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.676722, 33.948856, 34.539288>,  <26.623636, 34.401924, 35.161934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.676722, 33.948856, 34.539288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.008896, 33.876083, 34.749916>,  <27.208200, 33.832420, 34.876293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.008896, 33.876083, 34.749916>,  <26.676722, 33.948856, 34.539288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.008896, 33.876083, 34.749916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058240, -0.911650, -0.406819,
		0.554064, 0.368504, -0.746471,
		0.830435, -0.181929, 0.526574,
		27.258026, 33.821503, 34.907887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.297104, 33.741848, 34.098019>,  <26.676722, 33.948856, 34.539288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.297104, 33.741848, 34.098019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.330273, 33.561523, 34.453522>,  <27.350174, 33.453331, 34.666824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.330273, 33.561523, 34.453522>,  <27.297104, 33.741848, 34.098019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.330273, 33.561523, 34.453522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057542, -0.888178, -0.455883,
		0.994893, 0.088943, -0.047708,
		0.082921, -0.450809, 0.888760,
		27.355148, 33.426281, 34.720150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.699694, 33.190693, 33.911114>,  <27.297104, 33.741848, 34.098019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.699694, 33.190693, 33.911114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.552017, 33.098515, 34.271244>,  <27.463411, 33.043209, 34.487324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.552017, 33.098515, 34.271244>,  <27.699694, 33.190693, 33.911114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.552017, 33.098515, 34.271244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157010, -0.939378, -0.304824,
		0.915995, -0.253898, 0.310626,
		-0.369190, -0.230446, 0.900330,
		27.441259, 33.029381, 34.541344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.897800, 32.473812, 34.129700>,  <27.699694, 33.190693, 33.911114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.897800, 32.473812, 34.129700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.606098, 32.551003, 34.392288>,  <27.431078, 32.597317, 34.549839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.606098, 32.551003, 34.392288>,  <27.897800, 32.473812, 34.129700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.606098, 32.551003, 34.392288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374233, -0.915680, -0.146558,
		0.572834, -0.352551, 0.739980,
		-0.729254, 0.192972, 0.656469,
		27.387321, 32.608894, 34.589230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.901787, 31.971930, 34.592911>,  <27.897800, 32.473812, 34.129700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.901787, 31.971930, 34.592911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.537560, 32.089550, 34.709114>,  <27.319023, 32.160122, 34.778835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.537560, 32.089550, 34.709114>,  <27.901787, 31.971930, 34.592911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.537560, 32.089550, 34.709114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335170, -0.936557, -0.102580,
		0.241914, -0.190777, 0.951358,
		-0.910571, 0.294051, 0.290509,
		27.264389, 32.177765, 34.796268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.663046, 31.601307, 35.241871>,  <27.901787, 31.971930, 34.592911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.663046, 31.601307, 35.241871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.341368, 31.711689, 35.031303>,  <27.148361, 31.777918, 34.904964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.341368, 31.711689, 35.031303>,  <27.663046, 31.601307, 35.241871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.341368, 31.711689, 35.031303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308790, -0.950756, -0.026666,
		-0.507855, 0.141108, 0.849807,
		-0.804196, 0.275955, -0.526419,
		27.100109, 31.794476, 34.873379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.051208, 31.251154, 35.531235>,  <27.663046, 31.601307, 35.241871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.051208, 31.251154, 35.531235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.925697, 31.349174, 35.164303>,  <26.850391, 31.407988, 34.944145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.925697, 31.349174, 35.164303>,  <27.051208, 31.251154, 35.531235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.925697, 31.349174, 35.164303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418033, -0.903102, -0.098261,
		-0.852521, 0.352642, 0.385812,
		-0.313777, 0.245052, -0.917329,
		26.831564, 31.422689, 34.889103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.429810, 30.905077, 35.465977>,  <27.051208, 31.251154, 35.531235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.429810, 30.905077, 35.465977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.530222, 30.985645, 35.087261>,  <26.590469, 31.033987, 34.860031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.530222, 30.985645, 35.087261>,  <26.429810, 30.905077, 35.465977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.530222, 30.985645, 35.087261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368015, -0.884804, -0.285809,
		-0.895292, 0.420180, -0.147987,
		0.251031, 0.201421, -0.946791,
		26.605532, 31.046072, 34.803223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.753439, 30.763052, 35.094421>,  <26.429810, 30.905077, 35.465977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.753439, 30.763052, 35.094421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.076309, 30.750977, 34.858604>,  <26.270031, 30.743732, 34.717113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.076309, 30.750977, 34.858604>,  <25.753439, 30.763052, 35.094421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.076309, 30.750977, 34.858604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293787, -0.886768, -0.356836,
		-0.512011, 0.461228, -0.724647,
		0.807177, -0.030187, -0.589538,
		26.318462, 30.741920, 34.681744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.481190, 30.770199, 34.391796>,  <25.753439, 30.763052, 35.094421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.481190, 30.770199, 34.391796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.843620, 30.601929, 34.409950>,  <26.061079, 30.500967, 34.420841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.843620, 30.601929, 34.409950>,  <25.481190, 30.770199, 34.391796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.843620, 30.601929, 34.409950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343944, -0.794756, -0.500066,
		0.246437, 0.437487, -0.864797,
		0.906075, -0.420677, 0.045386,
		26.115442, 30.475725, 34.423565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.609297, 30.463697, 33.747398>,  <25.481190, 30.770199, 34.391796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.609297, 30.463697, 33.747398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.841127, 30.272209, 34.011192>,  <25.980227, 30.157316, 34.169468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.841127, 30.272209, 34.011192>,  <25.609297, 30.463697, 33.747398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.841127, 30.272209, 34.011192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175872, -0.863671, -0.472378,
		0.795712, 0.157796, -0.584759,
		0.579579, -0.478720, 0.659482,
		26.015001, 30.128593, 34.209038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.123646, 30.092020, 33.338844>,  <25.609297, 30.463697, 33.747398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.123646, 30.092020, 33.338844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.126455, 29.903402, 33.691570>,  <26.128141, 29.790232, 33.903206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.126455, 29.903402, 33.691570>,  <26.123646, 30.092020, 33.338844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.126455, 29.903402, 33.691570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073300, -0.879706, -0.469835,
		0.997285, -0.061338, -0.040742,
		0.007022, -0.471546, 0.881814,
		26.128563, 29.761938, 33.956116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.612146, 29.450350, 33.322853>,  <26.123646, 30.092020, 33.338844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.612146, 29.450350, 33.322853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.432817, 29.340525, 33.663116>,  <26.325220, 29.274630, 33.867275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.432817, 29.340525, 33.663116>,  <26.612146, 29.450350, 33.322853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.432817, 29.340525, 33.663116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100405, -0.930167, -0.353141,
		0.888215, -0.243731, 0.389447,
		-0.448322, -0.274563, 0.850660,
		26.298321, 29.258156, 33.918316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.885929, 28.794563, 33.469326>,  <26.612146, 29.450350, 33.322853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.885929, 28.794563, 33.469326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.566868, 28.814722, 33.709728>,  <26.375431, 28.826817, 33.853970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.566868, 28.814722, 33.709728>,  <26.885929, 28.794563, 33.469326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.566868, 28.814722, 33.709728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201558, -0.961482, -0.186885,
		0.568437, -0.270208, 0.777089,
		-0.797655, 0.050396, 0.601005,
		26.327572, 28.829842, 33.890030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.934544, 28.203650, 33.935028>,  <26.885929, 28.794563, 33.469326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.934544, 28.203650, 33.935028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.550280, 28.314686, 33.938530>,  <26.319721, 28.381308, 33.940632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.550280, 28.314686, 33.938530>,  <26.934544, 28.203650, 33.935028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.550280, 28.314686, 33.938530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276001, -0.950690, -0.141466,
		-0.030946, -0.138317, 0.989905,
		-0.960659, 0.277593, 0.008755,
		26.262081, 28.397964, 33.941158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.665083, 27.684694, 34.364468>,  <26.934544, 28.203650, 33.935028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.665083, 27.684694, 34.364468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.357265, 27.842365, 34.163498>,  <26.172575, 27.936968, 34.042915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.357265, 27.842365, 34.163498>,  <26.665083, 27.684694, 34.364468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.357265, 27.842365, 34.163498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298863, -0.917586, -0.262138,
		-0.564343, -0.051572, 0.823928,
		-0.769544, 0.394177, -0.502421,
		26.126402, 27.960619, 34.012772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.065777, 27.293552, 34.500446>,  <26.665083, 27.684694, 34.364468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.065777, 27.293552, 34.500446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.966076, 27.479282, 34.160500>,  <25.906256, 27.590719, 33.956532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.966076, 27.479282, 34.160500>,  <26.065777, 27.293552, 34.500446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.966076, 27.479282, 34.160500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432339, -0.838613, -0.331377,
		-0.866578, 0.284836, 0.409770,
		-0.249251, 0.464324, -0.849869,
		25.891300, 27.618580, 33.905540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.257135, 27.257793, 34.405422>,  <26.065777, 27.293552, 34.500446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.257135, 27.257793, 34.405422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.430738, 27.305552, 34.048237>,  <25.534901, 27.334208, 33.833927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.430738, 27.305552, 34.048237>,  <25.257135, 27.257793, 34.405422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.430738, 27.305552, 34.048237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393777, -0.866344, -0.307225,
		-0.810295, 0.484966, -0.328982,
		0.434005, 0.119397, -0.892963,
		25.560940, 27.341372, 33.780350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.838436, 27.040178, 33.841267>,  <25.257135, 27.257793, 34.405422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.838436, 27.040178, 33.841267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.217110, 27.014191, 33.715050>,  <25.444313, 26.998598, 33.639320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.217110, 27.014191, 33.715050>,  <24.838436, 27.040178, 33.841267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.217110, 27.014191, 33.715050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177257, -0.922915, -0.341771,
		-0.269017, 0.379482, -0.885225,
		0.946684, -0.064970, -0.315546,
		25.501114, 26.994699, 33.620384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.003988, 26.911148, 33.100060>,  <24.838436, 27.040178, 33.841267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.003988, 26.911148, 33.100060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.284382, 26.721529, 33.313190>,  <25.452618, 26.607758, 33.441067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.284382, 26.721529, 33.313190>,  <25.003988, 26.911148, 33.100060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.284382, 26.721529, 33.313190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141631, -0.824766, -0.547450,
		0.698972, 0.308289, -0.645287,
		0.700984, -0.474045, 0.532825,
		25.494677, 26.579315, 33.473038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.710045, 26.655464, 32.756710>,  <25.003988, 26.911148, 33.100060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.710045, 26.655464, 32.756710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.509577, 26.454529, 33.038555>,  <25.389296, 26.333967, 33.207664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.509577, 26.454529, 33.038555>,  <25.710045, 26.655464, 32.756710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.509577, 26.454529, 33.038555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330284, -0.641573, -0.692313,
		0.799837, -0.579692, 0.155624,
		-0.501172, -0.502337, 0.704616,
		25.359224, 26.303827, 33.249939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.005033, 25.968346, 32.904869>,  <25.710045, 26.655464, 32.756710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.005033, 25.968346, 32.904869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.607819, 25.993345, 32.944813>,  <25.369490, 26.008345, 32.968781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.607819, 25.993345, 32.944813>,  <26.005033, 25.968346, 32.904869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.607819, 25.993345, 32.944813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113238, -0.740165, -0.662823,
		0.032485, -0.669515, 0.742088,
		-0.993037, 0.062501, 0.099859,
		25.309908, 26.012094, 32.974770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.555897, 25.859230, 32.520218>,  <26.005033, 25.968346, 32.904869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.555897, 25.859230, 32.520218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.407318, 26.117931, 32.253765>,  <26.318171, 26.273153, 32.093891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.407318, 26.117931, 32.253765>,  <26.555897, 25.859230, 32.520218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.407318, 26.117931, 32.253765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610044, -0.370847, -0.700228,
		-0.699909, -0.666469, -0.256798,
		-0.371448, 0.646755, -0.666135,
		26.295883, 26.311958, 32.053925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.203831, 25.527523, 31.927713>,  <26.555897, 25.859230, 32.520218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.203831, 25.527523, 31.927713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.385841, 25.864920, 31.813540>,  <26.495049, 26.067358, 31.745035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.385841, 25.864920, 31.813540>,  <26.203831, 25.527523, 31.927713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.385841, 25.864920, 31.813540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576709, -0.523380, -0.627281,
		-0.678496, 0.120819, -0.724601,
		0.455029, 0.843491, -0.285434,
		26.522350, 26.117968, 31.727909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.152327, 25.688473, 31.074127>,  <26.203831, 25.527523, 31.927713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.152327, 25.688473, 31.074127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.485134, 25.748806, 31.287664>,  <26.684818, 25.785006, 31.415787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.485134, 25.748806, 31.287664>,  <26.152327, 25.688473, 31.074127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.485134, 25.748806, 31.287664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458648, -0.728377, -0.509028,
		0.312062, 0.668369, -0.675204,
		0.832021, 0.150833, 0.533845,
		26.734741, 25.794056, 31.447819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.759617, 25.844145, 30.740482>,  <26.152327, 25.688473, 31.074127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.759617, 25.844145, 30.740482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.876829, 25.652012, 31.071157>,  <26.947157, 25.536732, 31.269562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.876829, 25.652012, 31.071157>,  <26.759617, 25.844145, 30.740482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.876829, 25.652012, 31.071157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444401, -0.697141, -0.562585,
		0.846546, 0.532237, 0.009175,
		0.293032, -0.480332, 0.826688,
		26.964739, 25.507912, 31.319164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.420185, 26.008137, 30.835112>,  <26.759617, 25.844145, 30.740482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.420185, 26.008137, 30.835112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.692520, 25.827660, 31.065897>,  <27.855921, 25.719374, 31.204369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.692520, 25.827660, 31.065897>,  <27.420185, 26.008137, 30.835112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.692520, 25.827660, 31.065897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305147, 0.890847, 0.336567,
		-0.665844, -0.053088, 0.744200,
		0.680836, -0.451191, 0.576965,
		27.896770, 25.692303, 31.238987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.273308, 26.153122, 31.543957>,  <27.420185, 26.008137, 30.835112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.273308, 26.153122, 31.543957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.655386, 26.074894, 31.455095>,  <27.884634, 26.027958, 31.401779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.655386, 26.074894, 31.455095>,  <27.273308, 26.153122, 31.543957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.655386, 26.074894, 31.455095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248693, 0.937299, 0.244175,
		0.160469, -0.288483, 0.943942,
		0.955197, -0.195569, -0.222151,
		27.941946, 26.016224, 31.388451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.747612, 26.311302, 32.154854>,  <27.273308, 26.153122, 31.543957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.747612, 26.311302, 32.154854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.923306, 26.347620, 31.797344>,  <28.028721, 26.369410, 31.582838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.923306, 26.347620, 31.797344>,  <27.747612, 26.311302, 32.154854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.923306, 26.347620, 31.797344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192104, 0.962376, 0.192168,
		0.877594, -0.256103, 0.405265,
		0.439232, 0.090792, -0.893774,
		28.055075, 26.374857, 31.529213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.451740, 26.432053, 32.318405>,  <27.747612, 26.311302, 32.154854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.451740, 26.432053, 32.318405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.286432, 26.612072, 32.001759>,  <28.187246, 26.720083, 31.811769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.286432, 26.612072, 32.001759>,  <28.451740, 26.432053, 32.318405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.286432, 26.612072, 32.001759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180373, 0.892564, 0.413273,
		0.892564, 0.028007, -0.450049,
		-0.413273, 0.450049, -0.791619,
		28.162451, 26.747087, 31.764273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.902328, 26.919025, 32.162899>,  <28.451740, 26.432053, 32.318405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.902328, 26.919025, 32.162899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.582949, 27.051628, 31.961868>,  <28.391321, 27.131189, 31.841251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.582949, 27.051628, 31.961868>,  <28.902328, 26.919025, 32.162899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.582949, 27.051628, 31.961868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259516, 0.942731, 0.209547,
		0.543257, 0.036887, -0.838756,
		-0.798451, 0.331508, -0.502572,
		28.343414, 27.151081, 31.811096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.094759, 27.464947, 31.622213>,  <28.902328, 26.919025, 32.162899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.094759, 27.464947, 31.622213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.724232, 27.520014, 31.762491>,  <28.501915, 27.553055, 31.846659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.724232, 27.520014, 31.762491>,  <29.094759, 27.464947, 31.622213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.724232, 27.520014, 31.762491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258250, 0.909771, 0.324997,
		-0.274310, 0.391617, -0.878288,
		-0.926316, 0.137667, 0.350695,
		28.446337, 27.561314, 31.867699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.922033, 28.115549, 31.397398>,  <29.094759, 27.464947, 31.622213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.922033, 28.115549, 31.397398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.652016, 28.059717, 31.687180>,  <28.490005, 28.026218, 31.861048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.652016, 28.059717, 31.687180>,  <28.922033, 28.115549, 31.397398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.652016, 28.059717, 31.687180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047689, 0.971631, 0.231643,
		-0.736234, 0.190918, -0.649238,
		-0.675044, -0.139582, 0.724453,
		28.449503, 28.017843, 31.904516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.594158, 28.764044, 31.426338>,  <28.922033, 28.115549, 31.397398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.594158, 28.764044, 31.426338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.434645, 28.608315, 31.758459>,  <28.338938, 28.514877, 31.957731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.434645, 28.608315, 31.758459>,  <28.594158, 28.764044, 31.426338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.434645, 28.608315, 31.758459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040663, 0.897012, 0.440131,
		-0.916144, 0.209279, -0.341882,
		-0.398783, -0.389322, 0.830302,
		28.315010, 28.491518, 32.007549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.079571, 29.239681, 31.672247>,  <28.594158, 28.764044, 31.426338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.079571, 29.239681, 31.672247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.226444, 29.028931, 31.978861>,  <28.314569, 28.902481, 32.162830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.226444, 29.028931, 31.978861>,  <28.079571, 29.239681, 31.672247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.226444, 29.028931, 31.978861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077982, 0.838638, 0.539078,
		-0.926874, -0.138165, 0.349022,
		0.367185, -0.526874, 0.766537,
		28.336599, 28.870869, 32.208820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.883667, 29.634933, 32.276138>,  <28.079571, 29.239681, 31.672247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.883667, 29.634933, 32.276138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.155363, 29.391714, 32.440533>,  <28.318380, 29.245783, 32.539169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.155363, 29.391714, 32.440533>,  <27.883667, 29.634933, 32.276138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.155363, 29.391714, 32.440533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260697, 0.723366, 0.639359,
		-0.686055, -0.327135, 0.649855,
		0.679239, -0.608050, 0.410986,
		28.359135, 29.209299, 32.563828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.790428, 29.653530, 32.951000>,  <27.883667, 29.634933, 32.276138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.790428, 29.653530, 32.951000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.169111, 29.528152, 32.921329>,  <28.396320, 29.452927, 32.903526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.169111, 29.528152, 32.921329>,  <27.790428, 29.653530, 32.951000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.169111, 29.528152, 32.921329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275520, 0.668744, 0.690558,
		-0.166845, -0.674193, 0.719463,
		0.946706, -0.313442, -0.074177,
		28.453123, 29.434120, 32.899075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.073324, 29.654669, 33.602119>,  <27.790428, 29.653530, 32.951000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.073324, 29.654669, 33.602119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.412189, 29.649244, 33.389656>,  <28.615509, 29.645990, 33.262177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.412189, 29.649244, 33.389656>,  <28.073324, 29.654669, 33.602119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.412189, 29.649244, 33.389656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434284, 0.593627, 0.677499,
		0.306122, -0.804626, 0.508790,
		0.847164, -0.013562, -0.531158,
		28.666338, 29.645176, 33.230309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.607357, 29.659740, 34.129120>,  <28.073324, 29.654669, 33.602119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.607357, 29.659740, 34.129120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.758591, 29.792042, 33.783253>,  <28.849331, 29.871422, 33.575733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.758591, 29.792042, 33.783253>,  <28.607357, 29.659740, 34.129120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.758591, 29.792042, 33.783253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540223, 0.679664, 0.496201,
		0.751806, -0.654720, 0.078288,
		0.378082, 0.330754, -0.864670,
		28.872015, 29.891268, 33.523853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.395132, 29.639980, 34.133305>,  <28.607357, 29.659740, 34.129120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.395132, 29.639980, 34.133305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.312408, 29.943209, 33.885899>,  <29.262774, 30.125145, 33.737453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.312408, 29.943209, 33.885899>,  <29.395132, 29.639980, 34.133305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.312408, 29.943209, 33.885899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618016, 0.591309, 0.518083,
		0.758476, -0.275106, -0.590788,
		-0.206811, 0.758070, -0.618514,
		29.250364, 30.170630, 33.700344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.004204, 30.150328, 34.072262>,  <29.395132, 29.639980, 34.133305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.004204, 30.150328, 34.072262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.693832, 30.360172, 33.932137>,  <29.507610, 30.486078, 33.848061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.693832, 30.360172, 33.932137>,  <30.004204, 30.150328, 34.072262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.693832, 30.360172, 33.932137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301390, 0.796148, 0.524702,
		0.554168, 0.301548, -0.775865,
		-0.775926, 0.524611, -0.350316,
		29.461054, 30.517555, 33.827042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.346394, 30.747746, 33.834393>,  <30.004204, 30.150328, 34.072262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.346394, 30.747746, 33.834393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.959637, 30.846952, 33.858410>,  <29.727583, 30.906477, 33.872818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.959637, 30.846952, 33.858410>,  <30.346394, 30.747746, 33.834393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.959637, 30.846952, 33.858410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247483, 0.854053, 0.457543,
		0.062200, 0.457254, -0.887158,
		-0.966894, 0.248016, 0.060041,
		29.669569, 30.921358, 33.876423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.303391, 31.449938, 33.580376>,  <30.346394, 30.747746, 33.834393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.303391, 31.449938, 33.580376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.995796, 31.371752, 33.823837>,  <29.811239, 31.324841, 33.969913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.995796, 31.371752, 33.823837>,  <30.303391, 31.449938, 33.580376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.995796, 31.371752, 33.823837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068694, 0.921329, 0.382667,
		-0.635564, 0.336076, -0.695062,
		-0.768986, -0.195463, 0.608650,
		29.765100, 31.313112, 34.006432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.819696, 32.138210, 33.508129>,  <30.303391, 31.449938, 33.580376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.819696, 32.138210, 33.508129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.685843, 31.943104, 33.830647>,  <29.605530, 31.826040, 34.024155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.685843, 31.943104, 33.830647>,  <29.819696, 32.138210, 33.508129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.685843, 31.943104, 33.830647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053789, 0.864110, 0.500420,
		-0.940811, 0.124089, -0.315399,
		-0.334636, -0.487766, 0.806290,
		29.585451, 31.796774, 34.072533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.314024, 32.576271, 33.827236>,  <29.819696, 32.138210, 33.508129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.314024, 32.576271, 33.827236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.402191, 32.324291, 34.125114>,  <29.455091, 32.173103, 34.303841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.402191, 32.324291, 34.125114>,  <29.314024, 32.576271, 33.827236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.402191, 32.324291, 34.125114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167322, 0.727740, 0.665129,
		-0.960947, -0.271211, 0.055003,
		0.220419, -0.629951, 0.744700,
		29.468317, 32.135307, 34.348526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.740448, 32.769821, 34.445042>,  <29.314024, 32.576271, 33.827236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.740448, 32.769821, 34.445042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.046083, 32.559669, 34.594784>,  <29.229464, 32.433578, 34.684631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.046083, 32.559669, 34.594784>,  <28.740448, 32.769821, 34.445042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.046083, 32.559669, 34.594784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049919, 0.626710, 0.777652,
		-0.643179, -0.575506, 0.505087,
		0.764087, -0.525383, 0.374358,
		29.275311, 32.402054, 34.707092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.641161, 32.759838, 35.165287>,  <28.740448, 32.769821, 34.445042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.641161, 32.759838, 35.165287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.029587, 32.703903, 35.087852>,  <29.262642, 32.670341, 35.041393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.029587, 32.703903, 35.087852>,  <28.641161, 32.759838, 35.165287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.029587, 32.703903, 35.087852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227954, 0.784383, 0.576871,
		0.071179, -0.604308, 0.793564,
		0.971067, -0.139835, -0.193586,
		29.320908, 32.661953, 35.029778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.963091, 32.767563, 35.826740>,  <28.641161, 32.759838, 35.165287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.963091, 32.767563, 35.826740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.246155, 32.835461, 35.552395>,  <29.415993, 32.876198, 35.387787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.246155, 32.835461, 35.552395>,  <28.963091, 32.767563, 35.826740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.246155, 32.835461, 35.552395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338459, 0.770653, 0.539944,
		0.620212, -0.614233, 0.487910,
		0.707661, 0.169742, -0.685860,
		29.458452, 32.886383, 35.346638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.647732, 33.037098, 36.239655>,  <28.963091, 32.767563, 35.826740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.647732, 33.037098, 36.239655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.746557, 33.126354, 35.862473>,  <29.805853, 33.179909, 35.636162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.746557, 33.126354, 35.862473>,  <29.647732, 33.037098, 36.239655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.746557, 33.126354, 35.862473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492921, 0.808870, 0.320561,
		0.834260, -0.544002, 0.089850,
		0.247062, 0.223142, -0.942957,
		29.820677, 33.193298, 35.579586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.332514, 33.135094, 36.271713>,  <29.647732, 33.037098, 36.239655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.332514, 33.135094, 36.271713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.189028, 33.302574, 35.938004>,  <30.102936, 33.403065, 35.737778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.189028, 33.302574, 35.938004>,  <30.332514, 33.135094, 36.271713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.189028, 33.302574, 35.938004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331809, 0.892579, 0.305296,
		0.872482, -0.167304, -0.459113,
		-0.358717, 0.418703, -0.834272,
		30.081413, 33.428185, 35.687721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.877075, 33.638580, 36.039608>,  <30.332514, 33.135094, 36.271713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.877075, 33.638580, 36.039608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.550102, 33.758377, 35.842789>,  <30.353918, 33.830257, 35.724697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.550102, 33.758377, 35.842789>,  <30.877075, 33.638580, 36.039608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.550102, 33.758377, 35.842789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260935, 0.954064, 0.147227,
		0.513538, -0.008045, -0.858029,
		-0.817430, 0.299496, -0.492047,
		30.304873, 33.848225, 35.695175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.372938, 33.155567, 36.373024>,  <30.877075, 33.638580, 36.039608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.372938, 33.155567, 36.373024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.592396, 33.028568, 36.063656>,  <31.724070, 32.952370, 35.878033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.592396, 33.028568, 36.063656>,  <31.372938, 33.155567, 36.373024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.592396, 33.028568, 36.063656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816657, 0.005396, 0.577097,
		-0.179052, -0.948244, 0.262246,
		0.548644, -0.317496, -0.773425,
		31.756989, 32.933319, 35.831627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.782375, 32.503906, 36.531269>,  <31.372938, 33.155567, 36.373024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.782375, 32.503906, 36.531269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.949520, 32.755161, 36.268715>,  <32.049809, 32.905914, 36.111183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.949520, 32.755161, 36.268715>,  <31.782375, 32.503906, 36.531269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.949520, 32.755161, 36.268715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801703, 0.084938, 0.591657,
		0.427393, -0.773454, -0.468085,
		0.417861, 0.628135, -0.656382,
		32.074879, 32.943604, 36.071800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.619831, 32.434071, 36.401131>,  <31.782375, 32.503906, 36.531269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.619831, 32.434071, 36.401131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.516415, 32.814087, 36.331177>,  <32.454365, 33.042095, 36.289204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.516415, 32.814087, 36.331177>,  <32.619831, 32.434071, 36.401131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.516415, 32.814087, 36.331177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798896, 0.312057, 0.514184,
		0.543068, -0.006777, -0.839661,
		-0.258538, 0.950039, -0.174882,
		32.438854, 33.099098, 36.278713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.215218, 32.781437, 36.034737>,  <32.619831, 32.434071, 36.401131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.215218, 32.781437, 36.034737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.952011, 32.954136, 36.281513>,  <32.794086, 33.057755, 36.429581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.952011, 32.954136, 36.281513>,  <33.215218, 32.781437, 36.034737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.952011, 32.954136, 36.281513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751904, 0.332405, 0.569340,
		0.040735, 0.838513, -0.543357,
		-0.658013, 0.431744, 0.616941,
		32.754608, 33.083660, 36.466595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.393063, 33.520103, 36.355923>,  <33.215218, 32.781437, 36.034737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.393063, 33.520103, 36.355923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.135895, 33.351139, 36.611492>,  <32.981594, 33.249760, 36.764835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.135895, 33.351139, 36.611492>,  <33.393063, 33.520103, 36.355923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.135895, 33.351139, 36.611492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570484, 0.292529, 0.767447,
		-0.511080, 0.857903, 0.052904,
		-0.642919, -0.422408, 0.638926,
		32.943020, 33.224415, 36.803169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.122936, 34.003002, 36.900520>,  <33.393063, 33.520103, 36.355923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.122936, 34.003002, 36.900520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.137123, 33.629150, 37.042061>,  <33.145634, 33.404839, 37.126984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.137123, 33.629150, 37.042061>,  <33.122936, 34.003002, 36.900520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.137123, 33.629150, 37.042061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595966, 0.304002, 0.743241,
		-0.802227, 0.184524, 0.567788,
		0.035463, -0.934630, 0.353848,
		33.147762, 33.348763, 37.148216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.014351, 34.144093, 37.650299>,  <33.122936, 34.003002, 36.900520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.014351, 34.144093, 37.650299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.177132, 33.781021, 37.609291>,  <33.274799, 33.563179, 37.584686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.177132, 33.781021, 37.609291>,  <33.014351, 34.144093, 37.650299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.177132, 33.781021, 37.609291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351939, 0.052234, 0.934564,
		-0.842928, -0.416404, 0.340704,
		0.406953, -0.907678, -0.102520,
		33.299217, 33.508717, 37.578537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.980560, 33.877090, 38.361649>,  <33.014351, 34.144093, 37.650299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.980560, 33.877090, 38.361649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.227432, 33.616840, 38.184662>,  <33.375553, 33.460690, 38.078468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.227432, 33.616840, 38.184662>,  <32.980560, 33.877090, 38.361649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.227432, 33.616840, 38.184662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249936, -0.371113, 0.894319,
		-0.746072, -0.662543, -0.066428,
		0.617177, -0.650624, -0.442471,
		33.412586, 33.421654, 38.051922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.948097, 33.205425, 38.631790>,  <32.980560, 33.877090, 38.361649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.948097, 33.205425, 38.631790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.317776, 33.269550, 38.493137>,  <33.539585, 33.308025, 38.409946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.317776, 33.269550, 38.493137>,  <32.948097, 33.205425, 38.631790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.317776, 33.269550, 38.493137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360199, -0.064228, 0.930662,
		0.126930, -0.984975, -0.117103,
		0.924200, 0.160310, -0.346635,
		33.595036, 33.317642, 38.389149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.390972, 32.674931, 39.023022>,  <32.948097, 33.205425, 38.631790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.390972, 32.674931, 39.023022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.633900, 32.965691, 38.894787>,  <33.779655, 33.140148, 38.817844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.633900, 32.965691, 38.894787>,  <33.390972, 32.674931, 39.023022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.633900, 32.965691, 38.894787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409576, 0.059299, 0.910347,
		0.680741, -0.684179, -0.261707,
		0.607321, 0.726899, -0.320591,
		33.816097, 33.183762, 38.798611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.083031, 32.499138, 39.171951>,  <33.390972, 32.674931, 39.023022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.083031, 32.499138, 39.171951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.134834, 32.891872, 39.116478>,  <34.165916, 33.127514, 39.083195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.134834, 32.891872, 39.116478>,  <34.083031, 32.499138, 39.171951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.134834, 32.891872, 39.116478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420396, 0.072298, 0.904455,
		0.898050, -0.175438, -0.403395,
		0.129511, 0.981832, -0.138681,
		34.173687, 33.186420, 39.074875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.614918, 32.628208, 39.504623>,  <34.083031, 32.499138, 39.171951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.614918, 32.628208, 39.504623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.529877, 33.017593, 39.470734>,  <34.478851, 33.251225, 39.450401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.529877, 33.017593, 39.470734>,  <34.614918, 32.628208, 39.504623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.529877, 33.017593, 39.470734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412879, 0.168081, 0.895142,
		0.885625, 0.155327, -0.437655,
		-0.212601, 0.973459, -0.084725,
		34.466095, 33.309631, 39.445316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.317013, 32.994194, 39.754295>,  <34.614918, 32.628208, 39.504623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.317013, 32.994194, 39.754295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.002708, 33.238586, 39.792831>,  <34.814125, 33.385223, 39.815952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.002708, 33.238586, 39.792831>,  <35.317013, 32.994194, 39.754295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.002708, 33.238586, 39.792831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332154, 0.285410, 0.899008,
		0.521778, 0.738407, -0.427204,
		-0.785761, 0.610980, 0.096344,
		34.766979, 33.421879, 39.821735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.578724, 33.540325, 40.110775>,  <35.317013, 32.994194, 39.754295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.578724, 33.540325, 40.110775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.186275, 33.594486, 40.166019>,  <34.950806, 33.626984, 40.199165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.186275, 33.594486, 40.166019>,  <35.578724, 33.540325, 40.110775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.186275, 33.594486, 40.166019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165318, 0.216482, 0.962188,
		0.100386, 0.966851, -0.234779,
		-0.981118, 0.135404, 0.138107,
		34.891941, 33.635109, 40.207451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.554592, 34.125568, 40.601250>,  <35.578724, 33.540325, 40.110775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.554592, 34.125568, 40.601250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.207703, 33.929890, 40.638351>,  <34.999569, 33.812481, 40.660614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.207703, 33.929890, 40.638351>,  <35.554592, 34.125568, 40.601250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.207703, 33.929890, 40.638351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010631, 0.168057, 0.985720,
		-0.497799, 0.855829, -0.140543,
		-0.867227, -0.489196, 0.092757,
		34.947533, 33.783131, 40.666180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.181660, 34.486057, 41.206783>,  <35.554592, 34.125568, 40.601250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.181660, 34.486057, 41.206783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.019714, 34.121628, 41.175743>,  <34.922546, 33.902969, 41.157120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.019714, 34.121628, 41.175743>,  <35.181660, 34.486057, 41.206783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.019714, 34.121628, 41.175743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021781, -0.094450, 0.995291,
		-0.914116, 0.401270, 0.058084,
		-0.404867, -0.911077, -0.077599,
		34.898254, 33.848305, 41.152462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.876740, 34.461235, 41.881626>,  <35.181660, 34.486057, 41.206783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.876740, 34.461235, 41.881626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.857521, 34.087658, 41.739960>,  <34.845989, 33.863510, 41.654961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.857521, 34.087658, 41.739960>,  <34.876740, 34.461235, 41.881626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.857521, 34.087658, 41.739960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222322, -0.355685, 0.907778,
		-0.973789, -0.035121, 0.224727,
		-0.048050, -0.933946, -0.354170,
		34.843105, 33.807476, 41.633709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.458843, 34.089161, 42.277206>,  <34.876740, 34.461235, 41.881626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.458843, 34.089161, 42.277206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.717033, 33.836323, 42.105713>,  <34.871948, 33.684620, 42.002815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.717033, 33.836323, 42.105713>,  <34.458843, 34.089161, 42.277206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.717033, 33.836323, 42.105713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279111, -0.327300, 0.902758,
		-0.710953, -0.702376, -0.034841,
		0.645479, -0.632094, -0.428736,
		34.910675, 33.646694, 41.977093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.429539, 33.510601, 42.656876>,  <34.458843, 34.089161, 42.277206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.429539, 33.510601, 42.656876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.778542, 33.460541, 42.467953>,  <34.987942, 33.430504, 42.354599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.778542, 33.460541, 42.467953>,  <34.429539, 33.510601, 42.656876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.778542, 33.460541, 42.467953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408562, -0.343282, 0.845716,
		-0.267976, -0.930857, -0.248383,
		0.872506, -0.125151, -0.472304,
		35.040295, 33.422993, 42.326260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.610260, 32.802612, 42.808937>,  <34.429539, 33.510601, 42.656876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.610260, 32.802612, 42.808937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.932724, 33.014347, 42.703186>,  <35.126202, 33.141388, 42.639736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.932724, 33.014347, 42.703186>,  <34.610260, 32.802612, 42.808937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.932724, 33.014347, 42.703186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478092, -0.319492, 0.818140,
		0.348608, -0.785953, -0.510636,
		0.806164, 0.529342, -0.264380,
		35.174572, 33.173149, 42.623871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.166039, 32.350536, 42.888161>,  <34.610260, 32.802612, 42.808937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.166039, 32.350536, 42.888161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.355400, 32.702690, 42.876839>,  <35.469017, 32.913982, 42.870045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.355400, 32.702690, 42.876839>,  <35.166039, 32.350536, 42.888161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.355400, 32.702690, 42.876839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601938, -0.299885, 0.740094,
		0.643083, -0.367402, -0.671908,
		0.473407, 0.880389, -0.028302,
		35.497421, 32.966808, 42.868347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.845341, 32.108360, 43.022461>,  <35.166039, 32.350536, 42.888161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.845341, 32.108360, 43.022461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.810459, 32.496216, 43.113850>,  <35.789532, 32.728928, 43.168682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.810459, 32.496216, 43.113850>,  <35.845341, 32.108360, 43.022461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.810459, 32.496216, 43.113850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377789, -0.180028, 0.908221,
		0.921776, 0.165517, -0.350618,
		-0.087205, 0.969636, 0.228476,
		35.784298, 32.787106, 43.182392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.474277, 32.312721, 43.418839>,  <35.845341, 32.108360, 43.022461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.474277, 32.312721, 43.418839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.175484, 32.552605, 43.533634>,  <35.996208, 32.696537, 43.602512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.175484, 32.552605, 43.533634>,  <36.474277, 32.312721, 43.418839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.175484, 32.552605, 43.533634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253122, -0.142620, 0.956864,
		0.614773, 0.787404, -0.045265,
		-0.746983, 0.599712, 0.286988,
		35.951389, 32.732517, 43.619732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.732864, 32.658051, 44.010082>,  <36.474277, 32.312721, 43.418839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.732864, 32.658051, 44.010082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.333828, 32.681034, 44.025620>,  <36.094406, 32.694824, 44.034943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.333828, 32.681034, 44.025620>,  <36.732864, 32.658051, 44.010082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.333828, 32.681034, 44.025620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029344, -0.157735, 0.987045,
		0.062839, 0.985808, 0.155669,
		-0.997592, 0.057457, 0.038839,
		36.034550, 32.698273, 44.037270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.659920, 33.094311, 44.603863>,  <36.732864, 32.658051, 44.010082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.659920, 33.094311, 44.603863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.303497, 32.915020, 44.575241>,  <36.089645, 32.807446, 44.558067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.303497, 32.915020, 44.575241>,  <36.659920, 33.094311, 44.603863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.303497, 32.915020, 44.575241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016027, -0.126469, 0.991841,
		-0.453617, 0.884930, 0.105507,
		-0.891053, -0.448225, -0.071551,
		36.036182, 32.780552, 44.553776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.220551, 33.439796, 45.160454>,  <36.659920, 33.094311, 44.603863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.220551, 33.439796, 45.160454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.057140, 33.093708, 45.044178>,  <35.959095, 32.886055, 44.974411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.057140, 33.093708, 45.044178>,  <36.220551, 33.439796, 45.160454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.057140, 33.093708, 45.044178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003329, -0.319888, 0.947449,
		-0.912741, 0.386090, 0.133563,
		-0.408526, -0.865220, -0.290690,
		35.934582, 32.834141, 44.956970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.620506, 33.364204, 45.591892>,  <36.220551, 33.439796, 45.160454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.620506, 33.364204, 45.591892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.705727, 33.001442, 45.446495>,  <35.756859, 32.783783, 45.359257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.705727, 33.001442, 45.446495>,  <35.620506, 33.364204, 45.591892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.705727, 33.001442, 45.446495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189764, -0.403359, 0.895149,
		-0.958435, -0.121735, -0.258035,
		0.213052, -0.906908, -0.363493,
		35.769642, 32.729370, 45.337448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.104397, 32.893341, 45.859440>,  <35.620506, 33.364204, 45.591892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.104397, 32.893341, 45.859440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.410572, 32.650192, 45.774967>,  <35.594276, 32.504303, 45.724281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.410572, 32.650192, 45.774967>,  <35.104397, 32.893341, 45.859440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.410572, 32.650192, 45.774967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103830, -0.440540, 0.891708,
		-0.635079, -0.660619, -0.400321,
		0.765437, -0.607871, -0.211186,
		35.640202, 32.467831, 45.711613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.907848, 32.165668, 46.015465>,  <35.104397, 32.893341, 45.859440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.907848, 32.165668, 46.015465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.304863, 32.214146, 46.020897>,  <35.543072, 32.243233, 46.024155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.304863, 32.214146, 46.020897>,  <34.907848, 32.165668, 46.015465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.304863, 32.214146, 46.020897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015921, -0.239180, 0.970845,
		0.120905, -0.963383, -0.239324,
		0.992536, 0.121190, 0.013580,
		35.602623, 32.250504, 46.024971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.266602, 31.760950, 46.478661>,  <34.907848, 32.165668, 46.015465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.266602, 31.760950, 46.478661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.607964, 31.963327, 46.428513>,  <35.812782, 32.084755, 46.398422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.607964, 31.963327, 46.428513>,  <35.266602, 31.760950, 46.478661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.607964, 31.963327, 46.428513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298070, -0.276374, 0.913658,
		0.427612, -0.817090, -0.386667,
		0.853406, 0.505945, -0.125369,
		35.863987, 32.115112, 46.390903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.749031, 31.362764, 46.754745>,  <35.266602, 31.760950, 46.478661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.749031, 31.362764, 46.754745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.921028, 31.723879, 46.758316>,  <36.024227, 31.940548, 46.760460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.921028, 31.723879, 46.758316>,  <35.749031, 31.362764, 46.754745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.921028, 31.723879, 46.758316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301710, -0.153007, 0.941042,
		0.850927, -0.401949, -0.338173,
		0.429994, 0.902788, 0.008926,
		36.050026, 31.994715, 46.760994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.465618, 31.210316, 46.907383>,  <35.749031, 31.362764, 46.754745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.465618, 31.210316, 46.907383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.415581, 31.599693, 46.984074>,  <36.385559, 31.833321, 47.030087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.415581, 31.599693, 46.984074>,  <36.465618, 31.210316, 46.907383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.415581, 31.599693, 46.984074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282947, -0.150212, 0.947300,
		0.950943, 0.172749, -0.256643,
		-0.125094, 0.973444, 0.191722,
		36.378052, 31.891727, 47.041592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.039970, 31.472445, 47.186119>,  <36.465618, 31.210316, 46.907383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.039970, 31.472445, 47.186119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.767918, 31.732273, 47.322044>,  <36.604687, 31.888170, 47.403599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.767918, 31.732273, 47.322044>,  <37.039970, 31.472445, 47.186119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.767918, 31.732273, 47.322044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402536, -0.056491, 0.913659,
		0.612684, 0.758198, -0.223055,
		-0.680134, 0.649572, 0.339814,
		36.563877, 31.927145, 47.423988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.447525, 31.900333, 47.630318>,  <37.039970, 31.472445, 47.186119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.447525, 31.900333, 47.630318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.060162, 31.945545, 47.719231>,  <36.827744, 31.972672, 47.772579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.060162, 31.945545, 47.719231>,  <37.447525, 31.900333, 47.630318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.060162, 31.945545, 47.719231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224349, 0.005771, 0.974492,
		0.108863, 0.993575, -0.030947,
		-0.968409, 0.113029, 0.222279,
		36.769638, 31.979454, 47.785915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.428493, 32.474056, 48.146503>,  <37.447525, 31.900333, 47.630318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.428493, 32.474056, 48.146503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.073196, 32.292542, 48.175091>,  <36.860020, 32.183632, 48.192242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.073196, 32.292542, 48.175091>,  <37.428493, 32.474056, 48.146503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.073196, 32.292542, 48.175091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059905, 0.039823, 0.997409,
		-0.455459, 0.890219, -0.008188,
		-0.888239, -0.453788, 0.071467,
		36.806725, 32.156406, 48.196529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.187286, 32.863697, 48.628914>,  <37.428493, 32.474056, 48.146503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.187286, 32.863697, 48.628914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.003036, 32.509674, 48.655746>,  <36.892487, 32.297260, 48.671848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.003036, 32.509674, 48.655746>,  <37.187286, 32.863697, 48.628914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.003036, 32.509674, 48.655746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034485, 0.057678, 0.997740,
		-0.886924, 0.461899, 0.003953,
		-0.460627, -0.885055, 0.067084,
		36.864849, 32.244156, 48.675873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.685253, 32.982460, 49.103054>,  <37.187286, 32.863697, 48.628914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.685253, 32.982460, 49.103054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.719517, 32.584114, 49.090981>,  <36.740074, 32.345104, 49.083736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.719517, 32.584114, 49.090981>,  <36.685253, 32.982460, 49.103054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.719517, 32.584114, 49.090981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133713, -0.041508, 0.990150,
		-0.987311, -0.080784, -0.136716,
		0.085664, -0.995867, -0.030179,
		36.745216, 32.285355, 49.081928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.031094, 32.755157, 49.538670>,  <36.685253, 32.982460, 49.103054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.031094, 32.755157, 49.538670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.363518, 32.533157, 49.524185>,  <36.562973, 32.399960, 49.515495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.363518, 32.533157, 49.524185>,  <36.031094, 32.755157, 49.538670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.363518, 32.533157, 49.524185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058883, -0.152538, 0.986542,
		-0.553051, -0.817747, -0.159449,
		0.831064, -0.554997, -0.036210,
		36.612839, 32.366657, 49.513321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.061798, 32.446114, 50.158024>,  <36.031094, 32.755157, 49.538670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.061798, 32.446114, 50.158024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.407997, 32.315819, 50.005810>,  <36.615715, 32.237640, 49.914482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.407997, 32.315819, 50.005810>,  <36.061798, 32.446114, 50.158024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.407997, 32.315819, 50.005810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278265, -0.319025, 0.905976,
		-0.416516, -0.890008, -0.185472,
		0.865496, -0.325742, -0.380537,
		36.667645, 32.218098, 49.891647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.179707, 31.735867, 50.408104>,  <36.061798, 32.446114, 50.158024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.179707, 31.735867, 50.408104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.537727, 31.879957, 50.302944>,  <36.752541, 31.966412, 50.239849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.537727, 31.879957, 50.302944>,  <36.179707, 31.735867, 50.408104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.537727, 31.879957, 50.302944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334958, -0.153839, 0.929590,
		0.294417, -0.920093, -0.258354,
		0.895054, 0.360225, -0.262900,
		36.806244, 31.988026, 50.224075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660236, 31.317060, 50.673748>,  <36.179707, 31.735867, 50.408104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.660236, 31.317060, 50.673748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.899696, 31.632574, 50.617973>,  <37.043373, 31.821882, 50.584511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.899696, 31.632574, 50.617973>,  <36.660236, 31.317060, 50.673748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.899696, 31.632574, 50.617973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376491, -0.123435, 0.918160,
		0.707018, -0.602151, -0.370863,
		0.598649, 0.788783, -0.139434,
		37.079292, 31.869209, 50.576141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.435532, 31.036438, 50.769794>,  <36.660236, 31.317060, 50.673748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.435532, 31.036438, 50.769794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.432423, 31.434164, 50.812263>,  <37.430557, 31.672800, 50.837746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.432423, 31.434164, 50.812263>,  <37.435532, 31.036438, 50.769794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.432423, 31.434164, 50.812263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566583, -0.083110, 0.819803,
		0.823968, 0.066525, -0.562718,
		-0.007770, 0.994318, 0.106172,
		37.430092, 31.732460, 50.844116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.057663, 31.243191, 50.934399>,  <37.435532, 31.036438, 50.769794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.057663, 31.243191, 50.934399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.842327, 31.544289, 51.085960>,  <37.713123, 31.724947, 51.176895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.842327, 31.544289, 51.085960>,  <38.057663, 31.243191, 50.934399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.842327, 31.544289, 51.085960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459043, -0.115125, 0.880923,
		0.706730, 0.648170, -0.283564,
		-0.538342, 0.752743, 0.378900,
		37.680824, 31.770111, 51.199631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.516457, 31.755566, 51.241238>,  <38.057663, 31.243191, 50.934399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.516457, 31.755566, 51.241238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.148663, 31.763708, 51.398273>,  <37.927986, 31.768593, 51.492493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.148663, 31.763708, 51.398273>,  <38.516457, 31.755566, 51.241238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.148663, 31.763708, 51.398273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384171, -0.165280, 0.908347,
		0.083376, 0.986037, 0.144153,
		-0.919490, 0.020354, 0.392587,
		37.872814, 31.769814, 51.516048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.595028, 31.986340, 51.920242>,  <38.516457, 31.755566, 51.241238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.595028, 31.986340, 51.920242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.223701, 31.840500, 51.949356>,  <38.000904, 31.752996, 51.966824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.223701, 31.840500, 51.949356>,  <38.595028, 31.986340, 51.920242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.223701, 31.840500, 51.949356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159045, -0.212466, 0.964138,
		-0.336060, 0.906601, 0.255223,
		-0.928315, -0.364601, 0.072789,
		37.945206, 31.731119, 51.971191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.403053, 32.188934, 52.547844>,  <38.595028, 31.986340, 51.920242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.403053, 32.188934, 52.547844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.156353, 31.888067, 52.455013>,  <38.008331, 31.707548, 52.399315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.156353, 31.888067, 52.455013>,  <38.403053, 32.188934, 52.547844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.156353, 31.888067, 52.455013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284593, -0.487962, 0.825166,
		-0.733909, 0.442876, 0.515014,
		-0.616754, -0.752166, -0.232080,
		37.971329, 31.662416, 52.385387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.965130, 32.084850, 53.169922>,  <38.403053, 32.188934, 52.547844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.965130, 32.084850, 53.169922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.937740, 31.745775, 52.959496>,  <37.921307, 31.542332, 52.833241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.937740, 31.745775, 52.959496>,  <37.965130, 32.084850, 53.169922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.937740, 31.745775, 52.959496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190054, -0.528729, 0.827239,
		-0.979383, -0.043339, 0.197308,
		-0.068471, -0.847683, -0.526065,
		37.917198, 31.491470, 52.801678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.328182, 31.772329, 53.377846>,  <37.965130, 32.084850, 53.169922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.328182, 31.772329, 53.377846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.390827, 32.106094, 53.589214>,  <37.428413, 32.306355, 53.716034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.390827, 32.106094, 53.589214>,  <37.328182, 31.772329, 53.377846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.390827, 32.106094, 53.589214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490815, -0.398529, 0.774774,
		0.857072, -0.380697, 0.347128,
		0.156613, 0.834413, 0.528420,
		37.437813, 32.356419, 53.747742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.807858, 31.692459, 54.129265>,  <37.328182, 31.772329, 53.377846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.807858, 31.692459, 54.129265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.516235, 31.964590, 54.099247>,  <37.341263, 32.127869, 54.081238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.516235, 31.964590, 54.099247>,  <37.807858, 31.692459, 54.129265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.516235, 31.964590, 54.099247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369788, -0.299249, 0.879606,
		0.575963, 0.669033, 0.469746,
		-0.729056, 0.680327, -0.075044,
		37.297520, 32.168690, 54.076733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.553146, 31.258486, 54.730591>,  <37.807858, 31.692459, 54.129265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.553146, 31.258486, 54.730591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.551521, 30.875122, 54.844738>,  <37.550545, 30.645103, 54.913227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.551521, 30.875122, 54.844738>,  <37.553146, 31.258486, 54.730591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.551521, 30.875122, 54.844738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769675, -0.185186, -0.610988,
		0.638423, 0.217155, 0.738417,
		-0.004065, -0.958410, 0.285366,
		37.550301, 30.587599, 54.930347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.236927, 30.989799, 55.036583>,  <37.553146, 31.258486, 54.730591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.236927, 30.989799, 55.036583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.031643, 30.694345, 54.861752>,  <37.908474, 30.517073, 54.756855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.031643, 30.694345, 54.861752>,  <38.236927, 30.989799, 55.036583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.031643, 30.694345, 54.861752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805572, -0.238877, -0.542209,
		0.296088, -0.630362, 0.717618,
		-0.513211, -0.738634, -0.437074,
		37.877678, 30.472755, 54.730629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.610825, 30.273476, 55.071014>,  <38.236927, 30.989799, 55.036583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.610825, 30.273476, 55.071014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.383305, 30.257360, 54.742416>,  <38.246792, 30.247692, 54.545258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.383305, 30.257360, 54.742416>,  <38.610825, 30.273476, 55.071014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.383305, 30.257360, 54.742416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820558, -0.096025, -0.563439,
		-0.056182, -0.994563, 0.087680,
		-0.568795, -0.040291, -0.821492,
		38.212666, 30.245274, 54.495968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.105812, 29.867050, 54.758450>,  <38.610825, 30.273476, 55.071014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.105812, 29.867050, 54.758450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.367302, 30.052958, 54.519573>,  <39.524197, 30.164503, 54.376247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.367302, 30.052958, 54.519573>,  <39.105812, 29.867050, 54.758450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.367302, 30.052958, 54.519573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434008, -0.416202, -0.799008,
		-0.619906, 0.781514, -0.070366,
		0.653722, 0.464770, -0.597190,
		39.563419, 30.192389, 54.340416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.706245, 30.163788, 54.182964>,  <39.105812, 29.867050, 54.758450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.706245, 30.163788, 54.182964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.086014, 30.064680, 54.105808>,  <39.313877, 30.005217, 54.059513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.086014, 30.064680, 54.105808>,  <38.706245, 30.163788, 54.182964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.086014, 30.064680, 54.105808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271884, -0.341366, -0.899749,
		0.157083, 0.906686, -0.391465,
		0.949423, -0.247768, -0.192891,
		39.370842, 29.990349, 54.047939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.901917, 30.351986, 53.453941>,  <38.706245, 30.163788, 54.182964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.901917, 30.351986, 53.453941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.156139, 30.058187, 53.549091>,  <39.308674, 29.881908, 53.606182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.156139, 30.058187, 53.549091>,  <38.901917, 30.351986, 53.453941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.156139, 30.058187, 53.549091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154483, -0.422858, -0.892931,
		0.756443, 0.530759, -0.382217,
		0.635554, -0.734497, 0.237874,
		39.346806, 29.837839, 53.620453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.253834, 30.210108, 52.927364>,  <38.901917, 30.351986, 53.453941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.253834, 30.210108, 52.927364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.289463, 29.865768, 53.127766>,  <39.310841, 29.659164, 53.248005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.289463, 29.865768, 53.127766>,  <39.253834, 30.210108, 52.927364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.289463, 29.865768, 53.127766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341745, -0.498881, -0.796448,
		0.935562, -0.100273, -0.338628,
		0.089072, -0.860851, 0.501002,
		39.316185, 29.607513, 53.278065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.620480, 29.749165, 52.422169>,  <39.253834, 30.210108, 52.927364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.620480, 29.749165, 52.422169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.378468, 29.550615, 52.671181>,  <39.233261, 29.431486, 52.820587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.378468, 29.550615, 52.671181>,  <39.620480, 29.749165, 52.422169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.378468, 29.550615, 52.671181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422982, -0.462036, -0.779493,
		0.674553, -0.734939, 0.069588,
		-0.605032, -0.496375, 0.622534,
		39.196957, 29.401703, 52.857941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.711456, 29.024847, 52.244118>,  <39.620480, 29.749165, 52.422169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.711456, 29.024847, 52.244118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.368378, 29.145103, 52.410957>,  <39.162529, 29.217257, 52.511063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.368378, 29.145103, 52.410957>,  <39.711456, 29.024847, 52.244118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.368378, 29.145103, 52.410957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463381, -0.100467, -0.880445,
		-0.222795, -0.948430, 0.225482,
		-0.857695, 0.300643, 0.417101,
		39.111069, 29.235296, 52.536087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.226860, 28.578125, 52.174339>,  <39.711456, 29.024847, 52.244118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.226860, 28.578125, 52.174339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.031719, 28.927101, 52.185940>,  <38.914635, 29.136488, 52.192902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.031719, 28.927101, 52.185940>,  <39.226860, 28.578125, 52.174339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.031719, 28.927101, 52.185940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404580, -0.196541, -0.893133,
		-0.773506, -0.447455, 0.448856,
		-0.487856, 0.872442, 0.029006,
		38.885361, 29.188833, 52.194641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.455486, 28.486835, 51.997398>,  <39.226860, 28.578125, 52.174339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.455486, 28.486835, 51.997398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.583618, 28.846321, 51.877602>,  <38.660500, 29.062014, 51.805721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.583618, 28.846321, 51.877602>,  <38.455486, 28.486835, 51.997398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.583618, 28.846321, 51.877602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198200, -0.245573, -0.948899,
		-0.926339, 0.363324, 0.099460,
		0.320334, 0.898715, -0.299495,
		38.679718, 29.115936, 51.787754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.973484, 28.503004, 51.602383>,  <38.455486, 28.486835, 51.997398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.973484, 28.503004, 51.602383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.257481, 28.753428, 51.473412>,  <38.427879, 28.903683, 51.396030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.257481, 28.753428, 51.473412>,  <37.973484, 28.503004, 51.602383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.257481, 28.753428, 51.473412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220829, -0.236828, -0.946122,
		-0.668689, 0.742941, -0.029894,
		0.709993, 0.626060, -0.322427,
		38.470478, 28.941246, 51.376682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.668480, 28.908703, 51.039108>,  <37.973484, 28.503004, 51.602383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.668480, 28.908703, 51.039108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.068275, 28.917284, 51.029655>,  <38.308155, 28.922434, 51.023983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.068275, 28.917284, 51.029655>,  <37.668480, 28.908703, 51.039108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.068275, 28.917284, 51.029655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019691, -0.168264, -0.985545,
		-0.025121, 0.985508, -0.167756,
		0.999490, 0.021455, -0.023633,
		38.368122, 28.923721, 51.022564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.871288, 29.440872, 50.543571>,  <37.668480, 28.908703, 51.039108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.871288, 29.440872, 50.543571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.187290, 29.196289, 50.561520>,  <38.376892, 29.049540, 50.572289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.187290, 29.196289, 50.561520>,  <37.871288, 29.440872, 50.543571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.187290, 29.196289, 50.561520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019327, -0.097983, -0.995000,
		0.612798, 0.785186, -0.089225,
		0.790003, -0.611459, 0.044869,
		38.424290, 29.012852, 50.574982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.287910, 29.702686, 49.988129>,  <37.871288, 29.440872, 50.543571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.287910, 29.702686, 49.988129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.417316, 29.335827, 50.081230>,  <38.494961, 29.115711, 50.137089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.417316, 29.335827, 50.081230>,  <38.287910, 29.702686, 49.988129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.417316, 29.335827, 50.081230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145857, -0.194703, -0.969957,
		0.934913, 0.347746, 0.070783,
		0.323517, -0.917150, 0.232752,
		38.514370, 29.060682, 50.151054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.912186, 29.664902, 49.715160>,  <38.287910, 29.702686, 49.988129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.912186, 29.664902, 49.715160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.798607, 29.283331, 49.753937>,  <38.730457, 29.054388, 49.777203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.798607, 29.283331, 49.753937>,  <38.912186, 29.664902, 49.715160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.798607, 29.283331, 49.753937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405401, -0.211065, -0.889438,
		0.868920, -0.213255, 0.446655,
		-0.283951, -0.953925, 0.096945,
		38.713421, 28.997154, 49.783020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.513027, 29.177073, 49.524784>,  <38.912186, 29.664902, 49.715160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.513027, 29.177073, 49.524784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.195164, 28.941114, 49.467457>,  <39.004444, 28.799540, 49.433060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.195164, 28.941114, 49.467457>,  <39.513027, 29.177073, 49.524784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.195164, 28.941114, 49.467457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251250, -0.104690, -0.962244,
		0.552620, -0.800665, 0.231404,
		-0.794660, -0.589895, -0.143313,
		38.956764, 28.764147, 49.424461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.727898, 28.611315, 49.175335>,  <39.513027, 29.177073, 49.524784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.727898, 28.611315, 49.175335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.335659, 28.620880, 49.097504>,  <39.100315, 28.626619, 49.050804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.335659, 28.620880, 49.097504>,  <39.727898, 28.611315, 49.175335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.335659, 28.620880, 49.097504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184904, -0.216996, -0.958501,
		-0.065144, -0.975880, 0.208363,
		-0.980595, 0.023913, -0.194580,
		39.041481, 28.628054, 49.039131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.625889, 28.041183, 48.613583>,  <39.727898, 28.611315, 49.175335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.625889, 28.041183, 48.613583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.321331, 28.300388, 48.605949>,  <39.138596, 28.455912, 48.601372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.321331, 28.300388, 48.605949>,  <39.625889, 28.041183, 48.613583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.321331, 28.300388, 48.605949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015310, -0.011450, -0.999817,
		-0.648113, -0.761544, -0.001203,
		-0.761391, 0.648012, -0.019080,
		39.092915, 28.494793, 48.600224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.260166, 27.781155, 48.052650>,  <39.625889, 28.041183, 48.613583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.260166, 27.781155, 48.052650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.107563, 28.145681, 48.114563>,  <39.016003, 28.364397, 48.151711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.107563, 28.145681, 48.114563>,  <39.260166, 27.781155, 48.052650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.107563, 28.145681, 48.114563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139729, 0.108668, -0.984209,
		-0.913744, -0.397111, 0.085880,
		-0.381507, 0.911315, 0.154783,
		38.993111, 28.419075, 48.160999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.681137, 27.900942, 47.542072>,  <39.260166, 27.781155, 48.052650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.681137, 27.900942, 47.542072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.797413, 28.257187, 47.681961>,  <38.867180, 28.470934, 47.765896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.797413, 28.257187, 47.681961>,  <38.681137, 27.900942, 47.542072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.797413, 28.257187, 47.681961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022998, 0.358901, -0.933093,
		-0.956540, 0.279286, 0.083848,
		0.290693, 0.890612, 0.349726,
		38.884621, 28.524370, 47.786880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.258060, 28.471445, 47.102276>,  <38.681137, 27.900942, 47.542072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.258060, 28.471445, 47.102276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.569641, 28.677929, 47.244694>,  <38.756588, 28.801819, 47.330143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.569641, 28.677929, 47.244694>,  <38.258060, 28.471445, 47.102276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.569641, 28.677929, 47.244694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231215, 0.291343, -0.928256,
		-0.582907, 0.805385, 0.107585,
		0.778947, 0.516212, 0.356043,
		38.803326, 28.832792, 47.351505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.216843, 29.061562, 46.773773>,  <38.258060, 28.471445, 47.102276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.216843, 29.061562, 46.773773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.581490, 29.112108, 46.930225>,  <38.800278, 29.142437, 47.024097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.581490, 29.112108, 46.930225>,  <38.216843, 29.061562, 46.773773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.581490, 29.112108, 46.930225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291435, 0.472316, -0.831855,
		-0.289856, 0.872324, 0.393745,
		0.911619, 0.126367, 0.391129,
		38.854977, 29.150019, 47.047565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.327259, 29.806156, 46.823494>,  <38.216843, 29.061562, 46.773773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.327259, 29.806156, 46.823494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.654690, 29.582783, 46.769707>,  <38.851151, 29.448759, 46.737434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.654690, 29.582783, 46.769707>,  <38.327259, 29.806156, 46.823494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.654690, 29.582783, 46.769707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218668, 0.519447, -0.826050,
		0.531143, 0.646783, 0.547319,
		0.818579, -0.558432, -0.134470,
		38.900265, 29.415253, 46.729366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.932957, 30.248238, 46.764156>,  <38.327259, 29.806156, 46.823494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.932957, 30.248238, 46.764156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.063412, 29.912554, 46.590096>,  <39.141685, 29.711143, 46.485657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.063412, 29.912554, 46.590096>,  <38.932957, 30.248238, 46.764156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.063412, 29.912554, 46.590096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123538, 0.494215, -0.860517,
		0.937215, 0.226889, 0.264857,
		0.326139, -0.839210, -0.435156,
		39.161255, 29.660791, 46.459549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.623615, 30.389761, 46.337627>,  <38.932957, 30.248238, 46.764156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.623615, 30.389761, 46.337627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.456604, 30.061333, 46.181927>,  <39.356396, 29.864277, 46.088505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.456604, 30.061333, 46.181927>,  <39.623615, 30.389761, 46.337627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.456604, 30.061333, 46.181927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098234, 0.385079, -0.917640,
		0.903338, -0.421379, -0.080125,
		-0.417529, -0.821068, -0.389250,
		39.331345, 29.815012, 46.065151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.945744, 30.242704, 45.631748>,  <39.623615, 30.389761, 46.337627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.945744, 30.242704, 45.631748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.622570, 30.009443, 45.597858>,  <39.428665, 29.869488, 45.577526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.622570, 30.009443, 45.597858>,  <39.945744, 30.242704, 45.631748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.622570, 30.009443, 45.597858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145138, 0.336276, -0.930512,
		0.571121, -0.739495, -0.356326,
		-0.807933, -0.583152, -0.084725,
		39.380192, 29.834497, 45.572441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.038212, 29.881899, 44.984783>,  <39.945744, 30.242704, 45.631748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.038212, 29.881899, 44.984783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.648224, 29.869802, 45.072891>,  <39.414230, 29.862545, 45.125755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.648224, 29.869802, 45.072891>,  <40.038212, 29.881899, 44.984783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.648224, 29.869802, 45.072891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216444, 0.355720, -0.909184,
		-0.050861, -0.934103, -0.353361,
		-0.974969, -0.030241, 0.220274,
		39.355732, 29.860729, 45.138973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.786243, 29.482050, 44.442680>,  <40.038212, 29.881899, 44.984783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.786243, 29.482050, 44.442680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.489983, 29.696222, 44.605038>,  <39.312225, 29.824726, 44.702454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.489983, 29.696222, 44.605038>,  <39.786243, 29.482050, 44.442680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.489983, 29.696222, 44.605038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390771, 0.148157, -0.908487,
		-0.546566, -0.831484, 0.099498,
		-0.740650, 0.535429, 0.405897,
		39.267788, 29.856852, 44.726807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.312984, 29.294304, 44.041012>,  <39.786243, 29.482050, 44.442680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.312984, 29.294304, 44.041012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.121777, 29.608273, 44.198692>,  <39.007053, 29.796654, 44.293301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.121777, 29.608273, 44.198692>,  <39.312984, 29.294304, 44.041012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.121777, 29.608273, 44.198692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457318, 0.160758, -0.874652,
		-0.749905, -0.598376, 0.282114,
		-0.478019, 0.784922, 0.394201,
		38.978371, 29.843750, 44.316952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.679619, 29.278280, 43.639641>,  <39.312984, 29.294304, 44.041012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.679619, 29.278280, 43.639641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.729591, 29.643267, 43.795486>,  <38.759575, 29.862259, 43.888996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.729591, 29.643267, 43.795486>,  <38.679619, 29.278280, 43.639641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.729591, 29.643267, 43.795486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487391, 0.398484, -0.776956,
		-0.864201, -0.092831, 0.494509,
		0.124928, 0.912465, 0.389616,
		38.767071, 29.917006, 43.912373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.993671, 29.500355, 43.601952>,  <38.679619, 29.278280, 43.639641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.993671, 29.500355, 43.601952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.227139, 29.824743, 43.618252>,  <38.367218, 30.019377, 43.628033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.227139, 29.824743, 43.618252>,  <37.993671, 29.500355, 43.601952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.227139, 29.824743, 43.618252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448955, 0.364122, -0.815999,
		-0.676589, 0.457977, 0.576615,
		0.583667, 0.810970, 0.040750,
		38.402237, 30.068035, 43.630478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.556656, 29.985039, 43.591061>,  <37.993671, 29.500355, 43.601952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.556656, 29.985039, 43.591061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.901196, 30.142368, 43.462448>,  <38.107918, 30.236767, 43.385281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.901196, 30.142368, 43.462448>,  <37.556656, 29.985039, 43.591061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.901196, 30.142368, 43.462448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465896, 0.359243, -0.808631,
		-0.202547, 0.846310, 0.492681,
		0.861345, 0.393324, -0.321529,
		38.159599, 30.260366, 43.365990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.343311, 30.649597, 43.417160>,  <37.556656, 29.985039, 43.591061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.343311, 30.649597, 43.417160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.702366, 30.609686, 43.245441>,  <37.917797, 30.585739, 43.142410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.702366, 30.609686, 43.245441>,  <37.343311, 30.649597, 43.417160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.702366, 30.609686, 43.245441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371276, 0.353691, -0.858520,
		0.237500, 0.930025, 0.280440,
		0.897634, -0.099778, -0.429298,
		37.971657, 30.579752, 43.116653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.472500, 31.256512, 43.032295>,  <37.343311, 30.649597, 43.417160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.472500, 31.256512, 43.032295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.721680, 30.991838, 42.865387>,  <37.871189, 30.833035, 42.765244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.721680, 30.991838, 42.865387>,  <37.472500, 31.256512, 43.032295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.721680, 30.991838, 42.865387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226889, 0.357651, -0.905874,
		0.748635, 0.658987, 0.072670,
		0.622950, -0.661681, -0.417267,
		37.908566, 30.793335, 42.740208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.934879, 31.572691, 42.513523>,  <37.472500, 31.256512, 43.032295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.934879, 31.572691, 42.513523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.901936, 31.190575, 42.399940>,  <37.882172, 30.961304, 42.331791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.901936, 31.190575, 42.399940>,  <37.934879, 31.572691, 42.513523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.901936, 31.190575, 42.399940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243350, 0.295579, -0.923804,
		0.966436, -0.006979, -0.256813,
		-0.082356, -0.955293, -0.283960,
		37.877228, 30.903986, 42.314751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.166756, 31.613930, 41.874081>,  <37.934879, 31.572691, 42.513523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.166756, 31.613930, 41.874081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.943863, 31.282757, 41.899460>,  <37.810127, 31.084053, 41.914688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.943863, 31.282757, 41.899460>,  <38.166756, 31.613930, 41.874081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.943863, 31.282757, 41.899460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330105, 0.150767, -0.931826,
		0.761922, -0.540186, -0.357315,
		-0.557231, -0.827931, 0.063445,
		37.776695, 31.034378, 41.918495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.296188, 31.265238, 41.320015>,  <38.166756, 31.613930, 41.874081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.296188, 31.265238, 41.320015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.971893, 31.057251, 41.427605>,  <37.777317, 30.932459, 41.492157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.971893, 31.057251, 41.427605>,  <38.296188, 31.265238, 41.320015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.971893, 31.057251, 41.427605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367997, 0.095334, -0.924927,
		0.455288, -0.848850, -0.268636,
		-0.810735, -0.519966, 0.268970,
		37.728672, 30.901260, 41.508297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.308990, 30.666630, 40.924431>,  <38.296188, 31.265238, 41.320015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.308990, 30.666630, 40.924431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.935230, 30.742813, 41.044846>,  <37.710976, 30.788523, 41.117092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.935230, 30.742813, 41.044846>,  <38.308990, 30.666630, 40.924431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.935230, 30.742813, 41.044846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308245, -0.008726, -0.951267,
		-0.178553, -0.981656, 0.066863,
		-0.934400, 0.190461, 0.301033,
		37.654911, 30.799952, 41.135155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.978027, 30.007364, 40.688614>,  <38.308990, 30.666630, 40.924431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.978027, 30.007364, 40.688614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.670567, 30.258835, 40.735832>,  <37.486088, 30.409718, 40.764164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.670567, 30.258835, 40.735832>,  <37.978027, 30.007364, 40.688614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.670567, 30.258835, 40.735832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401705, -0.330803, -0.853934,
		-0.497801, -0.703798, 0.506816,
		-0.768653, 0.628680, 0.118045,
		37.439972, 30.447439, 40.771248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410114, 29.650902, 40.436543>,  <37.978027, 30.007364, 40.688614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.410114, 29.650902, 40.436543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.339622, 30.043991, 40.413937>,  <37.297329, 30.279844, 40.400372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.339622, 30.043991, 40.413937>,  <37.410114, 29.650902, 40.436543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.339622, 30.043991, 40.413937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390940, -0.122569, -0.912218,
		-0.903387, -0.138664, 0.405787,
		-0.176229, 0.982725, -0.056518,
		37.286755, 30.338808, 40.396980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.804829, 29.693419, 40.060356>,  <37.410114, 29.650902, 40.436543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.804829, 29.693419, 40.060356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.890514, 30.084066, 40.053082>,  <36.941925, 30.318455, 40.048717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.890514, 30.084066, 40.053082>,  <36.804829, 29.693419, 40.060356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.890514, 30.084066, 40.053082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304399, 0.049051, -0.951281,
		-0.928146, 0.209312, 0.307789,
		0.214212, 0.976618, -0.018188,
		36.954777, 30.377052, 40.047626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.114700, 30.030027, 39.885422>,  <36.804829, 29.693419, 40.060356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.114700, 30.030027, 39.885422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.446491, 30.241917, 39.814587>,  <36.645565, 30.369049, 39.772083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.446491, 30.241917, 39.814587>,  <36.114700, 30.030027, 39.885422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.446491, 30.241917, 39.814587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241505, 0.054261, -0.968881,
		-0.503629, 0.846434, 0.172939,
		0.829478, 0.529722, -0.177091,
		36.695335, 30.400833, 39.761459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.815285, 30.618484, 39.541756>,  <36.114700, 30.030027, 39.885422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.815285, 30.618484, 39.541756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.208317, 30.595690, 39.470989>,  <36.444134, 30.582012, 39.428532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.208317, 30.595690, 39.470989>,  <35.815285, 30.618484, 39.541756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.208317, 30.595690, 39.470989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141780, 0.385671, -0.911678,
		0.120183, 0.920875, 0.370871,
		0.982575, -0.056987, -0.176913,
		36.503090, 30.578594, 39.417915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.990494, 31.318916, 39.264694>,  <35.815285, 30.618484, 39.541756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.990494, 31.318916, 39.264694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.271839, 31.054562, 39.160000>,  <36.440647, 30.895948, 39.097183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.271839, 31.054562, 39.160000>,  <35.990494, 31.318916, 39.264694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.271839, 31.054562, 39.160000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035770, 0.400649, -0.915533,
		0.709926, 0.634594, 0.305443,
		0.703367, -0.660887, -0.261732,
		36.482849, 30.856295, 39.081482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.455303, 31.763124, 38.877079>,  <35.990494, 31.318916, 39.264694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.455303, 31.763124, 38.877079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.534550, 31.387129, 38.765965>,  <36.582100, 31.161531, 38.699295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.534550, 31.387129, 38.765965>,  <36.455303, 31.763124, 38.877079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.534550, 31.387129, 38.765965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129906, 0.255726, -0.957982,
		0.971532, 0.225880, -0.071446,
		0.198118, -0.939991, -0.277789,
		36.593987, 31.105131, 38.682629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.900055, 31.759054, 38.280972>,  <36.455303, 31.763124, 38.877079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.900055, 31.759054, 38.280972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.717102, 31.403360, 38.284199>,  <36.607330, 31.189943, 38.286137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.717102, 31.403360, 38.284199>,  <36.900055, 31.759054, 38.280972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.717102, 31.403360, 38.284199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067615, 0.025728, -0.997380,
		0.886696, -0.456728, -0.071893,
		-0.457381, -0.889234, 0.008069,
		36.579887, 31.136591, 38.286621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.355602, 31.186316, 37.971165>,  <36.900055, 31.759054, 38.280972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.355602, 31.186316, 37.971165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.963642, 31.122099, 37.923809>,  <36.728466, 31.083569, 37.895397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.963642, 31.122099, 37.923809>,  <37.355602, 31.186316, 37.971165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.963642, 31.122099, 37.923809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103476, 0.098287, -0.989764,
		0.170536, -0.982123, -0.079700,
		-0.979903, -0.160543, -0.118388,
		36.669670, 31.073936, 37.888294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.357239, 30.668215, 37.535393>,  <37.355602, 31.186316, 37.971165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.357239, 30.668215, 37.535393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.008293, 30.861094, 37.503235>,  <36.798923, 30.976820, 37.483940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.008293, 30.861094, 37.503235>,  <37.357239, 30.668215, 37.535393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.008293, 30.861094, 37.503235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211251, 0.223549, -0.951525,
		-0.440850, -0.847062, -0.296881,
		-0.872368, 0.482196, -0.080391,
		36.746582, 31.005753, 37.479118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.124508, 30.322985, 37.488716>,  <37.357239, 30.668215, 37.535393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.124508, 30.322985, 37.488716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.367722, 30.635757, 37.433758>,  <38.513649, 30.823421, 37.400784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.367722, 30.635757, 37.433758>,  <38.124508, 30.322985, 37.488716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.367722, 30.635757, 37.433758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675622, -0.418743, 0.606786,
		0.416931, -0.461776, -0.782899,
		0.608033, 0.781932, -0.137399,
		38.550133, 30.870337, 37.392536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.765800, 30.053440, 37.329430>,  <38.124508, 30.322985, 37.488716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.765800, 30.053440, 37.329430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.839134, 30.421648, 37.467434>,  <38.883137, 30.642572, 37.550236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.839134, 30.421648, 37.467434>,  <38.765800, 30.053440, 37.329430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.839134, 30.421648, 37.467434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648365, -0.377027, 0.661418,
		0.738926, 0.102428, -0.665956,
		0.183336, 0.920521, 0.345006,
		38.894135, 30.697803, 37.570934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.466103, 30.003717, 37.342014>,  <38.765800, 30.053440, 37.329430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.466103, 30.003717, 37.342014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.405449, 30.334002, 37.559345>,  <39.369057, 30.532173, 37.689743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.405449, 30.334002, 37.559345>,  <39.466103, 30.003717, 37.342014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.405449, 30.334002, 37.559345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682447, -0.310181, 0.661856,
		0.715032, 0.471157, -0.516469,
		-0.151639, 0.825711, 0.543329,
		39.359959, 30.581715, 37.722343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.094311, 30.287714, 37.571175>,  <39.466103, 30.003717, 37.342014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.094311, 30.287714, 37.571175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.815418, 30.427086, 37.821762>,  <39.648083, 30.510710, 37.972115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.815418, 30.427086, 37.821762>,  <40.094311, 30.287714, 37.571175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.815418, 30.427086, 37.821762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550893, -0.298743, 0.779275,
		0.458675, 0.888454, 0.016346,
		-0.697233, 0.348429, 0.626469,
		39.606247, 30.531614, 38.009705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.487175, 30.752806, 38.144043>,  <40.094311, 30.287714, 37.571175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.487175, 30.752806, 38.144043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.131577, 30.659437, 38.301624>,  <39.918217, 30.603416, 38.396175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.131577, 30.659437, 38.301624>,  <40.487175, 30.752806, 38.144043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.131577, 30.659437, 38.301624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424907, -0.099760, 0.899723,
		-0.170715, 0.967244, 0.187869,
		-0.888994, -0.233423, 0.393958,
		39.864880, 30.589411, 38.419811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.472446, 31.286394, 38.740307>,  <40.487175, 30.752806, 38.144043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.472446, 31.286394, 38.740307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.222614, 30.981110, 38.806534>,  <40.072716, 30.797939, 38.846272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.222614, 30.981110, 38.806534>,  <40.472446, 31.286394, 38.740307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.222614, 30.981110, 38.806534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371466, -0.103839, 0.922621,
		-0.686961, 0.637752, 0.348362,
		-0.624578, -0.763210, 0.165570,
		40.035240, 30.752146, 38.856205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.139122, 31.360043, 39.399612>,  <40.472446, 31.286394, 38.740307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.139122, 31.360043, 39.399612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.115189, 30.963818, 39.350285>,  <40.100830, 30.726082, 39.320686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.115189, 30.963818, 39.350285>,  <40.139122, 31.360043, 39.399612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.115189, 30.963818, 39.350285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417526, -0.137050, 0.898270,
		-0.906693, 0.002258, 0.421785,
		-0.059834, -0.990562, -0.123319,
		40.097237, 30.666649, 39.313290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.691299, 31.084585, 39.947521>,  <40.139122, 31.360043, 39.399612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.691299, 31.084585, 39.947521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.929497, 30.782784, 39.837162>,  <40.072414, 30.601704, 39.770947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.929497, 30.782784, 39.837162>,  <39.691299, 31.084585, 39.947521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.929497, 30.782784, 39.837162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379048, -0.038914, 0.924559,
		-0.708319, -0.655141, 0.262820,
		0.595489, -0.754503, -0.275894,
		40.108143, 30.556433, 39.754395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.828758, 30.877329, 40.539371>,  <39.691299, 31.084585, 39.947521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.828758, 30.877329, 40.539371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.067760, 30.633713, 40.330734>,  <40.211163, 30.487543, 40.205551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.067760, 30.633713, 40.330734>,  <39.828758, 30.877329, 40.539371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.067760, 30.633713, 40.330734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388397, -0.349256, 0.852741,
		-0.701521, -0.712104, 0.027866,
		0.597508, -0.609039, -0.521590,
		40.247013, 30.451000, 40.174259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.792610, 30.269857, 40.957050>,  <39.828758, 30.877329, 40.539371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.792610, 30.269857, 40.957050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.140636, 30.198059, 40.773415>,  <40.349453, 30.154980, 40.663235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.140636, 30.198059, 40.773415>,  <39.792610, 30.269857, 40.957050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.140636, 30.198059, 40.773415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390953, -0.315976, 0.864474,
		-0.300231, -0.931633, -0.204746,
		0.870067, -0.179495, -0.459090,
		40.401657, 30.144211, 40.635689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.959969, 29.634470, 41.187481>,  <39.792610, 30.269857, 40.957050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.959969, 29.634470, 41.187481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.309559, 29.787012, 41.066986>,  <40.519314, 29.878536, 40.994690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.309559, 29.787012, 41.066986>,  <39.959969, 29.634470, 41.187481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.309559, 29.787012, 41.066986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427490, -0.308468, 0.849764,
		0.231140, -0.871445, -0.432617,
		0.873972, 0.381354, -0.301235,
		40.571751, 29.901419, 40.976616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.507092, 29.110226, 41.352844>,  <39.959969, 29.634470, 41.187481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.507092, 29.110226, 41.352844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.679039, 29.467640, 41.300983>,  <40.782207, 29.682089, 41.269867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.679039, 29.467640, 41.300983>,  <40.507092, 29.110226, 41.352844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.679039, 29.467640, 41.300983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585979, -0.166843, 0.792964,
		0.686908, -0.416845, -0.595313,
		0.429867, 0.893534, -0.129657,
		40.807999, 29.735701, 41.262085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.227489, 28.950541, 41.460827>,  <40.507092, 29.110226, 41.352844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.227489, 28.950541, 41.460827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.151394, 29.337690, 41.526588>,  <41.105736, 29.569981, 41.566044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.151394, 29.337690, 41.526588>,  <41.227489, 28.950541, 41.460827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.151394, 29.337690, 41.526588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525081, -0.041179, 0.850055,
		0.829516, 0.248041, -0.500378,
		-0.190244, 0.967874, 0.164400,
		41.094322, 29.628052, 41.575909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.773216, 29.200272, 41.514648>,  <41.227489, 28.950541, 41.460827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.773216, 29.200272, 41.514648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.536934, 29.454836, 41.713058>,  <41.395164, 29.607574, 41.832104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.536934, 29.454836, 41.713058>,  <41.773216, 29.200272, 41.514648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.536934, 29.454836, 41.713058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552875, -0.128516, 0.823294,
		0.587702, 0.760567, -0.275941,
		-0.590708, 0.636412, 0.496028,
		41.359722, 29.645760, 41.861866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.222263, 29.682842, 41.921329>,  <41.773216, 29.200272, 41.514648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.222263, 29.682842, 41.921329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.860401, 29.701538, 42.090755>,  <41.643284, 29.712755, 42.192410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.860401, 29.701538, 42.090755>,  <42.222263, 29.682842, 41.921329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.860401, 29.701538, 42.090755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413966, -0.139437, 0.899549,
		0.101107, 0.989127, 0.106794,
		-0.904660, 0.046742, 0.423563,
		41.589005, 29.715561, 42.217823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.337402, 30.162169, 42.529255>,  <42.222263, 29.682842, 41.921329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.337402, 30.162169, 42.529255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.993919, 29.973217, 42.608730>,  <41.787830, 29.859846, 42.656414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.993919, 29.973217, 42.608730>,  <42.337402, 30.162169, 42.529255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.993919, 29.973217, 42.608730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194252, 0.058736, 0.979192,
		-0.474221, 0.879436, 0.041323,
		-0.858709, -0.472380, 0.198686,
		41.736305, 29.831503, 42.668335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.996647, 30.516960, 43.094242>,  <42.337402, 30.162169, 42.529255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.996647, 30.516960, 43.094242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.810223, 30.163504, 43.111984>,  <41.698368, 29.951429, 43.122631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.810223, 30.163504, 43.111984>,  <41.996647, 30.516960, 43.094242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.810223, 30.163504, 43.111984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030263, 0.034187, 0.998957,
		-0.884234, 0.466918, 0.010808,
		-0.466062, -0.883639, 0.044360,
		41.670403, 29.898413, 43.125294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.479271, 30.623322, 43.536053>,  <41.996647, 30.516960, 43.094242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.479271, 30.623322, 43.536053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.517460, 30.226194, 43.507202>,  <41.540375, 29.987919, 43.489891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.517460, 30.226194, 43.507202>,  <41.479271, 30.623322, 43.536053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.517460, 30.226194, 43.507202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003396, -0.072131, 0.997389,
		-0.995426, -0.095470, -0.003515,
		0.095474, -0.992815, -0.072125,
		41.546101, 29.928350, 43.485565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.168083, 30.485126, 44.145821>,  <41.479271, 30.623322, 43.536053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.168083, 30.485126, 44.145821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.342651, 30.135950, 44.058632>,  <41.447392, 29.926445, 44.006317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.342651, 30.135950, 44.058632>,  <41.168083, 30.485126, 44.145821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.342651, 30.135950, 44.058632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136880, -0.303856, 0.942834,
		-0.889269, -0.381639, -0.252098,
		0.436423, -0.872939, -0.217971,
		41.473579, 29.874069, 43.993240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.777222, 29.774548, 44.281410>,  <41.168083, 30.485126, 44.145821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.777222, 29.774548, 44.281410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.169170, 29.706882, 44.323799>,  <41.404339, 29.666283, 44.349232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.169170, 29.706882, 44.323799>,  <40.777222, 29.774548, 44.281410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.169170, 29.706882, 44.323799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165055, -0.388082, 0.906724,
		-0.112260, -0.905967, -0.408193,
		0.979874, -0.169163, 0.105969,
		41.463131, 29.656134, 44.355591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.756851, 29.228853, 44.691917>,  <40.777222, 29.774548, 44.281410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.756851, 29.228853, 44.691917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.137688, 29.341108, 44.740517>,  <41.366188, 29.408463, 44.769676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.137688, 29.341108, 44.740517>,  <40.756851, 29.228853, 44.691917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.137688, 29.341108, 44.740517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012806, -0.360362, 0.932724,
		0.305544, -0.889595, -0.339504,
		0.952092, 0.280640, 0.121499,
		41.423317, 29.425301, 44.776966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.000874, 28.696718, 45.258823>,  <40.756851, 29.228853, 44.691917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.000874, 28.696718, 45.258823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.279663, 28.983347, 45.269775>,  <41.446938, 29.155325, 45.276348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.279663, 28.983347, 45.269775>,  <41.000874, 28.696718, 45.258823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.279663, 28.983347, 45.269775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178925, -0.210758, 0.961024,
		0.694415, -0.664909, -0.275106,
		0.696975, 0.716573, 0.027384,
		41.488754, 29.198318, 45.277992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.479271, 28.500381, 45.680794>,  <41.000874, 28.696718, 45.258823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.479271, 28.500381, 45.680794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.550903, 28.892826, 45.710037>,  <41.593884, 29.128294, 45.727585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.550903, 28.892826, 45.710037>,  <41.479271, 28.500381, 45.680794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.550903, 28.892826, 45.710037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306936, -0.126316, 0.943311,
		0.934729, -0.146494, -0.323760,
		0.179085, 0.981114, 0.073108,
		41.604630, 29.187160, 45.731968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.076740, 28.564032, 46.196671>,  <41.479271, 28.500381, 45.680794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.076740, 28.564032, 46.196671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.900986, 28.920027, 46.147903>,  <41.795532, 29.133623, 46.118645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.900986, 28.920027, 46.147903>,  <42.076740, 28.564032, 46.196671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.900986, 28.920027, 46.147903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052621, 0.160986, 0.985553,
		0.896755, 0.426625, -0.117567,
		-0.439388, 0.889986, -0.121916,
		41.769169, 29.187023, 46.111328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.443157, 29.065695, 46.656750>,  <42.076740, 28.564032, 46.196671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.443157, 29.065695, 46.656750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.104679, 29.269077, 46.592964>,  <41.901592, 29.391108, 46.554695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.104679, 29.269077, 46.592964>,  <42.443157, 29.065695, 46.656750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.104679, 29.269077, 46.592964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031222, 0.346036, 0.937701,
		0.531961, 0.788498, -0.308689,
		-0.846193, 0.508458, -0.159459,
		41.850822, 29.421616, 46.545128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.503880, 29.717836, 47.074001>,  <42.443157, 29.065695, 46.656750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.503880, 29.717836, 47.074001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.118347, 29.653023, 46.989361>,  <41.887028, 29.614134, 46.938576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.118347, 29.653023, 46.989361>,  <42.503880, 29.717836, 47.074001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.118347, 29.653023, 46.989361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223169, 0.056690, 0.973130,
		-0.145687, 0.985155, -0.090801,
		-0.963831, -0.162036, -0.211597,
		41.829197, 29.604412, 46.925880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.250160, 30.219509, 47.468739>,  <42.503880, 29.717836, 47.074001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.250160, 30.219509, 47.468739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.968060, 29.951000, 47.377518>,  <41.798798, 29.789894, 47.322784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.968060, 29.951000, 47.377518>,  <42.250160, 30.219509, 47.468739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.968060, 29.951000, 47.377518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250020, -0.065508, 0.966022,
		-0.663403, 0.738310, -0.121632,
		-0.705256, -0.671272, -0.228050,
		41.756481, 29.749619, 47.309101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.639893, 30.468801, 47.713139>,  <42.250160, 30.219509, 47.468739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.639893, 30.468801, 47.713139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.640785, 30.068878, 47.720901>,  <41.641319, 29.828924, 47.725559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.640785, 30.068878, 47.720901>,  <41.639893, 30.468801, 47.713139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.640785, 30.068878, 47.720901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373203, 0.017172, 0.927591,
		-0.927747, -0.009310, -0.373093,
		0.002229, -0.999809, 0.019406,
		41.641453, 29.768936, 47.726723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.108459, 30.400890, 48.245811>,  <41.639893, 30.468801, 47.713139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.108459, 30.400890, 48.245811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.296047, 30.048779, 48.217037>,  <41.408600, 29.837511, 48.199772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.296047, 30.048779, 48.217037>,  <41.108459, 30.400890, 48.245811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.296047, 30.048779, 48.217037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001060, -0.080889, 0.996723,
		-0.883213, -0.467511, -0.037001,
		0.468972, -0.880279, -0.071937,
		41.436737, 29.784695, 48.195457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.699406, 30.008465, 48.640549>,  <41.108459, 30.400890, 48.245811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.699406, 30.008465, 48.640549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.052059, 29.830276, 48.578217>,  <41.263649, 29.723364, 48.540817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.052059, 29.830276, 48.578217>,  <40.699406, 30.008465, 48.640549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.052059, 29.830276, 48.578217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040185, -0.258140, 0.965271,
		-0.470226, -0.857275, -0.209683,
		0.881630, -0.445470, -0.155833,
		41.316547, 29.696636, 48.531467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.636372, 29.299799, 48.954254>,  <40.699406, 30.008465, 48.640549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.636372, 29.299799, 48.954254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.030941, 29.357937, 48.923687>,  <41.267685, 29.392820, 48.905346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.030941, 29.357937, 48.923687>,  <40.636372, 29.299799, 48.954254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.030941, 29.357937, 48.923687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106770, -0.214097, 0.970959,
		0.124762, -0.965938, -0.226709,
		0.986425, 0.145345, -0.076423,
		41.326870, 29.401541, 48.900761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.980141, 28.643770, 49.252331>,  <40.636372, 29.299799, 48.954254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.980141, 28.643770, 49.252331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.232384, 28.953035, 49.279327>,  <41.383728, 29.138594, 49.295525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.232384, 28.953035, 49.279327>,  <40.980141, 28.643770, 49.252331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.232384, 28.953035, 49.279327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149407, -0.206271, 0.967021,
		0.761585, -0.599728, -0.245592,
		0.630608, 0.773162, 0.067489,
		41.421566, 29.184984, 49.299576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.662155, 28.424738, 49.400482>,  <40.980141, 28.643770, 49.252331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.662155, 28.424738, 49.400482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.677948, 28.803104, 49.529282>,  <41.687424, 29.030125, 49.606564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.677948, 28.803104, 49.529282>,  <41.662155, 28.424738, 49.400482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.677948, 28.803104, 49.529282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267238, -0.320509, 0.908767,
		0.962821, 0.050175, -0.265438,
		0.039478, 0.945915, 0.322002,
		41.689793, 29.086880, 49.625881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.215042, 28.387398, 49.844280>,  <41.662155, 28.424738, 49.400482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.215042, 28.387398, 49.844280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.035168, 28.735840, 49.923222>,  <41.927242, 28.944906, 49.970589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.035168, 28.735840, 49.923222>,  <42.215042, 28.387398, 49.844280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.035168, 28.735840, 49.923222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338690, -0.038153, 0.940124,
		0.826479, 0.489608, -0.277878,
		-0.449691, 0.871108, 0.197358,
		41.900261, 28.997171, 49.982430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.667274, 28.801126, 50.355171>,  <42.215042, 28.387398, 49.844280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.667274, 28.801126, 50.355171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.306480, 28.968201, 50.398918>,  <42.090004, 29.068445, 50.425167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.306480, 28.968201, 50.398918>,  <42.667274, 28.801126, 50.355171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.306480, 28.968201, 50.398918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087477, -0.071264, 0.993614,
		0.422814, 0.905792, 0.027741,
		-0.901984, 0.417687, 0.109368,
		42.035885, 29.093508, 50.431728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.836544, 29.450115, 50.694393>,  <42.667274, 28.801126, 50.355171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.836544, 29.450115, 50.694393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.464245, 29.321714, 50.764431>,  <42.240864, 29.244673, 50.806454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.464245, 29.321714, 50.764431>,  <42.836544, 29.450115, 50.694393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.464245, 29.321714, 50.764431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185123, -0.000736, 0.982715,
		-0.315326, 0.947078, 0.060110,
		-0.930752, -0.321004, 0.175094,
		42.185020, 29.225412, 50.816959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.760628, 29.781618, 51.285675>,  <42.836544, 29.450115, 50.694393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.760628, 29.781618, 51.285675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.442841, 29.540808, 51.253727>,  <42.252167, 29.396322, 51.234558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.442841, 29.540808, 51.253727>,  <42.760628, 29.781618, 51.285675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.442841, 29.540808, 51.253727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117475, 0.023321, 0.992802,
		-0.595830, 0.798136, -0.089250,
		-0.794472, -0.602026, -0.079866,
		42.204498, 29.360201, 51.229767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.451736, 30.316837, 51.757019>,  <42.760628, 29.781618, 51.285675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.451736, 30.316837, 51.757019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.530926, 30.696375, 51.855412>,  <42.578438, 30.924097, 51.914448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.530926, 30.696375, 51.855412>,  <42.451736, 30.316837, 51.757019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.530926, 30.696375, 51.855412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424665, 0.309196, -0.850916,
		-0.883441, 0.063999, 0.464152,
		0.197972, 0.948842, 0.245978,
		42.590317, 30.981028, 51.929207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.914745, 30.772156, 51.556709>,  <42.451736, 30.316837, 51.757019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.914745, 30.772156, 51.556709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.250835, 30.989042, 51.554691>,  <42.452488, 31.119175, 51.553478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.250835, 30.989042, 51.554691>,  <41.914745, 30.772156, 51.556709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.250835, 30.989042, 51.554691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220024, 0.332414, -0.917110,
		-0.495596, 0.771687, 0.398602,
		0.840223, 0.542218, -0.005047,
		42.502903, 31.151707, 51.553177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.740978, 31.355457, 51.286728>,  <41.914745, 30.772156, 51.556709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.740978, 31.355457, 51.286728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.137917, 31.390057, 51.251453>,  <42.376080, 31.410816, 51.230289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.137917, 31.390057, 51.251453>,  <41.740978, 31.355457, 51.286728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.137917, 31.390057, 51.251453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117832, 0.448676, -0.885893,
		-0.037062, 0.889499, 0.455432,
		0.992342, 0.086498, -0.088183,
		42.435619, 31.416006, 51.224998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.843063, 32.017559, 50.953041>,  <41.740978, 31.355457, 51.286728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.843063, 32.017559, 50.953041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.190727, 31.825848, 50.904305>,  <42.399326, 31.710819, 50.875061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.190727, 31.825848, 50.904305>,  <41.843063, 32.017559, 50.953041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.190727, 31.825848, 50.904305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118528, 0.441101, -0.889596,
		0.480113, 0.758761, 0.440197,
		0.869162, -0.479283, -0.121844,
		42.451477, 31.682062, 50.867752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.312710, 32.520267, 50.769257>,  <41.843063, 32.017559, 50.953041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.312710, 32.520267, 50.769257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.477287, 32.178062, 50.643524>,  <42.576035, 31.972738, 50.568085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.477287, 32.178062, 50.643524>,  <42.312710, 32.520267, 50.769257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.477287, 32.178062, 50.643524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202478, 0.422054, -0.883670,
		0.888660, 0.299935, 0.346875,
		0.411444, -0.855517, -0.314332,
		42.600719, 31.921408, 50.549225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.857273, 32.710453, 50.402046>,  <42.312710, 32.520267, 50.769257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.857273, 32.710453, 50.402046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.806393, 32.340649, 50.258320>,  <42.775864, 32.118767, 50.172085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.806393, 32.340649, 50.258320>,  <42.857273, 32.710453, 50.402046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.806393, 32.340649, 50.258320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062172, 0.354110, -0.933135,
		0.989926, -0.141038, 0.012435,
		-0.127204, -0.924508, -0.359312,
		42.768230, 32.063297, 50.150528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.299618, 32.579041, 49.845463>,  <42.857273, 32.710453, 50.402046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.299618, 32.579041, 49.845463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.012314, 32.303375, 49.807198>,  <42.839931, 32.137974, 49.784241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.012314, 32.303375, 49.807198>,  <43.299618, 32.579041, 49.845463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.012314, 32.303375, 49.807198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016236, 0.154053, -0.987929,
		0.695585, -0.708037, -0.121839,
		-0.718261, -0.689167, -0.095661,
		42.796837, 32.096626, 49.778500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.481762, 32.085861, 49.308788>,  <43.299618, 32.579041, 49.845463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.481762, 32.085861, 49.308788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.083374, 32.075172, 49.343048>,  <42.844341, 32.068760, 49.363605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.083374, 32.075172, 49.343048>,  <43.481762, 32.085861, 49.308788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.083374, 32.075172, 49.343048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088328, 0.124246, -0.988312,
		0.015764, -0.991892, -0.126105,
		-0.995967, -0.026718, 0.085653,
		42.784584, 32.067158, 49.368744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.315723, 31.794636, 48.688282>,  <43.481762, 32.085861, 49.308788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.315723, 31.794636, 48.688282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.963085, 31.929777, 48.820129>,  <42.751503, 32.010860, 48.899239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.963085, 31.929777, 48.820129>,  <43.315723, 31.794636, 48.688282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.963085, 31.929777, 48.820129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349140, 0.003188, -0.937065,
		-0.317643, -0.941193, 0.115148,
		-0.881592, 0.337855, 0.329621,
		42.698608, 32.031132, 48.919014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.830326, 31.370569, 48.355190>,  <43.315723, 31.794636, 48.688282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.830326, 31.370569, 48.355190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.645725, 31.705093, 48.473579>,  <42.534966, 31.905807, 48.544613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.645725, 31.705093, 48.473579>,  <42.830326, 31.370569, 48.355190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.645725, 31.705093, 48.473579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392395, 0.106783, -0.913578,
		-0.795641, -0.537754, 0.278884,
		-0.461500, 0.836312, 0.295973,
		42.507275, 31.955988, 48.562370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.206009, 31.245295, 48.230713>,  <42.830326, 31.370569, 48.355190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.206009, 31.245295, 48.230713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.247242, 31.642183, 48.258633>,  <42.271984, 31.880316, 48.275387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.247242, 31.642183, 48.258633>,  <42.206009, 31.245295, 48.230713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.247242, 31.642183, 48.258633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464462, 0.110073, -0.878726,
		-0.879573, 0.058165, 0.472196,
		0.103087, 0.992221, 0.069802,
		42.278168, 31.939850, 48.279572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.551514, 31.511112, 47.871994>,  <42.206009, 31.245295, 48.230713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.551514, 31.511112, 47.871994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.739780, 31.863260, 47.895382>,  <41.852741, 32.074551, 47.909416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.739780, 31.863260, 47.895382>,  <41.551514, 31.511112, 47.871994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.739780, 31.863260, 47.895382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400441, 0.272200, -0.874960,
		-0.786206, 0.388400, 0.480652,
		0.470667, 0.880371, 0.058474,
		41.880981, 32.127373, 47.912926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.099319, 32.054199, 47.649624>,  <41.551514, 31.511112, 47.871994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.099319, 32.054199, 47.649624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.470131, 32.188358, 47.582546>,  <41.692619, 32.268852, 47.542301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.470131, 32.188358, 47.582546>,  <41.099319, 32.054199, 47.649624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.470131, 32.188358, 47.582546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247632, 0.211752, -0.945431,
		-0.281587, 0.917970, 0.279357,
		0.927031, 0.335398, -0.167692,
		41.748241, 32.288979, 47.532238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.043171, 32.557819, 47.164345>,  <41.099319, 32.054199, 47.649624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.043171, 32.557819, 47.164345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.438553, 32.508160, 47.129612>,  <41.675781, 32.478363, 47.108772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.438553, 32.508160, 47.129612>,  <41.043171, 32.557819, 47.164345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.438553, 32.508160, 47.129612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035414, 0.367903, -0.929189,
		0.147301, 0.921539, 0.359260,
		0.988458, -0.124148, -0.086828,
		41.735088, 32.470917, 47.103565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.221989, 33.075119, 46.808731>,  <41.043171, 32.557819, 47.164345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.221989, 33.075119, 46.808731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.524647, 32.825684, 46.730114>,  <41.706242, 32.676022, 46.682945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.524647, 32.825684, 46.730114>,  <41.221989, 33.075119, 46.808731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.524647, 32.825684, 46.730114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050380, 0.355313, -0.933389,
		0.651883, 0.696342, 0.300262,
		0.756644, -0.623588, -0.196541,
		41.751640, 32.638607, 46.671150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.573696, 33.395504, 46.318092>,  <41.221989, 33.075119, 46.808731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.573696, 33.395504, 46.318092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.674419, 33.010635, 46.276501>,  <41.734852, 32.779713, 46.251545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.674419, 33.010635, 46.276501>,  <41.573696, 33.395504, 46.318092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.674419, 33.010635, 46.276501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014880, 0.111279, -0.993678,
		0.967664, 0.248665, 0.042337,
		0.251804, -0.962176, -0.103981,
		41.749962, 32.721981, 46.245308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.054241, 33.340305, 45.839191>,  <41.573696, 33.395504, 46.318092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.054241, 33.340305, 45.839191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.902187, 32.970531, 45.851284>,  <41.810955, 32.748669, 45.858540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.902187, 32.970531, 45.851284>,  <42.054241, 33.340305, 45.839191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.902187, 32.970531, 45.851284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042458, -0.050094, -0.997842,
		0.923954, -0.378035, 0.058292,
		-0.380139, -0.924435, 0.030234,
		41.788147, 32.693199, 45.860355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.471176, 33.002308, 45.317497>,  <42.054241, 33.340305, 45.839191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.471176, 33.002308, 45.317497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.140038, 32.785217, 45.374237>,  <41.941353, 32.654964, 45.408279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.140038, 32.785217, 45.374237>,  <42.471176, 33.002308, 45.317497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.140038, 32.785217, 45.374237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072431, -0.147336, -0.986431,
		0.556260, -0.826887, 0.082661,
		-0.827846, -0.542724, 0.141850,
		41.891685, 32.622398, 45.416794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.571564, 32.405674, 44.913471>,  <42.471176, 33.002308, 45.317497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.571564, 32.405674, 44.913471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.178413, 32.435627, 44.980827>,  <41.942524, 32.453598, 45.021240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.178413, 32.435627, 44.980827>,  <42.571564, 32.405674, 44.913471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.178413, 32.435627, 44.980827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180624, -0.210061, -0.960858,
		-0.036578, -0.974816, 0.219989,
		-0.982872, 0.074882, 0.168392,
		41.883553, 32.458092, 45.031345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.246468, 31.778046, 44.714020>,  <42.571564, 32.405674, 44.913471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.246468, 31.778046, 44.714020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.973000, 32.069092, 44.691505>,  <41.808918, 32.243721, 44.677998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.973000, 32.069092, 44.691505>,  <42.246468, 31.778046, 44.714020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.973000, 32.069092, 44.691505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107795, -0.176966, -0.978296,
		-0.721784, -0.662766, 0.199420,
		-0.683672, 0.727615, -0.056289,
		41.767899, 32.287376, 44.674618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.074394, 31.770298, 44.082008>,  <42.246468, 31.778046, 44.714020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.074394, 31.770298, 44.082008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.798462, 32.044334, 44.175632>,  <41.632904, 32.208755, 44.231808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.798462, 32.044334, 44.175632>,  <42.074394, 31.770298, 44.082008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.798462, 32.044334, 44.175632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347834, -0.030096, -0.937073,
		-0.634938, -0.727833, 0.259060,
		-0.689829, 0.685094, 0.234056,
		41.591515, 32.249863, 44.245850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.294907, 31.525436, 43.982948>,  <42.074394, 31.770298, 44.082008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.294907, 31.525436, 43.982948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.319023, 31.923321, 43.949680>,  <41.333492, 32.162052, 43.929718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.319023, 31.923321, 43.949680>,  <41.294907, 31.525436, 43.982948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.319023, 31.923321, 43.949680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504896, -0.041488, -0.862183,
		-0.861072, 0.093979, 0.499723,
		0.060295, 0.994709, -0.083174,
		41.337112, 32.221733, 43.924728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.685410, 31.699785, 43.598190>,  <41.294907, 31.525436, 43.982948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.685410, 31.699785, 43.598190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.946278, 32.000401, 43.558449>,  <41.102798, 32.180771, 43.534603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.946278, 32.000401, 43.558449>,  <40.685410, 31.699785, 43.598190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.946278, 32.000401, 43.558449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156019, 0.004807, -0.987742,
		-0.741847, 0.659674, 0.120388,
		0.652167, 0.751536, -0.099356,
		41.141930, 32.225861, 43.528641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.385815, 32.167397, 43.196625>,  <40.685410, 31.699785, 43.598190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.385815, 32.167397, 43.196625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.777679, 32.243729, 43.171799>,  <41.012798, 32.289528, 43.156902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.777679, 32.243729, 43.171799>,  <40.385815, 32.167397, 43.196625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.777679, 32.243729, 43.171799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071071, 0.040701, -0.996641,
		-0.187667, 0.980778, 0.053436,
		0.979658, 0.190834, -0.062067,
		41.071575, 32.300980, 43.153179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.404854, 32.572216, 42.681049>,  <40.385815, 32.167397, 43.196625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.404854, 32.572216, 42.681049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.792236, 32.479027, 42.716412>,  <41.024666, 32.423115, 42.737629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.792236, 32.479027, 42.716412>,  <40.404854, 32.572216, 42.681049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.792236, 32.479027, 42.716412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101508, 0.044834, -0.993824,
		0.227568, 0.971450, 0.067068,
		0.968457, -0.232970, 0.088407,
		41.082775, 32.409134, 42.742935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.673294, 33.067047, 42.238304>,  <40.404854, 32.572216, 42.681049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.673294, 33.067047, 42.238304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.946400, 32.777061, 42.274643>,  <41.110264, 32.603069, 42.296448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.946400, 32.777061, 42.274643>,  <40.673294, 33.067047, 42.238304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.946400, 32.777061, 42.274643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330716, 0.195778, -0.923200,
		0.651503, 0.660375, 0.373428,
		0.682767, -0.724966, 0.090847,
		41.151230, 32.559570, 42.301895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.342785, 33.338161, 42.018002>,  <40.673294, 33.067047, 42.238304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.342785, 33.338161, 42.018002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.345947, 32.939053, 41.991493>,  <41.347843, 32.699589, 41.975586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.345947, 32.939053, 41.991493>,  <41.342785, 33.338161, 42.018002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.345947, 32.939053, 41.991493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342342, 0.064973, -0.937327,
		0.939542, -0.015278, 0.342092,
		0.007906, -0.997770, -0.066275,
		41.348320, 32.639721, 41.971611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.895443, 33.288784, 41.663906>,  <41.342785, 33.338161, 42.018002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.895443, 33.288784, 41.663906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.744564, 32.921162, 41.618217>,  <41.654037, 32.700588, 41.590805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.744564, 32.921162, 41.618217>,  <41.895443, 33.288784, 41.663906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.744564, 32.921162, 41.618217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392597, -0.046972, -0.918510,
		0.838801, -0.391308, 0.378538,
		-0.377201, -0.919060, -0.114226,
		41.631405, 32.645443, 41.583950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.354099, 32.895882, 41.316883>,  <41.895443, 33.288784, 41.663906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.354099, 32.895882, 41.316883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.018787, 32.684238, 41.264217>,  <41.817600, 32.557251, 41.232620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.018787, 32.684238, 41.264217>,  <42.354099, 32.895882, 41.316883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.018787, 32.684238, 41.264217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276507, -0.204411, -0.939021,
		0.469933, -0.823564, 0.317656,
		-0.838276, -0.529111, -0.131662,
		41.767303, 32.525505, 41.224720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.563744, 32.258495, 40.936283>,  <42.354099, 32.895882, 41.316883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.563744, 32.258495, 40.936283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.175385, 32.341496, 40.888458>,  <41.942368, 32.391296, 40.859764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.175385, 32.341496, 40.888458>,  <42.563744, 32.258495, 40.936283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.175385, 32.341496, 40.888458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117709, -0.021293, -0.992820,
		-0.208552, -0.978004, -0.003750,
		-0.970902, 0.207496, -0.119560,
		41.884113, 32.403744, 40.852589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.393879, 31.879108, 40.366653>,  <42.563744, 32.258495, 40.936283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.393879, 31.879108, 40.366653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.111504, 32.160282, 40.401371>,  <41.942078, 32.328987, 40.422199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.111504, 32.160282, 40.401371>,  <42.393879, 31.879108, 40.366653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.111504, 32.160282, 40.401371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049088, 0.073685, -0.996073,
		-0.706567, -0.707430, -0.017512,
		-0.705941, 0.702932, 0.086790,
		41.899719, 32.371162, 40.427406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.962883, 31.655895, 39.926468>,  <42.393879, 31.879108, 40.366653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.962883, 31.655895, 39.926468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.879280, 32.039753, 40.001728>,  <41.829117, 32.270069, 40.046883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.879280, 32.039753, 40.001728>,  <41.962883, 31.655895, 39.926468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.879280, 32.039753, 40.001728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069236, 0.177394, -0.981701,
		-0.975460, -0.218208, 0.029365,
		-0.209006, 0.959644, 0.188149,
		41.816578, 32.327644, 40.058174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.352715, 31.867241, 39.470631>,  <41.962883, 31.655895, 39.926468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.352715, 31.867241, 39.470631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.520855, 32.219173, 39.559349>,  <41.621738, 32.430332, 39.612579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.520855, 32.219173, 39.559349>,  <41.352715, 31.867241, 39.470631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.520855, 32.219173, 39.559349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157037, 0.311299, -0.937247,
		-0.893667, 0.359146, 0.269023,
		0.420355, 0.879833, 0.221799,
		41.646961, 32.483124, 39.625889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.076839, 32.318275, 39.056713>,  <41.352715, 31.867241, 39.470631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.076839, 32.318275, 39.056713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.401859, 32.528118, 39.158340>,  <41.596870, 32.654022, 39.219318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.401859, 32.528118, 39.158340>,  <41.076839, 32.318275, 39.056713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.401859, 32.528118, 39.158340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028220, 0.470774, -0.881803,
		-0.582205, 0.709341, 0.397333,
		0.812553, 0.524602, 0.254069,
		41.645626, 32.685497, 39.234562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.954254, 33.073250, 38.839417>,  <41.076839, 32.318275, 39.056713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.954254, 33.073250, 38.839417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.347305, 33.004219, 38.866722>,  <41.583138, 32.962803, 38.883106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.347305, 33.004219, 38.866722>,  <40.954254, 33.073250, 38.839417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.347305, 33.004219, 38.866722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137058, 0.426815, -0.893893,
		0.125126, 0.887720, 0.443053,
		0.982629, -0.172573, 0.068263,
		41.642094, 32.952446, 38.887199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.312000, 33.747093, 38.751438>,  <40.954254, 33.073250, 38.839417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.312000, 33.747093, 38.751438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.565842, 33.456726, 38.645367>,  <41.718147, 33.282505, 38.581722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.565842, 33.456726, 38.645367>,  <41.312000, 33.747093, 38.751438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.565842, 33.456726, 38.645367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168081, 0.464550, -0.869449,
		0.754342, 0.507180, 0.416817,
		0.634600, -0.725921, -0.265182,
		41.756222, 33.238949, 38.565811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.801510, 34.160072, 38.545033>,  <41.312000, 33.747093, 38.751438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.801510, 34.160072, 38.545033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.903790, 33.807636, 38.385883>,  <41.965157, 33.596176, 38.290394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.903790, 33.807636, 38.385883>,  <41.801510, 34.160072, 38.545033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.903790, 33.807636, 38.385883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203298, 0.451358, -0.868876,
		0.945139, 0.141285, 0.294535,
		0.255700, -0.881087, -0.397873,
		41.980499, 33.543308, 38.266521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.539371, 34.163815, 38.212124>,  <41.801510, 34.160072, 38.545033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.539371, 34.163815, 38.212124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.348679, 33.854076, 38.045700>,  <42.234261, 33.668232, 37.945847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.348679, 33.854076, 38.045700>,  <42.539371, 34.163815, 38.212124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.348679, 33.854076, 38.045700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240702, 0.340229, -0.909014,
		0.845450, -0.533507, 0.024187,
		-0.476737, -0.774348, -0.416063,
		42.205658, 33.621773, 37.920879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.959614, 33.960339, 37.627613>,  <42.539371, 34.163815, 38.212124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.959614, 33.960339, 37.627613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.607235, 33.792255, 37.540558>,  <42.395809, 33.691406, 37.488327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.607235, 33.792255, 37.540558>,  <42.959614, 33.960339, 37.627613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.607235, 33.792255, 37.540558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046843, 0.380207, -0.923714,
		0.470899, -0.823934, -0.315257,
		-0.880943, -0.420208, -0.217635,
		42.342953, 33.666195, 37.475269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.055126, 33.554188, 36.973141>,  <42.959614, 33.960339, 37.627613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.055126, 33.554188, 36.973141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.683132, 33.687988, 37.034126>,  <42.459938, 33.768269, 37.070717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.683132, 33.687988, 37.034126>,  <43.055126, 33.554188, 36.973141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.683132, 33.687988, 37.034126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020919, 0.462227, -0.886515,
		-0.367012, -0.821253, -0.436860,
		-0.929981, 0.334501, 0.152463,
		42.404137, 33.788338, 37.079865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.719898, 33.550804, 36.362637>,  <43.055126, 33.554188, 36.973141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.719898, 33.550804, 36.362637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.475254, 33.812214, 36.541000>,  <42.328468, 33.969059, 36.648018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.475254, 33.812214, 36.541000>,  <42.719898, 33.550804, 36.362637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.475254, 33.812214, 36.541000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106716, 0.490322, -0.864983,
		-0.783927, -0.576621, -0.230146,
		-0.611613, 0.653524, 0.445911,
		42.291771, 34.008270, 36.674774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.205879, 33.780228, 35.886768>,  <42.719898, 33.550804, 36.362637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.205879, 33.780228, 35.886768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.189461, 34.076809, 36.154667>,  <42.179611, 34.254757, 36.315407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.189461, 34.076809, 36.154667>,  <42.205879, 33.780228, 35.886768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.189461, 34.076809, 36.154667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215168, 0.648022, -0.730595,
		-0.975714, -0.174094, 0.132941,
		-0.041043, 0.741457, 0.669744,
		42.177147, 34.299248, 36.355591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.581005, 34.076908, 35.808243>,  <42.205879, 33.780228, 35.886768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.581005, 34.076908, 35.808243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.875282, 34.324940, 35.917244>,  <42.051849, 34.473759, 35.982643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.875282, 34.324940, 35.917244>,  <41.581005, 34.076908, 35.808243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.875282, 34.324940, 35.917244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154541, 0.545393, -0.823810,
		-0.659447, 0.563960, 0.497070,
		0.735695, 0.620077, 0.272502,
		42.095989, 34.510963, 35.998993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.302250, 34.850063, 35.647736>,  <41.581005, 34.076908, 35.808243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.302250, 34.850063, 35.647736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.700886, 34.844849, 35.680332>,  <41.940067, 34.841721, 35.699890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.700886, 34.844849, 35.680332>,  <41.302250, 34.850063, 35.647736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.700886, 34.844849, 35.680332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077922, 0.474031, -0.877054,
		-0.027192, 0.880412, 0.473430,
		0.996589, -0.013041, 0.081493,
		41.999863, 34.840935, 35.704781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.617691, 35.576370, 35.518826>,  <41.302250, 34.850063, 35.647736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.617691, 35.576370, 35.518826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.870316, 35.284916, 35.412830>,  <42.021889, 35.110043, 35.349232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.870316, 35.284916, 35.412830>,  <41.617691, 35.576370, 35.518826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.870316, 35.284916, 35.412830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011488, 0.350532, -0.936480,
		0.775243, 0.588398, 0.229752,
		0.631558, -0.728639, -0.264988,
		42.059784, 35.066322, 35.333332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.023556, 35.828869, 35.006573>,  <41.617691, 35.576370, 35.518826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.023556, 35.828869, 35.006573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.022709, 35.430492, 34.970562>,  <42.022202, 35.191467, 34.948956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.022709, 35.430492, 34.970562>,  <42.023556, 35.828869, 35.006573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.022709, 35.430492, 34.970562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053107, 0.089790, -0.994544,
		0.998586, -0.006882, 0.052701,
		-0.002113, -0.995937, -0.090028,
		42.022076, 35.131710, 34.943554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.753838, 35.858070, 34.921700>,  <42.023556, 35.828869, 35.006573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.753838, 35.858070, 34.921700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.914707, 36.005032, 34.586254>,  <43.011227, 36.093208, 34.384987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.914707, 36.005032, 34.586254>,  <42.753838, 35.858070, 34.921700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.914707, 36.005032, 34.586254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158249, -0.930063, -0.331573,
		-0.901784, 0.000640, -0.432186,
		0.402172, 0.367400, -0.838615,
		43.035358, 36.115253, 34.334671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.200619, 36.495518, 35.258717>,  <42.753838, 35.858070, 34.921700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.200619, 36.495518, 35.258717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.877663, 36.486366, 35.494549>,  <42.683891, 36.480877, 35.636047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.877663, 36.486366, 35.494549>,  <43.200619, 36.495518, 35.258717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.877663, 36.486366, 35.494549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085339, 0.993269, -0.078324,
		-0.583817, -0.113551, -0.803905,
		-0.807388, -0.022877, 0.589577,
		42.635445, 36.479504, 35.671421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.824070, 36.446663, 34.746304>,  <43.200619, 36.495518, 35.258717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.824070, 36.446663, 34.746304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.126648, 36.245232, 34.579357>,  <44.308193, 36.124374, 34.479187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.126648, 36.245232, 34.579357>,  <43.824070, 36.446663, 34.746304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.126648, 36.245232, 34.579357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284552, 0.321188, -0.903254,
		0.588914, 0.802027, 0.099668,
		0.756446, -0.503578, -0.417370,
		44.353580, 36.094158, 34.454147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.262573, 36.922768, 34.382473>,  <43.824070, 36.446663, 34.746304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.262573, 36.922768, 34.382473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.323540, 36.567909, 34.208237>,  <44.360119, 36.354992, 34.103695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.323540, 36.567909, 34.208237>,  <44.262573, 36.922768, 34.382473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.323540, 36.567909, 34.208237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175270, 0.409491, -0.895320,
		0.972652, 0.212803, -0.093079,
		0.152412, -0.887148, -0.435590,
		44.369263, 36.301765, 34.077560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.589558, 37.070007, 33.730919>,  <44.262573, 36.922768, 34.382473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.589558, 37.070007, 33.730919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.453426, 36.698151, 33.674438>,  <44.371746, 36.475037, 33.640549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.453426, 36.698151, 33.674438>,  <44.589558, 37.070007, 33.730919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.453426, 36.698151, 33.674438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196298, 0.217101, -0.956208,
		0.919587, -0.297711, -0.256373,
		-0.340333, -0.929642, -0.141203,
		44.351326, 36.419258, 33.632076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.846802, 36.942764, 33.058422>,  <44.589558, 37.070007, 33.730919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.846802, 36.942764, 33.058422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.575520, 36.660805, 33.141510>,  <44.412750, 36.491627, 33.191360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.575520, 36.660805, 33.141510>,  <44.846802, 36.942764, 33.058422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.575520, 36.660805, 33.141510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199006, -0.095925, -0.975292,
		0.707411, -0.702788, -0.075222,
		-0.678208, -0.704902, 0.207718,
		44.372059, 36.449333, 33.203827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.962589, 36.279049, 32.696922>,  <44.846802, 36.942764, 33.058422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.962589, 36.279049, 32.696922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.573387, 36.253277, 32.785561>,  <44.339867, 36.237816, 32.838741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.573387, 36.253277, 32.785561>,  <44.962589, 36.279049, 32.696922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.573387, 36.253277, 32.785561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184819, -0.357436, -0.915468,
		0.138187, -0.931713, 0.335881,
		-0.973009, -0.064428, 0.221591,
		44.281483, 36.233948, 32.852039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.842415, 35.776405, 32.325840>,  <44.962589, 36.279049, 32.696922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.842415, 35.776405, 32.325840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.480213, 35.921902, 32.413258>,  <44.262894, 36.009197, 32.465710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.480213, 35.921902, 32.413258>,  <44.842415, 35.776405, 32.325840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.480213, 35.921902, 32.413258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352573, -0.358305, -0.864471,
		-0.236133, -0.859833, 0.452690,
		-0.905502, 0.363736, 0.218547,
		44.208561, 36.031025, 32.478821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.208019, 35.231621, 32.166603>,  <44.842415, 35.776405, 32.325840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.208019, 35.231621, 32.166603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.064316, 35.604836, 32.174423>,  <43.978096, 35.828762, 32.179115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.064316, 35.604836, 32.174423>,  <44.208019, 35.231621, 32.166603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.064316, 35.604836, 32.174423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563491, -0.200169, -0.801505,
		-0.743918, -0.298962, 0.597669,
		-0.359254, 0.933034, 0.019553,
		43.956539, 35.884747, 32.180290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.551304, 35.159557, 32.124897>,  <44.208019, 35.231621, 32.166603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.551304, 35.159557, 32.124897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.599216, 35.540909, 32.014103>,  <43.627964, 35.769718, 31.947626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.599216, 35.540909, 32.014103>,  <43.551304, 35.159557, 32.124897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.599216, 35.540909, 32.014103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414656, -0.205452, -0.886482,
		-0.902060, 0.221038, 0.370714,
		0.119783, 0.953379, -0.276985,
		43.635151, 35.826923, 31.931007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.909496, 35.376476, 31.792545>,  <43.551304, 35.159557, 32.124897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.909496, 35.376476, 31.792545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.192814, 35.621574, 31.652332>,  <43.362804, 35.768631, 31.568205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.192814, 35.621574, 31.652332>,  <42.909496, 35.376476, 31.792545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.192814, 35.621574, 31.652332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439951, -0.005167, -0.898007,
		-0.552056, 0.790267, 0.265916,
		0.708291, 0.612741, -0.350531,
		43.405300, 35.805397, 31.547173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.481045, 35.868408, 31.450811>,  <42.909496, 35.376476, 31.792545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.481045, 35.868408, 31.450811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.834637, 35.945477, 31.280420>,  <43.046791, 35.991718, 31.178186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.834637, 35.945477, 31.280420>,  <42.481045, 35.868408, 31.450811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.834637, 35.945477, 31.280420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446526, 0.077940, -0.891370,
		-0.138538, 0.978164, 0.154928,
		0.883981, 0.192668, -0.425978,
		43.099831, 36.003277, 31.152626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.319267, 36.398563, 30.907148>,  <42.481045, 35.868408, 31.450811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.319267, 36.398563, 30.907148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.667343, 36.218372, 30.827309>,  <42.876190, 36.110260, 30.779404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.667343, 36.218372, 30.827309>,  <42.319267, 36.398563, 30.907148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.667343, 36.218372, 30.827309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293047, -0.147519, -0.944649,
		0.396094, 0.880518, -0.260380,
		0.870192, -0.450473, -0.199601,
		42.928402, 36.083229, 30.767427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.530964, 36.721626, 30.256142>,  <42.319267, 36.398563, 30.907148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.530964, 36.721626, 30.256142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.707565, 36.363312, 30.276711>,  <42.813526, 36.148323, 30.289053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.707565, 36.363312, 30.276711>,  <42.530964, 36.721626, 30.256142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.707565, 36.363312, 30.276711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307363, -0.204839, -0.929284,
		0.842970, 0.394480, -0.365768,
		0.441507, -0.895783, 0.051424,
		42.840019, 36.094578, 30.292137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.457611, 36.415794, 29.523087>,  <42.530964, 36.721626, 30.256142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.457611, 36.415794, 29.523087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.600594, 36.079823, 29.686426>,  <42.686382, 35.878239, 29.784430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.600594, 36.079823, 29.686426>,  <42.457611, 36.415794, 29.523087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.600594, 36.079823, 29.686426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217522, -0.500086, -0.838211,
		0.908246, 0.210797, -0.361460,
		0.357453, -0.839928, 0.408349,
		42.707829, 35.827843, 29.808931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.552788, 36.074871, 28.870295>,  <42.457611, 36.415794, 29.523087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.552788, 36.074871, 28.870295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.586872, 35.801704, 29.160498>,  <42.607323, 35.637806, 29.334620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.586872, 35.801704, 29.160498>,  <42.552788, 36.074871, 28.870295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.586872, 35.801704, 29.160498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059446, -0.730344, -0.680488,
		0.994588, 0.014858, -0.102831,
		0.085213, -0.682918, 0.725508,
		42.612434, 35.596828, 29.378151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.018963, 35.638435, 28.593697>,  <42.552788, 36.074871, 28.870295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.018963, 35.638435, 28.593697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.810696, 35.450581, 28.878891>,  <42.685734, 35.337868, 29.050007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.810696, 35.450581, 28.878891>,  <43.018963, 35.638435, 28.593697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.810696, 35.450581, 28.878891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162332, -0.765422, -0.622718,
		0.838184, -0.439970, 0.322295,
		-0.520668, -0.469633, 0.712986,
		42.654495, 35.309692, 29.092787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.266815, 34.927452, 28.504128>,  <43.018963, 35.638435, 28.593697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.266815, 34.927452, 28.504128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.933475, 34.906517, 28.724236>,  <42.733471, 34.893955, 28.856300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.933475, 34.906517, 28.724236>,  <43.266815, 34.927452, 28.504128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.933475, 34.906517, 28.724236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363715, -0.697708, -0.617183,
		0.416228, -0.714468, 0.562397,
		-0.833346, -0.052337, 0.550268,
		42.683472, 34.890816, 28.889317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.130764, 34.154549, 28.603563>,  <43.266815, 34.927452, 28.504128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.130764, 34.154549, 28.603563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.770756, 34.325615, 28.637180>,  <42.554749, 34.428253, 28.657351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.770756, 34.325615, 28.637180>,  <43.130764, 34.154549, 28.603563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.770756, 34.325615, 28.637180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415299, -0.783001, -0.463073,
		-0.132233, -0.451680, 0.882326,
		-0.900023, 0.427663, 0.084044,
		42.500748, 34.453915, 28.662394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.689857, 33.652992, 28.798651>,  <43.130764, 34.154549, 28.603563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.689857, 33.652992, 28.798651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.414909, 33.921627, 28.688019>,  <42.249939, 34.082806, 28.621639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.414909, 33.921627, 28.688019>,  <42.689857, 33.652992, 28.798651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.414909, 33.921627, 28.688019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544783, -0.728577, -0.415195,
		-0.480347, -0.134718, 0.866670,
		-0.687370, 0.671585, -0.276578,
		42.208698, 34.123104, 28.605045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.118271, 33.349949, 28.888159>,  <42.689857, 33.652992, 28.798651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.118271, 33.349949, 28.888159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.972267, 33.612869, 28.624424>,  <41.884666, 33.770622, 28.466183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.972267, 33.612869, 28.624424>,  <42.118271, 33.349949, 28.888159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.972267, 33.612869, 28.624424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367450, -0.752416, -0.546673,
		-0.855424, 0.042735, 0.516162,
		-0.365006, 0.657301, -0.659338,
		41.862766, 33.810059, 28.426622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.438217, 33.206940, 28.742834>,  <42.118271, 33.349949, 28.888159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.438217, 33.206940, 28.742834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.527493, 33.417858, 28.414894>,  <41.581059, 33.544407, 28.218130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.527493, 33.417858, 28.414894>,  <41.438217, 33.206940, 28.742834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.527493, 33.417858, 28.414894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557880, -0.620604, -0.551018,
		-0.799349, 0.580356, 0.155656,
		0.223185, 0.527293, -0.819848,
		41.594448, 33.576046, 28.168940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.836128, 33.349689, 28.492144>,  <41.438217, 33.206940, 28.742834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.836128, 33.349689, 28.492144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.112480, 33.360096, 28.203142>,  <41.278290, 33.366341, 28.029741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.112480, 33.360096, 28.203142>,  <40.836128, 33.349689, 28.492144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.112480, 33.360096, 28.203142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478489, -0.732711, -0.483924,
		-0.541974, 0.680043, -0.493768,
		0.690878, 0.026012, -0.722503,
		41.319744, 33.367901, 27.986391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.495049, 33.514576, 27.947803>,  <40.836128, 33.349689, 28.492144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.495049, 33.514576, 27.947803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.836948, 33.332157, 27.848671>,  <41.042088, 33.222706, 27.789192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.836948, 33.332157, 27.848671>,  <40.495049, 33.514576, 27.947803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.836948, 33.332157, 27.848671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513112, -0.814390, -0.271083,
		-0.078203, 0.358873, -0.930104,
		0.854752, -0.456048, -0.247830,
		41.093372, 33.195343, 27.774323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.478031, 33.046837, 27.280474>,  <40.495049, 33.514576, 27.947803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.478031, 33.046837, 27.280474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.779503, 32.900208, 27.498680>,  <40.960384, 32.812229, 27.629604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.779503, 32.900208, 27.498680>,  <40.478031, 33.046837, 27.280474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.779503, 32.900208, 27.498680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325374, -0.929266, -0.174917,
		0.571050, -0.045666, -0.819644,
		0.753680, -0.366577, 0.545516,
		41.005608, 32.790234, 27.662334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.616814, 32.356625, 27.033537>,  <40.478031, 33.046837, 27.280474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.616814, 32.356625, 27.033537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.696384, 32.394367, 27.423721>,  <40.744125, 32.417011, 27.657833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.696384, 32.394367, 27.423721>,  <40.616814, 32.356625, 27.033537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.696384, 32.394367, 27.423721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552928, -0.810994, 0.191206,
		0.809135, -0.577395, -0.109154,
		0.198925, 0.094357, 0.975462,
		40.756062, 32.422676, 27.716360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.800533, 31.708290, 27.416794>,  <40.616814, 32.356625, 27.033537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.800533, 31.708290, 27.416794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.674061, 31.927822, 27.726326>,  <40.598179, 32.059540, 27.912046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.674061, 31.927822, 27.726326>,  <40.800533, 31.708290, 27.416794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.674061, 31.927822, 27.726326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658705, -0.714012, 0.237266,
		0.682744, -0.434709, 0.587272,
		-0.316177, 0.548830, 0.773833,
		40.579208, 32.092472, 27.958475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.109108, 31.055696, 27.501858>,  <40.800533, 31.708290, 27.416794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.109108, 31.055696, 27.501858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.324348, 30.987991, 27.832140>,  <41.453495, 30.947369, 28.030310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.324348, 30.987991, 27.832140>,  <41.109108, 31.055696, 27.501858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.324348, 30.987991, 27.832140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806992, 0.386261, -0.446728,
		-0.243324, 0.906726, 0.344444,
		0.538105, -0.169264, 0.825707,
		41.485779, 30.937212, 28.079853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.517780, 31.595572, 27.529375>,  <41.109108, 31.055696, 27.501858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.517780, 31.595572, 27.529375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.700638, 31.313725, 27.746458>,  <41.810352, 31.144617, 27.876709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.700638, 31.313725, 27.746458>,  <41.517780, 31.595572, 27.529375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.700638, 31.313725, 27.746458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876378, 0.460876, -0.139838,
		-0.151590, 0.539545, 0.828198,
		0.457145, -0.704617, 0.542709,
		41.837780, 31.102339, 27.909271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.962196, 31.811483, 28.126999>,  <41.517780, 31.595572, 27.529375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.962196, 31.811483, 28.126999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.136074, 31.486757, 27.971050>,  <42.240402, 31.291922, 27.877481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.136074, 31.486757, 27.971050>,  <41.962196, 31.811483, 28.126999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.136074, 31.486757, 27.971050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858813, 0.503983, -0.091877,
		0.271075, -0.294888, 0.916275,
		0.434693, -0.811814, -0.389871,
		42.266483, 31.243214, 27.854090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.576481, 31.771624, 28.492279>,  <41.962196, 31.811483, 28.126999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.576481, 31.771624, 28.492279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.608524, 31.584322, 28.140297>,  <42.627750, 31.471941, 27.929108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.608524, 31.584322, 28.140297>,  <42.576481, 31.771624, 28.492279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.608524, 31.584322, 28.140297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827578, 0.523308, -0.203132,
		0.555604, -0.711959, 0.429439,
		0.080107, -0.468255, -0.879954,
		42.632557, 31.443846, 27.876310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.248161, 31.450964, 28.381613>,  <42.576481, 31.771624, 28.492279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.248161, 31.450964, 28.381613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.146515, 31.546654, 28.006763>,  <43.085529, 31.604069, 27.781855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.146515, 31.546654, 28.006763>,  <43.248161, 31.450964, 28.381613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.146515, 31.546654, 28.006763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850284, 0.517009, -0.098585,
		0.460916, -0.821871, -0.334789,
		-0.254113, 0.239227, -0.937122,
		43.070282, 31.618422, 27.725626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.840614, 31.424143, 27.966391>,  <43.248161, 31.450964, 28.381613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.840614, 31.424143, 27.966391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.598465, 31.691055, 27.792835>,  <43.453175, 31.851202, 27.688702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.598465, 31.691055, 27.792835>,  <43.840614, 31.424143, 27.966391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.598465, 31.691055, 27.792835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746980, 0.664539, -0.020211,
		0.274849, -0.336340, -0.900741,
		-0.605375, 0.667280, -0.433887,
		43.416851, 31.891239, 27.662668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.245506, 31.806753, 27.389135>,  <43.840614, 31.424143, 27.966391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.245506, 31.806753, 27.389135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.969208, 32.034874, 27.566957>,  <43.803429, 32.171745, 27.673651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.969208, 32.034874, 27.566957>,  <44.245506, 31.806753, 27.389135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.969208, 32.034874, 27.566957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700707, 0.679728, 0.216748,
		-0.178564, 0.461219, -0.869133,
		-0.690742, 0.570304, 0.444554,
		43.761986, 32.205967, 27.700323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.259312, 32.546379, 27.148893>,  <44.245506, 31.806753, 27.389135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.259312, 32.546379, 27.148893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.099903, 32.567486, 27.515150>,  <44.004257, 32.580151, 27.734903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.099903, 32.567486, 27.515150>,  <44.259312, 32.546379, 27.148893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.099903, 32.567486, 27.515150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577116, 0.790349, 0.205634,
		-0.712826, 0.610380, -0.345419,
		-0.398517, 0.052766, 0.915642,
		43.980347, 32.583317, 27.789843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.103172, 33.217136, 27.231607>,  <44.259312, 32.546379, 27.148893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.103172, 33.217136, 27.231607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.113777, 33.063381, 27.600725>,  <44.120140, 32.971130, 27.822195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.113777, 33.063381, 27.600725>,  <44.103172, 33.217136, 27.231607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.113777, 33.063381, 27.600725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434622, 0.835736, 0.335633,
		-0.900223, 0.392167, 0.189220,
		0.026514, -0.384384, 0.922793,
		44.121731, 32.948067, 27.877563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.885242, 33.887234, 27.746546>,  <44.103172, 33.217136, 27.231607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.885242, 33.887234, 27.746546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.067898, 33.598125, 27.954041>,  <44.177490, 33.424660, 28.078537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.067898, 33.598125, 27.954041>,  <43.885242, 33.887234, 27.746546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.067898, 33.598125, 27.954041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582785, 0.683574, 0.439419,
		-0.672193, 0.101657, 0.733364,
		0.456638, -0.722768, 0.518738,
		44.204887, 33.381294, 28.109661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.945404, 34.203449, 28.409727>,  <43.885242, 33.887234, 27.746546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.945404, 34.203449, 28.409727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.209812, 33.903301, 28.410194>,  <44.368458, 33.723213, 28.410475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.209812, 33.903301, 28.410194>,  <43.945404, 34.203449, 28.409727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.209812, 33.903301, 28.410194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558664, 0.493178, 0.666836,
		-0.500947, -0.440140, 0.745204,
		0.661019, -0.750368, 0.001166,
		44.408119, 33.678192, 28.410543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.073303, 34.151623, 29.153236>,  <43.945404, 34.203449, 28.409727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.073303, 34.151623, 29.153236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.381527, 34.027103, 28.930767>,  <44.566460, 33.952393, 28.797285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.381527, 34.027103, 28.930767>,  <44.073303, 34.151623, 29.153236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.381527, 34.027103, 28.930767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637196, 0.355923, 0.683594,
		-0.014850, -0.881141, 0.472620,
		0.770559, -0.311303, -0.556174,
		44.612694, 33.933712, 28.763914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.526428, 34.126308, 29.627979>,  <44.073303, 34.151623, 29.153236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.526428, 34.126308, 29.627979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.746227, 34.077988, 29.297291>,  <44.878105, 34.048996, 29.098879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.746227, 34.077988, 29.297291>,  <44.526428, 34.126308, 29.627979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.746227, 34.077988, 29.297291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796056, 0.376126, 0.474156,
		0.253673, -0.918660, 0.302841,
		0.549494, -0.120798, -0.826719,
		44.911076, 34.041748, 29.049274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.004684, 33.672642, 29.753044>,  <44.526428, 34.126308, 29.627979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.004684, 33.672642, 29.753044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.153645, 33.896580, 29.456964>,  <45.243023, 34.030941, 29.279318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.153645, 33.896580, 29.456964>,  <45.004684, 33.672642, 29.753044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.153645, 33.896580, 29.456964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759873, 0.273971, 0.589518,
		0.532831, -0.781994, -0.323383,
		0.372403, 0.559844, -0.740197,
		45.265366, 34.064533, 29.234905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.760967, 33.576759, 29.813856>,  <45.004684, 33.672642, 29.753044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.760967, 33.576759, 29.813856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.689720, 33.919956, 29.621141>,  <45.646973, 34.125874, 29.505512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.689720, 33.919956, 29.621141>,  <45.760967, 33.576759, 29.813856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.689720, 33.919956, 29.621141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702336, 0.453778, 0.548462,
		0.689201, -0.240686, -0.683427,
		-0.178117, 0.857996, -0.481786,
		45.636284, 34.177357, 29.476606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.382278, 34.127197, 29.758350>,  <45.760967, 33.576759, 29.813856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.382278, 34.127197, 29.758350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.075733, 34.367287, 29.666767>,  <45.891808, 34.511341, 29.611816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.075733, 34.367287, 29.666767>,  <46.382278, 34.127197, 29.758350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.075733, 34.367287, 29.666767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233560, 0.592343, 0.771090,
		0.598448, 0.537458, -0.594137,
		-0.766361, 0.600224, -0.228958,
		45.845825, 34.547356, 29.598080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.628887, 34.770061, 30.002741>,  <46.382278, 34.127197, 29.758350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.628887, 34.770061, 30.002741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.241528, 34.848640, 29.941267>,  <46.009113, 34.895786, 29.904383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.241528, 34.848640, 29.941267>,  <46.628887, 34.770061, 30.002741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.241528, 34.848640, 29.941267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002958, 0.607082, 0.794634,
		0.249404, 0.769974, -0.587314,
		-0.968395, 0.196448, -0.153687,
		45.951008, 34.907574, 29.895161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.571449, 35.538219, 30.099773>,  <46.628887, 34.770061, 30.002741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.571449, 35.538219, 30.099773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.207417, 35.380966, 30.152235>,  <45.988998, 35.286613, 30.183712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.207417, 35.380966, 30.152235>,  <46.571449, 35.538219, 30.099773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.207417, 35.380966, 30.152235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114267, 0.542225, 0.832427,
		-0.398374, 0.742587, -0.538389,
		-0.910078, -0.393137, 0.131155,
		45.934395, 35.263023, 30.191582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.246037, 36.077599, 30.239731>,  <46.571449, 35.538219, 30.099773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.246037, 36.077599, 30.239731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.080242, 35.752743, 30.403992>,  <45.980766, 35.557831, 30.502548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.080242, 35.752743, 30.403992>,  <46.246037, 36.077599, 30.239731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.080242, 35.752743, 30.403992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015141, 0.457331, 0.889168,
		-0.909929, 0.362332, -0.201855,
		-0.414488, -0.812136, 0.410652,
		45.955894, 35.509102, 30.527187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.839252, 36.330894, 30.795979>,  <46.246037, 36.077599, 30.239731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.839252, 36.330894, 30.795979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.924831, 35.950047, 30.883341>,  <45.976177, 35.721539, 30.935759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.924831, 35.950047, 30.883341>,  <45.839252, 36.330894, 30.795979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.924831, 35.950047, 30.883341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164038, 0.255428, 0.952811,
		-0.962974, -0.168022, 0.210831,
		0.213945, -0.952116, 0.218408,
		45.989014, 35.664413, 30.948864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.614189, 36.270370, 31.419605>,  <45.839252, 36.330894, 30.795979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.614189, 36.270370, 31.419605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.841419, 35.941994, 31.396463>,  <45.977757, 35.744968, 31.382578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.841419, 35.941994, 31.396463>,  <45.614189, 36.270370, 31.419605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.841419, 35.941994, 31.396463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194481, 0.065603, 0.978710,
		-0.799667, -0.567233, 0.196925,
		0.568075, -0.820940, -0.057855,
		46.011841, 35.695713, 31.379107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.487511, 35.939644, 31.997242>,  <45.614189, 36.270370, 31.419605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.487511, 35.939644, 31.997242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.818821, 35.751442, 31.875532>,  <46.017609, 35.638519, 31.802505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.818821, 35.751442, 31.875532>,  <45.487511, 35.939644, 31.997242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.818821, 35.751442, 31.875532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264570, -0.150284, 0.952585,
		-0.493924, -0.869505, 0.000005,
		0.828276, -0.470506, -0.304274,
		46.067303, 35.610291, 31.784250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.569817, 35.236385, 32.418552>,  <45.487511, 35.939644, 31.997242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.569817, 35.236385, 32.418552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.938061, 35.320343, 32.286850>,  <46.159008, 35.370720, 32.207829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.938061, 35.320343, 32.286850>,  <45.569817, 35.236385, 32.418552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.938061, 35.320343, 32.286850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365634, -0.167457, 0.915571,
		0.137041, -0.963276, -0.230910,
		0.920615, 0.209899, -0.329258,
		46.214245, 35.383312, 32.188072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.983238, 34.680225, 32.688488>,  <45.569817, 35.236385, 32.418552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.983238, 34.680225, 32.688488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.253311, 34.954624, 32.580017>,  <46.415356, 35.119263, 32.514935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.253311, 34.954624, 32.580017>,  <45.983238, 34.680225, 32.688488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.253311, 34.954624, 32.580017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492356, -0.145364, 0.858169,
		0.549283, -0.712936, -0.435902,
		0.675184, 0.685997, -0.271173,
		46.455868, 35.160423, 32.498665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.576073, 34.491299, 33.061325>,  <45.983238, 34.680225, 32.688488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.576073, 34.491299, 33.061325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.727753, 34.854446, 32.989780>,  <46.818760, 35.072334, 32.946854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.727753, 34.854446, 32.989780>,  <46.576073, 34.491299, 33.061325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.727753, 34.854446, 32.989780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451576, -0.012854, 0.892140,
		0.807644, -0.419066, -0.414844,
		0.379197, 0.907865, -0.178859,
		46.841511, 35.126804, 32.936123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.272575, 34.441536, 33.108280>,  <46.576073, 34.491299, 33.061325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.272575, 34.441536, 33.108280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.157757, 34.812981, 33.202335>,  <47.088867, 35.035847, 33.258766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.157757, 34.812981, 33.202335>,  <47.272575, 34.441536, 33.108280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.157757, 34.812981, 33.202335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419182, -0.098947, 0.902494,
		0.861332, 0.357620, -0.360855,
		-0.287044, 0.928611, 0.235134,
		47.071644, 35.091564, 33.272877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.847065, 34.853424, 33.301456>,  <47.272575, 34.441536, 33.108280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.847065, 34.853424, 33.301456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.506104, 34.969994, 33.475113>,  <47.301525, 35.039936, 33.579308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.506104, 34.969994, 33.475113>,  <47.847065, 34.853424, 33.301456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.506104, 34.969994, 33.475113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427339, -0.090183, 0.899582,
		0.301312, 0.952334, -0.047664,
		-0.852404, 0.291424, 0.434142,
		47.250381, 35.057419, 33.605354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.919762, 35.484631, 33.730698>,  <47.847065, 34.853424, 33.301456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.919762, 35.484631, 33.730698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.592846, 35.305344, 33.875553>,  <47.396698, 35.197773, 33.962467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.592846, 35.305344, 33.875553>,  <47.919762, 35.484631, 33.730698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.592846, 35.305344, 33.875553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444150, -0.089608, 0.891460,
		-0.367116, 0.889423, 0.272311,
		-0.817286, -0.448216, 0.362140,
		47.347660, 35.170879, 33.984196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.607468, 35.942234, 34.200378>,  <47.919762, 35.484631, 33.730698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.607468, 35.942234, 34.200378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.560249, 35.550266, 34.264648>,  <47.531918, 35.315086, 34.303211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.560249, 35.550266, 34.264648>,  <47.607468, 35.942234, 34.200378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.560249, 35.550266, 34.264648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388446, 0.103348, 0.915658,
		-0.913879, 0.170504, 0.368448,
		-0.118045, -0.979922, 0.160679,
		47.524837, 35.256290, 34.312851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.200996, 35.773499, 34.836838>,  <47.607468, 35.942234, 34.200378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.200996, 35.773499, 34.836838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.466728, 35.485558, 34.756367>,  <47.626167, 35.312794, 34.708084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.466728, 35.485558, 34.756367>,  <47.200996, 35.773499, 34.836838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.466728, 35.485558, 34.756367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472585, 0.196012, 0.859210,
		-0.579073, -0.665875, 0.470410,
		0.664332, -0.719854, -0.201177,
		47.666027, 35.269600, 34.696014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.287201, 35.195156, 35.394127>,  <47.200996, 35.773499, 34.836838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.287201, 35.195156, 35.394127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.636608, 35.258080, 35.209854>,  <47.846252, 35.295834, 35.099289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.636608, 35.258080, 35.209854>,  <47.287201, 35.195156, 35.394127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.636608, 35.258080, 35.209854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447738, 0.111796, 0.887148,
		0.191058, -0.981201, 0.027223,
		0.873515, 0.157308, -0.460680,
		47.898663, 35.305271, 35.071651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.795162, 36.109932, 46.220520> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.496807, 35.855434, 46.299358>,  <38.317795, 35.702736, 46.346661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.496807, 35.855434, 46.299358>,  <38.795162, 36.109932, 46.220520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.496807, 35.855434, 46.299358> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215761, -0.049154, -0.975208,
		0.630156, -0.769922, -0.100613,
		-0.745889, -0.636242, 0.197094,
		38.273041, 35.664562, 46.358486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.872894, 35.498684, 45.743851>,  <38.795162, 36.109932, 46.220520>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.872894, 35.498684, 45.743851> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.488338, 35.503471, 45.853828>,  <38.257607, 35.506344, 45.919815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.488338, 35.503471, 45.853828>,  <38.872894, 35.498684, 45.743851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.488338, 35.503471, 45.853828> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275085, -0.070753, -0.958813,
		0.007976, -0.997422, 0.071313,
		-0.961387, 0.011969, 0.274940,
		38.199921, 35.507061, 45.936310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.544071, 34.916180, 45.414738>,  <38.872894, 35.498684, 45.743851>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.544071, 34.916180, 45.414738> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.253613, 35.178711, 45.496666>,  <38.079338, 35.336231, 45.545822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.253613, 35.178711, 45.496666>,  <38.544071, 34.916180, 45.414738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.253613, 35.178711, 45.496666> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435401, -0.208417, -0.875779,
		-0.532111, -0.725118, 0.437106,
		-0.726143, 0.656328, 0.204816,
		38.035770, 35.375610, 45.558109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935577, 34.676208, 45.053383>,  <38.544071, 34.916180, 45.414738>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.935577, 34.676208, 45.053383> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.788483, 35.038029, 45.139687>,  <37.700226, 35.255123, 45.191467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.788483, 35.038029, 45.139687>,  <37.935577, 34.676208, 45.053383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.788483, 35.038029, 45.139687> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464119, 0.022529, -0.885487,
		-0.805830, -0.425766, 0.411535,
		-0.367739, 0.904553, 0.215760,
		37.678162, 35.309395, 45.204414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.098892, 34.666317, 44.960808>,  <37.935577, 34.676208, 45.053383>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.098892, 34.666317, 44.960808> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.243118, 35.037910, 44.927391>,  <37.329655, 35.260868, 44.907341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.243118, 35.037910, 44.927391>,  <37.098892, 34.666317, 44.960808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.243118, 35.037910, 44.927391> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256835, 0.012785, -0.966371,
		-0.896675, 0.369899, 0.243205,
		0.360569, 0.928984, -0.083539,
		37.351288, 35.316605, 44.902328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.583878, 34.943810, 44.676998>,  <37.098892, 34.666317, 44.960808>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.583878, 34.943810, 44.676998> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.882065, 35.195312, 44.588509>,  <37.060978, 35.346214, 44.535416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.882065, 35.195312, 44.588509>,  <36.583878, 34.943810, 44.676998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.882065, 35.195312, 44.588509> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210854, -0.092404, -0.973140,
		-0.632315, 0.772089, 0.063693,
		0.745466, 0.628761, -0.221226,
		37.105705, 35.383942, 44.522141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.341820, 35.498035, 44.141193>,  <36.583878, 34.943810, 44.676998>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.341820, 35.498035, 44.141193> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.736629, 35.448536, 44.100281>,  <36.973515, 35.418835, 44.075733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.736629, 35.448536, 44.100281>,  <36.341820, 35.498035, 44.141193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.736629, 35.448536, 44.100281> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102841, 0.001878, -0.994696,
		0.123284, 0.992312, -0.010873,
		0.987028, -0.123748, -0.102282,
		37.032738, 35.411411, 44.069595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.518749, 36.025215, 43.690018>,  <36.341820, 35.498035, 44.141193>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.518749, 36.025215, 43.690018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.824085, 35.766911, 43.683132>,  <37.007286, 35.611927, 43.679001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.824085, 35.766911, 43.683132>,  <36.518749, 36.025215, 43.690018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.824085, 35.766911, 43.683132> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042443, 0.076724, -0.996148,
		0.644600, 0.759671, 0.085975,
		0.763341, -0.645766, -0.017213,
		37.053089, 35.573181, 43.677967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.978317, 36.313591, 43.132572>,  <36.518749, 36.025215, 43.690018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.978317, 36.313591, 43.132572> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.091915, 35.935730, 43.198261>,  <37.160076, 35.709011, 43.237675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.091915, 35.935730, 43.198261>,  <36.978317, 36.313591, 43.132572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.091915, 35.935730, 43.198261> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077368, -0.148143, -0.985935,
		0.955698, 0.292709, 0.031014,
		0.283998, -0.944656, 0.164226,
		37.177113, 35.652332, 43.247528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.585114, 36.148117, 42.714050>,  <36.978317, 36.313591, 43.132572>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.585114, 36.148117, 42.714050> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.453323, 35.774704, 42.770565>,  <37.374249, 35.550655, 42.804474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.453323, 35.774704, 42.770565>,  <37.585114, 36.148117, 42.714050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.453323, 35.774704, 42.770565> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560004, -0.313693, -0.766807,
		0.760160, -0.173524, 0.626136,
		-0.329473, -0.933534, 0.141283,
		37.354481, 35.494644, 42.812950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.177765, 35.793362, 42.685112>,  <37.585114, 36.148117, 42.714050>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.177765, 35.793362, 42.685112> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.908386, 35.512505, 42.592628>,  <37.746758, 35.343990, 42.537140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.908386, 35.512505, 42.592628>,  <38.177765, 35.793362, 42.685112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.908386, 35.512505, 42.592628> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557225, -0.276648, -0.782921,
		0.485763, -0.656091, 0.577562,
		-0.673449, -0.702147, -0.231205,
		37.706352, 35.301861, 42.523266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494228, 35.188725, 42.697109>,  <38.177765, 35.793362, 42.685112>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.494228, 35.188725, 42.697109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.173477, 35.165253, 42.459267>,  <37.981026, 35.151169, 42.316563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.173477, 35.165253, 42.459267>,  <38.494228, 35.188725, 42.697109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.173477, 35.165253, 42.459267> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590652, -0.227996, -0.774047,
		-0.090142, -0.971892, 0.217487,
		-0.801876, -0.058685, -0.594602,
		37.932915, 35.147648, 42.280888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.718235, 34.705463, 42.252518>,  <38.494228, 35.188725, 42.697109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.718235, 34.705463, 42.252518> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.398121, 34.852032, 42.062660>,  <38.206055, 34.939972, 41.948746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.398121, 34.852032, 42.062660>,  <38.718235, 34.705463, 42.252518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.398121, 34.852032, 42.062660> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473023, -0.100676, -0.875279,
		-0.368506, -0.924986, -0.092757,
		-0.800283, 0.366422, -0.474639,
		38.158035, 34.961960, 41.920269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.756012, 34.263508, 41.671959>,  <38.718235, 34.705463, 42.252518>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.756012, 34.263508, 41.671959> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.519955, 34.570637, 41.572208>,  <38.378323, 34.754913, 41.512356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.519955, 34.570637, 41.572208>,  <38.756012, 34.263508, 41.671959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.519955, 34.570637, 41.572208> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412380, 0.021145, -0.910766,
		-0.694031, -0.640318, -0.329111,
		-0.590139, 0.767819, -0.249379,
		38.342915, 34.800983, 41.497395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.604652, 34.232250, 40.837116>,  <38.756012, 34.263508, 41.671959>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.604652, 34.232250, 40.837116> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.469322, 34.602852, 40.902992>,  <38.388123, 34.825214, 40.942520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.469322, 34.602852, 40.902992>,  <38.604652, 34.232250, 40.837116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.469322, 34.602852, 40.902992> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530421, 0.332320, -0.779882,
		-0.777295, -0.176500, -0.603871,
		-0.338327, 0.926505, 0.164692,
		38.367825, 34.880802, 40.952400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.208359, 34.468330, 40.218979>,  <38.604652, 34.232250, 40.837116>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.208359, 34.468330, 40.218979> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.335663, 34.789665, 40.420319>,  <38.412045, 34.982464, 40.541122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.335663, 34.789665, 40.420319>,  <38.208359, 34.468330, 40.218979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.335663, 34.789665, 40.420319> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350240, 0.393756, -0.849875,
		-0.880932, 0.446777, -0.156042,
		0.318262, 0.803335, 0.503352,
		38.431141, 35.030666, 40.571323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.999115, 34.964180, 39.837681>,  <38.208359, 34.468330, 40.218979>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.999115, 34.964180, 39.837681> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.300812, 35.103600, 40.060257>,  <38.481831, 35.187252, 40.193802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.300812, 35.103600, 40.060257>,  <37.999115, 34.964180, 39.837681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.300812, 35.103600, 40.060257> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490145, 0.265003, -0.830380,
		-0.436888, 0.899047, 0.029037,
		0.754246, 0.348551, 0.556440,
		38.527084, 35.208164, 40.227188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.187088, 35.611691, 39.650795>,  <37.999115, 34.964180, 39.837681>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.187088, 35.611691, 39.650795> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.519699, 35.494617, 39.839645>,  <38.719265, 35.424374, 39.952953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.519699, 35.494617, 39.839645>,  <38.187088, 35.611691, 39.650795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.519699, 35.494617, 39.839645> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555107, 0.406477, -0.725695,
		0.020493, 0.865513, 0.500468,
		0.831527, -0.292685, 0.472122,
		38.769157, 35.406811, 39.981281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606937, 36.183872, 39.763351>,  <38.187088, 35.611691, 39.650795>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.606937, 36.183872, 39.763351> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.846790, 35.863792, 39.758987>,  <38.990704, 35.671745, 39.756371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.846790, 35.863792, 39.758987>,  <38.606937, 36.183872, 39.763351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.846790, 35.863792, 39.758987> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546224, 0.419202, -0.725196,
		0.584876, 0.428892, 0.688456,
		0.599633, -0.800201, -0.010910,
		39.026680, 35.623734, 39.755714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.272530, 36.445335, 39.555088>,  <38.606937, 36.183872, 39.763351>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.272530, 36.445335, 39.555088> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.340439, 36.052567, 39.521622>,  <39.381184, 35.816906, 39.501541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.340439, 36.052567, 39.521622>,  <39.272530, 36.445335, 39.555088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.340439, 36.052567, 39.521622> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761183, 0.184578, -0.621716,
		0.625922, 0.041863, 0.778761,
		0.169769, -0.981926, -0.083666,
		39.391369, 35.757988, 39.496521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.012562, 36.350037, 39.591099>,  <39.272530, 36.445335, 39.555088>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.012562, 36.350037, 39.591099> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.869015, 36.034210, 39.391979>,  <39.782887, 35.844715, 39.272507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.869015, 36.034210, 39.391979>,  <40.012562, 36.350037, 39.591099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.869015, 36.034210, 39.391979> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711916, 0.113374, -0.693053,
		0.603646, -0.603107, 0.521415,
		-0.358870, -0.789562, -0.497800,
		39.761353, 35.797340, 39.242638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.625420, 36.210171, 39.141220>,  <40.012562, 36.350037, 39.591099>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.625420, 36.210171, 39.141220> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.327858, 35.995026, 38.982574>,  <40.149323, 35.865936, 38.887386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.327858, 35.995026, 38.982574>,  <40.625420, 36.210171, 39.141220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.327858, 35.995026, 38.982574> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459723, 0.018875, -0.887862,
		0.485037, -0.842819, 0.233229,
		-0.743904, -0.537866, -0.396618,
		40.104687, 35.833668, 38.863590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.593952, 36.058788, 38.403057>,  <40.625420, 36.210171, 39.141220>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.593952, 36.058788, 38.403057> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.976116, 35.998505, 38.301483>,  <41.205414, 35.962334, 38.240540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.976116, 35.998505, 38.301483>,  <40.593952, 36.058788, 38.403057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.976116, 35.998505, 38.301483> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218871, -0.215849, 0.951580,
		-0.198224, -0.964726, -0.173238,
		0.955407, -0.150709, -0.253936,
		41.262737, 35.953293, 38.225304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.701191, 35.418877, 38.672714>,  <40.593952, 36.058788, 38.403057>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.701191, 35.418877, 38.672714> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.069271, 35.561836, 38.608852>,  <41.290119, 35.647614, 38.570534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.069271, 35.561836, 38.608852>,  <40.701191, 35.418877, 38.672714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.069271, 35.561836, 38.608852> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274528, -0.298492, 0.914077,
		0.279036, -0.884967, -0.372790,
		0.920203, 0.357402, -0.159658,
		41.345333, 35.669056, 38.560955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.129227, 34.969906, 39.061104>,  <40.701191, 35.418877, 38.672714>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.129227, 34.969906, 39.061104> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.365341, 35.283535, 38.984371>,  <41.507011, 35.471710, 38.938332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.365341, 35.283535, 38.984371>,  <41.129227, 34.969906, 39.061104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.365341, 35.283535, 38.984371> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365555, -0.047776, 0.929563,
		0.719676, -0.618833, -0.314822,
		0.590285, 0.784069, -0.191834,
		41.542427, 35.518757, 38.926823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.844208, 34.818115, 39.338776>,  <41.129227, 34.969906, 39.061104>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.844208, 34.818115, 39.338776> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.814617, 35.216648, 39.321606>,  <41.796864, 35.455769, 39.311302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.814617, 35.216648, 39.321606>,  <41.844208, 34.818115, 39.338776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.814617, 35.216648, 39.321606> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301582, 0.063376, 0.951332,
		0.950566, 0.057430, -0.305166,
		-0.073975, 0.996336, -0.042924,
		41.792423, 35.515549, 39.308727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.333794, 34.992710, 39.829651>,  <41.844208, 34.818115, 39.338776>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.333794, 34.992710, 39.829651> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.093090, 35.311798, 39.814026>,  <41.948666, 35.503250, 39.804649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.093090, 35.311798, 39.814026>,  <42.333794, 34.992710, 39.829651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.093090, 35.311798, 39.814026> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286489, 0.261253, 0.921776,
		0.745526, 0.543497, -0.385749,
		-0.601761, 0.797721, -0.039065,
		41.912563, 35.551113, 39.802307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.721596, 35.641682, 40.085949>,  <42.333794, 34.992710, 39.829651>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.721596, 35.641682, 40.085949> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.330791, 35.719143, 40.121590>,  <42.096310, 35.765621, 40.142975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.330791, 35.719143, 40.121590>,  <42.721596, 35.641682, 40.085949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.330791, 35.719143, 40.121590> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117989, 0.143130, 0.982646,
		0.177540, 0.970573, -0.162689,
		-0.977015, 0.193655, 0.089106,
		42.037685, 35.777241, 40.148323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.761482, 36.251095, 40.614677>,  <42.721596, 35.641682, 40.085949>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.761482, 36.251095, 40.614677> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.387218, 36.110477, 40.627110>,  <42.162663, 36.026108, 40.634567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.387218, 36.110477, 40.627110>,  <42.761482, 36.251095, 40.614677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.387218, 36.110477, 40.627110> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003520, 0.097353, 0.995244,
		-0.352895, 0.931097, -0.092327,
		-0.935656, -0.351541, 0.031078,
		42.106522, 36.005016, 40.636433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.378014, 36.568157, 41.251987>,  <42.761482, 36.251095, 40.614677>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.378014, 36.568157, 41.251987> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.141624, 36.259293, 41.158592>,  <41.999790, 36.073975, 41.102554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.141624, 36.259293, 41.158592>,  <42.378014, 36.568157, 41.251987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.141624, 36.259293, 41.158592> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051531, -0.252715, 0.966167,
		-0.805044, 0.583010, 0.109557,
		-0.590972, -0.772162, -0.233490,
		41.964333, 36.027645, 41.088547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.713184, 36.657272, 41.662277>,  <42.378014, 36.568157, 41.251987>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.713184, 36.657272, 41.662277> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.737072, 36.280365, 41.530479>,  <41.751404, 36.054222, 41.451401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.737072, 36.280365, 41.530479>,  <41.713184, 36.657272, 41.662277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.737072, 36.280365, 41.530479> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123542, -0.334521, 0.934255,
		-0.990541, -0.015088, -0.136388,
		0.059720, -0.942268, -0.329493,
		41.754990, 35.997684, 41.431633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.091969, 36.211197, 41.956463>,  <41.713184, 36.657272, 41.662277>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.091969, 36.211197, 41.956463> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.375168, 35.946316, 41.858303>,  <41.545090, 35.787388, 41.799408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.375168, 35.946316, 41.858303>,  <41.091969, 36.211197, 41.956463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.375168, 35.946316, 41.858303> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099323, -0.437399, 0.893766,
		-0.699194, -0.608412, -0.375451,
		0.708000, -0.662207, -0.245397,
		41.587566, 35.747654, 41.784683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.844070, 35.542503, 41.967308>,  <41.091969, 36.211197, 41.956463>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.844070, 35.542503, 41.967308> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.240227, 35.489746, 41.983974>,  <41.477921, 35.458092, 41.993973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.240227, 35.489746, 41.983974>,  <40.844070, 35.542503, 41.967308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.240227, 35.489746, 41.983974> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090700, -0.391831, 0.915555,
		-0.104428, -0.910534, -0.400028,
		0.990388, -0.131892, 0.041667,
		41.537342, 35.450180, 41.996475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.912369, 34.869297, 42.170208>,  <40.844070, 35.542503, 41.967308>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.912369, 34.869297, 42.170208> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.276142, 35.003719, 42.268188>,  <41.494404, 35.084373, 42.326977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.276142, 35.003719, 42.268188>,  <40.912369, 34.869297, 42.170208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.276142, 35.003719, 42.268188> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127564, -0.335198, 0.933472,
		0.395807, -0.880175, -0.261971,
		0.909431, 0.336057, 0.244952,
		41.548973, 35.104538, 42.341675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.196766, 34.363800, 42.523079>,  <40.912369, 34.869297, 42.170208>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.196766, 34.363800, 42.523079> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.420464, 34.681202, 42.619076>,  <41.554684, 34.871643, 42.676674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.420464, 34.681202, 42.619076>,  <41.196766, 34.363800, 42.523079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.420464, 34.681202, 42.619076> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099282, -0.223307, 0.969679,
		0.823035, -0.566116, -0.046103,
		0.559246, 0.793503, 0.239994,
		41.588238, 34.919254, 42.691074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.530579, 34.036549, 43.015038>,  <41.196766, 34.363800, 42.523079>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.530579, 34.036549, 43.015038> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.561314, 34.434822, 43.035889>,  <41.579754, 34.673786, 43.048401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.561314, 34.434822, 43.035889>,  <41.530579, 34.036549, 43.015038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.561314, 34.434822, 43.035889> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166358, -0.038748, 0.985304,
		0.983067, -0.084383, 0.162662,
		0.076840, 0.995680, 0.052130,
		41.584366, 34.733524, 43.051529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.118900, 34.174091, 43.507385>,  <41.530579, 34.036549, 43.015038>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.118900, 34.174091, 43.507385> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.847843, 34.467937, 43.493874>,  <41.685211, 34.644245, 43.485767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.847843, 34.467937, 43.493874>,  <42.118900, 34.174091, 43.507385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.847843, 34.467937, 43.493874> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193540, -0.133837, 0.971921,
		0.709471, 0.665148, 0.232871,
		-0.677638, 0.734619, -0.033779,
		41.644550, 34.688324, 43.483738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.236439, 34.574059, 44.215614>,  <42.118900, 34.174091, 43.507385>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.236439, 34.574059, 44.215614> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.876236, 34.694355, 44.089985>,  <41.660114, 34.766533, 44.014606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.876236, 34.694355, 44.089985>,  <42.236439, 34.574059, 44.215614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.876236, 34.694355, 44.089985> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290655, 0.120940, 0.949154,
		0.323434, 0.946006, -0.021495,
		-0.900506, 0.300741, -0.314077,
		41.606083, 34.784576, 43.995762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.119942, 35.158443, 44.569950>,  <42.236439, 34.574059, 44.215614>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.119942, 35.158443, 44.569950> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.744938, 35.065865, 44.466022>,  <41.519936, 35.010319, 44.403664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.744938, 35.065865, 44.466022>,  <42.119942, 35.158443, 44.569950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.744938, 35.065865, 44.466022> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307253, 0.200179, 0.930336,
		-0.163310, 0.952030, -0.258782,
		-0.937510, -0.231444, -0.259823,
		41.463684, 34.996429, 44.388077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.616310, 35.673878, 44.819241>,  <42.119942, 35.158443, 44.569950>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.616310, 35.673878, 44.819241> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.345062, 35.394341, 44.728233>,  <41.182312, 35.226616, 44.673630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.345062, 35.394341, 44.728233>,  <41.616310, 35.673878, 44.819241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.345062, 35.394341, 44.728233> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404616, 0.096552, 0.909376,
		-0.613545, 0.708726, -0.348238,
		-0.678121, -0.698846, -0.227523,
		41.141624, 35.184689, 44.659977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.978760, 35.920273, 45.075817> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.920628, 35.525837, 45.043564>,  <40.885750, 35.289173, 45.024212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.920628, 35.525837, 45.043564>,  <40.978760, 35.920273, 45.075817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.920628, 35.525837, 45.043564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369465, -0.021516, 0.928996,
		-0.917810, 0.164802, -0.361200,
		-0.145329, -0.986092, -0.080636,
		40.877029, 35.230011, 45.019375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.382954, 35.822269, 45.454422>,  <40.978760, 35.920273, 45.075817>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.382954, 35.822269, 45.454422> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.525837, 35.448788, 45.444717>,  <40.611568, 35.224697, 45.438896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.525837, 35.448788, 45.444717>,  <40.382954, 35.822269, 45.454422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.525837, 35.448788, 45.444717> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189913, -0.098039, 0.976894,
		-0.914513, -0.344350, -0.212344,
		0.357211, -0.933708, -0.024261,
		40.632999, 35.168674, 45.437439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.892464, 35.381287, 45.793167>,  <40.382954, 35.822269, 45.454422>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.892464, 35.381287, 45.793167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.240307, 35.186844, 45.827759>,  <40.449013, 35.070179, 45.848515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.240307, 35.186844, 45.827759>,  <39.892464, 35.381287, 45.793167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.240307, 35.186844, 45.827759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074336, 0.044249, 0.996251,
		-0.488112, -0.872778, 0.002344,
		0.869610, -0.486108, 0.086477,
		40.501190, 35.041012, 45.853703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.810955, 34.937500, 46.379143>,  <39.892464, 35.381287, 45.793167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.810955, 34.937500, 46.379143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.208557, 34.930199, 46.336040>,  <40.447121, 34.925816, 46.310177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.208557, 34.930199, 46.336040>,  <39.810955, 34.937500, 46.379143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.208557, 34.930199, 46.336040> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105923, -0.082017, 0.990986,
		-0.026928, -0.996464, -0.079592,
		0.994009, -0.018255, -0.107757,
		40.506760, 34.924721, 46.303715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.034290, 34.392086, 46.839874>,  <39.810955, 34.937500, 46.379143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.034290, 34.392086, 46.839874> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.357891, 34.618076, 46.774982>,  <40.552052, 34.753670, 46.736046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.357891, 34.618076, 46.774982>,  <40.034290, 34.392086, 46.839874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.357891, 34.618076, 46.774982> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251143, -0.082693, 0.964411,
		0.531455, -0.820952, -0.208789,
		0.809001, 0.564977, -0.162229,
		40.600590, 34.787571, 46.726315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.603050, 34.111652, 47.169720>,  <40.034290, 34.392086, 46.839874>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.603050, 34.111652, 47.169720> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.721046, 34.492115, 47.133312>,  <40.791843, 34.720394, 47.111469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.721046, 34.492115, 47.133312>,  <40.603050, 34.111652, 47.169720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.721046, 34.492115, 47.133312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210107, 0.028352, 0.977267,
		0.932114, -0.307406, -0.191481,
		0.294988, 0.951156, -0.091016,
		40.809544, 34.777462, 47.106007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.245911, 34.100098, 47.553589>,  <40.603050, 34.111652, 47.169720>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.245911, 34.100098, 47.553589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.107376, 34.474625, 47.530399>,  <41.024254, 34.699341, 47.516483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.107376, 34.474625, 47.530399>,  <41.245911, 34.100098, 47.553589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.107376, 34.474625, 47.530399> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041444, 0.077012, 0.996168,
		0.937193, 0.342610, -0.065477,
		-0.346340, 0.936316, -0.057976,
		41.003475, 34.755520, 47.513008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.646469, 34.498367, 47.971127>,  <41.245911, 34.100098, 47.553589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.646469, 34.498367, 47.971127> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.296139, 34.683838, 47.917553>,  <41.085941, 34.795120, 47.885410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.296139, 34.683838, 47.917553>,  <41.646469, 34.498367, 47.971127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.296139, 34.683838, 47.917553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081317, 0.131768, 0.987940,
		0.475729, 0.876153, -0.077702,
		-0.875825, 0.463673, -0.133932,
		41.033390, 34.822941, 47.877373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.800442, 35.175770, 48.190449>,  <41.646469, 34.498367, 47.971127>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.800442, 35.175770, 48.190449> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.402477, 35.166168, 48.229610>,  <41.163700, 35.160408, 48.253105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.402477, 35.166168, 48.229610>,  <41.800442, 35.175770, 48.190449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.402477, 35.166168, 48.229610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095286, 0.092875, 0.991108,
		-0.032882, 0.995388, -0.090115,
		-0.994907, -0.024002, 0.097901,
		41.104004, 35.158966, 48.258980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.544361, 35.733852, 48.750538>,  <41.800442, 35.175770, 48.190449>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.544361, 35.733852, 48.750538> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.265564, 35.448486, 48.721603>,  <41.098286, 35.277267, 48.704243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.265564, 35.448486, 48.721603>,  <41.544361, 35.733852, 48.750538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.265564, 35.448486, 48.721603> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014686, -0.115060, 0.993250,
		-0.716926, 0.691228, 0.090673,
		-0.696995, -0.713418, -0.072338,
		41.056465, 35.234459, 48.699902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.067120, 35.892746, 49.293259>,  <41.544361, 35.733852, 48.750538>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.067120, 35.892746, 49.293259> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.994164, 35.505646, 49.223759>,  <40.950390, 35.273384, 49.182060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.994164, 35.505646, 49.223759>,  <41.067120, 35.892746, 49.293259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.994164, 35.505646, 49.223759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187239, -0.139294, 0.972388,
		-0.965233, 0.209890, -0.155795,
		-0.182393, -0.967752, -0.173751,
		40.939445, 35.215321, 49.171635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.527664, 35.685143, 49.740929>,  <41.067120, 35.892746, 49.293259>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.527664, 35.685143, 49.740929> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.708042, 35.344013, 49.635601>,  <40.816269, 35.139336, 49.572403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.708042, 35.344013, 49.635601>,  <40.527664, 35.685143, 49.740929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.708042, 35.344013, 49.635601> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075536, -0.257497, 0.963322,
		-0.889349, -0.454298, -0.051699,
		0.450947, -0.852824, -0.263320,
		40.843327, 35.088165, 49.556606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.318768, 35.231117, 50.258408>,  <40.527664, 35.685143, 49.740929>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.318768, 35.231117, 50.258408> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.618439, 35.030056, 50.085861>,  <40.798241, 34.909420, 49.982334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.618439, 35.030056, 50.085861>,  <40.318768, 35.231117, 50.258408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.618439, 35.030056, 50.085861> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049552, -0.606884, 0.793244,
		-0.660519, -0.615651, -0.429753,
		0.749172, -0.502658, -0.431366,
		40.843189, 34.879261, 49.956451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.270706, 34.509830, 50.540508>,  <40.318768, 35.231117, 50.258408>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.270706, 34.509830, 50.540508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.646503, 34.560883, 50.413345>,  <40.871983, 34.591515, 50.337048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.646503, 34.560883, 50.413345>,  <40.270706, 34.509830, 50.540508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.646503, 34.560883, 50.413345> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337642, -0.501821, 0.796350,
		-0.057895, -0.855504, -0.514550,
		0.939493, 0.127629, -0.317906,
		40.928352, 34.599171, 50.317974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.613892, 33.790474, 50.524563>,  <40.270706, 34.509830, 50.540508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.613892, 33.790474, 50.524563> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.887558, 34.081581, 50.543636>,  <41.051758, 34.256245, 50.555080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.887558, 34.081581, 50.543636>,  <40.613892, 33.790474, 50.524563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.887558, 34.081581, 50.543636> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528227, -0.539532, 0.655653,
		0.502889, -0.423389, -0.753555,
		0.684163, 0.727769, 0.047679,
		41.092808, 34.299911, 50.557941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.373104, 33.516796, 50.433384>,  <40.613892, 33.790474, 50.524563>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.373104, 33.516796, 50.433384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.374710, 33.858337, 50.641586>,  <41.375671, 34.063263, 50.766506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.374710, 33.858337, 50.641586>,  <41.373104, 33.516796, 50.433384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.374710, 33.858337, 50.641586> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371193, -0.484590, 0.792078,
		0.928547, 0.190028, -0.318889,
		0.004013, 0.853851, 0.520502,
		41.375916, 34.114494, 50.797737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.775547, 33.358620, 51.052692>,  <41.373104, 33.516796, 50.433384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.775547, 33.358620, 51.052692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.655518, 33.728268, 51.147312>,  <41.583500, 33.950058, 51.204082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.655518, 33.728268, 51.147312>,  <41.775547, 33.358620, 51.052692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.655518, 33.728268, 51.147312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174614, -0.190571, 0.966019,
		0.937798, 0.331183, -0.104179,
		-0.300076, 0.924121, 0.236546,
		41.565495, 34.005505, 51.218277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.315765, 33.730183, 51.311958>,  <41.775547, 33.358620, 51.052692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.315765, 33.730183, 51.311958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.972565, 33.867397, 51.464882>,  <41.766644, 33.949726, 51.556637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.972565, 33.867397, 51.464882>,  <42.315765, 33.730183, 51.311958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.972565, 33.867397, 51.464882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345973, -0.164174, 0.923769,
		0.379651, 0.924864, 0.022180,
		-0.858002, 0.343036, 0.382307,
		41.715164, 33.970306, 51.579575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.486591, 34.221138, 51.846539>,  <42.315765, 33.730183, 51.311958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.486591, 34.221138, 51.846539> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.105473, 34.139721, 51.936653>,  <41.876801, 34.090870, 51.990723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.105473, 34.139721, 51.936653>,  <42.486591, 34.221138, 51.846539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.105473, 34.139721, 51.936653> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266903, -0.207822, 0.941049,
		-0.144722, 0.956756, 0.252338,
		-0.952795, -0.203541, 0.225285,
		41.819633, 34.078659, 52.004238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.481396, 34.387283, 52.523926>,  <42.486591, 34.221138, 51.846539>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.481396, 34.387283, 52.523926> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.133095, 34.195789, 52.479034>,  <41.924114, 34.080894, 52.452099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.133095, 34.195789, 52.479034>,  <42.481396, 34.387283, 52.523926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.133095, 34.195789, 52.479034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000633, -0.227155, 0.973858,
		-0.491713, 0.848065, 0.197494,
		-0.870757, -0.478734, -0.112232,
		41.871868, 34.052170, 52.445366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.969807, 34.549976, 53.060802>,  <42.481396, 34.387283, 52.523926>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.969807, 34.549976, 53.060802> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.887215, 34.182186, 52.926983>,  <41.837658, 33.961510, 52.846691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.887215, 34.182186, 52.926983>,  <41.969807, 34.549976, 53.060802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.887215, 34.182186, 52.926983> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001739, -0.341573, 0.939853,
		-0.978448, 0.194646, 0.068931,
		-0.206484, -0.919478, -0.334550,
		41.825268, 33.906342, 52.826618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.350010, 34.340981, 53.547966>,  <41.969807, 34.549976, 53.060802>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.350010, 34.340981, 53.547966> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.483433, 33.998898, 53.389290>,  <41.563488, 33.793648, 53.294086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.483433, 33.998898, 53.389290>,  <41.350010, 34.340981, 53.547966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.483433, 33.998898, 53.389290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012574, -0.424786, 0.905206,
		-0.942645, -0.296952, -0.152444,
		0.333559, -0.855205, -0.396689,
		41.583500, 33.742336, 53.270283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.912533, 33.756931, 53.793594>,  <41.350010, 34.340981, 53.547966>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.912533, 33.756931, 53.793594> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.272320, 33.618137, 53.687340>,  <41.488190, 33.534859, 53.623585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.272320, 33.618137, 53.687340>,  <40.912533, 33.756931, 53.793594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.272320, 33.618137, 53.687340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077849, -0.470923, 0.878733,
		-0.430004, -0.811069, -0.396566,
		0.899464, -0.346986, -0.265640,
		41.542160, 33.514042, 53.607647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.496346, 33.171711, 54.105728>,  <40.912533, 33.756931, 53.793594>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.496346, 33.171711, 54.105728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.105640, 33.086418, 54.097115>,  <39.871216, 33.035244, 54.091946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.105640, 33.086418, 54.097115>,  <40.496346, 33.171711, 54.105728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.105640, 33.086418, 54.097115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097003, 0.529460, -0.842771,
		0.191104, -0.821100, -0.537841,
		-0.976765, -0.213229, -0.021533,
		39.812611, 33.022449, 54.090656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.428493, 33.002537, 53.462452>,  <40.496346, 33.171711, 54.105728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.428493, 33.002537, 53.462452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.071991, 33.116127, 53.603889>,  <39.858089, 33.184280, 53.688751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.071991, 33.116127, 53.603889>,  <40.428493, 33.002537, 53.462452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.071991, 33.116127, 53.603889> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152229, 0.547113, -0.823100,
		-0.427193, -0.787417, -0.444387,
		-0.891253, 0.283974, 0.353591,
		39.804615, 33.201321, 53.709969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.940910, 32.915604, 52.942955>,  <40.428493, 33.002537, 53.462452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.940910, 32.915604, 52.942955> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.722084, 33.170551, 53.160019>,  <39.590790, 33.323521, 53.290257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.722084, 33.170551, 53.160019>,  <39.940910, 32.915604, 52.942955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.722084, 33.170551, 53.160019> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237149, 0.503701, -0.830690,
		-0.802796, -0.583131, -0.124404,
		-0.547063, 0.637373, 0.542658,
		39.557964, 33.361763, 53.322815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.198368, 32.831402, 52.634087>,  <39.940910, 32.915604, 52.942955>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.198368, 32.831402, 52.634087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.181366, 33.187729, 52.815033>,  <39.171165, 33.401524, 52.923603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.181366, 33.187729, 52.815033>,  <39.198368, 32.831402, 52.634087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.181366, 33.187729, 52.815033> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488472, 0.376443, -0.787201,
		-0.871544, -0.254434, 0.419136,
		-0.042510, 0.890816, 0.452370,
		39.168613, 33.454975, 52.950745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.525116, 33.029766, 52.666515>,  <39.198368, 32.831402, 52.634087>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.525116, 33.029766, 52.666515> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.734821, 33.370247, 52.676300>,  <38.860645, 33.574535, 52.682171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.734821, 33.370247, 52.676300>,  <38.525116, 33.029766, 52.666515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.734821, 33.370247, 52.676300> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573220, 0.374006, -0.729066,
		-0.629733, 0.368202, 0.684005,
		0.524266, 0.851203, 0.024463,
		38.892101, 33.625607, 52.683640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036137, 33.593456, 52.656818>,  <38.525116, 33.029766, 52.666515>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.036137, 33.593456, 52.656818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.374470, 33.772438, 52.540646>,  <38.577469, 33.879829, 52.470940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.374470, 33.772438, 52.540646>,  <38.036137, 33.593456, 52.656818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.374470, 33.772438, 52.540646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506957, 0.504786, -0.698703,
		-0.166034, 0.738222, 0.653805,
		0.845829, 0.447459, -0.290435,
		38.628220, 33.906677, 52.453514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.789169, 34.174477, 52.490189>,  <38.036137, 33.593456, 52.656818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.789169, 34.174477, 52.490189> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.146992, 34.187302, 52.311867>,  <38.361687, 34.194996, 52.204876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.146992, 34.187302, 52.311867>,  <37.789169, 34.174477, 52.490189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.146992, 34.187302, 52.311867> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370989, 0.609539, -0.700592,
		0.249268, 0.792108, 0.557164,
		0.894557, 0.032066, -0.445802,
		38.415359, 34.196922, 52.178127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.848816, 34.896484, 52.154816>,  <37.789169, 34.174477, 52.490189>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.848816, 34.896484, 52.154816> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.101540, 34.649395, 51.967525>,  <38.253174, 34.501141, 51.855152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.101540, 34.649395, 51.967525>,  <37.848816, 34.896484, 52.154816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.101540, 34.649395, 51.967525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330319, 0.331892, -0.883593,
		0.701219, 0.712924, 0.005645,
		0.631808, -0.617727, -0.468221,
		38.291080, 34.464077, 51.827061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.024548, 35.363720, 51.551376>,  <37.848816, 34.896484, 52.154816>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.024548, 35.363720, 51.551376> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.155987, 34.993740, 51.474960>,  <38.234848, 34.771751, 51.429111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.155987, 34.993740, 51.474960>,  <38.024548, 35.363720, 51.551376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.155987, 34.993740, 51.474960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005674, 0.204202, -0.978912,
		0.944454, 0.320582, 0.072348,
		0.328596, -0.924948, -0.191040,
		38.254566, 34.716255, 51.417648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.575108, 35.346752, 51.047676>,  <38.024548, 35.363720, 51.551376>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.575108, 35.346752, 51.047676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.441067, 34.971130, 51.017017>,  <38.360641, 34.745758, 50.998623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.441067, 34.971130, 51.017017>,  <38.575108, 35.346752, 51.047676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.441067, 34.971130, 51.017017> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068215, 0.056953, -0.996044,
		0.939709, -0.339004, 0.044973,
		-0.335102, -0.939059, -0.076644,
		38.340534, 34.689411, 50.994022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.134148, 35.037506, 50.838364>,  <38.575108, 35.346752, 51.047676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.134148, 35.037506, 50.838364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.820274, 34.812138, 50.734955>,  <38.631950, 34.676918, 50.672909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.820274, 34.812138, 50.734955>,  <39.134148, 35.037506, 50.838364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.820274, 34.812138, 50.734955> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319761, -0.010607, -0.947439,
		0.531062, -0.826104, 0.188482,
		-0.784682, -0.563418, -0.258523,
		38.584869, 34.643112, 50.657398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.400120, 34.605747, 50.423248>,  <39.134148, 35.037506, 50.838364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.400120, 34.605747, 50.423248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.008778, 34.572674, 50.347378>,  <38.773972, 34.552830, 50.301857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.008778, 34.572674, 50.347378>,  <39.400120, 34.605747, 50.423248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.008778, 34.572674, 50.347378> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181239, 0.099827, -0.978359,
		0.099827, -0.991564, -0.082681,
		0.978359, 0.082681, 0.189676,
		38.715271, 34.547871, 50.290474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.262005, 34.079887, 49.886448>,  <39.400120, 34.605747, 50.423248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.262005, 34.079887, 49.886448> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.926315, 34.296791, 49.870148>,  <38.724903, 34.426933, 49.860367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.926315, 34.296791, 49.870148>,  <39.262005, 34.079887, 49.886448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.926315, 34.296791, 49.870148> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045154, -0.005190, -0.998967,
		-0.541913, -0.840194, -0.020130,
		-0.839221, 0.542262, -0.040751,
		38.674549, 34.459469, 49.857922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.195549, 34.086861, 49.283051>,  <39.262005, 34.079887, 49.886448>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.195549, 34.086861, 49.283051> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.930874, 34.368210, 49.386925>,  <38.772068, 34.537018, 49.449249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.930874, 34.368210, 49.386925>,  <39.195549, 34.086861, 49.283051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.930874, 34.368210, 49.386925> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158907, 0.206928, -0.965365,
		-0.732749, -0.680034, -0.025150,
		-0.661685, 0.703374, 0.259689,
		38.732368, 34.579224, 49.464832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.525990, 33.964478, 48.956924>,  <39.195549, 34.086861, 49.283051>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.525990, 33.964478, 48.956924> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.551975, 34.355377, 49.037678>,  <38.567566, 34.589916, 49.086128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.551975, 34.355377, 49.037678>,  <38.525990, 33.964478, 48.956924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.551975, 34.355377, 49.037678> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247885, 0.211771, -0.945360,
		-0.966609, 0.011368, 0.256003,
		0.064961, 0.977253, 0.201881,
		38.571465, 34.648552, 49.098244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.922718, 34.282806, 48.613922>,  <38.525990, 33.964478, 48.956924>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.922718, 34.282806, 48.613922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.180138, 34.584255, 48.667435>,  <38.334591, 34.765125, 48.699543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.180138, 34.584255, 48.667435>,  <37.922718, 34.282806, 48.613922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.180138, 34.584255, 48.667435> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265374, 0.383631, -0.884536,
		-0.717929, 0.533740, 0.446877,
		0.643549, 0.753623, 0.133780,
		38.373203, 34.810341, 48.707569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.599854, 34.843403, 48.458321>,  <37.922718, 34.282806, 48.613922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.599854, 34.843403, 48.458321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.973377, 34.984818, 48.436367>,  <38.197491, 35.069668, 48.423195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.973377, 34.984818, 48.436367>,  <37.599854, 34.843403, 48.458321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.973377, 34.984818, 48.436367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191595, 0.364596, -0.911242,
		-0.302146, 0.861442, 0.408199,
		0.933809, 0.353537, -0.054887,
		38.253521, 35.090878, 48.419903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.524307, 35.499485, 48.205528>,  <37.599854, 34.843403, 48.458321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.524307, 35.499485, 48.205528> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.905025, 35.401226, 48.132050>,  <38.133457, 35.342270, 48.087963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.905025, 35.401226, 48.132050>,  <37.524307, 35.499485, 48.205528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.905025, 35.401226, 48.132050> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100216, 0.316962, -0.943129,
		0.289903, 0.916074, 0.277065,
		0.951795, -0.245650, -0.183693,
		38.190563, 35.327530, 48.076942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.610279, 35.986462, 47.679546>,  <37.524307, 35.499485, 48.205528>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.610279, 35.986462, 47.679546> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.922844, 35.737698, 47.659088>,  <38.110382, 35.588440, 47.646812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.922844, 35.737698, 47.659088>,  <37.610279, 35.986462, 47.679546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.922844, 35.737698, 47.659088> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013822, 0.099197, -0.994972,
		0.623856, 0.776781, 0.086111,
		0.781417, -0.621909, -0.051148,
		38.157269, 35.551125, 47.643745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.235371, 36.372169, 47.380241>,  <37.610279, 35.986462, 47.679546>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.235371, 36.372169, 47.380241> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.255833, 35.978016, 47.315250>,  <38.268108, 35.741524, 47.276257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.255833, 35.978016, 47.315250>,  <38.235371, 36.372169, 47.380241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.255833, 35.978016, 47.315250> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119687, 0.167570, -0.978568,
		0.991493, 0.030607, 0.126509,
		0.051151, -0.985385, -0.162482,
		38.271179, 35.682400, 47.266506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512859, 36.395184, 46.796074>,  <38.235371, 36.372169, 47.380241>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.512859, 36.395184, 46.796074> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.375908, 36.020092, 46.772610>,  <38.293739, 35.795036, 46.758530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.375908, 36.020092, 46.772610>,  <38.512859, 36.395184, 46.796074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.375908, 36.020092, 46.772610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200582, 0.133946, -0.970477,
		0.917903, -0.320501, -0.233952,
		-0.342376, -0.937730, -0.058663,
		38.273193, 35.738773, 46.755013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.321636, 33.753361, 27.072300> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.002777, 33.648327, 27.289782>,  <41.811462, 33.585308, 27.420271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.002777, 33.648327, 27.289782>,  <42.321636, 33.753361, 27.072300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.002777, 33.648327, 27.289782> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160946, 0.775496, 0.610493,
		-0.581944, 0.574158, -0.575920,
		-0.797143, -0.262581, 0.543704,
		41.763634, 33.569553, 27.452892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.821774, 34.325928, 27.161345>,  <42.321636, 33.753361, 27.072300>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.821774, 34.325928, 27.161345> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.766266, 34.079865, 27.471783>,  <41.732960, 33.932228, 27.658045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.766266, 34.079865, 27.471783>,  <41.821774, 34.325928, 27.161345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.766266, 34.079865, 27.471783> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155426, 0.760437, 0.630538,
		-0.978052, 0.208125, -0.009915,
		-0.138770, -0.615158, 0.776095,
		41.724636, 33.895317, 27.704611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.432674, 34.708233, 27.595995>,  <41.821774, 34.325928, 27.161345>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.432674, 34.708233, 27.595995> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.586243, 34.437748, 27.847500>,  <41.678383, 34.275455, 27.998404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.586243, 34.437748, 27.847500>,  <41.432674, 34.708233, 27.595995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.586243, 34.437748, 27.847500> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288818, 0.734722, 0.613814,
		-0.877033, -0.054060, 0.477379,
		0.383923, -0.676211, 0.628762,
		41.701420, 34.234886, 28.036129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.201492, 34.902287, 28.230532>,  <41.432674, 34.708233, 27.595995>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.201492, 34.902287, 28.230532> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.513657, 34.674702, 28.334257>,  <41.700954, 34.538151, 28.396492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.513657, 34.674702, 28.334257>,  <41.201492, 34.902287, 28.230532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.513657, 34.674702, 28.334257> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325783, 0.723976, 0.608049,
		-0.533697, -0.390045, 0.750355,
		0.780406, -0.568967, 0.259313,
		41.747780, 34.504013, 28.412050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.353619, 35.100204, 28.863129>,  <41.201492, 34.902287, 28.230532>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.353619, 35.100204, 28.863129> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.695595, 34.896465, 28.823854>,  <41.900780, 34.774223, 28.800289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.695595, 34.896465, 28.823854>,  <41.353619, 35.100204, 28.863129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.695595, 34.896465, 28.823854> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394094, 0.514717, 0.761417,
		-0.337286, -0.689663, 0.640783,
		0.854943, -0.509344, -0.098185,
		41.952076, 34.743664, 28.794399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.529858, 34.747173, 29.463095>,  <41.353619, 35.100204, 28.863129>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.529858, 34.747173, 29.463095> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.889217, 34.801041, 29.295887>,  <42.104836, 34.833359, 29.195562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.889217, 34.801041, 29.295887>,  <41.529858, 34.747173, 29.463095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.889217, 34.801041, 29.295887> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308540, 0.483828, 0.818971,
		0.312535, -0.864741, 0.393123,
		0.898401, 0.134663, -0.418020,
		42.158737, 34.841438, 29.170481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.047562, 34.576565, 29.948599>,  <41.529858, 34.747173, 29.463095>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.047562, 34.576565, 29.948599> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.207172, 34.827961, 29.681534>,  <42.302940, 34.978798, 29.521296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.207172, 34.827961, 29.681534>,  <42.047562, 34.576565, 29.948599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.207172, 34.827961, 29.681534> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412514, 0.527250, 0.742859,
		0.818906, -0.571843, -0.048873,
		0.399030, 0.628493, -0.667662,
		42.326881, 35.016510, 29.481236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.469353, 34.717831, 30.340788>,  <42.047562, 34.576565, 29.948599>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.469353, 34.717831, 30.340788> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.541718, 34.977768, 30.045500>,  <42.585136, 35.133732, 29.868326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.541718, 34.977768, 30.045500>,  <42.469353, 34.717831, 30.340788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.541718, 34.977768, 30.045500> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594532, 0.525674, 0.608440,
		0.783457, -0.548968, -0.291256,
		0.180909, 0.649847, -0.738221,
		42.595989, 35.172722, 29.824034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.220387, 34.699516, 30.197594>,  <42.469353, 34.717831, 30.340788>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.220387, 34.699516, 30.197594> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.049248, 35.044865, 30.090605>,  <42.946564, 35.252071, 30.026411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.049248, 35.044865, 30.090605>,  <43.220387, 34.699516, 30.197594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.049248, 35.044865, 30.090605> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462362, 0.463335, 0.756004,
		0.776639, 0.199786, -0.597426,
		-0.427847, 0.863369, -0.267471,
		42.920895, 35.303875, 30.010363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.743679, 35.121334, 30.291660>,  <43.220387, 34.699516, 30.197594>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.743679, 35.121334, 30.291660> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.457550, 35.400826, 30.295527>,  <43.285873, 35.568520, 30.297846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.457550, 35.400826, 30.295527>,  <43.743679, 35.121334, 30.291660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.457550, 35.400826, 30.295527> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369987, 0.366965, 0.853491,
		0.592811, 0.614097, -0.521018,
		-0.715321, 0.698729, 0.009667,
		43.242954, 35.610443, 30.298426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.111965, 35.660553, 30.403027>,  <43.743679, 35.121334, 30.291660>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.111965, 35.660553, 30.403027> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.742508, 35.767872, 30.512497>,  <43.520832, 35.832264, 30.578180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.742508, 35.767872, 30.512497>,  <44.111965, 35.660553, 30.403027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.742508, 35.767872, 30.512497> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347532, 0.285299, 0.893211,
		0.161563, 0.920121, -0.356755,
		-0.923645, 0.268293, 0.273678,
		43.465416, 35.848358, 30.594601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.280949, 36.265110, 30.703279>,  <44.111965, 35.660553, 30.403027>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.280949, 36.265110, 30.703279> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.917210, 36.177559, 30.844799>,  <43.698967, 36.125027, 30.929710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.917210, 36.177559, 30.844799>,  <44.280949, 36.265110, 30.703279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.917210, 36.177559, 30.844799> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231164, 0.441219, 0.867115,
		-0.345895, 0.870298, -0.350626,
		-0.909351, -0.218879, 0.353797,
		43.644405, 36.111897, 30.950937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.127499, 36.787643, 31.004650>,  <44.280949, 36.265110, 30.703279>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.127499, 36.787643, 31.004650> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.896816, 36.510460, 31.177725>,  <43.758408, 36.344151, 31.281570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.896816, 36.510460, 31.177725>,  <44.127499, 36.787643, 31.004650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.896816, 36.510460, 31.177725> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279025, 0.330710, 0.901541,
		-0.767823, 0.640656, 0.002630,
		-0.576708, -0.692958, 0.432686,
		43.723804, 36.302574, 31.307531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.696602, 37.065342, 31.564955>,  <44.127499, 36.787643, 31.004650>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.696602, 37.065342, 31.564955> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.688473, 36.677818, 31.663746>,  <43.683594, 36.445305, 31.723021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.688473, 36.677818, 31.663746>,  <43.696602, 37.065342, 31.564955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.688473, 36.677818, 31.663746> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067697, 0.245129, 0.967124,
		-0.997499, 0.036374, 0.060604,
		-0.020323, -0.968808, 0.246978,
		43.682377, 36.387177, 31.737839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.312977, 37.026299, 32.237110>,  <43.696602, 37.065342, 31.564955>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.312977, 37.026299, 32.237110> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.498482, 36.672913, 32.210522>,  <43.609783, 36.460880, 32.194569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.498482, 36.672913, 32.210522>,  <43.312977, 37.026299, 32.237110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.498482, 36.672913, 32.210522> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243632, 0.055039, 0.968305,
		-0.851802, -0.465258, 0.240764,
		0.463763, -0.883462, -0.066469,
		43.637611, 36.407875, 32.190582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.013130, 36.588322, 32.680134>,  <43.312977, 37.026299, 32.237110>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.013130, 36.588322, 32.680134> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.369644, 36.414719, 32.627598>,  <43.583553, 36.310558, 32.596077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.369644, 36.414719, 32.627598>,  <43.013130, 36.588322, 32.680134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.369644, 36.414719, 32.627598> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111349, -0.071296, 0.991220,
		-0.439562, -0.898083, -0.015219,
		0.891283, -0.434009, -0.131339,
		43.637028, 36.284515, 32.588196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.077133, 36.089916, 33.236450>,  <43.013130, 36.588322, 32.680134>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.077133, 36.089916, 33.236450> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.454483, 36.110806, 33.105415>,  <43.680893, 36.123341, 33.026794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.454483, 36.110806, 33.105415>,  <43.077133, 36.089916, 33.236450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.454483, 36.110806, 33.105415> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330043, -0.247046, 0.911065,
		-0.033347, -0.967595, -0.250294,
		0.943377, 0.052226, -0.327587,
		43.737495, 36.126472, 33.007141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.458363, 35.567749, 33.487190>,  <43.077133, 36.089916, 33.236450>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.458363, 35.567749, 33.487190> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.744671, 35.827526, 33.384510>,  <43.916454, 35.983395, 33.322903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.744671, 35.827526, 33.384510>,  <43.458363, 35.567749, 33.487190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.744671, 35.827526, 33.384510> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499571, -0.219348, 0.838042,
		0.487956, -0.728085, -0.481447,
		0.715770, 0.649445, -0.256698,
		43.959400, 36.022358, 33.307499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.128139, 35.188469, 33.474476>,  <43.458363, 35.567749, 33.487190>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.128139, 35.188469, 33.474476> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.190464, 35.581768, 33.512325>,  <44.227859, 35.817745, 33.535034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.190464, 35.581768, 33.512325>,  <44.128139, 35.188469, 33.474476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.190464, 35.581768, 33.512325> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564708, -0.167262, 0.808164,
		0.810449, -0.072489, -0.581307,
		0.155814, 0.983244, 0.094623,
		44.237209, 35.876740, 33.540710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.853222, 35.240406, 33.542500>,  <44.128139, 35.188469, 33.474476>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.853222, 35.240406, 33.542500> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.678444, 35.560654, 33.706493>,  <44.573578, 35.752804, 33.804890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.678444, 35.560654, 33.706493>,  <44.853222, 35.240406, 33.542500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.678444, 35.560654, 33.706493> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491758, -0.169032, 0.854168,
		0.753164, 0.574837, -0.319853,
		-0.436942, 0.800619, 0.409989,
		44.547359, 35.800838, 33.829491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.452114, 35.625122, 33.827492>,  <44.853222, 35.240406, 33.542500>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.452114, 35.625122, 33.827492> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.140591, 35.775780, 34.028130>,  <44.953678, 35.866177, 34.148514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.140591, 35.775780, 34.028130>,  <45.452114, 35.625122, 33.827492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.140591, 35.775780, 34.028130> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500445, -0.109010, 0.858878,
		0.378172, 0.919921, -0.103593,
		-0.778807, 0.376647, 0.501594,
		44.906948, 35.888775, 34.178608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.173256, 36.009380, 33.719910>,  <45.452114, 35.625122, 33.827492>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.173256, 36.009380, 33.719910> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.529469, 35.830070, 33.688911>,  <46.743195, 35.722485, 33.670311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.529469, 35.830070, 33.688911>,  <46.173256, 36.009380, 33.719910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.529469, 35.830070, 33.688911> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076318, 0.020724, -0.996868,
		0.448476, 0.893656, -0.015756,
		0.890531, -0.448274, -0.077496,
		46.796627, 35.695587, 33.665661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.710167, 36.391644, 33.266930>,  <46.173256, 36.009380, 33.719910>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.710167, 36.391644, 33.266930> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.826283, 36.009129, 33.281029>,  <46.895950, 35.779617, 33.289486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.826283, 36.009129, 33.281029>,  <46.710167, 36.391644, 33.266930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.826283, 36.009129, 33.281029> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022417, -0.043616, -0.998797,
		0.956677, 0.289149, -0.034098,
		0.290288, -0.956290, 0.035244,
		46.913368, 35.722240, 33.291603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.178322, 36.342678, 32.756485>,  <46.710167, 36.391644, 33.266930>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.178322, 36.342678, 32.756485> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.055832, 35.966743, 32.817074>,  <46.982338, 35.741184, 32.853428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.055832, 35.966743, 32.817074>,  <47.178322, 36.342678, 32.756485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.055832, 35.966743, 32.817074> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061972, -0.178458, -0.981994,
		0.949941, -0.291322, 0.112891,
		-0.306222, -0.939832, 0.151470,
		46.963966, 35.684795, 32.862514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.389061, 36.013561, 32.236290>,  <47.178322, 36.342678, 32.756485>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.389061, 36.013561, 32.236290> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.099365, 35.758610, 32.341537>,  <46.925549, 35.605640, 32.404686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.099365, 35.758610, 32.341537>,  <47.389061, 36.013561, 32.236290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.099365, 35.758610, 32.341537> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198775, -0.172398, -0.964763,
		0.660279, -0.751018, -0.001838,
		-0.724237, -0.637378, 0.263114,
		46.882095, 35.567398, 32.420471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.420528, 35.596889, 31.717983>,  <47.389061, 36.013561, 32.236290>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.420528, 35.596889, 31.717983> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.048595, 35.535519, 31.851770>,  <46.825436, 35.498695, 31.932043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.048595, 35.535519, 31.851770>,  <47.420528, 35.596889, 31.717983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.048595, 35.535519, 31.851770> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277415, -0.304901, -0.911085,
		0.241765, -0.939944, 0.240944,
		-0.929834, -0.153427, 0.334469,
		46.769646, 35.489491, 31.952110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.205597, 35.025269, 31.420570>,  <47.420528, 35.596889, 31.717983>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.205597, 35.025269, 31.420570> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.862930, 35.201317, 31.528215>,  <46.657330, 35.306946, 31.592802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.862930, 35.201317, 31.528215>,  <47.205597, 35.025269, 31.420570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.862930, 35.201317, 31.528215> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435001, -0.335872, -0.835442,
		-0.277302, -0.832760, 0.479181,
		-0.856666, 0.440114, 0.269114,
		46.605930, 35.333351, 31.608950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.729340, 34.587124, 31.216808>,  <47.205597, 35.025269, 31.420570>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.729340, 34.587124, 31.216808> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.502567, 34.909023, 31.287197>,  <46.366505, 35.102161, 31.329432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.502567, 34.909023, 31.287197>,  <46.729340, 34.587124, 31.216808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.502567, 34.909023, 31.287197> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470913, -0.141337, -0.870784,
		-0.675891, -0.576543, 0.459096,
		-0.566932, 0.804750, 0.175973,
		46.332489, 35.150448, 31.339989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.974480, 34.397053, 31.230110>,  <46.729340, 34.587124, 31.216808>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.974480, 34.397053, 31.230110> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.007656, 34.779343, 31.117180>,  <46.027561, 35.008717, 31.049421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.007656, 34.779343, 31.117180>,  <45.974480, 34.397053, 31.230110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.007656, 34.779343, 31.117180> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559089, -0.189891, -0.807070,
		-0.824949, 0.224784, 0.518586,
		0.082942, 0.955727, -0.282325,
		46.032539, 35.066059, 31.032482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.314148, 34.506237, 31.013290>,  <45.974480, 34.397053, 31.230110>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.314148, 34.506237, 31.013290> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.538742, 34.801182, 30.863077>,  <45.673500, 34.978149, 30.772949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.538742, 34.801182, 30.863077>,  <45.314148, 34.506237, 31.013290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.538742, 34.801182, 30.863077> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450697, -0.108093, -0.886109,
		-0.693978, 0.666790, 0.271635,
		0.561487, 0.737365, -0.375534,
		45.707188, 35.022392, 30.750418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.793194, 34.731236, 30.350924>,  <45.314148, 34.506237, 31.013290>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.793194, 34.731236, 30.350924> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.135841, 34.930855, 30.298523>,  <45.341431, 35.050625, 30.267082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.135841, 34.930855, 30.298523>,  <44.793194, 34.731236, 30.350924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.135841, 34.930855, 30.298523> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036723, -0.194287, -0.980257,
		-0.514645, 0.844515, -0.148103,
		0.856616, 0.499046, -0.131002,
		45.392826, 35.080570, 30.259222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.721077, 35.228001, 29.850252>,  <44.793194, 34.731236, 30.350924>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.721077, 35.228001, 29.850252> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.105263, 35.116657, 29.851767>,  <45.335773, 35.049850, 29.852674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.105263, 35.116657, 29.851767>,  <44.721077, 35.228001, 29.850252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.105263, 35.116657, 29.851767> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048203, -0.179681, -0.982543,
		0.274182, 0.943520, -0.185996,
		0.960469, -0.278361, 0.003784,
		45.393402, 35.033150, 29.852901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.068905, 35.478783, 29.167068>,  <44.721077, 35.228001, 29.850252>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.068905, 35.478783, 29.167068> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.307873, 35.189785, 29.306259>,  <45.451256, 35.016388, 29.389774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.307873, 35.189785, 29.306259>,  <45.068905, 35.478783, 29.167068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.307873, 35.189785, 29.306259> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070452, -0.479537, -0.874689,
		0.798826, 0.498043, -0.337387,
		0.597423, -0.722494, 0.347979,
		45.487099, 34.973038, 29.410652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.599037, 35.235588, 28.722467>,  <45.068905, 35.478783, 29.167068>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.599037, 35.235588, 28.722467> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.599552, 34.904690, 28.947205>,  <45.599861, 34.706150, 29.082047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.599552, 34.904690, 28.947205>,  <45.599037, 35.235588, 28.722467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.599552, 34.904690, 28.947205> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281349, -0.539445, -0.793626,
		0.959605, -0.157055, -0.233436,
		0.001283, -0.827244, 0.561841,
		45.599937, 34.656517, 29.115757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.737061, 34.664688, 28.213871>,  <45.599037, 35.235588, 28.722467>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.737061, 34.664688, 28.213871> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.624866, 34.463825, 28.541080>,  <45.557552, 34.343307, 28.737406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.624866, 34.463825, 28.541080>,  <45.737061, 34.664688, 28.213871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.624866, 34.463825, 28.541080> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495258, -0.654318, -0.571478,
		0.822223, -0.565422, -0.065175,
		-0.280481, -0.502161, 0.818025,
		45.540722, 34.313175, 28.786488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.604359, 34.076668, 27.888123>,  <45.737061, 34.664688, 28.213871>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.604359, 34.076668, 27.888123> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.428535, 34.028175, 28.244120>,  <45.323040, 33.999081, 28.457718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.428535, 34.028175, 28.244120>,  <45.604359, 34.076668, 27.888123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.428535, 34.028175, 28.244120> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580348, -0.717926, -0.384419,
		0.685553, -0.685482, 0.245218,
		-0.439560, -0.121228, 0.889995,
		45.296669, 33.991806, 28.511118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.512032, 33.390461, 27.973513>,  <45.604359, 34.076668, 27.888123>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.512032, 33.390461, 27.973513> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.247444, 33.546143, 28.229944>,  <45.088692, 33.639553, 28.383802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.247444, 33.546143, 28.229944>,  <45.512032, 33.390461, 27.973513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.247444, 33.546143, 28.229944> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669056, -0.692458, -0.269938,
		0.338859, -0.607472, 0.718437,
		-0.661467, 0.389203, 0.641078,
		45.049004, 33.662903, 28.422268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.346565, 32.823540, 28.417624>,  <45.512032, 33.390461, 27.973513>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.346565, 32.823540, 28.417624> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.042206, 33.082954, 28.409346>,  <44.859589, 33.238605, 28.404379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.042206, 33.082954, 28.409346>,  <45.346565, 32.823540, 28.417624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.042206, 33.082954, 28.409346> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607206, -0.722923, -0.329670,
		-0.228767, -0.238278, 0.943869,
		-0.760898, 0.648541, -0.020697,
		44.813938, 33.277515, 28.403137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.901081, 32.493538, 28.802258>,  <45.346565, 32.823540, 28.417624>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.901081, 32.493538, 28.802258> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.687744, 32.755901, 28.588591>,  <44.559742, 32.913319, 28.460390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.687744, 32.755901, 28.588591>,  <44.901081, 32.493538, 28.802258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.687744, 32.755901, 28.588591> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642439, -0.724880, -0.248640,
		-0.550293, 0.210561, 0.807986,
		-0.533339, 0.655907, -0.534169,
		44.527744, 32.952675, 28.428339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.192135, 32.424007, 29.085451>,  <44.901081, 32.493538, 28.802258>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.192135, 32.424007, 29.085451> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.182846, 32.580654, 28.717518>,  <44.177273, 32.674641, 28.496758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.182846, 32.580654, 28.717518>,  <44.192135, 32.424007, 29.085451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.182846, 32.580654, 28.717518> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818319, -0.535987, -0.207538,
		-0.574295, 0.747900, 0.332913,
		-0.023219, 0.391617, -0.919836,
		44.175880, 32.698139, 28.441566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.414795, 32.617111, 28.944952>,  <44.192135, 32.424007, 29.085451>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.414795, 32.617111, 28.944952> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.597675, 32.596935, 28.589779>,  <43.707405, 32.584827, 28.376675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.597675, 32.596935, 28.589779>,  <43.414795, 32.617111, 28.944952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.597675, 32.596935, 28.589779> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758038, -0.544252, -0.359400,
		-0.465129, 0.837404, -0.287070,
		0.457201, -0.050443, -0.887932,
		43.734837, 32.581802, 28.323399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.866875, 32.838146, 28.375134>,  <43.414795, 32.617111, 28.944952>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.866875, 32.838146, 28.375134> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.164963, 32.647251, 28.188847>,  <43.343815, 32.532715, 28.077074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.164963, 32.647251, 28.188847>,  <42.866875, 32.838146, 28.375134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.164963, 32.647251, 28.188847> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665367, -0.578279, -0.472102,
		-0.044011, 0.661693, -0.748482,
		0.745218, -0.477238, -0.465719,
		43.388527, 32.504082, 28.049131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<42.658630, 35.635147, 42.628510> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.300152, 35.477047, 42.547905>,  <42.085064, 35.382187, 42.499542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.300152, 35.477047, 42.547905>,  <42.658630, 35.635147, 42.628510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.300152, 35.477047, 42.547905> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203208, 0.038057, -0.978396,
		0.394382, -0.917784, 0.046212,
		-0.896197, -0.395252, -0.201510,
		42.031292, 35.358471, 42.487453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.798256, 35.155434, 42.012707>,  <42.658630, 35.635147, 42.628510>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.798256, 35.155434, 42.012707> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.416702, 35.275200, 42.021194>,  <42.187771, 35.347061, 42.026287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.416702, 35.275200, 42.021194>,  <42.798256, 35.155434, 42.012707>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.416702, 35.275200, 42.021194> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040100, 0.197162, -0.979550,
		-0.297476, -0.933529, -0.200077,
		-0.953887, 0.299416, 0.021216,
		42.130535, 35.365025, 42.027557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.461311, 34.838047, 41.472134>,  <42.798256, 35.155434, 42.012707>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.461311, 34.838047, 41.472134> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.193478, 35.118179, 41.571083>,  <42.032780, 35.286259, 41.630451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.193478, 35.118179, 41.571083>,  <42.461311, 34.838047, 41.472134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.193478, 35.118179, 41.571083> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187829, 0.162570, -0.968654,
		-0.718599, -0.695055, 0.022689,
		-0.669580, 0.700335, 0.247374,
		41.992603, 35.328281, 41.645294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.919746, 34.693039, 41.134277>,  <42.461311, 34.838047, 41.472134>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.919746, 34.693039, 41.134277> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.868389, 35.081078, 41.216679>,  <41.837574, 35.313900, 41.266121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.868389, 35.081078, 41.216679>,  <41.919746, 34.693039, 41.134277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.868389, 35.081078, 41.216679> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157351, 0.185164, -0.970028,
		-0.979161, -0.156958, 0.128872,
		-0.128392, 0.970092, 0.206003,
		41.829872, 35.372105, 41.278481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.276619, 35.002285, 40.720783>,  <41.919746, 34.693039, 41.134277>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.276619, 35.002285, 40.720783> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.532284, 35.294357, 40.817368>,  <41.685684, 35.469601, 40.875320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.532284, 35.294357, 40.817368>,  <41.276619, 35.002285, 40.720783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.532284, 35.294357, 40.817368> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197250, 0.459111, -0.866205,
		-0.743344, 0.506019, 0.437475,
		0.639165, 0.730180, 0.241465,
		41.724033, 35.513412, 40.889809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.912659, 35.596287, 40.496250>,  <41.276619, 35.002285, 40.720783>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.912659, 35.596287, 40.496250> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.303951, 35.670158, 40.534103>,  <41.538727, 35.714481, 40.556816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.303951, 35.670158, 40.534103>,  <40.912659, 35.596287, 40.496250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.303951, 35.670158, 40.534103> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039818, 0.280486, -0.959032,
		-0.203660, 0.941923, 0.267026,
		0.978232, 0.184684, 0.094629,
		41.597420, 35.725563, 40.562492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.872730, 36.217377, 40.169914>,  <40.912659, 35.596287, 40.496250>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.872730, 36.217377, 40.169914> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.243240, 36.067265, 40.156204>,  <41.465546, 35.977200, 40.147980>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.243240, 36.067265, 40.156204>,  <40.872730, 36.217377, 40.169914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.243240, 36.067265, 40.156204> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095029, 0.320622, -0.942428,
		0.364662, 0.869694, 0.332648,
		0.926278, -0.375279, -0.034273,
		41.521122, 35.954681, 40.145924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.307861, 36.695793, 39.757927>,  <40.872730, 36.217377, 40.169914>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.307861, 36.695793, 39.757927> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.486111, 36.337765, 39.764400>,  <41.593060, 36.122948, 39.768284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.486111, 36.337765, 39.764400>,  <41.307861, 36.695793, 39.757927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.486111, 36.337765, 39.764400> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016665, -0.026370, -0.999513,
		0.895065, 0.445138, -0.026667,
		0.445625, -0.895073, 0.016185,
		41.619797, 36.069244, 39.769257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.846367, 36.784679, 39.225945>,  <41.307861, 36.695793, 39.757927>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.846367, 36.784679, 39.225945> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.828735, 36.386993, 39.265133>,  <41.818157, 36.148384, 39.288647>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.828735, 36.386993, 39.265133>,  <41.846367, 36.784679, 39.225945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.828735, 36.386993, 39.265133> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039051, -0.096280, -0.994588,
		0.998265, -0.047664, -0.034582,
		-0.044077, -0.994213, 0.097975,
		41.815514, 36.088730, 39.294525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.312222, 36.565926, 38.831280>,  <41.846367, 36.784679, 39.225945>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.312222, 36.565926, 38.831280> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.055012, 36.260254, 38.851494>,  <41.900688, 36.076851, 38.863625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.055012, 36.260254, 38.851494>,  <42.312222, 36.565926, 38.831280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.055012, 36.260254, 38.851494> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043764, -0.029216, -0.998615,
		0.764598, -0.644341, -0.014658,
		-0.643020, -0.764180, 0.050537,
		41.862106, 36.030998, 38.866653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.582081, 36.166771, 38.288597>,  <42.312222, 36.565926, 38.831280>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.582081, 36.166771, 38.288597> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.220314, 36.021152, 38.377583>,  <42.003254, 35.933781, 38.430973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.220314, 36.021152, 38.377583>,  <42.582081, 36.166771, 38.288597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.220314, 36.021152, 38.377583> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192258, -0.117721, -0.974258,
		0.380867, -0.923910, 0.036477,
		-0.904421, -0.364050, 0.222465,
		41.948986, 35.911938, 38.444321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.375999, 35.543526, 37.849075>,  <42.582081, 36.166771, 38.288597>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.375999, 35.543526, 37.849075> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.034855, 35.709782, 37.975479>,  <41.830166, 35.809536, 38.051323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.034855, 35.709782, 37.975479>,  <42.375999, 35.543526, 37.849075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.034855, 35.709782, 37.975479> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412914, -0.166480, -0.895425,
		-0.319567, -0.894162, 0.313610,
		-0.852865, 0.415642, 0.316011,
		41.778996, 35.834473, 38.070282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.961460, 35.626503, 37.283211>,  <42.375999, 35.543526, 37.849075>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.961460, 35.626503, 37.283211> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.706009, 35.799889, 37.537537>,  <41.552738, 35.903919, 37.690132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.706009, 35.799889, 37.537537>,  <41.961460, 35.626503, 37.283211>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.706009, 35.799889, 37.537537> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681608, 0.064847, -0.728838,
		-0.357155, -0.898835, 0.254038,
		-0.638632, 0.433463, 0.635814,
		41.514420, 35.929928, 37.728279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.365658, 35.253025, 37.211182>,  <41.961460, 35.626503, 37.283211>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.365658, 35.253025, 37.211182> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.267555, 35.625950, 37.317497>,  <41.208694, 35.849705, 37.381287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.267555, 35.625950, 37.317497>,  <41.365658, 35.253025, 37.211182>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.267555, 35.625950, 37.317497> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606388, 0.066381, -0.792394,
		-0.756403, -0.355505, 0.549064,
		-0.245252, 0.932314, 0.265785,
		41.193981, 35.905643, 37.397232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.531269, 34.527390, 37.235035>,  <41.365658, 35.253025, 37.211182>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.531269, 34.527390, 37.235035> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.688538, 34.225224, 37.025364>,  <41.782898, 34.043922, 36.899559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.688538, 34.225224, 37.025364>,  <41.531269, 34.527390, 37.235035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.688538, 34.225224, 37.025364> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101757, -0.602338, 0.791728,
		-0.913818, -0.257945, -0.313691,
		0.393170, -0.755415, -0.524180,
		41.806488, 33.998600, 36.868111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.236965, 34.015308, 37.481697>,  <41.531269, 34.527390, 37.235035>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.236965, 34.015308, 37.481697> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.583851, 33.899296, 37.319801>,  <41.791985, 33.829689, 37.222664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.583851, 33.899296, 37.319801>,  <41.236965, 34.015308, 37.481697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.583851, 33.899296, 37.319801> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141471, -0.635836, 0.758748,
		-0.477407, -0.715260, -0.510378,
		0.867219, -0.290028, -0.404740,
		41.844017, 33.812286, 37.198380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.196674, 33.183887, 37.216103>,  <41.236965, 34.015308, 37.481697>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.196674, 33.183887, 37.216103> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.561676, 33.322689, 37.302750>,  <41.780678, 33.405972, 37.354736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.561676, 33.322689, 37.302750>,  <41.196674, 33.183887, 37.216103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.561676, 33.322689, 37.302750> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013262, -0.554356, 0.832174,
		0.408855, -0.756488, -0.510454,
		0.912503, 0.347009, 0.216619,
		41.835426, 33.426792, 37.367737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.608158, 32.556671, 37.505203>,  <41.196674, 33.183887, 37.216103>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.608158, 32.556671, 37.505203> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.795406, 32.889927, 37.623009>,  <41.907757, 33.089882, 37.693691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.795406, 32.889927, 37.623009>,  <41.608158, 32.556671, 37.505203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.795406, 32.889927, 37.623009> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235690, -0.438931, 0.867058,
		0.851652, -0.336476, -0.401836,
		0.468123, 0.833141, 0.294513,
		41.935844, 33.139870, 37.711361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.199810, 32.294788, 37.772598>,  <41.608158, 32.556671, 37.505203>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.199810, 32.294788, 37.772598> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.180386, 32.667263, 37.917114>,  <42.168732, 32.890747, 38.003822>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.180386, 32.667263, 37.917114>,  <42.199810, 32.294788, 37.772598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.180386, 32.667263, 37.917114> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008112, -0.362073, 0.932115,
		0.998787, 0.042336, 0.025137,
		-0.048563, 0.931188, 0.361290,
		42.165817, 32.946621, 38.025501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.700302, 32.344296, 38.309578>,  <42.199810, 32.294788, 37.772598>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.700302, 32.344296, 38.309578> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.420288, 32.618999, 38.387867>,  <42.252277, 32.783821, 38.434841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.420288, 32.618999, 38.387867>,  <42.700302, 32.344296, 38.309578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.420288, 32.618999, 38.387867> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077989, -0.198913, 0.976909,
		0.709833, 0.699138, 0.085688,
		-0.700039, 0.686760, 0.195720,
		42.210278, 32.825027, 38.446583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.929142, 32.752022, 38.896172>,  <42.700302, 32.344296, 38.309578>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.929142, 32.752022, 38.896172> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.531590, 32.795906, 38.891018>,  <42.293056, 32.822235, 38.887928>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.531590, 32.795906, 38.891018>,  <42.929142, 32.752022, 38.896172>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.531590, 32.795906, 38.891018> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050750, -0.349925, 0.935402,
		0.098113, 0.930332, 0.353351,
		-0.993880, 0.109708, -0.012882,
		42.233425, 32.828819, 38.887154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.732605, 33.356041, 39.401016>,  <42.929142, 32.752022, 38.896172>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.732605, 33.356041, 39.401016> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.398323, 33.140785, 39.357185>,  <42.197754, 33.011631, 39.330887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.398323, 33.140785, 39.357185>,  <42.732605, 33.356041, 39.401016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.398323, 33.140785, 39.357185> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093934, -0.056516, 0.993973,
		-0.541086, 0.840961, -0.003319,
		-0.835705, -0.538137, -0.109574,
		42.147614, 32.979343, 39.324314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.311584, 33.580040, 39.873222>,  <42.732605, 33.356041, 39.401016>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.311584, 33.580040, 39.873222> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.093952, 33.255775, 39.786682>,  <41.963375, 33.061218, 39.734756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.093952, 33.255775, 39.786682>,  <42.311584, 33.580040, 39.873222>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.093952, 33.255775, 39.786682> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168439, -0.147076, 0.974678,
		-0.821954, 0.566742, -0.056527,
		-0.544078, -0.810661, -0.216351,
		41.930729, 33.012577, 39.721775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.499798, 33.553734, 40.257343>,  <42.311584, 33.580040, 39.873222>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.499798, 33.553734, 40.257343> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.620438, 33.175579, 40.207901>,  <41.692822, 32.948685, 40.178234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.620438, 33.175579, 40.207901>,  <41.499798, 33.553734, 40.257343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.620438, 33.175579, 40.207901> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399159, -0.242938, 0.884112,
		-0.865857, -0.217312, -0.450631,
		0.301603, -0.945387, -0.123607,
		41.710918, 32.891964, 40.170818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.979507, 33.270145, 40.613804>,  <41.499798, 33.553734, 40.257343>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.979507, 33.270145, 40.613804> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.266224, 33.001652, 40.538273>,  <41.438251, 32.840553, 40.492954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.266224, 33.001652, 40.538273>,  <40.979507, 33.270145, 40.613804>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.266224, 33.001652, 40.538273> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184926, -0.444100, 0.876685,
		-0.672324, -0.593477, -0.442454,
		0.716787, -0.671238, -0.188830,
		41.481258, 32.800282, 40.481625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.594929, 32.686886, 40.688839>,  <40.979507, 33.270145, 40.613804>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.594929, 32.686886, 40.688839> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.980988, 32.601055, 40.748768>,  <41.212624, 32.549557, 40.784725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.980988, 32.601055, 40.748768>,  <40.594929, 32.686886, 40.688839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.980988, 32.601055, 40.748768> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222919, -0.374171, 0.900168,
		-0.137094, -0.902194, -0.408963,
		0.965149, -0.214573, 0.149820,
		41.270531, 32.536682, 40.793713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.650902, 31.974047, 40.894371>,  <40.594929, 32.686886, 40.688839>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.650902, 31.974047, 40.894371> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.991894, 32.151794, 41.004501>,  <41.196491, 32.258442, 41.070580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.991894, 32.151794, 41.004501>,  <40.650902, 31.974047, 40.894371>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.991894, 32.151794, 41.004501> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142115, -0.309848, 0.940105,
		0.503066, -0.840552, -0.200988,
		0.852483, 0.444371, 0.275329,
		41.247639, 32.285107, 41.087101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.964008, 31.498669, 41.387302>,  <40.650902, 31.974047, 40.894371>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.964008, 31.498669, 41.387302> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.166805, 31.837490, 41.451126>,  <41.288483, 32.040783, 41.489418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.166805, 31.837490, 41.451126>,  <40.964008, 31.498669, 41.387302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.166805, 31.837490, 41.451126> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032713, -0.166067, 0.985572,
		0.861327, -0.504901, -0.056486,
		0.506996, 0.847052, 0.159555,
		41.318905, 32.091606, 41.498993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.337749, 30.884037, 41.190742>,  <40.964008, 31.498669, 41.387302>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.337749, 30.884037, 41.190742> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.167587, 30.522490, 41.208881>,  <41.065491, 30.305561, 41.219765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.167587, 30.522490, 41.208881>,  <41.337749, 30.884037, 41.190742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.167587, 30.522490, 41.208881> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020581, -0.040432, -0.998970,
		0.904769, -0.425899, -0.001403,
		-0.425404, -0.903867, 0.045347,
		41.039967, 30.251329, 41.222485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.655750, 30.480959, 40.577129>,  <41.337749, 30.884037, 41.190742>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.655750, 30.480959, 40.577129> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.312767, 30.302626, 40.679893>,  <41.106979, 30.195625, 40.741554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.312767, 30.302626, 40.679893>,  <41.655750, 30.480959, 40.577129>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.312767, 30.302626, 40.679893> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294667, 0.016130, -0.955464,
		0.421833, -0.894971, -0.145203,
		-0.857454, -0.445833, 0.256914,
		41.055531, 30.168877, 40.756969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.540146, 30.009863, 40.026463>,  <41.655750, 30.480959, 40.577129>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.540146, 30.009863, 40.026463> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.186668, 30.068409, 40.204296>,  <40.974583, 30.103537, 40.310997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.186668, 30.068409, 40.204296>,  <41.540146, 30.009863, 40.026463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.186668, 30.068409, 40.204296> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407960, 0.224781, -0.884897,
		-0.229453, -0.963354, -0.138928,
		-0.883697, 0.146365, 0.444586,
		40.921558, 30.112318, 40.337673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.063419, 29.577078, 39.632191>,  <41.540146, 30.009863, 40.026463>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.063419, 29.577078, 39.632191> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.800335, 29.837044, 39.784527>,  <40.642487, 29.993023, 39.875927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.800335, 29.837044, 39.784527>,  <41.063419, 29.577078, 39.632191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.800335, 29.837044, 39.784527> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462766, 0.050307, -0.885052,
		-0.594365, -0.758342, 0.267671,
		-0.657706, 0.649913, 0.380835,
		40.603024, 30.032017, 39.898777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.458927, 29.461058, 39.234306>,  <41.063419, 29.577078, 39.632191>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.458927, 29.461058, 39.234306> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.365093, 29.802959, 39.419506>,  <40.308792, 30.008101, 39.530624>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.365093, 29.802959, 39.419506>,  <40.458927, 29.461058, 39.234306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.365093, 29.802959, 39.419506> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590225, 0.253205, -0.766500,
		-0.772401, -0.453084, 0.445097,
		-0.234588, 0.854752, 0.462997,
		40.294716, 30.059385, 39.558407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.788757, 29.453529, 39.229671>,  <40.458927, 29.461058, 39.234306>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.788757, 29.453529, 39.229671> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.896969, 29.836842, 39.266590>,  <39.961895, 30.066828, 39.288742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.896969, 29.836842, 39.266590>,  <39.788757, 29.453529, 39.229671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.896969, 29.836842, 39.266590> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547898, 0.232083, -0.803707,
		-0.791596, 0.166853, 0.587823,
		0.270525, 0.958278, 0.092297,
		39.978127, 30.124325, 39.294281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.315968, 29.650433, 38.883610>,  <39.788757, 29.453529, 39.229671>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.315968, 29.650433, 38.883610> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.525692, 29.990574, 38.901497>,  <39.651527, 30.194658, 38.912228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.525692, 29.990574, 38.901497>,  <39.315968, 29.650433, 38.883610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.525692, 29.990574, 38.901497> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557707, 0.382600, -0.736600,
		-0.643479, 0.361268, 0.674849,
		0.524307, 0.850354, 0.044714,
		39.682983, 30.245680, 38.914909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.837776, 30.223312, 39.049572>,  <39.315968, 29.650433, 38.883610>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.837776, 30.223312, 39.049572> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.160755, 30.376017, 38.869663>,  <39.354542, 30.467638, 38.761719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.160755, 30.376017, 38.869663>,  <38.837776, 30.223312, 39.049572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.160755, 30.376017, 38.869663> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588693, 0.571039, -0.572150,
		0.038414, 0.726756, 0.685821,
		0.807443, 0.381759, -0.449772,
		39.402988, 30.490545, 38.734730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.754921, 31.024330, 38.866352>,  <38.837776, 30.223312, 39.049572>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.754921, 31.024330, 38.866352> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.041565, 30.911125, 38.611362>,  <39.213551, 30.843203, 38.458370>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.041565, 30.911125, 38.611362>,  <38.754921, 31.024330, 38.866352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.041565, 30.911125, 38.611362> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430834, 0.539137, -0.723680,
		0.548496, 0.793243, 0.264421,
		0.716613, -0.283014, -0.637470,
		39.256550, 30.826221, 38.420120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.062672, 31.654612, 38.446175>,  <38.754921, 31.024330, 38.866352>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.062672, 31.654612, 38.446175> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.151012, 31.337988, 38.218258>,  <39.204018, 31.148014, 38.081509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.151012, 31.337988, 38.218258>,  <39.062672, 31.654612, 38.446175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.151012, 31.337988, 38.218258> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601706, 0.349204, -0.718336,
		0.767577, 0.501491, -0.399163,
		0.220850, -0.791558, -0.569791,
		39.217266, 31.100521, 38.047321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.257416, 31.924578, 37.760014>,  <39.062672, 31.654612, 38.446175>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.257416, 31.924578, 37.760014> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.156799, 31.542892, 37.695267>,  <39.096428, 31.313881, 37.656418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.156799, 31.542892, 37.695267>,  <39.257416, 31.924578, 37.760014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.156799, 31.542892, 37.695267> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479286, 0.268109, -0.835705,
		0.840839, -0.132635, -0.524783,
		-0.251543, -0.954215, -0.161866,
		39.081337, 31.256628, 37.646706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.273113, 31.863161, 37.056778>,  <39.257416, 31.924578, 37.760014>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.273113, 31.863161, 37.056778> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.068756, 31.537046, 37.165806>,  <38.946140, 31.341377, 37.231224>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.068756, 31.537046, 37.165806>,  <39.273113, 31.863161, 37.056778>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.068756, 31.537046, 37.165806> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505340, 0.028326, -0.862455,
		0.695428, -0.578363, -0.426469,
		-0.510893, -0.815288, 0.272571,
		38.915489, 31.292459, 37.247578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<42.662125, 29.608679, 44.865303> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.262688, 29.607758, 44.844120>,  <42.023026, 29.607204, 44.831409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.262688, 29.607758, 44.844120>,  <42.662125, 29.608679, 44.865303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.262688, 29.607758, 44.844120> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052910, 0.018469, -0.998429,
		0.003279, -0.999827, -0.018321,
		-0.998594, -0.002304, -0.052962,
		41.963108, 29.607067, 44.828232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.626759, 29.150484, 44.282822>,  <42.662125, 29.608679, 44.865303>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.626759, 29.150484, 44.282822> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.255806, 29.297520, 44.310658>,  <42.033234, 29.385742, 44.327358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.255806, 29.297520, 44.310658>,  <42.626759, 29.150484, 44.282822>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.255806, 29.297520, 44.310658> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057351, 0.044127, -0.997378,
		-0.369699, -0.928940, -0.019840,
		-0.927380, 0.367592, 0.069590,
		41.977592, 29.407797, 44.331535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.213299, 28.783195, 43.882221>,  <42.626759, 29.150484, 44.282822>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.213299, 28.783195, 43.882221> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.990662, 29.114521, 43.907848>,  <41.857079, 29.313316, 43.923225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.990662, 29.114521, 43.907848>,  <42.213299, 28.783195, 43.882221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.990662, 29.114521, 43.907848> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253929, -0.096193, -0.962427,
		-0.791030, -0.551944, 0.263873,
		-0.556589, 0.828314, 0.064063,
		41.823685, 29.363016, 43.927067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.618767, 28.588520, 43.473843>,  <42.213299, 28.783195, 43.882221>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.618767, 28.588520, 43.473843> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.600361, 28.988089, 43.471451>,  <41.589317, 29.227831, 43.470016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.600361, 28.988089, 43.471451>,  <41.618767, 28.588520, 43.473843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.600361, 28.988089, 43.471451> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402844, -0.024034, -0.914953,
		-0.914111, -0.039692, 0.403516,
		-0.046014, 0.998923, -0.005980,
		41.586555, 29.287766, 43.469658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.109859, 28.688551, 42.937981>,  <41.618767, 28.588520, 43.473843>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.109859, 28.688551, 42.937981> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.256374, 29.053728, 43.009945>,  <41.344284, 29.272835, 43.053123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.256374, 29.053728, 43.009945>,  <41.109859, 28.688551, 42.937981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.256374, 29.053728, 43.009945> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137195, 0.244220, -0.959966,
		-0.920331, 0.326943, 0.214706,
		0.366289, 0.912943, 0.179908,
		41.366261, 29.327612, 43.063919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.644329, 29.220240, 42.728340>,  <41.109859, 28.688551, 42.937981>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.644329, 29.220240, 42.728340> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.976318, 29.443127, 42.738594>,  <41.175510, 29.576859, 42.744747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.976318, 29.443127, 42.738594>,  <40.644329, 29.220240, 42.728340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.976318, 29.443127, 42.738594> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246689, 0.407886, -0.879075,
		-0.500296, 0.723280, 0.475993,
		0.829969, 0.557220, 0.025638,
		41.225307, 29.610292, 42.746284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.456650, 29.998409, 42.749805>,  <40.644329, 29.220240, 42.728340>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.456650, 29.998409, 42.749805> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.811268, 29.905691, 42.589653>,  <41.024040, 29.850061, 42.493561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.811268, 29.905691, 42.589653>,  <40.456650, 29.998409, 42.749805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.811268, 29.905691, 42.589653> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294769, 0.384013, -0.875012,
		0.356573, 0.893759, 0.272120,
		0.886548, -0.231793, -0.400382,
		41.077232, 29.836153, 42.469540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.680389, 30.635958, 42.343426>,  <40.456650, 29.998409, 42.749805>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.680389, 30.635958, 42.343426> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.896175, 30.335125, 42.191982>,  <41.025646, 30.154625, 42.101116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.896175, 30.335125, 42.191982>,  <40.680389, 30.635958, 42.343426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.896175, 30.335125, 42.191982> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244006, 0.290721, -0.925171,
		0.805876, 0.591483, -0.026678,
		0.539468, -0.752083, -0.378611,
		41.058014, 30.109501, 42.078400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.699474, 30.892195, 41.689312>,  <40.680389, 30.635958, 42.343426>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.699474, 30.892195, 41.689312> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.833614, 30.515894, 41.669205>,  <40.914101, 30.290113, 41.657139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.833614, 30.515894, 41.669205>,  <40.699474, 30.892195, 41.689312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.833614, 30.515894, 41.669205> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019551, 0.046396, -0.998732,
		0.941890, 0.335911, -0.002834,
		0.335353, -0.940750, -0.050267,
		40.934219, 30.233669, 41.654125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.288799, 31.302057, 41.984825>,  <40.699474, 30.892195, 41.689312>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.288799, 31.302057, 41.984825> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.341431, 31.698267, 41.969105>,  <41.373009, 31.935993, 41.959671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.341431, 31.698267, 41.969105>,  <41.288799, 31.302057, 41.984825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.341431, 31.698267, 41.969105> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023012, 0.036585, 0.999065,
		0.991038, -0.132361, -0.017980,
		0.131580, 0.990526, -0.039303,
		41.380905, 31.995424, 41.957314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.966988, 31.546999, 42.448769>,  <41.288799, 31.302057, 41.984825>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.966988, 31.546999, 42.448769> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.732433, 31.867176, 42.399055>,  <41.591702, 32.059284, 42.369228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.732433, 31.867176, 42.399055>,  <41.966988, 31.546999, 42.448769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.732433, 31.867176, 42.399055> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064335, 0.198968, 0.977892,
		0.807476, 0.565422, -0.168168,
		-0.586382, 0.800443, -0.124286,
		41.556519, 32.107307, 42.361771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.319645, 32.019325, 42.739819>,  <41.966988, 31.546999, 42.448769>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.319645, 32.019325, 42.739819> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.948521, 32.168514, 42.742699>,  <41.725845, 32.258026, 42.744427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.948521, 32.168514, 42.742699>,  <42.319645, 32.019325, 42.739819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.948521, 32.168514, 42.742699> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093310, 0.213345, 0.972511,
		0.361182, 0.902982, -0.232746,
		-0.927815, 0.372971, 0.007201,
		41.670177, 32.280407, 42.744858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.282639, 32.746479, 43.063148>,  <42.319645, 32.019325, 42.739819>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.282639, 32.746479, 43.063148> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.911022, 32.602806, 43.098652>,  <41.688053, 32.516602, 43.119953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.911022, 32.602806, 43.098652>,  <42.282639, 32.746479, 43.063148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.911022, 32.602806, 43.098652> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003016, 0.232527, 0.972585,
		-0.369971, 0.903837, -0.214943,
		-0.929038, -0.359180, 0.088754,
		41.632309, 32.495052, 43.125278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.796089, 33.351006, 43.330967>,  <42.282639, 32.746479, 43.063148>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.796089, 33.351006, 43.330967> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.629795, 32.993580, 43.398731>,  <41.530018, 32.779125, 43.439392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.629795, 32.993580, 43.398731>,  <41.796089, 33.351006, 43.330967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.629795, 32.993580, 43.398731> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081657, 0.222194, 0.971577,
		-0.905811, 0.390088, -0.165341,
		-0.415738, -0.893567, 0.169413,
		41.505074, 32.725510, 43.449554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.489140, 33.488781, 43.896297>,  <41.796089, 33.351006, 43.330967>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.489140, 33.488781, 43.896297> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.399761, 33.098949, 43.902813>,  <41.346134, 32.865051, 43.906723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.399761, 33.098949, 43.902813>,  <41.489140, 33.488781, 43.896297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.399761, 33.098949, 43.902813> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000389, 0.016623, 0.999862,
		-0.974717, 0.223419, -0.003335,
		-0.223444, -0.974581, 0.016289,
		41.332729, 32.806576, 43.907700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.009846, 33.409458, 44.336720>,  <41.489140, 33.488781, 43.896297>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.009846, 33.409458, 44.336720> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.166729, 33.041870, 44.320396>,  <41.260857, 32.821316, 44.310604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.166729, 33.041870, 44.320396>,  <41.009846, 33.409458, 44.336720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.166729, 33.041870, 44.320396> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034911, -0.059202, 0.997635,
		-0.919216, -0.389851, -0.055301,
		0.392204, -0.918973, -0.040809,
		41.284389, 32.766178, 44.308155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.514702, 32.822819, 44.680336>,  <41.009846, 33.409458, 44.336720>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.514702, 32.822819, 44.680336> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.895462, 32.700367, 44.685574>,  <41.123917, 32.626896, 44.688717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.895462, 32.700367, 44.685574>,  <40.514702, 32.822819, 44.680336>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.895462, 32.700367, 44.685574> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096233, -0.258105, 0.961312,
		-0.290916, -0.916330, -0.275150,
		0.951897, -0.306140, 0.013094,
		41.181030, 32.608528, 44.689503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.654583, 32.441883, 45.369652>,  <40.514702, 32.822819, 44.680336>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.654583, 32.441883, 45.369652> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.033733, 32.450962, 45.242523>,  <41.261223, 32.456409, 45.166245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.033733, 32.450962, 45.242523>,  <40.654583, 32.441883, 45.369652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.033733, 32.450962, 45.242523> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315271, -0.211307, 0.925178,
		-0.046159, -0.977157, -0.207449,
		0.947878, 0.022698, -0.317823,
		41.318096, 32.457771, 45.147175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.832680, 31.914448, 45.713055>,  <40.654583, 32.441883, 45.369652>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.832680, 31.914448, 45.713055> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.169361, 32.101700, 45.605438>,  <41.371372, 32.214050, 45.540867>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.169361, 32.101700, 45.605438>,  <40.832680, 31.914448, 45.713055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.169361, 32.101700, 45.605438> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411092, -0.232579, 0.881425,
		0.350048, -0.852503, -0.388207,
		0.841707, 0.468130, -0.269043,
		41.421875, 32.242138, 45.524727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.397835, 31.516729, 45.962719>,  <40.832680, 31.914448, 45.713055>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.397835, 31.516729, 45.962719> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.550476, 31.883787, 45.918346>,  <41.642059, 32.104023, 45.891724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.550476, 31.883787, 45.918346>,  <41.397835, 31.516729, 45.962719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.550476, 31.883787, 45.918346> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546543, -0.127223, 0.827710,
		0.745433, -0.376482, -0.550082,
		0.381601, 0.917647, -0.110928,
		41.664955, 32.159081, 45.885067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.063553, 31.446726, 46.127602>,  <41.397835, 31.516729, 45.962719>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.063553, 31.446726, 46.127602> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.974583, 31.834251, 46.171291>,  <41.921200, 32.066765, 46.197506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.974583, 31.834251, 46.171291>,  <42.063553, 31.446726, 46.127602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.974583, 31.834251, 46.171291> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409746, -0.008763, 0.912158,
		0.884666, 0.247642, -0.395017,
		-0.222427, 0.968812, 0.109223,
		41.907856, 32.124893, 46.204060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.663475, 31.781513, 46.355415>,  <42.063553, 31.446726, 46.127602>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.663475, 31.781513, 46.355415> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.386002, 32.047726, 46.465595>,  <42.219517, 32.207455, 46.531704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.386002, 32.047726, 46.465595>,  <42.663475, 31.781513, 46.355415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.386002, 32.047726, 46.465595> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313704, -0.065085, 0.947287,
		0.648378, 0.743526, -0.163632,
		-0.693683, 0.665532, 0.275447,
		42.177898, 32.247387, 46.548229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.940594, 32.123222, 46.917377>,  <42.663475, 31.781513, 46.355415>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.940594, 32.123222, 46.917377> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.560890, 32.241402, 46.960480>,  <42.333069, 32.312309, 46.986343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.560890, 32.241402, 46.960480>,  <42.940594, 32.123222, 46.917377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.560890, 32.241402, 46.960480> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142000, 0.096933, 0.985109,
		0.280608, 0.950427, -0.133969,
		-0.949260, 0.295453, 0.107760,
		42.276112, 32.330036, 46.992809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<35.510609, 32.196232, 48.203381> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.882549, 32.127399, 48.073296>,  <36.105713, 32.086102, 47.995247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.882549, 32.127399, 48.073296>,  <35.510609, 32.196232, 48.203381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.882549, 32.127399, 48.073296> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252559, 0.344233, -0.904277,
		0.267557, 0.922980, 0.276625,
		0.929853, -0.172082, -0.325209,
		36.161507, 32.075775, 47.975731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.662922, 32.791519, 47.810177>,  <35.510609, 32.196232, 48.203381>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.662922, 32.791519, 47.810177> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.939960, 32.525974, 47.697323>,  <36.106182, 32.366646, 47.629612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.939960, 32.525974, 47.697323>,  <35.662922, 32.791519, 47.810177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.939960, 32.525974, 47.697323> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072463, 0.325122, -0.942892,
		0.717680, 0.673485, 0.177072,
		0.692593, -0.663863, -0.282136,
		36.147739, 32.326817, 47.612682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.108253, 33.158146, 47.371349>,  <35.662922, 32.791519, 47.810177>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.108253, 33.158146, 47.371349> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.192051, 32.779339, 47.273972>,  <36.242329, 32.552055, 47.215546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.192051, 32.779339, 47.273972>,  <36.108253, 33.158146, 47.371349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.192051, 32.779339, 47.273972> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021497, 0.244445, -0.969425,
		0.977573, 0.208326, 0.030853,
		0.209498, -0.947020, -0.243441,
		36.254902, 32.495232, 47.200939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640633, 33.124359, 46.778934>,  <36.108253, 33.158146, 47.371349>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640633, 33.124359, 46.778934> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.458496, 32.768566, 46.763538>,  <36.349213, 32.555092, 46.754303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.458496, 32.768566, 46.763538>,  <36.640633, 33.124359, 46.778934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.458496, 32.768566, 46.763538> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162823, 0.125697, -0.978616,
		0.875301, -0.439339, -0.202063,
		-0.455343, -0.889484, -0.038488,
		36.321892, 32.501720, 46.751991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.938313, 32.754471, 46.252964>,  <36.640633, 33.124359, 46.778934>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.938313, 32.754471, 46.252964> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.580997, 32.582447, 46.305264>,  <36.366608, 32.479233, 46.336643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.580997, 32.582447, 46.305264>,  <36.938313, 32.754471, 46.252964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.580997, 32.582447, 46.305264> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086924, -0.120107, -0.988948,
		0.441007, -0.894777, 0.069907,
		-0.893284, -0.430056, 0.130746,
		36.313011, 32.453430, 46.344486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.905994, 32.049072, 45.968048>,  <36.938313, 32.754471, 46.252964>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.905994, 32.049072, 45.968048> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.539894, 32.210083, 45.974735>,  <36.320232, 32.306690, 45.978748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.539894, 32.210083, 45.974735>,  <36.905994, 32.049072, 45.968048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.539894, 32.210083, 45.974735> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090103, -0.164077, -0.982324,
		-0.392673, -0.900582, 0.186442,
		-0.915254, 0.402531, 0.016716,
		36.265316, 32.330841, 45.979752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.667526, 31.760349, 45.352077>,  <36.905994, 32.049072, 45.968048>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.667526, 31.760349, 45.352077> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.358326, 31.991013, 45.457859>,  <36.172806, 32.129410, 45.521328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.358326, 31.991013, 45.457859>,  <36.667526, 31.760349, 45.352077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.358326, 31.991013, 45.457859> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266462, 0.083177, -0.960250,
		-0.575731, -0.812741, 0.089361,
		-0.773002, 0.576657, 0.264453,
		36.126427, 32.164009, 45.537193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.993782, 31.501013, 44.961105>,  <36.667526, 31.760349, 45.352077>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.993782, 31.501013, 44.961105> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.921696, 31.881323, 45.061943>,  <35.878445, 32.109509, 45.122444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.921696, 31.881323, 45.061943>,  <35.993782, 31.501013, 44.961105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.921696, 31.881323, 45.061943> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385687, 0.167462, -0.907305,
		-0.904857, -0.260744, 0.336521,
		-0.180219, 0.950773, 0.252095,
		35.867630, 32.166553, 45.137573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.317322, 31.711725, 44.617088>,  <35.993782, 31.501013, 44.961105>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.317322, 31.711725, 44.617088> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.523216, 32.043118, 44.705326>,  <35.646755, 32.241955, 44.758270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.523216, 32.043118, 44.705326>,  <35.317322, 31.711725, 44.617088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.523216, 32.043118, 44.705326> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303954, 0.416934, -0.856608,
		-0.801658, 0.373878, 0.466432,
		0.514739, 0.828481, 0.220597,
		35.677639, 32.291660, 44.771503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.891651, 32.261791, 44.379265>,  <35.317322, 31.711725, 44.617088>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.891651, 32.261791, 44.379265> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.245754, 32.436245, 44.443893>,  <35.458218, 32.540916, 44.482670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.245754, 32.436245, 44.443893>,  <34.891651, 32.261791, 44.379265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.245754, 32.436245, 44.443893> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168569, 0.624631, -0.762509,
		-0.433477, 0.647783, 0.626479,
		0.885258, 0.436135, 0.161567,
		35.511333, 32.567085, 44.492363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.843884, 33.089298, 44.293533>,  <34.891651, 32.261791, 44.379265>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.843884, 33.089298, 44.293533> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.217003, 32.978642, 44.201141>,  <35.440876, 32.912247, 44.145706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.217003, 32.978642, 44.201141>,  <34.843884, 33.089298, 44.293533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.217003, 32.978642, 44.201141> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008778, 0.623278, -0.781951,
		0.360287, 0.731432, 0.578965,
		0.932800, -0.276644, -0.230979,
		35.496841, 32.895649, 44.131847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.189095, 33.680031, 44.027424>,  <34.843884, 33.089298, 44.293533>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.189095, 33.680031, 44.027424> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.407570, 33.378281, 43.881767>,  <35.538654, 33.197231, 43.794373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.407570, 33.378281, 43.881767>,  <35.189095, 33.680031, 44.027424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.407570, 33.378281, 43.881767> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029993, 0.452048, -0.891489,
		0.837128, 0.475995, 0.269527,
		0.546184, -0.754375, -0.364145,
		35.571426, 33.151970, 43.772522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.554214, 33.992832, 43.551147>,  <35.189095, 33.680031, 44.027424>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.554214, 33.992832, 43.551147> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.594650, 33.613903, 43.429585>,  <35.618912, 33.386547, 43.356647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.594650, 33.613903, 43.429585>,  <35.554214, 33.992832, 43.551147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.594650, 33.613903, 43.429585> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104379, 0.313885, -0.943706,
		0.989387, 0.063673, 0.130610,
		0.101085, -0.947324, -0.303907,
		35.624977, 33.329704, 43.338413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.062656, 34.094509, 42.984219>,  <35.554214, 33.992832, 43.551147>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.062656, 34.094509, 42.984219> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.880802, 33.741978, 42.932747>,  <35.771690, 33.530457, 42.901863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.880802, 33.741978, 42.932747>,  <36.062656, 34.094509, 42.984219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.880802, 33.741978, 42.932747> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052471, 0.117720, -0.991660,
		0.889129, -0.457598, -0.007275,
		-0.454638, -0.881332, -0.128679,
		35.744411, 33.477577, 42.894142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.807465, 34.360279, 43.119255>,  <36.062656, 34.094509, 42.984219>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.807465, 34.360279, 43.119255> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.010296, 34.691498, 43.023579>,  <37.131996, 34.890228, 42.966171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.010296, 34.691498, 43.023579>,  <36.807465, 34.360279, 43.119255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.010296, 34.691498, 43.023579> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070332, 0.316348, 0.946033,
		0.859024, -0.462892, 0.218652,
		0.507081, 0.828043, -0.239194,
		37.162418, 34.939911, 42.951820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.331558, 34.357109, 43.562859>,  <36.807465, 34.360279, 43.119255>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.331558, 34.357109, 43.562859> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.320374, 34.736729, 43.437309>,  <37.313663, 34.964500, 43.361980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.320374, 34.736729, 43.437309>,  <37.331558, 34.357109, 43.562859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.320374, 34.736729, 43.437309> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011559, 0.314286, 0.949258,
		0.999542, 0.022915, -0.019758,
		-0.027962, 0.949052, -0.313877,
		37.311985, 35.021442, 43.343147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.007118, 34.730186, 43.728268>,  <37.331558, 34.357109, 43.562859>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.007118, 34.730186, 43.728268> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.739758, 35.026337, 43.699772>,  <37.579342, 35.204029, 43.682674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.739758, 35.026337, 43.699772>,  <38.007118, 34.730186, 43.728268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.739758, 35.026337, 43.699772> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193660, 0.265701, 0.944404,
		0.718142, 0.617450, -0.320978,
		-0.668406, 0.740377, -0.071236,
		37.539234, 35.248451, 43.678402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.348484, 35.327618, 44.011177>,  <38.007118, 34.730186, 43.728268>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.348484, 35.327618, 44.011177> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.951664, 35.371632, 44.035576>,  <37.713570, 35.398041, 44.050217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.951664, 35.371632, 44.035576>,  <38.348484, 35.327618, 44.011177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.951664, 35.371632, 44.035576> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089334, 0.274728, 0.957363,
		0.088582, 0.955205, -0.282375,
		-0.992055, 0.110031, 0.060997,
		37.654049, 35.404640, 44.053875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.210552, 36.068989, 44.234798>,  <38.348484, 35.327618, 44.011177>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.210552, 36.068989, 44.234798> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.878326, 35.863956, 44.321907>,  <37.678989, 35.740936, 44.374172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.878326, 35.863956, 44.321907>,  <38.210552, 36.068989, 44.234798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.878326, 35.863956, 44.321907> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147256, 0.174981, 0.973497,
		-0.537098, 0.840623, -0.069854,
		-0.830567, -0.512577, 0.217769,
		37.629158, 35.710182, 44.387238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.937775, 36.430321, 44.864845>,  <38.210552, 36.068989, 44.234798>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.937775, 36.430321, 44.864845> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.730698, 36.088417, 44.849964>,  <37.606453, 35.883274, 44.841038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.730698, 36.088417, 44.849964>,  <37.937775, 36.430321, 44.864845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.730698, 36.088417, 44.849964> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129268, 0.035163, 0.990986,
		-0.845746, 0.517833, -0.128697,
		-0.517691, -0.854759, -0.037200,
		37.575390, 35.831989, 44.838802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.424156, 36.504189, 45.458717>,  <37.937775, 36.430321, 44.864845>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.424156, 36.504189, 45.458717> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.522636, 36.122448, 45.391079>,  <37.581726, 35.893402, 45.350494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.522636, 36.122448, 45.391079>,  <37.424156, 36.504189, 45.458717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.522636, 36.122448, 45.391079> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142205, -0.137013, 0.980309,
		-0.958729, -0.265402, 0.101981,
		0.246203, -0.954353, -0.169100,
		37.596497, 35.836143, 45.340347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.023594, 36.104824, 45.853199>,  <37.424156, 36.504189, 45.458717>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.023594, 36.104824, 45.853199> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.321529, 35.848442, 45.779015>,  <37.500290, 35.694614, 45.734505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.321529, 35.848442, 45.779015>,  <37.023594, 36.104824, 45.853199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.321529, 35.848442, 45.779015> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197979, -0.053144, 0.978765,
		-0.637201, -0.765736, 0.087312,
		0.744835, -0.640955, -0.185463,
		37.544979, 35.656155, 45.723377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.982296, 35.506001, 46.369606>,  <37.023594, 36.104824, 45.853199>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.982296, 35.506001, 46.369606> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.358532, 35.525791, 46.235241>,  <37.584274, 35.537666, 46.154621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.358532, 35.525791, 46.235241>,  <36.982296, 35.506001, 46.369606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.358532, 35.525791, 46.235241> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337820, -0.235631, 0.911239,
		-0.034069, -0.970583, -0.238346,
		0.940594, 0.049473, -0.335909,
		37.640709, 35.540634, 46.134468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.267052, 34.905609, 46.521698>,  <36.982296, 35.506001, 46.369606>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.267052, 34.905609, 46.521698> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.575710, 35.156902, 46.481949>,  <37.760906, 35.307678, 46.458099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.575710, 35.156902, 46.481949>,  <37.267052, 34.905609, 46.521698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.575710, 35.156902, 46.481949> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428414, -0.397890, 0.811262,
		0.470125, -0.668583, -0.576177,
		0.771650, 0.628237, -0.099372,
		37.807205, 35.345375, 46.452137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.843987, 34.486618, 46.784523>,  <37.267052, 34.905609, 46.521698>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.843987, 34.486618, 46.784523> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.973984, 34.864826, 46.776844>,  <38.051983, 35.091751, 46.772236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.973984, 34.864826, 46.776844>,  <37.843987, 34.486618, 46.784523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.973984, 34.864826, 46.776844> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548813, -0.172031, 0.818053,
		0.770184, -0.276398, -0.574823,
		0.324995, 0.945521, -0.019195,
		38.071484, 35.148483, 46.771084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.456322, 34.438782, 47.019821>,  <37.843987, 34.486618, 46.784523>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.456322, 34.438782, 47.019821> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.380787, 34.824913, 47.091904>,  <38.335468, 35.056591, 47.135155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.380787, 34.824913, 47.091904>,  <38.456322, 34.438782, 47.019821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.380787, 34.824913, 47.091904> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371144, -0.099739, 0.923203,
		0.909172, 0.241215, -0.339443,
		-0.188835, 0.965333, 0.180206,
		38.324135, 35.114513, 47.145966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.078262, 34.675114, 47.381805>,  <38.456322, 34.438782, 47.019821>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.078262, 34.675114, 47.381805> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.793213, 34.940361, 47.473412>,  <38.622185, 35.099510, 47.528374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.793213, 34.940361, 47.473412>,  <39.078262, 34.675114, 47.381805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.793213, 34.940361, 47.473412> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232410, -0.084858, 0.968909,
		0.661933, 0.743691, -0.093643,
		-0.712622, 0.663116, 0.229012,
		38.579426, 35.139297, 47.542114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.416676, 35.199181, 47.717247>,  <39.078262, 34.675114, 47.381805>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.416676, 35.199181, 47.717247> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.031876, 35.180305, 47.824821>,  <38.800995, 35.168980, 47.889366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.031876, 35.180305, 47.824821>,  <39.416676, 35.199181, 47.717247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.031876, 35.180305, 47.824821> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269590, -0.007910, 0.962943,
		-0.043310, 0.998855, 0.020330,
		-0.962001, -0.047186, 0.268939,
		38.743275, 35.166149, 47.905502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.085606, 35.642273, 47.829788>,  <39.416676, 35.199181, 47.717247>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.085606, 35.642273, 47.829788> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.384251, 35.376488, 47.842758>,  <40.563438, 35.217014, 47.850540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.384251, 35.376488, 47.842758>,  <40.085606, 35.642273, 47.829788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.384251, 35.376488, 47.842758> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269325, 0.257341, -0.928030,
		0.608302, 0.701612, 0.371092,
		0.746614, -0.664467, 0.032421,
		40.608234, 35.177147, 47.852486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.598392, 35.984344, 47.566368>,  <40.085606, 35.642273, 47.829788>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.598392, 35.984344, 47.566368> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.722649, 35.605206, 47.537815>,  <40.797203, 35.377724, 47.520683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.722649, 35.605206, 47.537815>,  <40.598392, 35.984344, 47.566368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.722649, 35.605206, 47.537815> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126389, 0.115623, -0.985219,
		0.942087, 0.297028, 0.155714,
		0.310642, -0.947843, -0.071386,
		40.815842, 35.320854, 47.516399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.033554, 36.028168, 47.000103>,  <40.598392, 35.984344, 47.566368>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.033554, 36.028168, 47.000103> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.984783, 35.632225, 47.029278>,  <40.955521, 35.394661, 47.046783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.984783, 35.632225, 47.029278>,  <41.033554, 36.028168, 47.000103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.984783, 35.632225, 47.029278> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066069, -0.081417, -0.994488,
		0.990337, -0.116439, 0.075326,
		-0.121930, -0.989855, 0.072938,
		40.948204, 35.335270, 47.051159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.602081, 35.669598, 46.598068>,  <41.033554, 36.028168, 47.000103>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.602081, 35.669598, 46.598068> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.315327, 35.393864, 46.639812>,  <41.143272, 35.228424, 46.664860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.315327, 35.393864, 46.639812>,  <41.602081, 35.669598, 46.598068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.315327, 35.393864, 46.639812> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039564, -0.189675, -0.981050,
		0.696068, -0.699171, 0.163248,
		-0.716885, -0.689335, 0.104365,
		41.100262, 35.187061, 46.671124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.736549, 35.156235, 46.182270>,  <41.602081, 35.669598, 46.598068>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.736549, 35.156235, 46.182270> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.355244, 35.041134, 46.219128>,  <41.126461, 34.972073, 46.241241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.355244, 35.041134, 46.219128>,  <41.736549, 35.156235, 46.182270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.355244, 35.041134, 46.219128> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024855, -0.229236, -0.973053,
		0.301123, -0.929864, 0.211370,
		-0.953261, -0.287756, 0.092140,
		41.069263, 34.954807, 46.246769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.662857, 34.487968, 45.870266>,  <41.736549, 35.156235, 46.182270>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.662857, 34.487968, 45.870266> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.291477, 34.636494, 45.874249>,  <41.068649, 34.725609, 45.876637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.291477, 34.636494, 45.874249>,  <41.662857, 34.487968, 45.870266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.291477, 34.636494, 45.874249> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087992, -0.193826, -0.977082,
		-0.360877, -0.908051, 0.212632,
		-0.928453, 0.371316, 0.009954,
		41.012939, 34.747887, 45.877235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.241528, 34.017673, 45.457668>,  <41.662857, 34.487968, 45.870266>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.241528, 34.017673, 45.457668> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.081802, 34.384323, 45.450184>,  <40.985966, 34.604313, 45.445694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.081802, 34.384323, 45.450184>,  <41.241528, 34.017673, 45.457668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.081802, 34.384323, 45.450184> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065086, -0.048702, -0.996690,
		-0.914500, -0.396776, 0.079107,
		-0.399315, 0.916623, -0.018714,
		40.962009, 34.659309, 45.444569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.740948, 33.948425, 44.988457>,  <41.241528, 34.017673, 45.457668>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.740948, 33.948425, 44.988457> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.792774, 34.345013, 44.994263>,  <40.823872, 34.582966, 44.997746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.792774, 34.345013, 44.994263>,  <40.740948, 33.948425, 44.988457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.792774, 34.345013, 44.994263> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052436, 0.007767, -0.998594,
		-0.990184, 0.130145, -0.050982,
		0.129566, 0.991465, 0.014515,
		40.831642, 34.642452, 44.998619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.322601, 34.161938, 44.472584>,  <40.740948, 33.948425, 44.988457>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.322601, 34.161938, 44.472584> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.587261, 34.456818, 44.527355>,  <40.746056, 34.633747, 44.560219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.587261, 34.456818, 44.527355>,  <40.322601, 34.161938, 44.472584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.587261, 34.456818, 44.527355> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136152, 0.061455, -0.988780,
		-0.737348, 0.672869, -0.059710,
		0.661650, 0.737204, 0.136927,
		40.785755, 34.677979, 44.568432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.373184, 34.417759, 43.866955>,  <40.322601, 34.161938, 44.472584>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.373184, 34.417759, 43.866955> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.696720, 34.593712, 44.023048>,  <40.890842, 34.699284, 44.116703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.696720, 34.593712, 44.023048>,  <40.373184, 34.417759, 43.866955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.696720, 34.593712, 44.023048> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382355, 0.110748, -0.917355,
		-0.446745, 0.891201, -0.078614,
		0.808841, 0.439882, 0.390231,
		40.939373, 34.725677, 44.140118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.427177, 35.095093, 43.572994>,  <40.373184, 34.417759, 43.866955>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.427177, 35.095093, 43.572994> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.801334, 35.036842, 43.701889>,  <41.025829, 35.001892, 43.779224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.801334, 35.036842, 43.701889>,  <40.427177, 35.095093, 43.572994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.801334, 35.036842, 43.701889> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341465, 0.135178, -0.930123,
		0.091889, 0.980061, 0.176170,
		0.935392, -0.145624, 0.322235,
		41.081951, 34.993156, 43.798561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.811665, 35.709164, 43.443878>,  <40.427177, 35.095093, 43.572994>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.811665, 35.709164, 43.443878> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.085747, 35.418449, 43.463013>,  <41.250195, 35.244022, 43.474495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.085747, 35.418449, 43.463013>,  <40.811665, 35.709164, 43.443878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.085747, 35.418449, 43.463013> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364733, 0.285532, -0.886251,
		0.630452, 0.624708, 0.460728,
		0.685201, -0.726781, 0.047838,
		41.291306, 35.200417, 43.477364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.476952, 36.011875, 43.254848>,  <40.811665, 35.709164, 43.443878>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.476952, 36.011875, 43.254848> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.526684, 35.619453, 43.195415>,  <41.556522, 35.383999, 43.159756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.526684, 35.619453, 43.195415>,  <41.476952, 36.011875, 43.254848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.526684, 35.619453, 43.195415> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292566, 0.179334, -0.939279,
		0.948129, 0.073306, 0.309318,
		0.124326, -0.981053, -0.148585,
		41.563980, 35.325138, 43.150841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.144749, 36.058727, 43.021946>,  <41.476952, 36.011875, 43.254848>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.144749, 36.058727, 43.021946> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.976437, 35.709145, 42.924664>,  <41.875450, 35.499397, 42.866295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.976437, 35.709145, 42.924664>,  <42.144749, 36.058727, 43.021946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.976437, 35.709145, 42.924664> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419445, 0.050278, -0.906387,
		0.804367, -0.483403, 0.345419,
		-0.420784, -0.873953, -0.243203,
		41.850201, 35.446960, 42.851704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.529869, 27.240410, 33.216858> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.142231, 27.146376, 33.186954>,  <25.909649, 27.089956, 33.169014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.142231, 27.146376, 33.186954>,  <26.529869, 27.240410, 33.216858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.142231, 27.146376, 33.186954> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246609, 0.930722, 0.270075,
		0.006090, 0.280165, -0.959933,
		-0.969096, -0.235083, -0.074759,
		25.851501, 27.075851, 33.164528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.253937, 27.626478, 32.673618>,  <26.529869, 27.240410, 33.216858>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.253937, 27.626478, 32.673618> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.017706, 27.538916, 32.984306>,  <25.875967, 27.486378, 33.170719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.017706, 27.538916, 32.984306>,  <26.253937, 27.626478, 32.673618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.017706, 27.538916, 32.984306> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009944, 0.964405, 0.264241,
		-0.806921, 0.148331, -0.571731,
		-0.590575, -0.218907, 0.776724,
		25.840534, 27.473244, 33.217323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.688055, 28.187246, 32.763580>,  <26.253937, 27.626478, 32.673618>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.688055, 28.187246, 32.763580> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.717615, 28.015018, 33.123390>,  <25.735352, 27.911682, 33.339275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.717615, 28.015018, 33.123390>,  <25.688055, 28.187246, 32.763580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.717615, 28.015018, 33.123390> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038828, 0.902553, 0.428826,
		-0.996510, 0.003236, 0.083417,
		0.073900, -0.430568, 0.899528,
		25.739784, 27.885849, 33.393250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.172979, 28.407001, 33.285370>,  <25.688055, 28.187246, 32.763580>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.172979, 28.407001, 33.285370> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.490198, 28.288929, 33.498512>,  <25.680531, 28.218084, 33.626400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.490198, 28.288929, 33.498512>,  <25.172979, 28.407001, 33.285370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.490198, 28.288929, 33.498512> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078018, 0.818327, 0.569434,
		-0.604141, -0.493161, 0.625943,
		0.793049, -0.295184, 0.532860,
		25.728113, 28.200375, 33.658371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.027435, 28.627359, 34.050667>,  <25.172979, 28.407001, 33.285370>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.027435, 28.627359, 34.050667> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.419024, 28.555685, 34.011669>,  <25.653976, 28.512680, 33.988270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.419024, 28.555685, 34.011669>,  <25.027435, 28.627359, 34.050667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.419024, 28.555685, 34.011669> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203320, 0.818373, 0.537519,
		-0.016533, -0.546038, 0.837597,
		0.978973, -0.179187, -0.097490,
		25.712715, 28.501928, 33.982422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.283634, 28.779758, 34.671776>,  <25.027435, 28.627359, 34.050667>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.283634, 28.779758, 34.671776> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.602993, 28.789152, 34.431107>,  <25.794607, 28.794788, 34.286705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.602993, 28.789152, 34.431107>,  <25.283634, 28.779758, 34.671776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.602993, 28.789152, 34.431107> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289418, 0.861277, 0.417658,
		0.528017, -0.507592, 0.680844,
		0.798395, 0.023482, -0.601675,
		25.842512, 28.796196, 34.250603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.761902, 29.031179, 35.084148>,  <25.283634, 28.779758, 34.671776>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.761902, 29.031179, 35.084148> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.896345, 29.107508, 34.715233>,  <25.977011, 29.153305, 34.493885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.896345, 29.107508, 34.715233>,  <25.761902, 29.031179, 35.084148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.896345, 29.107508, 34.715233> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307022, 0.903569, 0.298833,
		0.890375, -0.383604, 0.245114,
		0.336111, 0.190818, -0.922290,
		25.997177, 29.164753, 34.438545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.367510, 29.380272, 35.216240>,  <25.761902, 29.031179, 35.084148>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.367510, 29.380272, 35.216240> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.315722, 29.463110, 34.828354>,  <26.284649, 29.512814, 34.595623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.315722, 29.463110, 34.828354>,  <26.367510, 29.380272, 35.216240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.315722, 29.463110, 34.828354> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342648, 0.927047, 0.152236,
		0.930500, -0.312561, -0.190985,
		-0.129469, 0.207096, -0.969716,
		26.276880, 29.525238, 34.537437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.978859, 29.733801, 34.956844>,  <26.367510, 29.380272, 35.216240>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.978859, 29.733801, 34.956844> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.697680, 29.836273, 34.691444>,  <26.528971, 29.897757, 34.532204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.697680, 29.836273, 34.691444>,  <26.978859, 29.733801, 34.956844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.697680, 29.836273, 34.691444> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318195, 0.947589, 0.028754,
		0.636092, -0.190909, -0.747624,
		-0.702950, 0.256180, -0.663500,
		26.486795, 29.913128, 34.492393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.320105, 30.049770, 34.336185>,  <26.978859, 29.733801, 34.956844>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.320105, 30.049770, 34.336185> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.940409, 30.175583, 34.334846>,  <26.712591, 30.251070, 34.334042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.940409, 30.175583, 34.334846>,  <27.320105, 30.049770, 34.336185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.940409, 30.175583, 34.334846> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314343, 0.948945, 0.026310,
		0.011453, 0.023922, -0.999648,
		-0.949241, 0.314533, -0.003349,
		26.655636, 30.269943, 34.333843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.250299, 30.559694, 33.765331>,  <27.320105, 30.049770, 34.336185>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.250299, 30.559694, 33.765331> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.974314, 30.610458, 34.050385>,  <26.808722, 30.640917, 34.221416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.974314, 30.610458, 34.050385>,  <27.250299, 30.559694, 33.765331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.974314, 30.610458, 34.050385> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295468, 0.948134, 0.117221,
		-0.660793, 0.291438, -0.691677,
		-0.689965, 0.126909, 0.712631,
		26.767324, 30.648531, 34.264175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.976534, 31.313301, 33.594738>,  <27.250299, 30.559694, 33.765331>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.976534, 31.313301, 33.594738> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.856144, 31.212708, 33.962688>,  <26.783911, 31.152351, 34.183460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.856144, 31.212708, 33.962688>,  <26.976534, 31.313301, 33.594738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.856144, 31.212708, 33.962688> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028401, 0.961809, 0.272243,
		-0.953210, 0.108063, -0.282336,
		-0.300973, -0.251486, 0.919875,
		26.765852, 31.137262, 34.238651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.458508, 31.755201, 33.723213>,  <26.976534, 31.313301, 33.594738>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.458508, 31.755201, 33.723213> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.564301, 31.648426, 34.093899>,  <26.627775, 31.584360, 34.316311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.564301, 31.648426, 34.093899>,  <26.458508, 31.755201, 33.723213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.564301, 31.648426, 34.093899> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196346, 0.955707, 0.219255,
		-0.944192, 0.123967, 0.305179,
		0.264481, -0.266940, 0.926711,
		26.643644, 31.568344, 34.371914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.087347, 32.258823, 34.171150>,  <26.458508, 31.755201, 33.723213>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.087347, 32.258823, 34.171150> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.375902, 32.108124, 34.403584>,  <26.549036, 32.017704, 34.543045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.375902, 32.108124, 34.403584>,  <26.087347, 32.258823, 34.171150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.375902, 32.108124, 34.403584> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317455, 0.925622, 0.206027,
		-0.615486, 0.035843, 0.787333,
		0.721388, -0.376749, 0.581085,
		26.592318, 31.995098, 34.577908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.017717, 32.640259, 34.821018>,  <26.087347, 32.258823, 34.171150>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.017717, 32.640259, 34.821018> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.392490, 32.501110, 34.807480>,  <26.617353, 32.417622, 34.799358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.392490, 32.501110, 34.807480>,  <26.017717, 32.640259, 34.821018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.392490, 32.501110, 34.807480> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333296, 0.860111, 0.386165,
		-0.105228, -0.373089, 0.921809,
		0.936932, -0.347870, -0.033841,
		26.673571, 32.396748, 34.797329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.425470, 32.785923, 35.478741>,  <26.017717, 32.640259, 34.821018>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.425470, 32.785923, 35.478741> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.706238, 32.755066, 35.195515>,  <26.874699, 32.736553, 35.025578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.706238, 32.755066, 35.195515>,  <26.425470, 32.785923, 35.478741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.706238, 32.755066, 35.195515> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548987, 0.691957, 0.468837,
		0.453786, -0.717806, 0.528046,
		0.701919, -0.077139, -0.708067,
		26.916813, 32.731926, 34.983093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.130165, 32.722458, 35.764523>,  <26.425470, 32.785923, 35.478741>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.130165, 32.722458, 35.764523> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.228386, 32.817207, 35.388523>,  <27.287319, 32.874058, 35.162922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.228386, 32.817207, 35.388523>,  <27.130165, 32.722458, 35.764523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.228386, 32.817207, 35.388523> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607370, 0.718158, 0.339632,
		0.755517, -0.654324, 0.032474,
		0.245551, 0.236874, -0.939997,
		27.302052, 32.888271, 35.106525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.863039, 32.976601, 35.835655>,  <27.130165, 32.722458, 35.764523>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.863039, 32.976601, 35.835655> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.697676, 33.116013, 35.499172>,  <27.598457, 33.199657, 35.297283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.697676, 33.116013, 35.499172>,  <27.863039, 32.976601, 35.835655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.697676, 33.116013, 35.499172> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329539, 0.918488, 0.218596,
		0.848822, -0.186840, -0.494562,
		-0.413407, 0.348526, -0.841204,
		27.573654, 33.220570, 35.246811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.374683, 33.461796, 35.490696>,  <27.863039, 32.976601, 35.835655>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.374683, 33.461796, 35.490696> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.008749, 33.571102, 35.371765>,  <27.789188, 33.636684, 35.300407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.008749, 33.571102, 35.371765>,  <28.374683, 33.461796, 35.490696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.008749, 33.571102, 35.371765> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233366, 0.958628, 0.163011,
		0.329569, 0.079743, -0.940758,
		-0.914836, 0.273264, -0.297325,
		27.734299, 33.653080, 35.282566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.505457, 34.009148, 35.053711>,  <28.374683, 33.461796, 35.490696>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.505457, 34.009148, 35.053711> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.129259, 34.019997, 35.189198>,  <27.903540, 34.026505, 35.270489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.129259, 34.019997, 35.189198>,  <28.505457, 34.009148, 35.053711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.129259, 34.019997, 35.189198> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025028, 0.999631, -0.010536,
		-0.338881, -0.001432, -0.940828,
		-0.940496, 0.027118, 0.338720,
		27.847111, 34.028133, 35.290813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.215357, 34.306248, 35.178886>,  <28.505457, 34.009148, 35.053711>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.215357, 34.306248, 35.178886> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.560627, 34.165836, 35.324055>,  <29.767788, 34.081589, 35.411156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.560627, 34.165836, 35.324055>,  <29.215357, 34.306248, 35.178886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.560627, 34.165836, 35.324055> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119324, -0.840250, -0.528907,
		0.490605, 0.413233, -0.767167,
		0.863174, -0.351025, 0.362922,
		29.819580, 34.060528, 35.432930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.678562, 34.044468, 34.645828>,  <29.215357, 34.306248, 35.178886>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.678562, 34.044468, 34.645828> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.790688, 33.847492, 34.975418>,  <29.857964, 33.729305, 35.173172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.790688, 33.847492, 34.975418>,  <29.678562, 34.044468, 34.645828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.790688, 33.847492, 34.975418> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386195, -0.843704, -0.372850,
		0.878793, -0.213699, -0.426680,
		0.280314, -0.492440, 0.823970,
		29.874783, 33.699760, 35.222610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.103239, 33.463531, 34.369583>,  <29.678562, 34.044468, 34.645828>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.103239, 33.463531, 34.369583> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.000969, 33.383373, 34.747890>,  <29.939608, 33.335278, 34.974873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.000969, 33.383373, 34.747890>,  <30.103239, 33.463531, 34.369583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.000969, 33.383373, 34.747890> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272297, -0.923746, -0.269346,
		0.927623, -0.326394, 0.181610,
		-0.255675, -0.200400, 0.945764,
		29.924267, 33.323254, 35.031620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.442686, 32.814423, 34.418850>,  <30.103239, 33.463531, 34.369583>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.442686, 32.814423, 34.418850> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.151941, 32.874424, 34.686932>,  <29.977495, 32.910423, 34.847778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.151941, 32.874424, 34.686932>,  <30.442686, 32.814423, 34.418850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.151941, 32.874424, 34.686932> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381720, -0.899478, -0.212671,
		0.570930, -0.410411, 0.711057,
		-0.726863, 0.150005, 0.670201,
		29.933882, 32.919426, 34.887993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.539030, 32.300037, 34.876163>,  <30.442686, 32.814423, 34.418850>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.539030, 32.300037, 34.876163> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.160534, 32.415447, 34.934650>,  <29.933435, 32.484692, 34.969742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.160534, 32.415447, 34.934650>,  <30.539030, 32.300037, 34.876163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.160534, 32.415447, 34.934650> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319104, -0.906612, -0.276093,
		0.052905, -0.307910, 0.949943,
		-0.946242, 0.288524, 0.146220,
		29.876661, 32.502003, 34.978516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.290373, 31.769386, 35.249870>,  <30.539030, 32.300037, 34.876163>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.290373, 31.769386, 35.249870> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.975807, 31.965864, 35.100052>,  <29.787067, 32.083752, 35.010162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.975807, 31.965864, 35.100052>,  <30.290373, 31.769386, 35.249870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.975807, 31.965864, 35.100052> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324513, -0.844467, -0.426106,
		-0.525590, -0.213551, 0.823499,
		-0.786414, 0.491193, -0.374543,
		29.739883, 32.113220, 34.987690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.660124, 31.360289, 35.354633>,  <30.290373, 31.769386, 35.249870>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.660124, 31.360289, 35.354633> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.574387, 31.600275, 35.046322>,  <29.522945, 31.744267, 34.861336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.574387, 31.600275, 35.046322>,  <29.660124, 31.360289, 35.354633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.574387, 31.600275, 35.046322> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373126, -0.779565, -0.503046,
		-0.902682, 0.179773, 0.390956,
		-0.214342, 0.599967, -0.770777,
		29.510084, 31.780266, 34.815090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.058262, 31.148897, 35.141403>,  <29.660124, 31.360289, 35.354633>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.058262, 31.148897, 35.141403> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.204849, 31.337238, 34.820404>,  <29.292803, 31.450243, 34.627804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.204849, 31.337238, 34.820404>,  <29.058262, 31.148897, 35.141403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.204849, 31.337238, 34.820404> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298824, -0.757243, -0.580765,
		-0.881138, 0.452637, -0.136804,
		0.366470, 0.470853, -0.802494,
		29.314791, 31.478495, 34.579655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.632742, 31.128389, 34.618637>,  <29.058262, 31.148897, 35.141403>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.632742, 31.128389, 34.618637> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.969698, 31.203924, 34.416759>,  <29.171871, 31.249245, 34.295631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.969698, 31.203924, 34.416759>,  <28.632742, 31.128389, 34.618637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.969698, 31.203924, 34.416759> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212240, -0.744612, -0.632856,
		-0.495308, 0.640229, -0.587176,
		0.842392, 0.188837, -0.504695,
		29.222416, 31.260574, 34.265350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.389771, 31.142611, 34.018784>,  <28.632742, 31.128389, 34.618637>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.389771, 31.142611, 34.018784> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.783195, 31.078707, 33.985126>,  <29.019251, 31.040363, 33.964931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.783195, 31.078707, 33.985126>,  <28.389771, 31.142611, 34.018784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.783195, 31.078707, 33.985126> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172772, -0.697250, -0.695696,
		0.052476, 0.698798, -0.713391,
		0.983563, -0.159762, -0.084144,
		29.078264, 31.030779, 33.959885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.583670, 31.304485, 33.252296>,  <28.389771, 31.142611, 34.018784>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.583670, 31.304485, 33.252296> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.838264, 31.070314, 33.453159>,  <28.991022, 30.929811, 33.573677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.838264, 31.070314, 33.453159>,  <28.583670, 31.304485, 33.252296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.838264, 31.070314, 33.453159> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053102, -0.682779, -0.728693,
		0.769458, 0.437138, -0.465667,
		0.636487, -0.585425, 0.502157,
		29.029211, 30.894688, 33.603806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.981556, 30.993767, 32.687229>,  <28.583670, 31.304485, 33.252296>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.981556, 30.993767, 32.687229> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.029135, 30.754562, 33.004272>,  <29.057682, 30.611040, 33.194500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.029135, 30.754562, 33.004272>,  <28.981556, 30.993767, 32.687229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.029135, 30.754562, 33.004272> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269985, -0.787682, -0.553774,
		0.955489, -0.148124, -0.255147,
		0.118947, -0.598011, 0.792613,
		29.064819, 30.575159, 33.242058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.262091, 30.375952, 32.398884>,  <28.981556, 30.993767, 32.687229>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.262091, 30.375952, 32.398884> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.150469, 30.218033, 32.749031>,  <29.083496, 30.123281, 32.959118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.150469, 30.218033, 32.749031>,  <29.262091, 30.375952, 32.398884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.150469, 30.218033, 32.749031> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242071, -0.853218, -0.461975,
		0.929264, -0.340816, 0.142525,
		-0.279054, -0.394796, 0.875366,
		29.066753, 30.099594, 33.011642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.683573, 29.739086, 32.458782>,  <29.262091, 30.375952, 32.398884>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.683573, 29.739086, 32.458782> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.369757, 29.707878, 32.704842>,  <29.181467, 29.689154, 32.852478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.369757, 29.707878, 32.704842>,  <29.683573, 29.739086, 32.458782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.369757, 29.707878, 32.704842> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245809, -0.871644, -0.424045,
		0.569277, -0.483890, 0.664661,
		-0.784539, -0.078020, 0.615152,
		29.134396, 29.684473, 32.889385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.644751, 28.946756, 32.682465>,  <29.683573, 29.739086, 32.458782>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.644751, 28.946756, 32.682465> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.278513, 29.097174, 32.739429>,  <29.058771, 29.187424, 32.773609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.278513, 29.097174, 32.739429>,  <29.644751, 28.946756, 32.682465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.278513, 29.097174, 32.739429> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401350, -0.832900, -0.381046,
		-0.024678, -0.406039, 0.913522,
		-0.915593, 0.376046, 0.142409,
		29.003836, 29.209988, 32.782154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.343567, 28.482800, 33.069263>,  <29.644751, 28.946756, 32.682465>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.343567, 28.482800, 33.069263> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.042542, 28.686167, 32.901852>,  <28.861927, 28.808187, 32.801407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.042542, 28.686167, 32.901852>,  <29.343567, 28.482800, 33.069263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.042542, 28.686167, 32.901852> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365293, -0.851108, -0.377064,
		-0.547917, -0.130879, 0.826231,
		-0.752562, 0.508416, -0.418527,
		28.816772, 28.838692, 32.776295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.734419, 28.259361, 33.273193>,  <29.343567, 28.482800, 33.069263>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.734419, 28.259361, 33.273193> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.619419, 28.429785, 32.930073>,  <28.550419, 28.532040, 32.724201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.619419, 28.429785, 32.930073>,  <28.734419, 28.259361, 33.273193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.619419, 28.429785, 32.930073> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363422, -0.877160, -0.313871,
		-0.886155, 0.221507, 0.407018,
		-0.287495, 0.426057, -0.857800,
		28.533169, 28.557602, 32.672733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.129562, 28.010284, 33.188446>,  <28.734419, 28.259361, 33.273193>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.129562, 28.010284, 33.188446> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.174364, 28.155531, 32.818451>,  <28.201244, 28.242678, 32.596455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.174364, 28.155531, 32.818451>,  <28.129562, 28.010284, 33.188446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.174364, 28.155531, 32.818451> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376571, -0.845908, -0.377668,
		-0.919592, 0.390624, 0.041993,
		0.112004, 0.363114, -0.924989,
		28.207966, 28.264465, 32.540955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.503567, 27.794060, 32.811214>,  <28.129562, 28.010284, 33.188446>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.503567, 27.794060, 32.811214> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.755898, 27.883945, 32.514145>,  <27.907295, 27.937878, 32.335903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.755898, 27.883945, 32.514145>,  <27.503567, 27.794060, 32.811214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.755898, 27.883945, 32.514145> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273717, -0.831165, -0.483987,
		-0.726041, 0.508594, -0.462814,
		0.630827, 0.224714, -0.742671,
		27.945147, 27.951359, 32.291344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.184553, 27.741392, 32.109474>,  <27.503567, 27.794060, 32.811214>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.184553, 27.741392, 32.109474> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.572327, 27.702398, 32.019413>,  <27.804991, 27.679001, 31.965376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.572327, 27.702398, 32.019413>,  <27.184553, 27.741392, 32.109474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.572327, 27.702398, 32.019413> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205957, -0.822056, -0.530854,
		-0.133337, 0.561000, -0.817007,
		0.969434, -0.097486, -0.225152,
		27.863157, 27.673153, 31.951868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.136875, 27.454859, 31.482576>,  <27.184553, 27.741392, 32.109474>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.136875, 27.454859, 31.482576> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.508909, 27.356533, 31.591766>,  <27.732130, 27.297537, 31.657280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.508909, 27.356533, 31.591766>,  <27.136875, 27.454859, 31.482576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.508909, 27.356533, 31.591766> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098632, -0.882931, -0.459025,
		0.353852, 0.400009, -0.845447,
		0.930086, -0.245815, 0.272973,
		27.787935, 27.282789, 31.673658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.482288, 27.442953, 30.899792>,  <27.136875, 27.454859, 31.482576>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.482288, 27.442953, 30.899792> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.644352, 27.210093, 31.181770>,  <27.741590, 27.070377, 31.350958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.644352, 27.210093, 31.181770>,  <27.482288, 27.442953, 30.899792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.644352, 27.210093, 31.181770> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141237, -0.801665, -0.580848,
		0.903271, 0.135771, -0.407022,
		0.405158, -0.582150, 0.704945,
		27.765900, 27.035448, 31.393253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<42.948898, 32.726013, 47.287766> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.596188, 32.554489, 47.366337>,  <42.384560, 32.451572, 47.413479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.596188, 32.554489, 47.366337>,  <42.948898, 32.726013, 47.287766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.596188, 32.554489, 47.366337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091644, 0.252755, 0.963180,
		-0.462671, 0.867315, -0.183576,
		-0.881781, -0.428812, 0.196426,
		42.331654, 32.425846, 47.425266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.665199, 33.168209, 47.755596>,  <42.948898, 32.726013, 47.287766>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.665199, 33.168209, 47.755596> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.440800, 32.844391, 47.824783>,  <42.306160, 32.650101, 47.866295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.440800, 32.844391, 47.824783>,  <42.665199, 33.168209, 47.755596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.440800, 32.844391, 47.824783> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146483, 0.108571, 0.983237,
		-0.814752, 0.576934, 0.057676,
		-0.561001, -0.809543, 0.172969,
		42.272499, 32.601528, 47.876675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.301418, 33.246243, 48.380608>,  <42.665199, 33.168209, 47.755596>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.301418, 33.246243, 48.380608> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.288330, 32.847672, 48.349468>,  <42.280476, 32.608528, 48.330784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.288330, 32.847672, 48.349468>,  <42.301418, 33.246243, 48.380608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.288330, 32.847672, 48.349468> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154553, -0.081994, 0.984576,
		-0.987442, 0.020184, 0.156684,
		-0.032720, -0.996428, -0.077845,
		42.278515, 32.548744, 48.326115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.910454, 33.061039, 48.957851>,  <42.301418, 33.246243, 48.380608>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.910454, 33.061039, 48.957851> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.082848, 32.723740, 48.829369>,  <42.186283, 32.521358, 48.752277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.082848, 32.723740, 48.829369>,  <41.910454, 33.061039, 48.957851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.082848, 32.723740, 48.829369> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017947, -0.363906, 0.931263,
		-0.902179, -0.395598, -0.171973,
		0.430988, -0.843253, -0.321208,
		42.212143, 32.470764, 48.733006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.578678, 32.526379, 49.374676>,  <41.910454, 33.061039, 48.957851>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.578678, 32.526379, 49.374676> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.910046, 32.354557, 49.230896>,  <42.108868, 32.251465, 49.144627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.910046, 32.354557, 49.230896>,  <41.578678, 32.526379, 49.374676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.910046, 32.354557, 49.230896> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138832, -0.464253, 0.874754,
		-0.542634, -0.774565, -0.324959,
		0.828418, -0.429557, -0.359453,
		42.158569, 32.225689, 49.123058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.545845, 31.801256, 49.454948>,  <41.578678, 32.526379, 49.374676>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.545845, 31.801256, 49.454948> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.936085, 31.883024, 49.422890>,  <42.170227, 31.932085, 49.403656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.936085, 31.883024, 49.422890>,  <41.545845, 31.801256, 49.454948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.936085, 31.883024, 49.422890> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185798, -0.574090, 0.797433,
		0.117003, -0.792864, -0.598062,
		0.975597, 0.204420, -0.080142,
		42.228764, 31.944349, 49.398846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.839157, 31.186375, 49.721542>,  <41.545845, 31.801256, 49.454948>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.839157, 31.186375, 49.721542> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.122448, 31.468672, 49.714149>,  <42.292423, 31.638050, 49.709713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.122448, 31.468672, 49.714149>,  <41.839157, 31.186375, 49.721542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.122448, 31.468672, 49.714149> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299396, -0.276532, 0.913177,
		0.639357, -0.652271, -0.407144,
		0.708227, 0.705743, -0.018485,
		42.334915, 31.680395, 49.708603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.546265, 30.827589, 49.781189>,  <41.839157, 31.186375, 49.721542>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.546265, 30.827589, 49.781189> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.618996, 31.203495, 49.896973>,  <42.662636, 31.429039, 49.966442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.618996, 31.203495, 49.896973>,  <42.546265, 30.827589, 49.781189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.618996, 31.203495, 49.896973> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236582, -0.327525, 0.914744,
		0.954447, -0.097845, -0.281884,
		0.181827, 0.939763, 0.289457,
		42.673542, 31.485424, 49.983810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.145798, 30.824938, 50.202732>,  <42.546265, 30.827589, 49.781189>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.145798, 30.824938, 50.202732> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.979599, 31.165722, 50.330181>,  <42.879879, 31.370192, 50.406651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.979599, 31.165722, 50.330181>,  <43.145798, 30.824938, 50.202732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.979599, 31.165722, 50.330181> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169702, -0.271536, 0.947349,
		0.893622, 0.447696, -0.031756,
		-0.415501, 0.851960, 0.318626,
		42.854950, 31.421310, 50.425770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.597237, 31.088348, 50.661369>,  <43.145798, 30.824938, 50.202732>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.597237, 31.088348, 50.661369> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.248589, 31.261406, 50.753532>,  <43.039398, 31.365240, 50.808830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.248589, 31.261406, 50.753532>,  <43.597237, 31.088348, 50.661369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.248589, 31.261406, 50.753532> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215287, -0.084404, 0.972896,
		0.440365, 0.897605, -0.019574,
		-0.871625, 0.432644, 0.230411,
		42.987103, 31.391199, 50.822655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.730598, 31.490690, 51.271534>,  <43.597237, 31.088348, 50.661369>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.730598, 31.490690, 51.271534> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.332291, 31.464924, 51.245342>,  <43.093304, 31.449463, 51.229626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.332291, 31.464924, 51.245342>,  <43.730598, 31.490690, 51.271534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.332291, 31.464924, 51.245342> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064487, -0.017434, 0.997766,
		-0.065415, 0.997771, 0.013206,
		-0.995772, -0.064417, -0.065484,
		43.033558, 31.445599, 51.225697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.511173, 31.986240, 51.687271>,  <43.730598, 31.490690, 51.271534>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.511173, 31.986240, 51.687271> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.218369, 31.716265, 51.650127>,  <43.042686, 31.554279, 51.627842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.218369, 31.716265, 51.650127>,  <43.511173, 31.986240, 51.687271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.218369, 31.716265, 51.650127> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030685, -0.103496, 0.994157,
		-0.680605, 0.730580, 0.055049,
		-0.732008, -0.674939, -0.092857,
		42.998768, 31.513783, 51.622269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.953148, 32.198547, 52.164738>,  <43.511173, 31.986240, 51.687271>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.953148, 32.198547, 52.164738> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.894955, 31.809103, 52.094402>,  <42.860039, 31.575438, 52.052200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.894955, 31.809103, 52.094402>,  <42.953148, 32.198547, 52.164738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.894955, 31.809103, 52.094402> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319979, -0.121879, 0.939552,
		-0.936188, 0.192953, -0.293803,
		-0.145481, -0.973609, -0.175842,
		42.851311, 31.517021, 52.041649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.296623, 32.037594, 52.370293>,  <42.953148, 32.198547, 52.164738>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.296623, 32.037594, 52.370293> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.506958, 31.697435, 52.377560>,  <42.633156, 31.493341, 52.381920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.506958, 31.697435, 52.377560>,  <42.296623, 32.037594, 52.370293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.506958, 31.697435, 52.377560> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251572, -0.135080, 0.958366,
		-0.812534, -0.508510, -0.284965,
		0.525832, -0.850394, 0.018170,
		42.664707, 31.442318, 52.383011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.975838, 32.638035, 52.712227>,  <42.296623, 32.037594, 52.370293>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.975838, 32.638035, 52.712227> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.835766, 32.959084, 52.905380>,  <41.751720, 33.151711, 53.021271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.835766, 32.959084, 52.905380>,  <41.975838, 32.638035, 52.712227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.835766, 32.959084, 52.905380> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305703, 0.389363, -0.868874,
		-0.885391, -0.451883, 0.109014,
		-0.350183, 0.802620, 0.482881,
		41.730709, 33.199871, 53.050243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.268082, 32.791420, 52.465263>,  <41.975838, 32.638035, 52.712227>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.268082, 32.791420, 52.465263> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.453545, 33.129429, 52.571812>,  <41.564823, 33.332233, 52.635742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.453545, 33.129429, 52.571812>,  <41.268082, 32.791420, 52.465263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.453545, 33.129429, 52.571812> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386136, 0.463306, -0.797650,
		-0.797448, 0.266978, 0.541109,
		0.463655, 0.845027, 0.266372,
		41.592640, 33.382938, 52.651722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.879513, 33.289314, 52.339272>,  <41.268082, 32.791420, 52.465263>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.879513, 33.289314, 52.339272> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.218513, 33.501629, 52.339901>,  <41.421913, 33.629017, 52.340279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.218513, 33.501629, 52.339901>,  <40.879513, 33.289314, 52.339272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.218513, 33.501629, 52.339901> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352943, 0.565752, -0.745223,
		-0.396449, 0.631021, 0.666814,
		0.847502, 0.530790, 0.001578,
		41.472763, 33.660866, 52.340374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.575180, 34.000538, 52.285973>,  <40.879513, 33.289314, 52.339272>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.575180, 34.000538, 52.285973> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.967003, 34.040039, 52.215866>,  <41.202095, 34.063740, 52.173801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.967003, 34.040039, 52.215866>,  <40.575180, 34.000538, 52.285973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.967003, 34.040039, 52.215866> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201158, 0.472408, -0.858118,
		-0.001945, 0.875830, 0.482615,
		0.979557, 0.098750, -0.175262,
		41.260868, 34.069664, 52.163288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.661140, 34.617233, 51.856239>,  <40.575180, 34.000538, 52.285973>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.661140, 34.617233, 51.856239> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.005188, 34.421844, 51.797466>,  <41.211617, 34.304611, 51.762203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.005188, 34.421844, 51.797466>,  <40.661140, 34.617233, 51.856239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.005188, 34.421844, 51.797466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115970, 0.467763, -0.876212,
		0.496732, 0.736609, 0.458981,
		0.860121, -0.488471, -0.146929,
		41.263226, 34.275303, 51.753387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.115749, 35.096729, 51.798954>,  <40.661140, 34.617233, 51.856239>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.115749, 35.096729, 51.798954> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.248325, 34.781063, 51.592125>,  <41.327873, 34.591663, 51.468029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.248325, 34.781063, 51.592125>,  <41.115749, 35.096729, 51.798954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.248325, 34.781063, 51.592125> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000538, 0.547889, -0.836551,
		0.943475, 0.277547, 0.181170,
		0.331443, -0.789167, -0.517069,
		41.347759, 34.544312, 51.437004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.556770, 35.337162, 51.170673>,  <41.115749, 35.096729, 51.798954>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.556770, 35.337162, 51.170673> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.505272, 34.951344, 51.078518>,  <41.474373, 34.719852, 51.023224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.505272, 34.951344, 51.078518>,  <41.556770, 35.337162, 51.170673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.505272, 34.951344, 51.078518> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092139, 0.242956, -0.965651,
		0.987387, -0.103098, -0.120153,
		-0.128748, -0.964543, -0.230393,
		41.466648, 34.661980, 51.009399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.013374, 35.178558, 50.565807>,  <41.556770, 35.337162, 51.170673>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.013374, 35.178558, 50.565807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.714943, 34.912453, 50.577015>,  <41.535885, 34.752789, 50.583740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.714943, 34.912453, 50.577015>,  <42.013374, 35.178558, 50.565807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.714943, 34.912453, 50.577015> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120357, 0.093350, -0.988332,
		0.654890, -0.740746, -0.149716,
		-0.746079, -0.665268, 0.028020,
		41.491119, 34.712872, 50.585423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.226532, 34.701622, 50.035866>,  <42.013374, 35.178558, 50.565807>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.226532, 34.701622, 50.035866> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.831001, 34.665283, 50.083149>,  <41.593685, 34.643482, 50.111519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.831001, 34.665283, 50.083149>,  <42.226532, 34.701622, 50.035866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.831001, 34.665283, 50.083149> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120304, 0.017979, -0.992574,
		0.088049, -0.995702, -0.028707,
		-0.988825, -0.090849, 0.118204,
		41.534355, 34.638031, 50.118610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.928562, 34.369656, 49.425224>,  <42.226532, 34.701622, 50.035866>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.928562, 34.369656, 49.425224> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.584881, 34.493530, 49.588131>,  <41.378674, 34.567856, 49.685875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.584881, 34.493530, 49.588131>,  <41.928562, 34.369656, 49.425224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.584881, 34.493530, 49.588131> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386378, 0.129067, -0.913266,
		-0.335393, -0.942038, 0.008762,
		-0.859200, 0.309688, 0.407270,
		41.327122, 34.586437, 49.710312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.378368, 33.926079, 49.248493>,  <41.928562, 34.369656, 49.425224>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.378368, 33.926079, 49.248493> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.206123, 34.276428, 49.335594>,  <41.102776, 34.486637, 49.387856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.206123, 34.276428, 49.335594>,  <41.378368, 33.926079, 49.248493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.206123, 34.276428, 49.335594> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426904, 0.014905, -0.904174,
		-0.795189, -0.482309, 0.367495,
		-0.430614, 0.875874, 0.217752,
		41.076939, 34.539192, 49.400921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.585964, 34.037434, 48.972904>,  <41.378368, 33.926079, 49.248493>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.585964, 34.037434, 48.972904> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.700108, 34.415833, 49.034431>,  <40.768593, 34.642872, 49.071350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.700108, 34.415833, 49.034431>,  <40.585964, 34.037434, 48.972904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.700108, 34.415833, 49.034431> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258304, 0.230466, -0.938171,
		-0.922958, 0.227978, 0.310120,
		0.285354, 0.945998, 0.153823,
		40.785713, 34.699631, 49.080578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.094643, 34.411976, 48.577248>,  <40.585964, 34.037434, 48.972904>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.094643, 34.411976, 48.577248> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.395203, 34.672001, 48.622543>,  <40.575539, 34.828014, 48.649719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.395203, 34.672001, 48.622543>,  <40.094643, 34.411976, 48.577248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.395203, 34.672001, 48.622543> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124999, 0.308733, -0.942899,
		-0.647901, 0.694338, 0.313238,
		0.751398, 0.650060, 0.113237,
		40.620621, 34.867020, 48.656513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.848942, 35.026337, 48.341751>,  <40.094643, 34.411976, 48.577248>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.848942, 35.026337, 48.341751> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.246029, 35.027138, 48.293568>,  <40.484280, 35.027618, 48.264656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.246029, 35.027138, 48.293568>,  <39.848942, 35.026337, 48.341751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.246029, 35.027138, 48.293568> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117914, 0.221259, -0.968060,
		0.024718, 0.975213, 0.219883,
		0.992716, 0.001998, -0.120460,
		40.543842, 35.027737, 48.257431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.413090, 35.630199, 48.343666>,  <39.848942, 35.026337, 48.341751>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.413090, 35.630199, 48.343666> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.071449, 35.424789, 48.376675>,  <38.866467, 35.301544, 48.396481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.071449, 35.424789, 48.376675>,  <39.413090, 35.630199, 48.343666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.071449, 35.424789, 48.376675> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068919, 0.045522, 0.996583,
		-0.515523, 0.856869, -0.003489,
		-0.854100, -0.513521, 0.082522,
		38.815220, 35.270733, 48.401432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.198505, 35.813103, 48.961796>,  <39.413090, 35.630199, 48.343666>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.198505, 35.813103, 48.961796> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.934494, 35.520283, 48.894306>,  <38.776089, 35.344589, 48.853813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.934494, 35.520283, 48.894306>,  <39.198505, 35.813103, 48.961796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.934494, 35.520283, 48.894306> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011387, -0.234311, 0.972095,
		-0.751158, 0.639685, 0.162987,
		-0.660024, -0.732053, -0.168720,
		38.736488, 35.300667, 48.843689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.666248, 35.877499, 49.535824>,  <39.198505, 35.813103, 48.961796>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.666248, 35.877499, 49.535824> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.637104, 35.509125, 49.382687>,  <38.619617, 35.288101, 49.290806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.637104, 35.509125, 49.382687>,  <38.666248, 35.877499, 49.535824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.637104, 35.509125, 49.382687> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145345, -0.369958, 0.917609,
		-0.986694, 0.122504, -0.106897,
		-0.072864, -0.920936, -0.382841,
		38.615246, 35.232845, 49.267834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.101849, 35.649067, 49.837337>,  <38.666248, 35.877499, 49.535824>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.101849, 35.649067, 49.837337> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.266689, 35.309284, 49.705524>,  <38.365593, 35.105415, 49.626434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.266689, 35.309284, 49.705524>,  <38.101849, 35.649067, 49.837337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.266689, 35.309284, 49.705524> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314268, -0.472003, 0.823680,
		-0.855222, -0.235881, -0.461471,
		0.412106, -0.849455, -0.329537,
		38.390320, 35.054447, 49.606663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.594612, 35.090282, 49.870956>,  <38.101849, 35.649067, 49.837337>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.594612, 35.090282, 49.870956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.942974, 34.893894, 49.862297>,  <38.151993, 34.776062, 49.857101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.942974, 34.893894, 49.862297>,  <37.594612, 35.090282, 49.870956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.942974, 34.893894, 49.862297> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262596, -0.502135, 0.823956,
		-0.415406, -0.711906, -0.566240,
		0.870908, -0.490969, -0.021646,
		38.204247, 34.746605, 49.855804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.496098, 34.358585, 49.969910>,  <37.594612, 35.090282, 49.870956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.496098, 34.358585, 49.969910> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.876785, 34.408558, 50.082066>,  <38.105198, 34.438541, 50.149361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.876785, 34.408558, 50.082066>,  <37.496098, 34.358585, 49.969910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.876785, 34.408558, 50.082066> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195777, -0.456492, 0.867921,
		0.236426, -0.880913, -0.409995,
		0.951722, 0.124932, 0.280389,
		38.162300, 34.446037, 50.166183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.691555, 33.742413, 50.367649>,  <37.496098, 34.358585, 49.969910>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.691555, 33.742413, 50.367649> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.955082, 34.030758, 50.453732>,  <38.113197, 34.203766, 50.505383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.955082, 34.030758, 50.453732>,  <37.691555, 33.742413, 50.367649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.955082, 34.030758, 50.453732> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029320, -0.261244, 0.964828,
		0.751728, -0.641959, -0.150978,
		0.658822, 0.720861, 0.215206,
		38.152729, 34.247017, 50.518295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.690323, 33.033649, 50.400917>,  <37.691555, 33.742413, 50.367649>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.690323, 33.033649, 50.400917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.542507, 32.664715, 50.446053>,  <37.453819, 32.443352, 50.473133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.542507, 32.664715, 50.446053>,  <37.690323, 33.033649, 50.400917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.542507, 32.664715, 50.446053> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171224, -0.051766, -0.983871,
		0.913305, -0.382897, -0.138797,
		-0.369537, -0.922340, 0.112839,
		37.431644, 32.388012, 50.479904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.942978, 32.521412, 49.921101>,  <37.690323, 33.033649, 50.400917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.942978, 32.521412, 49.921101> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.599812, 32.341244, 50.019981>,  <37.393913, 32.233143, 50.079311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.599812, 32.341244, 50.019981>,  <37.942978, 32.521412, 49.921101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.599812, 32.341244, 50.019981> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211054, -0.129733, -0.968827,
		0.468448, -0.883342, 0.016237,
		-0.857912, -0.450418, 0.247206,
		37.342438, 32.206120, 50.094143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.863457, 31.811979, 49.670265>,  <37.942978, 32.521412, 49.921101>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.863457, 31.811979, 49.670265> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.486664, 31.934807, 49.724491>,  <37.260590, 32.008503, 49.757027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.486664, 31.934807, 49.724491>,  <37.863457, 31.811979, 49.670265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.486664, 31.934807, 49.724491> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245275, -0.353985, -0.902516,
		-0.229143, -0.883406, 0.408764,
		-0.941984, 0.307065, 0.135564,
		37.204067, 32.026928, 49.765160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.434277, 31.328815, 49.268616>,  <37.863457, 31.811979, 49.670265>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.434277, 31.328815, 49.268616> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.170563, 31.620070, 49.343620>,  <37.012333, 31.794823, 49.388622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.170563, 31.620070, 49.343620>,  <37.434277, 31.328815, 49.268616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.170563, 31.620070, 49.343620> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319788, -0.045837, -0.946380,
		-0.680499, -0.683897, 0.263070,
		-0.659285, 0.728137, 0.187510,
		36.972778, 31.838511, 49.399872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.901569, 31.020948, 48.865253>,  <37.434277, 31.328815, 49.268616>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.901569, 31.020948, 48.865253> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.818840, 31.401724, 48.955616>,  <36.769203, 31.630190, 49.009834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.818840, 31.401724, 48.955616>,  <36.901569, 31.020948, 48.865253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.818840, 31.401724, 48.955616> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285378, 0.162166, -0.944596,
		-0.935834, -0.259831, 0.238123,
		-0.206820, 0.951940, 0.225910,
		36.756794, 31.687305, 49.023388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.275379, 31.095373, 48.644672>,  <36.901569, 31.020948, 48.865253>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.275379, 31.095373, 48.644672> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.430275, 31.464064, 48.653309>,  <36.523212, 31.685278, 48.658493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.430275, 31.464064, 48.653309>,  <36.275379, 31.095373, 48.644672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.430275, 31.464064, 48.653309> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270338, 0.135905, -0.953125,
		-0.881457, 0.363245, 0.301806,
		0.387235, 0.921728, 0.021596,
		36.546444, 31.740582, 48.659786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.668190, 31.495207, 48.382732>,  <36.275379, 31.095373, 48.644672>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.668190, 31.495207, 48.382732> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.013420, 31.694164, 48.347626>,  <36.220558, 31.813540, 48.326561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.013420, 31.694164, 48.347626>,  <35.668190, 31.495207, 48.382732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.013420, 31.694164, 48.347626> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244507, 0.259402, -0.934306,
		-0.441953, 0.827833, 0.345499,
		0.863073, 0.497396, -0.087768,
		36.272343, 31.843384, 48.321297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<42.019901, 28.671949, 51.852760> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.822807, 29.018303, 51.818218>,  <41.704552, 29.226114, 51.797493>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.822807, 29.018303, 51.818218>,  <42.019901, 28.671949, 51.852760>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.822807, 29.018303, 51.818218> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135321, -0.174277, -0.975354,
		-0.859591, -0.468910, 0.203046,
		-0.492739, 0.865881, -0.086354,
		41.674984, 29.278067, 51.792313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.299019, 28.589785, 51.521790>,  <42.019901, 28.671949, 51.852760>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.299019, 28.589785, 51.521790> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.496250, 28.925022, 51.428436>,  <41.614590, 29.126165, 51.372425>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.496250, 28.925022, 51.428436>,  <41.299019, 28.589785, 51.521790>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.496250, 28.925022, 51.428436> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066426, -0.231208, -0.970634,
		-0.867444, 0.494104, -0.058333,
		0.493081, 0.838095, -0.233382,
		41.644173, 29.176451, 51.358421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.902161, 29.030222, 51.052048>,  <41.299019, 28.589785, 51.521790>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.902161, 29.030222, 51.052048> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.285763, 29.124966, 50.989815>,  <41.515923, 29.181812, 50.952473>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.285763, 29.124966, 50.989815>,  <40.902161, 29.030222, 51.052048>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.285763, 29.124966, 50.989815> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129396, -0.122451, -0.984003,
		-0.252122, 0.963796, -0.086782,
		0.959005, 0.236860, -0.155584,
		41.573463, 29.196024, 50.943138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.798065, 29.528425, 50.609509>,  <40.902161, 29.030222, 51.052048>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.798065, 29.528425, 50.609509> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.177845, 29.412281, 50.561775>,  <41.405712, 29.342594, 50.533134>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.177845, 29.412281, 50.561775>,  <40.798065, 29.528425, 50.609509>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.177845, 29.412281, 50.561775> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115152, 0.031505, -0.992848,
		0.292043, 0.956398, -0.003523,
		0.949447, -0.290361, -0.119331,
		41.462681, 29.325172, 50.525974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.071129, 30.085806, 50.250301>,  <40.798065, 29.528425, 50.609509>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.071129, 30.085806, 50.250301> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.316280, 29.775688, 50.189243>,  <41.463371, 29.589619, 50.152611>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.316280, 29.775688, 50.189243>,  <41.071129, 30.085806, 50.250301>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.316280, 29.775688, 50.189243> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056888, 0.235967, -0.970095,
		0.788126, 0.585868, 0.188724,
		0.612880, -0.775293, -0.152643,
		41.500145, 29.543100, 50.143452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.679291, 30.361422, 49.912380>,  <41.071129, 30.085806, 50.250301>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.679291, 30.361422, 49.912380> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.667347, 29.968044, 49.840889>,  <41.660179, 29.732018, 49.797993>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.667347, 29.968044, 49.840889>,  <41.679291, 30.361422, 49.912380>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.667347, 29.968044, 49.840889> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060973, 0.180270, -0.981726,
		0.997693, -0.018418, -0.065347,
		-0.029861, -0.983445, -0.178731,
		41.658390, 29.673012, 49.787270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.189152, 30.241837, 49.354530>,  <41.679291, 30.361422, 49.912380>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.189152, 30.241837, 49.354530> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.940701, 29.928852, 49.336845>,  <41.791630, 29.741062, 49.326233>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.940701, 29.928852, 49.336845>,  <42.189152, 30.241837, 49.354530>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.940701, 29.928852, 49.336845> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136887, 0.163863, -0.976940,
		0.771661, -0.600754, -0.208889,
		-0.621129, -0.782460, -0.044212,
		41.754360, 29.694115, 49.323582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.523926, 29.778006, 48.831718>,  <42.189152, 30.241837, 49.354530>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.523926, 29.778006, 48.831718> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.135113, 29.688477, 48.860157>,  <41.901825, 29.634760, 48.877220>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.135113, 29.688477, 48.860157>,  <42.523926, 29.778006, 48.831718>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.135113, 29.688477, 48.860157> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044729, -0.120768, -0.991673,
		0.230545, -0.967119, 0.107379,
		-0.972033, -0.223822, 0.071100,
		41.843502, 29.621330, 48.881489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.517727, 29.203619, 48.415386>,  <42.523926, 29.778006, 48.831718>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.517727, 29.203619, 48.415386> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.131794, 29.298105, 48.461502>,  <41.900234, 29.354797, 48.489174>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.131794, 29.298105, 48.461502>,  <42.517727, 29.203619, 48.415386>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.131794, 29.298105, 48.461502> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163043, -0.193780, -0.967402,
		-0.206167, -0.952184, 0.225478,
		-0.964838, 0.236209, 0.115296,
		41.842342, 29.368971, 48.496090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.058804, 28.671041, 48.158104>,  <42.517727, 29.203619, 48.415386>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.058804, 28.671041, 48.158104> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.853004, 29.013824, 48.145992>,  <41.729523, 29.219494, 48.138725>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.853004, 29.013824, 48.145992>,  <42.058804, 28.671041, 48.158104>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.853004, 29.013824, 48.145992> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183862, -0.144737, -0.972237,
		-0.837546, -0.494650, 0.232029,
		-0.514500, 0.856955, -0.030276,
		41.698654, 29.270910, 48.136909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.400650, 28.536983, 47.759083>,  <42.058804, 28.671041, 48.158104>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.400650, 28.536983, 47.759083> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.474850, 28.929958, 47.751053>,  <41.519371, 29.165743, 47.746235>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.474850, 28.929958, 47.751053>,  <41.400650, 28.536983, 47.759083>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.474850, 28.929958, 47.751053> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075663, -0.006085, -0.997115,
		-0.979726, 0.186486, 0.073206,
		0.185502, 0.982439, -0.020071,
		41.530499, 29.224689, 47.745033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.872131, 28.803411, 47.293755>,  <41.400650, 28.536983, 47.759083>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.872131, 28.803411, 47.293755> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.110268, 29.124701, 47.285702>,  <41.253147, 29.317474, 47.280869>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.110268, 29.124701, 47.285702>,  <40.872131, 28.803411, 47.293755>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.110268, 29.124701, 47.285702> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090820, -0.092167, -0.991593,
		-0.798327, 0.588503, -0.127819,
		0.595336, 0.803224, -0.020131,
		41.288868, 29.365667, 47.279663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.102150, 28.957035, 47.335358>,  <40.872131, 28.803411, 47.293755>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.102150, 28.957035, 47.335358> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.717342, 29.017246, 47.244267>,  <39.486458, 29.053373, 47.189613>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.717342, 29.017246, 47.244267>,  <40.102150, 28.957035, 47.335358>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.717342, 29.017246, 47.244267> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259989, -0.250940, 0.932435,
		0.083211, 0.956227, 0.280545,
		-0.962020, 0.150528, -0.227728,
		39.428738, 29.062405, 47.175949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.890934, 29.386822, 47.878841>,  <40.102150, 28.957035, 47.335358>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.890934, 29.386822, 47.878841> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.567329, 29.211184, 47.722534>,  <39.373169, 29.105801, 47.628750>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.567329, 29.211184, 47.722534>,  <39.890934, 29.386822, 47.878841>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.567329, 29.211184, 47.722534> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330140, -0.210609, 0.920137,
		-0.486326, 0.873407, 0.025422,
		-0.809008, -0.439094, -0.390771,
		39.324627, 29.079456, 47.605305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.309425, 29.701038, 48.231342>,  <39.890934, 29.386822, 47.878841>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.309425, 29.701038, 48.231342> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.189720, 29.347288, 48.088055>,  <39.117897, 29.135038, 48.002083>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.189720, 29.347288, 48.088055>,  <39.309425, 29.701038, 48.231342>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.189720, 29.347288, 48.088055> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271777, -0.280868, 0.920462,
		-0.914648, 0.372813, -0.156301,
		-0.299261, -0.884377, -0.358217,
		39.099941, 29.081974, 47.980591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.593372, 29.620125, 48.289196>,  <39.309425, 29.701038, 48.231342>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.593372, 29.620125, 48.289196> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.727158, 29.243345, 48.277397>,  <38.807430, 29.017279, 48.270317>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.727158, 29.243345, 48.277397>,  <38.593372, 29.620125, 48.289196>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.727158, 29.243345, 48.277397> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425910, -0.179003, 0.886881,
		-0.840676, -0.284065, -0.461055,
		0.334462, -0.941948, -0.029497,
		38.827496, 28.960760, 48.268547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.045712, 29.283978, 48.555378>,  <38.593372, 29.620125, 48.289196>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.045712, 29.283978, 48.555378> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.358047, 29.034351, 48.566921>,  <38.545448, 28.884577, 48.573849>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.358047, 29.034351, 48.566921>,  <38.045712, 29.283978, 48.555378>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.358047, 29.034351, 48.566921> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264795, -0.288769, 0.920052,
		-0.565837, -0.726056, -0.390731,
		0.780840, -0.624064, 0.028860,
		38.592300, 28.847132, 48.575581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.785465, 28.649229, 48.805363>,  <38.045712, 29.283978, 48.555378>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.785465, 28.649229, 48.805363> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.175644, 28.659615, 48.892841>,  <38.409752, 28.665846, 48.945328>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.175644, 28.659615, 48.892841>,  <37.785465, 28.649229, 48.805363>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.175644, 28.659615, 48.892841> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199587, -0.315586, 0.927669,
		0.093105, -0.948542, -0.302655,
		0.975447, 0.025965, 0.218699,
		38.468277, 28.667404, 48.958450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.880394, 28.102127, 49.319363>,  <37.785465, 28.649229, 48.805363>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.880394, 28.102127, 49.319363> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.210197, 28.325157, 49.357933>,  <38.408081, 28.458975, 49.381077>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.210197, 28.325157, 49.357933>,  <37.880394, 28.102127, 49.319363>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.210197, 28.325157, 49.357933> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106437, -0.014550, 0.994213,
		0.555751, -0.829999, 0.047350,
		0.824507, 0.557575, 0.096429,
		38.457550, 28.492430, 49.386864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267239, 27.789593, 49.920891>,  <37.880394, 28.102127, 49.319363>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.267239, 27.789593, 49.920891> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.385227, 28.168089, 49.867786>,  <38.456020, 28.395187, 49.835926>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.385227, 28.168089, 49.867786>,  <38.267239, 27.789593, 49.920891>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.385227, 28.168089, 49.867786> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222777, 0.067006, 0.972564,
		0.929175, -0.316450, -0.191035,
		0.294967, 0.946240, -0.132758,
		38.473717, 28.451962, 49.827957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.017879, 27.927095, 50.187382>,  <38.267239, 27.789593, 49.920891>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.017879, 27.927095, 50.187382> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.828781, 28.279411, 50.198162>,  <38.715324, 28.490801, 50.204632>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.828781, 28.279411, 50.198162>,  <39.017879, 27.927095, 50.187382>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.828781, 28.279411, 50.198162> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340018, 0.154109, 0.927706,
		0.812960, 0.447730, -0.372337,
		-0.472742, 0.880789, 0.026952,
		38.686958, 28.543648, 50.206249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.503197, 28.380009, 50.608829>,  <39.017879, 27.927095, 50.187382>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.503197, 28.380009, 50.608829> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.161846, 28.587156, 50.584984>,  <38.957035, 28.711445, 50.570679>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.161846, 28.587156, 50.584984>,  <39.503197, 28.380009, 50.608829>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.161846, 28.587156, 50.584984> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133555, 0.327738, 0.935281,
		0.503890, 0.790190, -0.348849,
		-0.853380, 0.517869, -0.059610,
		38.905830, 28.742517, 50.567101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.725132, 28.989262, 50.953442>,  <39.503197, 28.380009, 50.608829>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.725132, 28.989262, 50.953442> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.325493, 28.978844, 50.966862>,  <39.085709, 28.972593, 50.974915>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.325493, 28.978844, 50.966862>,  <39.725132, 28.989262, 50.953442>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.325493, 28.978844, 50.966862> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015487, 0.512074, 0.858802,
		-0.039548, 0.858546, -0.511209,
		-0.999098, -0.026047, 0.033548,
		39.025764, 28.971029, 50.976925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.525452, 29.698854, 51.103378>,  <39.725132, 28.989262, 50.953442>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.525452, 29.698854, 51.103378> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.224285, 29.450459, 51.190540>,  <39.043583, 29.301422, 51.242840>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.224285, 29.450459, 51.190540>,  <39.525452, 29.698854, 51.103378>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.224285, 29.450459, 51.190540> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183299, 0.515885, 0.836818,
		-0.632070, 0.590115, -0.502247,
		-0.752920, -0.620989, 0.217907,
		38.998409, 29.264162, 51.255913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.096874, 30.225492, 51.336834>,  <39.525452, 29.698854, 51.103378>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.096874, 30.225492, 51.336834> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.020889, 29.876366, 51.516659>,  <38.975300, 29.666889, 51.624554>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.020889, 29.876366, 51.516659>,  <39.096874, 30.225492, 51.336834>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.020889, 29.876366, 51.516659> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032787, 0.463286, 0.885602,
		-0.981244, 0.153491, -0.116624,
		-0.189963, -0.872815, 0.449564,
		38.963902, 29.614521, 51.651527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377239, 30.174061, 51.734016>,  <39.096874, 30.225492, 51.336834>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.377239, 30.174061, 51.734016> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.696026, 29.982000, 51.880600>,  <38.887299, 29.866764, 51.968552>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.696026, 29.982000, 51.880600>,  <38.377239, 30.174061, 51.734016>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.696026, 29.982000, 51.880600> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174154, 0.398272, 0.900583,
		-0.578367, -0.781559, 0.233790,
		0.796970, -0.480152, 0.366459,
		38.935116, 29.837955, 51.990540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.426289, 30.462982, 52.446152>,  <38.377239, 30.174061, 51.734016>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.426289, 30.462982, 52.446152> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.158623, 30.672001, 52.657494>,  <37.998024, 30.797411, 52.784298>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.158623, 30.672001, 52.657494>,  <38.426289, 30.462982, 52.446152>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.158623, 30.672001, 52.657494> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296497, 0.464216, -0.834622,
		-0.681401, -0.715157, -0.155704,
		-0.669166, 0.522546, 0.528358,
		37.957874, 30.828764, 52.816002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.666000, 30.347460, 52.228966>,  <38.426289, 30.462982, 52.446152>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.666000, 30.347460, 52.228966> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.716976, 30.701200, 52.408600>,  <37.747562, 30.913445, 52.516380>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.716976, 30.701200, 52.408600>,  <37.666000, 30.347460, 52.228966>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.716976, 30.701200, 52.408600> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464250, 0.453304, -0.760912,
		-0.876488, -0.111522, 0.468328,
		0.127436, 0.884352, 0.449090,
		37.755207, 30.966507, 52.543327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.079666, 30.691708, 52.156586>,  <37.666000, 30.347460, 52.228966>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.079666, 30.691708, 52.156586> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.357250, 30.973246, 52.217270>,  <37.523800, 31.142168, 52.253681>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.357250, 30.973246, 52.217270>,  <37.079666, 30.691708, 52.156586>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.357250, 30.973246, 52.217270> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499741, 0.622538, -0.602250,
		-0.518339, 0.342121, 0.783759,
		0.693963, 0.703846, 0.151714,
		37.565437, 31.184399, 52.262783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.709435, 31.369921, 52.173119>,  <37.079666, 30.691708, 52.156586>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.709435, 31.369921, 52.173119> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.089207, 31.475784, 52.105545>,  <37.317070, 31.539303, 52.064999>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.089207, 31.475784, 52.105545>,  <36.709435, 31.369921, 52.173119>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.089207, 31.475784, 52.105545> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304735, 0.647123, -0.698834,
		-0.075629, 0.714975, 0.695048,
		0.949430, 0.264657, -0.168937,
		37.374035, 31.555182, 52.054863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.727959, 32.016895, 52.044315>,  <36.709435, 31.369921, 52.173119>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.727959, 32.016895, 52.044315> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.080387, 31.937487, 51.872597>,  <37.291843, 31.889843, 51.769566>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.080387, 31.937487, 51.872597>,  <36.727959, 32.016895, 52.044315>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.080387, 31.937487, 51.872597> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288819, 0.492960, -0.820716,
		0.374555, 0.847102, 0.376998,
		0.881074, -0.198518, -0.429300,
		37.344711, 31.877932, 51.743805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.979374, 32.686333, 51.728420>,  <36.727959, 32.016895, 52.044315>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.979374, 32.686333, 51.728420> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.191067, 32.388821, 51.565102>,  <37.318081, 32.210316, 51.467110>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.191067, 32.388821, 51.565102>,  <36.979374, 32.686333, 51.728420>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.191067, 32.388821, 51.565102> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111781, 0.415899, -0.902515,
		0.841082, 0.523279, 0.136967,
		0.529232, -0.743778, -0.408298,
		37.349838, 32.165688, 51.442612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.463345, 33.033920, 51.075241>,  <36.979374, 32.686333, 51.728420>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.463345, 33.033920, 51.075241> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.456261, 32.641682, 50.997139>,  <37.452011, 32.406338, 50.950279>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.456261, 32.641682, 50.997139>,  <37.463345, 33.033920, 51.075241>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.456261, 32.641682, 50.997139> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250109, 0.193421, -0.948701,
		0.968056, 0.032032, -0.248681,
		-0.017711, -0.980593, -0.195253,
		37.450947, 32.347504, 50.938564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.099621, 33.414497, 51.036934>,  <37.463345, 33.033920, 51.075241>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.099621, 33.414497, 51.036934> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.182606, 33.805687, 51.027691>,  <38.232395, 34.040401, 51.022144>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.182606, 33.805687, 51.027691>,  <38.099621, 33.414497, 51.036934>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.182606, 33.805687, 51.027691> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498812, -0.085433, 0.862489,
		0.841514, -0.190462, -0.505547,
		0.207462, 0.977970, -0.023111,
		38.244843, 34.099079, 51.020756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.734108, 33.440624, 51.159473>,  <38.099621, 33.414497, 51.036934>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.734108, 33.440624, 51.159473> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.613392, 33.815094, 51.231586>,  <38.540962, 34.039776, 51.274853>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.613392, 33.815094, 51.231586>,  <38.734108, 33.440624, 51.159473>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.613392, 33.815094, 51.231586> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459708, -0.022765, 0.887778,
		0.835219, 0.350799, -0.423497,
		-0.301791, 0.936174, 0.180279,
		38.522854, 34.095947, 51.285671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.260113, 33.842819, 51.330704>,  <38.734108, 33.440624, 51.159473>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.260113, 33.842819, 51.330704> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.949902, 34.039288, 51.489349>,  <38.763775, 34.157169, 51.584538>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.949902, 34.039288, 51.489349>,  <39.260113, 33.842819, 51.330704>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.949902, 34.039288, 51.489349> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363997, -0.165404, 0.916596,
		0.515807, 0.855215, -0.050509,
		-0.775532, 0.491171, 0.396612,
		38.717243, 34.186638, 51.608334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.579170, 34.318672, 51.736324>,  <39.260113, 33.842819, 51.330704>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.579170, 34.318672, 51.736324> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.208324, 34.254845, 51.871967>,  <38.985817, 34.216549, 51.953354>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.208324, 34.254845, 51.871967>,  <39.579170, 34.318672, 51.736324>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.208324, 34.254845, 51.871967> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374573, -0.424031, 0.824556,
		0.012217, 0.891479, 0.452897,
		-0.927117, -0.159570, 0.339104,
		38.930191, 34.206974, 51.973698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.779530, 34.542606, 52.324375>,  <39.579170, 34.318672, 51.736324>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.779530, 34.542606, 52.324375> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.429092, 34.352085, 52.354275>,  <39.218830, 34.237770, 52.372215>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.429092, 34.352085, 52.354275>,  <39.779530, 34.542606, 52.324375>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.429092, 34.352085, 52.354275> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267614, -0.351444, 0.897146,
		-0.401045, 0.805990, 0.435365,
		-0.876097, -0.476306, 0.074750,
		39.166264, 34.209194, 52.376701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.561653, 34.694592, 52.979187>,  <39.779530, 34.542606, 52.324375>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.561653, 34.694592, 52.979187> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.361382, 34.364113, 52.875870>,  <39.241219, 34.165825, 52.813881>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.361382, 34.364113, 52.875870>,  <39.561653, 34.694592, 52.979187>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.361382, 34.364113, 52.875870> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123670, -0.363597, 0.923310,
		-0.856755, 0.430336, 0.284221,
		-0.500676, -0.826201, -0.258294,
		39.211178, 34.116253, 52.798382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.278030, 34.600224, 53.573395>,  <39.561653, 34.694592, 52.979187>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.278030, 34.600224, 53.573395> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.210114, 34.259174, 53.375725>,  <39.169365, 34.054546, 53.257122>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.210114, 34.259174, 53.375725>,  <39.278030, 34.600224, 53.573395>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.210114, 34.259174, 53.375725> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072246, -0.510871, 0.856616,
		-0.982829, 0.109741, 0.148338,
		-0.169788, -0.852624, -0.494171,
		39.159176, 34.003387, 53.227474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.868568, 34.214821, 53.995094>,  <39.278030, 34.600224, 53.573395>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.868568, 34.214821, 53.995094> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.056164, 33.943100, 53.769318>,  <39.168720, 33.780067, 53.633854>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.056164, 33.943100, 53.769318>,  <38.868568, 34.214821, 53.995094>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.056164, 33.943100, 53.769318> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199964, -0.540818, 0.817026,
		-0.860268, -0.496046, -0.117803,
		0.468992, -0.679305, -0.564439,
		39.196861, 33.739307, 53.599987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.614178, 33.562775, 54.188866>,  <38.868568, 34.214821, 53.995094>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.614178, 33.562775, 54.188866> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.982189, 33.483543, 54.053627>,  <39.202995, 33.436005, 53.972485>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.982189, 33.483543, 54.053627>,  <38.614178, 33.562775, 54.188866>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.982189, 33.483543, 54.053627> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203569, -0.495654, 0.844326,
		-0.334819, -0.845632, -0.415695,
		0.920030, -0.198074, -0.338099,
		39.258198, 33.424122, 53.952198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<39.398842, 35.203030, 38.270515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.697170, 35.294067, 38.520943>,  <39.876167, 35.348690, 38.671200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.697170, 35.294067, 38.520943>,  <39.398842, 35.203030, 38.270515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.697170, 35.294067, 38.520943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573154, -0.259713, 0.777203,
		0.339486, -0.938482, -0.063250,
		0.745818, 0.227598, 0.626064,
		39.920914, 35.362347, 38.708763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.600628, 34.652714, 38.660099>,  <39.398842, 35.203030, 38.270515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.600628, 34.652714, 38.660099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.648014, 34.999493, 38.853745>,  <39.676445, 35.207561, 38.969933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.648014, 34.999493, 38.853745>,  <39.600628, 34.652714, 38.660099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.648014, 34.999493, 38.853745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610281, -0.321026, 0.724223,
		0.783277, -0.381241, 0.491052,
		0.118463, 0.866947, 0.484117,
		39.683552, 35.259579, 38.998978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.587017, 34.479504, 39.323521>,  <39.600628, 34.652714, 38.660099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.587017, 34.479504, 39.323521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.537933, 34.873405, 39.372845>,  <39.508484, 35.109745, 39.402439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.537933, 34.873405, 39.372845>,  <39.587017, 34.479504, 39.323521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.537933, 34.873405, 39.372845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583109, -0.172078, 0.793961,
		0.803073, 0.025528, 0.595334,
		-0.122712, 0.984753, 0.123305,
		39.501122, 35.168831, 39.409836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.813248, 34.630161, 40.000225>,  <39.587017, 34.479504, 39.323521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.813248, 34.630161, 40.000225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.584778, 34.947601, 39.916370>,  <39.447697, 35.138065, 39.866058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.584778, 34.947601, 39.916370>,  <39.813248, 34.630161, 40.000225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.584778, 34.947601, 39.916370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459173, -0.097225, 0.883010,
		0.680378, 0.600617, 0.419935,
		-0.571179, 0.793603, -0.209637,
		39.413425, 35.185684, 39.853477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.859001, 35.152061, 40.617840>,  <39.813248, 34.630161, 40.000225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.859001, 35.152061, 40.617840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.522041, 35.195045, 40.406628>,  <39.319866, 35.220837, 40.279900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.522041, 35.195045, 40.406628>,  <39.859001, 35.152061, 40.617840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.522041, 35.195045, 40.406628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527555, 0.035110, 0.848795,
		0.109754, 0.993589, 0.027117,
		-0.842401, 0.107464, -0.528026,
		39.269321, 35.227283, 40.248219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.505215, 35.707985, 41.025440>,  <39.859001, 35.152061, 40.617840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.505215, 35.707985, 41.025440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.219479, 35.549778, 40.794518>,  <39.048035, 35.454853, 40.655964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.219479, 35.549778, 40.794518>,  <39.505215, 35.707985, 41.025440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.219479, 35.549778, 40.794518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633951, 0.016404, 0.773199,
		-0.296346, 0.918311, -0.262459,
		-0.714343, -0.395520, -0.577303,
		39.005177, 35.431122, 40.621326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.869614, 36.036655, 41.251839>,  <39.505215, 35.707985, 41.025440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.869614, 36.036655, 41.251839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.729626, 35.723785, 41.045647>,  <38.645634, 35.536064, 40.921932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.729626, 35.723785, 41.045647>,  <38.869614, 36.036655, 41.251839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.729626, 35.723785, 41.045647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721754, -0.125640, 0.680651,
		-0.597153, 0.610260, -0.520567,
		-0.349970, -0.782174, -0.515484,
		38.624634, 35.489132, 40.891003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.163033, 36.110092, 41.264656>,  <38.869614, 36.036655, 41.251839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.163033, 36.110092, 41.264656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.216141, 35.730019, 41.151859>,  <38.248005, 35.501976, 41.084183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.216141, 35.730019, 41.151859>,  <38.163033, 36.110092, 41.264656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.216141, 35.730019, 41.151859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747279, -0.282872, 0.601297,
		-0.651111, 0.130890, -0.747611,
		0.132774, -0.950185, -0.281992,
		38.255974, 35.444962, 41.067261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.519428, 35.730881, 41.210209>,  <38.163033, 36.110092, 41.264656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.519428, 35.730881, 41.210209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.781033, 35.442032, 41.300373>,  <37.937996, 35.268723, 41.354473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.781033, 35.442032, 41.300373>,  <37.519428, 35.730881, 41.210209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.781033, 35.442032, 41.300373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615434, -0.334631, 0.713627,
		-0.439894, -0.605447, -0.663270,
		0.654014, -0.722119, 0.225410,
		37.977238, 35.225395, 41.367996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.053257, 35.353184, 41.372101>,  <37.519428, 35.730881, 41.210209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.053257, 35.353184, 41.372101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.396618, 35.213844, 41.522724>,  <37.602634, 35.130241, 41.613098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.396618, 35.213844, 41.522724>,  <37.053257, 35.353184, 41.372101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.396618, 35.213844, 41.522724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484199, -0.307807, 0.819027,
		-0.169400, -0.885385, -0.432893,
		0.858402, -0.348350, 0.376560,
		37.654137, 35.109341, 41.635693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.854919, 34.795872, 41.694450>,  <37.053257, 35.353184, 41.372101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.854919, 34.795872, 41.694450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.210930, 34.885883, 41.853050>,  <37.424538, 34.939892, 41.948212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.210930, 34.885883, 41.853050>,  <36.854919, 34.795872, 41.694450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.210930, 34.885883, 41.853050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390813, -0.071265, 0.917707,
		0.234770, -0.971742, 0.024518,
		0.890027, 0.225032, 0.396500,
		37.477940, 34.953392, 41.972000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.789547, 34.422951, 42.253376>,  <36.854919, 34.795872, 41.694450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.789547, 34.422951, 42.253376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.068596, 34.694283, 42.345631>,  <37.236027, 34.857082, 42.400982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.068596, 34.694283, 42.345631>,  <36.789547, 34.422951, 42.253376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.068596, 34.694283, 42.345631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393219, 0.093400, 0.914689,
		0.598919, -0.728797, 0.331890,
		0.697621, 0.678330, 0.230638,
		37.277882, 34.897781, 42.414822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.369888, 33.680672, 42.335686>,  <36.789547, 34.422951, 42.253376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.369888, 33.680672, 42.335686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.009224, 33.521351, 42.403049>,  <35.792824, 33.425758, 42.443466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.009224, 33.521351, 42.403049>,  <36.369888, 33.680672, 42.335686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.009224, 33.521351, 42.403049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241612, 0.141011, -0.960073,
		0.358654, -0.906349, -0.223379,
		-0.901660, -0.398305, 0.168410,
		35.738728, 33.401859, 42.453571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.184864, 33.296658, 41.689682>,  <36.369888, 33.680672, 42.335686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.184864, 33.296658, 41.689682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.844269, 33.313145, 41.898781>,  <35.639912, 33.323036, 42.024239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.844269, 33.313145, 41.898781>,  <36.184864, 33.296658, 41.689682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.844269, 33.313145, 41.898781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517801, 0.091171, -0.850629,
		-0.082726, -0.994982, -0.056285,
		-0.851492, 0.041225, 0.522745,
		35.588821, 33.325512, 42.055603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.725815, 32.856190, 41.358624>,  <36.184864, 33.296658, 41.689682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.725815, 32.856190, 41.358624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.465282, 33.081501, 41.561989>,  <35.308964, 33.216686, 41.684010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.465282, 33.081501, 41.561989>,  <35.725815, 32.856190, 41.358624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.465282, 33.081501, 41.561989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504949, 0.178377, -0.844517,
		-0.566388, -0.806783, 0.168245,
		-0.651331, 0.563279, 0.508415,
		35.269882, 33.250484, 41.714512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.086628, 32.593388, 41.188995>,  <35.725815, 32.856190, 41.358624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.086628, 32.593388, 41.188995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.012505, 32.963463, 41.321468>,  <34.968029, 33.185509, 41.400951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.012505, 32.963463, 41.321468>,  <35.086628, 32.593388, 41.188995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.012505, 32.963463, 41.321468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509691, 0.197653, -0.837346,
		-0.840163, -0.323973, 0.434934,
		-0.185311, 0.925189, 0.331187,
		34.956913, 33.241020, 41.420826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.483894, 32.676250, 40.859550>,  <35.086628, 32.593388, 41.188995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.483894, 32.676250, 40.859550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.573746, 33.049221, 40.972778>,  <34.627655, 33.273003, 41.040714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.573746, 33.049221, 40.972778>,  <34.483894, 32.676250, 40.859550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.573746, 33.049221, 40.972778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382629, 0.351559, -0.854401,
		-0.896179, 0.083614, 0.435743,
		0.224629, 0.932424, 0.283067,
		34.641136, 33.328949, 41.057697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.820763, 33.100853, 40.804100>,  <34.483894, 32.676250, 40.859550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.820763, 33.100853, 40.804100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.151875, 33.321888, 40.765270>,  <34.350544, 33.454510, 40.741970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.151875, 33.321888, 40.765270>,  <33.820763, 33.100853, 40.804100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.151875, 33.321888, 40.765270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334286, 0.346811, -0.876342,
		-0.450587, 0.757872, 0.471806,
		0.827782, 0.552587, -0.097078,
		34.400208, 33.487663, 40.736145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.669304, 33.858063, 40.555283>,  <33.820763, 33.100853, 40.804100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.669304, 33.858063, 40.555283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.041309, 33.772446, 40.435780>,  <34.264515, 33.721073, 40.364079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.041309, 33.772446, 40.435780>,  <33.669304, 33.858063, 40.555283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.041309, 33.772446, 40.435780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287771, 0.081524, -0.954223,
		0.228602, 0.973416, 0.014223,
		0.930016, -0.214045, -0.298757,
		34.320312, 33.708233, 40.346153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.719791, 34.208050, 39.924686>,  <33.669304, 33.858063, 40.555283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.719791, 34.208050, 39.924686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.041103, 33.970886, 39.902065>,  <34.233891, 33.828587, 39.888493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.041103, 33.970886, 39.902065>,  <33.719791, 34.208050, 39.924686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.041103, 33.970886, 39.902065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080501, -0.013997, -0.996656,
		0.590136, 0.805147, -0.058973,
		0.803280, -0.592910, -0.056555,
		34.282089, 33.793015, 39.885098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.066662, 34.506039, 39.362175>,  <33.719791, 34.208050, 39.924686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.066662, 34.506039, 39.362175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.174599, 34.122940, 39.401985>,  <34.239361, 33.893082, 39.425873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.174599, 34.122940, 39.401985>,  <34.066662, 34.506039, 39.362175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.174599, 34.122940, 39.401985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090565, -0.128145, -0.987612,
		0.958636, 0.257485, -0.121317,
		0.269841, -0.957748, 0.099526,
		34.255550, 33.835617, 39.431843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.393337, 34.448105, 38.831749>,  <34.066662, 34.506039, 39.362175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.393337, 34.448105, 38.831749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.298935, 34.071251, 38.926983>,  <34.242294, 33.845139, 38.984123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.298935, 34.071251, 38.926983>,  <34.393337, 34.448105, 38.831749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.298935, 34.071251, 38.926983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191121, -0.195216, -0.961958,
		0.952772, -0.272531, -0.133989,
		-0.236006, -0.942134, 0.238082,
		34.228134, 33.788612, 38.998409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.584171, 34.127033, 38.300323>,  <34.393337, 34.448105, 38.831749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.584171, 34.127033, 38.300323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.352577, 33.842224, 38.459217>,  <34.213619, 33.671337, 38.554554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.352577, 33.842224, 38.459217>,  <34.584171, 34.127033, 38.300323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.352577, 33.842224, 38.459217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432259, -0.145042, -0.890009,
		0.691325, -0.687010, -0.223802,
		-0.578984, -0.712025, 0.397237,
		34.178883, 33.628616, 38.578388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.777477, 33.553440, 37.980972>,  <34.584171, 34.127033, 38.300323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.777477, 33.553440, 37.980972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.406021, 33.482464, 38.111294>,  <34.183147, 33.439877, 38.189487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.406021, 33.482464, 38.111294>,  <34.777477, 33.553440, 37.980972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.406021, 33.482464, 38.111294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296346, -0.173514, -0.939187,
		0.223186, -0.968714, 0.108546,
		-0.928637, -0.177446, 0.325800,
		34.127430, 33.429230, 38.209034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.601154, 32.893425, 37.652050>,  <34.777477, 33.553440, 37.980972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.601154, 32.893425, 37.652050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.273647, 33.106270, 37.738289>,  <34.077145, 33.233974, 37.790031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.273647, 33.106270, 37.738289>,  <34.601154, 32.893425, 37.652050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.273647, 33.106270, 37.738289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168077, 0.136925, -0.976218,
		-0.548976, -0.835530, -0.022674,
		-0.818764, 0.532110, 0.215602,
		34.028019, 33.265903, 37.802971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.102196, 32.411152, 37.782658>,  <34.601154, 32.893425, 37.652050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.102196, 32.411152, 37.782658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.417542, 32.656483, 37.801849>,  <35.606750, 32.803680, 37.813362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.417542, 32.656483, 37.801849>,  <35.102196, 32.411152, 37.782658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.417542, 32.656483, 37.801849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028103, -0.113808, 0.993105,
		0.614561, -0.781584, -0.106959,
		0.788368, 0.613330, 0.047977,
		35.654053, 32.840481, 37.816242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.736443, 32.526863, 37.458466>,  <35.102196, 32.411152, 37.782658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.736443, 32.526863, 37.458466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.721302, 32.912334, 37.352718>,  <35.712215, 33.143616, 37.289272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.721302, 32.912334, 37.352718>,  <35.736443, 32.526863, 37.458466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.721302, 32.912334, 37.352718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021473, 0.263710, 0.964363,
		0.999052, 0.042184, 0.010710,
		-0.037856, 0.963679, -0.264366,
		35.709946, 33.201439, 37.273407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.744156, 31.842337, 37.732399>,  <35.736443, 32.526863, 37.458466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.744156, 31.842337, 37.732399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.774563, 31.516994, 37.501686>,  <35.792809, 31.321789, 37.363258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.774563, 31.516994, 37.501686>,  <35.744156, 31.842337, 37.732399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.774563, 31.516994, 37.501686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429702, -0.495260, 0.755032,
		-0.899765, -0.305242, 0.311850,
		0.076021, -0.813354, -0.576781,
		35.797371, 31.272987, 37.328651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.528477, 31.332893, 38.066784>,  <35.744156, 31.842337, 37.732399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.528477, 31.332893, 38.066784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.786095, 31.154591, 37.818104>,  <35.940666, 31.047609, 37.668896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.786095, 31.154591, 37.818104>,  <35.528477, 31.332893, 38.066784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.786095, 31.154591, 37.818104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235584, -0.657621, 0.715566,
		-0.727811, -0.607317, -0.318523,
		0.644044, -0.445758, -0.621698,
		35.979309, 31.020863, 37.631596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.477539, 30.582394, 38.050350>,  <35.528477, 31.332893, 38.066784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.477539, 30.582394, 38.050350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.852757, 30.701872, 37.980091>,  <36.077888, 30.773558, 37.937935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.852757, 30.701872, 37.980091>,  <35.477539, 30.582394, 38.050350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.852757, 30.701872, 37.980091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320801, -0.557009, 0.766047,
		0.130978, -0.774934, -0.618321,
		0.938046, 0.298693, -0.175644,
		36.134171, 30.791479, 37.927399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.917309, 30.045954, 38.291809>,  <35.477539, 30.582394, 38.050350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.917309, 30.045954, 38.291809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.135075, 30.381302, 38.280869>,  <36.265736, 30.582510, 38.274303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.135075, 30.381302, 38.280869>,  <35.917309, 30.045954, 38.291809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.135075, 30.381302, 38.280869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458067, -0.269823, 0.846977,
		0.702701, -0.473634, -0.530925,
		0.544413, 0.838371, -0.027351,
		36.298397, 30.632812, 38.272663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.564793, 29.792576, 38.466595>,  <35.917309, 30.045954, 38.291809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.564793, 29.792576, 38.466595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.576122, 30.189117, 38.517849>,  <36.582920, 30.427042, 38.548599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.576122, 30.189117, 38.517849>,  <36.564793, 29.792576, 38.466595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.576122, 30.189117, 38.517849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443744, -0.127332, 0.887061,
		0.895706, 0.031732, -0.443514,
		0.028325, 0.991352, 0.128133,
		36.584621, 30.486523, 38.556290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.312904, 29.986870, 38.671795>,  <36.564793, 29.792576, 38.466595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.312904, 29.986870, 38.671795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.049694, 30.258968, 38.800957>,  <36.891769, 30.422228, 38.878452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.049694, 30.258968, 38.800957>,  <37.312904, 29.986870, 38.671795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.049694, 30.258968, 38.800957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448333, 0.009406, 0.893817,
		0.604979, 0.732923, -0.311166,
		-0.658026, 0.680247, 0.322903,
		36.852287, 30.463043, 38.897827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.708740, 30.487000, 38.970108>,  <37.312904, 29.986870, 38.671795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.708740, 30.487000, 38.970108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.337105, 30.492769, 39.117939>,  <37.114124, 30.496231, 39.206638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.337105, 30.492769, 39.117939>,  <37.708740, 30.487000, 38.970108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.337105, 30.492769, 39.117939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369164, 0.097253, 0.924262,
		-0.022611, 0.995155, -0.095681,
		-0.929089, 0.014423, 0.369575,
		37.058376, 30.497097, 39.228813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.794197, 31.015461, 39.422165>,  <37.708740, 30.487000, 38.970108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.794197, 31.015461, 39.422165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.467724, 30.818560, 39.543182>,  <37.271839, 30.700418, 39.615795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.467724, 30.818560, 39.543182>,  <37.794197, 31.015461, 39.422165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.467724, 30.818560, 39.543182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234822, 0.195834, 0.952107,
		-0.527927, 0.848137, -0.044244,
		-0.816181, -0.492253, 0.302548,
		37.222870, 30.670883, 39.633945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.479828, 31.539518, 39.936996>,  <37.794197, 31.015461, 39.422165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.479828, 31.539518, 39.936996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.293259, 31.188627, 39.982460>,  <37.181316, 30.978092, 40.009739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.293259, 31.188627, 39.982460>,  <37.479828, 31.539518, 39.936996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.293259, 31.188627, 39.982460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005837, 0.131543, 0.991293,
		-0.884544, 0.461697, -0.066474,
		-0.466421, -0.877230, 0.113661,
		37.153332, 30.925459, 40.016560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.064655, 31.619019, 40.491096>,  <37.479828, 31.539518, 39.936996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.064655, 31.619019, 40.491096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.118652, 31.224676, 40.451359>,  <37.151051, 30.988071, 40.427517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.118652, 31.224676, 40.451359>,  <37.064655, 31.619019, 40.491096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.118652, 31.224676, 40.451359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045307, -0.094013, 0.994539,
		-0.989810, -0.138757, 0.031975,
		0.134993, -0.985854, -0.099342,
		37.159149, 30.928921, 40.421555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.550766, 31.437449, 40.972492>,  <37.064655, 31.619019, 40.491096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.550766, 31.437449, 40.972492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.815506, 31.142355, 40.919273>,  <36.974350, 30.965298, 40.887341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.815506, 31.142355, 40.919273>,  <36.550766, 31.437449, 40.972492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.815506, 31.142355, 40.919273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229755, 0.030686, 0.972765,
		-0.713560, -0.674392, 0.189807,
		0.661849, -0.737736, -0.133049,
		37.014061, 30.921034, 40.879360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.409279, 30.903898, 41.498245>,  <36.550766, 31.437449, 40.972492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.409279, 30.903898, 41.498245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.788528, 30.866802, 41.376621>,  <37.016079, 30.844545, 41.303646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.788528, 30.866802, 41.376621>,  <36.409279, 30.903898, 41.498245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.788528, 30.866802, 41.376621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299747, -0.057696, 0.952272,
		-0.105856, -0.994017, -0.026905,
		0.948128, -0.092739, -0.304062,
		37.072968, 30.838982, 41.285404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.666164, 30.277060, 41.953907>,  <36.409279, 30.903898, 41.498245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.666164, 30.277060, 41.953907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.985970, 30.464457, 41.803547>,  <37.177853, 30.576895, 41.713329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.985970, 30.464457, 41.803547>,  <36.666164, 30.277060, 41.953907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.985970, 30.464457, 41.803547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504401, -0.183866, 0.843666,
		0.326138, -0.864122, -0.383311,
		0.799508, 0.468494, -0.375899,
		37.225822, 30.605005, 41.690777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.233379, 29.830496, 42.076107>,  <36.666164, 30.277060, 41.953907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.233379, 29.830496, 42.076107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.422104, 30.179316, 42.024071>,  <37.535339, 30.388607, 41.992851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.422104, 30.179316, 42.024071>,  <37.233379, 29.830496, 42.076107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.422104, 30.179316, 42.024071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496232, -0.140684, 0.856716,
		0.728797, -0.468765, -0.499114,
		0.471815, 0.872048, -0.130086,
		37.563648, 30.440929, 41.985046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.898441, 29.619925, 42.119160>,  <37.233379, 29.830496, 42.076107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.898441, 29.619925, 42.119160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.883621, 30.014099, 42.185543>,  <37.874729, 30.250605, 42.225372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.883621, 30.014099, 42.185543>,  <37.898441, 29.619925, 42.119160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.883621, 30.014099, 42.185543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645796, -0.103126, 0.756513,
		0.762610, 0.135200, -0.632571,
		-0.037046, 0.985437, 0.165957,
		37.872509, 30.309731, 42.235329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.635525, 29.914511, 42.120739>,  <37.898441, 29.619925, 42.119160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.635525, 29.914511, 42.120739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.409531, 30.181620, 42.314590>,  <38.273933, 30.341885, 42.430901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.409531, 30.181620, 42.314590>,  <38.635525, 29.914511, 42.120739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.409531, 30.181620, 42.314590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509108, -0.180081, 0.841653,
		0.649307, 0.722253, -0.238226,
		-0.564986, 0.667773, 0.484633,
		38.240036, 30.381952, 42.459980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.085506, 30.138283, 42.658672>,  <38.635525, 29.914511, 42.120739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.085506, 30.138283, 42.658672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.728733, 30.281044, 42.769726>,  <38.514671, 30.366701, 42.836357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.728733, 30.281044, 42.769726>,  <39.085506, 30.138283, 42.658672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.728733, 30.281044, 42.769726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293279, -0.010717, 0.955967,
		0.344164, 0.934079, -0.095114,
		-0.891930, 0.356904, 0.277635,
		38.461155, 30.388115, 42.853016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.248051, 30.848904, 43.012344>,  <39.085506, 30.138283, 42.658672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.248051, 30.848904, 43.012344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.918385, 30.654846, 43.129230>,  <38.720585, 30.538412, 43.199364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.918385, 30.654846, 43.129230>,  <39.248051, 30.848904, 43.012344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.918385, 30.654846, 43.129230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327556, 0.012594, 0.944748,
		-0.462019, 0.874344, 0.148532,
		-0.824163, -0.485144, 0.292215,
		38.671135, 30.509302, 43.216896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.284454, 31.034184, 43.693848>,  <39.248051, 30.848904, 43.012344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.284454, 31.034184, 43.693848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.005054, 30.749340, 43.665577>,  <38.837414, 30.578434, 43.648613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.005054, 30.749340, 43.665577>,  <39.284454, 31.034184, 43.693848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.005054, 30.749340, 43.665577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084225, -0.179891, 0.980074,
		-0.710635, 0.678630, 0.185631,
		-0.698502, -0.712110, -0.070679,
		38.795506, 30.535707, 43.644375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.718056, 31.178909, 44.200127>,  <39.284454, 31.034184, 43.693848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.718056, 31.178909, 44.200127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.752296, 30.785265, 44.137901>,  <38.772839, 30.549078, 44.100567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.752296, 30.785265, 44.137901>,  <38.718056, 31.178909, 44.200127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.752296, 30.785265, 44.137901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180665, -0.138212, 0.973785,
		-0.979813, -0.111459, 0.165963,
		0.085599, -0.984111, -0.155559,
		38.777977, 30.490032, 44.091232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.426373, 30.928591, 44.832699>,  <38.718056, 31.178909, 44.200127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.426373, 30.928591, 44.832699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.597607, 30.604958, 44.671638>,  <38.700348, 30.410778, 44.575005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.597607, 30.604958, 44.671638>,  <38.426373, 30.928591, 44.832699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.597607, 30.604958, 44.671638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176436, -0.362140, 0.915273,
		-0.886348, -0.462858, -0.012276,
		0.428087, -0.809084, -0.402646,
		38.726032, 30.362232, 44.550846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.134098, 30.429941, 45.173756>,  <38.426373, 30.928591, 44.832699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.134098, 30.429941, 45.173756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.479385, 30.276861, 45.042061>,  <38.686558, 30.185013, 44.963043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.479385, 30.276861, 45.042061>,  <38.134098, 30.429941, 45.173756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.479385, 30.276861, 45.042061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224037, -0.294025, 0.929170,
		-0.452398, -0.875836, -0.168068,
		0.863217, -0.382701, -0.329236,
		38.738350, 30.162050, 44.943291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.093121, 29.680592, 45.370705>,  <38.134098, 30.429941, 45.173756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.093121, 29.680592, 45.370705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.480591, 29.760719, 45.311993>,  <38.713074, 29.808796, 45.276764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.480591, 29.760719, 45.311993>,  <38.093121, 29.680592, 45.370705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.480591, 29.760719, 45.311993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214997, -0.380652, 0.899378,
		0.124293, -0.902760, -0.411796,
		0.968673, 0.200321, -0.146779,
		38.771194, 29.820816, 45.267960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.315643, 29.033739, 45.487278>,  <38.093121, 29.680592, 45.370705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.315643, 29.033739, 45.487278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.626106, 29.284967, 45.509598>,  <38.812382, 29.435703, 45.522991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.626106, 29.284967, 45.509598>,  <38.315643, 29.033739, 45.487278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.626106, 29.284967, 45.509598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308760, -0.455730, 0.834852,
		0.549776, -0.630744, -0.547639,
		0.776154, 0.628070, 0.055801,
		38.858952, 29.473389, 45.526337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.889145, 28.618876, 45.675789>,  <38.315643, 29.033739, 45.487278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.889145, 28.618876, 45.675789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.011341, 28.988934, 45.765930>,  <39.084660, 29.210968, 45.820015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.011341, 28.988934, 45.765930>,  <38.889145, 28.618876, 45.675789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.011341, 28.988934, 45.765930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418062, -0.342952, 0.841195,
		0.855511, -0.162767, -0.491537,
		0.305492, 0.925144, 0.225352,
		39.102989, 29.266478, 45.833534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.591553, 28.608755, 45.846016>,  <38.889145, 28.618876, 45.675789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.591553, 28.608755, 45.846016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.422340, 28.919256, 46.032982>,  <39.320812, 29.105556, 46.145161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.422340, 28.919256, 46.032982>,  <39.591553, 28.608755, 45.846016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.422340, 28.919256, 46.032982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257859, -0.391390, 0.883359,
		0.868651, 0.494216, -0.034594,
		-0.423031, 0.776251, 0.467419,
		39.295433, 29.152132, 46.173206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.992897, 28.776093, 46.515556>,  <39.591553, 28.608755, 45.846016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.992897, 28.776093, 46.515556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.647026, 28.963028, 46.589230>,  <39.439503, 29.075190, 46.633434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.647026, 28.963028, 46.589230>,  <39.992897, 28.776093, 46.515556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.647026, 28.963028, 46.589230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017292, -0.338746, 0.940719,
		0.502022, 0.816607, 0.284826,
		-0.864682, 0.467337, 0.184179,
		39.387623, 29.103230, 46.644482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.543877, 29.392538, 46.626022>,  <39.992897, 28.776093, 46.515556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.543877, 29.392538, 46.626022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.923775, 29.465818, 46.727543>,  <41.151714, 29.509787, 46.788456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.923775, 29.465818, 46.727543>,  <40.543877, 29.392538, 46.626022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.923775, 29.465818, 46.727543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201513, 0.262591, -0.943630,
		-0.239520, 0.947356, 0.212478,
		0.949749, 0.183201, 0.253800,
		41.208698, 29.520779, 46.803684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.694279, 30.037899, 46.323750>,  <40.543877, 29.392538, 46.626022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.694279, 30.037899, 46.323750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.048389, 29.863035, 46.387222>,  <41.260857, 29.758118, 46.425304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.048389, 29.863035, 46.387222>,  <40.694279, 30.037899, 46.323750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.048389, 29.863035, 46.387222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247345, 0.153642, -0.956669,
		0.393837, 0.886163, 0.244145,
		0.885275, -0.437160, 0.158678,
		41.313972, 29.731888, 46.434826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.234272, 30.463863, 45.986561>,  <40.694279, 30.037899, 46.323750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.234272, 30.463863, 45.986561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.367207, 30.086861, 46.000599>,  <41.446968, 29.860659, 46.009022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.367207, 30.086861, 46.000599>,  <41.234272, 30.463863, 45.986561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.367207, 30.086861, 46.000599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256689, 0.054580, -0.964952,
		0.907560, 0.329694, 0.260071,
		0.332334, -0.942509, 0.035094,
		41.466908, 29.804108, 46.011127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.827812, 30.416763, 45.622620>,  <41.234272, 30.463863, 45.986561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.827812, 30.416763, 45.622620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.750053, 30.024706, 45.638271>,  <41.703400, 29.789471, 45.647663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.750053, 30.024706, 45.638271>,  <41.827812, 30.416763, 45.622620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.750053, 30.024706, 45.638271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197155, -0.078121, -0.977255,
		0.960907, -0.182256, 0.208426,
		-0.194393, -0.980143, 0.039134,
		41.691734, 29.730663, 45.650013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.407375, 30.177820, 45.355827>,  <41.827812, 30.416763, 45.622620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.407375, 30.177820, 45.355827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.108631, 29.913025, 45.330601>,  <41.929386, 29.754148, 45.315464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.108631, 29.913025, 45.330601>,  <42.407375, 30.177820, 45.355827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.108631, 29.913025, 45.330601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175964, -0.105282, -0.978750,
		0.641280, -0.742084, 0.195117,
		-0.746857, -0.661987, -0.063065,
		41.884575, 29.714428, 45.311680>
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
