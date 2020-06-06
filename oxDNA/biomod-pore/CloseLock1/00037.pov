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
	<23.993124, 35.206017, 35.282383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.314987, 35.122742, 35.059967>,  <24.508104, 35.072777, 34.926517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.314987, 35.122742, 35.059967>,  <23.993124, 35.206017, 35.282383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.314987, 35.122742, 35.059967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593579, 0.260343, 0.761502,
		-0.013772, -0.942804, 0.333062,
		0.804658, -0.208186, -0.556043,
		24.556385, 35.060287, 34.893154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.502478, 34.702492, 35.688850>,  <23.993124, 35.206017, 35.282383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.502478, 34.702492, 35.688850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.655827, 34.961601, 35.425514>,  <24.747837, 35.117069, 35.267513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.655827, 34.961601, 35.425514>,  <24.502478, 34.702492, 35.688850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.655827, 34.961601, 35.425514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548123, 0.414127, 0.726677,
		0.743361, -0.639439, -0.196296,
		0.383374, 0.647778, -0.658337,
		24.770840, 35.155933, 35.228012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.287584, 34.719967, 35.792049>,  <24.502478, 34.702492, 35.688850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.287584, 34.719967, 35.792049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.123024, 35.046364, 35.629620>,  <25.024288, 35.242203, 35.532162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.123024, 35.046364, 35.629620>,  <25.287584, 34.719967, 35.792049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.123024, 35.046364, 35.629620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468505, 0.571484, 0.673728,
		0.781826, 0.086925, -0.617408,
		-0.411402, 0.815997, -0.406076,
		24.999603, 35.291164, 35.507797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.772120, 35.273975, 35.468204>,  <25.287584, 34.719967, 35.792049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.772120, 35.273975, 35.468204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.460787, 35.420986, 35.671822>,  <25.273987, 35.509193, 35.793991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.460787, 35.420986, 35.671822>,  <25.772120, 35.273975, 35.468204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.460787, 35.420986, 35.671822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627318, 0.488640, 0.606385,
		-0.025873, 0.791299, -0.610882,
		-0.778333, 0.367528, 0.509039,
		25.227287, 35.531246, 35.824532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.467009, 35.046318, 35.630157>,  <25.772120, 35.273975, 35.468204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.467009, 35.046318, 35.630157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.450621, 35.302029, 35.323002>,  <26.440788, 35.455456, 35.138710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.450621, 35.302029, 35.323002>,  <26.467009, 35.046318, 35.630157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.450621, 35.302029, 35.323002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.985267, -0.153565, -0.075274,
		-0.166041, 0.753492, 0.636145,
		-0.040971, 0.639271, -0.767889,
		26.438330, 35.493809, 35.092636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.899069, 34.472919, 35.791912>,  <26.467009, 35.046318, 35.630157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.899069, 34.472919, 35.791912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.259529, 34.553139, 35.638180>,  <27.475805, 34.601269, 35.545940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.259529, 34.553139, 35.638180>,  <26.899069, 34.472919, 35.791912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.259529, 34.553139, 35.638180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311212, -0.916461, 0.251490,
		-0.301791, -0.346239, -0.888280,
		0.901149, 0.200546, -0.384333,
		27.529873, 34.613304, 35.522881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.173725, 33.842430, 35.600304>,  <26.899069, 34.472919, 35.791912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.173725, 33.842430, 35.600304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.501501, 34.071697, 35.600876>,  <27.698166, 34.209255, 35.601219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.501501, 34.071697, 35.600876>,  <27.173725, 33.842430, 35.600304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.501501, 34.071697, 35.600876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562623, -0.804841, 0.188909,
		0.109426, -0.153995, -0.981994,
		0.819439, 0.573164, 0.001430,
		27.747334, 34.243645, 35.601303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.659409, 33.519432, 35.108688>,  <27.173725, 33.842430, 35.600304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.659409, 33.519432, 35.108688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.875132, 33.760750, 35.343700>,  <28.004566, 33.905540, 35.484707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.875132, 33.760750, 35.343700>,  <27.659409, 33.519432, 35.108688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.875132, 33.760750, 35.343700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686388, -0.719117, 0.108356,
		0.487870, 0.344834, -0.801918,
		0.539308, 0.603290, 0.587526,
		28.036924, 33.941738, 35.519958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.184805, 33.492958, 34.825161>,  <27.659409, 33.519432, 35.108688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.184805, 33.492958, 34.825161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.290686, 33.604099, 35.194534>,  <28.354214, 33.670784, 35.416157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.290686, 33.604099, 35.194534>,  <28.184805, 33.492958, 34.825161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.290686, 33.604099, 35.194534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406029, -0.900685, 0.154620,
		0.874684, 0.334013, -0.351232,
		0.264704, 0.277854, 0.923433,
		28.370096, 33.687454, 35.471565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.830008, 33.373146, 34.865978>,  <28.184805, 33.492958, 34.825161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.830008, 33.373146, 34.865978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.727512, 33.401562, 35.251579>,  <28.666016, 33.418610, 35.482941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.727512, 33.401562, 35.251579>,  <28.830008, 33.373146, 34.865978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.727512, 33.401562, 35.251579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485263, -0.853062, 0.191848,
		0.835980, 0.516952, 0.184115,
		-0.256238, 0.071037, 0.964000,
		28.650640, 33.422874, 35.540779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.486561, 33.314926, 35.287243>,  <28.830008, 33.373146, 34.865978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.486561, 33.314926, 35.287243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.158808, 33.188759, 35.478710>,  <28.962156, 33.113060, 35.593590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.158808, 33.188759, 35.478710>,  <29.486561, 33.314926, 35.287243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.158808, 33.188759, 35.478710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480650, -0.833064, 0.273824,
		0.312393, 0.454439, 0.834204,
		-0.819382, -0.315419, 0.478669,
		28.912992, 33.094131, 35.622311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.821278, 33.012703, 35.829395>,  <29.486561, 33.314926, 35.287243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.821278, 33.012703, 35.829395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.440552, 32.890148, 35.824089>,  <29.212116, 32.816616, 35.820908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.440552, 32.890148, 35.824089>,  <29.821278, 33.012703, 35.829395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.440552, 32.890148, 35.824089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305760, -0.951434, 0.035832,
		-0.023597, 0.030051, 0.999270,
		-0.951816, -0.306383, -0.013262,
		29.155006, 32.798233, 35.820110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.802263, 32.495735, 36.327011>,  <29.821278, 33.012703, 35.829395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.802263, 32.495735, 36.327011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.482616, 32.439751, 36.093147>,  <29.290829, 32.406158, 35.952831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.482616, 32.439751, 36.093147>,  <29.802263, 32.495735, 36.327011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.482616, 32.439751, 36.093147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026237, -0.979714, 0.198676,
		-0.600603, 0.143426, 0.786578,
		-0.799117, -0.139963, -0.584656,
		29.242882, 32.397762, 35.917751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.420370, 31.951067, 36.703106>,  <29.802263, 32.495735, 36.327011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.420370, 31.951067, 36.703106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.284124, 31.955360, 36.327049>,  <29.202377, 31.957935, 36.101414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.284124, 31.955360, 36.327049>,  <29.420370, 31.951067, 36.703106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.284124, 31.955360, 36.327049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214492, -0.974453, 0.066587,
		-0.915410, 0.224333, 0.334215,
		-0.340615, 0.010732, -0.940142,
		29.181940, 31.958580, 36.045006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.743961, 31.610584, 36.632446>,  <29.420370, 31.951067, 36.703106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.743961, 31.610584, 36.632446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.857306, 31.567495, 36.251270>,  <28.925312, 31.541643, 36.022564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.857306, 31.567495, 36.251270>,  <28.743961, 31.610584, 36.632446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.857306, 31.567495, 36.251270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165767, -0.984216, 0.061965,
		-0.944578, 0.140409, -0.296743,
		0.283359, -0.107721, -0.952945,
		28.942314, 31.535179, 35.965385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.151394, 31.211355, 36.350285>,  <28.743961, 31.610584, 36.632446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.151394, 31.211355, 36.350285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.454481, 31.162628, 36.093842>,  <28.636333, 31.133392, 35.939976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.454481, 31.162628, 36.093842>,  <28.151394, 31.211355, 36.350285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.454481, 31.162628, 36.093842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031717, -0.988136, 0.150273,
		-0.651808, -0.093531, -0.752594,
		0.757720, -0.121819, -0.641109,
		28.681797, 31.126081, 35.901508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.940767, 30.823009, 35.827579>,  <28.151394, 31.211355, 36.350285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.940767, 30.823009, 35.827579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.334539, 30.775095, 35.776127>,  <28.570803, 30.746346, 35.745255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.334539, 30.775095, 35.776127>,  <27.940767, 30.823009, 35.827579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.334539, 30.775095, 35.776127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127473, -0.990411, -0.053259,
		-0.121020, 0.068827, -0.990261,
		0.984431, -0.119786, -0.128634,
		28.629869, 30.739159, 35.737537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.022617, 30.445976, 35.220116>,  <27.940767, 30.823009, 35.827579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.022617, 30.445976, 35.220116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.346294, 30.416698, 35.453304>,  <28.540501, 30.399132, 35.593216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.346294, 30.416698, 35.453304>,  <28.022617, 30.445976, 35.220116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.346294, 30.416698, 35.453304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127286, -0.990485, 0.052322,
		0.573592, -0.116542, -0.810809,
		0.809192, -0.073193, 0.582969,
		28.589052, 30.394741, 35.628193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.171467, 29.798565, 35.029564>,  <28.022617, 30.445976, 35.220116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.171467, 29.798565, 35.029564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.401953, 29.851603, 35.352150>,  <28.540245, 29.883425, 35.545704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.401953, 29.851603, 35.352150>,  <28.171467, 29.798565, 35.029564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.401953, 29.851603, 35.352150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080263, -0.972802, 0.217287,
		0.813346, -0.189934, -0.549903,
		0.576217, 0.132593, 0.806470,
		28.574818, 29.891380, 35.594090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.871414, 29.434557, 34.916599>,  <28.171467, 29.798565, 35.029564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.871414, 29.434557, 34.916599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.794359, 29.467981, 35.307682>,  <28.748127, 29.488035, 35.542332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.794359, 29.467981, 35.307682>,  <28.871414, 29.434557, 34.916599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.794359, 29.467981, 35.307682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159442, -0.980462, 0.115209,
		0.968230, 0.178081, 0.175551,
		-0.192638, 0.083559, 0.977706,
		28.736568, 29.493050, 35.600994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.401716, 28.984316, 35.263966>,  <28.871414, 29.434557, 34.916599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.401716, 28.984316, 35.263966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.124775, 29.038004, 35.547550>,  <28.958611, 29.070217, 35.717701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.124775, 29.038004, 35.547550>,  <29.401716, 28.984316, 35.263966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.124775, 29.038004, 35.547550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069472, -0.965583, 0.250645,
		0.718205, 0.222789, 0.659202,
		-0.692355, 0.134219, 0.708964,
		28.917068, 29.078270, 35.760239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.574757, 28.516272, 35.813198>,  <29.401716, 28.984316, 35.263966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.574757, 28.516272, 35.813198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.182962, 28.586481, 35.852802>,  <28.947886, 28.628607, 35.876564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.182962, 28.586481, 35.852802>,  <29.574757, 28.516272, 35.813198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.182962, 28.586481, 35.852802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153099, -0.967599, 0.200782,
		0.131047, 0.181504, 0.974620,
		-0.979483, 0.175525, 0.099013,
		28.889118, 28.639139, 35.882507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.484373, 28.336021, 36.481281>,  <29.574757, 28.516272, 35.813198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.484373, 28.336021, 36.481281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.129559, 28.329334, 36.296722>,  <28.916670, 28.325323, 36.185986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.129559, 28.329334, 36.296722>,  <29.484373, 28.336021, 36.481281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.129559, 28.329334, 36.296722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157342, -0.928580, 0.336130,
		-0.434065, 0.370757, 0.821052,
		-0.887035, -0.016716, -0.461399,
		28.863447, 28.324320, 36.158302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.119305, 28.125763, 36.965096>,  <29.484373, 28.336021, 36.481281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.119305, 28.125763, 36.965096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.908710, 28.056168, 36.632221>,  <28.782354, 28.014410, 36.432495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.908710, 28.056168, 36.632221>,  <29.119305, 28.125763, 36.965096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.908710, 28.056168, 36.632221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245440, -0.906054, 0.344711,
		-0.813985, 0.385738, 0.434321,
		-0.526486, -0.173989, -0.832190,
		28.750765, 28.003971, 36.382565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.576180, 27.650211, 37.215591>,  <29.119305, 28.125763, 36.965096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.576180, 27.650211, 37.215591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.584837, 27.604565, 36.818298>,  <28.590031, 27.577177, 36.579922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.584837, 27.604565, 36.818298>,  <28.576180, 27.650211, 37.215591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.584837, 27.604565, 36.818298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286324, -0.952559, 0.103204,
		-0.957888, 0.282152, -0.053291,
		0.021644, -0.114116, -0.993232,
		28.591330, 27.570330, 36.520329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.095093, 27.152617, 37.109329>,  <28.576180, 27.650211, 37.215591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.095093, 27.152617, 37.109329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.316307, 27.156841, 36.776093>,  <28.449036, 27.159376, 36.576149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.316307, 27.156841, 36.776093>,  <28.095093, 27.152617, 37.109329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.316307, 27.156841, 36.776093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023361, -0.999723, 0.002834,
		-0.832831, -0.021029, -0.553127,
		0.553033, 0.010562, -0.833092,
		28.482218, 27.160009, 36.526165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.782732, 26.699568, 36.544216>,  <28.095093, 27.152617, 37.109329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.782732, 26.699568, 36.544216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.180094, 26.738386, 36.519794>,  <28.418510, 26.761677, 36.505142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.180094, 26.738386, 36.519794>,  <27.782732, 26.699568, 36.544216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.180094, 26.738386, 36.519794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101176, -0.992499, 0.068628,
		-0.053938, -0.074353, -0.995772,
		0.993405, 0.097047, -0.061056,
		28.478115, 26.767500, 36.501476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.072676, 26.276266, 35.949596>,  <27.782732, 26.699568, 36.544216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.072676, 26.276266, 35.949596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.350237, 26.281414, 36.237579>,  <28.516773, 26.284502, 36.410370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.350237, 26.281414, 36.237579>,  <28.072676, 26.276266, 35.949596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.350237, 26.281414, 36.237579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016665, -0.999859, 0.001810,
		0.719877, 0.010742, -0.694018,
		0.693901, 0.012869, 0.719955,
		28.558407, 26.285275, 36.453568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.051064, 26.086288, 35.153858>,  <28.072676, 26.276266, 35.949596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.051064, 26.086288, 35.153858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.899759, 26.454454, 35.193356>,  <27.808977, 26.675354, 35.217056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.899759, 26.454454, 35.193356>,  <28.051064, 26.086288, 35.153858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.899759, 26.454454, 35.193356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499794, -0.113272, -0.858706,
		-0.779182, -0.374167, 0.502865,
		-0.378260, 0.920417, 0.098747,
		27.786282, 26.730579, 35.222980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.312435, 26.056168, 35.181908>,  <28.051064, 26.086288, 35.153858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.312435, 26.056168, 35.181908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.407059, 26.407148, 35.014999>,  <27.463833, 26.617737, 34.914856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.407059, 26.407148, 35.014999>,  <27.312435, 26.056168, 35.181908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.407059, 26.407148, 35.014999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512404, -0.252220, -0.820870,
		-0.825520, 0.407995, 0.389946,
		0.236558, 0.877454, -0.417271,
		27.478025, 26.670385, 34.889816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.768160, 26.419550, 34.858658>,  <27.312435, 26.056168, 35.181908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.768160, 26.419550, 34.858658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.072031, 26.586590, 34.659260>,  <27.254354, 26.686813, 34.539619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.072031, 26.586590, 34.659260>,  <26.768160, 26.419550, 34.858658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.072031, 26.586590, 34.659260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484652, -0.147535, -0.862175,
		-0.433588, 0.896574, 0.090310,
		0.759680, 0.417598, -0.498496,
		27.299934, 26.711868, 34.509712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.617128, 27.035284, 34.596561>,  <26.768160, 26.419550, 34.858658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.617128, 27.035284, 34.596561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.880833, 26.841261, 34.366745>,  <27.039055, 26.724848, 34.228855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.880833, 26.841261, 34.366745>,  <26.617128, 27.035284, 34.596561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.880833, 26.841261, 34.366745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671379, -0.035688, -0.740254,
		0.338561, 0.873754, -0.349185,
		0.659262, -0.485057, -0.574538,
		27.078611, 26.695744, 34.194382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.711924, 27.424265, 34.066704>,  <26.617128, 27.035284, 34.596561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.711924, 27.424265, 34.066704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.777380, 27.042608, 33.966434>,  <26.816654, 26.813614, 33.906273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.777380, 27.042608, 33.966434>,  <26.711924, 27.424265, 34.066704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.777380, 27.042608, 33.966434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603192, 0.104298, -0.790747,
		0.780629, 0.280604, -0.558463,
		0.163640, -0.954140, -0.250677,
		26.826471, 26.756367, 33.891232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.874781, 27.354923, 33.297096>,  <26.711924, 27.424265, 34.066704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.874781, 27.354923, 33.297096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.725819, 26.999582, 33.404533>,  <26.636442, 26.786377, 33.468994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.725819, 26.999582, 33.404533>,  <26.874781, 27.354923, 33.297096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.725819, 26.999582, 33.404533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540411, -0.027712, -0.840945,
		0.754500, -0.458321, -0.469757,
		-0.372405, -0.888355, 0.268590,
		26.614098, 26.733076, 33.485111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.737120, 26.917215, 32.846352>,  <26.874781, 27.354923, 33.297096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.737120, 26.917215, 32.846352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.469938, 26.760096, 33.099190>,  <26.309629, 26.665823, 33.250893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.469938, 26.760096, 33.099190>,  <26.737120, 26.917215, 32.846352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.469938, 26.760096, 33.099190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703688, 0.056945, -0.708223,
		0.242196, -0.917859, -0.314446,
		-0.667955, -0.392801, 0.632095,
		26.269552, 26.642256, 33.288818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.934137, 27.558727, 32.474419>,  <26.737120, 26.917215, 32.846352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.934137, 27.558727, 32.474419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.580219, 27.731432, 32.544533>,  <26.367868, 27.835054, 32.586601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.580219, 27.731432, 32.544533>,  <26.934137, 27.558727, 32.474419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.580219, 27.731432, 32.544533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299002, 0.814548, -0.497101,
		-0.357405, -0.387421, -0.849804,
		-0.884793, 0.431760, 0.175284,
		26.314781, 27.860960, 32.597118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.520269, 27.840487, 31.838726>,  <26.934137, 27.558727, 32.474419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.520269, 27.840487, 31.838726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.523357, 28.005171, 32.203239>,  <26.525211, 28.103981, 32.421947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.523357, 28.005171, 32.203239>,  <26.520269, 27.840487, 31.838726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.523357, 28.005171, 32.203239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498675, 0.788319, -0.360383,
		-0.866754, 0.457216, -0.199223,
		0.007721, 0.411711, 0.911282,
		26.525673, 28.128685, 32.476624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.147503, 28.512587, 31.779552>,  <26.520269, 27.840487, 31.838726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.147503, 28.512587, 31.779552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.397976, 28.507708, 32.091385>,  <26.548260, 28.504780, 32.278484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.397976, 28.507708, 32.091385>,  <26.147503, 28.512587, 31.779552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.397976, 28.507708, 32.091385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302652, 0.925275, -0.228621,
		-0.718538, 0.379100, 0.583084,
		0.626183, -0.012199, 0.779581,
		26.585831, 28.504047, 32.325260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.949255, 29.139908, 32.151218>,  <26.147503, 28.512587, 31.779552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.949255, 29.139908, 32.151218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.307430, 29.022388, 32.285011>,  <26.522335, 28.951878, 32.365288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.307430, 29.022388, 32.285011>,  <25.949255, 29.139908, 32.151218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.307430, 29.022388, 32.285011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290944, 0.954867, 0.059843,
		-0.336964, 0.043729, 0.940501,
		0.895437, -0.293798, 0.334479,
		26.576061, 28.934250, 32.385353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.053007, 29.617252, 32.675014>,  <25.949255, 29.139908, 32.151218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.053007, 29.617252, 32.675014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.419142, 29.478226, 32.593670>,  <26.638823, 29.394810, 32.544865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.419142, 29.478226, 32.593670>,  <26.053007, 29.617252, 32.675014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.419142, 29.478226, 32.593670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350596, 0.936266, -0.022121,
		0.198087, -0.051049, 0.978854,
		0.915338, -0.347564, -0.203359,
		26.693743, 29.373957, 32.532661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.527081, 29.927538, 33.187180>,  <26.053007, 29.617252, 32.675014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.527081, 29.927538, 33.187180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.755650, 29.783346, 32.892281>,  <26.892792, 29.696831, 32.715340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.755650, 29.783346, 32.892281>,  <26.527081, 29.927538, 33.187180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.755650, 29.783346, 32.892281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593089, 0.802311, 0.067399,
		0.567204, -0.475766, 0.672255,
		0.571423, -0.360477, -0.737246,
		26.927076, 29.675203, 32.671108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.174198, 29.960642, 33.398502>,  <26.527081, 29.927538, 33.187180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.174198, 29.960642, 33.398502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.238943, 29.938293, 33.004410>,  <27.277790, 29.924885, 32.767956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.238943, 29.938293, 33.004410>,  <27.174198, 29.960642, 33.398502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.238943, 29.938293, 33.004410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633287, 0.771565, 0.060288,
		0.756802, -0.633692, 0.160267,
		0.161861, -0.055869, -0.985231,
		27.287500, 29.921534, 32.708839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.893133, 30.106665, 33.318291>,  <27.174198, 29.960642, 33.398502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.893133, 30.106665, 33.318291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.726784, 30.186922, 32.963486>,  <27.626974, 30.235077, 32.750603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.726784, 30.186922, 32.963486>,  <27.893133, 30.106665, 33.318291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.726784, 30.186922, 32.963486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657507, 0.740167, -0.140843,
		0.628279, -0.641790, -0.439740,
		-0.415873, 0.200644, -0.887013,
		27.602022, 30.247116, 32.697380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.393341, 30.158529, 32.744698>,  <27.893133, 30.106665, 33.318291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.393341, 30.158529, 32.744698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.088322, 30.392326, 32.633785>,  <27.905310, 30.532604, 32.567238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.088322, 30.392326, 32.633785>,  <28.393341, 30.158529, 32.744698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.088322, 30.392326, 32.633785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625196, 0.775974, -0.083634,
		0.166279, -0.237130, -0.957142,
		-0.762549, 0.584495, -0.277281,
		27.859556, 30.567675, 32.550602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.755520, 30.623545, 32.348755>,  <28.393341, 30.158529, 32.744698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.755520, 30.623545, 32.348755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.393616, 30.781635, 32.412262>,  <28.176474, 30.876490, 32.450367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.393616, 30.781635, 32.412262>,  <28.755520, 30.623545, 32.348755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.393616, 30.781635, 32.412262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399020, 0.916902, -0.008599,
		-0.148972, 0.055571, -0.987279,
		-0.904760, 0.395225, 0.158766,
		28.122189, 30.900204, 32.459892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.879858, 31.242943, 32.028542>,  <28.755520, 30.623545, 32.348755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.879858, 31.242943, 32.028542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.540022, 31.324572, 32.223087>,  <28.336121, 31.373549, 32.339817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.540022, 31.324572, 32.223087>,  <28.879858, 31.242943, 32.028542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.540022, 31.324572, 32.223087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244270, 0.969503, 0.019900,
		-0.467474, 0.135711, -0.873527,
		-0.849588, 0.204074, 0.486368,
		28.285145, 31.385794, 32.368999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.615122, 31.807762, 31.640808>,  <28.879858, 31.242943, 32.028542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.615122, 31.807762, 31.640808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.469145, 31.810371, 32.013210>,  <28.381559, 31.811937, 32.236652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.469145, 31.810371, 32.013210>,  <28.615122, 31.807762, 31.640808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.469145, 31.810371, 32.013210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288107, 0.951683, 0.106268,
		-0.885331, 0.307012, -0.349189,
		-0.364943, 0.006521, 0.931007,
		28.359661, 31.812328, 32.292511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.144485, 32.540443, 31.785358>,  <28.615122, 31.807762, 31.640808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.144485, 32.540443, 31.785358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.271992, 32.379768, 32.128761>,  <28.348495, 32.283363, 32.334805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.271992, 32.379768, 32.128761>,  <28.144485, 32.540443, 31.785358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.271992, 32.379768, 32.128761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266302, 0.907229, 0.325605,
		-0.909655, 0.124831, 0.396164,
		0.318766, -0.401687, 0.858508,
		28.367622, 32.259262, 32.386314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.161875, 33.190063, 32.195267>,  <28.144485, 32.540443, 31.785358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.161875, 33.190063, 32.195267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.362358, 32.921261, 32.413326>,  <28.482649, 32.759979, 32.544163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.362358, 32.921261, 32.413326>,  <28.161875, 33.190063, 32.195267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.362358, 32.921261, 32.413326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480583, 0.740078, 0.470452,
		-0.719604, 0.026197, 0.693890,
		0.501208, -0.672011, 0.545153,
		28.512720, 32.719658, 32.576874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.039217, 33.367561, 32.915257>,  <28.161875, 33.190063, 32.195267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.039217, 33.367561, 32.915257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.371740, 33.146389, 32.937840>,  <28.571255, 33.013683, 32.951389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.371740, 33.146389, 32.937840>,  <28.039217, 33.367561, 32.915257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.371740, 33.146389, 32.937840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461042, 0.742736, 0.485575,
		-0.310424, -0.377634, 0.872370,
		0.831310, -0.552933, 0.056458,
		28.621134, 32.980511, 32.954777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.223404, 33.329952, 33.564163>,  <28.039217, 33.367561, 32.915257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.223404, 33.329952, 33.564163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.575941, 33.269321, 33.385162>,  <28.787462, 33.232944, 33.277760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.575941, 33.269321, 33.385162>,  <28.223404, 33.329952, 33.564163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.575941, 33.269321, 33.385162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402411, 0.737144, 0.542848,
		0.247592, -0.658515, 0.710673,
		0.881342, -0.151577, -0.447505,
		28.840343, 33.223846, 33.250912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.676186, 33.412827, 34.002380>,  <28.223404, 33.329952, 33.564163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.676186, 33.412827, 34.002380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.920788, 33.420559, 33.685978>,  <29.067549, 33.425198, 33.496136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.920788, 33.420559, 33.685978>,  <28.676186, 33.412827, 34.002380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.920788, 33.420559, 33.685978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630556, 0.591995, 0.501937,
		0.477974, -0.805710, 0.349818,
		0.611506, 0.019333, -0.791004,
		29.104240, 33.426357, 33.448677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.321781, 33.386822, 34.270889>,  <28.676186, 33.412827, 34.002380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.321781, 33.386822, 34.270889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.358765, 33.565407, 33.914883>,  <29.380955, 33.672558, 33.701279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.358765, 33.565407, 33.914883>,  <29.321781, 33.386822, 34.270889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.358765, 33.565407, 33.914883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592773, 0.693509, 0.409469,
		0.800044, -0.565435, -0.200530,
		0.092458, 0.446462, -0.890013,
		29.386501, 33.699345, 33.647881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.985666, 33.580963, 34.236172>,  <29.321781, 33.386822, 34.270889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.985666, 33.580963, 34.236172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.803221, 33.819412, 33.971867>,  <29.693754, 33.962482, 33.813286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.803221, 33.819412, 33.971867>,  <29.985666, 33.580963, 34.236172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.803221, 33.819412, 33.971867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516395, 0.781992, 0.349034,
		0.724774, -0.182014, -0.664510,
		-0.456112, 0.596120, -0.660758,
		29.666388, 33.998249, 33.773640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.520977, 34.029190, 34.106613>,  <29.985666, 33.580963, 34.236172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.520977, 34.029190, 34.106613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.195377, 34.202522, 33.951881>,  <30.000017, 34.306522, 33.859043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.195377, 34.202522, 33.951881>,  <30.520977, 34.029190, 34.106613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.195377, 34.202522, 33.951881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393979, 0.901221, 0.180504,
		0.426833, -0.005471, -0.904314,
		-0.813999, 0.433326, -0.386826,
		29.951178, 34.332520, 33.835835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.814835, 34.401680, 33.659962>,  <30.520977, 34.029190, 34.106613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.814835, 34.401680, 33.659962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.458208, 34.557949, 33.751598>,  <30.244232, 34.651711, 33.806580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.458208, 34.557949, 33.751598>,  <30.814835, 34.401680, 33.659962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.458208, 34.557949, 33.751598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435633, 0.878085, 0.197967,
		-0.123821, 0.276300, -0.953062,
		-0.891567, 0.390673, 0.229091,
		30.190739, 34.675152, 33.820324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.736626, 35.040161, 33.359291>,  <30.814835, 34.401680, 33.659962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.736626, 35.040161, 33.359291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.473143, 35.071255, 33.658642>,  <30.315052, 35.089909, 33.838253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.473143, 35.071255, 33.658642>,  <30.736626, 35.040161, 33.359291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.473143, 35.071255, 33.658642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332840, 0.922137, 0.197184,
		-0.674774, 0.378975, -0.633291,
		-0.658709, 0.077730, 0.748372,
		30.275530, 35.094574, 33.883152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.560143, 35.669189, 33.378136>,  <30.736626, 35.040161, 33.359291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.560143, 35.669189, 33.378136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.520456, 35.536785, 33.753494>,  <30.496645, 35.457344, 33.978710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.520456, 35.536785, 33.753494>,  <30.560143, 35.669189, 33.378136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.520456, 35.536785, 33.753494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638943, 0.701761, 0.315094,
		-0.762829, 0.630844, 0.141870,
		-0.099217, -0.331009, 0.938397,
		30.490692, 35.437481, 34.035015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.380091, 36.272354, 33.756004>,  <30.560143, 35.669189, 33.378136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.380091, 36.272354, 33.756004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.577999, 35.979141, 33.942711>,  <30.696745, 35.803215, 34.054733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.577999, 35.979141, 33.942711>,  <30.380091, 36.272354, 33.756004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.577999, 35.979141, 33.942711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733043, 0.640519, 0.228874,
		-0.466743, 0.228918, 0.854253,
		0.494771, -0.733030, 0.466764,
		30.726431, 35.759232, 34.082741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.445133, 36.452183, 34.484341>,  <30.380091, 36.272354, 33.756004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.445133, 36.452183, 34.484341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.737444, 36.211269, 34.355831>,  <30.912830, 36.066723, 34.278725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.737444, 36.211269, 34.355831>,  <30.445133, 36.452183, 34.484341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.737444, 36.211269, 34.355831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677559, 0.697178, 0.234214,
		0.082924, -0.388842, 0.917565,
		0.730779, -0.602283, -0.321276,
		30.956678, 36.030586, 34.259449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.016970, 36.790707, 34.027496>,  <30.445133, 36.452183, 34.484341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.016970, 36.790707, 34.027496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.207285, 36.544758, 34.279072>,  <31.321474, 36.397190, 34.430016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.207285, 36.544758, 34.279072>,  <31.016970, 36.790707, 34.027496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.207285, 36.544758, 34.279072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715163, -0.145820, -0.683578,
		0.512022, 0.775031, 0.370352,
		0.475789, -0.614869, 0.628936,
		31.350021, 36.360298, 34.467754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.612907, 36.951801, 34.187565>,  <31.016970, 36.790707, 34.027496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.612907, 36.951801, 34.187565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.642019, 36.557724, 34.249649>,  <31.659487, 36.321278, 34.286900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.642019, 36.557724, 34.249649>,  <31.612907, 36.951801, 34.187565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.642019, 36.557724, 34.249649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877059, -0.010870, -0.480260,
		0.474838, 0.171078, 0.863285,
		0.072778, -0.985197, 0.155207,
		31.663853, 36.262165, 34.296211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.279114, 36.702297, 34.630856>,  <31.612907, 36.951801, 34.187565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.279114, 36.702297, 34.630856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.131584, 36.497746, 34.320381>,  <32.043064, 36.375015, 34.134098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.131584, 36.497746, 34.320381>,  <32.279114, 36.702297, 34.630856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.131584, 36.497746, 34.320381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874127, 0.093081, -0.476695,
		0.316019, -0.854300, 0.412679,
		-0.368828, -0.511379, -0.776182,
		32.020935, 36.344334, 34.087528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.754139, 36.126770, 34.346748>,  <32.279114, 36.702297, 34.630856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.754139, 36.126770, 34.346748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.526062, 36.237366, 34.037315>,  <32.389217, 36.303722, 33.851654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.526062, 36.237366, 34.037315>,  <32.754139, 36.126770, 34.346748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.526062, 36.237366, 34.037315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821480, 0.183610, -0.539869,
		-0.007230, -0.943314, -0.331824,
		-0.570192, 0.276490, -0.773586,
		32.355003, 36.320312, 33.805241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.868202, 35.617695, 33.780651>,  <32.754139, 36.126770, 34.346748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.868202, 35.617695, 33.780651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.783936, 35.996452, 33.683487>,  <32.733376, 36.223709, 33.625187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.783936, 35.996452, 33.683487>,  <32.868202, 35.617695, 33.780651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.783936, 35.996452, 33.683487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927577, 0.115184, -0.355435,
		-0.308581, -0.300194, -0.902586,
		-0.210662, 0.946898, -0.242909,
		32.720737, 36.280521, 33.610615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.325119, 34.999977, 33.461964>,  <32.868202, 35.617695, 33.780651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.325119, 34.999977, 33.461964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.720337, 34.966461, 33.410206>,  <33.957470, 34.946350, 33.379150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.720337, 34.966461, 33.410206>,  <33.325119, 34.999977, 33.461964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.720337, 34.966461, 33.410206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154079, 0.510243, 0.846116,
		-0.004875, -0.855939, 0.517055,
		0.988047, -0.083792, -0.129395,
		34.016750, 34.941322, 33.371387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.589912, 34.746857, 34.164867>,  <33.325119, 34.999977, 33.461964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.589912, 34.746857, 34.164867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.895107, 34.912651, 33.966454>,  <34.078224, 35.012127, 33.847404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.895107, 34.912651, 33.966454>,  <33.589912, 34.746857, 34.164867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.895107, 34.912651, 33.966454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230049, 0.543005, 0.807603,
		0.604091, -0.730304, 0.318953,
		0.762988, 0.414490, -0.496030,
		34.124004, 35.036999, 33.817646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.063866, 34.713318, 34.647453>,  <33.589912, 34.746857, 34.164867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.063866, 34.713318, 34.647453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.221764, 34.968037, 34.382526>,  <34.316502, 35.120869, 34.223572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.221764, 34.968037, 34.382526>,  <34.063866, 34.713318, 34.647453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.221764, 34.968037, 34.382526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469564, 0.479783, 0.741159,
		0.789738, -0.603570, -0.109625,
		0.394745, 0.636798, -0.662318,
		34.340187, 35.159077, 34.183830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.784710, 34.704376, 34.789841>,  <34.063866, 34.713318, 34.647453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.784710, 34.704376, 34.789841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.675350, 35.059010, 34.640587>,  <34.609734, 35.271790, 34.551037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.675350, 35.059010, 34.640587>,  <34.784710, 34.704376, 34.789841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.675350, 35.059010, 34.640587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173449, 0.426993, 0.887464,
		0.946132, 0.177917, -0.270518,
		-0.273404, 0.886579, -0.373132,
		34.593330, 35.324982, 34.528648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.318333, 35.273262, 34.992542>,  <34.784710, 34.704376, 34.789841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.318333, 35.273262, 34.992542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.965897, 35.447945, 34.919922>,  <34.754436, 35.552753, 34.876350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.965897, 35.447945, 34.919922>,  <35.318333, 35.273262, 34.992542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.965897, 35.447945, 34.919922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051468, 0.470138, 0.881091,
		0.470138, 0.766977, -0.436711,
		-0.881091, 0.436711, -0.181554,
		34.701569, 35.578957, 34.865456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.391285, 35.899200, 35.395000>,  <35.318333, 35.273262, 34.992542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.391285, 35.899200, 35.395000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.004688, 35.951824, 35.306839>,  <34.772728, 35.983398, 35.253941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.004688, 35.951824, 35.306839>,  <35.391285, 35.899200, 35.395000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.004688, 35.951824, 35.306839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140132, 0.448981, 0.882485,
		0.215055, 0.883804, -0.415503,
		-0.966496, 0.131557, -0.220405,
		34.714741, 35.991291, 35.240719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136784, 36.643978, 35.590843>,  <35.391285, 35.899200, 35.395000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.136784, 36.643978, 35.590843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.805420, 36.420151, 35.600822>,  <34.606602, 36.285854, 35.606808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.805420, 36.420151, 35.600822>,  <35.136784, 36.643978, 35.590843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.805420, 36.420151, 35.600822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198639, 0.335130, 0.920994,
		-0.523720, 0.758004, -0.388777,
		-0.828408, -0.559569, 0.024946,
		34.556896, 36.252281, 35.608307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.539253, 37.027004, 35.818886>,  <35.136784, 36.643978, 35.590843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.539253, 37.027004, 35.818886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.427792, 36.648041, 35.881840>,  <34.360916, 36.420662, 35.919609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.427792, 36.648041, 35.881840>,  <34.539253, 37.027004, 35.818886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.427792, 36.648041, 35.881840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290662, 0.239380, 0.926398,
		-0.915351, 0.212400, -0.342079,
		-0.278654, -0.947409, 0.157380,
		34.344196, 36.363819, 35.929054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.848728, 37.088989, 36.018124>,  <34.539253, 37.027004, 35.818886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.848728, 37.088989, 36.018124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.960915, 36.736603, 36.170559>,  <34.028229, 36.525169, 36.262020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.960915, 36.736603, 36.170559>,  <33.848728, 37.088989, 36.018124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.960915, 36.736603, 36.170559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541678, 0.182497, 0.820536,
		-0.792415, -0.436563, -0.426018,
		0.280469, -0.880970, 0.381090,
		34.045055, 36.472313, 36.284885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.265831, 36.844822, 36.378582>,  <33.848728, 37.088989, 36.018124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.265831, 36.844822, 36.378582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.547798, 36.604000, 36.528576>,  <33.716980, 36.459507, 36.618572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.547798, 36.604000, 36.528576>,  <33.265831, 36.844822, 36.378582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.547798, 36.604000, 36.528576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413538, 0.080665, 0.906906,
		-0.576257, -0.794369, -0.192111,
		0.704921, -0.602056, 0.374985,
		33.759274, 36.423382, 36.641071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.935333, 36.297146, 36.844978>,  <33.265831, 36.844822, 36.378582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.935333, 36.297146, 36.844978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.316227, 36.312572, 36.966145>,  <33.544765, 36.321827, 37.038845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.316227, 36.312572, 36.966145>,  <32.935333, 36.297146, 36.844978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.316227, 36.312572, 36.966145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303359, 0.006117, 0.952857,
		0.034903, -0.999237, 0.017527,
		0.952237, 0.038575, 0.302915,
		33.601898, 36.324142, 37.057018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.061493, 35.660023, 37.356426>,  <32.935333, 36.297146, 36.844978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.061493, 35.660023, 37.356426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.320320, 35.955688, 37.431202>,  <33.475616, 36.133087, 37.476067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.320320, 35.955688, 37.431202>,  <33.061493, 35.660023, 37.356426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.320320, 35.955688, 37.431202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162119, -0.106188, 0.981041,
		0.744998, -0.665105, 0.051122,
		0.647067, 0.739161, 0.186936,
		33.514439, 36.177437, 37.487282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.390457, 35.460468, 37.837624>,  <33.061493, 35.660023, 37.356426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.390457, 35.460468, 37.837624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.507938, 35.839314, 37.889351>,  <33.578426, 36.066620, 37.920387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.507938, 35.839314, 37.889351>,  <33.390457, 35.460468, 37.837624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.507938, 35.839314, 37.889351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164535, -0.083177, 0.982858,
		0.941630, -0.309946, 0.131404,
		0.293703, 0.947109, 0.129319,
		33.596050, 36.123447, 37.928146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.823448, 35.467201, 38.410954>,  <33.390457, 35.460468, 37.837624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.823448, 35.467201, 38.410954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.701916, 35.847332, 38.383907>,  <33.628998, 36.075409, 38.367680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.701916, 35.847332, 38.383907>,  <33.823448, 35.467201, 38.410954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.701916, 35.847332, 38.383907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163341, 0.017961, 0.986406,
		0.938619, 0.310747, 0.149769,
		-0.303832, 0.950323, -0.067616,
		33.610767, 36.132427, 38.363621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.125160, 35.732468, 38.978508>,  <33.823448, 35.467201, 38.410954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.125160, 35.732468, 38.978508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.836411, 35.994473, 38.889194>,  <33.663158, 36.151676, 38.835606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.836411, 35.994473, 38.889194>,  <34.125160, 35.732468, 38.978508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.836411, 35.994473, 38.889194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343060, -0.058511, 0.937489,
		0.601001, 0.753351, 0.266946,
		-0.721878, 0.655010, -0.223279,
		33.619846, 36.190975, 38.822212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.188019, 36.139687, 39.473019>,  <34.125160, 35.732468, 38.978508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.188019, 36.139687, 39.473019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.815807, 36.179169, 39.331951>,  <33.592480, 36.202858, 39.247311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.815807, 36.179169, 39.331951>,  <34.188019, 36.139687, 39.473019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.815807, 36.179169, 39.331951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359718, -0.065701, 0.930745,
		0.068702, 0.992945, 0.096644,
		-0.930528, 0.098709, -0.352666,
		33.536648, 36.208782, 39.226151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.799244, 36.504730, 39.976017>,  <34.188019, 36.139687, 39.473019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.799244, 36.504730, 39.976017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.497707, 36.338234, 39.772659>,  <33.316784, 36.238335, 39.650642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.497707, 36.338234, 39.772659>,  <33.799244, 36.504730, 39.976017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.497707, 36.338234, 39.772659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456447, -0.224819, 0.860879,
		-0.472631, 0.881022, -0.020514,
		-0.753841, -0.416241, -0.508396,
		33.271557, 36.213360, 39.620140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.184570, 36.831108, 40.113480>,  <33.799244, 36.504730, 39.976017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.184570, 36.831108, 40.113480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.101868, 36.456390, 40.000580>,  <33.052246, 36.231560, 39.932838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.101868, 36.456390, 40.000580>,  <33.184570, 36.831108, 40.113480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.101868, 36.456390, 40.000580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550272, -0.127191, 0.825242,
		-0.808982, 0.325940, -0.489194,
		-0.206759, -0.936795, -0.282250,
		33.039841, 36.175350, 39.915905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.461052, 36.816319, 40.227196>,  <33.184570, 36.831108, 40.113480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.461052, 36.816319, 40.227196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.579861, 36.434376, 40.229359>,  <32.651146, 36.205212, 40.230656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.579861, 36.434376, 40.229359>,  <32.461052, 36.816319, 40.227196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.579861, 36.434376, 40.229359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490641, -0.147756, 0.858743,
		-0.819177, -0.257718, -0.512378,
		0.297020, -0.954856, 0.005409,
		32.668968, 36.147919, 40.230980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.957468, 36.420742, 40.307991>,  <32.461052, 36.816319, 40.227196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.957468, 36.420742, 40.307991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.240658, 36.166367, 40.430859>,  <32.410572, 36.013741, 40.504578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.240658, 36.166367, 40.430859>,  <31.957468, 36.420742, 40.307991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.240658, 36.166367, 40.430859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450220, -0.071306, 0.890066,
		-0.544129, -0.768435, -0.336797,
		0.707973, -0.635943, 0.307165,
		32.453049, 35.975582, 40.523006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.648651, 35.841892, 40.592293>,  <31.957468, 36.420742, 40.307991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.648651, 35.841892, 40.592293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.013851, 35.796341, 40.748993>,  <32.232971, 35.769009, 40.843014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.013851, 35.796341, 40.748993>,  <31.648651, 35.841892, 40.592293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.013851, 35.796341, 40.748993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407828, -0.230235, 0.883554,
		-0.010423, -0.966449, -0.256646,
		0.912999, -0.113877, 0.391745,
		32.287750, 35.762177, 40.866516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.653273, 35.134266, 40.919056>,  <31.648651, 35.841892, 40.592293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.653273, 35.134266, 40.919056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.941376, 35.354023, 41.088474>,  <32.114239, 35.485878, 41.190125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.941376, 35.354023, 41.088474>,  <31.653273, 35.134266, 40.919056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.941376, 35.354023, 41.088474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310876, -0.290190, 0.905067,
		0.620150, -0.783551, -0.038217,
		0.720257, 0.549397, 0.423549,
		32.157452, 35.518841, 41.215538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.738667, 34.817619, 41.589199>,  <31.653273, 35.134266, 40.919056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.738667, 34.817619, 41.589199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.948170, 35.155495, 41.633331>,  <32.073872, 35.358219, 41.659809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.948170, 35.155495, 41.633331>,  <31.738667, 34.817619, 41.589199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.948170, 35.155495, 41.633331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203739, -0.001544, 0.979024,
		0.827144, -0.535251, 0.171288,
		0.523759, 0.844692, 0.110329,
		32.105297, 35.408901, 41.666431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.275459, 34.725716, 42.143753>,  <31.738667, 34.817619, 41.589199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.275459, 34.725716, 42.143753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.206329, 35.117455, 42.101772>,  <32.164852, 35.352497, 42.076584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.206329, 35.117455, 42.101772>,  <32.275459, 34.725716, 42.143753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.206329, 35.117455, 42.101772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353613, 0.037758, 0.934629,
		0.919287, 0.198644, 0.339783,
		-0.172829, 0.979344, -0.104954,
		32.154480, 35.411259, 42.070286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.547806, 34.998283, 42.711952>,  <32.275459, 34.725716, 42.143753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.547806, 34.998283, 42.711952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.279175, 35.262650, 42.577984>,  <32.117996, 35.421268, 42.497604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.279175, 35.262650, 42.577984>,  <32.547806, 34.998283, 42.711952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.279175, 35.262650, 42.577984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358623, 0.105596, 0.927491,
		0.648360, 0.742993, 0.166104,
		-0.671579, 0.660917, -0.334919,
		32.077702, 35.460926, 42.477509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.611420, 35.444843, 43.221695>,  <32.547806, 34.998283, 42.711952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.611420, 35.444843, 43.221695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.267838, 35.551044, 43.046562>,  <32.061687, 35.614765, 42.941483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.267838, 35.551044, 43.046562>,  <32.611420, 35.444843, 43.221695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.267838, 35.551044, 43.046562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425458, 0.105715, 0.898782,
		0.284915, 0.958297, 0.022155,
		-0.858958, 0.265502, -0.437835,
		32.010151, 35.630695, 42.915211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.388279, 36.050278, 43.642056>,  <32.611420, 35.444843, 43.221695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.388279, 36.050278, 43.642056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.089550, 35.898262, 43.423763>,  <31.910313, 35.807053, 43.292789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.089550, 35.898262, 43.423763>,  <32.388279, 36.050278, 43.642056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.089550, 35.898262, 43.423763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571743, -0.052195, 0.818770,
		-0.339653, 0.923495, -0.178307,
		-0.746824, -0.380043, -0.545730,
		31.865503, 35.784248, 43.260044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.773926, 36.525452, 43.570694>,  <32.388279, 36.050278, 43.642056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.773926, 36.525452, 43.570694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.667545, 36.142082, 43.529316>,  <31.603718, 35.912060, 43.504490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.667545, 36.142082, 43.529316>,  <31.773926, 36.525452, 43.570694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.667545, 36.142082, 43.529316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728516, 0.129551, 0.672667,
		-0.631296, 0.254260, -0.732678,
		-0.265952, -0.958420, -0.103447,
		31.587759, 35.854557, 43.498283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.340769, 36.552582, 43.955685>,  <31.773926, 36.525452, 43.570694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.340769, 36.552582, 43.955685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.286974, 36.169369, 43.854416>,  <31.254698, 35.939442, 43.793655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.286974, 36.169369, 43.854416>,  <31.340769, 36.552582, 43.955685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.286974, 36.169369, 43.854416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681507, -0.096047, 0.725481,
		-0.719348, 0.270105, -0.639986,
		-0.134487, -0.958029, -0.253170,
		31.246628, 35.881962, 43.778465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.620516, 36.369171, 43.947041>,  <31.340769, 36.552582, 43.955685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.620516, 36.369171, 43.947041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.815645, 36.023571, 43.996895>,  <30.932724, 35.816212, 44.026810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.815645, 36.023571, 43.996895>,  <30.620516, 36.369171, 43.947041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.815645, 36.023571, 43.996895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638436, -0.255747, 0.725943,
		-0.595337, -0.433707, -0.676367,
		0.487825, -0.863998, 0.124638,
		30.961992, 35.764370, 44.034286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.106062, 35.825634, 43.849369>,  <30.620516, 36.369171, 43.947041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.106062, 35.825634, 43.849369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.410788, 35.704247, 44.078297>,  <30.593622, 35.631413, 44.215652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.410788, 35.704247, 44.078297>,  <30.106062, 35.825634, 43.849369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.410788, 35.704247, 44.078297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645386, -0.279411, 0.710920,
		-0.055829, -0.910954, -0.408713,
		0.761814, -0.303467, 0.572317,
		30.639332, 35.613205, 44.249992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.780525, 35.512920, 44.386818>,  <30.106062, 35.825634, 43.849369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.780525, 35.512920, 44.386818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.153040, 35.498394, 44.531803>,  <30.376549, 35.489677, 44.618793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.153040, 35.498394, 44.531803>,  <29.780525, 35.512920, 44.386818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.153040, 35.498394, 44.531803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359821, -0.246927, 0.899753,
		0.056827, -0.968353, -0.243028,
		0.931289, -0.036317, 0.362466,
		30.432426, 35.487499, 44.640541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.798101, 34.953976, 44.841419>,  <29.780525, 35.512920, 44.386818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.798101, 34.953976, 44.841419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.101685, 35.199165, 44.929283>,  <30.283834, 35.346279, 44.982002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.101685, 35.199165, 44.929283>,  <29.798101, 34.953976, 44.841419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.101685, 35.199165, 44.929283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099777, -0.223874, 0.969497,
		0.643449, -0.757725, -0.108750,
		0.758958, 0.612972, 0.219655,
		30.329372, 35.383057, 44.995178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.276253, 34.585159, 45.208324>,  <29.798101, 34.953976, 44.841419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.276253, 34.585159, 45.208324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.363503, 34.958466, 45.322475>,  <30.415854, 35.182449, 45.390968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.363503, 34.958466, 45.322475>,  <30.276253, 34.585159, 45.208324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.363503, 34.958466, 45.322475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156298, -0.255240, 0.954161,
		0.963323, -0.252732, 0.090192,
		0.218126, 0.933263, 0.285380,
		30.428940, 35.238445, 45.408089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.622356, 34.477303, 45.809841>,  <30.276253, 34.585159, 45.208324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.622356, 34.477303, 45.809841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.498707, 34.857544, 45.821072>,  <30.424517, 35.085690, 45.827808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.498707, 34.857544, 45.821072>,  <30.622356, 34.477303, 45.809841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.498707, 34.857544, 45.821072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356382, -0.143157, 0.923308,
		0.881723, 0.275411, 0.383032,
		-0.309123, 0.950607, 0.028074,
		30.405970, 35.142727, 45.829494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.829060, 34.708897, 46.480633>,  <30.622356, 34.477303, 45.809841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.829060, 34.708897, 46.480633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.552189, 34.969513, 46.356449>,  <30.386066, 35.125881, 46.281940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.552189, 34.969513, 46.356449>,  <30.829060, 34.708897, 46.480633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.552189, 34.969513, 46.356449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557166, -0.208965, 0.803679,
		0.458754, 0.729266, 0.507657,
		-0.692178, 0.651540, -0.310458,
		30.344536, 35.164974, 46.263313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.717709, 35.051289, 46.988876>,  <30.829060, 34.708897, 46.480633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.717709, 35.051289, 46.988876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.382986, 35.150692, 46.793736>,  <30.182154, 35.210335, 46.676651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.382986, 35.150692, 46.793736>,  <30.717709, 35.051289, 46.988876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.382986, 35.150692, 46.793736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547112, -0.345956, 0.762222,
		0.020644, 0.904742, 0.425459,
		-0.836805, 0.248509, -0.487853,
		30.131945, 35.225246, 46.647381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.336905, 35.536030, 47.397964>,  <30.717709, 35.051289, 46.988876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.336905, 35.536030, 47.397964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.071194, 35.355507, 47.159618>,  <29.911768, 35.247192, 47.016609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.071194, 35.355507, 47.159618>,  <30.336905, 35.536030, 47.397964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.071194, 35.355507, 47.159618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503360, -0.319244, 0.802940,
		-0.552599, 0.833310, -0.015104,
		-0.664276, -0.451306, -0.595869,
		29.871910, 35.220116, 46.980858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.534565, 35.636429, 47.535324>,  <30.336905, 35.536030, 47.397964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.534565, 35.636429, 47.535324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.517265, 35.299290, 47.320759>,  <29.506886, 35.097008, 47.192020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.517265, 35.299290, 47.320759>,  <29.534565, 35.636429, 47.535324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.517265, 35.299290, 47.320759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712715, -0.350228, 0.607765,
		-0.700119, 0.408593, -0.585564,
		-0.043248, -0.842848, -0.536411,
		29.504292, 35.046436, 47.159836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.785831, 35.584568, 47.397991>,  <29.534565, 35.636429, 47.535324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.785831, 35.584568, 47.397991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.942005, 35.222183, 47.332516>,  <29.035709, 35.004753, 47.293232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.942005, 35.222183, 47.332516>,  <28.785831, 35.584568, 47.397991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.942005, 35.222183, 47.332516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798479, -0.421736, 0.429617,
		-0.458251, -0.037033, -0.888051,
		0.390433, -0.905962, -0.163691,
		29.059135, 34.950394, 47.283409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.336220, 35.154270, 47.001282>,  <28.785831, 35.584568, 47.397991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.336220, 35.154270, 47.001282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.554764, 34.938389, 47.257473>,  <28.685890, 34.808861, 47.411190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.554764, 34.938389, 47.257473>,  <28.336220, 35.154270, 47.001282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.554764, 34.938389, 47.257473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836580, -0.388453, 0.386313,
		0.040303, -0.746879, -0.663738,
		0.546360, -0.539700, 0.640480,
		28.718672, 34.776478, 47.449615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.796293, 34.964832, 47.577812>,  <28.336220, 35.154270, 47.001282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.796293, 34.964832, 47.577812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.641569, 34.861580, 47.931931>,  <27.548735, 34.799629, 48.144402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.641569, 34.861580, 47.931931>,  <27.796293, 34.964832, 47.577812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.641569, 34.861580, 47.931931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728349, -0.674327, 0.121618,
		0.565584, 0.691847, 0.448845,
		-0.386810, -0.258131, 0.885295,
		27.525526, 34.784142, 48.197517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.357363, 34.927681, 48.138489>,  <27.796293, 34.964832, 47.577812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.357363, 34.927681, 48.138489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.050776, 34.703007, 48.263092>,  <27.866823, 34.568203, 48.337852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.050776, 34.703007, 48.263092>,  <28.357363, 34.927681, 48.138489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.050776, 34.703007, 48.263092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613161, -0.784280, 0.094547,
		0.191201, 0.263469, 0.945530,
		-0.766470, -0.561684, 0.311504,
		27.820835, 34.534500, 48.356544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.541529, 34.523354, 48.850876>,  <28.357363, 34.927681, 48.138489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.541529, 34.523354, 48.850876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.262117, 34.342468, 48.629044>,  <28.094471, 34.233936, 48.495945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.262117, 34.342468, 48.629044>,  <28.541529, 34.523354, 48.850876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.262117, 34.342468, 48.629044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478781, -0.871334, 0.107449,
		-0.531815, -0.190466, 0.825164,
		-0.698528, -0.452216, -0.554580,
		28.052559, 34.206802, 48.462669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.319117, 33.894703, 49.259834>,  <28.541529, 34.523354, 48.850876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.319117, 33.894703, 49.259834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.260395, 33.815228, 48.872234>,  <28.225163, 33.767540, 48.639671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.260395, 33.815228, 48.872234>,  <28.319117, 33.894703, 49.259834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.260395, 33.815228, 48.872234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525414, -0.845660, 0.093802,
		-0.838086, -0.495358, 0.228541,
		-0.146803, -0.198693, -0.969005,
		28.216354, 33.755619, 48.581532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.902529, 33.379604, 49.261375>,  <28.319117, 33.894703, 49.259834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.902529, 33.379604, 49.261375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.299549, 33.417332, 49.292233>,  <29.537762, 33.439968, 49.310749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.299549, 33.417332, 49.292233>,  <28.902529, 33.379604, 49.261375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.299549, 33.417332, 49.292233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118925, -0.611951, -0.781904,
		-0.026538, 0.785252, -0.618608,
		0.992548, 0.094318, 0.077146,
		29.597313, 33.445625, 49.315376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.223635, 33.627258, 48.567276>,  <28.902529, 33.379604, 49.261375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.223635, 33.627258, 48.567276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.469763, 33.412987, 48.798595>,  <29.617439, 33.284424, 48.937389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.469763, 33.412987, 48.798595>,  <29.223635, 33.627258, 48.567276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.469763, 33.412987, 48.798595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226095, -0.582869, -0.780477,
		0.755158, 0.610993, -0.237536,
		0.615319, -0.535678, 0.578301,
		29.654358, 33.252285, 48.972084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.909216, 33.492306, 48.296566>,  <29.223635, 33.627258, 48.567276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.909216, 33.492306, 48.296566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.811857, 33.175072, 48.519913>,  <29.753441, 32.984730, 48.653923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.811857, 33.175072, 48.519913>,  <29.909216, 33.492306, 48.296566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.811857, 33.175072, 48.519913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094285, -0.592301, -0.800181,
		0.965333, -0.142117, 0.218940,
		-0.243398, -0.793084, 0.558369,
		29.738838, 32.937145, 48.687424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.369209, 32.890438, 48.278496>,  <29.909216, 33.492306, 48.296566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.369209, 32.890438, 48.278496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.989857, 32.771149, 48.321651>,  <29.762245, 32.699574, 48.347546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.989857, 32.771149, 48.321651>,  <30.369209, 32.890438, 48.278496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.989857, 32.771149, 48.321651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083039, -0.561826, -0.823077,
		0.306074, -0.771631, 0.557589,
		-0.948379, -0.298224, 0.107885,
		29.705343, 32.681683, 48.354015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.292751, 32.159561, 48.446053>,  <30.369209, 32.890438, 48.278496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.292751, 32.159561, 48.446053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.999886, 32.295830, 48.210125>,  <29.824167, 32.377590, 48.068569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.999886, 32.295830, 48.210125>,  <30.292751, 32.159561, 48.446053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.999886, 32.295830, 48.210125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300504, -0.615546, -0.728560,
		-0.611232, -0.710678, 0.348328,
		-0.732184, 0.340645, -0.589803,
		29.780237, 32.398029, 48.033180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.984743, 31.574219, 48.086937>,  <30.292751, 32.159561, 48.446053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.984743, 31.574219, 48.086937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.933359, 31.905781, 47.869160>,  <29.902529, 32.104717, 47.738495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.933359, 31.905781, 47.869160>,  <29.984743, 31.574219, 48.086937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.933359, 31.905781, 47.869160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237764, -0.507236, -0.828359,
		-0.962791, -0.235859, -0.131924,
		-0.128460, 0.828904, -0.544441,
		29.894821, 32.154453, 47.705826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.672350, 31.342003, 47.411320>,  <29.984743, 31.574219, 48.086937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.672350, 31.342003, 47.411320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.843016, 31.697964, 47.346779>,  <29.945415, 31.911541, 47.308056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.843016, 31.697964, 47.346779>,  <29.672350, 31.342003, 47.411320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.843016, 31.697964, 47.346779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452970, -0.364678, -0.813528,
		-0.782800, 0.274017, -0.558693,
		0.426664, 0.889901, -0.161349,
		29.971014, 31.964933, 47.298374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.533220, 31.483082, 46.742073>,  <29.672350, 31.342003, 47.411320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.533220, 31.483082, 46.742073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.839334, 31.724344, 46.831997>,  <30.023003, 31.869101, 46.885952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.839334, 31.724344, 46.831997>,  <29.533220, 31.483082, 46.742073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.839334, 31.724344, 46.831997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465888, -0.278018, -0.840032,
		-0.444166, 0.747604, -0.493766,
		0.765287, 0.603154, 0.224813,
		30.068920, 31.905291, 46.899441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.699581, 31.870728, 46.056973>,  <29.533220, 31.483082, 46.742073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.699581, 31.870728, 46.056973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.032059, 31.853270, 46.278679>,  <30.231544, 31.842794, 46.411705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.032059, 31.853270, 46.278679>,  <29.699581, 31.870728, 46.056973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.032059, 31.853270, 46.278679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517791, -0.302348, -0.800299,
		0.202512, 0.952198, -0.228710,
		0.831193, -0.043646, 0.554269,
		30.281416, 31.840176, 46.444958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.169687, 32.286304, 45.716381>,  <29.699581, 31.870728, 46.056973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.169687, 32.286304, 45.716381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.374920, 32.038689, 45.954216>,  <30.498060, 31.890120, 46.096916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.374920, 32.038689, 45.954216>,  <30.169687, 32.286304, 45.716381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.374920, 32.038689, 45.954216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515511, -0.331630, -0.790108,
		0.686291, 0.711908, 0.148967,
		0.513082, -0.619038, 0.594591,
		30.528845, 31.852978, 46.132595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.835609, 32.429432, 45.556644>,  <30.169687, 32.286304, 45.716381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.835609, 32.429432, 45.556644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.865099, 32.088470, 45.763706>,  <30.882793, 31.883892, 45.887943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.865099, 32.088470, 45.763706>,  <30.835609, 32.429432, 45.556644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.865099, 32.088470, 45.763706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614758, -0.369872, -0.696611,
		0.785262, 0.369592, 0.496755,
		0.073726, -0.852407, 0.517656,
		30.887217, 31.832748, 45.919003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.484838, 32.304443, 45.366085>,  <30.835609, 32.429432, 45.556644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.484838, 32.304443, 45.366085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.362347, 31.955544, 45.518612>,  <31.288851, 31.746204, 45.610130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.362347, 31.955544, 45.518612>,  <31.484838, 32.304443, 45.366085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.362347, 31.955544, 45.518612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705328, -0.476909, -0.524472,
		0.639325, 0.108347, 0.761265,
		-0.306229, -0.872249, 0.381320,
		31.270477, 31.693869, 45.633007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.012585, 32.063133, 45.659016>,  <31.484838, 32.304443, 45.366085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.012585, 32.063133, 45.659016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.767641, 31.764637, 45.554596>,  <31.620676, 31.585539, 45.491943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.767641, 31.764637, 45.554596>,  <32.012585, 32.063133, 45.659016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.767641, 31.764637, 45.554596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728067, -0.403607, -0.554094,
		0.308124, -0.529367, 0.790462,
		-0.612355, -0.746239, -0.261054,
		31.583935, 31.540766, 45.476280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.422421, 31.473991, 45.633896>,  <32.012585, 32.063133, 45.659016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.422421, 31.473991, 45.633896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.117313, 31.343973, 45.410278>,  <31.934250, 31.265963, 45.276108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.117313, 31.343973, 45.410278>,  <32.422421, 31.473991, 45.633896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.117313, 31.343973, 45.410278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646628, -0.373195, -0.665280,
		0.007615, -0.868947, 0.494846,
		-0.762767, -0.325047, -0.559044,
		31.888483, 31.246460, 45.242565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.540199, 30.820461, 45.403305>,  <32.422421, 31.473991, 45.633896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.540199, 30.820461, 45.403305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.266178, 30.967161, 45.151531>,  <32.101765, 31.055182, 45.000465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.266178, 30.967161, 45.151531>,  <32.540199, 30.820461, 45.403305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.266178, 30.967161, 45.151531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574263, -0.259769, -0.776365,
		-0.448241, -0.893316, -0.032655,
		-0.685057, 0.366751, -0.629437,
		32.060661, 31.077187, 44.962700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.774307, 30.572861, 44.769310>,  <32.540199, 30.820461, 45.403305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.774307, 30.572861, 44.769310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.455215, 30.765133, 44.623669>,  <32.263760, 30.880497, 44.536285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.455215, 30.765133, 44.623669>,  <32.774307, 30.572861, 44.769310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.455215, 30.765133, 44.623669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252545, -0.281977, -0.925586,
		-0.547581, -0.830321, 0.103548,
		-0.797732, 0.480683, -0.364099,
		32.215897, 30.909338, 44.514439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.387531, 30.042437, 44.276402>,  <32.774307, 30.572861, 44.769310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.387531, 30.042437, 44.276402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.332840, 30.427736, 44.183918>,  <32.300026, 30.658916, 44.128429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.332840, 30.427736, 44.183918>,  <32.387531, 30.042437, 44.276402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.332840, 30.427736, 44.183918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191416, -0.203310, -0.960222,
		-0.971939, -0.175543, -0.156584,
		-0.136725, 0.963250, -0.231206,
		32.291821, 30.716711, 44.114555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.229465, 29.993580, 43.698879>,  <32.387531, 30.042437, 44.276402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.229465, 29.993580, 43.698879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.325985, 30.381523, 43.685299>,  <32.383896, 30.614288, 43.677151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.325985, 30.381523, 43.685299>,  <32.229465, 29.993580, 43.698879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.325985, 30.381523, 43.685299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056902, -0.049063, -0.997173,
		-0.968781, 0.238687, -0.067026,
		0.241300, 0.969856, -0.033950,
		32.398376, 30.672480, 43.675114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.893354, 30.208920, 43.145607>,  <32.229465, 29.993580, 43.698879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.893354, 30.208920, 43.145607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.154766, 30.505499, 43.206474>,  <32.311615, 30.683447, 43.242992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.154766, 30.505499, 43.206474>,  <31.893354, 30.208920, 43.145607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.154766, 30.505499, 43.206474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247171, -0.019041, -0.968785,
		-0.715405, 0.670742, -0.195708,
		0.653531, 0.741446, 0.152166,
		32.350826, 30.727932, 43.252125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.676214, 30.771046, 42.594997>,  <31.893354, 30.208920, 43.145607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.676214, 30.771046, 42.594997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.065697, 30.796484, 42.682499>,  <32.299385, 30.811747, 42.735001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.065697, 30.796484, 42.682499>,  <31.676214, 30.771046, 42.594997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.065697, 30.796484, 42.682499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198776, 0.231890, -0.952216,
		-0.111281, 0.970661, 0.213152,
		0.973707, 0.063594, 0.218749,
		32.357807, 30.815561, 42.748123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.865849, 31.321444, 42.159172>,  <31.676214, 30.771046, 42.594997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.865849, 31.321444, 42.159172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.209412, 31.151466, 42.273506>,  <32.415550, 31.049480, 42.342106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.209412, 31.151466, 42.273506>,  <31.865849, 31.321444, 42.159172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.209412, 31.151466, 42.273506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399881, 0.207787, -0.892704,
		0.319957, 0.881049, 0.348397,
		0.858908, -0.424944, 0.285831,
		32.467083, 31.023983, 42.359257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.401249, 31.738258, 41.989220>,  <31.865849, 31.321444, 42.159172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.401249, 31.738258, 41.989220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.572674, 31.378141, 42.019707>,  <32.675529, 31.162071, 42.037998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.572674, 31.378141, 42.019707>,  <32.401249, 31.738258, 41.989220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.572674, 31.378141, 42.019707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396048, 0.111367, -0.911451,
		0.812083, 0.420802, 0.404286,
		0.428565, -0.900291, 0.076219,
		32.701244, 31.108055, 42.042572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.118038, 31.873152, 41.720325>,  <32.401249, 31.738258, 41.989220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.118038, 31.873152, 41.720325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.014019, 31.486954, 41.714684>,  <32.951607, 31.255236, 41.711300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.014019, 31.486954, 41.714684>,  <33.118038, 31.873152, 41.720325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.014019, 31.486954, 41.714684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462888, -0.111827, -0.879334,
		0.847414, -0.235195, 0.475996,
		-0.260044, -0.965494, -0.014106,
		32.936005, 31.197306, 41.710453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.694466, 31.638786, 41.496185>,  <33.118038, 31.873152, 41.720325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.694466, 31.638786, 41.496185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.421768, 31.351105, 41.442570>,  <33.258148, 31.178495, 41.410400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.421768, 31.351105, 41.442570>,  <33.694466, 31.638786, 41.496185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.421768, 31.351105, 41.442570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314719, -0.122918, -0.941192,
		0.660434, -0.683839, 0.310146,
		-0.681747, -0.719204, -0.134038,
		33.217243, 31.135344, 41.402359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.074348, 30.969814, 41.270767>,  <33.694466, 31.638786, 41.496185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.074348, 30.969814, 41.270767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.689541, 30.960161, 41.161999>,  <33.458656, 30.954370, 41.096737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.689541, 30.960161, 41.161999>,  <34.074348, 30.969814, 41.270767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.689541, 30.960161, 41.161999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270789, 0.041906, -0.961726,
		0.034577, -0.998830, -0.033787,
		-0.962018, -0.024104, -0.271922,
		33.400936, 30.952921, 41.080421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.014507, 30.439291, 40.812778>,  <34.074348, 30.969814, 41.270767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.014507, 30.439291, 40.812778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.669537, 30.623558, 40.728867>,  <33.462555, 30.734119, 40.678520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.669537, 30.623558, 40.728867>,  <34.014507, 30.439291, 40.812778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.669537, 30.623558, 40.728867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302905, 0.137629, -0.943031,
		-0.405554, -0.876836, -0.258234,
		-0.862424, 0.460670, -0.209782,
		33.410809, 30.761759, 40.665932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.729248, 30.121367, 40.248920>,  <34.014507, 30.439291, 40.812778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.729248, 30.121367, 40.248920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.592739, 30.496988, 40.265438>,  <33.510834, 30.722363, 40.275349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.592739, 30.496988, 40.265438>,  <33.729248, 30.121367, 40.248920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.592739, 30.496988, 40.265438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351475, 0.168237, -0.920957,
		-0.871778, -0.299785, -0.387470,
		-0.341276, 0.939056, 0.041298,
		33.490356, 30.778706, 40.277828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.237926, 30.072828, 39.702293>,  <33.729248, 30.121367, 40.248920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.237926, 30.072828, 39.702293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.353203, 30.447573, 39.781532>,  <33.422367, 30.672419, 39.829075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.353203, 30.447573, 39.781532>,  <33.237926, 30.072828, 39.702293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.353203, 30.447573, 39.781532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261373, 0.122054, -0.957490,
		-0.921212, 0.327714, -0.209696,
		0.288188, 0.936860, 0.198094,
		33.439659, 30.728630, 39.840961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.019138, 30.539917, 39.104420>,  <33.237926, 30.072828, 39.702293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.019138, 30.539917, 39.104420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.307709, 30.775028, 39.250877>,  <33.480850, 30.916096, 39.338753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.307709, 30.775028, 39.250877>,  <33.019138, 30.539917, 39.104420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.307709, 30.775028, 39.250877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380942, 0.104703, -0.918652,
		-0.578302, 0.802217, -0.148375,
		0.721422, 0.587780, 0.366148,
		33.524136, 30.951363, 39.360722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.992317, 31.084190, 38.677193>,  <33.019138, 30.539917, 39.104420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.992317, 31.084190, 38.677193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.356007, 31.115643, 38.840717>,  <33.574223, 31.134514, 38.938831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.356007, 31.115643, 38.840717>,  <32.992317, 31.084190, 38.677193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.356007, 31.115643, 38.840717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386392, 0.206126, -0.899007,
		-0.154954, 0.975361, 0.157033,
		0.909225, 0.078628, 0.408811,
		33.628773, 31.139231, 38.963360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.202396, 31.721209, 38.381866>,  <32.992317, 31.084190, 38.677193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.202396, 31.721209, 38.381866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.545708, 31.561642, 38.511002>,  <33.751694, 31.465900, 38.588482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.545708, 31.561642, 38.511002>,  <33.202396, 31.721209, 38.381866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.545708, 31.561642, 38.511002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419181, 0.182055, -0.889462,
		0.296049, 0.898733, 0.323473,
		0.858279, -0.398918, 0.322834,
		33.803192, 31.441967, 38.607853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.745598, 32.172794, 38.245094>,  <33.202396, 31.721209, 38.381866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.745598, 32.172794, 38.245094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.927895, 31.818165, 38.276802>,  <34.037273, 31.605387, 38.295826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.927895, 31.818165, 38.276802>,  <33.745598, 32.172794, 38.245094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.927895, 31.818165, 38.276802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513764, 0.189283, -0.836791,
		0.726874, 0.422085, 0.541755,
		0.455742, -0.886575, 0.079268,
		34.064617, 31.552193, 38.300583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.402824, 32.299625, 38.054497>,  <33.745598, 32.172794, 38.245094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.402824, 32.299625, 38.054497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.417313, 31.901165, 38.022568>,  <34.426006, 31.662088, 38.003410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.417313, 31.901165, 38.022568>,  <34.402824, 32.299625, 38.054497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.417313, 31.901165, 38.022568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596046, 0.085648, -0.798369,
		0.802133, -0.018663, 0.596854,
		0.036220, -0.996151, -0.079825,
		34.428177, 31.602320, 37.998619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066525, 32.002026, 38.013409>,  <34.402824, 32.299625, 38.054497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.066525, 32.002026, 38.013409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.870419, 31.702826, 37.834461>,  <34.752754, 31.523306, 37.727093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.870419, 31.702826, 37.834461>,  <35.066525, 32.002026, 38.013409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.870419, 31.702826, 37.834461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569082, 0.114040, -0.814334,
		0.660138, -0.653830, 0.369762,
		-0.490269, -0.747998, -0.447365,
		34.723339, 31.478426, 37.700253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.470951, 31.453598, 37.733063>,  <35.066525, 32.002026, 38.013409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.470951, 31.453598, 37.733063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.133770, 31.401981, 37.524147>,  <34.931461, 31.371012, 37.398800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.133770, 31.401981, 37.524147>,  <35.470951, 31.453598, 37.733063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.133770, 31.401981, 37.524147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520895, 0.047025, -0.852325,
		0.134547, -0.990523, 0.027578,
		-0.842951, -0.129043, -0.522286,
		34.880886, 31.363268, 37.367462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.687485, 31.065338, 37.067661>,  <35.470951, 31.453598, 37.733063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.687485, 31.065338, 37.067661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.321487, 31.192270, 36.967995>,  <35.101887, 31.268429, 36.908195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.321487, 31.192270, 36.967995>,  <35.687485, 31.065338, 37.067661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.321487, 31.192270, 36.967995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301109, 0.126030, -0.945225,
		-0.268543, -0.939904, -0.210868,
		-0.914996, 0.317328, -0.249169,
		35.046989, 31.287468, 36.893246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.528023, 30.770670, 36.460190>,  <35.687485, 31.065338, 37.067661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.528023, 30.770670, 36.460190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.273758, 31.078838, 36.440632>,  <35.121201, 31.263739, 36.428898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.273758, 31.078838, 36.440632>,  <35.528023, 30.770670, 36.460190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.273758, 31.078838, 36.440632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250019, 0.145537, -0.957241,
		-0.730361, -0.620704, -0.285132,
		-0.635660, 0.770419, -0.048893,
		35.083061, 31.309963, 36.425964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.254181, 30.693325, 35.846802>,  <35.528023, 30.770670, 36.460190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.254181, 30.693325, 35.846802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.190582, 31.075375, 35.946770>,  <35.152424, 31.304604, 36.006752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.190582, 31.075375, 35.946770>,  <35.254181, 30.693325, 35.846802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.190582, 31.075375, 35.946770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083724, 0.265274, -0.960531,
		-0.983722, -0.131799, -0.122145,
		-0.158999, 0.955122, 0.249921,
		35.142883, 31.361912, 36.021748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.687336, 30.941534, 35.384769>,  <35.254181, 30.693325, 35.846802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.687336, 30.941534, 35.384769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.864605, 31.259687, 35.550159>,  <34.970966, 31.450579, 35.649395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.864605, 31.259687, 35.550159>,  <34.687336, 30.941534, 35.384769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.864605, 31.259687, 35.550159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094354, 0.500074, -0.860827,
		-0.891456, 0.342483, 0.296668,
		0.443174, 0.795381, 0.413480,
		34.997559, 31.498302, 35.674202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.269512, 31.570564, 35.176712>,  <34.687336, 30.941534, 35.384769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.269512, 31.570564, 35.176712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.655342, 31.644619, 35.251877>,  <34.886841, 31.689053, 35.296978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.655342, 31.644619, 35.251877>,  <34.269512, 31.570564, 35.176712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.655342, 31.644619, 35.251877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068165, 0.513226, -0.855542,
		-0.254837, 0.838047, 0.482427,
		0.964579, 0.185139, 0.187915,
		34.944717, 31.700161, 35.308250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.465405, 32.229485, 35.022545>,  <34.269512, 31.570564, 35.176712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.465405, 32.229485, 35.022545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.832077, 32.069649, 35.024757>,  <35.052078, 31.973747, 35.026085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.832077, 32.069649, 35.024757>,  <34.465405, 32.229485, 35.022545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.832077, 32.069649, 35.024757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270273, 0.609711, -0.745121,
		0.294371, 0.684530, 0.666907,
		0.916678, -0.399589, 0.005529,
		35.107079, 31.949772, 35.026417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.919067, 32.745346, 35.122871>,  <34.465405, 32.229485, 35.022545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.919067, 32.745346, 35.122871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.140499, 32.460133, 34.950764>,  <35.273357, 32.289005, 34.847500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.140499, 32.460133, 34.950764>,  <34.919067, 32.745346, 35.122871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.140499, 32.460133, 34.950764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311843, 0.656551, -0.686801,
		0.772206, 0.246023, 0.585808,
		0.553581, -0.713032, -0.430272,
		35.306572, 32.246223, 34.821682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.610851, 32.927502, 35.007320>,  <34.919067, 32.745346, 35.122871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.610851, 32.927502, 35.007320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.552769, 32.637112, 34.738434>,  <35.517918, 32.462879, 34.577103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.552769, 32.637112, 34.738434>,  <35.610851, 32.927502, 35.007320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.552769, 32.637112, 34.738434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481659, 0.541607, -0.688961,
		0.864245, -0.423825, 0.271024,
		-0.145210, -0.725972, -0.672219,
		35.509205, 32.419319, 34.536770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.019436, 33.105778, 34.541550>,  <35.610851, 32.927502, 35.007320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.019436, 33.105778, 34.541550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.835674, 32.819992, 34.330460>,  <35.725418, 32.648521, 34.203808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.835674, 32.819992, 34.330460>,  <36.019436, 33.105778, 34.541550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.835674, 32.819992, 34.330460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296882, 0.436448, -0.849338,
		0.837145, -0.546858, 0.011607,
		-0.459401, -0.714465, -0.527722,
		35.697853, 32.605652, 34.172142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.414139, 33.006630, 33.938885>,  <36.019436, 33.105778, 34.541550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.414139, 33.006630, 33.938885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.070103, 32.850788, 33.807156>,  <35.863682, 32.757282, 33.728119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.070103, 32.850788, 33.807156>,  <36.414139, 33.006630, 33.938885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.070103, 32.850788, 33.807156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216168, 0.306395, -0.927035,
		0.462083, -0.868521, -0.179306,
		-0.860087, -0.389607, -0.329327,
		35.812077, 32.733906, 33.708359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.092808, 32.666908, 34.209606>,  <36.414139, 33.006630, 33.938885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.092808, 32.666908, 34.209606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.450317, 32.704067, 34.385120>,  <37.664825, 32.726364, 34.490429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.450317, 32.704067, 34.385120>,  <37.092808, 32.666908, 34.209606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.450317, 32.704067, 34.385120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385785, -0.339765, 0.857747,
		0.228769, -0.935911, -0.267835,
		0.893776, 0.092899, 0.438788,
		37.718449, 32.731937, 34.516758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.192955, 32.098396, 34.814182>,  <37.092808, 32.666908, 34.209606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.192955, 32.098396, 34.814182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.487507, 32.357468, 34.892422>,  <37.664238, 32.512909, 34.939365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.487507, 32.357468, 34.892422>,  <37.192955, 32.098396, 34.814182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.487507, 32.357468, 34.892422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036983, -0.250145, 0.967502,
		0.675556, -0.719684, -0.160249,
		0.736381, 0.647675, 0.195603,
		37.708420, 32.551769, 34.951103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.609104, 31.777090, 35.180870>,  <37.192955, 32.098396, 34.814182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.609104, 31.777090, 35.180870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.691414, 32.157768, 35.272026>,  <37.740799, 32.386173, 35.326721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.691414, 32.157768, 35.272026>,  <37.609104, 31.777090, 35.180870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.691414, 32.157768, 35.272026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025914, -0.227496, 0.973434,
		0.978256, -0.206213, -0.022151,
		0.205774, 0.951694, 0.227893,
		37.753147, 32.443275, 35.340393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006577, 31.721540, 35.652145>,  <37.609104, 31.777090, 35.180870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.006577, 31.721540, 35.652145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.908264, 32.103313, 35.719852>,  <37.849277, 32.332378, 35.760475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.908264, 32.103313, 35.719852>,  <38.006577, 31.721540, 35.652145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.908264, 32.103313, 35.719852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215264, -0.224003, 0.950518,
		0.945120, 0.197184, 0.260511,
		-0.245782, 0.954432, 0.169263,
		37.834530, 32.389645, 35.770630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.284630, 31.872372, 36.285812>,  <38.006577, 31.721540, 35.652145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.284630, 31.872372, 36.285812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.002346, 32.153728, 36.251842>,  <37.832977, 32.322544, 36.231461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.002346, 32.153728, 36.251842>,  <38.284630, 31.872372, 36.285812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.002346, 32.153728, 36.251842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260202, -0.145818, 0.954480,
		0.658992, 0.695682, 0.285929,
		-0.705709, 0.703394, -0.084925,
		37.790634, 32.364746, 36.226364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.414124, 32.177631, 36.815613>,  <38.284630, 31.872372, 36.285812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.414124, 32.177631, 36.815613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.044445, 32.283703, 36.705673>,  <37.822639, 32.347347, 36.639709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.044445, 32.283703, 36.705673>,  <38.414124, 32.177631, 36.815613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.044445, 32.283703, 36.705673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324723, -0.166791, 0.930986,
		0.201035, 0.949664, 0.240257,
		-0.924197, 0.265178, -0.274847,
		37.767185, 32.363255, 36.623219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.158817, 32.599293, 37.345852>,  <38.414124, 32.177631, 36.815613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.158817, 32.599293, 37.345852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.825821, 32.449917, 37.182148>,  <37.626022, 32.360291, 37.083923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.825821, 32.449917, 37.182148>,  <38.158817, 32.599293, 37.345852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.825821, 32.449917, 37.182148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309898, -0.298460, 0.902710,
		-0.459260, 0.878329, 0.132736,
		-0.832493, -0.373443, -0.409263,
		37.576073, 32.337883, 37.059368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.631351, 32.843834, 37.783005>,  <38.158817, 32.599293, 37.345852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.631351, 32.843834, 37.783005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.462452, 32.527534, 37.605724>,  <37.361111, 32.337757, 37.499355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.462452, 32.527534, 37.605724>,  <37.631351, 32.843834, 37.783005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.462452, 32.527534, 37.605724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461841, -0.233042, 0.855800,
		-0.780004, 0.566050, -0.266797,
		-0.422251, -0.790746, -0.443199,
		37.335777, 32.290310, 37.472763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.060703, 32.847942, 38.120224>,  <37.631351, 32.843834, 37.783005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.060703, 32.847942, 38.120224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.087513, 32.485149, 37.953903>,  <37.103600, 32.267475, 37.854111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.087513, 32.485149, 37.953903>,  <37.060703, 32.847942, 38.120224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.087513, 32.485149, 37.953903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278497, -0.417184, 0.865099,
		-0.958095, 0.057817, -0.280554,
		0.067025, -0.906981, -0.415804,
		37.107620, 32.213055, 37.829163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.387486, 32.575642, 38.189289>,  <37.060703, 32.847942, 38.120224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.387486, 32.575642, 38.189289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.664734, 32.290283, 38.148010>,  <36.831085, 32.119068, 38.123241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.664734, 32.290283, 38.148010>,  <36.387486, 32.575642, 38.189289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.664734, 32.290283, 38.148010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264209, -0.384643, 0.884445,
		-0.670651, -0.585765, -0.455090,
		0.693124, -0.713393, -0.103197,
		36.872673, 32.076267, 38.117050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.052036, 31.990780, 38.517605>,  <36.387486, 32.575642, 38.189289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.052036, 31.990780, 38.517605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.431919, 31.875256, 38.469189>,  <36.659847, 31.805941, 38.440140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.431919, 31.875256, 38.469189>,  <36.052036, 31.990780, 38.517605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.431919, 31.875256, 38.469189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097627, -0.640325, 0.761874,
		-0.297541, -0.711738, -0.636316,
		0.949704, -0.288811, -0.121038,
		36.716831, 31.788612, 38.432877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.069405, 31.204750, 38.759514>,  <36.052036, 31.990780, 38.517605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.069405, 31.204750, 38.759514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.438084, 31.358168, 38.782745>,  <36.659290, 31.450218, 38.796684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.438084, 31.358168, 38.782745>,  <36.069405, 31.204750, 38.759514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.438084, 31.358168, 38.782745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084015, -0.343531, 0.935376,
		0.378710, -0.857251, -0.348854,
		0.921694, 0.383545, 0.058076,
		36.714592, 31.473230, 38.800167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.428825, 30.647429, 38.969654>,  <36.069405, 31.204750, 38.759514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.428825, 30.647429, 38.969654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.615070, 30.990349, 39.057510>,  <36.726818, 31.196100, 39.110226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.615070, 30.990349, 39.057510>,  <36.428825, 30.647429, 38.969654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.615070, 30.990349, 39.057510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067017, -0.281631, 0.957179,
		0.882448, -0.430955, -0.188584,
		0.465612, 0.857299, 0.219644,
		36.754753, 31.247540, 39.123402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.949112, 30.416164, 39.319511>,  <36.428825, 30.647429, 38.969654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.949112, 30.416164, 39.319511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.923428, 30.807570, 39.397884>,  <36.908016, 31.042412, 39.444908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.923428, 30.807570, 39.397884>,  <36.949112, 30.416164, 39.319511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.923428, 30.807570, 39.397884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026640, -0.194586, 0.980524,
		0.997581, 0.068180, -0.013573,
		-0.064210, 0.978513, 0.195932,
		36.904163, 31.101124, 39.456665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.323715, 30.468134, 39.964291>,  <36.949112, 30.416164, 39.319511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.323715, 30.468134, 39.964291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.106441, 30.800320, 39.914845>,  <36.976078, 30.999630, 39.885178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.106441, 30.800320, 39.914845>,  <37.323715, 30.468134, 39.964291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.106441, 30.800320, 39.914845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002792, 0.145440, 0.989363,
		0.839608, 0.537753, -0.076682,
		-0.543185, 0.830463, -0.123614,
		36.943485, 31.049459, 39.877762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528145, 30.892141, 40.547508>,  <37.323715, 30.468134, 39.964291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.528145, 30.892141, 40.547508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.173843, 31.035191, 40.429161>,  <36.961262, 31.121019, 40.358150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.173843, 31.035191, 40.429161>,  <37.528145, 30.892141, 40.547508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.173843, 31.035191, 40.429161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321170, -0.012036, 0.946945,
		0.335088, 0.933789, 0.125519,
		-0.885757, 0.357623, -0.295872,
		36.908115, 31.142477, 40.340401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290222, 31.365623, 41.104698>,  <37.528145, 30.892141, 40.547508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.290222, 31.365623, 41.104698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.960667, 31.288504, 40.891521>,  <36.762932, 31.242231, 40.763615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.960667, 31.288504, 40.891521>,  <37.290222, 31.365623, 41.104698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.960667, 31.288504, 40.891521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497731, -0.203578, 0.843102,
		-0.271047, 0.959887, 0.071763,
		-0.823892, -0.192801, -0.532945,
		36.713501, 31.230663, 40.731640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.702351, 31.718714, 41.414486>,  <37.290222, 31.365623, 41.104698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.702351, 31.718714, 41.414486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.527496, 31.422783, 41.209911>,  <36.422585, 31.245224, 41.087166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.527496, 31.422783, 41.209911>,  <36.702351, 31.718714, 41.414486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.527496, 31.422783, 41.209911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562390, -0.218918, 0.797366,
		-0.701875, 0.636185, -0.320374,
		-0.437136, -0.739827, -0.511437,
		36.396355, 31.200834, 41.056480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.904499, 31.849085, 41.424110>,  <36.702351, 31.718714, 41.414486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.904499, 31.849085, 41.424110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.943150, 31.459009, 41.344437>,  <35.966339, 31.224964, 41.296635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.943150, 31.459009, 41.344437>,  <35.904499, 31.849085, 41.424110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.943150, 31.459009, 41.344437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794982, -0.196029, 0.574087,
		-0.598888, 0.102874, -0.794198,
		0.096627, -0.975187, -0.199183,
		35.972137, 31.166452, 41.284683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.286564, 31.650120, 41.347965>,  <35.904499, 31.849085, 41.424110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.286564, 31.650120, 41.347965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.458973, 31.293644, 41.404533>,  <35.562420, 31.079758, 41.438477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.458973, 31.293644, 41.404533>,  <35.286564, 31.650120, 41.347965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.458973, 31.293644, 41.404533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619343, -0.178204, 0.764629,
		-0.656228, -0.417161, -0.628762,
		0.431021, -0.891191, 0.141423,
		35.588280, 31.026287, 41.446960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.740250, 31.199001, 41.381382>,  <35.286564, 31.650120, 41.347965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.740250, 31.199001, 41.381382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.051205, 31.025780, 41.563866>,  <35.237778, 30.921846, 41.673355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.051205, 31.025780, 41.563866>,  <34.740250, 31.199001, 41.381382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.051205, 31.025780, 41.563866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560649, -0.148200, 0.814683,
		-0.285189, -0.889103, -0.357999,
		0.777393, -0.433051, 0.456210,
		35.284424, 30.895864, 41.700729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.466499, 30.694300, 41.976765>,  <34.740250, 31.199001, 41.381382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.466499, 30.694300, 41.976765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.845669, 30.746849, 42.092819>,  <35.073170, 30.778379, 42.162453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.845669, 30.746849, 42.092819>,  <34.466499, 30.694300, 41.976765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.845669, 30.746849, 42.092819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274590, -0.124449, 0.953474,
		0.161371, -0.983490, -0.081894,
		0.947924, 0.131376, 0.290139,
		35.130047, 30.786263, 42.179859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.609299, 30.143366, 42.434357>,  <34.466499, 30.694300, 41.976765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.609299, 30.143366, 42.434357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.897396, 30.408672, 42.515675>,  <35.070255, 30.567856, 42.564465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.897396, 30.408672, 42.515675>,  <34.609299, 30.143366, 42.434357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.897396, 30.408672, 42.515675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163954, -0.122002, 0.978895,
		0.674071, -0.738371, 0.020874,
		0.720241, 0.663267, 0.203297,
		35.113468, 30.607653, 42.576664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.083214, 29.851177, 42.972763>,  <34.609299, 30.143366, 42.434357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.083214, 29.851177, 42.972763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.050449, 30.249599, 42.959137>,  <35.030792, 30.488653, 42.950962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.050449, 30.249599, 42.959137>,  <35.083214, 29.851177, 42.972763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.050449, 30.249599, 42.959137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137944, 0.022522, 0.990184,
		0.987047, 0.085805, 0.135556,
		-0.081910, 0.996058, -0.034067,
		35.025875, 30.548416, 42.948917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.910061, 30.025940, 43.652157>,  <35.083214, 29.851177, 42.972763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.910061, 30.025940, 43.652157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.911201, 30.408175, 43.534275>,  <34.911884, 30.637514, 43.463547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.911201, 30.408175, 43.534275>,  <34.910061, 30.025940, 43.652157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.911201, 30.408175, 43.534275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092984, 0.293680, 0.951371,
		0.995664, 0.024691, 0.089691,
		0.002851, 0.955585, -0.294702,
		34.912056, 30.694851, 43.445866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425091, 30.460367, 44.068584>,  <34.910061, 30.025940, 43.652157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.425091, 30.460367, 44.068584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.145824, 30.703547, 43.917343>,  <34.978264, 30.849453, 43.826599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.145824, 30.703547, 43.917343>,  <35.425091, 30.460367, 44.068584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.145824, 30.703547, 43.917343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155562, 0.386693, 0.908993,
		0.698831, 0.693447, -0.175403,
		-0.698166, 0.607947, -0.378107,
		34.936375, 30.885931, 43.803909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.600540, 31.067818, 44.270332>,  <35.425091, 30.460367, 44.068584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.600540, 31.067818, 44.270332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.217613, 31.141659, 44.181374>,  <34.987858, 31.185963, 44.127998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.217613, 31.141659, 44.181374>,  <35.600540, 31.067818, 44.270332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.217613, 31.141659, 44.181374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118508, 0.451115, 0.884562,
		0.263618, 0.873165, -0.409985,
		-0.957320, 0.184600, -0.222399,
		34.930416, 31.197039, 44.114655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.494217, 31.788105, 44.569225>,  <35.600540, 31.067818, 44.270332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.494217, 31.788105, 44.569225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.140430, 31.607656, 44.521542>,  <34.928158, 31.499388, 44.492931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.140430, 31.607656, 44.521542>,  <35.494217, 31.788105, 44.569225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.140430, 31.607656, 44.521542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341555, 0.451888, 0.824098,
		-0.317898, 0.769603, -0.553762,
		-0.884467, -0.451119, -0.119207,
		34.875092, 31.472321, 44.485779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.990250, 32.329163, 44.641392>,  <35.494217, 31.788105, 44.569225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.990250, 32.329163, 44.641392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.787022, 31.992298, 44.713638>,  <34.665085, 31.790178, 44.756985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.787022, 31.992298, 44.713638>,  <34.990250, 32.329163, 44.641392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.787022, 31.992298, 44.713638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518740, 0.466594, 0.716379,
		-0.687583, 0.270280, -0.673928,
		-0.508074, -0.842163, 0.180617,
		34.634598, 31.739649, 44.767822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.260921, 32.571514, 44.687168>,  <34.990250, 32.329163, 44.641392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.260921, 32.571514, 44.687168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.263733, 32.220219, 44.878437>,  <34.265419, 32.009441, 44.993198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.263733, 32.220219, 44.878437>,  <34.260921, 32.571514, 44.687168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.263733, 32.220219, 44.878437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499816, 0.411085, 0.762360,
		-0.866103, -0.244357, -0.436068,
		0.007027, -0.878236, 0.478176,
		34.265842, 31.956747, 45.021889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.585438, 32.524612, 45.054813>,  <34.260921, 32.571514, 44.687168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.585438, 32.524612, 45.054813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.828991, 32.264416, 45.236420>,  <33.975121, 32.108299, 45.345383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.828991, 32.264416, 45.236420>,  <33.585438, 32.524612, 45.054813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.828991, 32.264416, 45.236420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242927, 0.391934, 0.887341,
		-0.755149, -0.650577, 0.080619,
		0.608881, -0.650490, 0.454012,
		34.011654, 32.069267, 45.372623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.185818, 32.160702, 45.456146>,  <33.585438, 32.524612, 45.054813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.185818, 32.160702, 45.456146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.547882, 32.132694, 45.623848>,  <33.765121, 32.115891, 45.724472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.547882, 32.132694, 45.623848>,  <33.185818, 32.160702, 45.456146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.547882, 32.132694, 45.623848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391038, 0.249527, 0.885904,
		-0.166643, -0.965833, 0.198484,
		0.905163, -0.070015, 0.419259,
		33.819431, 32.111691, 45.749626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.025940, 31.774891, 46.027473>,  <33.185818, 32.160702, 45.456146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.025940, 31.774891, 46.027473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.389515, 31.923471, 46.103222>,  <33.607658, 32.012619, 46.148670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.389515, 31.923471, 46.103222>,  <33.025940, 31.774891, 46.027473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.389515, 31.923471, 46.103222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269662, 0.177314, 0.946489,
		0.317998, -0.911363, 0.261333,
		0.908933, 0.371454, 0.189375,
		33.662193, 32.034908, 46.160034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.261013, 31.382248, 46.626907>,  <33.025940, 31.774891, 46.027473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.261013, 31.382248, 46.626907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.453545, 31.732088, 46.603596>,  <33.569061, 31.941992, 46.589607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.453545, 31.732088, 46.603596>,  <33.261013, 31.382248, 46.626907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.453545, 31.732088, 46.603596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219034, 0.184393, 0.958135,
		0.848734, -0.448409, 0.280321,
		0.481326, 0.874602, -0.058283,
		33.597942, 31.994469, 46.586109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.713337, 31.377314, 47.295067>,  <33.261013, 31.382248, 46.626907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.713337, 31.377314, 47.295067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.693031, 31.759899, 47.180107>,  <33.680847, 31.989450, 47.111134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.693031, 31.759899, 47.180107>,  <33.713337, 31.377314, 47.295067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.693031, 31.759899, 47.180107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256274, 0.265655, 0.929382,
		0.965270, 0.120835, 0.231630,
		-0.050769, 0.956466, -0.287395,
		33.677799, 32.046841, 47.093887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.100323, 31.654095, 47.779114>,  <33.713337, 31.377314, 47.295067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.100323, 31.654095, 47.779114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903515, 31.952969, 47.600395>,  <33.785431, 32.132294, 47.493164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903515, 31.952969, 47.600395>,  <34.100323, 31.654095, 47.779114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.903515, 31.952969, 47.600395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228425, 0.384439, 0.894443,
		0.840081, 0.542146, -0.018477,
		-0.492022, 0.747184, -0.446799,
		33.755909, 32.177124, 47.466354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.382362, 32.237675, 48.120625>,  <34.100323, 31.654095, 47.779114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.382362, 32.237675, 48.120625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.027470, 32.348141, 47.972813>,  <33.814533, 32.414421, 47.884125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.027470, 32.348141, 47.972813>,  <34.382362, 32.237675, 48.120625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.027470, 32.348141, 47.972813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231811, 0.425660, 0.874687,
		0.398849, 0.861712, -0.313643,
		-0.887233, 0.276163, -0.369528,
		33.761299, 32.430988, 47.861954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.387070, 32.936535, 48.440098>,  <34.382362, 32.237675, 48.120625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.387070, 32.936535, 48.440098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.016212, 32.826244, 48.338608>,  <33.793697, 32.760071, 48.277714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.016212, 32.826244, 48.338608>,  <34.387070, 32.936535, 48.440098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.016212, 32.826244, 48.338608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357745, 0.449939, 0.818275,
		-0.111462, 0.849428, -0.515800,
		-0.927143, -0.275731, -0.253727,
		33.738068, 32.743526, 48.262489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.816311, 33.331226, 48.178417>,  <34.387070, 32.936535, 48.440098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.816311, 33.331226, 48.178417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.124172, 33.512280, 48.358528>,  <34.308891, 33.620911, 48.466595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.124172, 33.512280, 48.358528>,  <33.816311, 33.331226, 48.178417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.124172, 33.512280, 48.358528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381729, 0.239077, -0.892819,
		-0.511774, 0.859047, 0.011222,
		0.769656, 0.452637, 0.450276,
		34.355068, 33.648071, 48.493610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.892639, 33.838623, 47.777870>,  <33.816311, 33.331226, 48.178417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.892639, 33.838623, 47.777870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.250057, 33.821480, 47.956642>,  <34.464508, 33.811192, 48.063904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.250057, 33.821480, 47.956642>,  <33.892639, 33.838623, 47.777870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.250057, 33.821480, 47.956642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418491, 0.440070, -0.794483,
		-0.162628, 0.896940, 0.411158,
		0.893542, -0.042861, 0.446929,
		34.518120, 33.808620, 48.090721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.191517, 34.475952, 47.686066>,  <33.892639, 33.838623, 47.777870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.191517, 34.475952, 47.686066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.500088, 34.232182, 47.759277>,  <34.685230, 34.085918, 47.803204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.500088, 34.232182, 47.759277>,  <34.191517, 34.475952, 47.686066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.500088, 34.232182, 47.759277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489942, 0.385334, -0.781968,
		0.406020, 0.692908, 0.595840,
		0.771430, -0.609422, 0.183031,
		34.731518, 34.049355, 47.814186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.856087, 34.923088, 47.545334>,  <34.191517, 34.475952, 47.686066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.856087, 34.923088, 47.545334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.992397, 34.547443, 47.527729>,  <35.074184, 34.322056, 47.517166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.992397, 34.547443, 47.527729>,  <34.856087, 34.923088, 47.545334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.992397, 34.547443, 47.527729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602997, 0.254247, -0.756143,
		0.721295, 0.231136, 0.652924,
		0.340776, -0.939114, -0.044013,
		35.094631, 34.265709, 47.514526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.595722, 34.911613, 47.483978>,  <34.856087, 34.923088, 47.545334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.595722, 34.911613, 47.483978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.517502, 34.539242, 47.360611>,  <35.470570, 34.315819, 47.286591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.517502, 34.539242, 47.360611>,  <35.595722, 34.911613, 47.483978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.517502, 34.539242, 47.360611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743027, 0.064609, -0.666135,
		0.640054, -0.359427, 0.679075,
		-0.195553, -0.930934, -0.308417,
		35.458836, 34.259960, 47.268085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.257450, 34.603477, 47.331345>,  <35.595722, 34.911613, 47.483978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.257450, 34.603477, 47.331345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.985249, 34.380901, 47.140648>,  <35.821926, 34.247356, 47.026230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.985249, 34.380901, 47.140648>,  <36.257450, 34.603477, 47.331345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.985249, 34.380901, 47.140648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590439, -0.031110, -0.806482,
		0.433928, -0.830305, 0.349715,
		-0.680506, -0.556440, -0.476745,
		35.781097, 34.213970, 46.997623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.677849, 34.423454, 46.759613>,  <36.257450, 34.603477, 47.331345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.677849, 34.423454, 46.759613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.324100, 34.263397, 46.663460>,  <36.111851, 34.167362, 46.605770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.324100, 34.263397, 46.663460>,  <36.677849, 34.423454, 46.759613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.324100, 34.263397, 46.663460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271021, -0.020871, -0.962347,
		0.380058, -0.916216, 0.126905,
		-0.884367, -0.400141, -0.240381,
		36.058792, 34.143356, 46.591347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.744759, 33.690968, 46.431236>,  <36.677849, 34.423454, 46.759613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.744759, 33.690968, 46.431236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.411022, 33.873375, 46.307354>,  <36.210781, 33.982819, 46.233025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.411022, 33.873375, 46.307354>,  <36.744759, 33.690968, 46.431236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.411022, 33.873375, 46.307354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265116, -0.160628, -0.950743,
		-0.483305, -0.875354, 0.013121,
		-0.834344, 0.456020, -0.309703,
		36.160717, 34.010181, 46.214443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.607159, 33.323380, 45.792522>,  <36.744759, 33.690968, 46.431236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.607159, 33.323380, 45.792522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.403973, 33.667866, 45.785931>,  <36.282063, 33.874557, 45.781975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.403973, 33.667866, 45.785931>,  <36.607159, 33.323380, 45.792522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.403973, 33.667866, 45.785931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207160, 0.103570, -0.972809,
		-0.836096, -0.497568, -0.231020,
		-0.507965, 0.861220, -0.016481,
		36.251583, 33.926231, 45.780987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.025684, 33.207851, 45.344406>,  <36.607159, 33.323380, 45.792522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.025684, 33.207851, 45.344406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.094612, 33.601791, 45.352104>,  <36.135971, 33.838158, 45.356724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.094612, 33.601791, 45.352104>,  <36.025684, 33.207851, 45.344406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.094612, 33.601791, 45.352104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081938, 0.005137, -0.996624,
		-0.981627, 0.173317, -0.079812,
		0.172322, 0.984853, 0.019244,
		36.146309, 33.897247, 45.357876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.515430, 33.587181, 44.849945>,  <36.025684, 33.207851, 45.344406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.515430, 33.587181, 44.849945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.838928, 33.810020, 44.925388>,  <36.033028, 33.943722, 44.970654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.838928, 33.810020, 44.925388>,  <35.515430, 33.587181, 44.849945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.838928, 33.810020, 44.925388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134494, 0.137006, -0.981397,
		-0.572570, 0.819070, 0.035878,
		0.808749, 0.557094, 0.188606,
		36.081554, 33.977150, 44.981972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.415985, 34.172279, 44.432888>,  <35.515430, 33.587181, 44.849945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.415985, 34.172279, 44.432888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.805672, 34.140720, 44.517437>,  <36.039482, 34.121784, 44.568169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.805672, 34.140720, 44.517437>,  <35.415985, 34.172279, 44.432888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.805672, 34.140720, 44.517437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224161, 0.232083, -0.946514,
		0.025616, 0.969491, 0.243783,
		0.974215, -0.078893, 0.211377,
		36.097935, 34.117054, 44.580849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.654121, 34.758953, 44.104515>,  <35.415985, 34.172279, 44.432888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.654121, 34.758953, 44.104515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.964699, 34.514877, 44.167519>,  <36.151043, 34.368431, 44.205322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.964699, 34.514877, 44.167519>,  <35.654121, 34.758953, 44.104515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.964699, 34.514877, 44.167519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357970, 0.221341, -0.907119,
		0.518652, 0.760707, 0.390288,
		0.776439, -0.610191, 0.157511,
		36.197632, 34.331821, 44.214771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.322342, 35.187717, 44.023071>,  <35.654121, 34.758953, 44.104515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.322342, 35.187717, 44.023071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.409504, 34.800426, 43.973988>,  <36.461800, 34.568054, 43.944538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.409504, 34.800426, 43.973988>,  <36.322342, 35.187717, 44.023071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.409504, 34.800426, 43.973988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529882, 0.222951, -0.818241,
		0.819599, 0.113280, 0.561627,
		0.217906, -0.968225, -0.122705,
		36.474876, 34.509960, 43.937176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.850204, 35.218143, 43.587563>,  <36.322342, 35.187717, 44.023071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.850204, 35.218143, 43.587563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.795433, 34.822098, 43.575378>,  <36.762569, 34.584473, 43.568069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.795433, 34.822098, 43.575378>,  <36.850204, 35.218143, 43.587563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.795433, 34.822098, 43.575378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566671, -0.053076, -0.822233,
		0.812486, -0.129847, 0.568336,
		-0.136929, -0.990112, -0.030457,
		36.754353, 34.525063, 43.566242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542744, 34.813511, 43.339699>,  <36.850204, 35.218143, 43.587563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.542744, 34.813511, 43.339699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.248463, 34.556915, 43.252766>,  <37.071896, 34.402958, 43.200607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.248463, 34.556915, 43.252766>,  <37.542744, 34.813511, 43.339699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.248463, 34.556915, 43.252766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446255, -0.217713, -0.868019,
		0.509513, -0.735586, 0.446441,
		-0.735699, -0.641493, -0.217331,
		37.027752, 34.364468, 43.187565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861973, 34.263966, 43.230377>,  <37.542744, 34.813511, 43.339699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.861973, 34.263966, 43.230377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.514935, 34.195927, 43.043465>,  <37.306713, 34.155106, 42.931316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.514935, 34.195927, 43.043465>,  <37.861973, 34.263966, 43.230377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.514935, 34.195927, 43.043465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496956, -0.330371, -0.802427,
		-0.017889, -0.928398, 0.371156,
		-0.867591, -0.170094, -0.467283,
		37.254658, 34.144897, 42.903278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.871014, 33.506210, 42.988243>,  <37.861973, 34.263966, 43.230377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.871014, 33.506210, 42.988243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.586483, 33.674709, 42.763184>,  <37.415764, 33.775810, 42.628147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.586483, 33.674709, 42.763184>,  <37.871014, 33.506210, 42.988243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.586483, 33.674709, 42.763184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318545, -0.520359, -0.792310,
		-0.626535, -0.742817, 0.235958,
		-0.711325, 0.421247, -0.562644,
		37.373085, 33.801083, 42.594391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.507801, 32.939758, 42.603622>,  <37.871014, 33.506210, 42.988243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.507801, 32.939758, 42.603622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.422104, 33.276554, 42.405571>,  <37.370686, 33.478630, 42.286739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.422104, 33.276554, 42.405571>,  <37.507801, 32.939758, 42.603622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.422104, 33.276554, 42.405571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299271, -0.425940, -0.853822,
		-0.929805, -0.331102, -0.160729,
		-0.214241, 0.841990, -0.495130,
		37.357830, 33.529152, 42.257030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.309471, 32.739246, 41.991611>,  <37.507801, 32.939758, 42.603622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.309471, 32.739246, 41.991611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.355381, 33.121422, 41.882824>,  <37.382927, 33.350727, 41.817551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.355381, 33.121422, 41.882824>,  <37.309471, 32.739246, 41.991611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.355381, 33.121422, 41.882824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250400, -0.292766, -0.922815,
		-0.961315, 0.037819, -0.272844,
		0.114780, 0.955436, -0.271970,
		37.389816, 33.408054, 41.801231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.889179, 32.883350, 41.378944>,  <37.309471, 32.739246, 41.991611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.889179, 32.883350, 41.378944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.191154, 33.145531, 41.370365>,  <37.372337, 33.302837, 41.365215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.191154, 33.145531, 41.370365>,  <36.889179, 32.883350, 41.378944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.191154, 33.145531, 41.370365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219029, -0.282835, -0.933826,
		-0.618142, 0.700280, -0.357084,
		0.754935, 0.655449, -0.021450,
		37.417637, 33.342167, 41.363930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.819801, 33.210812, 40.732277>,  <36.889179, 32.883350, 41.378944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.819801, 33.210812, 40.732277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.201820, 33.263756, 40.838387>,  <37.431030, 33.295521, 40.902054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.201820, 33.263756, 40.838387>,  <36.819801, 33.210812, 40.732277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.201820, 33.263756, 40.838387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288277, -0.205837, -0.935162,
		-0.069173, 0.969594, -0.234739,
		0.955045, 0.132358, 0.265274,
		37.488335, 33.303463, 40.917969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.134361, 33.612148, 40.216053>,  <36.819801, 33.210812, 40.732277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.134361, 33.612148, 40.216053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.457893, 33.456509, 40.392414>,  <37.652012, 33.363125, 40.498230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.457893, 33.456509, 40.392414>,  <37.134361, 33.612148, 40.216053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.457893, 33.456509, 40.392414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482762, 0.011257, -0.875679,
		0.335760, 0.921128, 0.196946,
		0.808830, -0.389096, 0.440906,
		37.700542, 33.339779, 40.524685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.590569, 33.879925, 39.819710>,  <37.134361, 33.612148, 40.216053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.590569, 33.879925, 39.819710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.814762, 33.618195, 40.022770>,  <37.949280, 33.461155, 40.144608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.814762, 33.618195, 40.022770>,  <37.590569, 33.879925, 39.819710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.814762, 33.618195, 40.022770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648848, -0.033969, -0.760160,
		0.514640, 0.755446, 0.405521,
		0.560484, -0.654330, 0.507651,
		37.982906, 33.421894, 40.175064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.203846, 34.152374, 39.966686>,  <37.590569, 33.879925, 39.819710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.203846, 34.152374, 39.966686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.284290, 33.760559, 39.969921>,  <38.332558, 33.525471, 39.971863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.284290, 33.760559, 39.969921>,  <38.203846, 34.152374, 39.966686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.284290, 33.760559, 39.969921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728527, 0.144049, -0.669700,
		0.654829, 0.140581, 0.742588,
		0.201116, -0.979534, 0.008090,
		38.344624, 33.466698, 39.972347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.928356, 34.064983, 40.050369>,  <38.203846, 34.152374, 39.966686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.928356, 34.064983, 40.050369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.779579, 33.739262, 39.872124>,  <38.690315, 33.543827, 39.765175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.779579, 33.739262, 39.872124>,  <38.928356, 34.064983, 40.050369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.779579, 33.739262, 39.872124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705420, 0.064080, -0.705887,
		0.603361, -0.576891, 0.550592,
		-0.371938, -0.814304, -0.445614,
		38.667999, 33.494972, 39.738438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.495304, 33.744530, 39.852535>,  <38.928356, 34.064983, 40.050369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.495304, 33.744530, 39.852535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.210941, 33.548904, 39.650375>,  <39.040321, 33.431530, 39.529079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.210941, 33.548904, 39.650375>,  <39.495304, 33.744530, 39.852535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.210941, 33.548904, 39.650375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614946, -0.083574, -0.784128,
		0.341248, -0.868237, 0.360159,
		-0.710909, -0.489061, -0.505399,
		38.997669, 33.402187, 39.498756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.859745, 33.202763, 39.553791>,  <39.495304, 33.744530, 39.852535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.859745, 33.202763, 39.553791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.528416, 33.250225, 39.334770>,  <39.329620, 33.278702, 39.203358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.528416, 33.250225, 39.334770>,  <39.859745, 33.202763, 39.553791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.528416, 33.250225, 39.334770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544437, -0.060134, -0.836644,
		-0.132199, -0.991113, -0.014791,
		-0.828319, 0.118657, -0.547547,
		39.279919, 33.285820, 39.170506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.938663, 32.935101, 39.002892>,  <39.859745, 33.202763, 39.553791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.938663, 32.935101, 39.002892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.623947, 33.148090, 38.878033>,  <39.435116, 33.275883, 38.803120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.623947, 33.148090, 38.878033>,  <39.938663, 32.935101, 39.002892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.623947, 33.148090, 38.878033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439803, 0.128830, -0.888806,
		-0.433053, -0.836585, -0.335546,
		-0.786790, 0.532474, -0.312143,
		39.387909, 33.307831, 38.784389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.850552, 32.671471, 38.348309>,  <39.938663, 32.935101, 39.002892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.850552, 32.671471, 38.348309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.657177, 33.021542, 38.355804>,  <39.541153, 33.231583, 38.360302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.657177, 33.021542, 38.355804>,  <39.850552, 32.671471, 38.348309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.657177, 33.021542, 38.355804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418619, 0.249936, -0.873092,
		-0.768793, -0.414243, -0.487195,
		-0.483440, 0.875177, 0.018739,
		39.512146, 33.284096, 38.361427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.728401, 32.781261, 37.568733>,  <39.850552, 32.671471, 38.348309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.728401, 32.781261, 37.568733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.678005, 33.120937, 37.773869>,  <39.647766, 33.324741, 37.896950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.678005, 33.120937, 37.773869>,  <39.728401, 32.781261, 37.568733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.678005, 33.120937, 37.773869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345260, 0.522173, -0.779828,
		-0.930012, 0.078811, -0.358980,
		-0.125991, 0.849191, 0.512837,
		39.640209, 33.375694, 37.927719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.456238, 33.264290, 37.062958>,  <39.728401, 32.781261, 37.568733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.456238, 33.264290, 37.062958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.648968, 33.434223, 37.369514>,  <39.764606, 33.536182, 37.553448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.648968, 33.434223, 37.369514>,  <39.456238, 33.264290, 37.062958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.648968, 33.434223, 37.369514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410397, 0.663350, -0.625732,
		-0.774218, 0.616021, 0.145271,
		0.481830, 0.424834, 0.766392,
		39.793518, 33.561672, 37.599430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.317238, 34.002289, 37.014698>,  <39.456238, 33.264290, 37.062958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.317238, 34.002289, 37.014698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.654305, 33.950352, 37.223717>,  <39.856544, 33.919189, 37.349129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.654305, 33.950352, 37.223717>,  <39.317238, 34.002289, 37.014698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.654305, 33.950352, 37.223717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462432, 0.671650, -0.578829,
		-0.275810, 0.729402, 0.626021,
		0.842666, -0.129845, 0.522546,
		39.907104, 33.911400, 37.380482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.691906, 34.592445, 36.926975>,  <39.317238, 34.002289, 37.014698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.691906, 34.592445, 36.926975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.980480, 34.348972, 37.059052>,  <40.153625, 34.202888, 37.138298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.980480, 34.348972, 37.059052>,  <39.691906, 34.592445, 36.926975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.980480, 34.348972, 37.059052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665052, 0.476153, -0.575313,
		0.192962, 0.634649, 0.748322,
		0.721437, -0.608686, 0.330195,
		40.196911, 34.166367, 37.158112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.166977, 35.106049, 36.893394>,  <39.691906, 34.592445, 36.926975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.166977, 35.106049, 36.893394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.383381, 34.773499, 36.944187>,  <40.513226, 34.573971, 36.974663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.383381, 34.773499, 36.944187>,  <40.166977, 35.106049, 36.893394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.383381, 34.773499, 36.944187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730284, 0.389512, -0.561218,
		0.417120, 0.396360, 0.817869,
		0.541014, -0.831372, 0.126982,
		40.545685, 34.524086, 36.982281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.743370, 35.284184, 37.330708>,  <40.166977, 35.106049, 36.893394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.743370, 35.284184, 37.330708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.813328, 34.973175, 37.089088>,  <40.855305, 34.786572, 36.944118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.813328, 34.973175, 37.089088>,  <40.743370, 35.284184, 37.330708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.813328, 34.973175, 37.089088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830853, 0.445733, -0.333174,
		0.528293, -0.443601, 0.723965,
		0.174898, -0.777522, -0.604045,
		40.865799, 34.739918, 36.907875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.472740, 35.286865, 37.214825>,  <40.743370, 35.284184, 37.330708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.472740, 35.286865, 37.214825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.361900, 35.037079, 36.922726>,  <41.295399, 34.887207, 36.747467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.361900, 35.037079, 36.922726>,  <41.472740, 35.286865, 37.214825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.361900, 35.037079, 36.922726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861118, 0.175761, -0.477058,
		0.426257, -0.761016, 0.489040,
		-0.277095, -0.624470, -0.730244,
		41.278770, 34.849739, 36.703651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.080528, 34.989937, 36.993462>,  <41.472740, 35.286865, 37.214825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.080528, 34.989937, 36.993462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.830650, 34.931721, 36.686588>,  <41.680725, 34.896790, 36.502464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.830650, 34.931721, 36.686588>,  <42.080528, 34.989937, 36.993462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.830650, 34.931721, 36.686588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771804, 0.034181, -0.634941,
		0.118634, -0.988762, 0.090978,
		-0.624696, -0.145543, -0.767185,
		41.643242, 34.888058, 36.456432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.458107, 34.479481, 36.534908>,  <42.080528, 34.989937, 36.993462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.458107, 34.479481, 36.534908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.163616, 34.647171, 36.322411>,  <41.986923, 34.747784, 36.194912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.163616, 34.647171, 36.322411>,  <42.458107, 34.479481, 36.534908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.163616, 34.647171, 36.322411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647420, 0.207763, -0.733268,
		-0.197032, -0.883789, -0.424376,
		-0.736224, 0.419227, -0.531247,
		41.942749, 34.772938, 36.163036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.521275, 34.189983, 35.871975>,  <42.458107, 34.479481, 36.534908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.521275, 34.189983, 35.871975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.301323, 34.515854, 35.798290>,  <42.169353, 34.711376, 35.754082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.301323, 34.515854, 35.798290>,  <42.521275, 34.189983, 35.871975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.301323, 34.515854, 35.798290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572136, 0.206707, -0.793683,
		-0.608521, -0.541819, -0.579771,
		-0.549875, 0.814681, -0.184208,
		42.136360, 34.760258, 35.743027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.169800, 34.024982, 35.266273>,  <42.521275, 34.189983, 35.871975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.169800, 34.024982, 35.266273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.238106, 34.408211, 35.358307>,  <42.279087, 34.638149, 35.413528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.238106, 34.408211, 35.358307>,  <42.169800, 34.024982, 35.266273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.238106, 34.408211, 35.358307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667910, 0.059121, -0.741890,
		-0.724387, 0.280360, -0.629810,
		0.170761, 0.958072, 0.230082,
		42.289333, 34.695633, 35.427330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.052071, 34.460297, 34.525826>,  <42.169800, 34.024982, 35.266273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.052071, 34.460297, 34.525826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.289413, 34.632160, 34.798096>,  <42.431820, 34.735279, 34.961456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.289413, 34.632160, 34.798096>,  <42.052071, 34.460297, 34.525826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.289413, 34.632160, 34.798096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631948, 0.275106, -0.724540,
		-0.498562, 0.860064, -0.108285,
		0.593361, 0.429658, 0.680674,
		42.467422, 34.761059, 35.002296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.285343, 35.137760, 34.325764>,  <42.052071, 34.460297, 34.525826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.285343, 35.137760, 34.325764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.563599, 34.960346, 34.551811>,  <42.730553, 34.853897, 34.687439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.563599, 34.960346, 34.551811>,  <42.285343, 35.137760, 34.325764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.563599, 34.960346, 34.551811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717509, 0.467941, -0.515957,
		-0.035595, 0.764398, 0.643761,
		0.695639, -0.443539, 0.565119,
		42.772289, 34.827286, 34.721348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.871994, 35.578392, 34.318207>,  <42.285343, 35.137760, 34.325764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.871994, 35.578392, 34.318207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.998138, 35.210167, 34.410393>,  <43.073826, 34.989231, 34.465702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.998138, 35.210167, 34.410393>,  <42.871994, 35.578392, 34.318207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.998138, 35.210167, 34.410393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799323, 0.126782, -0.587375,
		0.511496, 0.369451, 0.775808,
		0.315364, -0.920561, 0.230463,
		43.092747, 34.933998, 34.479530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.677708, 35.695217, 34.251774>,  <42.871994, 35.578392, 34.318207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.677708, 35.695217, 34.251774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.536728, 35.325512, 34.193092>,  <43.452141, 35.103687, 34.157883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.536728, 35.325512, 34.193092>,  <43.677708, 35.695217, 34.251774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.536728, 35.325512, 34.193092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742502, -0.180757, -0.644994,
		0.569625, -0.336254, 0.749974,
		-0.352445, -0.924262, -0.146706,
		43.430996, 35.048233, 34.149082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.273380, 35.169556, 34.383026>,  <43.677708, 35.695217, 34.251774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.273380, 35.169556, 34.383026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.989983, 35.076309, 34.116585>,  <43.819942, 35.020363, 33.956722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.989983, 35.076309, 34.116585>,  <44.273380, 35.169556, 34.383026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.989983, 35.076309, 34.116585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692216, -0.045838, -0.720233,
		0.137363, -0.971369, 0.193840,
		-0.708497, -0.233112, -0.666101,
		43.777435, 35.006374, 33.916756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.390068, 34.558998, 34.116409>,  <44.273380, 35.169556, 34.383026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.390068, 34.558998, 34.116409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.196411, 34.795689, 33.858582>,  <44.080215, 34.937702, 33.703884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.196411, 34.795689, 33.858582>,  <44.390068, 34.558998, 34.116409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.196411, 34.795689, 33.858582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738129, -0.119380, -0.664014,
		-0.469860, -0.797253, -0.378970,
		-0.484146, 0.591723, -0.644567,
		44.051167, 34.973206, 33.665211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.488838, 33.802727, 34.254448>,  <44.390068, 34.558998, 34.116409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.488838, 33.802727, 34.254448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.490650, 34.156189, 34.441696>,  <44.491737, 34.368267, 34.554047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.490650, 34.156189, 34.441696>,  <44.488838, 33.802727, 34.254448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.490650, 34.156189, 34.441696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000556, -0.468130, 0.883659,
		0.999990, -0.003742, -0.002612,
		0.004529, 0.883652, 0.468123,
		44.492008, 34.421284, 34.582134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.989094, 33.697216, 34.878338>,  <44.488838, 33.802727, 34.254448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.989094, 33.697216, 34.878338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.763531, 34.022240, 34.937340>,  <44.628193, 34.217255, 34.972740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.763531, 34.022240, 34.937340>,  <44.989094, 33.697216, 34.878338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.763531, 34.022240, 34.937340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155888, -0.280131, 0.947220,
		0.810993, 0.511148, 0.284636,
		-0.563905, 0.812560, 0.147503,
		44.594360, 34.266006, 34.981590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.332233, 34.077484, 35.373581>,  <44.989094, 33.697216, 34.878338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.332233, 34.077484, 35.373581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.937824, 34.142170, 35.389576>,  <44.701180, 34.180981, 35.399174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.937824, 34.142170, 35.389576>,  <45.332233, 34.077484, 35.373581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.937824, 34.142170, 35.389576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027671, -0.395691, 0.917967,
		0.164270, 0.904034, 0.394637,
		-0.986027, 0.161715, 0.039985,
		44.642017, 34.190685, 35.401573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.166195, 34.271793, 36.088047>,  <45.332233, 34.077484, 35.373581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.166195, 34.271793, 36.088047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.795925, 34.198196, 35.955814>,  <44.573765, 34.154037, 35.876476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.795925, 34.198196, 35.955814>,  <45.166195, 34.271793, 36.088047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.795925, 34.198196, 35.955814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225206, -0.434137, 0.872243,
		-0.304001, 0.881857, 0.360432,
		-0.925670, -0.183991, -0.330578,
		44.518223, 34.142998, 35.856640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.772247, 34.425568, 36.657730>,  <45.166195, 34.271793, 36.088047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.772247, 34.425568, 36.657730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.540127, 34.180946, 36.442600>,  <44.400856, 34.034176, 36.313522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.540127, 34.180946, 36.442600>,  <44.772247, 34.425568, 36.657730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.540127, 34.180946, 36.442600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301546, -0.452114, 0.839442,
		-0.756522, 0.649306, 0.077950,
		-0.580297, -0.611551, -0.537829,
		44.366039, 33.997482, 36.281250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.135159, 34.513340, 36.966133>,  <44.772247, 34.425568, 36.657730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.135159, 34.513340, 36.966133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.075703, 34.172493, 36.765415>,  <44.040028, 33.967983, 36.644985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.075703, 34.172493, 36.765415>,  <44.135159, 34.513340, 36.966133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.075703, 34.172493, 36.765415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385062, -0.417508, 0.823051,
		-0.910841, 0.315564, -0.266059,
		-0.148644, -0.852118, -0.501796,
		44.031109, 33.916859, 36.614876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.462513, 34.350239, 37.154339>,  <44.135159, 34.513340, 36.966133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.462513, 34.350239, 37.154339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.647724, 34.020302, 37.024570>,  <43.758850, 33.822342, 36.946709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.647724, 34.020302, 37.024570>,  <43.462513, 34.350239, 37.154339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.647724, 34.020302, 37.024570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384182, -0.516621, 0.765184,
		-0.798757, -0.229661, -0.556096,
		0.463024, -0.824838, -0.324423,
		43.786633, 33.772850, 36.927242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.823261, 33.770229, 37.237015>,  <43.462513, 34.350239, 37.154339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.823261, 33.770229, 37.237015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.168468, 33.571491, 37.200481>,  <43.375595, 33.452248, 37.178562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.168468, 33.571491, 37.200481>,  <42.823261, 33.770229, 37.237015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.168468, 33.571491, 37.200481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265784, -0.600339, 0.754289,
		-0.429594, -0.626693, -0.650158,
		0.863023, -0.496840, -0.091337,
		43.427376, 33.422440, 37.173080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.713909, 33.092232, 37.034428>,  <42.823261, 33.770229, 37.237015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.713909, 33.092232, 37.034428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.053692, 33.139717, 37.240082>,  <43.257561, 33.168209, 37.363472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.053692, 33.139717, 37.240082>,  <42.713909, 33.092232, 37.034428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.053692, 33.139717, 37.240082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324549, -0.650714, 0.686468,
		0.416045, -0.749986, -0.514226,
		0.849456, 0.118710, 0.514133,
		43.308529, 33.175331, 37.394321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.792847, 32.413616, 37.384388>,  <42.713909, 33.092232, 37.034428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.792847, 32.413616, 37.384388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.026535, 32.664440, 37.590492>,  <43.166748, 32.814934, 37.714153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.026535, 32.664440, 37.590492>,  <42.792847, 32.413616, 37.384388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.026535, 32.664440, 37.590492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352930, -0.375413, 0.857033,
		0.730842, -0.682544, 0.001984,
		0.584218, 0.627056, 0.515258,
		43.201801, 32.852558, 37.745071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.138630, 31.999468, 37.899189>,  <42.792847, 32.413616, 37.384388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.138630, 31.999468, 37.899189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.170528, 32.368595, 38.049946>,  <43.189667, 32.590073, 38.140400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.170528, 32.368595, 38.049946>,  <43.138630, 31.999468, 37.899189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.170528, 32.368595, 38.049946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203721, -0.355025, 0.912390,
		0.975776, -0.149544, 0.159684,
		0.079750, 0.922819, 0.376890,
		43.194454, 32.645439, 38.163013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.592693, 31.973345, 38.438015>,  <43.138630, 31.999468, 37.899189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.592693, 31.973345, 38.438015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.392208, 32.307629, 38.527790>,  <43.271915, 32.508198, 38.581654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.392208, 32.307629, 38.527790>,  <43.592693, 31.973345, 38.438015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.392208, 32.307629, 38.527790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090025, -0.308318, 0.947014,
		0.860628, 0.454452, 0.229768,
		-0.501214, 0.835712, 0.224434,
		43.241844, 32.558342, 38.595119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.899933, 32.198368, 39.107861>,  <43.592693, 31.973345, 38.438015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.899933, 32.198368, 39.107861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.569649, 32.422134, 39.078865>,  <43.371479, 32.556396, 39.061466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.569649, 32.422134, 39.078865>,  <43.899933, 32.198368, 39.107861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.569649, 32.422134, 39.078865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194940, -0.162386, 0.967279,
		0.529343, 0.812822, 0.243137,
		-0.825708, 0.559420, -0.072493,
		43.321938, 32.589962, 39.057117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.887058, 32.648308, 39.720810>,  <43.899933, 32.198368, 39.107861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.887058, 32.648308, 39.720810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.504868, 32.658268, 39.603207>,  <43.275555, 32.664246, 39.532646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.504868, 32.658268, 39.603207>,  <43.887058, 32.648308, 39.720810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.504868, 32.658268, 39.603207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294269, -0.007427, 0.955694,
		0.021613, 0.999662, 0.014423,
		-0.955478, 0.024900, -0.294009,
		43.218224, 32.665737, 39.515003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.567364, 33.149742, 40.061203>,  <43.887058, 32.648308, 39.720810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.567364, 33.149742, 40.061203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.275162, 32.893612, 39.966251>,  <43.099842, 32.739933, 39.909283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.275162, 32.893612, 39.966251>,  <43.567364, 33.149742, 40.061203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.275162, 32.893612, 39.966251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411812, 0.135759, 0.901100,
		-0.544770, 0.756012, -0.362866,
		-0.730504, -0.640325, -0.237377,
		43.056011, 32.701515, 39.895039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.857922, 33.447567, 40.214733>,  <43.567364, 33.149742, 40.061203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.857922, 33.447567, 40.214733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.785629, 33.054153, 40.215412>,  <42.742252, 32.818108, 40.215820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.785629, 33.054153, 40.215412>,  <42.857922, 33.447567, 40.214733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.785629, 33.054153, 40.215412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505619, 0.094391, 0.857578,
		-0.843614, 0.154137, -0.514351,
		-0.180735, -0.983531, 0.001695,
		42.731407, 32.759094, 40.215919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.219582, 33.378597, 40.628170>,  <42.857922, 33.447567, 40.214733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.219582, 33.378597, 40.628170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.369980, 33.008018, 40.620945>,  <42.460220, 32.785671, 40.616608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.369980, 33.008018, 40.620945>,  <42.219582, 33.378597, 40.628170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.369980, 33.008018, 40.620945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491888, -0.216078, 0.843419,
		-0.785285, -0.308238, -0.536952,
		0.375997, -0.926445, -0.018064,
		42.482780, 32.730083, 40.615524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.614243, 33.057899, 40.743465>,  <42.219582, 33.378597, 40.628170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.614243, 33.057899, 40.743465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.927170, 32.826611, 40.836105>,  <42.114925, 32.687836, 40.891689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.927170, 32.826611, 40.836105>,  <41.614243, 33.057899, 40.743465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.927170, 32.826611, 40.836105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419156, -0.213661, 0.882415,
		-0.460750, -0.787404, -0.409517,
		0.782316, -0.578224, 0.231601,
		42.161865, 32.653145, 40.905586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.330322, 32.334438, 41.065632>,  <41.614243, 33.057899, 40.743465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.330322, 32.334438, 41.065632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.713020, 32.356155, 41.179958>,  <41.942638, 32.369186, 41.248554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.713020, 32.356155, 41.179958>,  <41.330322, 32.334438, 41.065632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.713020, 32.356155, 41.179958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269187, -0.207449, 0.940480,
		0.110354, -0.976738, -0.183861,
		0.956745, 0.054293, 0.285819,
		42.000042, 32.372444, 41.265705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.465691, 31.747650, 41.572765>,  <41.330322, 32.334438, 41.065632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.465691, 31.747650, 41.572765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.771614, 32.000916, 41.620373>,  <41.955170, 32.152874, 41.648937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.771614, 32.000916, 41.620373>,  <41.465691, 31.747650, 41.572765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.771614, 32.000916, 41.620373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286549, 0.168851, 0.943069,
		0.577019, -0.755377, 0.310571,
		0.764813, 0.633163, 0.119023,
		42.001057, 32.190865, 41.656078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.729954, 31.485315, 42.181335>,  <41.465691, 31.747650, 41.572765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.729954, 31.485315, 42.181335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.846832, 31.866552, 42.149754>,  <41.916962, 32.095295, 42.130802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.846832, 31.866552, 42.149754>,  <41.729954, 31.485315, 42.181335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.846832, 31.866552, 42.149754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400168, 0.196834, 0.895054,
		0.868611, -0.229938, 0.438912,
		0.292200, 0.953092, -0.078958,
		41.934494, 32.152481, 42.126064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.181953, 31.724186, 42.753899>,  <41.729954, 31.485315, 42.181335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.181953, 31.724186, 42.753899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.001442, 32.053883, 42.617092>,  <41.893135, 32.251701, 42.535007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.001442, 32.053883, 42.617092>,  <42.181953, 31.724186, 42.753899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.001442, 32.053883, 42.617092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363067, 0.180524, 0.914108,
		0.815187, 0.536692, 0.217788,
		-0.451279, 0.824240, -0.342016,
		41.866058, 32.301155, 42.514488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.314480, 32.276367, 43.200790>,  <42.181953, 31.724186, 42.753899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.314480, 32.276367, 43.200790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.957985, 32.292606, 43.020103>,  <41.744087, 32.302349, 42.911690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.957985, 32.292606, 43.020103>,  <42.314480, 32.276367, 43.200790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.957985, 32.292606, 43.020103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430233, 0.239493, 0.870369,
		0.143516, 0.970049, -0.195979,
		-0.891236, 0.040595, -0.451719,
		41.690613, 32.304787, 42.884586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.779327, 32.845661, 43.325024>,  <42.314480, 32.276367, 43.200790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.779327, 32.845661, 43.325024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.575195, 32.516865, 43.223907>,  <41.452717, 32.319588, 43.163239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.575195, 32.516865, 43.223907>,  <41.779327, 32.845661, 43.325024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.575195, 32.516865, 43.223907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455921, 0.009359, 0.889971,
		-0.729180, 0.569427, -0.379538,
		-0.510326, -0.821988, -0.252789,
		41.422096, 32.270267, 43.148071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.025047, 32.947384, 43.412624>,  <41.779327, 32.845661, 43.325024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.025047, 32.947384, 43.412624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.119518, 32.563457, 43.473244>,  <41.176201, 32.333099, 43.509617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.119518, 32.563457, 43.473244>,  <41.025047, 32.947384, 43.412624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.119518, 32.563457, 43.473244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425225, 0.038149, 0.904283,
		-0.873731, -0.278009, -0.399130,
		0.236173, -0.959820, 0.151548,
		41.190369, 32.275513, 43.518707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.432468, 33.211594, 43.731846>,  <41.025047, 32.947384, 43.412624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.432468, 33.211594, 43.731846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.663353, 33.441998, 43.500317>,  <40.801884, 33.580242, 43.361401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.663353, 33.441998, 43.500317>,  <40.432468, 33.211594, 43.731846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.663353, 33.441998, 43.500317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816235, 0.427936, -0.388111,
		0.024141, 0.696476, 0.717174,
		0.577214, 0.576013, -0.578819,
		40.836517, 33.614803, 43.326672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.437351, 34.010765, 43.827114>,  <40.432468, 33.211594, 43.731846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.437351, 34.010765, 43.827114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.484165, 33.875851, 43.453476>,  <40.512253, 33.794903, 43.229294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.484165, 33.875851, 43.453476>,  <40.437351, 34.010765, 43.827114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.484165, 33.875851, 43.453476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831319, 0.481305, -0.277947,
		0.543334, 0.809065, -0.224059,
		0.117037, -0.337282, -0.934100,
		40.519276, 33.774666, 43.173244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.100941, 33.826256, 44.149017>,  <40.437351, 34.010765, 43.827114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.100941, 33.826256, 44.149017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.806786, 33.829041, 44.420059>,  <40.630291, 33.830711, 44.582684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.806786, 33.829041, 44.420059>,  <41.100941, 33.826256, 44.149017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.806786, 33.829041, 44.420059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475328, -0.707389, 0.523129,
		0.482972, 0.706790, 0.516900,
		-0.735392, 0.006959, 0.677606,
		40.586166, 33.831127, 44.623341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.864342, 34.100201, 44.183334>,  <41.100941, 33.826256, 44.149017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.864342, 34.100201, 44.183334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.200325, 33.907101, 44.282459>,  <42.401917, 33.791241, 44.341934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.200325, 33.907101, 44.282459>,  <41.864342, 34.100201, 44.183334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.200325, 33.907101, 44.282459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396741, 0.234771, -0.887400,
		0.370216, 0.843701, 0.388727,
		0.839962, -0.482754, 0.247814,
		42.452312, 33.762276, 44.356804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.441105, 34.604172, 44.049671>,  <41.864342, 34.100201, 44.183334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.441105, 34.604172, 44.049671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.569550, 34.226933, 44.015152>,  <42.646618, 34.000587, 43.994442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.569550, 34.226933, 44.015152>,  <42.441105, 34.604172, 44.049671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.569550, 34.226933, 44.015152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400685, 0.217861, -0.889937,
		0.858102, 0.251190, 0.447844,
		0.321111, -0.943101, -0.086299,
		42.665882, 33.944000, 43.989262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.130348, 34.459930, 44.142029>,  <42.441105, 34.604172, 44.049671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.130348, 34.459930, 44.142029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.957211, 34.207924, 43.884121>,  <42.853329, 34.056721, 43.729378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.957211, 34.207924, 43.884121>,  <43.130348, 34.459930, 44.142029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.957211, 34.207924, 43.884121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586064, 0.346794, -0.732300,
		0.684963, -0.694846, 0.219124,
		-0.432844, -0.630019, -0.644765,
		42.827358, 34.018917, 43.690693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.649517, 34.056961, 43.716320>,  <43.130348, 34.459930, 44.142029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.649517, 34.056961, 43.716320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.300346, 34.085918, 43.523342>,  <43.090843, 34.103294, 43.407555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.300346, 34.085918, 43.523342>,  <43.649517, 34.056961, 43.716320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.300346, 34.085918, 43.523342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484165, 0.249857, -0.838544,
		0.059834, -0.965572, -0.253160,
		-0.872929, 0.072397, -0.482446,
		43.038467, 34.107639, 43.378609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.761944, 33.715172, 43.131031>,  <43.649517, 34.056961, 43.716320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.761944, 33.715172, 43.131031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.456959, 33.961369, 43.051216>,  <43.273968, 34.109085, 43.003326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.456959, 33.961369, 43.051216>,  <43.761944, 33.715172, 43.131031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.456959, 33.961369, 43.051216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484377, 0.338518, -0.806712,
		-0.428980, -0.711740, -0.556239,
		-0.762466, 0.615493, -0.199533,
		43.228218, 34.146015, 42.991356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.529606, 33.601723, 42.446190>,  <43.761944, 33.715172, 43.131031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.529606, 33.601723, 42.446190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.382267, 33.961685, 42.539558>,  <43.293865, 34.177662, 42.595577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.382267, 33.961685, 42.539558>,  <43.529606, 33.601723, 42.446190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.382267, 33.961685, 42.539558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287347, 0.348981, -0.891989,
		-0.884168, -0.261489, -0.387132,
		-0.368347, 0.899909, 0.233420,
		43.271763, 34.231659, 42.609585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.158337, 33.851692, 41.911381>,  <43.529606, 33.601723, 42.446190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.158337, 33.851692, 41.911381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.181919, 34.205803, 42.095901>,  <43.196068, 34.418270, 42.206615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.181919, 34.205803, 42.095901>,  <43.158337, 33.851692, 41.911381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.181919, 34.205803, 42.095901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052091, 0.464208, -0.884193,
		-0.996901, 0.028099, 0.073483,
		0.058957, 0.885280, 0.461305,
		43.199608, 34.471386, 42.234295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.747353, 34.378712, 41.502357>,  <43.158337, 33.851692, 41.911381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.747353, 34.378712, 41.502357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.990318, 34.632030, 41.694180>,  <43.136097, 34.784023, 41.809273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.990318, 34.632030, 41.694180>,  <42.747353, 34.378712, 41.502357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.990318, 34.632030, 41.694180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174621, 0.482473, -0.858328,
		-0.774952, 0.605105, 0.182475,
		0.607418, 0.633299, 0.479557,
		43.172543, 34.822021, 41.838047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.665848, 34.915810, 41.146244>,  <42.747353, 34.378712, 41.502357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.665848, 34.915810, 41.146244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.007732, 35.027943, 41.321003>,  <43.212864, 35.095222, 41.425858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.007732, 35.027943, 41.321003>,  <42.665848, 34.915810, 41.146244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.007732, 35.027943, 41.321003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275133, 0.469059, -0.839217,
		-0.440187, 0.837496, 0.323784,
		0.854715, 0.280329, 0.436896,
		43.264149, 35.112041, 41.452072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.853710, 35.675217, 40.975418>,  <42.665848, 34.915810, 41.146244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.853710, 35.675217, 40.975418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.201630, 35.504044, 41.073669>,  <43.410381, 35.401340, 41.132622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.201630, 35.504044, 41.073669>,  <42.853710, 35.675217, 40.975418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.201630, 35.504044, 41.073669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443028, 0.458169, -0.770589,
		0.217217, 0.779075, 0.588098,
		0.869794, -0.427929, 0.245630,
		43.462566, 35.375664, 41.147358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.407318, 36.204945, 40.929092>,  <42.853710, 35.675217, 40.975418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.407318, 36.204945, 40.929092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.563599, 35.840816, 40.874432>,  <43.657368, 35.622341, 40.841637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.563599, 35.840816, 40.874432>,  <43.407318, 36.204945, 40.929092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.563599, 35.840816, 40.874432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368292, 0.290637, -0.883114,
		0.843631, 0.294707, 0.448815,
		0.390702, -0.910317, -0.136652,
		43.680809, 35.567722, 40.833435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.004986, 36.321236, 40.630280>,  <43.407318, 36.204945, 40.929092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.004986, 36.321236, 40.630280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.950832, 35.935856, 40.537815>,  <43.918339, 35.704628, 40.482338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.950832, 35.935856, 40.537815>,  <44.004986, 36.321236, 40.630280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.950832, 35.935856, 40.537815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364906, 0.168422, -0.915684,
		0.921148, -0.208321, 0.328767,
		-0.135385, -0.963450, -0.231159,
		43.910217, 35.646820, 40.468468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.681503, 36.142971, 40.372013>,  <44.004986, 36.321236, 40.630280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.681503, 36.142971, 40.372013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.437889, 35.852066, 40.245422>,  <44.291721, 35.677525, 40.169468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.437889, 35.852066, 40.245422>,  <44.681503, 36.142971, 40.372013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.437889, 35.852066, 40.245422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394518, 0.068373, -0.916341,
		0.688060, -0.682944, 0.245277,
		-0.609039, -0.727264, -0.316478,
		44.255177, 35.633888, 40.150478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.082081, 35.684334, 39.977486>,  <44.681503, 36.142971, 40.372013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.082081, 35.684334, 39.977486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.706837, 35.607437, 39.862255>,  <44.481689, 35.561298, 39.793118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.706837, 35.607437, 39.862255>,  <45.082081, 35.684334, 39.977486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.706837, 35.607437, 39.862255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292032, 0.008060, -0.956374,
		0.186179, -0.981314, 0.048580,
		-0.938112, -0.192244, -0.288076,
		44.425404, 35.549763, 39.775833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.146034, 35.046341, 39.513287>,  <45.082081, 35.684334, 39.977486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.146034, 35.046341, 39.513287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.816547, 35.232578, 39.383846>,  <44.618855, 35.344318, 39.306183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.816547, 35.232578, 39.383846>,  <45.146034, 35.046341, 39.513287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.816547, 35.232578, 39.383846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376767, 0.022963, -0.926023,
		-0.423718, -0.884702, -0.194334,
		-0.823717, 0.465592, -0.323597,
		44.569431, 35.372257, 39.286766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.786766, 34.685390, 38.880821>,  <45.146034, 35.046341, 39.513287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.786766, 34.685390, 38.880821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.665054, 35.065590, 38.855621>,  <44.592026, 35.293709, 38.840500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.665054, 35.065590, 38.855621>,  <44.786766, 34.685390, 38.880821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.665054, 35.065590, 38.855621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374048, 0.058397, -0.925569,
		-0.876071, -0.305198, -0.373301,
		-0.304281, 0.950497, -0.062999,
		44.573769, 35.350739, 38.836723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.498692, 34.727303, 38.166126>,  <44.786766, 34.685390, 38.880821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.498692, 34.727303, 38.166126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.561909, 35.108528, 38.269417>,  <44.599838, 35.337265, 38.331390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.561909, 35.108528, 38.269417>,  <44.498692, 34.727303, 38.166126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.561909, 35.108528, 38.269417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256721, 0.212861, -0.942754,
		-0.953475, 0.215292, -0.211030,
		0.158047, 0.953068, 0.258227,
		44.609322, 35.394447, 38.346886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.197060, 35.121246, 37.641197>,  <44.498692, 34.727303, 38.166126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.197060, 35.121246, 37.641197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.416561, 35.415108, 37.800777>,  <44.548260, 35.591423, 37.896526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.416561, 35.415108, 37.800777>,  <44.197060, 35.121246, 37.641197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.416561, 35.415108, 37.800777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337499, 0.241915, -0.909709,
		-0.764831, 0.633849, -0.115193,
		0.548751, 0.734652, 0.398948,
		44.581188, 35.635502, 37.920464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.049168, 35.720943, 37.238155>,  <44.197060, 35.121246, 37.641197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.049168, 35.720943, 37.238155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.397335, 35.782497, 37.425213>,  <44.606236, 35.819431, 37.537449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.397335, 35.782497, 37.425213>,  <44.049168, 35.720943, 37.238155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.397335, 35.782497, 37.425213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413766, 0.286075, -0.864268,
		-0.266784, 0.945769, 0.185330,
		0.870416, 0.153889, 0.467647,
		44.658459, 35.828663, 37.565506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.283031, 36.332249, 36.868587>,  <44.049168, 35.720943, 37.238155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.283031, 36.332249, 36.868587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.613953, 36.200546, 37.050648>,  <44.812504, 36.121525, 37.159885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.613953, 36.200546, 37.050648>,  <44.283031, 36.332249, 36.868587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.613953, 36.200546, 37.050648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558445, 0.394141, -0.729926,
		0.060941, 0.858045, 0.509946,
		0.827300, -0.329259, 0.455152,
		44.862144, 36.101768, 37.187195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.822643, 36.780960, 36.721825>,  <44.283031, 36.332249, 36.868587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.822643, 36.780960, 36.721825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.046040, 36.468304, 36.832909>,  <45.180077, 36.280708, 36.899559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.046040, 36.468304, 36.832909>,  <44.822643, 36.780960, 36.721825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.046040, 36.468304, 36.832909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607484, 0.157425, -0.778576,
		0.564851, 0.603530, 0.562756,
		0.558486, -0.781645, 0.277713,
		45.213585, 36.233810, 36.916222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.561481, 36.964855, 36.685532>,  <44.822643, 36.780960, 36.721825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.561481, 36.964855, 36.685532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.556389, 36.567009, 36.644379>,  <45.553333, 36.328300, 36.619686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.556389, 36.567009, 36.644379>,  <45.561481, 36.964855, 36.685532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.556389, 36.567009, 36.644379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643176, 0.070631, -0.762454,
		0.765612, -0.075877, 0.638812,
		-0.012732, -0.994612, -0.102878,
		45.552570, 36.268623, 36.613514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.338207, 36.811974, 36.627476>,  <45.561481, 36.964855, 36.685532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.338207, 36.811974, 36.627476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.154354, 36.465778, 36.547806>,  <46.044041, 36.258060, 36.500004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.154354, 36.465778, 36.547806>,  <46.338207, 36.811974, 36.627476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.154354, 36.465778, 36.547806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706767, -0.220658, -0.672153,
		0.537789, -0.449717, 0.713118,
		-0.459634, -0.865485, -0.199178,
		46.016464, 36.206131, 36.488052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.764992, 36.320095, 36.720589>,  <46.338207, 36.811974, 36.627476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.764992, 36.320095, 36.720589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.490765, 36.192226, 36.458961>,  <46.326229, 36.115505, 36.301987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.490765, 36.192226, 36.458961>,  <46.764992, 36.320095, 36.720589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.490765, 36.192226, 36.458961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693273, -0.012483, -0.720567,
		0.222181, -0.947446, 0.230179,
		-0.685571, -0.319673, -0.654065,
		46.285091, 36.096325, 36.262741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.949970, 35.617485, 36.338238>,  <46.764992, 36.320095, 36.720589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.949970, 35.617485, 36.338238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.721970, 35.868385, 36.125954>,  <46.585171, 36.018925, 35.998585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.721970, 35.868385, 36.125954>,  <46.949970, 35.617485, 36.338238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.721970, 35.868385, 36.125954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687457, 0.010318, -0.726152,
		-0.450006, -0.778746, -0.437092,
		-0.569998, 0.627255, -0.530711,
		46.550972, 36.056561, 35.966740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.957848, 35.393208, 35.650566>,  <46.949970, 35.617485, 36.338238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.957848, 35.393208, 35.650566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.913177, 35.781780, 35.734329>,  <46.886375, 36.014923, 35.784588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.913177, 35.781780, 35.734329>,  <46.957848, 35.393208, 35.650566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.913177, 35.781780, 35.734329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848728, 0.202847, -0.488379,
		-0.516905, 0.123195, -0.847132,
		-0.111673, 0.971430, 0.209412,
		46.879677, 36.073208, 35.797153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.169579, 35.782848, 34.987881>,  <46.957848, 35.393208, 35.650566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.169579, 35.782848, 34.987881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.228928, 36.006569, 35.314114>,  <47.264538, 36.140800, 35.509853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.228928, 36.006569, 35.314114>,  <47.169579, 35.782848, 34.987881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.228928, 36.006569, 35.314114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823102, 0.387296, -0.415337,
		-0.548168, 0.732928, -0.402899,
		0.148371, 0.559301, 0.815578,
		47.273438, 36.174358, 35.558788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.633518, 35.191360, 34.595173>,  <47.169579, 35.782848, 34.987881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.633518, 35.191360, 34.595173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.677956, 35.056866, 34.969254>,  <47.704620, 34.976170, 35.193703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.677956, 35.056866, 34.969254>,  <47.633518, 35.191360, 34.595173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.677956, 35.056866, 34.969254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.979518, 0.121967, 0.160211,
		-0.167932, -0.933847, -0.315799,
		0.111096, -0.336236, 0.935202,
		47.711285, 34.955994, 35.249813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.261902, 38.630371, 41.926167> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.874763, 38.548164, 41.868149>,  <33.642479, 38.498840, 41.833336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.874763, 38.548164, 41.868149>,  <34.261902, 38.630371, 41.926167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.874763, 38.548164, 41.868149> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205869, -0.315818, -0.926216,
		0.144541, -0.926295, 0.347972,
		-0.967846, -0.205513, -0.145047,
		33.584408, 38.486511, 41.824635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.171265, 37.990662, 41.831066>,  <34.261902, 38.630371, 41.926167>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.171265, 37.990662, 41.831066> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.861324, 38.167076, 41.649918>,  <33.675358, 38.272926, 41.541229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.861324, 38.167076, 41.649918>,  <34.171265, 37.990662, 41.831066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.861324, 38.167076, 41.649918> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337605, -0.316960, -0.886318,
		-0.534438, -0.839657, 0.096702,
		-0.774854, 0.441035, -0.452868,
		33.628868, 38.299385, 41.514057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.152893, 37.590855, 41.149151>,  <34.171265, 37.990662, 41.831066>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.152893, 37.590855, 41.149151> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.883560, 37.878948, 41.082348>,  <33.721962, 38.051804, 41.042267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.883560, 37.878948, 41.082348>,  <34.152893, 37.590855, 41.149151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.883560, 37.878948, 41.082348> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251685, 0.010888, -0.967748,
		-0.695184, -0.693649, -0.188603,
		-0.673330, 0.720231, -0.167012,
		33.681561, 38.095016, 41.032246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.747116, 37.332413, 40.692844>,  <34.152893, 37.590855, 41.149151>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.747116, 37.332413, 40.692844> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.734810, 37.730381, 40.654499>,  <33.727428, 37.969162, 40.631493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.734810, 37.730381, 40.654499>,  <33.747116, 37.332413, 40.692844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.734810, 37.730381, 40.654499> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231605, -0.086201, -0.968983,
		-0.972323, -0.052011, -0.227776,
		-0.030763, 0.994919, -0.095861,
		33.725582, 38.028858, 40.625740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.381454, 37.585075, 39.994331>,  <33.747116, 37.332413, 40.692844>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.381454, 37.585075, 39.994331> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.612385, 37.893162, 40.102741>,  <33.750942, 38.078014, 40.167789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.612385, 37.893162, 40.102741>,  <33.381454, 37.585075, 39.994331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.612385, 37.893162, 40.102741> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486614, -0.058014, -0.871689,
		-0.655668, 0.635136, -0.408292,
		0.577327, 0.770219, 0.271028,
		33.785583, 38.124226, 40.184052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.549477, 37.930515, 39.345764>,  <33.381454, 37.585075, 39.994331>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.549477, 37.930515, 39.345764> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.845966, 38.057365, 39.582413>,  <34.023861, 38.133476, 39.724400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.845966, 38.057365, 39.582413>,  <33.549477, 37.930515, 39.345764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.845966, 38.057365, 39.582413> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617826, 0.022265, -0.786000,
		-0.262434, 0.948122, -0.179426,
		0.741228, 0.317127, 0.591617,
		34.068336, 38.152504, 39.759899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.808475, 38.589905, 39.174435>,  <33.549477, 37.930515, 39.345764>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.808475, 38.589905, 39.174435> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.093525, 38.397640, 39.378838>,  <34.264553, 38.282280, 39.501480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.093525, 38.397640, 39.378838>,  <33.808475, 38.589905, 39.174435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.093525, 38.397640, 39.378838> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619598, 0.089583, -0.779791,
		0.329041, 0.872316, 0.361658,
		0.712622, -0.480665, 0.511009,
		34.307312, 38.253441, 39.532139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.321045, 38.853039, 38.826809>,  <33.808475, 38.589905, 39.174435>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.321045, 38.853039, 38.826809> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.488533, 38.543449, 39.016811>,  <34.589027, 38.357697, 39.130814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.488533, 38.543449, 39.016811>,  <34.321045, 38.853039, 38.826809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.488533, 38.543449, 39.016811> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647087, -0.112698, -0.754041,
		0.637141, 0.623107, 0.453639,
		0.418724, -0.773975, 0.475009,
		34.614151, 38.311256, 39.159313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.094357, 38.944489, 38.746765>,  <34.321045, 38.853039, 38.826809>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.094357, 38.944489, 38.746765> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.983337, 38.565994, 38.813232>,  <34.916725, 38.338898, 38.853111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.983337, 38.565994, 38.813232>,  <35.094357, 38.944489, 38.746765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.983337, 38.565994, 38.813232> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573248, -0.301909, -0.761734,
		0.770944, -0.116163, 0.626220,
		-0.277546, -0.946233, 0.166165,
		34.900074, 38.282124, 38.863083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.669823, 38.632473, 38.757488>,  <35.094357, 38.944489, 38.746765>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.669823, 38.632473, 38.757488> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.428268, 38.319767, 38.695309>,  <35.283337, 38.132145, 38.658001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.428268, 38.319767, 38.695309>,  <35.669823, 38.632473, 38.757488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.428268, 38.319767, 38.695309> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721530, -0.453290, -0.523376,
		0.338690, -0.428225, 0.837802,
		-0.603890, -0.781762, -0.155452,
		35.247101, 38.085239, 38.648674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.036602, 37.958454, 38.851387>,  <35.669823, 38.632473, 38.757488>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.036602, 37.958454, 38.851387> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.731068, 37.905060, 38.598804>,  <35.547749, 37.873024, 38.447254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.731068, 37.905060, 38.598804>,  <36.036602, 37.958454, 38.851387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.731068, 37.905060, 38.598804> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632161, -0.351989, -0.690272,
		-0.130126, -0.926437, 0.353245,
		-0.763832, -0.133485, -0.631460,
		35.501919, 37.865013, 38.409367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.186306, 37.375122, 38.429882>,  <36.036602, 37.958454, 38.851387>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.186306, 37.375122, 38.429882> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.892723, 37.539192, 38.213341>,  <35.716572, 37.637634, 38.083416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.892723, 37.539192, 38.213341>,  <36.186306, 37.375122, 38.429882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.892723, 37.539192, 38.213341> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479839, -0.250953, -0.840701,
		-0.480688, -0.876801, -0.012629,
		-0.733958, 0.410175, -0.541353,
		35.672535, 37.662243, 38.050934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.078266, 36.889523, 37.955482>,  <36.186306, 37.375122, 38.429882>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.078266, 36.889523, 37.955482> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.914146, 37.211868, 37.784729>,  <35.815674, 37.405277, 37.682278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.914146, 37.211868, 37.784729>,  <36.078266, 36.889523, 37.955482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.914146, 37.211868, 37.784729> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340995, -0.298577, -0.891389,
		-0.845800, -0.511302, -0.152291,
		-0.410298, 0.805868, -0.426888,
		35.791058, 37.453629, 37.656662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.735249, 36.551987, 37.462837>,  <36.078266, 36.889523, 37.955482>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.735249, 36.551987, 37.462837> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.780262, 36.932590, 37.348324>,  <35.807270, 37.160954, 37.279617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.780262, 36.932590, 37.348324>,  <35.735249, 36.551987, 37.462837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.780262, 36.932590, 37.348324> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444632, -0.305881, -0.841867,
		-0.888616, -0.032551, -0.457495,
		0.112536, 0.951513, -0.286284,
		35.814022, 37.218044, 37.262440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.566891, 36.489140, 36.733631>,  <35.735249, 36.551987, 37.462837>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.566891, 36.489140, 36.733631> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.800682, 36.806156, 36.803215>,  <35.940956, 36.996365, 36.844967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.800682, 36.806156, 36.803215>,  <35.566891, 36.489140, 36.733631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.800682, 36.806156, 36.803215> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568462, -0.246973, -0.784764,
		-0.578992, 0.557572, -0.594880,
		0.584482, 0.792539, 0.173963,
		35.976028, 37.043919, 36.855404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.799835, 36.669910, 36.044357>,  <35.566891, 36.489140, 36.733631>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.799835, 36.669910, 36.044357> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.044731, 36.860245, 36.296940>,  <36.191669, 36.974445, 36.448490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.044731, 36.860245, 36.296940>,  <35.799835, 36.669910, 36.044357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.044731, 36.860245, 36.296940> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760468, -0.135752, -0.635028,
		-0.216448, 0.868994, -0.444972,
		0.612241, 0.475838, 0.631458,
		36.228405, 37.002995, 36.486378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.308369, 37.174595, 35.701122>,  <35.799835, 36.669910, 36.044357>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.308369, 37.174595, 35.701122> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.481148, 37.049240, 36.039402>,  <36.584816, 36.974026, 36.242371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.481148, 37.049240, 36.039402>,  <36.308369, 37.174595, 35.701122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.481148, 37.049240, 36.039402> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867999, -0.110227, -0.484177,
		0.244955, 0.943206, 0.224409,
		0.431943, -0.313388, 0.845703,
		36.610729, 36.955223, 36.293114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.933117, 37.487926, 35.651817>,  <36.308369, 37.174595, 35.701122>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.933117, 37.487926, 35.651817> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.986347, 37.230217, 35.953068>,  <37.018284, 37.075592, 36.133820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.986347, 37.230217, 35.953068>,  <36.933117, 37.487926, 35.651817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.986347, 37.230217, 35.953068> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936183, -0.167734, -0.308911,
		0.325349, 0.746174, 0.580837,
		0.133075, -0.644274, 0.753128,
		37.026268, 37.036934, 36.179005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.525764, 37.683949, 35.980278>,  <36.933117, 37.487926, 35.651817>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.525764, 37.683949, 35.980278> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.469532, 37.301491, 36.083061>,  <37.435791, 37.072018, 36.144730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.469532, 37.301491, 36.083061>,  <37.525764, 37.683949, 35.980278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.469532, 37.301491, 36.083061> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943696, -0.207907, -0.257319,
		0.299457, 0.206316, 0.931536,
		-0.140583, -0.956142, 0.256959,
		37.427357, 37.014648, 36.160149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.171009, 37.513626, 36.406353>,  <37.525764, 37.683949, 35.980278>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.171009, 37.513626, 36.406353> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.001705, 37.180721, 36.263142>,  <37.900124, 36.980976, 36.177216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.001705, 37.180721, 36.263142>,  <38.171009, 37.513626, 36.406353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.001705, 37.180721, 36.263142> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905851, -0.396115, -0.150086,
		-0.016909, -0.387847, 0.921569,
		-0.423258, -0.832266, -0.358030,
		37.874729, 36.931042, 36.155731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.624668, 36.990822, 36.589882>,  <38.171009, 37.513626, 36.406353>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.624668, 36.990822, 36.589882> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.403290, 36.831017, 36.297558>,  <38.270462, 36.735134, 36.122162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.403290, 36.831017, 36.297558>,  <38.624668, 36.990822, 36.589882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.403290, 36.831017, 36.297558> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797135, -0.508390, -0.325754,
		-0.241394, -0.762844, 0.599831,
		-0.553448, -0.399512, -0.730812,
		38.237255, 36.711163, 36.078316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.784882, 36.262161, 36.463161>,  <38.624668, 36.990822, 36.589882>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.784882, 36.262161, 36.463161> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.656693, 36.432327, 36.124619>,  <38.579781, 36.534428, 35.921494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.656693, 36.432327, 36.124619>,  <38.784882, 36.262161, 36.463161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.656693, 36.432327, 36.124619> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750717, -0.430825, -0.500813,
		-0.577687, -0.795869, -0.181301,
		-0.320473, 0.425419, -0.846355,
		38.560551, 36.559952, 35.870712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.509758, 36.475391, 36.854973>,  <38.784882, 36.262161, 36.463161>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.509758, 36.475391, 36.854973> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.899319, 36.483181, 36.945427>,  <40.133057, 36.487854, 36.999699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.899319, 36.483181, 36.945427>,  <39.509758, 36.475391, 36.854973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.899319, 36.483181, 36.945427> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199657, -0.400329, 0.894356,
		0.107946, -0.916164, -0.385993,
		0.973902, 0.019476, 0.226132,
		40.191490, 36.489025, 37.013268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.599072, 35.930038, 37.286488>,  <39.509758, 36.475391, 36.854973>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.599072, 35.930038, 37.286488> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.917137, 36.162651, 37.355240>,  <40.107975, 36.302219, 37.396492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.917137, 36.162651, 37.355240>,  <39.599072, 35.930038, 37.286488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.917137, 36.162651, 37.355240> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104929, -0.147217, 0.983523,
		0.597250, -0.800095, -0.056042,
		0.795162, 0.581528, 0.171879,
		40.155685, 36.337109, 37.406803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.020771, 35.476730, 37.722805>,  <39.599072, 35.930038, 37.286488>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.020771, 35.476730, 37.722805> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.163330, 35.844757, 37.787868>,  <40.248863, 36.065575, 37.826908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.163330, 35.844757, 37.787868>,  <40.020771, 35.476730, 37.722805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.163330, 35.844757, 37.787868> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181033, -0.102791, 0.978090,
		0.916630, -0.378032, 0.129929,
		0.356394, 0.920068, 0.162657,
		40.270248, 36.120777, 37.836666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.249268, 35.403915, 38.373158>,  <40.020771, 35.476730, 37.722805>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.249268, 35.403915, 38.373158> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.247364, 35.800636, 38.322094>,  <40.246223, 36.038670, 38.291454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.247364, 35.800636, 38.322094>,  <40.249268, 35.403915, 38.373158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.247364, 35.800636, 38.322094> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143432, 0.125666, 0.981649,
		0.989649, 0.022982, 0.141659,
		-0.004758, 0.991806, -0.127662,
		40.245937, 36.098179, 38.283794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.734993, 35.654686, 38.846798>,  <40.249268, 35.403915, 38.373158>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.734993, 35.654686, 38.846798> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.484627, 35.956589, 38.768230>,  <40.334408, 36.137730, 38.721088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.484627, 35.956589, 38.768230>,  <40.734993, 35.654686, 38.846798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.484627, 35.956589, 38.768230> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151280, 0.129573, 0.979962,
		0.765082, 0.643083, 0.033078,
		-0.625911, 0.754755, -0.196419,
		40.296852, 36.183014, 38.709305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.005962, 36.212059, 39.330536>,  <40.734993, 35.654686, 38.846798>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.005962, 36.212059, 39.330536> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.624187, 36.271130, 39.226814>,  <40.395123, 36.306572, 39.164581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.624187, 36.271130, 39.226814>,  <41.005962, 36.212059, 39.330536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.624187, 36.271130, 39.226814> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226059, 0.209426, 0.951335,
		0.194798, 0.966608, -0.166499,
		-0.954437, 0.147679, -0.259307,
		40.337856, 36.315434, 39.149021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.862976, 36.761292, 39.681850>,  <41.005962, 36.212059, 39.330536>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.862976, 36.761292, 39.681850> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.499317, 36.613956, 39.604099>,  <40.281124, 36.525555, 39.557449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.499317, 36.613956, 39.604099>,  <40.862976, 36.761292, 39.681850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.499317, 36.613956, 39.604099> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339498, 0.385103, 0.858159,
		-0.241238, 0.846181, -0.475165,
		-0.909145, -0.368338, -0.194375,
		40.226574, 36.503456, 39.545788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.350220, 37.241783, 39.912655>,  <40.862976, 36.761292, 39.681850>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.350220, 37.241783, 39.912655> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.123444, 36.912380, 39.920815>,  <39.987377, 36.714737, 39.925709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.123444, 36.912380, 39.920815>,  <40.350220, 37.241783, 39.912655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.123444, 36.912380, 39.920815> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453553, 0.332721, 0.826793,
		-0.687657, 0.459490, -0.562136,
		-0.566937, -0.823508, 0.020395,
		39.953362, 36.665329, 39.926933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.779152, 37.535469, 40.094231>,  <40.350220, 37.241783, 39.912655>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.779152, 37.535469, 40.094231> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.712635, 37.147964, 40.167831>,  <39.672726, 36.915462, 40.211990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.712635, 37.147964, 40.167831>,  <39.779152, 37.535469, 40.094231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.712635, 37.147964, 40.167831> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584306, 0.247120, 0.772993,
		-0.794313, 0.021031, -0.607145,
		-0.166294, -0.968757, 0.184002,
		39.662746, 36.857338, 40.223034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.036808, 37.489197, 40.249302>,  <39.779152, 37.535469, 40.094231>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.036808, 37.489197, 40.249302> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.173576, 37.158710, 40.428391>,  <39.255638, 36.960419, 40.535843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.173576, 37.158710, 40.428391>,  <39.036808, 37.489197, 40.249302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.173576, 37.158710, 40.428391> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507566, 0.238598, 0.827918,
		-0.790866, -0.510330, -0.337778,
		0.341919, -0.826217, 0.447725,
		39.276154, 36.910847, 40.562710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.485771, 37.078773, 40.470490>,  <39.036808, 37.489197, 40.249302>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.485771, 37.078773, 40.470490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.778542, 36.925407, 40.695797>,  <38.954205, 36.833385, 40.830982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.778542, 36.925407, 40.695797>,  <38.485771, 37.078773, 40.470490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.778542, 36.925407, 40.695797> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598885, 0.032278, 0.800184,
		-0.324985, -0.923011, -0.205998,
		0.731929, -0.383417, 0.563267,
		38.998119, 36.810383, 40.864777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.200985, 36.473618, 40.942162>,  <38.485771, 37.078773, 40.470490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.200985, 36.473618, 40.942162> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.543442, 36.563030, 41.128521>,  <38.748917, 36.616676, 41.240337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.543442, 36.563030, 41.128521>,  <38.200985, 36.473618, 40.942162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.543442, 36.563030, 41.128521> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510756, 0.229150, 0.828624,
		0.078457, -0.947379, 0.310352,
		0.856138, 0.223526, 0.465901,
		38.800282, 36.630089, 41.268291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.165058, 36.113281, 41.583675>,  <38.200985, 36.473618, 40.942162>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.165058, 36.113281, 41.583675> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.434891, 36.405987, 41.622581>,  <38.596790, 36.581608, 41.645924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.434891, 36.405987, 41.622581>,  <38.165058, 36.113281, 41.583675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.434891, 36.405987, 41.622581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426760, 0.279073, 0.860229,
		0.602338, -0.621807, 0.500545,
		0.674585, 0.731761, 0.097265,
		38.637264, 36.625515, 41.651760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415913, 36.122036, 42.291351>,  <38.165058, 36.113281, 41.583675>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.415913, 36.122036, 42.291351> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.492401, 36.489918, 42.154190>,  <38.538296, 36.710648, 42.071892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.492401, 36.489918, 42.154190>,  <38.415913, 36.122036, 42.291351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.492401, 36.489918, 42.154190> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342889, 0.389932, 0.854622,
		0.919707, -0.045845, 0.389920,
		0.191222, 0.919701, -0.342904,
		38.549767, 36.765827, 42.051319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.754425, 36.388855, 42.808437>,  <38.415913, 36.122036, 42.291351>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.754425, 36.388855, 42.808437> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.615410, 36.694248, 42.590702>,  <38.532001, 36.877483, 42.460060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.615410, 36.694248, 42.590702>,  <38.754425, 36.388855, 42.808437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.615410, 36.694248, 42.590702> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510611, 0.332806, 0.792791,
		0.786443, 0.553475, 0.274179,
		-0.347541, 0.763483, -0.544343,
		38.511147, 36.923294, 42.427399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841202, 36.939056, 43.198921>,  <38.754425, 36.388855, 42.808437>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.841202, 36.939056, 43.198921> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.581852, 37.075512, 42.926674>,  <38.426243, 37.157383, 42.763325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.581852, 37.075512, 42.926674>,  <38.841202, 36.939056, 43.198921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.581852, 37.075512, 42.926674> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575395, 0.365829, 0.731498,
		0.498528, 0.865908, -0.040908,
		-0.648375, 0.341134, -0.680615,
		38.387341, 37.177853, 42.722488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.738483, 37.566784, 43.499409>,  <38.841202, 36.939056, 43.198921>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.738483, 37.566784, 43.499409> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.430637, 37.494453, 43.254463>,  <38.245930, 37.451057, 43.107494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.430637, 37.494453, 43.254463>,  <38.738483, 37.566784, 43.499409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.430637, 37.494453, 43.254463> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623362, 0.420409, 0.659300,
		0.138226, 0.889134, -0.436273,
		-0.769620, -0.180823, -0.612363,
		38.199753, 37.440205, 43.070755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.287624, 38.015247, 43.697540>,  <38.738483, 37.566784, 43.499409>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.287624, 38.015247, 43.697540> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.057827, 37.772087, 43.478302>,  <37.919949, 37.626190, 43.346760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.057827, 37.772087, 43.478302>,  <38.287624, 38.015247, 43.697540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.057827, 37.772087, 43.478302> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774048, 0.185805, 0.605248,
		-0.266094, 0.771964, -0.577292,
		-0.574494, -0.607905, -0.548095,
		37.885479, 37.589714, 43.313873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.278187, 38.494183, 43.151005> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.309566, 38.103477, 43.230778>,  <37.328396, 37.869053, 43.278641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.309566, 38.103477, 43.230778>,  <37.278187, 38.494183, 43.151005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.309566, 38.103477, 43.230778> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854403, 0.037195, 0.518277,
		-0.513654, -0.211056, -0.831634,
		0.078453, -0.976766, 0.199432,
		37.333103, 37.810448, 43.290607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.502594, 38.260967, 42.955307>,  <37.278187, 38.494183, 43.151005>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.502594, 38.260967, 42.955307> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.669418, 37.972927, 43.177120>,  <36.769512, 37.800102, 43.310207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.669418, 37.972927, 43.177120>,  <36.502594, 38.260967, 42.955307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.669418, 37.972927, 43.177120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848840, -0.090541, 0.520839,
		-0.324851, -0.687933, -0.649015,
		0.417065, -0.720104, 0.554532,
		36.794537, 37.756897, 43.343479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.850193, 37.946426, 42.975979>,  <36.502594, 38.260967, 42.955307>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.850193, 37.946426, 42.975979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.121700, 37.797718, 43.229298>,  <36.284607, 37.708492, 43.381287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.121700, 37.797718, 43.229298>,  <35.850193, 37.946426, 42.975979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.121700, 37.797718, 43.229298> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733959, -0.371565, 0.568545,
		0.023945, -0.850723, -0.525069,
		0.678771, -0.371765, 0.633293,
		36.325333, 37.686188, 43.419285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.794231, 37.119217, 43.007435>,  <35.850193, 37.946426, 42.975979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.794231, 37.119217, 43.007435> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.933941, 37.288193, 43.341991>,  <36.017765, 37.389580, 43.542725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.933941, 37.288193, 43.341991>,  <35.794231, 37.119217, 43.007435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.933941, 37.288193, 43.341991> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823172, -0.288112, 0.489264,
		0.447661, -0.859381, 0.247112,
		0.349269, 0.422440, 0.836395,
		36.038723, 37.414925, 43.592911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.702625, 36.522694, 43.506802>,  <35.794231, 37.119217, 43.007435>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.702625, 36.522694, 43.506802> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.738152, 36.884365, 43.673927>,  <35.759468, 37.101368, 43.774204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.738152, 36.884365, 43.673927>,  <35.702625, 36.522694, 43.506802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.738152, 36.884365, 43.673927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802724, -0.183369, 0.567459,
		0.589700, -0.385787, 0.709523,
		0.088814, 0.904181, 0.417813,
		35.764797, 37.155621, 43.799271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.542713, 36.345398, 44.193577>,  <35.702625, 36.522694, 43.506802>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.542713, 36.345398, 44.193577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.527122, 36.742992, 44.152634>,  <35.517769, 36.981548, 44.128067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.527122, 36.742992, 44.152634>,  <35.542713, 36.345398, 44.193577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.527122, 36.742992, 44.152634> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775883, 0.034446, 0.629936,
		0.629672, 0.103970, 0.769872,
		-0.038976, 0.993983, -0.102359,
		35.515430, 37.041187, 44.121925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.523724, 36.687664, 44.813431>,  <35.542713, 36.345398, 44.193577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.523724, 36.687664, 44.813431> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.340267, 36.962105, 44.587543>,  <35.230194, 37.126770, 44.452011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.340267, 36.962105, 44.587543>,  <35.523724, 36.687664, 44.813431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.340267, 36.962105, 44.587543> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788242, -0.020706, 0.615017,
		0.410272, 0.727210, 0.550312,
		-0.458641, 0.686103, -0.564722,
		35.202675, 37.167934, 44.418125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.128254, 37.106899, 45.261475>,  <35.523724, 36.687664, 44.813431>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.128254, 37.106899, 45.261475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.944714, 37.184002, 44.914532>,  <34.834591, 37.230263, 44.706367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.944714, 37.184002, 44.914532>,  <35.128254, 37.106899, 45.261475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.944714, 37.184002, 44.914532> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887021, -0.042780, 0.459743,
		0.051514, 0.980313, 0.190610,
		-0.458847, 0.192758, -0.867355,
		34.807060, 37.241829, 44.654324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.509903, 37.762585, 45.126369>,  <35.128254, 37.106899, 45.261475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.509903, 37.762585, 45.126369> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.173656, 37.934422, 44.994423>,  <34.971909, 38.037521, 44.915257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.173656, 37.934422, 44.994423>,  <35.509903, 37.762585, 45.126369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.173656, 37.934422, 44.994423> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391997, -0.062270, 0.917857,
		0.373760, 0.900875, 0.220743,
		-0.840620, 0.429589, -0.329866,
		34.921471, 38.063297, 44.895462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.280159, 38.300770, 45.610950>,  <35.509903, 37.762585, 45.126369>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.280159, 38.300770, 45.610950> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.928276, 38.254498, 45.426456>,  <34.717148, 38.226734, 45.315762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.928276, 38.254498, 45.426456>,  <35.280159, 38.300770, 45.610950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.928276, 38.254498, 45.426456> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409383, -0.309208, 0.858368,
		-0.241914, 0.943932, 0.224654,
		-0.879706, -0.115682, -0.461231,
		34.664364, 38.219791, 45.288086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.823746, 38.632214, 45.956367>,  <35.280159, 38.300770, 45.610950>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.823746, 38.632214, 45.956367> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.614323, 38.348732, 45.767216>,  <34.488667, 38.178642, 45.653725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.614323, 38.348732, 45.767216>,  <34.823746, 38.632214, 45.956367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.614323, 38.348732, 45.767216> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403574, -0.282520, 0.870236,
		-0.750341, 0.646465, -0.138099,
		-0.523562, -0.708707, -0.472883,
		34.457253, 38.136120, 45.625351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.196655, 38.582150, 46.376659>,  <34.823746, 38.632214, 45.956367>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.196655, 38.582150, 46.376659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.229134, 38.239552, 46.172768>,  <34.248623, 38.033993, 46.050430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.229134, 38.239552, 46.172768>,  <34.196655, 38.582150, 46.376659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.229134, 38.239552, 46.172768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396919, -0.496905, 0.771713,
		-0.914255, 0.139659, -0.380307,
		0.081200, -0.856493, -0.509731,
		34.253494, 37.982605, 46.019848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.457512, 38.208565, 46.407295>,  <34.196655, 38.582150, 46.376659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.457512, 38.208565, 46.407295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.730892, 37.930454, 46.318314>,  <33.894920, 37.763588, 46.264923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.730892, 37.930454, 46.318314>,  <33.457512, 38.208565, 46.407295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.730892, 37.930454, 46.318314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344766, -0.576038, 0.741158,
		-0.643456, -0.429846, -0.633400,
		0.683447, -0.695278, -0.222459,
		33.935928, 37.721870, 46.251575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.059258, 37.603775, 46.543781>,  <33.457512, 38.208565, 46.407295>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.059258, 37.603775, 46.543781> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.428131, 37.450920, 46.519928>,  <33.649456, 37.359207, 46.505615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.428131, 37.450920, 46.519928>,  <33.059258, 37.603775, 46.543781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.428131, 37.450920, 46.519928> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226286, -0.658142, 0.718083,
		-0.313653, -0.648708, -0.693397,
		0.922181, -0.382135, -0.059635,
		33.704784, 37.336281, 46.502037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.988533, 36.841568, 46.580624>,  <33.059258, 37.603775, 46.543781>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.988533, 36.841568, 46.580624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.358612, 36.951817, 46.684959>,  <33.580662, 37.017963, 46.747559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.358612, 36.951817, 46.684959>,  <32.988533, 36.841568, 46.580624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.358612, 36.951817, 46.684959> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011075, -0.667458, 0.744565,
		0.379314, -0.691761, -0.614481,
		0.925202, 0.275618, 0.260838,
		33.636173, 37.034500, 46.763210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.268543, 36.251282, 46.810806>,  <32.988533, 36.841568, 46.580624>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.268543, 36.251282, 46.810806> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.512611, 36.541965, 46.937031>,  <33.659054, 36.716377, 47.012768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.512611, 36.541965, 46.937031>,  <33.268543, 36.251282, 46.810806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.512611, 36.541965, 46.937031> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000928, -0.397648, 0.917538,
		0.792270, -0.560147, -0.241959,
		0.610171, 0.726712, 0.315564,
		33.695663, 36.759979, 47.031700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.967827, 36.023872, 47.032902>,  <33.268543, 36.251282, 46.810806>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.967827, 36.023872, 47.032902> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.884518, 36.363380, 47.227306>,  <33.834534, 36.567085, 47.343948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.884518, 36.363380, 47.227306>,  <33.967827, 36.023872, 47.032902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.884518, 36.363380, 47.227306> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067346, -0.483289, 0.872867,
		0.975749, 0.214527, 0.043495,
		-0.208274, 0.848770, 0.486016,
		33.822037, 36.618011, 47.373112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.247387, 35.892567, 47.701283>,  <33.967827, 36.023872, 47.032902>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.247387, 35.892567, 47.701283> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.016487, 36.214928, 47.753906>,  <33.877949, 36.408344, 47.785480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.016487, 36.214928, 47.753906>,  <34.247387, 35.892567, 47.701283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.016487, 36.214928, 47.753906> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126974, -0.247736, 0.960471,
		0.806638, 0.537723, 0.245333,
		-0.577246, 0.805904, 0.131557,
		33.843315, 36.456699, 47.793373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.545971, 36.236004, 48.231308>,  <34.247387, 35.892567, 47.701283>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.545971, 36.236004, 48.231308> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.156414, 36.322456, 48.203552>,  <33.922680, 36.374329, 48.186897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.156414, 36.322456, 48.203552>,  <34.545971, 36.236004, 48.231308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.156414, 36.322456, 48.203552> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121752, -0.239360, 0.963267,
		0.191581, 0.946570, 0.259426,
		-0.973896, 0.216129, -0.069390,
		33.864246, 36.387295, 48.182735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.399021, 36.509426, 48.828922>,  <34.545971, 36.236004, 48.231308>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.399021, 36.509426, 48.828922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.028709, 36.410713, 48.714363>,  <33.806522, 36.351486, 48.645626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.028709, 36.410713, 48.714363>,  <34.399021, 36.509426, 48.828922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.028709, 36.410713, 48.714363> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189084, -0.353758, 0.916025,
		-0.327378, 0.902193, 0.280840,
		-0.925781, -0.246784, -0.286403,
		33.750977, 36.336678, 48.628441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.841900, 36.721386, 49.304367>,  <34.399021, 36.509426, 48.828922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.841900, 36.721386, 49.304367> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.671059, 36.411282, 49.118225>,  <33.568554, 36.225220, 49.006538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.671059, 36.411282, 49.118225>,  <33.841900, 36.721386, 49.304367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.671059, 36.411282, 49.118225> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281715, -0.374953, 0.883203,
		-0.859197, 0.508317, -0.058258,
		-0.427102, -0.775258, -0.465359,
		33.542927, 36.178703, 48.978619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.208008, 36.613400, 49.616547>,  <33.841900, 36.721386, 49.304367>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.208008, 36.613400, 49.616547> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.277870, 36.251675, 49.460747>,  <33.319786, 36.034637, 49.367268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.277870, 36.251675, 49.460747>,  <33.208008, 36.613400, 49.616547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.277870, 36.251675, 49.460747> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283078, -0.424995, 0.859794,
		-0.943061, -0.039907, -0.330219,
		0.174653, -0.904316, -0.389499,
		33.330265, 35.980381, 49.343899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.949627, 37.178303, 49.372795>,  <33.208008, 36.613400, 49.616547>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.949627, 37.178303, 49.372795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.866848, 37.039185, 49.007015>,  <32.817181, 36.955715, 48.787548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.866848, 37.039185, 49.007015>,  <32.949627, 37.178303, 49.372795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.866848, 37.039185, 49.007015> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.970116, 0.193981, 0.145763,
		0.126689, 0.917284, -0.377545,
		-0.206943, -0.347796, -0.914447,
		32.804764, 36.934845, 48.732681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.692039, 37.712830, 48.997719>,  <32.949627, 37.178303, 49.372795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.692039, 37.712830, 48.997719> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.546532, 37.353134, 48.900528>,  <32.459229, 37.137318, 48.842213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.546532, 37.353134, 48.900528>,  <32.692039, 37.712830, 48.997719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.546532, 37.353134, 48.900528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914201, 0.294629, 0.278262,
		-0.178638, 0.323350, -0.929265,
		-0.363765, -0.899243, -0.242975,
		32.437401, 37.083363, 48.827637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.081978, 38.005966, 49.292000>,  <32.692039, 37.712830, 48.997719>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.081978, 38.005966, 49.292000> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.710718, 37.857128, 49.295746>,  <31.487963, 37.767826, 49.297993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.710718, 37.857128, 49.295746>,  <32.081978, 38.005966, 49.292000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.710718, 37.857128, 49.295746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032573, 0.056125, -0.997892,
		0.370780, -0.926498, -0.064212,
		-0.928149, -0.372090, 0.009369,
		31.432274, 37.745502, 49.298557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.015800, 37.412525, 48.820816>,  <32.081978, 38.005966, 49.292000>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.015800, 37.412525, 48.820816> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.651066, 37.575062, 48.844261>,  <31.432224, 37.672585, 48.858330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.651066, 37.575062, 48.844261>,  <32.015800, 37.412525, 48.820816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.651066, 37.575062, 48.844261> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064006, 0.000322, -0.997949,
		-0.405523, -0.913723, 0.025715,
		-0.911841, 0.406337, 0.058615,
		31.377514, 37.696964, 48.861847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.607849, 37.031918, 48.297043>,  <32.015800, 37.412525, 48.820816>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.607849, 37.031918, 48.297043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.406740, 37.370224, 48.368492>,  <31.286076, 37.573208, 48.411362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.406740, 37.370224, 48.368492>,  <31.607849, 37.031918, 48.297043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.406740, 37.370224, 48.368492> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157828, 0.113346, -0.980940,
		-0.849890, -0.521378, 0.076498,
		-0.502770, 0.845765, 0.178620,
		31.255909, 37.623955, 48.422077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.929461, 36.821445, 48.151779>,  <31.607849, 37.031918, 48.297043>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.929461, 36.821445, 48.151779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.971975, 37.219170, 48.149181>,  <30.997484, 37.457806, 48.147621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.971975, 37.219170, 48.149181>,  <30.929461, 36.821445, 48.151779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.971975, 37.219170, 48.149181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048155, -0.001376, -0.998839,
		-0.993169, 0.106478, 0.047735,
		0.106288, 0.994314, -0.006494,
		31.003862, 37.517464, 48.147232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.386356, 36.999115, 47.667393>,  <30.929461, 36.821445, 48.151779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.386356, 36.999115, 47.667393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.663450, 37.286102, 47.696648>,  <30.829706, 37.458298, 47.714199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.663450, 37.286102, 47.696648>,  <30.386356, 36.999115, 47.667393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.663450, 37.286102, 47.696648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082444, 0.021964, -0.996354,
		-0.716463, 0.696240, -0.043936,
		0.692736, 0.717473, 0.073137,
		30.871271, 37.501343, 47.718590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.203510, 37.324818, 47.019646>,  <30.386356, 36.999115, 47.667393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.203510, 37.324818, 47.019646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.558125, 37.469906, 47.134525>,  <30.770893, 37.556957, 47.203453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.558125, 37.469906, 47.134525>,  <30.203510, 37.324818, 47.019646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.558125, 37.469906, 47.134525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145026, 0.371614, -0.916990,
		-0.439340, 0.854597, 0.276846,
		0.886537, 0.362721, 0.287204,
		30.824085, 37.578724, 47.220688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.217834, 37.909252, 46.696732>,  <30.203510, 37.324818, 47.019646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.217834, 37.909252, 46.696732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.591970, 37.792732, 46.777020>,  <30.816452, 37.722820, 46.825191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.591970, 37.792732, 46.777020>,  <30.217834, 37.909252, 46.696732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.591970, 37.792732, 46.777020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277539, 0.252435, -0.926957,
		0.219353, 0.922725, 0.316958,
		0.935338, -0.291299, 0.200720,
		30.872572, 37.705341, 46.837234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.685619, 38.555122, 46.516621>,  <30.217834, 37.909252, 46.696732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.685619, 38.555122, 46.516621> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.869089, 38.202076, 46.475418>,  <30.979172, 37.990250, 46.450695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.869089, 38.202076, 46.475418>,  <30.685619, 38.555122, 46.516621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.869089, 38.202076, 46.475418> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582698, 0.386267, -0.715025,
		0.670880, 0.267941, 0.691468,
		0.458676, -0.882613, -0.103010,
		31.006691, 37.937290, 46.444515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.151577, 38.721909, 46.024605>,  <30.685619, 38.555122, 46.516621>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.151577, 38.721909, 46.024605> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.252859, 38.336338, 46.057423>,  <31.313627, 38.104996, 46.077114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.252859, 38.336338, 46.057423>,  <31.151577, 38.721909, 46.024605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.252859, 38.336338, 46.057423> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635590, 0.101815, -0.765284,
		0.729324, 0.245922, 0.638442,
		0.253203, -0.963928, 0.082049,
		31.328819, 38.047161, 46.082039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.873543, 38.594219, 46.073685>,  <31.151577, 38.721909, 46.024605>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.873543, 38.594219, 46.073685> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.697853, 38.275185, 45.908310>,  <31.592440, 38.083763, 45.809086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.697853, 38.275185, 45.908310>,  <31.873543, 38.594219, 46.073685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.697853, 38.275185, 45.908310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602715, 0.079657, -0.793971,
		0.666197, -0.597916, 0.445733,
		-0.439222, -0.797591, -0.413440,
		31.566086, 38.035908, 45.784279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.451359, 38.144619, 45.787918>,  <31.873543, 38.594219, 46.073685>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.451359, 38.144619, 45.787918> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.121288, 38.033234, 45.591331>,  <31.923246, 37.966400, 45.473377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.121288, 38.033234, 45.591331>,  <32.451359, 38.144619, 45.787918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.121288, 38.033234, 45.591331> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532250, -0.091876, -0.841587,
		0.189199, -0.956042, 0.224027,
		-0.825175, -0.278466, -0.491470,
		31.873735, 37.949696, 45.443890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.776745, 37.750698, 45.270676>,  <32.451359, 38.144619, 45.787918>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.776745, 37.750698, 45.270676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.400318, 37.824951, 45.157585>,  <32.174461, 37.869503, 45.089729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.400318, 37.824951, 45.157585>,  <32.776745, 37.750698, 45.270676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.400318, 37.824951, 45.157585> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312367, 0.156466, -0.936987,
		-0.129698, -0.970082, -0.205230,
		-0.941066, 0.185632, -0.282728,
		32.118000, 37.880642, 45.072765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.617371, 37.218529, 44.712154>,  <32.776745, 37.750698, 45.270676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.617371, 37.218529, 44.712154> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.393799, 37.548996, 44.683735>,  <32.259655, 37.747276, 44.666683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.393799, 37.548996, 44.683735>,  <32.617371, 37.218529, 44.712154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.393799, 37.548996, 44.683735> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413496, 0.203425, -0.887490,
		-0.718764, -0.525419, -0.455317,
		-0.558927, 0.826168, -0.071044,
		32.226120, 37.796844, 44.662422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.439598, 37.243332, 43.996868>,  <32.617371, 37.218529, 44.712154>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.439598, 37.243332, 43.996868> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.376884, 37.615356, 44.129772>,  <32.339256, 37.838573, 44.209515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.376884, 37.615356, 44.129772>,  <32.439598, 37.243332, 43.996868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.376884, 37.615356, 44.129772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327961, 0.366361, -0.870759,
		-0.931590, -0.027553, -0.362465,
		-0.156785, 0.930065, 0.332262,
		32.329849, 37.894375, 44.229450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.114029, 37.544697, 43.490513>,  <32.439598, 37.243332, 43.996868>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.114029, 37.544697, 43.490513> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.219501, 37.885731, 43.670986>,  <32.282784, 38.090351, 43.779270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.219501, 37.885731, 43.670986>,  <32.114029, 37.544697, 43.490513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.219501, 37.885731, 43.670986> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406538, 0.325943, -0.853515,
		-0.874757, 0.408477, -0.260666,
		0.263679, 0.852589, 0.451182,
		32.298607, 38.141506, 43.806339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.719938, 38.200375, 43.176369>,  <32.114029, 37.544697, 43.490513>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.719938, 38.200375, 43.176369> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.072903, 38.309429, 43.329742>,  <32.284679, 38.374863, 43.421768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.072903, 38.309429, 43.329742>,  <31.719938, 38.200375, 43.176369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.072903, 38.309429, 43.329742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271689, 0.370075, -0.888386,
		-0.384109, 0.888095, 0.252484,
		0.882409, 0.272640, 0.383435,
		32.337624, 38.391220, 43.444775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.932732, 38.841774, 42.827148>,  <31.719938, 38.200375, 43.176369>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.932732, 38.841774, 42.827148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.260780, 38.668629, 42.976833>,  <32.457607, 38.564743, 43.066643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.260780, 38.668629, 42.976833>,  <31.932732, 38.841774, 42.827148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.260780, 38.668629, 42.976833> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507941, 0.249653, -0.824420,
		0.263437, 0.866201, 0.424614,
		0.820120, -0.432862, 0.374211,
		32.506817, 38.538769, 43.089096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.370327, 39.334164, 42.783405>,  <31.932732, 38.841774, 42.827148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.370327, 39.334164, 42.783405> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.577702, 38.993176, 42.810299>,  <32.702126, 38.788582, 42.826435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.577702, 38.993176, 42.810299>,  <32.370327, 39.334164, 42.783405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.577702, 38.993176, 42.810299> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428542, 0.190974, -0.883109,
		0.739981, 0.486651, 0.464326,
		0.518440, -0.852467, 0.067234,
		32.733234, 38.737434, 42.830467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.049477, 39.512505, 42.570614>,  <32.370327, 39.334164, 42.783405>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.049477, 39.512505, 42.570614> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.050114, 39.114231, 42.533482>,  <33.050495, 38.875267, 42.511204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.050114, 39.114231, 42.533482>,  <33.049477, 39.512505, 42.570614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.050114, 39.114231, 42.533482> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341326, 0.087793, -0.935836,
		0.939944, -0.030193, 0.339992,
		0.001594, -0.995681, -0.092827,
		33.050591, 38.815525, 42.505634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.700798, 39.327927, 42.450191>,  <33.049477, 39.512505, 42.570614>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.700798, 39.327927, 42.450191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.479004, 39.021641, 42.319824>,  <33.345928, 38.837868, 42.241604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.479004, 39.021641, 42.319824>,  <33.700798, 39.327927, 42.450191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.479004, 39.021641, 42.319824> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494427, 0.011900, -0.869138,
		0.669394, -0.643066, 0.371993,
		-0.554486, -0.765719, -0.325915,
		33.312656, 38.791924, 42.222050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.285954, 33.396057, 42.008385> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.199329, 33.010185, 42.068382>,  <42.147354, 32.778664, 42.104382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.199329, 33.010185, 42.068382>,  <42.285954, 33.396057, 42.008385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.199329, 33.010185, 42.068382> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583548, -0.251081, -0.772289,
		0.782670, -0.079722, 0.617311,
		-0.216564, -0.964678, 0.149992,
		42.134361, 32.720783, 42.113380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.939762, 33.023540, 42.014584>,  <42.285954, 33.396057, 42.008385>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.939762, 33.023540, 42.014584> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.648056, 32.780056, 41.889587>,  <42.473034, 32.633965, 41.814590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.648056, 32.780056, 41.889587>,  <42.939762, 33.023540, 42.014584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.648056, 32.780056, 41.889587> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497860, -0.158769, -0.852601,
		0.469372, -0.777346, 0.418836,
		-0.729264, -0.608709, -0.312488,
		42.429276, 32.597443, 41.795841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.276096, 32.532612, 41.548840>,  <42.939762, 33.023540, 42.014584>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.276096, 32.532612, 41.548840> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.894047, 32.462708, 41.453171>,  <42.664818, 32.420765, 41.395771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.894047, 32.462708, 41.453171>,  <43.276096, 32.532612, 41.548840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.894047, 32.462708, 41.453171> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267014, -0.158380, -0.950589,
		0.128251, -0.971789, 0.197937,
		-0.955120, -0.174766, -0.239169,
		42.607510, 32.410278, 41.381420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.205601, 31.918400, 41.097137>,  <43.276096, 32.532612, 41.548840>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.205601, 31.918400, 41.097137> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.870964, 32.134064, 41.058300>,  <42.670181, 32.263462, 41.035000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.870964, 32.134064, 41.058300>,  <43.205601, 31.918400, 41.097137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.870964, 32.134064, 41.058300> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016467, -0.152396, -0.988182,
		-0.547584, -0.828301, 0.118615,
		-0.836589, 0.539160, -0.097089,
		42.619987, 32.295811, 41.029175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.797234, 31.471119, 40.707474>,  <43.205601, 31.918400, 41.097137>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.797234, 31.471119, 40.707474> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.696877, 31.855530, 40.661041>,  <42.636662, 32.086178, 40.633183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.696877, 31.855530, 40.661041>,  <42.797234, 31.471119, 40.707474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.696877, 31.855530, 40.661041> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499546, 0.025828, -0.865902,
		-0.829159, -0.275237, -0.486559,
		-0.250895, 0.961029, -0.116078,
		42.621609, 32.143837, 40.626217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.514023, 31.493692, 40.087143>,  <42.797234, 31.471119, 40.707474>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.514023, 31.493692, 40.087143> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.578346, 31.887096, 40.120251>,  <42.616940, 32.123138, 40.140114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.578346, 31.887096, 40.120251>,  <42.514023, 31.493692, 40.087143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.578346, 31.887096, 40.120251> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364570, 0.018740, -0.930987,
		-0.917185, 0.179886, -0.355544,
		0.160809, 0.983509, 0.082769,
		42.626591, 32.182148, 40.145081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.267113, 31.791782, 39.500401>,  <42.514023, 31.493692, 40.087143>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.267113, 31.791782, 39.500401> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.499916, 32.093784, 39.621216>,  <42.639599, 32.274986, 39.693707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.499916, 32.093784, 39.621216>,  <42.267113, 31.791782, 39.500401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.499916, 32.093784, 39.621216> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254251, 0.183851, -0.949503,
		-0.772411, 0.629416, -0.084957,
		0.582012, 0.755006, 0.302038,
		42.674519, 32.320286, 39.711826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.072861, 32.419384, 39.041321>,  <42.267113, 31.791782, 39.500401>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.072861, 32.419384, 39.041321> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.426720, 32.525715, 39.194542>,  <42.639034, 32.589512, 39.286476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.426720, 32.525715, 39.194542>,  <42.072861, 32.419384, 39.041321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.426720, 32.525715, 39.194542> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247893, 0.427658, -0.869285,
		-0.394895, 0.863970, 0.312432,
		0.884651, 0.265826, 0.383053,
		42.692116, 32.605461, 39.309456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.154984, 33.114250, 38.878529>,  <42.072861, 32.419384, 39.041321>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.154984, 33.114250, 38.878529> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.516796, 32.949406, 38.922337>,  <42.733883, 32.850498, 38.948624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.516796, 32.949406, 38.922337>,  <42.154984, 33.114250, 38.878529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.516796, 32.949406, 38.922337> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337342, 0.534467, -0.774949,
		0.260828, 0.737909, 0.622462,
		0.904527, -0.412111, 0.109523,
		42.788155, 32.825771, 38.955193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.624588, 33.681530, 38.831699>,  <42.154984, 33.114250, 38.878529>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.624588, 33.681530, 38.831699> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.825558, 33.344948, 38.752182>,  <42.946140, 33.142998, 38.704472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.825558, 33.344948, 38.752182>,  <42.624588, 33.681530, 38.831699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.825558, 33.344948, 38.752182> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391536, 0.426425, -0.815391,
		0.770886, 0.331839, 0.543707,
		0.502429, -0.841454, -0.198798,
		42.976288, 33.092510, 38.692543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.345299, 33.816650, 38.688072>,  <42.624588, 33.681530, 38.831699>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.345299, 33.816650, 38.688072> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.307785, 33.462975, 38.505028>,  <43.285278, 33.250767, 38.395203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.307785, 33.462975, 38.505028>,  <43.345299, 33.816650, 38.688072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.307785, 33.462975, 38.505028> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632537, 0.302032, -0.713213,
		0.768832, -0.356340, 0.530961,
		-0.093779, -0.884193, -0.457611,
		43.279652, 33.197716, 38.367744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.074841, 33.598850, 38.417290>,  <43.345299, 33.816650, 38.688072>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.074841, 33.598850, 38.417290> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.816345, 33.383102, 38.201340>,  <43.661247, 33.253654, 38.071770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.816345, 33.383102, 38.201340>,  <44.074841, 33.598850, 38.417290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.816345, 33.383102, 38.201340> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638586, 0.005149, -0.769533,
		0.417839, -0.842056, 0.341104,
		-0.646234, -0.539365, -0.539876,
		43.622475, 33.221294, 38.039375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.480083, 33.208126, 37.904835>,  <44.074841, 33.598850, 38.417290>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.480083, 33.208126, 37.904835> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.116001, 33.188614, 37.740322>,  <43.897552, 33.176907, 37.641613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.116001, 33.188614, 37.740322>,  <44.480083, 33.208126, 37.904835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.116001, 33.188614, 37.740322> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393134, 0.210665, -0.895023,
		0.130299, -0.976340, -0.172572,
		-0.910202, -0.048777, -0.411282,
		43.842941, 33.173981, 37.616936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.652584, 32.946404, 37.293415>,  <44.480083, 33.208126, 37.904835>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.652584, 32.946404, 37.293415> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.279251, 33.084820, 37.255142>,  <44.055252, 33.167870, 37.232178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.279251, 33.084820, 37.255142>,  <44.652584, 32.946404, 37.293415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.279251, 33.084820, 37.255142> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186257, 0.238861, -0.953023,
		-0.306930, -0.907305, -0.287388,
		-0.933329, 0.346039, -0.095678,
		43.999252, 33.188633, 37.226440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.345253, 32.637283, 36.648735>,  <44.652584, 32.946404, 37.293415>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.345253, 32.637283, 36.648735> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.170479, 32.989235, 36.723473>,  <44.065617, 33.200405, 36.768314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.170479, 32.989235, 36.723473>,  <44.345253, 32.637283, 36.648735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.170479, 32.989235, 36.723473> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095971, 0.252139, -0.962920,
		-0.894361, -0.402798, -0.194610,
		-0.436931, 0.879875, 0.186847,
		44.039398, 33.253197, 36.779526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.972507, 32.734283, 36.024944>,  <44.345253, 32.637283, 36.648735>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.972507, 32.734283, 36.024944> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.987179, 33.094440, 36.198353>,  <43.995983, 33.310535, 36.302399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.987179, 33.094440, 36.198353>,  <43.972507, 32.734283, 36.024944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.987179, 33.094440, 36.198353> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008746, 0.433511, -0.901106,
		-0.999289, 0.036847, 0.008028,
		0.036683, 0.900395, 0.433525,
		43.998184, 33.364559, 36.328411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.527618, 33.273102, 35.603859>,  <43.972507, 32.734283, 36.024944>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.527618, 33.273102, 35.603859> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.775070, 33.509800, 35.810596>,  <43.923542, 33.651821, 35.934639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.775070, 33.509800, 35.810596>,  <43.527618, 33.273102, 35.603859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.775070, 33.509800, 35.810596> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191711, 0.524258, -0.829699,
		-0.761934, 0.612362, 0.210878,
		0.618631, 0.591748, 0.516847,
		43.960659, 33.687325, 35.965649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.371750, 33.835007, 35.351868>,  <43.527618, 33.273102, 35.603859>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.371750, 33.835007, 35.351868> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.730194, 33.905796, 35.514671>,  <43.945263, 33.948269, 35.612354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.730194, 33.905796, 35.514671>,  <43.371750, 33.835007, 35.351868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.730194, 33.905796, 35.514671> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195334, 0.666201, -0.719736,
		-0.398525, 0.724470, 0.562424,
		0.896115, 0.176972, 0.407012,
		43.999027, 33.958889, 35.636776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.406918, 34.615944, 35.493744>,  <43.371750, 33.835007, 35.351868>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.406918, 34.615944, 35.493744> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.783157, 34.484806, 35.458435>,  <44.008900, 34.406124, 35.437252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.783157, 34.484806, 35.458435>,  <43.406918, 34.615944, 35.493744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.783157, 34.484806, 35.458435> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134363, 0.598201, -0.790002,
		0.311797, 0.731216, 0.606717,
		0.940600, -0.327841, -0.088269,
		44.065338, 34.386456, 35.431953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.794121, 35.233265, 35.427834>,  <43.406918, 34.615944, 35.493744>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.794121, 35.233265, 35.427834> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.027054, 34.948750, 35.270374>,  <44.166813, 34.778042, 35.175900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.027054, 34.948750, 35.270374>,  <43.794121, 35.233265, 35.427834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.027054, 34.948750, 35.270374> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237061, 0.611757, -0.754689,
		0.777618, 0.346162, 0.524864,
		0.582334, -0.711285, -0.393652,
		44.201756, 34.735363, 35.152279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.606781, 35.470924, 35.384876>,  <43.794121, 35.233265, 35.427834>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.606781, 35.470924, 35.384876> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.521362, 35.185963, 35.117481>,  <44.470112, 35.014984, 34.957043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.521362, 35.185963, 35.117481>,  <44.606781, 35.470924, 35.384876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.521362, 35.185963, 35.117481> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399312, 0.560852, -0.725255,
		0.891598, -0.421813, 0.164702,
		-0.213549, -0.712404, -0.668489,
		44.457298, 34.972240, 34.916935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.294468, 35.741020, 35.492027>,  <44.606781, 35.470924, 35.384876>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.294468, 35.741020, 35.492027> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.621658, 35.791218, 35.716587>,  <45.817974, 35.821335, 35.851322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.621658, 35.791218, 35.716587>,  <45.294468, 35.741020, 35.492027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.621658, 35.791218, 35.716587> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543205, -0.152679, 0.825601,
		0.189323, -0.980275, -0.056718,
		0.817976, 0.125495, 0.561396,
		45.867050, 35.828865, 35.885006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.370445, 35.144844, 35.981586>,  <45.294468, 35.741020, 35.492027>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.370445, 35.144844, 35.981586> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.571793, 35.453396, 36.137325>,  <45.692600, 35.638527, 36.230770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.571793, 35.453396, 36.137325>,  <45.370445, 35.144844, 35.981586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.571793, 35.453396, 36.137325> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574139, -0.038155, 0.817868,
		0.645743, -0.635230, 0.423673,
		0.503369, 0.771380, 0.389348,
		45.722805, 35.684811, 36.254131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.513603, 34.944553, 36.613808>,  <45.370445, 35.144844, 35.981586>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.513603, 34.944553, 36.613808> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.534321, 35.343956, 36.620796>,  <45.546753, 35.583595, 36.624989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.534321, 35.343956, 36.620796>,  <45.513603, 34.944553, 36.613808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.534321, 35.343956, 36.620796> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518905, 0.011963, 0.854748,
		0.853261, -0.053340, 0.518749,
		0.051798, 0.998504, 0.017471,
		45.549862, 35.643509, 36.626038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.904282, 35.193882, 37.146267>,  <45.513603, 34.944553, 36.613808>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.904282, 35.193882, 37.146267> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.654530, 35.501747, 37.092960>,  <45.504677, 35.686466, 37.060974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.654530, 35.501747, 37.092960>,  <45.904282, 35.193882, 37.146267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.654530, 35.501747, 37.092960> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301230, -0.079840, 0.950203,
		0.720700, 0.633433, 0.281698,
		-0.624381, 0.769667, -0.133268,
		45.467216, 35.732647, 37.052979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.902676, 35.493877, 37.750916>,  <45.904282, 35.193882, 37.146267>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.902676, 35.493877, 37.750916> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.591034, 35.678307, 37.581017>,  <45.404049, 35.788963, 37.479076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.591034, 35.678307, 37.581017>,  <45.902676, 35.493877, 37.750916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.591034, 35.678307, 37.581017> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444583, 0.071319, 0.892894,
		0.441981, 0.884492, 0.149420,
		-0.779101, 0.461072, -0.424752,
		45.357304, 35.816628, 37.453590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.794071, 36.153603, 38.126534>,  <45.902676, 35.493877, 37.750916>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.794071, 36.153603, 38.126534> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.442085, 36.072964, 37.954475>,  <45.230892, 36.024582, 37.851242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.442085, 36.072964, 37.954475>,  <45.794071, 36.153603, 38.126534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.442085, 36.072964, 37.954475> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434034, -0.026819, 0.900497,
		-0.193070, 0.979102, -0.063898,
		-0.879965, -0.201593, -0.430141,
		45.178097, 36.012486, 37.825432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.314690, 36.575108, 38.439156>,  <45.794071, 36.153603, 38.126534>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.314690, 36.575108, 38.439156> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.087456, 36.285057, 38.283474>,  <44.951115, 36.111027, 38.190067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.087456, 36.285057, 38.283474>,  <45.314690, 36.575108, 38.439156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.087456, 36.285057, 38.283474> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374629, -0.193229, 0.906816,
		-0.732759, 0.660952, -0.161883,
		-0.568082, -0.725124, -0.389202,
		44.917030, 36.067520, 38.166714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.611679, 36.678864, 38.663113>,  <45.314690, 36.575108, 38.439156>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.611679, 36.678864, 38.663113> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.601860, 36.290131, 38.569351>,  <44.595966, 36.056892, 38.513092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.601860, 36.290131, 38.569351>,  <44.611679, 36.678864, 38.663113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.601860, 36.290131, 38.569351> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522323, -0.187458, 0.831888,
		-0.852394, 0.142861, -0.503005,
		-0.024552, -0.971828, -0.234408,
		44.594494, 35.998581, 38.499027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.954861, 36.484173, 38.866978>,  <44.611679, 36.678864, 38.663113>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.954861, 36.484173, 38.866978> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.161919, 36.142342, 38.850296>,  <44.286152, 35.937241, 38.840286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.161919, 36.142342, 38.850296>,  <43.954861, 36.484173, 38.866978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.161919, 36.142342, 38.850296> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399332, -0.284414, 0.871575,
		-0.756692, -0.434510, -0.488486,
		0.517641, -0.854582, -0.041700,
		44.317211, 35.885967, 38.837788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.408867, 35.965702, 39.051952>,  <43.954861, 36.484173, 38.866978>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.408867, 35.965702, 39.051952> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.776176, 35.817665, 39.108250>,  <43.996563, 35.728844, 39.142029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.776176, 35.817665, 39.108250>,  <43.408867, 35.965702, 39.051952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.776176, 35.817665, 39.108250> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286200, -0.374743, 0.881849,
		-0.273623, -0.850057, -0.450037,
		0.918270, -0.370095, 0.140748,
		44.051659, 35.706635, 39.150475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.215839, 35.296082, 39.380379>,  <43.408867, 35.965702, 39.051952>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.215839, 35.296082, 39.380379> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.588497, 35.387695, 39.493225>,  <43.812092, 35.442665, 39.560932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.588497, 35.387695, 39.493225>,  <43.215839, 35.296082, 39.380379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.588497, 35.387695, 39.493225> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184595, -0.370429, 0.910334,
		0.313001, -0.900181, -0.302828,
		0.931641, 0.229035, 0.282113,
		43.867989, 35.456406, 39.577858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.530823, 34.652306, 39.712975>,  <43.215839, 35.296082, 39.380379>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.530823, 34.652306, 39.712975> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.746986, 34.960915, 39.847267>,  <43.876686, 35.146080, 39.927841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.746986, 34.960915, 39.847267>,  <43.530823, 34.652306, 39.712975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.746986, 34.960915, 39.847267> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143500, -0.308654, 0.940287,
		0.829074, -0.556318, -0.056087,
		0.540410, 0.771519, 0.335729,
		43.909111, 35.192371, 39.947987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.712357, 34.365902, 40.225567>,  <43.530823, 34.652306, 39.712975>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.712357, 34.365902, 40.225567> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.800808, 34.749458, 40.296703>,  <43.853878, 34.979591, 40.339386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.800808, 34.749458, 40.296703>,  <43.712357, 34.365902, 40.225567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.800808, 34.749458, 40.296703> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014186, -0.185499, 0.982542,
		0.975142, -0.214745, -0.054622,
		0.221128, 0.958893, 0.177841,
		43.867146, 35.037125, 40.350056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.227921, 34.376980, 40.782467>,  <43.712357, 34.365902, 40.225567>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.227921, 34.376980, 40.782467> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.052513, 34.736462, 40.784973>,  <43.947269, 34.952148, 40.786476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.052513, 34.736462, 40.784973>,  <44.227921, 34.376980, 40.782467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.052513, 34.736462, 40.784973> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147129, -0.078662, 0.985985,
		0.886600, 0.431446, 0.166720,
		-0.438514, 0.898703, 0.006264,
		43.920959, 35.006073, 40.786854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.495903, 34.614353, 41.395947>,  <44.227921, 34.376980, 40.782467>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.495903, 34.614353, 41.395947> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.185806, 34.856880, 41.325085>,  <43.999748, 35.002396, 41.282570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.185806, 34.856880, 41.325085>,  <44.495903, 34.614353, 41.395947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.185806, 34.856880, 41.325085> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281530, -0.080596, 0.956162,
		0.565460, 0.791127, 0.233178,
		-0.775239, 0.606318, -0.177152,
		43.953236, 35.038776, 41.271938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.413654, 35.040253, 42.037888>,  <44.495903, 34.614353, 41.395947>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.413654, 35.040253, 42.037888> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.048702, 35.075504, 41.877991>,  <43.829731, 35.096657, 41.782051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.048702, 35.075504, 41.877991>,  <44.413654, 35.040253, 42.037888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.048702, 35.075504, 41.877991> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405211, -0.056066, 0.912502,
		0.058005, 0.994530, 0.086864,
		-0.912381, 0.088128, -0.399743,
		43.774986, 35.101944, 41.758068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.086075, 35.504337, 42.400215>,  <44.413654, 35.040253, 42.037888>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.086075, 35.504337, 42.400215> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.797867, 35.288910, 42.225498>,  <43.624943, 35.159653, 42.120670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.797867, 35.288910, 42.225498>,  <44.086075, 35.504337, 42.400215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.797867, 35.288910, 42.225498> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449279, -0.117225, 0.885667,
		-0.528198, 0.834385, -0.157505,
		-0.720524, -0.538571, -0.436790,
		43.581711, 35.127338, 42.094460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.454311, 35.634090, 42.738762>,  <44.086075, 35.504337, 42.400215>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.454311, 35.634090, 42.738762> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.367359, 35.274452, 42.586781>,  <43.315189, 35.058670, 42.495590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.367359, 35.274452, 42.586781>,  <43.454311, 35.634090, 42.738762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.367359, 35.274452, 42.586781> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386825, -0.278039, 0.879239,
		-0.896165, 0.338108, -0.287354,
		-0.217382, -0.899098, -0.379957,
		43.302143, 35.004723, 42.472794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.819324, 35.460922, 42.974686>,  <43.454311, 35.634090, 42.738762>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.819324, 35.460922, 42.974686> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.947823, 35.101303, 42.855675>,  <43.024921, 34.885532, 42.784267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.947823, 35.101303, 42.855675>,  <42.819324, 35.460922, 42.974686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.947823, 35.101303, 42.855675> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630939, -0.437484, 0.640721,
		-0.706198, -0.018111, -0.707783,
		0.321248, -0.899044, -0.297523,
		43.044197, 34.831589, 42.766418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.301872, 35.051067, 42.758404>,  <42.819324, 35.460922, 42.974686>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.301872, 35.051067, 42.758404> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.580551, 34.777695, 42.845612>,  <42.747761, 34.613670, 42.897938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.580551, 34.777695, 42.845612>,  <42.301872, 35.051067, 42.758404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.580551, 34.777695, 42.845612> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646560, -0.466577, 0.603545,
		-0.310754, -0.561456, -0.766942,
		0.696701, -0.683427, 0.218024,
		42.789562, 34.572666, 42.911018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.970509, 34.375019, 42.747871>,  <42.301872, 35.051067, 42.758404>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.970509, 34.375019, 42.747871> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.306831, 34.320160, 42.957344>,  <42.508625, 34.287247, 43.083027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.306831, 34.320160, 42.957344>,  <41.970509, 34.375019, 42.747871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.306831, 34.320160, 42.957344> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540637, -0.261993, 0.799420,
		0.027565, -0.955276, -0.294429,
		0.840804, -0.137144, 0.523679,
		42.559074, 34.279018, 43.114449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.893459, 37.048920, 41.808243> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.551441, 36.919140, 41.646442>,  <39.346230, 36.841270, 41.549362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.551441, 36.919140, 41.646442>,  <39.893459, 37.048920, 41.808243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.551441, 36.919140, 41.646442> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514989, -0.440098, -0.735595,
		0.060644, -0.837284, 0.543394,
		-0.855049, -0.324451, -0.404503,
		39.294926, 36.821804, 41.525093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.931107, 36.293533, 41.601555>,  <39.893459, 37.048920, 41.808243>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.931107, 36.293533, 41.601555> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.658993, 36.474419, 41.370827>,  <39.495724, 36.582951, 41.232391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.658993, 36.474419, 41.370827>,  <39.931107, 36.293533, 41.601555>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.658993, 36.474419, 41.370827> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400028, -0.430365, -0.809175,
		-0.614161, -0.781211, 0.111873,
		-0.680282, 0.452211, -0.576819,
		39.454906, 36.610081, 41.197781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.758770, 35.780018, 41.105724>,  <39.931107, 36.293533, 41.601555>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.758770, 35.780018, 41.105724> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.629745, 36.119785, 40.938660>,  <39.552330, 36.323647, 40.838421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.629745, 36.119785, 40.938660>,  <39.758770, 35.780018, 41.105724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.629745, 36.119785, 40.938660> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311252, -0.321526, -0.894284,
		-0.893911, -0.418460, -0.160671,
		-0.322562, 0.849419, -0.417662,
		39.532978, 36.374611, 40.813362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.505920, 35.541924, 40.525665>,  <39.758770, 35.780018, 41.105724>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.505920, 35.541924, 40.525665> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.530167, 35.935387, 40.457855>,  <39.544716, 36.171467, 40.417168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.530167, 35.935387, 40.457855>,  <39.505920, 35.541924, 40.525665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.530167, 35.935387, 40.457855> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118640, -0.175736, -0.977262,
		-0.991086, 0.039123, -0.127353,
		0.060614, 0.983660, -0.169528,
		39.548351, 36.230484, 40.406998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.136417, 35.724060, 39.919357>,  <39.505920, 35.541924, 40.525665>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.136417, 35.724060, 39.919357> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.396999, 36.027016, 39.901627>,  <39.553349, 36.208790, 39.890987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.396999, 36.027016, 39.901627>,  <39.136417, 35.724060, 39.919357>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.396999, 36.027016, 39.901627> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264372, -0.281385, -0.922459,
		-0.711133, 0.589225, -0.383543,
		0.651459, 0.757388, -0.044327,
		39.592438, 36.254230, 39.888329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.069603, 35.915569, 39.300140>,  <39.136417, 35.724060, 39.919357>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.069603, 35.915569, 39.300140> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.408463, 36.116104, 39.370579>,  <39.611778, 36.236423, 39.412842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.408463, 36.116104, 39.370579>,  <39.069603, 35.915569, 39.300140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.408463, 36.116104, 39.370579> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257432, -0.097315, -0.961384,
		-0.464839, 0.859763, -0.211500,
		0.847144, 0.501336, 0.176094,
		39.662605, 36.266506, 39.423409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.042702, 36.538403, 38.773270>,  <39.069603, 35.915569, 39.300140>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.042702, 36.538403, 38.773270> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.411758, 36.457245, 38.904465>,  <39.633190, 36.408550, 38.983181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.411758, 36.457245, 38.904465>,  <39.042702, 36.538403, 38.773270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.411758, 36.457245, 38.904465> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333382, -0.007990, -0.942758,
		0.193900, 0.979168, 0.060269,
		0.922637, -0.202893, 0.327986,
		39.688549, 36.396378, 39.002861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.435165, 37.116314, 38.421448>,  <39.042702, 36.538403, 38.773270>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.435165, 37.116314, 38.421448> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.726894, 36.856838, 38.508427>,  <39.901932, 36.701153, 38.560616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.726894, 36.856838, 38.508427>,  <39.435165, 37.116314, 38.421448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.726894, 36.856838, 38.508427> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367217, 0.102985, -0.924417,
		0.577264, 0.754054, 0.313319,
		0.729327, -0.648689, 0.217451,
		39.945694, 36.662231, 38.573662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.099266, 37.337692, 38.015759>,  <39.435165, 37.116314, 38.421448>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.099266, 37.337692, 38.015759> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.128860, 36.951283, 38.114815>,  <40.146618, 36.719437, 38.174248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.128860, 36.951283, 38.114815>,  <40.099266, 37.337692, 38.015759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.128860, 36.951283, 38.114815> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479480, -0.183283, -0.858200,
		0.874429, 0.182232, 0.449628,
		0.073982, -0.966022, 0.247644,
		40.151054, 36.661476, 38.189110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.743759, 37.329018, 37.934731>,  <40.099266, 37.337692, 38.015759>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.743759, 37.329018, 37.934731> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.592922, 36.960621, 37.895565>,  <40.502422, 36.739582, 37.872066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.592922, 36.960621, 37.895565>,  <40.743759, 37.329018, 37.934731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.592922, 36.960621, 37.895565> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350010, -0.043828, -0.935720,
		0.857495, -0.387119, 0.338882,
		-0.377088, -0.920987, -0.097913,
		40.479797, 36.684326, 37.866192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.267292, 36.951588, 37.692562>,  <40.743759, 37.329018, 37.934731>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.267292, 36.951588, 37.692562> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.935345, 36.751278, 37.594135>,  <40.736176, 36.631092, 37.535080>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.935345, 36.751278, 37.594135>,  <41.267292, 36.951588, 37.692562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.935345, 36.751278, 37.594135> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349811, -0.123383, -0.928660,
		0.434687, -0.856740, 0.277568,
		-0.829867, -0.500773, -0.246065,
		40.686386, 36.601048, 37.520317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.482880, 36.391808, 37.251999>,  <41.267292, 36.951588, 37.692562>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.482880, 36.391808, 37.251999> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.092934, 36.421307, 37.167904>,  <40.858967, 36.439007, 37.117447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.092934, 36.421307, 37.167904>,  <41.482880, 36.391808, 37.251999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.092934, 36.421307, 37.167904> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215184, 0.067159, -0.974262,
		-0.057734, -0.995013, -0.081341,
		-0.974866, 0.073751, -0.210234,
		40.800472, 36.443432, 37.104836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.325172, 35.868465, 36.721413>,  <41.482880, 36.391808, 37.251999>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.325172, 35.868465, 36.721413> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.067741, 36.173283, 36.692860>,  <40.913284, 36.356174, 36.675728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.067741, 36.173283, 36.692860>,  <41.325172, 35.868465, 36.721413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.067741, 36.173283, 36.692860> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217992, 0.093097, -0.971500,
		-0.733683, -0.640794, -0.226035,
		-0.643575, 0.762047, -0.071384,
		40.874668, 36.401897, 36.671444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.048355, 36.234402, 36.221275>,  <41.325172, 35.868465, 36.721413>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.048355, 36.234402, 36.221275> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.013233, 36.387726, 35.853500>,  <40.992161, 36.479721, 35.632835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.013233, 36.387726, 35.853500>,  <41.048355, 36.234402, 36.221275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.013233, 36.387726, 35.853500> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263894, 0.881073, 0.392519,
		0.960547, 0.277100, 0.023788,
		-0.087808, 0.383310, -0.919436,
		40.986889, 36.502720, 35.577671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.610268, 35.963802, 35.668221>,  <41.048355, 36.234402, 36.221275>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.610268, 35.963802, 35.668221> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.756985, 35.592159, 35.687096>,  <41.845013, 35.369175, 35.698421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.756985, 35.592159, 35.687096>,  <41.610268, 35.963802, 35.668221>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.756985, 35.592159, 35.687096> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696788, -0.240757, 0.675664,
		-0.616402, -0.280708, -0.735698,
		0.366789, -0.929106, 0.047191,
		41.867020, 35.313427, 35.701252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.118149, 35.438904, 35.447319>,  <41.610268, 35.963802, 35.668221>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.118149, 35.438904, 35.447319> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.372246, 35.245953, 35.688572>,  <41.524704, 35.130180, 35.833324>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.372246, 35.245953, 35.688572>,  <41.118149, 35.438904, 35.447319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.372246, 35.245953, 35.688572> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771991, -0.374150, 0.513850,
		-0.022209, -0.792036, -0.610070,
		0.635245, -0.482380, 0.603135,
		41.562820, 35.101238, 35.869511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.891521, 34.677628, 35.463154>,  <41.118149, 35.438904, 35.447319>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.891521, 34.677628, 35.463154> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.132187, 34.731773, 35.778030>,  <41.276585, 34.764263, 35.966957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.132187, 34.731773, 35.778030>,  <40.891521, 34.677628, 35.463154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.132187, 34.731773, 35.778030> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724896, -0.321353, 0.609309,
		0.335450, -0.937234, -0.095218,
		0.601664, 0.135369, 0.787195,
		41.312687, 34.772385, 36.014191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.982143, 34.008320, 35.731640>,  <40.891521, 34.677628, 35.463154>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.982143, 34.008320, 35.731640> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.065639, 34.274513, 36.018291>,  <41.115738, 34.434231, 36.190281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.065639, 34.274513, 36.018291>,  <40.982143, 34.008320, 35.731640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.065639, 34.274513, 36.018291> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534528, -0.535996, 0.653443,
		0.818968, -0.519456, 0.243840,
		0.208738, 0.665488, 0.716627,
		41.128262, 34.474159, 36.233280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.121071, 33.594181, 36.382584>,  <40.982143, 34.008320, 35.731640>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.121071, 33.594181, 36.382584> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.087608, 33.957218, 36.547153>,  <41.067532, 34.175041, 36.645897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.087608, 33.957218, 36.547153>,  <41.121071, 33.594181, 36.382584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.087608, 33.957218, 36.547153> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313097, -0.415902, 0.853813,
		0.946030, -0.057392, 0.318957,
		-0.083653, 0.907597, 0.411425,
		41.062511, 34.229496, 36.670582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.145397, 33.419849, 37.088570>,  <41.121071, 33.594181, 36.382584>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.145397, 33.419849, 37.088570> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.976254, 33.781620, 37.111240>,  <40.874767, 33.998680, 37.124844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.976254, 33.781620, 37.111240>,  <41.145397, 33.419849, 37.088570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.976254, 33.781620, 37.111240> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626852, -0.337098, 0.702440,
		0.654407, 0.261506, 0.709483,
		-0.422858, 0.904422, 0.056674,
		40.849396, 34.052948, 37.128242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.143463, 33.489555, 37.734074>,  <41.145397, 33.419849, 37.088570>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.143463, 33.489555, 37.734074> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.879475, 33.746414, 37.578079>,  <40.721081, 33.900532, 37.484482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.879475, 33.746414, 37.578079>,  <41.143463, 33.489555, 37.734074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.879475, 33.746414, 37.578079> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691749, -0.316856, 0.648911,
		0.293129, 0.698031, 0.653321,
		-0.659969, 0.642149, -0.389982,
		40.681484, 33.939060, 37.461086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.939011, 33.928280, 38.205009>,  <41.143463, 33.489555, 37.734074>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.939011, 33.928280, 38.205009> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.640339, 33.898701, 37.940586>,  <40.461136, 33.880951, 37.781933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.640339, 33.898701, 37.940586>,  <40.939011, 33.928280, 38.205009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.640339, 33.898701, 37.940586> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637852, -0.202350, 0.743101,
		-0.188718, 0.976517, 0.103922,
		-0.746679, -0.073950, -0.661061,
		40.416336, 33.876514, 37.742268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.339401, 34.237629, 38.608837>,  <40.939011, 33.928280, 38.205009>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.339401, 34.237629, 38.608837> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.189342, 34.046494, 38.291111>,  <40.099308, 33.931812, 38.100475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.189342, 34.046494, 38.291111>,  <40.339401, 34.237629, 38.608837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.189342, 34.046494, 38.291111> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801346, -0.263559, 0.537010,
		-0.465952, 0.837980, -0.284039,
		-0.375143, -0.477835, -0.794318,
		40.076801, 33.903145, 38.052814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.655254, 34.521179, 38.469204>,  <40.339401, 34.237629, 38.608837>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.655254, 34.521179, 38.469204> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.637081, 34.156925, 38.304924>,  <39.626175, 33.938374, 38.206356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.637081, 34.156925, 38.304924>,  <39.655254, 34.521179, 38.469204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.637081, 34.156925, 38.304924> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655100, -0.283220, 0.700450,
		-0.754175, 0.300876, -0.583690,
		-0.045436, -0.910637, -0.410702,
		39.623451, 33.883736, 38.181713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.887356, 34.379749, 38.453835>,  <39.655254, 34.521179, 38.469204>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.887356, 34.379749, 38.453835> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100132, 34.042542, 38.421947>,  <39.227798, 33.840218, 38.402817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100132, 34.042542, 38.421947>,  <38.887356, 34.379749, 38.453835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.100132, 34.042542, 38.421947> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578139, -0.430349, 0.693220,
		-0.618705, -0.322664, -0.716304,
		0.531938, -0.843023, -0.079714,
		39.259712, 33.789635, 38.398033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.379185, 33.957607, 38.310204>,  <38.887356, 34.379749, 38.453835>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.379185, 33.957607, 38.310204> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.692959, 33.757504, 38.456844>,  <38.881226, 33.637444, 38.544830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.692959, 33.757504, 38.456844>,  <38.379185, 33.957607, 38.310204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.692959, 33.757504, 38.456844> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562453, -0.324716, 0.760398,
		-0.261348, -0.802686, -0.536089,
		0.784438, -0.500254, 0.366609,
		38.928291, 33.607426, 38.566826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.122189, 33.328262, 38.542816>,  <38.379185, 33.957607, 38.310204>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.122189, 33.328262, 38.542816> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.479630, 33.307831, 38.721195>,  <38.694096, 33.295574, 38.828220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.479630, 33.307831, 38.721195>,  <38.122189, 33.328262, 38.542816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.479630, 33.307831, 38.721195> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431194, -0.373664, 0.821247,
		0.124687, -0.926157, -0.355931,
		0.893602, -0.051076, 0.445944,
		38.747711, 33.292507, 38.854977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.164692, 32.720371, 38.740959>,  <38.122189, 33.328262, 38.542816>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.164692, 32.720371, 38.740959> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413227, 32.911762, 38.989155>,  <38.562347, 33.026596, 39.138073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413227, 32.911762, 38.989155>,  <38.164692, 32.720371, 38.740959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.413227, 32.911762, 38.989155> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429969, -0.453808, 0.780503,
		0.655034, -0.751743, -0.076236,
		0.621334, 0.478477, 0.620486,
		38.599628, 33.055305, 39.175301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.934036, 31.952902, 38.739731>,  <38.164692, 32.720371, 38.740959>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.934036, 31.952902, 38.739731> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.557400, 31.820662, 38.765366>,  <37.331417, 31.741318, 38.780746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.557400, 31.820662, 38.765366>,  <37.934036, 31.952902, 38.739731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.557400, 31.820662, 38.765366> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066128, -0.005073, -0.997798,
		0.330199, -0.943757, -0.017085,
		-0.941592, -0.330602, 0.064084,
		37.274921, 31.721481, 38.784592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935669, 31.394329, 38.383175>,  <37.934036, 31.952902, 38.739731>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.935669, 31.394329, 38.383175> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.558670, 31.527586, 38.393837>,  <37.332470, 31.607540, 38.400234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.558670, 31.527586, 38.393837>,  <37.935669, 31.394329, 38.383175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.558670, 31.527586, 38.393837> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038948, -0.030279, -0.998782,
		-0.331933, -0.942389, 0.041513,
		-0.942499, 0.333145, 0.026654,
		37.275921, 31.627529, 38.401833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.564716, 30.976389, 37.933914>,  <37.935669, 31.394329, 38.383175>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.564716, 30.976389, 37.933914> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.373634, 31.324671, 37.980675>,  <37.258984, 31.533640, 38.008732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.373634, 31.324671, 37.980675>,  <37.564716, 30.976389, 37.933914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.373634, 31.324671, 37.980675> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047798, 0.158630, -0.986180,
		-0.877218, -0.465518, -0.117396,
		-0.477708, 0.870706, 0.116903,
		37.230324, 31.585882, 38.015747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.347736, 31.017485, 37.276340>,  <37.564716, 30.976389, 37.933914>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.347736, 31.017485, 37.276340> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.261997, 31.367271, 37.450405>,  <37.210556, 31.577143, 37.554844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.261997, 31.367271, 37.450405>,  <37.347736, 31.017485, 37.276340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.261997, 31.367271, 37.450405> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089607, 0.426029, -0.900261,
		-0.972639, -0.231960, -0.012959,
		-0.214346, 0.874467, 0.435158,
		37.197693, 31.629612, 37.580952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763088, 31.343708, 36.853615>,  <37.347736, 31.017485, 37.276340>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.763088, 31.343708, 36.853615> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.948280, 31.647411, 37.036560>,  <37.059395, 31.829634, 37.146328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.948280, 31.647411, 37.036560>,  <36.763088, 31.343708, 36.853615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.948280, 31.647411, 37.036560> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050258, 0.492675, -0.868761,
		-0.884945, 0.425202, 0.189938,
		0.462977, 0.759259, 0.457360,
		37.087173, 31.875189, 37.173767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457264, 31.969862, 36.526749>,  <36.763088, 31.343708, 36.853615>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.457264, 31.969862, 36.526749> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.799507, 32.091866, 36.694035>,  <37.004852, 32.165070, 36.794407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.799507, 32.091866, 36.694035>,  <36.457264, 31.969862, 36.526749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.799507, 32.091866, 36.694035> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238748, 0.484340, -0.841673,
		-0.459280, 0.819989, 0.341584,
		0.855606, 0.305011, 0.418218,
		37.056190, 32.183369, 36.819500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.575108, 32.640717, 36.213390>,  <36.457264, 31.969862, 36.526749>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.575108, 32.640717, 36.213390> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.936356, 32.565968, 36.368023>,  <37.153107, 32.521118, 36.460804>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.936356, 32.565968, 36.368023>,  <36.575108, 32.640717, 36.213390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.936356, 32.565968, 36.368023> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429250, 0.415207, -0.802090,
		-0.010623, 0.890327, 0.455198,
		0.903123, -0.186873, 0.386583,
		37.207294, 32.509907, 36.483997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899368, 33.259449, 36.098377>,  <36.575108, 32.640717, 36.213390>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.899368, 33.259449, 36.098377> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.193092, 32.992447, 36.147720>,  <37.369328, 32.832245, 36.177326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.193092, 32.992447, 36.147720>,  <36.899368, 33.259449, 36.098377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.193092, 32.992447, 36.147720> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376557, 0.249354, -0.892204,
		0.564793, 0.701608, 0.434459,
		0.734311, -0.667509, 0.123362,
		37.413387, 32.792194, 36.184731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468903, 33.614857, 35.949181>,  <36.899368, 33.259449, 36.098377>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.468903, 33.614857, 35.949181> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.561054, 33.229008, 35.897915>,  <37.616344, 32.997498, 35.867153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.561054, 33.229008, 35.897915>,  <37.468903, 33.614857, 35.949181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.561054, 33.229008, 35.897915> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362842, 0.207365, -0.908485,
		0.902923, 0.162792, 0.397779,
		0.230380, -0.964623, -0.128167,
		37.630169, 32.939621, 35.859467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.147182, 33.619049, 35.701546>,  <37.468903, 33.614857, 35.949181>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.147182, 33.619049, 35.701546> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.996960, 33.264950, 35.591785>,  <37.906826, 33.052490, 35.525928>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.996960, 33.264950, 35.591785>,  <38.147182, 33.619049, 35.701546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.996960, 33.264950, 35.591785> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259877, 0.183611, -0.948025,
		0.889618, -0.427348, 0.161099,
		-0.375557, -0.885246, -0.274402,
		37.884293, 32.999374, 35.509464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.562714, 33.557190, 35.187164>,  <38.147182, 33.619049, 35.701546>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.562714, 33.557190, 35.187164> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.290657, 33.269688, 35.129490>,  <38.127422, 33.097187, 35.094887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.290657, 33.269688, 35.129490>,  <38.562714, 33.557190, 35.187164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.290657, 33.269688, 35.129490> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170857, 0.035843, -0.984644,
		0.712889, -0.694336, 0.098427,
		-0.680145, -0.718758, -0.144184,
		38.086613, 33.054062, 35.086235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.853451, 32.954170, 34.870670>,  <38.562714, 33.557190, 35.187164>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.853451, 32.954170, 34.870670> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.461285, 33.001194, 34.807472>,  <38.225986, 33.029408, 34.769554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.461285, 33.001194, 34.807472>,  <38.853451, 32.954170, 34.870670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.461285, 33.001194, 34.807472> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150190, -0.072615, -0.985987,
		-0.127388, -0.990407, 0.053536,
		-0.980416, 0.117562, -0.157999,
		38.167160, 33.036461, 34.760071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.313644, 30.402435, 42.290092> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.004250, 30.576473, 42.105743>,  <35.818611, 30.680897, 41.995132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.004250, 30.576473, 42.105743>,  <36.313644, 30.402435, 42.290092>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.004250, 30.576473, 42.105743> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487141, -0.057073, -0.871457,
		-0.405470, -0.898574, -0.167807,
		-0.773491, 0.435095, -0.460873,
		35.772202, 30.707001, 41.967480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.217815, 29.943926, 41.715946>,  <36.313644, 30.402435, 42.290092>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.217815, 29.943926, 41.715946> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.035881, 30.292385, 41.641949>,  <35.926720, 30.501461, 41.597549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.035881, 30.292385, 41.641949>,  <36.217815, 29.943926, 41.715946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.035881, 30.292385, 41.641949> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494978, 0.074596, -0.865698,
		-0.740353, -0.485318, -0.465128,
		-0.454836, 0.871150, -0.184995,
		35.899429, 30.553730, 41.586449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.094421, 29.950598, 40.931866>,  <36.217815, 29.943926, 41.715946>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.094421, 29.950598, 40.931866> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.042728, 30.328300, 41.052979>,  <36.011711, 30.554922, 41.125648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.042728, 30.328300, 41.052979>,  <36.094421, 29.950598, 40.931866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.042728, 30.328300, 41.052979> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303675, 0.328361, -0.894405,
		-0.943970, -0.023640, -0.329182,
		-0.129234, 0.944256, 0.302785,
		36.003960, 30.611578, 41.143814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.887623, 30.265244, 40.374504>,  <36.094421, 29.950598, 40.931866>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.887623, 30.265244, 40.374504> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.025341, 30.582811, 40.574966>,  <36.107971, 30.773352, 40.695244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.025341, 30.582811, 40.574966>,  <35.887623, 30.265244, 40.374504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.025341, 30.582811, 40.574966> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380256, 0.370127, -0.847592,
		-0.858408, 0.482389, -0.174458,
		0.344297, 0.793918, 0.501152,
		36.128632, 30.820988, 40.725311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.714817, 30.839535, 40.029331>,  <35.887623, 30.265244, 40.374504>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.714817, 30.839535, 40.029331> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.013165, 30.992493, 40.247490>,  <36.192173, 31.084269, 40.378384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.013165, 30.992493, 40.247490>,  <35.714817, 30.839535, 40.029331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.013165, 30.992493, 40.247490> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393519, 0.407661, -0.823988,
		-0.537427, 0.829208, 0.153580,
		0.745865, 0.382397, 0.545397,
		36.236923, 31.107212, 40.411110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.805908, 31.624159, 39.869530>,  <35.714817, 30.839535, 40.029331>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.805908, 31.624159, 39.869530> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.149170, 31.497929, 40.031513>,  <36.355125, 31.422190, 40.128704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.149170, 31.497929, 40.031513>,  <35.805908, 31.624159, 39.869530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.149170, 31.497929, 40.031513> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489393, 0.264453, -0.830999,
		0.155151, 0.911305, 0.381382,
		0.858151, -0.315576, 0.404956,
		36.406616, 31.403255, 40.153000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.297504, 32.157818, 39.866962>,  <35.805908, 31.624159, 39.869530>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.297504, 32.157818, 39.866962> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.501961, 31.814035, 39.870438>,  <36.624634, 31.607767, 39.872520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.501961, 31.814035, 39.870438>,  <36.297504, 32.157818, 39.866962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.501961, 31.814035, 39.870438> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377488, 0.215401, -0.900614,
		0.772165, 0.463618, 0.434533,
		0.511140, -0.859454, 0.008685,
		36.655304, 31.556200, 39.873043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.989353, 32.360466, 39.804592>,  <36.297504, 32.157818, 39.866962>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.989353, 32.360466, 39.804592> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.936783, 31.985767, 39.674831>,  <36.905239, 31.760948, 39.596977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.936783, 31.985767, 39.674831>,  <36.989353, 32.360466, 39.804592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.936783, 31.985767, 39.674831> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405667, 0.247763, -0.879800,
		0.904522, -0.247230, 0.347443,
		-0.131430, -0.936745, -0.324400,
		36.897354, 31.704744, 39.577511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.590321, 32.257278, 39.351166>,  <36.989353, 32.360466, 39.804592>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.590321, 32.257278, 39.351166> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.316189, 31.978174, 39.267780>,  <37.151711, 31.810713, 39.217751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.316189, 31.978174, 39.267780>,  <37.590321, 32.257278, 39.351166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.316189, 31.978174, 39.267780> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129847, 0.164587, -0.977779,
		0.716565, -0.697168, -0.022194,
		-0.685328, -0.697760, -0.208462,
		37.110592, 31.768847, 39.205242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.238323, 32.297020, 39.352501>,  <37.590321, 32.257278, 39.351166>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.238323, 32.297020, 39.352501> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.371948, 32.653694, 39.474674>,  <38.452122, 32.867699, 39.547977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.371948, 32.653694, 39.474674>,  <38.238323, 32.297020, 39.352501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.371948, 32.653694, 39.474674> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345616, -0.185598, 0.919838,
		0.876899, -0.412847, 0.246181,
		0.334062, 0.891690, 0.305437,
		38.472168, 32.921200, 39.566307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.518394, 32.199615, 40.000187>,  <38.238323, 32.297020, 39.352501>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.518394, 32.199615, 40.000187> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.473148, 32.596958, 39.991692>,  <38.446003, 32.835365, 39.986595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.473148, 32.596958, 39.991692>,  <38.518394, 32.199615, 40.000187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.473148, 32.596958, 39.991692> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326126, -0.016931, 0.945174,
		0.938535, 0.113835, 0.325875,
		-0.113111, 0.993356, -0.021234,
		38.439217, 32.894966, 39.985321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.797752, 32.477417, 40.640911>,  <38.518394, 32.199615, 40.000187>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.797752, 32.477417, 40.640911> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.534214, 32.754597, 40.523785>,  <38.376091, 32.920906, 40.453510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.534214, 32.754597, 40.523785>,  <38.797752, 32.477417, 40.640911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.534214, 32.754597, 40.523785> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233248, 0.181883, 0.955256,
		0.715201, 0.697668, 0.041795,
		-0.658850, 0.692949, -0.292812,
		38.336559, 32.962482, 40.435940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.765247, 32.796143, 41.172535>,  <38.797752, 32.477417, 40.640911>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.765247, 32.796143, 41.172535> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.467678, 32.979683, 40.978203>,  <38.289135, 33.089806, 40.861603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.467678, 32.979683, 40.978203>,  <38.765247, 32.796143, 41.172535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.467678, 32.979683, 40.978203> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472359, 0.153207, 0.867989,
		0.472709, 0.875206, 0.102767,
		-0.743924, 0.458849, -0.485834,
		38.244499, 33.117336, 40.832451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690228, 33.489491, 41.400612>,  <38.765247, 32.796143, 41.172535>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.690228, 33.489491, 41.400612> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.326969, 33.425674, 41.245781>,  <38.109016, 33.387386, 41.152882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.326969, 33.425674, 41.245781>,  <38.690228, 33.489491, 41.400612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.326969, 33.425674, 41.245781> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411839, 0.506664, 0.757417,
		0.075280, 0.847254, -0.525827,
		-0.908142, -0.159537, -0.387074,
		38.054527, 33.377811, 41.129658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.402962, 34.153801, 41.422661>,  <38.690228, 33.489491, 41.400612>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.402962, 34.153801, 41.422661> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.091026, 33.904213, 41.402588>,  <37.903866, 33.754459, 41.390545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.091026, 33.904213, 41.402588>,  <38.402962, 34.153801, 41.422661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.091026, 33.904213, 41.402588> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481112, 0.546150, 0.685749,
		-0.400479, 0.558915, -0.726106,
		-0.779838, -0.623967, -0.050179,
		37.857075, 33.717022, 41.387535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.739216, 34.607063, 41.445423>,  <38.402962, 34.153801, 41.422661>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.739216, 34.607063, 41.445423> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.599556, 34.248955, 41.556114>,  <37.515759, 34.034088, 41.622528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.599556, 34.248955, 41.556114>,  <37.739216, 34.607063, 41.445423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.599556, 34.248955, 41.556114> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641423, 0.443623, 0.625920,
		-0.683131, 0.041043, -0.729141,
		-0.349154, -0.895273, 0.276727,
		37.494808, 33.980373, 41.639133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.012730, 34.569977, 41.557270>,  <37.739216, 34.607063, 41.445423>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.012730, 34.569977, 41.557270> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.099922, 34.247665, 41.777523>,  <37.152237, 34.054279, 41.909676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.099922, 34.247665, 41.777523>,  <37.012730, 34.569977, 41.557270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.099922, 34.247665, 41.777523> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564859, 0.355932, 0.744477,
		-0.795875, -0.473316, -0.377565,
		0.217986, -0.805782, 0.550634,
		37.165318, 34.005932, 41.942715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.420258, 34.261639, 41.859386>,  <37.012730, 34.569977, 41.557270>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.420258, 34.261639, 41.859386> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.715588, 34.127159, 42.093258>,  <36.892784, 34.046471, 42.233582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.715588, 34.127159, 42.093258>,  <36.420258, 34.261639, 41.859386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.715588, 34.127159, 42.093258> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597335, 0.076566, 0.798329,
		-0.313167, -0.938672, -0.144296,
		0.738321, -0.336203, 0.584679,
		36.937084, 34.026299, 42.268661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.098438, 34.231743, 42.420902>,  <36.420258, 34.261639, 41.859386>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.098438, 34.231743, 42.420902> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.463768, 34.156719, 42.565491>,  <36.682964, 34.111706, 42.652245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.463768, 34.156719, 42.565491>,  <36.098438, 34.231743, 42.420902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.463768, 34.156719, 42.565491> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375267, -0.042867, 0.925925,
		-0.158175, -0.981317, -0.109538,
		0.913321, -0.187564, 0.361475,
		36.737766, 34.100449, 42.673935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.012077, 33.648975, 42.910751>,  <36.098438, 34.231743, 42.420902>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.012077, 33.648975, 42.910751> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.335613, 33.866890, 42.999283>,  <36.529736, 33.997639, 43.052402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.335613, 33.866890, 42.999283>,  <36.012077, 33.648975, 42.910751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.335613, 33.866890, 42.999283> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272496, 0.013724, 0.962059,
		0.521079, -0.838463, 0.159553,
		0.808840, 0.544786, 0.221326,
		36.578266, 34.030327, 43.065681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.393391, 33.226536, 43.400345>,  <36.012077, 33.648975, 42.910751>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.393391, 33.226536, 43.400345> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.493252, 33.610447, 43.451740>,  <36.553169, 33.840794, 43.482578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.493252, 33.610447, 43.451740>,  <36.393391, 33.226536, 43.400345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.493252, 33.610447, 43.451740> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189248, -0.081772, 0.978518,
		0.949663, -0.268602, 0.161221,
		0.249649, 0.959774, 0.128489,
		36.568146, 33.898380, 43.490288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.810173, 33.197594, 43.966724>,  <36.393391, 33.226536, 43.400345>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.810173, 33.197594, 43.966724> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.755917, 33.593388, 43.946621>,  <36.723362, 33.830864, 43.934559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.755917, 33.593388, 43.946621>,  <36.810173, 33.197594, 43.966724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.755917, 33.593388, 43.946621> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058077, 0.042702, 0.997399,
		0.989054, 0.138211, 0.051674,
		-0.135645, 0.989482, -0.050262,
		36.715221, 33.890232, 43.931541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.181118, 33.543423, 44.501575>,  <36.810173, 33.197594, 43.966724>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.181118, 33.543423, 44.501575> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.871830, 33.775318, 44.398792>,  <36.686256, 33.914455, 44.337120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.871830, 33.775318, 44.398792>,  <37.181118, 33.543423, 44.501575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.871830, 33.775318, 44.398792> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203857, 0.156459, 0.966418,
		0.600478, 0.799636, -0.002793,
		-0.773219, 0.579743, -0.256962,
		36.639866, 33.949242, 44.321705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<30.905750, 35.886013, 42.302280> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.253279, 35.820934, 42.489330>,  <31.461796, 35.781887, 42.601562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.253279, 35.820934, 42.489330>,  <30.905750, 35.886013, 42.302280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.253279, 35.820934, 42.489330> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495123, 0.283755, -0.821180,
		0.000914, 0.944993, 0.327089,
		0.868822, -0.162700, 0.467628,
		31.513926, 35.772125, 42.629620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.319815, 36.438431, 42.144417>,  <30.905750, 35.886013, 42.302280>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.319815, 36.438431, 42.144417> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.559561, 36.136703, 42.251572>,  <31.703409, 35.955666, 42.315865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.559561, 36.136703, 42.251572>,  <31.319815, 36.438431, 42.144417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.559561, 36.136703, 42.251572> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607360, 0.210550, -0.766018,
		0.521417, 0.621830, 0.584339,
		0.599365, -0.754319, 0.267890,
		31.739370, 35.910408, 42.331940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.951128, 36.696136, 42.069763>,  <31.319815, 36.438431, 42.144417>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.951128, 36.696136, 42.069763> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.009895, 36.300518, 42.064014>,  <32.045155, 36.063148, 42.060566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.009895, 36.300518, 42.064014>,  <31.951128, 36.696136, 42.069763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.009895, 36.300518, 42.064014> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680448, 0.111602, -0.724248,
		0.717917, 0.096626, 0.689390,
		0.146918, -0.989044, -0.014371,
		32.053970, 36.003803, 42.059704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.598988, 36.617172, 41.958492>,  <31.951128, 36.696136, 42.069763>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.598988, 36.617172, 41.958492> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.460644, 36.256424, 41.854942>,  <32.377640, 36.039974, 41.792812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.460644, 36.256424, 41.854942>,  <32.598988, 36.617172, 41.958492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.460644, 36.256424, 41.854942> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543680, 0.032237, -0.838673,
		0.764720, -0.430802, 0.479180,
		-0.345855, -0.901870, -0.258871,
		32.356888, 35.985863, 41.777283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.208843, 36.154335, 41.774117>,  <32.598988, 36.617172, 41.958492>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.208843, 36.154335, 41.774117> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.878300, 35.998817, 41.611156>,  <32.679974, 35.905506, 41.513378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.878300, 35.998817, 41.611156>,  <33.208843, 36.154335, 41.774117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.878300, 35.998817, 41.611156> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430553, 0.030125, -0.902062,
		0.362991, -0.920831, 0.142504,
		-0.826354, -0.388796, -0.407402,
		32.630394, 35.882179, 41.488937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.519871, 35.839203, 41.285519>,  <33.208843, 36.154335, 41.774117>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.519871, 35.839203, 41.285519> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.140888, 35.771282, 41.177082>,  <32.913498, 35.730530, 41.112019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.140888, 35.771282, 41.177082>,  <33.519871, 35.839203, 41.285519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.140888, 35.771282, 41.177082> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259815, 0.085885, -0.961832,
		0.186603, -0.981729, -0.037256,
		-0.947457, -0.169801, -0.271094,
		32.856651, 35.720341, 41.095753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.415791, 35.260735, 40.789524>,  <33.519871, 35.839203, 41.285519>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.415791, 35.260735, 40.789524> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.114124, 35.515026, 40.723698>,  <32.933125, 35.667603, 40.684204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.114124, 35.515026, 40.723698>,  <33.415791, 35.260735, 40.789524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.114124, 35.515026, 40.723698> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263321, 0.063190, -0.962636,
		-0.601581, -0.769318, -0.215058,
		-0.754163, 0.635733, -0.164564,
		32.887875, 35.705746, 40.674328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.119511, 34.959801, 40.166946>,  <33.415791, 35.260735, 40.789524>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.119511, 34.959801, 40.166946> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.960548, 35.326725, 40.176888>,  <32.865173, 35.546879, 40.182854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.960548, 35.326725, 40.176888>,  <33.119511, 34.959801, 40.166946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.960548, 35.326725, 40.176888> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408820, 0.201229, -0.890153,
		-0.821546, -0.343588, -0.454983,
		-0.397402, 0.917308, 0.024853,
		32.841328, 35.601917, 40.184345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.807133, 35.036488, 39.432335>,  <33.119511, 34.959801, 40.166946>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.807133, 35.036488, 39.432335> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.860924, 35.398544, 39.593647>,  <32.893200, 35.615780, 39.690434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.860924, 35.398544, 39.593647>,  <32.807133, 35.036488, 39.432335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.860924, 35.398544, 39.593647> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436362, 0.311297, -0.844205,
		-0.889665, 0.289502, -0.353107,
		0.134478, 0.905142, 0.403278,
		32.901268, 35.670086, 39.714630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.468372, 35.551888, 38.974102>,  <32.807133, 35.036488, 39.432335>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.468372, 35.551888, 38.974102> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.763783, 35.727135, 39.179092>,  <32.941029, 35.832283, 39.302086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.763783, 35.727135, 39.179092>,  <32.468372, 35.551888, 38.974102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.763783, 35.727135, 39.179092> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395796, 0.333626, -0.855593,
		-0.545823, 0.834715, 0.072988,
		0.738528, 0.438114, 0.512478,
		32.985340, 35.858570, 39.332836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.345181, 36.293793, 38.779411>,  <32.468372, 35.551888, 38.974102>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.345181, 36.293793, 38.779411> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.716343, 36.264938, 38.925720>,  <32.939041, 36.247623, 39.013508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.716343, 36.264938, 38.925720>,  <32.345181, 36.293793, 38.779411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.716343, 36.264938, 38.925720> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367640, 0.340028, -0.865576,
		-0.061933, 0.937644, 0.342034,
		0.927903, -0.072138, 0.365775,
		32.994713, 36.243298, 39.035454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.645515, 36.978653, 38.547150>,  <32.345181, 36.293793, 38.779411>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.645515, 36.978653, 38.547150> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.955845, 36.742668, 38.636635>,  <33.142040, 36.601078, 38.690327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.955845, 36.742668, 38.636635>,  <32.645515, 36.978653, 38.547150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.955845, 36.742668, 38.636635> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403590, 0.191467, -0.894682,
		0.484993, 0.784402, 0.386646,
		0.775820, -0.589961, 0.223717,
		33.188591, 36.565681, 38.703751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.284367, 37.348202, 38.299065>,  <32.645515, 36.978653, 38.547150>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.284367, 37.348202, 38.299065> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.387650, 36.962185, 38.317028>,  <33.449619, 36.730576, 38.327805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.387650, 36.962185, 38.317028>,  <33.284367, 37.348202, 38.299065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.387650, 36.962185, 38.317028> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521001, 0.099957, -0.847683,
		0.813564, 0.242276, 0.528599,
		0.258210, -0.965045, 0.044904,
		33.465111, 36.672672, 38.330498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.989738, 37.333847, 38.139862>,  <33.284367, 37.348202, 38.299065>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.989738, 37.333847, 38.139862> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.822739, 36.982384, 38.047218>,  <33.722538, 36.771503, 37.991631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.822739, 36.982384, 38.047218>,  <33.989738, 37.333847, 38.139862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.822739, 36.982384, 38.047218> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342085, 0.084154, -0.935893,
		0.841824, -0.469970, 0.265443,
		-0.417504, -0.878661, -0.231613,
		33.697487, 36.718784, 37.977734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.477970, 37.026642, 38.667248>,  <33.989738, 37.333847, 38.139862>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.477970, 37.026642, 38.667248> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.725147, 37.340790, 38.652607>,  <34.873451, 37.529278, 38.643822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.725147, 37.340790, 38.652607>,  <34.477970, 37.026642, 38.667248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.725147, 37.340790, 38.652607> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260425, 0.248394, 0.932995,
		0.741841, -0.567002, 0.358023,
		0.617941, 0.785372, -0.036607,
		34.910530, 37.576401, 38.641624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.773777, 37.031448, 39.321964>,  <34.477970, 37.026642, 38.667248>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.773777, 37.031448, 39.321964> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.815350, 37.400673, 39.173828>,  <34.840294, 37.622208, 39.084946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.815350, 37.400673, 39.173828>,  <34.773777, 37.031448, 39.321964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.815350, 37.400673, 39.173828> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308881, 0.383900, 0.870180,
		0.945406, 0.023954, 0.325015,
		0.103929, 0.923064, -0.370340,
		34.846527, 37.677593, 39.062725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.216286, 37.396450, 39.768852>,  <34.773777, 37.031448, 39.321964>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.216286, 37.396450, 39.768852> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.991989, 37.670670, 39.583126>,  <34.857410, 37.835201, 39.471691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.991989, 37.670670, 39.583126>,  <35.216286, 37.396450, 39.768852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.991989, 37.670670, 39.583126> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300759, 0.353825, 0.885636,
		0.771434, 0.636261, 0.007780,
		-0.560743, 0.685550, -0.464314,
		34.823765, 37.876335, 39.443832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.308155, 37.925522, 40.232815>,  <35.216286, 37.396450, 39.768852>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.308155, 37.925522, 40.232815> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.984440, 38.017792, 40.016724>,  <34.790211, 38.073154, 39.887070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.984440, 38.017792, 40.016724>,  <35.308155, 37.925522, 40.232815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.984440, 38.017792, 40.016724> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415739, 0.424794, 0.804183,
		0.414988, 0.875409, -0.247880,
		-0.809287, 0.230673, -0.540226,
		34.741653, 38.086994, 39.854656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.933994, 38.583900, 40.605686>,  <35.308155, 37.925522, 40.232815>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.933994, 38.583900, 40.605686> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.672760, 38.445091, 40.336449>,  <34.516018, 38.361805, 40.174908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.672760, 38.445091, 40.336449>,  <34.933994, 38.583900, 40.605686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.672760, 38.445091, 40.336449> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757096, 0.279454, 0.590518,
		-0.016826, 0.895254, -0.445239,
		-0.653087, -0.347025, -0.673091,
		34.476833, 38.340984, 40.134521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.530083, 39.096058, 40.456909>,  <34.933994, 38.583900, 40.605686>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.530083, 39.096058, 40.456909> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.290119, 38.787205, 40.373074>,  <34.146141, 38.601894, 40.322773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.290119, 38.787205, 40.373074>,  <34.530083, 39.096058, 40.456909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.290119, 38.787205, 40.373074> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581466, 0.240832, 0.777108,
		-0.549554, 0.588059, -0.593445,
		-0.599906, -0.772131, -0.209586,
		34.110146, 38.555565, 40.310196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.898815, 39.313789, 40.652130>,  <34.530083, 39.096058, 40.456909>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.898815, 39.313789, 40.652130> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.848782, 38.916931, 40.650940>,  <33.818764, 38.678818, 40.650227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.848782, 38.916931, 40.650940>,  <33.898815, 39.313789, 40.652130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.848782, 38.916931, 40.650940> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513555, 0.062180, 0.855801,
		-0.848891, 0.108572, -0.517297,
		-0.125081, -0.992142, -0.002973,
		33.811256, 38.619289, 40.650047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.112900, 39.219322, 40.775284>,  <33.898815, 39.313789, 40.652130>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.112900, 39.219322, 40.775284> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.294754, 38.878052, 40.877571>,  <33.403866, 38.673290, 40.938942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.294754, 38.878052, 40.877571>,  <33.112900, 39.219322, 40.775284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.294754, 38.878052, 40.877571> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666301, -0.135260, 0.733313,
		-0.591059, -0.503776, -0.629968,
		0.454635, -0.853179, 0.255719,
		33.431145, 38.622097, 40.954288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.614357, 38.685661, 40.842129>,  <33.112900, 39.219322, 40.775284>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.614357, 38.685661, 40.842129> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.926746, 38.586166, 41.071289>,  <33.114178, 38.526470, 41.208786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.926746, 38.586166, 41.071289>,  <32.614357, 38.685661, 40.842129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.926746, 38.586166, 41.071289> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622185, -0.229793, 0.748386,
		-0.054499, -0.940918, -0.334219,
		0.780971, -0.248733, 0.572902,
		33.161037, 38.511547, 41.243160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.352451, 38.337986, 41.431572>,  <32.614357, 38.685661, 40.842129>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.352451, 38.337986, 41.431572> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.731213, 38.385307, 41.551159>,  <32.958469, 38.413700, 41.622910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.731213, 38.385307, 41.551159>,  <32.352451, 38.337986, 41.431572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.731213, 38.385307, 41.551159> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289526, -0.090634, 0.952869,
		0.139825, -0.988833, -0.051570,
		0.946902, 0.118304, 0.298966,
		33.015282, 38.420799, 41.640850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.578236, 37.746933, 41.882687>,  <32.352451, 38.337986, 41.431572>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.578236, 37.746933, 41.882687> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.784752, 38.076385, 41.976555>,  <32.908661, 38.274059, 42.032875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.784752, 38.076385, 41.976555>,  <32.578236, 37.746933, 41.882687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.784752, 38.076385, 41.976555> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177713, -0.165018, 0.970148,
		0.837773, -0.542581, 0.061173,
		0.516289, 0.823635, 0.234672,
		32.939640, 38.323475, 42.046955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.080044, 37.513042, 42.446201>,  <32.578236, 37.746933, 41.882687>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.080044, 37.513042, 42.446201> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.070801, 37.912338, 42.468052>,  <33.065254, 38.151917, 42.481163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.070801, 37.912338, 42.468052>,  <33.080044, 37.513042, 42.446201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.070801, 37.912338, 42.468052> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055182, -0.055834, 0.996914,
		0.998209, 0.020026, 0.056375,
		-0.023111, 0.998239, 0.054628,
		33.063866, 38.211811, 42.484440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.575714, 37.787197, 42.917336>,  <33.080044, 37.513042, 42.446201>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.575714, 37.787197, 42.917336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.271526, 38.045307, 42.888199>,  <33.089012, 38.200172, 42.870716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.271526, 38.045307, 42.888199>,  <33.575714, 37.787197, 42.917336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.271526, 38.045307, 42.888199> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119687, -0.029026, 0.992387,
		0.638247, 0.763400, 0.099304,
		-0.760471, 0.645273, -0.072844,
		33.043385, 38.238888, 42.866344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.589554, 38.086990, 43.590302>,  <33.575714, 37.787197, 42.917336>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.589554, 38.086990, 43.590302> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.246521, 38.209900, 43.425312>,  <33.040703, 38.283646, 43.326321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.246521, 38.209900, 43.425312>,  <33.589554, 38.086990, 43.590302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.246521, 38.209900, 43.425312> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362575, 0.207639, 0.908529,
		0.364816, 0.928690, -0.066657,
		-0.857583, 0.307278, -0.412470,
		32.989246, 38.302082, 43.301571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.209957, 37.662739, 43.582726>,  <33.589554, 38.086990, 43.590302>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.209957, 37.662739, 43.582726> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.396450, 37.534004, 43.912342>,  <34.508347, 37.456764, 44.110111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.396450, 37.534004, 43.912342>,  <34.209957, 37.662739, 43.582726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.396450, 37.534004, 43.912342> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882573, 0.105273, -0.458238,
		0.060730, 0.940923, 0.333129,
		0.466236, -0.321840, 0.824041,
		34.536320, 37.437450, 44.159554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.779869, 38.100220, 43.693214>,  <34.209957, 37.662739, 43.582726>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.779869, 38.100220, 43.693214> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.896614, 37.780586, 43.903465>,  <34.966660, 37.588806, 44.029613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.896614, 37.780586, 43.903465>,  <34.779869, 38.100220, 43.693214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.896614, 37.780586, 43.903465> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937685, 0.130694, -0.321971,
		0.188587, 0.586840, 0.787435,
		0.291858, -0.799086, 0.525624,
		34.984173, 37.540859, 44.061153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.409096, 38.313831, 43.965839>,  <34.779869, 38.100220, 43.693214>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.409096, 38.313831, 43.965839> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.430805, 37.915379, 43.993496>,  <35.443829, 37.676308, 44.010090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.430805, 37.915379, 43.993496>,  <35.409096, 38.313831, 43.965839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.430805, 37.915379, 43.993496> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903061, 0.019418, -0.429073,
		0.426070, 0.085722, 0.900620,
		0.054270, -0.996130, 0.069139,
		35.447086, 37.616539, 44.014236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.967785, 38.218159, 44.498093>,  <35.409096, 38.313831, 43.965839>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.967785, 38.218159, 44.498093> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.886532, 37.904087, 44.264091>,  <35.837780, 37.715645, 44.123692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.886532, 37.904087, 44.264091>,  <35.967785, 38.218159, 44.498093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.886532, 37.904087, 44.264091> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912780, 0.064374, -0.403348,
		0.354359, -0.615915, 0.703618,
		-0.203133, -0.785178, -0.585006,
		35.825592, 37.668533, 44.088589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.432327, 37.778969, 44.759613>,  <35.967785, 38.218159, 44.498093>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.432327, 37.778969, 44.759613> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.311871, 37.664505, 44.395760>,  <36.239597, 37.595829, 44.177448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.311871, 37.664505, 44.395760>,  <36.432327, 37.778969, 44.759613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.311871, 37.664505, 44.395760> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932946, 0.108943, -0.343137,
		0.197289, -0.951969, 0.234161,
		-0.301145, -0.286157, -0.909629,
		36.221527, 37.578659, 44.122871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.900818, 37.266846, 44.526127>,  <36.432327, 37.778969, 44.759613>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.900818, 37.266846, 44.526127> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.753704, 37.420383, 44.187332>,  <36.665436, 37.512508, 43.984055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.753704, 37.420383, 44.187332>,  <36.900818, 37.266846, 44.526127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.753704, 37.420383, 44.187332> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885247, -0.134363, -0.445292,
		-0.284729, -0.913568, -0.290383,
		-0.367788, 0.383848, -0.846990,
		36.643368, 37.535538, 43.933235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.374783, 36.901787, 44.143806>,  <36.900818, 37.266846, 44.526127>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.374783, 36.901787, 44.143806> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.204662, 37.159000, 43.889053>,  <37.102592, 37.313328, 43.736202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.204662, 37.159000, 43.889053>,  <37.374783, 36.901787, 44.143806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.204662, 37.159000, 43.889053> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796985, -0.067371, -0.600230,
		-0.428878, -0.762866, -0.483838,
		-0.425299, 0.643037, -0.636887,
		37.077072, 37.351910, 43.697987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.253944, 36.551376, 43.513496>,  <37.374783, 36.901787, 44.143806>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.253944, 36.551376, 43.513496> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.287960, 36.945095, 43.451630>,  <37.308369, 37.181328, 43.414509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.287960, 36.945095, 43.451630>,  <37.253944, 36.551376, 43.513496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.287960, 36.945095, 43.451630> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599134, -0.174546, -0.781392,
		-0.796120, -0.026214, -0.604571,
		0.085043, 0.984300, -0.154665,
		37.313473, 37.240387, 43.405231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.188271, 36.705353, 42.744995>,  <37.253944, 36.551376, 43.513496>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.188271, 36.705353, 42.744995> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.397114, 37.009327, 42.899864>,  <37.522419, 37.191711, 42.992786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.397114, 37.009327, 42.899864>,  <37.188271, 36.705353, 42.744995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.397114, 37.009327, 42.899864> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591113, 0.004816, -0.806574,
		-0.614806, 0.649985, -0.446691,
		0.522110, 0.759932, 0.387176,
		37.553745, 37.237305, 43.016018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.270294, 37.206921, 42.196461>,  <37.188271, 36.705353, 42.744995>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.270294, 37.206921, 42.196461> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.554882, 37.281994, 42.467335>,  <37.725636, 37.327038, 42.629860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.554882, 37.281994, 42.467335>,  <37.270294, 37.206921, 42.196461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.554882, 37.281994, 42.467335> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660067, 0.152111, -0.735645,
		-0.241078, 0.970379, -0.015663,
		0.711472, 0.187687, 0.677186,
		37.768322, 37.338299, 42.670490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.524303, 37.672527, 41.878445>,  <37.270294, 37.206921, 42.196461>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.524303, 37.672527, 41.878445> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.790894, 37.518593, 42.133854>,  <37.950848, 37.426231, 42.287102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.790894, 37.518593, 42.133854>,  <37.524303, 37.672527, 41.878445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.790894, 37.518593, 42.133854> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723369, 0.126527, -0.678770,
		0.180427, 0.914270, 0.362707,
		0.666471, -0.384839, 0.638525,
		37.990833, 37.403141, 42.325413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.135307, 38.032272, 41.848667>,  <37.524303, 37.672527, 41.878445>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.135307, 38.032272, 41.848667> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.270649, 37.700554, 42.026562>,  <38.351856, 37.501522, 42.133297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.270649, 37.700554, 42.026562>,  <38.135307, 38.032272, 41.848667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.270649, 37.700554, 42.026562> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706068, -0.088693, -0.702568,
		0.622079, 0.551731, 0.555527,
		0.338357, -0.829293, 0.444734,
		38.372154, 37.451767, 42.159981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766567, 37.942158, 41.597435>,  <38.135307, 38.032272, 41.848667>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.766567, 37.942158, 41.597435> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.724556, 37.573689, 41.747322>,  <38.699348, 37.352608, 41.837254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.724556, 37.573689, 41.747322>,  <38.766567, 37.942158, 41.597435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.724556, 37.573689, 41.747322> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804086, -0.300377, -0.513049,
		0.585163, 0.247417, 0.772250,
		-0.105029, -0.921172, 0.374714,
		38.693047, 37.297337, 41.859737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.368061, 37.720974, 41.773506>,  <38.766567, 37.942158, 41.597435>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.368061, 37.720974, 41.773506> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.149349, 37.386909, 41.749752>,  <39.018120, 37.186470, 41.735500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.149349, 37.386909, 41.749752>,  <39.368061, 37.720974, 41.773506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.149349, 37.386909, 41.749752> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718251, -0.431420, -0.545888,
		0.430285, -0.341138, 0.835751,
		-0.546782, -0.835166, -0.059389,
		38.985313, 37.136360, 41.731934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.692886, 27.315447, 35.283958> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.628599, 27.405546, 35.668339>,  <28.590027, 27.459606, 35.898968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.628599, 27.405546, 35.668339>,  <28.692886, 27.315447, 35.283958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.628599, 27.405546, 35.668339> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149058, 0.956905, -0.249228,
		-0.975680, -0.183292, -0.120215,
		-0.160716, 0.225248, 0.960954,
		28.580385, 27.473122, 35.956627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.094103, 27.686789, 35.301258>,  <28.692886, 27.315447, 35.283958>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.094103, 27.686789, 35.301258> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.295477, 27.793446, 35.630001>,  <28.416302, 27.857439, 35.827248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.295477, 27.793446, 35.630001>,  <28.094103, 27.686789, 35.301258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.295477, 27.793446, 35.630001> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028451, 0.955791, -0.292668,
		-0.863563, 0.123957, 0.488767,
		0.503437, 0.266643, 0.821859,
		28.446508, 27.873438, 35.876560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.714018, 28.293558, 35.572899>,  <28.094103, 27.686789, 35.301258>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.714018, 28.293558, 35.572899> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.085331, 28.300741, 35.721478>,  <28.308119, 28.305052, 35.810623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.085331, 28.300741, 35.721478>,  <27.714018, 28.293558, 35.572899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.085331, 28.300741, 35.721478> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019332, 0.999813, -0.000022,
		-0.371373, -0.007160, 0.928456,
		0.928282, 0.017957, 0.371442,
		28.363815, 28.306128, 35.832909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.664091, 28.816551, 36.117672>,  <27.714018, 28.293558, 35.572899>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.664091, 28.816551, 36.117672> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.052862, 28.760176, 36.042316>,  <28.286125, 28.726351, 35.997105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.052862, 28.760176, 36.042316>,  <27.664091, 28.816551, 36.117672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.052862, 28.760176, 36.042316> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149834, 0.988135, 0.033761,
		0.181392, -0.061040, 0.981515,
		0.971929, -0.140941, -0.188385,
		28.344440, 28.717894, 35.985802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.929684, 29.269253, 36.563042>,  <27.664091, 28.816551, 36.117672>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.929684, 29.269253, 36.563042> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.230515, 29.210987, 36.305931>,  <28.411013, 29.176027, 36.151665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.230515, 29.210987, 36.305931>,  <27.929684, 29.269253, 36.563042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.230515, 29.210987, 36.305931> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217750, 0.975422, 0.033728,
		0.622062, -0.165330, 0.765313,
		0.752079, -0.145666, -0.642774,
		28.456139, 29.167288, 36.113098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.441971, 29.657312, 36.883839>,  <27.929684, 29.269253, 36.563042>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.441971, 29.657312, 36.883839> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.538160, 29.601484, 36.499611>,  <28.595875, 29.567987, 36.269073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.538160, 29.601484, 36.499611>,  <28.441971, 29.657312, 36.883839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.538160, 29.601484, 36.499611> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280396, 0.957407, -0.068916,
		0.929274, -0.252767, 0.269367,
		0.240474, -0.139571, -0.960569,
		28.610302, 29.559612, 36.211441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.184954, 29.926348, 36.725777>,  <28.441971, 29.657312, 36.883839>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.184954, 29.926348, 36.725777> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.001400, 29.912941, 36.370632>,  <28.891268, 29.904898, 36.157543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.001400, 29.912941, 36.370632>,  <29.184954, 29.926348, 36.725777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.001400, 29.912941, 36.370632> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347839, 0.912750, -0.214233,
		0.817578, -0.407142, -0.407189,
		-0.458884, -0.033516, -0.887864,
		28.863735, 29.902885, 36.104275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.677864, 30.292889, 36.347668>,  <29.184954, 29.926348, 36.725777>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.677864, 30.292889, 36.347668> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.350477, 30.293413, 36.117847>,  <29.154045, 30.293728, 35.979954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.350477, 30.293413, 36.117847>,  <29.677864, 30.292889, 36.347668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.350477, 30.293413, 36.117847> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203295, 0.935968, -0.287463,
		0.537382, -0.352083, -0.766328,
		-0.818469, 0.001313, -0.574549,
		29.104937, 30.293808, 35.945484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.928194, 30.572802, 35.624992>,  <29.677864, 30.292889, 36.347668>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.928194, 30.572802, 35.624992> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.536203, 30.636976, 35.672161>,  <29.301008, 30.675482, 35.700462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.536203, 30.636976, 35.672161>,  <29.928194, 30.572802, 35.624992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.536203, 30.636976, 35.672161> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120692, 0.949670, -0.289068,
		-0.158363, -0.269048, -0.950018,
		-0.979977, 0.160437, 0.117921,
		29.242210, 30.685108, 35.707539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.702974, 30.895124, 35.054234>,  <29.928194, 30.572802, 35.624992>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.702974, 30.895124, 35.054234> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.432640, 30.996891, 35.330936>,  <29.270439, 31.057951, 35.496956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.432640, 30.996891, 35.330936>,  <29.702974, 30.895124, 35.054234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.432640, 30.996891, 35.330936> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074683, 0.957345, -0.279131,
		-0.733261, -0.136984, -0.666006,
		-0.675834, 0.254415, 0.691753,
		29.229889, 31.073215, 35.538464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.256609, 31.441759, 34.757416>,  <29.702974, 30.895124, 35.054234>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.256609, 31.441759, 34.757416> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.144047, 31.462496, 35.140690>,  <29.076509, 31.474937, 35.370655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.144047, 31.462496, 35.140690>,  <29.256609, 31.441759, 34.757416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.144047, 31.462496, 35.140690> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002543, 0.998577, -0.053278,
		-0.959585, -0.012556, -0.281137,
		-0.281406, 0.051840, 0.958188,
		29.059626, 31.478048, 35.428146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.698734, 32.016037, 34.810322>,  <29.256609, 31.441759, 34.757416>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.698734, 32.016037, 34.810322> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.843531, 32.000584, 35.182873>,  <28.930408, 31.991312, 35.406403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.843531, 32.000584, 35.182873>,  <28.698734, 32.016037, 34.810322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.843531, 32.000584, 35.182873> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066121, 0.997688, 0.015684,
		-0.929833, 0.055906, 0.363709,
		0.361992, -0.038632, 0.931381,
		28.952127, 31.988995, 35.462288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.123503, 32.182518, 35.263779>,  <28.698734, 32.016037, 34.810322>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.123503, 32.182518, 35.263779> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.446787, 32.236824, 35.492992>,  <28.640757, 32.269409, 35.630520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.446787, 32.236824, 35.492992>,  <28.123503, 32.182518, 35.263779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.446787, 32.236824, 35.492992> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372970, 0.871036, 0.319671,
		-0.455732, -0.472085, 0.754615,
		0.808209, 0.135765, 0.573032,
		28.689249, 32.277554, 35.664902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.881233, 32.409817, 35.940823>,  <28.123503, 32.182518, 35.263779>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.881233, 32.409817, 35.940823> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.262226, 32.521988, 35.893261>,  <28.490822, 32.589291, 35.864723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.262226, 32.521988, 35.893261>,  <27.881233, 32.409817, 35.940823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.262226, 32.521988, 35.893261> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268813, 0.957472, 0.104818,
		0.143239, -0.067875, 0.987358,
		0.952482, 0.280429, -0.118902,
		28.547970, 32.606117, 35.857590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.767782, 33.047649, 36.272755>,  <27.881233, 32.409817, 35.940823>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.767782, 33.047649, 36.272755> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.146049, 33.045666, 36.142715>,  <28.373011, 33.044476, 36.064693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.146049, 33.045666, 36.142715>,  <27.767782, 33.047649, 36.272755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.146049, 33.045666, 36.142715> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030257, 0.996887, 0.072803,
		0.323725, -0.078684, 0.942874,
		0.945668, -0.004960, -0.325098,
		28.429750, 33.044178, 36.045185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.214651, 33.515194, 36.753365>,  <27.767782, 33.047649, 36.272755>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.214651, 33.515194, 36.753365> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.320393, 33.472233, 36.369995>,  <28.383837, 33.446457, 36.139973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.320393, 33.472233, 36.369995>,  <28.214651, 33.515194, 36.753365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.320393, 33.472233, 36.369995> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111813, 0.983665, -0.141074,
		0.957922, 0.144458, 0.248026,
		0.264353, -0.107406, -0.958427,
		28.399698, 33.440010, 36.082466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.747417, 34.025291, 36.644611>,  <28.214651, 33.515194, 36.753365>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.747417, 34.025291, 36.644611> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.598774, 33.918095, 36.289062>,  <28.509588, 33.853775, 36.075733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.598774, 33.918095, 36.289062>,  <28.747417, 34.025291, 36.644611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.598774, 33.918095, 36.289062> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205779, 0.957391, -0.202624,
		0.905297, 0.107614, -0.410922,
		-0.371608, -0.267994, -0.888868,
		28.487291, 33.837696, 36.022404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.895771, 34.604366, 36.226955>,  <28.747417, 34.025291, 36.644611>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.895771, 34.604366, 36.226955> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.619305, 34.403545, 36.019020>,  <28.453424, 34.283051, 35.894260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.619305, 34.403545, 36.019020>,  <28.895771, 34.604366, 36.226955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.619305, 34.403545, 36.019020> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474653, 0.857767, -0.197333,
		0.544970, 0.110352, -0.831162,
		-0.691167, -0.502054, -0.519836,
		28.411955, 34.252930, 35.863068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.750526, 35.056080, 35.735554>,  <28.895771, 34.604366, 36.226955>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.750526, 35.056080, 35.735554> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.468927, 34.781586, 35.662384>,  <28.299967, 34.616890, 35.618484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.468927, 34.781586, 35.662384>,  <28.750526, 35.056080, 35.735554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.468927, 34.781586, 35.662384> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567893, 0.698609, -0.435252,
		0.426477, -0.202538, -0.881530,
		-0.703999, -0.686239, -0.182921,
		28.257727, 34.575714, 35.607506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.730097, 34.870384, 35.028316>,  <28.750526, 35.056080, 35.735554>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.730097, 34.870384, 35.028316> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.373322, 34.793678, 35.192108>,  <28.159256, 34.747654, 35.290382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.373322, 34.793678, 35.192108>,  <28.730097, 34.870384, 35.028316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.373322, 34.793678, 35.192108> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409554, 0.726384, -0.551935,
		-0.191600, -0.659996, -0.726426,
		-0.891939, -0.191760, 0.409479,
		28.105740, 34.736149, 35.314953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.400833, 35.042850, 34.857262>,  <28.730097, 34.870384, 35.028316>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.400833, 35.042850, 34.857262> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.663290, 35.092190, 34.559467>,  <29.820765, 35.121792, 34.380791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.663290, 35.092190, 34.559467>,  <29.400833, 35.042850, 34.857262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.663290, 35.092190, 34.559467> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567608, -0.569453, -0.594596,
		-0.497293, 0.812717, -0.303630,
		0.656141, 0.123345, -0.744490,
		29.860132, 35.129192, 34.336121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.987951, 35.116390, 34.222206>,  <29.400833, 35.042850, 34.857262>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.987951, 35.116390, 34.222206> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.352768, 35.000721, 34.105888>,  <29.571657, 34.931320, 34.036098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.352768, 35.000721, 34.105888>,  <28.987951, 35.116390, 34.222206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.352768, 35.000721, 34.105888> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410092, -0.639538, -0.650243,
		0.002056, 0.712301, -0.701871,
		0.912042, -0.289169, -0.290794,
		29.626381, 34.913971, 34.018650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.906162, 35.063118, 33.495972>,  <28.987951, 35.116390, 34.222206>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.906162, 35.063118, 33.495972> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.225073, 34.836872, 33.580284>,  <29.416420, 34.701126, 33.630871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.225073, 34.836872, 33.580284>,  <28.906162, 35.063118, 33.495972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.225073, 34.836872, 33.580284> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413507, -0.766185, -0.491907,
		0.439728, 0.305027, -0.844747,
		0.797278, -0.565614, 0.210782,
		29.464256, 34.667187, 33.643520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.995895, 34.636452, 32.858967>,  <28.906162, 35.063118, 33.495972>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.995895, 34.636452, 32.858967> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.212595, 34.442451, 33.133568>,  <29.342615, 34.326054, 33.298328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.212595, 34.442451, 33.133568>,  <28.995895, 34.636452, 32.858967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.212595, 34.442451, 33.133568> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127770, -0.854765, -0.503043,
		0.830772, 0.184809, -0.525037,
		0.541749, -0.484997, 0.686502,
		29.375120, 34.296951, 33.339520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.473904, 34.150082, 32.439915>,  <28.995895, 34.636452, 32.858967>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.473904, 34.150082, 32.439915> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.475080, 33.986980, 32.805149>,  <29.475786, 33.889118, 33.024292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.475080, 33.986980, 32.805149>,  <29.473904, 34.150082, 32.439915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.475080, 33.986980, 32.805149> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371062, -0.848349, -0.377646,
		0.928604, -0.337701, -0.153796,
		0.002941, -0.407751, 0.913088,
		29.475964, 33.864655, 33.079075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.773388, 33.485252, 32.358089>,  <29.473904, 34.150082, 32.439915>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.773388, 33.485252, 32.358089> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.589457, 33.486832, 32.713287>,  <29.479097, 33.487778, 32.926407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.589457, 33.486832, 32.713287>,  <29.773388, 33.485252, 32.358089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.589457, 33.486832, 32.713287> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273992, -0.951831, -0.137647,
		0.844681, -0.306599, 0.438761,
		-0.459828, 0.003949, 0.887999,
		29.451508, 33.488018, 32.979687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.953678, 32.906189, 32.799629>,  <29.773388, 33.485252, 32.358089>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.953678, 32.906189, 32.799629> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.584818, 33.017818, 32.906780>,  <29.363503, 33.084797, 32.971069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.584818, 33.017818, 32.906780>,  <29.953678, 32.906189, 32.799629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.584818, 33.017818, 32.906780> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260673, -0.959947, 0.102725,
		0.285814, 0.024900, 0.957962,
		-0.922150, 0.279075, 0.267875,
		29.308172, 33.101540, 32.987144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.724777, 32.236843, 33.037483>,  <29.953678, 32.906189, 32.799629>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.724777, 32.236843, 33.037483> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.400782, 32.469181, 33.005154>,  <29.206385, 32.608585, 32.985756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.400782, 32.469181, 33.005154>,  <29.724777, 32.236843, 33.037483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.400782, 32.469181, 33.005154> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557495, -0.805426, -0.201218,
		-0.181977, -0.117924, 0.976206,
		-0.809990, 0.580847, -0.080827,
		29.157785, 32.643436, 32.980907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.141092, 31.886702, 33.322636>,  <29.724777, 32.236843, 33.037483>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.141092, 31.886702, 33.322636> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.935112, 32.127968, 33.078991>,  <28.811523, 32.272728, 32.932804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.935112, 32.127968, 33.078991>,  <29.141092, 31.886702, 33.322636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.935112, 32.127968, 33.078991> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726989, -0.683797, -0.062516,
		-0.454219, 0.410627, 0.790614,
		-0.514948, 0.603164, -0.609115,
		28.780628, 32.308918, 32.896255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.525091, 31.998945, 33.639091>,  <29.141092, 31.886702, 33.322636>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.525091, 31.998945, 33.639091> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.492292, 32.048042, 33.243473>,  <28.472612, 32.077499, 33.006104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.492292, 32.048042, 33.243473>,  <28.525091, 31.998945, 33.639091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.492292, 32.048042, 33.243473> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663815, -0.746948, -0.037663,
		-0.743389, 0.653454, 0.142726,
		-0.081998, 0.122742, -0.989046,
		28.467693, 32.084866, 32.946758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.852011, 31.788528, 33.473503>,  <28.525091, 31.998945, 33.639091>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.852011, 31.788528, 33.473503> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.003448, 31.794018, 33.103317>,  <28.094311, 31.797312, 32.881207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.003448, 31.794018, 33.103317>,  <27.852011, 31.788528, 33.473503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.003448, 31.794018, 33.103317> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617464, -0.741121, -0.263587,
		-0.689496, 0.671231, -0.272109,
		0.378594, 0.013725, -0.925461,
		28.117027, 31.798136, 32.825680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.227453, 31.770958, 33.067375>,  <27.852011, 31.788528, 33.473503>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.227453, 31.770958, 33.067375> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.540913, 31.651896, 32.849277>,  <27.728989, 31.580458, 32.718418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.540913, 31.651896, 32.849277>,  <27.227453, 31.770958, 33.067375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.540913, 31.651896, 32.849277> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538116, -0.763794, -0.356440,
		-0.310362, 0.572730, -0.758719,
		0.783650, -0.297654, -0.545248,
		27.776007, 31.562599, 32.685703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.955870, 31.481274, 32.461781>,  <27.227453, 31.770958, 33.067375>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.955870, 31.481274, 32.461781> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.312031, 31.299887, 32.477543>,  <27.525726, 31.191053, 32.487000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.312031, 31.299887, 32.477543>,  <26.955870, 31.481274, 32.461781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.312031, 31.299887, 32.477543> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441592, -0.881575, -0.166803,
		0.110378, 0.131120, -0.985203,
		0.890401, -0.453469, 0.039404,
		27.579151, 31.163847, 32.489365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.851332, 31.052708, 31.930597>,  <26.955870, 31.481274, 32.461781>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.851332, 31.052708, 31.930597> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.156071, 30.898457, 32.138783>,  <27.338915, 30.805906, 32.263695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.156071, 30.898457, 32.138783>,  <26.851332, 31.052708, 31.930597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.156071, 30.898457, 32.138783> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269576, -0.919351, -0.286570,
		0.588996, 0.078019, -0.804361,
		0.761848, -0.385626, 0.520462,
		27.384624, 30.782768, 32.294922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.057669, 30.521360, 31.528994>,  <26.851332, 31.052708, 31.930597>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.057669, 30.521360, 31.528994> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.246113, 30.428087, 31.869272>,  <27.359179, 30.372124, 32.073441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.246113, 30.428087, 31.869272>,  <27.057669, 30.521360, 31.528994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.246113, 30.428087, 31.869272> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174139, -0.970031, -0.169454,
		0.864715, -0.068308, -0.497597,
		0.471109, -0.233181, 0.850695,
		27.387445, 30.358133, 32.124481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.450094, 29.864956, 31.459026>,  <27.057669, 30.521360, 31.528994>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.450094, 29.864956, 31.459026> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.409557, 29.880896, 31.856647>,  <27.385235, 29.890459, 32.095219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.409557, 29.880896, 31.856647>,  <27.450094, 29.864956, 31.459026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.409557, 29.880896, 31.856647> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243221, -0.969869, 0.014082,
		0.964662, -0.240348, 0.107979,
		-0.101340, 0.039847, 0.994053,
		27.379156, 29.892849, 32.154865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.857815, 29.339930, 31.769844>,  <27.450094, 29.864956, 31.459026>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.857815, 29.339930, 31.769844> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.574661, 29.432671, 32.036720>,  <27.404770, 29.488316, 32.196846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.574661, 29.432671, 32.036720>,  <27.857815, 29.339930, 31.769844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.574661, 29.432671, 32.036720> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325190, -0.945505, -0.016458,
		0.627017, -0.228615, 0.744704,
		-0.707885, 0.231851, 0.667192,
		27.362295, 29.502226, 32.236877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.787632, 28.792479, 32.109795>,  <27.857815, 29.339930, 31.769844>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.787632, 28.792479, 32.109795> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.464392, 28.977497, 32.255688>,  <27.270447, 29.088509, 32.343224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.464392, 28.977497, 32.255688>,  <27.787632, 28.792479, 32.109795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.464392, 28.977497, 32.255688> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354546, -0.876403, 0.325905,
		0.470395, 0.134051, 0.872215,
		-0.808100, 0.462545, 0.364728,
		27.221962, 29.116261, 32.365105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.722025, 28.601971, 32.884792>,  <27.787632, 28.792479, 32.109795>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.722025, 28.601971, 32.884792> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.380077, 28.707685, 32.706196>,  <27.174910, 28.771114, 32.599037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.380077, 28.707685, 32.706196>,  <27.722025, 28.601971, 32.884792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.380077, 28.707685, 32.706196> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427197, -0.846907, 0.316625,
		-0.294452, 0.461410, 0.836898,
		-0.854869, 0.264289, -0.446487,
		27.123617, 28.786972, 32.572250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.217880, 28.628180, 33.443649>,  <27.722025, 28.601971, 32.884792>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.217880, 28.628180, 33.443649> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.036373, 28.579021, 33.090607>,  <26.927469, 28.549526, 32.878780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.036373, 28.579021, 33.090607>,  <27.217880, 28.628180, 33.443649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.036373, 28.579021, 33.090607> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613707, -0.675027, 0.409515,
		-0.646110, 0.727485, 0.230883,
		-0.453768, -0.122897, -0.882604,
		26.900242, 28.542152, 32.825825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.474691, 28.887913, 33.564972>,  <27.217880, 28.628180, 33.443649>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.474691, 28.887913, 33.564972> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.520693, 28.617468, 33.273865>,  <26.548294, 28.455200, 33.099201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.520693, 28.617468, 33.273865>,  <26.474691, 28.887913, 33.564972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.520693, 28.617468, 33.273865> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679001, -0.588263, 0.439209,
		-0.725074, 0.443644, -0.526734,
		0.115005, -0.676111, -0.727768,
		26.555195, 28.414635, 33.055534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.841843, 28.747458, 33.264980>,  <26.474691, 28.887913, 33.564972>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.841843, 28.747458, 33.264980> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.075066, 28.424900, 33.225437>,  <26.215000, 28.231365, 33.201714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.075066, 28.424900, 33.225437>,  <25.841843, 28.747458, 33.264980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.075066, 28.424900, 33.225437> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660796, -0.541498, 0.519740,
		-0.472643, -0.237718, -0.848586,
		0.583059, -0.806394, -0.098852,
		26.249983, 28.182981, 33.195782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.352570, 34.245903, 44.860344> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.964615, 34.220604, 44.766262>,  <36.731842, 34.205425, 44.709812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.964615, 34.220604, 44.766262>,  <37.352570, 34.245903, 44.860344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.964615, 34.220604, 44.766262> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241601, 0.372005, 0.896237,
		0.030813, 0.926073, -0.376083,
		-0.969886, -0.063246, -0.235203,
		36.673649, 34.201630, 44.695702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.008595, 34.942707, 45.090752>,  <37.352570, 34.245903, 44.860344>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.008595, 34.942707, 45.090752> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.768173, 34.623329, 45.076794>,  <36.623920, 34.431702, 45.068420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.768173, 34.623329, 45.076794>,  <37.008595, 34.942707, 45.090752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.768173, 34.623329, 45.076794> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287886, 0.175569, 0.941433,
		-0.745558, 0.575897, -0.335388,
		-0.601053, -0.798447, -0.034896,
		36.587856, 34.383797, 45.066326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.384342, 35.207516, 45.354069>,  <37.008595, 34.942707, 45.090752>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.384342, 35.207516, 45.354069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.323387, 34.812634, 45.372864>,  <36.286816, 34.575706, 45.384140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.323387, 34.812634, 45.372864>,  <36.384342, 35.207516, 45.354069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.323387, 34.812634, 45.372864> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345625, 0.097772, 0.933265,
		-0.925917, 0.125976, -0.356101,
		-0.152386, -0.987203, 0.046988,
		36.277672, 34.516472, 45.386959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.646420, 35.085876, 45.744556>,  <36.384342, 35.207516, 45.354069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.646420, 35.085876, 45.744556> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.834446, 34.733109, 45.758720>,  <35.947262, 34.521446, 45.767220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.834446, 34.733109, 45.758720>,  <35.646420, 35.085876, 45.744556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.834446, 34.733109, 45.758720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387759, -0.170307, 0.905891,
		-0.792892, -0.439561, -0.422028,
		0.470069, -0.881919, 0.035408,
		35.975468, 34.468533, 45.769344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.042843, 34.537228, 45.831570>,  <35.646420, 35.085876, 45.744556>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.042843, 34.537228, 45.831570> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.384422, 34.373535, 45.960125>,  <35.589371, 34.275318, 46.037258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.384422, 34.373535, 45.960125>,  <35.042843, 34.537228, 45.831570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.384422, 34.373535, 45.960125> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474267, -0.357997, 0.804307,
		-0.214091, -0.839266, -0.499798,
		0.853953, -0.409232, 0.321392,
		35.640610, 34.250767, 46.056541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.819817, 33.963589, 46.175224>,  <35.042843, 34.537228, 45.831570>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.819817, 33.963589, 46.175224> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.201057, 34.008060, 46.287823>,  <35.429802, 34.034744, 46.355381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.201057, 34.008060, 46.287823>,  <34.819817, 33.963589, 46.175224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.201057, 34.008060, 46.287823> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209734, -0.427937, 0.879137,
		0.218204, -0.896944, -0.384548,
		0.953099, 0.111179, 0.281497,
		35.486988, 34.041412, 46.372272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.008541, 33.285412, 46.376339>,  <34.819817, 33.963589, 46.175224>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.008541, 33.285412, 46.376339> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.223316, 33.568497, 46.560009>,  <35.352180, 33.738346, 46.670212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.223316, 33.568497, 46.560009>,  <35.008541, 33.285412, 46.376339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.223316, 33.568497, 46.560009> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322862, -0.330463, 0.886879,
		0.779394, -0.624450, 0.051055,
		0.536940, 0.707712, 0.459173,
		35.384399, 33.780811, 46.697762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.263077, 32.982899, 47.019859>,  <35.008541, 33.285412, 46.376339>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.263077, 32.982899, 47.019859> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.317154, 33.373482, 47.087097>,  <35.349598, 33.607830, 47.127441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.317154, 33.373482, 47.087097>,  <35.263077, 32.982899, 47.019859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.317154, 33.373482, 47.087097> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260530, -0.128651, 0.956856,
		0.955954, -0.173150, 0.237004,
		0.135189, 0.976457, 0.168095,
		35.357712, 33.666420, 47.137527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.558159, 33.071762, 47.601067>,  <35.263077, 32.982899, 47.019859>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.558159, 33.071762, 47.601067> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.406231, 33.440060, 47.565353>,  <35.315075, 33.661037, 47.543926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.406231, 33.440060, 47.565353>,  <35.558159, 33.071762, 47.601067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.406231, 33.440060, 47.565353> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302293, -0.032324, 0.952667,
		0.874275, 0.388829, 0.290611,
		-0.379818, 0.920743, -0.089281,
		35.292286, 33.716282, 47.538570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.688171, 33.326557, 48.297329>,  <35.558159, 33.071762, 47.601067>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.688171, 33.326557, 48.297329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.399830, 33.565189, 48.156212>,  <35.226826, 33.708366, 48.071541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.399830, 33.565189, 48.156212>,  <35.688171, 33.326557, 48.297329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.399830, 33.565189, 48.156212> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483159, -0.067602, 0.872919,
		0.496915, 0.799703, 0.336974,
		-0.720856, 0.596578, -0.352791,
		35.183575, 33.744164, 48.050373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.612122, 33.859257, 48.754910>,  <35.688171, 33.326557, 48.297329>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.612122, 33.859257, 48.754910> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.260193, 33.855553, 48.564827>,  <35.049034, 33.853333, 48.450779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.260193, 33.855553, 48.564827>,  <35.612122, 33.859257, 48.754910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.260193, 33.855553, 48.564827> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464292, 0.230631, 0.855127,
		0.101682, 0.972997, -0.207213,
		-0.879826, -0.009257, -0.475206,
		34.996246, 33.852776, 48.422264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.257359, 34.245735, 49.163036>,  <35.612122, 33.859257, 48.754910>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.257359, 34.245735, 49.163036> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.981388, 34.074402, 48.929615>,  <34.815807, 33.971600, 48.789562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.981388, 34.074402, 48.929615>,  <35.257359, 34.245735, 49.163036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.981388, 34.074402, 48.929615> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636258, -0.025620, 0.771051,
		-0.345219, 0.903257, -0.254856,
		-0.689927, -0.428336, -0.583549,
		34.774410, 33.945900, 48.754551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.519508, 34.590694, 49.363453>,  <35.257359, 34.245735, 49.163036>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.519508, 34.590694, 49.363453> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.440632, 34.267872, 49.140823>,  <34.393307, 34.074177, 49.007244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.440632, 34.267872, 49.140823>,  <34.519508, 34.590694, 49.363453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.440632, 34.267872, 49.140823> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868406, -0.119672, 0.481196,
		-0.454959, 0.578219, -0.677256,
		-0.197188, -0.807057, -0.556574,
		34.381474, 34.025753, 48.973850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.862442, 34.769730, 49.218884>,  <34.519508, 34.590694, 49.363453>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.862442, 34.769730, 49.218884> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.915237, 34.374760, 49.184090>,  <33.946915, 34.137775, 49.163216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.915237, 34.374760, 49.184090>,  <33.862442, 34.769730, 49.218884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.915237, 34.374760, 49.184090> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921013, -0.154605, 0.357537,
		-0.366489, 0.032920, -0.929840,
		0.131988, -0.987428, -0.086981,
		33.954834, 34.078533, 49.157997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.363823, 34.908875, 48.655193>,  <33.862442, 34.769730, 49.218884>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.363823, 34.908875, 48.655193> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.315147, 35.249405, 48.859325>,  <33.285942, 35.453724, 48.981804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.315147, 35.249405, 48.859325>,  <33.363823, 34.908875, 48.655193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.315147, 35.249405, 48.859325> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151784, 0.492145, -0.857178,
		-0.980894, -0.181771, 0.069328,
		-0.121691, 0.851324, 0.510332,
		33.278641, 35.504803, 49.012424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.816559, 35.276127, 48.427612>,  <33.363823, 34.908875, 48.655193>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.816559, 35.276127, 48.427612> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.046219, 35.560719, 48.589672>,  <33.184013, 35.731476, 48.686909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.046219, 35.560719, 48.589672>,  <32.816559, 35.276127, 48.427612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.046219, 35.560719, 48.589672> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091276, 0.436130, -0.895243,
		-0.813646, 0.550984, 0.185463,
		0.574150, 0.711482, 0.405148,
		33.218464, 35.774162, 48.711216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.666805, 35.955437, 48.114788>,  <32.816559, 35.276127, 48.427612>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.666805, 35.955437, 48.114788> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.008743, 36.084335, 48.277462>,  <33.213905, 36.161674, 48.375065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.008743, 36.084335, 48.277462>,  <32.666805, 35.955437, 48.114788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.008743, 36.084335, 48.277462> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099235, 0.667777, -0.737716,
		-0.509299, 0.670994, 0.538871,
		0.854849, 0.322243, 0.406684,
		33.265198, 36.181007, 48.399467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.660500, 36.699535, 47.984093>,  <32.666805, 35.955437, 48.114788>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.660500, 36.699535, 47.984093> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.037395, 36.588696, 48.059361>,  <33.263531, 36.522194, 48.104523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.037395, 36.588696, 48.059361>,  <32.660500, 36.699535, 47.984093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.037395, 36.588696, 48.059361> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320361, 0.581544, -0.747780,
		0.097778, 0.764868, 0.636723,
		0.942236, -0.277098, 0.188172,
		33.320065, 36.505566, 48.115810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.118282, 37.379745, 48.155247>,  <32.660500, 36.699535, 47.984093>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.118282, 37.379745, 48.155247> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.355732, 37.079887, 48.038189>,  <33.498203, 36.899971, 47.967953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.355732, 37.079887, 48.038189>,  <33.118282, 37.379745, 48.155247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.355732, 37.079887, 48.038189> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236341, 0.510019, -0.827057,
		0.769256, 0.421796, 0.479931,
		0.593623, -0.749646, -0.292648,
		33.533817, 36.854992, 47.950394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.642021, 37.764275, 47.874870>,  <33.118282, 37.379745, 48.155247>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.642021, 37.764275, 47.874870> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.667133, 37.395638, 47.721653>,  <33.682201, 37.174454, 47.629723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.667133, 37.395638, 47.721653>,  <33.642021, 37.764275, 47.874870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.667133, 37.395638, 47.721653> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328276, 0.381508, -0.864110,
		0.942493, -0.071494, 0.326488,
		0.062779, -0.921597, -0.383039,
		33.685966, 37.119160, 47.606743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.410286, 37.674488, 47.581924>,  <33.642021, 37.764275, 47.874870>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.410286, 37.674488, 47.581924> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.179966, 37.411720, 47.387234>,  <34.041775, 37.254059, 47.270420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.179966, 37.411720, 47.387234>,  <34.410286, 37.674488, 47.581924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.179966, 37.411720, 47.387234> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345440, 0.344099, -0.873079,
		0.741028, -0.670857, 0.028794,
		-0.575803, -0.656922, -0.486728,
		34.007225, 37.214645, 47.241215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.828045, 37.222950, 47.164715>,  <34.410286, 37.674488, 47.581924>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.828045, 37.222950, 47.164715> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.455578, 37.216789, 47.019012>,  <34.232098, 37.213093, 46.931591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.455578, 37.216789, 47.019012>,  <34.828045, 37.222950, 47.164715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.455578, 37.216789, 47.019012> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359387, 0.129281, -0.924190,
		0.061320, -0.991488, -0.114850,
		-0.931172, -0.015396, -0.364256,
		34.176228, 37.212170, 46.909737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.926758, 36.890976, 46.530022>,  <34.828045, 37.222950, 47.164715>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.926758, 36.890976, 46.530022> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.563911, 37.057571, 46.505768>,  <34.346203, 37.157528, 46.491215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.563911, 37.057571, 46.505768>,  <34.926758, 36.890976, 46.530022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563911, 37.057571, 46.505768> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124634, 0.128224, -0.983883,
		-0.402005, -0.900052, -0.168223,
		-0.907115, 0.416492, -0.060631,
		34.291779, 37.182518, 46.487579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.758514, 36.731640, 45.902843>,  <34.926758, 36.890976, 46.530022>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.758514, 36.731640, 45.902843> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.512215, 37.029808, 46.004990>,  <34.364437, 37.208710, 46.066277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.512215, 37.029808, 46.004990>,  <34.758514, 36.731640, 45.902843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.512215, 37.029808, 46.004990> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054741, 0.363773, -0.929878,
		-0.786040, -0.558590, -0.264797,
		-0.615747, 0.745417, 0.255362,
		34.327492, 37.253433, 46.081600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.211319, 36.898415, 45.329964>,  <34.758514, 36.731640, 45.902843>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.211319, 36.898415, 45.329964> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.222168, 37.233688, 45.547848>,  <34.228680, 37.434853, 45.678577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.222168, 37.233688, 45.547848>,  <34.211319, 36.898415, 45.329964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.222168, 37.233688, 45.547848> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093349, 0.540405, -0.836211,
		-0.995264, 0.073531, -0.063584,
		0.027126, 0.838186, 0.544710,
		34.230305, 37.485146, 45.711262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.801651, 37.221638, 44.951893>,  <34.211319, 36.898415, 45.329964>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.801651, 37.221638, 44.951893> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.986458, 37.504234, 45.166336>,  <34.097343, 37.673794, 45.295002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.986458, 37.504234, 45.166336>,  <33.801651, 37.221638, 44.951893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.986458, 37.504234, 45.166336> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058549, 0.578875, -0.813311,
		-0.884934, 0.407155, 0.226088,
		0.462021, 0.706490, 0.536105,
		34.125065, 37.716183, 45.327168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.485970, 37.970890, 44.818714>,  <33.801651, 37.221638, 44.951893>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.485970, 37.970890, 44.818714> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.869080, 38.013535, 44.925529>,  <34.098946, 38.039120, 44.989616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.869080, 38.013535, 44.925529>,  <33.485970, 37.970890, 44.818714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.869080, 38.013535, 44.925529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177797, 0.510286, -0.841425,
		-0.225966, 0.853372, 0.469783,
		0.957772, 0.106607, 0.267034,
		34.156410, 38.045517, 45.005638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.690399, 38.679703, 44.851635>,  <33.485970, 37.970890, 44.818714>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.690399, 38.679703, 44.851635> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.020561, 38.460854, 44.795971>,  <34.218658, 38.329544, 44.762573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.020561, 38.460854, 44.795971>,  <33.690399, 38.679703, 44.851635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.020561, 38.460854, 44.795971> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381636, 0.722408, -0.576612,
		0.416003, 0.422832, 0.805080,
		0.825406, -0.547120, -0.139156,
		34.268185, 38.296719, 44.754223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.330914, 38.720917, 44.098633>,  <33.690399, 38.679703, 44.851635>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.330914, 38.720917, 44.098633> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.017677, 38.574715, 43.897369>,  <32.829735, 38.486992, 43.776611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.017677, 38.574715, 43.897369>,  <33.330914, 38.720917, 44.098633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.017677, 38.574715, 43.897369> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507781, -0.091326, 0.856632,
		-0.359056, 0.926318, -0.114081,
		-0.783095, -0.365507, -0.503157,
		32.782749, 38.465061, 43.746422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.826027, 39.062111, 44.565159>,  <33.330914, 38.720917, 44.098633>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.826027, 39.062111, 44.565159> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.650059, 38.798935, 44.320675>,  <32.544479, 38.641029, 44.173985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.650059, 38.798935, 44.320675>,  <32.826027, 39.062111, 44.565159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.650059, 38.798935, 44.320675> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657557, -0.227550, 0.718220,
		-0.611630, 0.717865, -0.332532,
		-0.439918, -0.657944, -0.611214,
		32.518082, 38.601551, 44.137310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.100544, 39.156452, 44.485950>,  <32.826027, 39.062111, 44.565159>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.100544, 39.156452, 44.485950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.157608, 38.767342, 44.412891>,  <32.191845, 38.533875, 44.369057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.157608, 38.767342, 44.412891>,  <32.100544, 39.156452, 44.485950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.157608, 38.767342, 44.412891> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714454, -0.228917, 0.661175,
		-0.684985, 0.036172, -0.727659,
		0.142658, -0.972774, -0.182648,
		32.200405, 38.475510, 44.358097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.412170, 38.824245, 44.528454>,  <32.100544, 39.156452, 44.485950>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.412170, 38.824245, 44.528454> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.668205, 38.518547, 44.560005>,  <31.821825, 38.335129, 44.578938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.668205, 38.518547, 44.560005>,  <31.412170, 38.824245, 44.528454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.668205, 38.518547, 44.560005> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550222, -0.384318, 0.741320,
		-0.536234, -0.517911, -0.666499,
		0.640085, -0.764244, 0.078882,
		31.860231, 38.289272, 44.583672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.939535, 38.185490, 44.619289>,  <31.412170, 38.824245, 44.528454>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.939535, 38.185490, 44.619289> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.300875, 38.062485, 44.738892>,  <31.517677, 37.988682, 44.810654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.300875, 38.062485, 44.738892>,  <30.939535, 38.185490, 44.619289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.300875, 38.062485, 44.738892> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421702, -0.509503, 0.750049,
		-0.078304, -0.803645, -0.589935,
		0.903347, -0.307508, 0.299003,
		31.571878, 37.970234, 44.828594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.901722, 37.425003, 44.760288>,  <30.939535, 38.185490, 44.619289>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.901722, 37.425003, 44.760288> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.195723, 37.580025, 44.982845>,  <31.372124, 37.673038, 45.116379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.195723, 37.580025, 44.982845>,  <30.901722, 37.425003, 44.760288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.195723, 37.580025, 44.982845> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387549, -0.433222, 0.813711,
		0.556397, -0.813710, -0.168224,
		0.735002, 0.387551, 0.556395,
		31.416224, 37.696289, 45.149765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.208050, 36.935268, 45.268208>,  <30.901722, 37.425003, 44.760288>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.208050, 36.935268, 45.268208> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.279417, 37.296268, 45.425011>,  <31.322237, 37.512867, 45.519093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.279417, 37.296268, 45.425011>,  <31.208050, 36.935268, 45.268208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.279417, 37.296268, 45.425011> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475121, -0.269853, 0.837520,
		0.861642, -0.335679, 0.380648,
		0.178419, 0.902496, 0.392004,
		31.332943, 37.567017, 45.542610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.228397, 36.241859, 45.327137>,  <31.208050, 36.935268, 45.268208>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.228397, 36.241859, 45.327137> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.972139, 35.940655, 45.267075>,  <30.818384, 35.759933, 45.231037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.972139, 35.940655, 45.267075>,  <31.228397, 36.241859, 45.327137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.972139, 35.940655, 45.267075> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475000, -0.235019, -0.848022,
		0.603281, -0.614605, 0.508244,
		-0.640646, -0.753011, -0.150155,
		30.779945, 35.714752, 45.222027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.566614, 35.650478, 45.173775>,  <31.228397, 36.241859, 45.327137>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.566614, 35.650478, 45.173775> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.211517, 35.575630, 45.005539>,  <30.998459, 35.530720, 44.904598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.211517, 35.575630, 45.005539>,  <31.566614, 35.650478, 45.173775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.211517, 35.575630, 45.005539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459145, -0.425677, -0.779734,
		-0.033129, -0.885316, 0.463809,
		-0.887744, -0.187123, -0.420591,
		30.945194, 35.519493, 44.879360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.575891, 34.959339, 44.900970>,  <31.566614, 35.650478, 45.173775>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.575891, 34.959339, 44.900970> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.309099, 35.178616, 44.699131>,  <31.149023, 35.310181, 44.578026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.309099, 35.178616, 44.699131>,  <31.575891, 34.959339, 44.900970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.309099, 35.178616, 44.699131> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504884, -0.165512, -0.847170,
		-0.547933, -0.819809, -0.166382,
		-0.666980, 0.548196, -0.504598,
		31.109005, 35.343075, 44.547752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.537228, 34.648796, 44.286343>,  <31.575891, 34.959339, 44.900970>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.537228, 34.648796, 44.286343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.375914, 35.009609, 44.224777>,  <31.279125, 35.226097, 44.187840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.375914, 35.009609, 44.224777>,  <31.537228, 34.648796, 44.286343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.375914, 35.009609, 44.224777> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401809, 0.023448, -0.915423,
		-0.822137, -0.431021, -0.371903,
		-0.403287, 0.902037, -0.153910,
		31.254927, 35.280220, 44.178604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.034004, 34.620090, 43.686222>,  <31.537228, 34.648796, 44.286343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.034004, 34.620090, 43.686222> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.184467, 34.989014, 43.721661>,  <31.274746, 35.210369, 43.742924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.184467, 34.989014, 43.721661>,  <31.034004, 34.620090, 43.686222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.184467, 34.989014, 43.721661> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299753, -0.030654, -0.953524,
		-0.876728, 0.385234, -0.287996,
		0.376158, 0.922310, 0.088600,
		31.297316, 35.265705, 43.748241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.023983, 34.805187, 43.041492>,  <31.034004, 34.620090, 43.686222>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.023983, 34.805187, 43.041492> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.185543, 35.142044, 43.184414>,  <31.282480, 35.344158, 43.270168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.185543, 35.142044, 43.184414>,  <31.023983, 34.805187, 43.041492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.185543, 35.142044, 43.184414> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456155, 0.153155, -0.876622,
		-0.792960, 0.517054, -0.322286,
		0.403901, 0.842139, 0.357303,
		31.306713, 35.394688, 43.291603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.962034, 35.205864, 42.546043>,  <31.023983, 34.805187, 43.041492>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.962034, 35.205864, 42.546043> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.221735, 35.411324, 42.770412>,  <31.377556, 35.534599, 42.905033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.221735, 35.411324, 42.770412>,  <30.962034, 35.205864, 42.546043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.221735, 35.411324, 42.770412> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478813, 0.296982, -0.826160,
		-0.590942, 0.804963, -0.053126,
		0.649250, 0.513650, 0.560926,
		31.416510, 35.565418, 42.938690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<32.665550, 32.348988, 48.093327> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.954914, 32.616562, 48.024971>,  <33.128532, 32.777107, 47.983955>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.954914, 32.616562, 48.024971>,  <32.665550, 32.348988, 48.093327>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.954914, 32.616562, 48.024971> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325997, -0.549136, -0.769529,
		-0.608608, 0.500975, -0.615321,
		0.723410, 0.668935, -0.170892,
		33.171936, 32.817242, 47.973705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.611374, 32.821392, 47.450832>,  <32.665550, 32.348988, 48.093327>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.611374, 32.821392, 47.450832> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.978668, 32.720982, 47.573364>,  <33.199043, 32.660736, 47.646885>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.978668, 32.720982, 47.573364>,  <32.611374, 32.821392, 47.450832>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.978668, 32.720982, 47.573364> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236558, -0.272706, -0.932562,
		0.317633, 0.928772, -0.191025,
		0.918232, -0.251025, 0.306329,
		33.254139, 32.645676, 47.665264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.066219, 33.219105, 47.020535>,  <32.611374, 32.821392, 47.450832>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.066219, 33.219105, 47.020535> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.275219, 32.904831, 47.153019>,  <33.400620, 32.716267, 47.232510>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.275219, 32.904831, 47.153019>,  <33.066219, 33.219105, 47.020535>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.275219, 32.904831, 47.153019> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143175, -0.302086, -0.942468,
		0.840535, 0.539856, -0.045348,
		0.522496, -0.785684, 0.331207,
		33.431969, 32.669125, 47.252380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.753906, 33.296383, 46.764660>,  <33.066219, 33.219105, 47.020535>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.753906, 33.296383, 46.764660> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.732834, 32.906517, 46.851616>,  <33.720188, 32.672600, 46.903790>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.732834, 32.906517, 46.851616>,  <33.753906, 33.296383, 46.764660>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.732834, 32.906517, 46.851616> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425564, -0.218851, -0.878066,
		0.903394, 0.046256, 0.426311,
		-0.052683, -0.974661, 0.217393,
		33.717030, 32.614120, 46.916836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.290398, 33.030884, 46.468517>,  <33.753906, 33.296383, 46.764660>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.290398, 33.030884, 46.468517> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.107330, 32.678040, 46.513084>,  <33.997490, 32.466331, 46.539825>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.107330, 32.678040, 46.513084>,  <34.290398, 33.030884, 46.468517>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.107330, 32.678040, 46.513084> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371760, -0.303684, -0.877252,
		0.807670, -0.360074, 0.466922,
		-0.457673, -0.882113, 0.111415,
		33.970028, 32.413406, 46.546509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.855953, 32.392559, 46.525017>,  <34.290398, 33.030884, 46.468517>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.855953, 32.392559, 46.525017> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.493038, 32.268837, 46.411060>,  <34.275288, 32.194603, 46.342686>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.493038, 32.268837, 46.411060>,  <34.855953, 32.392559, 46.525017>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.493038, 32.268837, 46.411060> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395581, -0.397956, -0.827736,
		0.142645, -0.863691, 0.483414,
		-0.907286, -0.309302, -0.284893,
		34.220852, 32.176048, 46.325592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.920696, 31.739134, 46.341625>,  <34.855953, 32.392559, 46.525017>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.920696, 31.739134, 46.341625> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.565121, 31.818161, 46.176334>,  <34.351776, 31.865578, 46.077160>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.565121, 31.818161, 46.176334>,  <34.920696, 31.739134, 46.341625>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.565121, 31.818161, 46.176334> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278823, -0.482353, -0.830417,
		-0.363384, -0.853407, 0.373696,
		-0.888937, 0.197565, -0.413229,
		34.298439, 31.877430, 46.052364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.677948, 31.205566, 46.017769>,  <34.920696, 31.739134, 46.341625>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.677948, 31.205566, 46.017769> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.454308, 31.463484, 45.809288>,  <34.320122, 31.618235, 45.684200>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.454308, 31.463484, 45.809288>,  <34.677948, 31.205566, 46.017769>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.454308, 31.463484, 45.809288> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080391, -0.583508, -0.808119,
		-0.825194, -0.493718, 0.274403,
		-0.559099, 0.644795, -0.521198,
		34.286579, 31.656921, 45.652927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.289593, 30.774490, 45.603512>,  <34.677948, 31.205566, 46.017769>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.289593, 30.774490, 45.603512> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.287014, 31.133522, 45.427189>,  <34.285465, 31.348942, 45.321396>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.287014, 31.133522, 45.427189>,  <34.289593, 30.774490, 45.603512>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.287014, 31.133522, 45.427189> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219545, -0.428786, -0.876323,
		-0.975581, -0.102430, -0.194293,
		-0.006451, 0.897580, -0.440804,
		34.285080, 31.402796, 45.294949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.935982, 30.700350, 45.020115>,  <34.289593, 30.774490, 45.603512>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.935982, 30.700350, 45.020115> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.146301, 31.030771, 44.938953>,  <34.272491, 31.229025, 44.890255>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.146301, 31.030771, 44.938953>,  <33.935982, 30.700350, 45.020115>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.146301, 31.030771, 44.938953> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250945, -0.378568, -0.890906,
		-0.812751, 0.417517, -0.406344,
		0.525797, 0.826055, -0.202908,
		34.304039, 31.278587, 44.878082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.670395, 30.905533, 44.358479>,  <33.935982, 30.700350, 45.020115>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.670395, 30.905533, 44.358479> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.032719, 31.072609, 44.386875>,  <34.250114, 31.172855, 44.403912>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.032719, 31.072609, 44.386875>,  <33.670395, 30.905533, 44.358479>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.032719, 31.072609, 44.386875> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149829, -0.159068, -0.975832,
		-0.396305, 0.894556, -0.206667,
		0.905811, 0.417692, 0.070991,
		34.304462, 31.197916, 44.408173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.654213, 31.216509, 43.749802>,  <33.670395, 30.905533, 44.358479>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.654213, 31.216509, 43.749802> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.033833, 31.218678, 43.875835>,  <34.261604, 31.219978, 43.951458>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.033833, 31.218678, 43.875835>,  <33.654213, 31.216509, 43.749802>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.033833, 31.218678, 43.875835> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314865, 0.025118, -0.948804,
		-0.013057, 0.999670, 0.022131,
		0.949047, 0.005420, 0.315089,
		34.318546, 31.220303, 43.970364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.271599, 31.601278, 43.334217>,  <33.654213, 31.216509, 43.749802>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.271599, 31.601278, 43.334217> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.988338, 31.319544, 43.314465>,  <32.818382, 31.150503, 43.302612>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.988338, 31.319544, 43.314465>,  <33.271599, 31.601278, 43.334217>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.988338, 31.319544, 43.314465> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229724, 0.163700, 0.959390,
		-0.667648, 0.690735, -0.277726,
		-0.708148, -0.704335, -0.049384,
		32.775894, 31.108244, 43.299648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.714924, 31.907679, 43.631157>,  <33.271599, 31.601278, 43.334217>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.714924, 31.907679, 43.631157> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.623447, 31.518635, 43.647793>,  <32.568562, 31.285208, 43.657772>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.623447, 31.518635, 43.647793>,  <32.714924, 31.907679, 43.631157>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.623447, 31.518635, 43.647793> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494487, 0.152855, 0.855639,
		-0.838559, 0.175117, -0.515900,
		-0.228695, -0.972610, 0.041585,
		32.554840, 31.226852, 43.660267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.100567, 31.957932, 43.762089>,  <32.714924, 31.907679, 43.631157>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.100567, 31.957932, 43.762089> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.160179, 31.579924, 43.878525>,  <32.195946, 31.353119, 43.948387>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.160179, 31.579924, 43.878525>,  <32.100567, 31.957932, 43.762089>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.160179, 31.579924, 43.878525> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506415, 0.179900, 0.843315,
		-0.849314, -0.273088, -0.451761,
		0.149027, -0.945018, 0.291087,
		32.204887, 31.296417, 43.965851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.458866, 31.706638, 43.828964>,  <32.100567, 31.957932, 43.762089>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.458866, 31.706638, 43.828964> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.691505, 31.474840, 44.057323>,  <31.831089, 31.335760, 44.194340>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.691505, 31.474840, 44.057323>,  <31.458866, 31.706638, 43.828964>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.691505, 31.474840, 44.057323> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669904, 0.056947, 0.740261,
		-0.461490, -0.812983, -0.355087,
		0.581598, -0.579497, 0.570900,
		31.865984, 31.300991, 44.228592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.097696, 31.328640, 44.210018>,  <31.458866, 31.706638, 43.828964>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.097696, 31.328640, 44.210018> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.417042, 31.269190, 44.443436>,  <31.608650, 31.233521, 44.583485>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.417042, 31.269190, 44.443436>,  <31.097696, 31.328640, 44.210018>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.417042, 31.269190, 44.443436> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569843, 0.126799, 0.811912,
		-0.194662, -0.980731, 0.016540,
		0.798365, -0.148623, 0.583545,
		31.656551, 31.224604, 44.618500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.756016, 30.938841, 44.627762>,  <31.097696, 31.328640, 44.210018>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.756016, 30.938841, 44.627762> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.104746, 31.003239, 44.812805>,  <31.313984, 31.041878, 44.923832>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.104746, 31.003239, 44.812805>,  <30.756016, 30.938841, 44.627762>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.104746, 31.003239, 44.812805> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488662, 0.220941, 0.844034,
		0.033674, -0.961908, 0.271292,
		0.871823, 0.160993, 0.462608,
		31.366293, 31.051537, 44.951588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.811338, 30.526390, 45.241913>,  <30.756016, 30.938841, 44.627762>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.811338, 30.526390, 45.241913> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.045429, 30.841032, 45.320667>,  <31.185884, 31.029818, 45.367920>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.045429, 30.841032, 45.320667>,  <30.811338, 30.526390, 45.241913>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.045429, 30.841032, 45.320667> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605874, 0.262813, 0.750897,
		0.538913, -0.558735, 0.630388,
		0.585226, 0.786604, 0.196890,
		31.220997, 31.077013, 45.379734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.682062, 30.609489, 45.908398>,  <30.811338, 30.526390, 45.241913>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.682062, 30.609489, 45.908398> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.877762, 30.951290, 45.838585>,  <30.995182, 31.156370, 45.796700>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.877762, 30.951290, 45.838585>,  <30.682062, 30.609489, 45.908398>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.877762, 30.951290, 45.838585> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403257, 0.399081, 0.823480,
		0.773317, -0.332507, 0.539834,
		0.489250, 0.854502, -0.174530,
		31.024536, 31.207642, 45.786224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.200077, 30.738962, 46.435184>,  <30.682062, 30.609489, 45.908398>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.200077, 30.738962, 46.435184> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.059223, 31.072792, 46.265720>,  <30.974710, 31.273090, 46.164043>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.059223, 31.072792, 46.265720>,  <31.200077, 30.738962, 46.435184>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.059223, 31.072792, 46.265720> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356335, 0.299015, 0.885220,
		0.865463, 0.462682, 0.192094,
		-0.352136, 0.834575, -0.423657,
		30.953583, 31.323164, 46.138622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.210735, 31.193905, 46.977982>,  <31.200077, 30.738962, 46.435184>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.210735, 31.193905, 46.977982> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.976412, 31.379658, 46.712296>,  <30.835817, 31.491110, 46.552883>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.976412, 31.379658, 46.712296>,  <31.210735, 31.193905, 46.977982>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.976412, 31.379658, 46.712296> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519854, 0.413436, 0.747544,
		0.621757, 0.783210, -0.000782,
		-0.585808, 0.464384, -0.664211,
		30.800669, 31.518972, 46.513031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.314367, 31.902405, 47.167007>,  <31.210735, 31.193905, 46.977982>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.314367, 31.902405, 47.167007> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.987150, 31.866684, 46.939732>,  <30.790821, 31.845251, 46.803368>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.987150, 31.866684, 46.939732>,  <31.314367, 31.902405, 47.167007>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.987150, 31.866684, 46.939732> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478165, 0.654588, 0.585554,
		0.319637, 0.750693, -0.578180,
		-0.818041, -0.089300, -0.568186,
		30.741737, 31.839893, 46.769276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.176737, 32.540195, 47.213905>,  <31.314367, 31.902405, 47.167007>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.176737, 32.540195, 47.213905> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.841513, 32.342712, 47.121037>,  <30.640379, 32.224220, 47.065315>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.841513, 32.342712, 47.121037>,  <31.176737, 32.540195, 47.213905>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.841513, 32.342712, 47.121037> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516944, 0.582539, 0.627230,
		-0.174423, 0.645675, -0.743424,
		-0.838061, -0.493712, -0.232170,
		30.590094, 32.194599, 47.051384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.661840, 33.052780, 47.033478>,  <31.176737, 32.540195, 47.213905>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.661840, 33.052780, 47.033478> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.476915, 32.712463, 47.133411>,  <30.365961, 32.508274, 47.193371>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.476915, 32.712463, 47.133411>,  <30.661840, 33.052780, 47.033478>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.476915, 32.712463, 47.133411> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647668, 0.516434, 0.560199,
		-0.605636, 0.097179, -0.789786,
		-0.462311, -0.850795, 0.249831,
		30.338223, 32.457226, 47.208363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.025030, 33.208015, 46.861977>,  <30.661840, 33.052780, 47.033478>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.025030, 33.208015, 46.861977> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.993183, 32.891930, 47.105034>,  <29.974075, 32.702278, 47.250866>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.993183, 32.891930, 47.105034>,  <30.025030, 33.208015, 46.861977>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.993183, 32.891930, 47.105034> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735193, 0.458200, 0.499543,
		-0.673166, -0.406960, -0.617439,
		-0.079616, -0.790212, 0.607639,
		29.969297, 32.654865, 47.287327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.722496, 33.883560, 47.127224>,  <30.025030, 33.208015, 46.861977>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.722496, 33.883560, 47.127224> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.465317, 34.189831, 47.134861>,  <29.311010, 34.373592, 47.139442>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.465317, 34.189831, 47.134861>,  <29.722496, 33.883560, 47.127224>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.465317, 34.189831, 47.134861> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431709, 0.382877, -0.816721,
		-0.632652, -0.516865, -0.576717,
		-0.642946, 0.765674, 0.019093,
		29.272432, 34.419533, 47.140591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.398026, 33.961201, 46.399330>,  <29.722496, 33.883560, 47.127224>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.398026, 33.961201, 46.399330> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.398399, 34.304604, 46.604446>,  <29.398623, 34.510647, 46.727516>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.398399, 34.304604, 46.604446>,  <29.398026, 33.961201, 46.399330>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.398399, 34.304604, 46.604446> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378699, 0.474298, -0.794751,
		-0.925520, 0.194935, -0.324675,
		0.000932, 0.858512, 0.512794,
		29.398680, 34.562157, 46.758286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.098089, 34.627369, 46.057384>,  <29.398026, 33.961201, 46.399330>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.098089, 34.627369, 46.057384> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.335699, 34.798313, 46.330002>,  <29.478264, 34.900879, 46.493572>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.335699, 34.798313, 46.330002>,  <29.098089, 34.627369, 46.057384>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.335699, 34.798313, 46.330002> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437338, 0.539518, -0.719483,
		-0.675184, 0.725453, 0.133584,
		0.594023, 0.427362, 0.681542,
		29.513906, 34.926521, 46.534466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.037144, 35.341724, 45.918427>,  <29.098089, 34.627369, 46.057384>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.037144, 35.341724, 45.918427> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.373289, 35.303722, 46.131878>,  <29.574976, 35.280922, 46.259949>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.373289, 35.303722, 46.131878>,  <29.037144, 35.341724, 45.918427>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.373289, 35.303722, 46.131878> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487340, 0.563368, -0.667170,
		-0.237246, 0.820726, 0.519734,
		0.840365, -0.095004, 0.533630,
		29.625399, 35.275223, 46.291965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.408058, 35.920250, 45.939049>,  <29.037144, 35.341724, 45.918427>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.408058, 35.920250, 45.939049> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.717957, 35.692234, 46.048466>,  <29.903896, 35.555424, 46.114117>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.717957, 35.692234, 46.048466>,  <29.408058, 35.920250, 45.939049>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.717957, 35.692234, 46.048466> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580064, 0.468659, -0.666247,
		0.251585, 0.674846, 0.693749,
		0.774746, -0.570037, 0.273546,
		29.950380, 35.521221, 46.130531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.960880, 36.389973, 45.865307>,  <29.408058, 35.920250, 45.939049>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.960880, 36.389973, 45.865307> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.101862, 36.015648, 45.862816>,  <30.186451, 35.791054, 45.861320>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.101862, 36.015648, 45.862816>,  <29.960880, 36.389973, 45.865307>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.101862, 36.015648, 45.862816> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569771, 0.219866, -0.791846,
		0.742386, 0.275539, 0.610689,
		0.352454, -0.935808, -0.006232,
		30.207598, 35.734905, 45.860947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.667982, 36.442764, 45.770432>,  <29.960880, 36.389973, 45.865307>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.667982, 36.442764, 45.770432> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.608170, 36.062641, 45.661213>,  <30.572281, 35.834568, 45.595680>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.608170, 36.062641, 45.661213>,  <30.667982, 36.442764, 45.770432>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.608170, 36.062641, 45.661213> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542135, 0.152144, -0.826403,
		0.826880, -0.271605, 0.492444,
		-0.149533, -0.950307, -0.273051,
		30.563311, 35.777550, 45.579296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.405903, 36.755356, 45.990219>,  <30.667982, 36.442764, 45.770432>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.405903, 36.755356, 45.990219> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.395014, 37.153961, 46.021778>,  <31.388479, 37.393124, 46.040714>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.395014, 37.153961, 46.021778>,  <31.405903, 36.755356, 45.990219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.395014, 37.153961, 46.021778> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295096, -0.083425, 0.951818,
		0.955080, 0.002629, 0.296338,
		-0.027225, 0.996511, 0.078902,
		31.386847, 37.452915, 46.045448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.804626, 36.849583, 46.587193>,  <31.405903, 36.755356, 45.990219>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.804626, 36.849583, 46.587193> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.582724, 37.179459, 46.543148>,  <31.449581, 37.377384, 46.516720>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.582724, 37.179459, 46.543148>,  <31.804626, 36.849583, 46.587193>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.582724, 37.179459, 46.543148> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236630, -0.029507, 0.971152,
		0.797653, 0.564811, 0.211516,
		-0.554758, 0.824693, -0.110115,
		31.416296, 37.426865, 46.510113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.122269, 37.443153, 47.064018>,  <31.804626, 36.849583, 46.587193>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.122269, 37.443153, 47.064018> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.731350, 37.499096, 47.000355>,  <31.496799, 37.532661, 46.962154>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.731350, 37.499096, 47.000355>,  <32.122269, 37.443153, 47.064018>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.731350, 37.499096, 47.000355> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138440, 0.147159, 0.979377,
		0.160395, 0.979175, -0.124456,
		-0.977296, 0.139858, -0.159161,
		31.438162, 37.541054, 46.952606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.025616, 38.084995, 47.392849>,  <32.122269, 37.443153, 47.064018>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.025616, 38.084995, 47.392849> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.671120, 37.908749, 47.335655>,  <31.458424, 37.803001, 47.301338>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.671120, 37.908749, 47.335655>,  <32.025616, 38.084995, 47.392849>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.671120, 37.908749, 47.335655> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166627, 0.015204, 0.985903,
		-0.432227, 0.897569, -0.086892,
		-0.886237, -0.440612, -0.142988,
		31.405249, 37.776566, 47.292759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.699797, 38.547684, 47.725060>,  <32.025616, 38.084995, 47.392849>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.699797, 38.547684, 47.725060> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.437180, 38.245968, 47.724762>,  <31.279610, 38.064938, 47.724583>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.437180, 38.245968, 47.724762>,  <31.699797, 38.547684, 47.725060>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.437180, 38.245968, 47.724762> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195028, 0.168798, 0.966163,
		-0.728641, 0.634472, -0.257931,
		-0.656542, -0.754289, -0.000746,
		31.240217, 38.019680, 47.724537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.076975, 38.826141, 48.071442>,  <31.699797, 38.547684, 47.725060>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.076975, 38.826141, 48.071442> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.049286, 38.428738, 48.107555>,  <31.032673, 38.190296, 48.129223>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.049286, 38.428738, 48.107555>,  <31.076975, 38.826141, 48.071442>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.049286, 38.428738, 48.107555> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014901, 0.091521, 0.995692,
		-0.997490, 0.067580, -0.021140,
		-0.069224, -0.993507, 0.090284,
		31.028519, 38.130684, 48.134640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.525190, 38.689278, 48.569672>,  <31.076975, 38.826141, 48.071442>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.525190, 38.689278, 48.569672> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.747875, 38.358742, 48.535637>,  <30.881487, 38.160419, 48.515217>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.747875, 38.358742, 48.535637>,  <30.525190, 38.689278, 48.569672>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.747875, 38.358742, 48.535637> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110786, -0.175366, 0.978250,
		-0.823285, -0.535177, -0.189175,
		0.556711, -0.826337, -0.085087,
		30.914888, 38.110840, 48.510113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.165041, 38.122654, 48.930714>,  <30.525190, 38.689278, 48.569672>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.165041, 38.122654, 48.930714> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.547562, 38.007565, 48.909924>,  <30.777075, 37.938511, 48.897449>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.547562, 38.007565, 48.909924>,  <30.165041, 38.122654, 48.930714>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.547562, 38.007565, 48.909924> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025237, -0.258330, 0.965727,
		-0.291296, -0.922213, -0.254302,
		0.956300, -0.287730, -0.051976,
		30.834452, 37.921246, 48.894329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.109613, 37.507145, 49.307590>,  <30.165041, 38.122654, 48.930714>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.109613, 37.507145, 49.307590> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.494366, 37.616081, 49.317497>,  <30.725218, 37.681442, 49.323441>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.494366, 37.616081, 49.317497>,  <30.109613, 37.507145, 49.307590>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.494366, 37.616081, 49.317497> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058833, -0.294538, 0.953827,
		0.267065, -0.916011, -0.299333,
		0.961881, 0.272345, 0.024769,
		30.782930, 37.697784, 49.324928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<38.163189, 36.474545, 34.873627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.231895, 36.396042, 35.259785>,  <38.273117, 36.348938, 35.491478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.231895, 36.396042, 35.259785>,  <38.163189, 36.474545, 34.873627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.231895, 36.396042, 35.259785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899617, 0.368119, 0.234899,
		-0.401481, -0.908828, -0.113332,
		0.171763, -0.196262, 0.965390,
		38.283424, 36.337162, 35.549400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.548210, 36.116081, 35.147560>,  <38.163189, 36.474545, 34.873627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.548210, 36.116081, 35.147560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.760265, 36.281994, 35.443371>,  <37.887497, 36.381542, 35.620857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.760265, 36.281994, 35.443371>,  <37.548210, 36.116081, 35.147560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.760265, 36.281994, 35.443371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838961, 0.382987, 0.386608,
		-0.122871, -0.825393, 0.551025,
		0.530139, 0.414785, 0.739531,
		37.919308, 36.406429, 35.665230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.340729, 35.831627, 35.725594>,  <37.548210, 36.116081, 35.147560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.340729, 35.831627, 35.725594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.502407, 36.167835, 35.869896>,  <37.599415, 36.369560, 35.956478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.502407, 36.167835, 35.869896>,  <37.340729, 35.831627, 35.725594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.502407, 36.167835, 35.869896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823050, 0.162160, 0.544327,
		0.399020, -0.516936, 0.757337,
		0.404192, 0.840524, 0.360760,
		37.623665, 36.419994, 35.978123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.329636, 35.799137, 36.477528>,  <37.340729, 35.831627, 35.725594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.329636, 35.799137, 36.477528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.333202, 36.180058, 36.355522>,  <37.335342, 36.408611, 36.282318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.333202, 36.180058, 36.355522>,  <37.329636, 35.799137, 36.477528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.333202, 36.180058, 36.355522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830930, 0.176755, 0.527554,
		0.556306, 0.248740, 0.792876,
		0.008921, 0.952306, -0.305016,
		37.335880, 36.465748, 36.264019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.245281, 36.193710, 37.137371>,  <37.329636, 35.799137, 36.477528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.245281, 36.193710, 37.137371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.167114, 36.434196, 36.827442>,  <37.120213, 36.578487, 36.641483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.167114, 36.434196, 36.827442>,  <37.245281, 36.193710, 37.137371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.167114, 36.434196, 36.827442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762516, 0.403702, 0.505563,
		0.616751, 0.689609, 0.379549,
		-0.195416, 0.601219, -0.774822,
		37.108490, 36.614563, 36.594997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.155361, 36.809231, 37.466831>,  <37.245281, 36.193710, 37.137371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.155361, 36.809231, 37.466831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.991005, 36.869621, 37.107193>,  <36.892391, 36.905853, 36.891411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.991005, 36.869621, 37.107193>,  <37.155361, 36.809231, 37.466831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.991005, 36.869621, 37.107193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819733, 0.370432, 0.436827,
		0.399003, 0.916508, -0.028450,
		-0.410895, 0.150974, -0.899095,
		36.867737, 36.914913, 36.837463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.082714, 37.472885, 37.396568>,  <37.155361, 36.809231, 37.466831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.082714, 37.472885, 37.396568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.819492, 37.326427, 37.133389>,  <36.661560, 37.238552, 36.975483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.819492, 37.326427, 37.133389>,  <37.082714, 37.472885, 37.396568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.819492, 37.326427, 37.133389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707015, 0.601050, 0.372650,
		0.259014, 0.710404, -0.654398,
		-0.658059, -0.366148, -0.657947,
		36.622074, 37.216583, 36.936005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.742649, 38.067177, 36.991222>,  <37.082714, 37.472885, 37.396568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.742649, 38.067177, 36.991222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.511818, 37.740540, 36.986191>,  <36.373318, 37.544559, 36.983173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.511818, 37.740540, 36.986191>,  <36.742649, 38.067177, 36.991222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.511818, 37.740540, 36.986191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729991, 0.508853, 0.456270,
		-0.366187, 0.272484, -0.889753,
		-0.577080, -0.816591, -0.012575,
		36.338696, 37.495564, 36.982418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.096287, 38.411545, 36.881611>,  <36.742649, 38.067177, 36.991222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.096287, 38.411545, 36.881611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.022247, 38.048374, 37.032028>,  <35.977821, 37.830471, 37.122280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.022247, 38.048374, 37.032028>,  <36.096287, 38.411545, 36.881611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.022247, 38.048374, 37.032028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799334, 0.361701, 0.479831,
		-0.571666, -0.211770, -0.792686,
		-0.185101, -0.907924, 0.376047,
		35.966717, 37.775997, 37.144844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.405598, 38.486084, 36.986820>,  <36.096287, 38.411545, 36.881611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.405598, 38.486084, 36.986820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.509090, 38.158684, 37.191998>,  <35.571186, 37.962242, 37.315105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.509090, 38.158684, 37.191998>,  <35.405598, 38.486084, 36.986820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.509090, 38.158684, 37.191998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700212, 0.206881, 0.683303,
		-0.665404, -0.535960, -0.519600,
		0.258728, -0.818503, 0.512945,
		35.586708, 37.913132, 37.345882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.831707, 38.311554, 37.310364>,  <35.405598, 38.486084, 36.986820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.831707, 38.311554, 37.310364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.095150, 38.109341, 37.533318>,  <35.253216, 37.988010, 37.667091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.095150, 38.109341, 37.533318>,  <34.831707, 38.311554, 37.310364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.095150, 38.109341, 37.533318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677309, -0.075520, 0.731812,
		-0.327864, -0.859494, -0.392142,
		0.658602, -0.505537, 0.557383,
		35.292732, 37.957680, 37.700531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.542374, 37.733990, 37.598721>,  <34.831707, 38.311554, 37.310364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.542374, 37.733990, 37.598721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.847305, 37.765053, 37.855728>,  <35.030262, 37.783691, 38.009933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.847305, 37.765053, 37.855728>,  <34.542374, 37.733990, 37.598721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.847305, 37.765053, 37.855728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639349, -0.063718, 0.766272,
		0.100451, -0.994941, 0.001080,
		0.762327, 0.077664, 0.642515,
		35.076004, 37.788353, 38.048481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.609428, 36.967762, 37.615650>,  <34.542374, 37.733990, 37.598721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.609428, 36.967762, 37.615650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.279251, 36.744801, 37.579990>,  <34.081146, 36.611023, 37.558594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.279251, 36.744801, 37.579990>,  <34.609428, 36.967762, 37.615650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.279251, 36.744801, 37.579990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339206, -0.363546, -0.867625,
		0.451209, -0.746413, 0.489161,
		-0.825439, -0.557407, -0.089153,
		34.031620, 36.577579, 37.553246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.851139, 36.314884, 37.403645>,  <34.609428, 36.967762, 37.615650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.851139, 36.314884, 37.403645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.464207, 36.309669, 37.302364>,  <34.232048, 36.306541, 37.241596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.464207, 36.309669, 37.302364>,  <34.851139, 36.314884, 37.403645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.464207, 36.309669, 37.302364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241082, -0.356423, -0.902686,
		-0.078480, -0.934234, 0.347919,
		-0.967327, -0.013034, -0.253199,
		34.174007, 36.305759, 37.226406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.611671, 35.569485, 37.085449>,  <34.851139, 36.314884, 37.403645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.611671, 35.569485, 37.085449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.359116, 35.852528, 36.958553>,  <34.207584, 36.022354, 36.882416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.359116, 35.852528, 36.958553>,  <34.611671, 35.569485, 37.085449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.359116, 35.852528, 36.958553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167818, -0.274717, -0.946767,
		-0.757092, -0.651015, 0.054703,
		-0.631387, 0.707609, -0.317238,
		34.169701, 36.064812, 36.863380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.426292, 35.199482, 36.543106>,  <34.611671, 35.569485, 37.085449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.426292, 35.199482, 36.543106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.300957, 35.575043, 36.486149>,  <34.225758, 35.800381, 36.451973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.300957, 35.575043, 36.486149>,  <34.426292, 35.199482, 36.543106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.300957, 35.575043, 36.486149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106690, -0.114193, -0.987713,
		-0.943630, -0.324679, -0.064391,
		-0.313336, 0.938905, -0.142396,
		34.206955, 35.856716, 36.443432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.855923, 35.162556, 36.133259>,  <34.426292, 35.199482, 36.543106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.855923, 35.162556, 36.133259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.996574, 35.533329, 36.080875>,  <34.080967, 35.755795, 36.049446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.996574, 35.533329, 36.080875>,  <33.855923, 35.162556, 36.133259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.996574, 35.533329, 36.080875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073532, -0.166805, -0.983244,
		-0.933246, 0.336109, -0.126813,
		0.351631, 0.926934, -0.130955,
		34.102062, 35.811409, 36.041588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.516003, 35.473415, 35.593487>,  <33.855923, 35.162556, 36.133259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.516003, 35.473415, 35.593487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.851208, 35.691631, 35.598000>,  <34.052330, 35.822559, 35.600708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.851208, 35.691631, 35.598000>,  <33.516003, 35.473415, 35.593487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.851208, 35.691631, 35.598000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088791, -0.115936, -0.989280,
		-0.538385, 0.830027, -0.145595,
		0.838008, 0.545541, 0.011281,
		34.102612, 35.855293, 35.601383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.464520, 36.006599, 35.078033>,  <33.516003, 35.473415, 35.593487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.464520, 36.006599, 35.078033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.859833, 35.986141, 35.135555>,  <34.097019, 35.973866, 35.170067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.859833, 35.986141, 35.135555>,  <33.464520, 36.006599, 35.078033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.859833, 35.986141, 35.135555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141153, -0.052192, -0.988611,
		0.058066, 0.997327, -0.044361,
		0.988284, -0.051143, 0.143806,
		34.156319, 35.970798, 35.178696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.869537, 36.532253, 34.628719>,  <33.464520, 36.006599, 35.078033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.869537, 36.532253, 34.628719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.094929, 36.206631, 34.685017>,  <34.230164, 36.011257, 34.718796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.094929, 36.206631, 34.685017>,  <33.869537, 36.532253, 34.628719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.094929, 36.206631, 34.685017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076857, -0.117976, -0.990038,
		0.822549, 0.568681, -0.003911,
		0.563477, -0.814054, 0.140748,
		34.263973, 35.962414, 34.727242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.381401, 36.501293, 34.025139>,  <33.869537, 36.532253, 34.628719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.381401, 36.501293, 34.025139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.418495, 36.137375, 34.186966>,  <34.440750, 35.919025, 34.284061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.418495, 36.137375, 34.186966>,  <34.381401, 36.501293, 34.025139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.418495, 36.137375, 34.186966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126551, -0.392252, -0.911111,
		0.987616, 0.135687, 0.078761,
		0.092732, -0.909796, 0.404566,
		34.446316, 35.864437, 34.308334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.817596, 36.215309, 33.473576>,  <34.381401, 36.501293, 34.025139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.817596, 36.215309, 33.473576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.680122, 35.902699, 33.681847>,  <34.597637, 35.715134, 33.806808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.680122, 35.902699, 33.681847>,  <34.817596, 36.215309, 33.473576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.680122, 35.902699, 33.681847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284093, -0.441943, -0.850869,
		0.895082, -0.440350, -0.070137,
		-0.343684, -0.781523, 0.520675,
		34.577019, 35.668243, 33.838051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.072571, 35.643768, 33.121376>,  <34.817596, 36.215309, 33.473576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.072571, 35.643768, 33.121376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.789940, 35.456005, 33.333191>,  <34.620361, 35.343346, 33.460278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.789940, 35.456005, 33.333191>,  <35.072571, 35.643768, 33.121376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.789940, 35.456005, 33.333191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253460, -0.530784, -0.808719,
		0.660690, -0.705635, 0.256061,
		-0.706574, -0.469412, 0.529534,
		34.577969, 35.315182, 33.492050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.183636, 34.949791, 32.859653>,  <35.072571, 35.643768, 33.121376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.183636, 34.949791, 32.859653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.827557, 34.934116, 33.041206>,  <34.613907, 34.924709, 33.150139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.827557, 34.934116, 33.041206>,  <35.183636, 34.949791, 32.859653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.827557, 34.934116, 33.041206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348794, -0.582275, -0.734370,
		0.293063, -0.812047, 0.504672,
		-0.890200, -0.039190, 0.453880,
		34.560497, 34.922359, 33.177372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.894939, 34.210930, 33.032089>,  <35.183636, 34.949791, 32.859653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.894939, 34.210930, 33.032089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.590874, 34.465843, 32.981461>,  <34.408436, 34.618790, 32.951084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.590874, 34.465843, 32.981461>,  <34.894939, 34.210930, 33.032089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.590874, 34.465843, 32.981461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458130, -0.663868, -0.591097,
		-0.460725, -0.391343, 0.796607,
		-0.760164, 0.637283, -0.126575,
		34.362823, 34.657028, 32.943489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.324303, 33.836529, 32.533318>,  <34.894939, 34.210930, 33.032089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.324303, 33.836529, 32.533318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.604240, 33.552395, 32.563374>,  <35.772202, 33.381916, 32.581406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.604240, 33.552395, 32.563374>,  <35.324303, 33.836529, 32.533318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.604240, 33.552395, 32.563374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492096, -0.403222, 0.771527,
		-0.517745, -0.576922, -0.631744,
		0.699844, -0.710333, 0.075135,
		35.814194, 33.339294, 32.585915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.993702, 33.384186, 32.984375>,  <35.324303, 33.836529, 32.533318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.993702, 33.384186, 32.984375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.337498, 33.191059, 32.917248>,  <35.543777, 33.075184, 32.876972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.337498, 33.191059, 32.917248>,  <34.993702, 33.384186, 32.984375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.337498, 33.191059, 32.917248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245325, -0.677677, 0.693231,
		-0.448429, -0.554656, -0.700905,
		0.859492, -0.482815, -0.167819,
		35.595345, 33.046215, 32.866901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.837254, 32.784657, 32.819908>,  <34.993702, 33.384186, 32.984375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.837254, 32.784657, 32.819908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.190132, 32.759544, 33.006580>,  <35.401859, 32.744476, 33.118584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.190132, 32.759544, 33.006580>,  <34.837254, 32.784657, 32.819908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.190132, 32.759544, 33.006580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433349, -0.496008, 0.752452,
		0.184242, -0.866046, -0.464780,
		0.882192, -0.062779, 0.466685,
		35.454788, 32.740711, 33.146587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.763271, 32.168877, 33.222107>,  <34.837254, 32.784657, 32.819908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.763271, 32.168877, 33.222107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.087650, 32.329250, 33.392570>,  <35.282280, 32.425476, 33.494850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.087650, 32.329250, 33.392570>,  <34.763271, 32.168877, 33.222107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.087650, 32.329250, 33.392570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170947, -0.534208, 0.827888,
		0.559585, -0.744227, -0.364678,
		0.810951, 0.400933, 0.426158,
		35.330936, 32.449532, 33.520416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.244476, 31.614799, 33.467030>,  <34.763271, 32.168877, 33.222107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.244476, 31.614799, 33.467030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.352386, 31.939249, 33.674606>,  <35.417133, 32.133919, 33.799152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.352386, 31.939249, 33.674606>,  <35.244476, 31.614799, 33.467030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.352386, 31.939249, 33.674606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033336, -0.530732, 0.846884,
		0.962347, -0.245765, -0.116138,
		0.269773, 0.811124, 0.518941,
		35.433319, 32.182587, 33.830288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.677353, 31.315872, 33.934097>,  <35.244476, 31.614799, 33.467030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.677353, 31.315872, 33.934097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.616131, 31.669390, 34.110954>,  <35.579399, 31.881500, 34.217068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.616131, 31.669390, 34.110954>,  <35.677353, 31.315872, 33.934097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.616131, 31.669390, 34.110954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109391, -0.459812, 0.881253,
		0.982145, 0.086514, 0.167055,
		-0.153054, 0.883792, 0.442138,
		35.570213, 31.934526, 34.243595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.245659, 31.424604, 34.426071>,  <35.677353, 31.315872, 33.934097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.245659, 31.424604, 34.426071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.924660, 31.643848, 34.520370>,  <35.732059, 31.775394, 34.576950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.924660, 31.643848, 34.520370>,  <36.245659, 31.424604, 34.426071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.924660, 31.643848, 34.520370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095017, -0.272668, 0.957405,
		0.589041, 0.790715, 0.166736,
		-0.802498, 0.548108, 0.235744,
		35.683910, 31.808281, 34.591095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.396019, 31.784676, 35.016449>,  <36.245659, 31.424604, 34.426071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.396019, 31.784676, 35.016449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.996273, 31.798052, 35.011475>,  <35.756424, 31.806078, 35.008492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.996273, 31.798052, 35.011475>,  <36.396019, 31.784676, 35.016449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.996273, 31.798052, 35.011475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016217, -0.115381, 0.993189,
		0.031779, 0.992758, 0.115849,
		-0.999363, 0.033441, -0.012433,
		35.696465, 31.808084, 35.007744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.130081, 32.223164, 35.574818>,  <36.396019, 31.784676, 35.016449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.130081, 32.223164, 35.574818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.776932, 32.052425, 35.496490>,  <35.565044, 31.949984, 35.449493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.776932, 32.052425, 35.496490>,  <36.130081, 32.223164, 35.574818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.776932, 32.052425, 35.496490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253347, 0.081813, 0.963910,
		-0.395417, 0.900618, -0.180370,
		-0.882871, -0.426843, -0.195818,
		35.512070, 31.924372, 35.437744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.671581, 32.493008, 36.134335>,  <36.130081, 32.223164, 35.574818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.671581, 32.493008, 36.134335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.441116, 32.210480, 35.969818>,  <35.302837, 32.040962, 35.871109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.441116, 32.210480, 35.969818>,  <35.671581, 32.493008, 36.134335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.441116, 32.210480, 35.969818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376760, -0.217042, 0.900525,
		-0.725323, 0.673801, -0.141061,
		-0.576158, -0.706318, -0.411287,
		35.268269, 31.998585, 35.846432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.002815, 32.581127, 36.458004>,  <35.671581, 32.493008, 36.134335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.002815, 32.581127, 36.458004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.018536, 32.217007, 36.293171>,  <35.027969, 31.998535, 36.194271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.018536, 32.217007, 36.293171>,  <35.002815, 32.581127, 36.458004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.018536, 32.217007, 36.293171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392103, -0.393371, 0.831573,
		-0.919081, 0.128896, -0.372392,
		0.039302, -0.910299, -0.412080,
		35.030327, 31.943916, 36.169548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.367939, 32.349640, 36.493893>,  <35.002815, 32.581127, 36.458004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.367939, 32.349640, 36.493893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.586960, 32.015427, 36.475697>,  <34.718372, 31.814899, 36.464779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.586960, 32.015427, 36.475697>,  <34.367939, 32.349640, 36.493893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.586960, 32.015427, 36.475697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476945, -0.356303, 0.803475,
		-0.687538, -0.418250, -0.593598,
		0.547554, -0.835533, -0.045489,
		34.751225, 31.764767, 36.462051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.902225, 31.876051, 36.769920>,  <34.367939, 32.349640, 36.493893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.902225, 31.876051, 36.769920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.251354, 31.681240, 36.782482>,  <34.460831, 31.564354, 36.790020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.251354, 31.681240, 36.782482>,  <33.902225, 31.876051, 36.769920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.251354, 31.681240, 36.782482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370668, -0.619687, 0.691805,
		-0.317468, -0.615462, -0.721402,
		0.872823, -0.487026, 0.031401,
		34.513203, 31.535131, 36.791901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.663044, 31.174501, 36.907360>,  <33.902225, 31.876051, 36.769920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.663044, 31.174501, 36.907360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.043003, 31.219564, 37.023983>,  <34.270977, 31.246601, 37.093956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.043003, 31.219564, 37.023983>,  <33.663044, 31.174501, 36.907360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.043003, 31.219564, 37.023983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250453, -0.283736, 0.925617,
		0.187002, -0.952262, -0.241305,
		0.949897, 0.112657, 0.291556,
		34.327972, 31.253361, 37.111450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.850258, 30.589514, 37.340034>,  <33.663044, 31.174501, 36.907360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.850258, 30.589514, 37.340034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.100586, 30.888575, 37.428913>,  <34.250782, 31.068010, 37.482243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.100586, 30.888575, 37.428913>,  <33.850258, 30.589514, 37.340034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.100586, 30.888575, 37.428913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209141, -0.113597, 0.971265,
		0.751409, -0.654304, 0.085273,
		0.625816, 0.747651, 0.222199,
		34.288330, 31.112869, 37.495571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.389534, 30.350168, 37.796440>,  <33.850258, 30.589514, 37.340034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.389534, 30.350168, 37.796440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.411713, 30.745132, 37.855698>,  <34.425018, 30.982111, 37.891251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.411713, 30.745132, 37.855698>,  <34.389534, 30.350168, 37.796440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.411713, 30.745132, 37.855698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078120, -0.143624, 0.986544,
		0.995401, -0.066269, 0.069174,
		0.055442, 0.987411, 0.148140,
		34.428345, 31.041355, 37.900139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.577576, 30.425186, 38.489128>,  <34.389534, 30.350168, 37.796440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.577576, 30.425186, 38.489128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.441387, 30.795530, 38.423569>,  <34.359673, 31.017736, 38.384232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.441387, 30.795530, 38.423569>,  <34.577576, 30.425186, 38.489128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.441387, 30.795530, 38.423569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397996, 0.016019, 0.917247,
		0.851867, 0.377530, 0.363034,
		-0.340473, 0.925859, -0.163901,
		34.339245, 31.073288, 38.374397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.780663, 30.753866, 39.052765>,  <34.577576, 30.425186, 38.489128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.780663, 30.753866, 39.052765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.478157, 30.976324, 38.914913>,  <34.296654, 31.109798, 38.832203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.478157, 30.976324, 38.914913>,  <34.780663, 30.753866, 39.052765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.478157, 30.976324, 38.914913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379612, 0.056033, 0.923447,
		0.532882, 0.829194, 0.168744,
		-0.756261, 0.556146, -0.344631,
		34.251278, 31.143167, 38.811523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.786430, 31.331249, 39.469112>,  <34.780663, 30.753866, 39.052765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.786430, 31.331249, 39.469112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.422630, 31.272793, 39.313446>,  <34.204350, 31.237719, 39.220047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.422630, 31.272793, 39.313446>,  <34.786430, 31.331249, 39.469112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.422630, 31.272793, 39.313446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395208, 0.013658, 0.918490,
		-0.128913, 0.989170, -0.070178,
		-0.909501, -0.146140, -0.389167,
		34.149780, 31.228951, 39.196697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.346886, 31.840893, 39.847000>,  <34.786430, 31.331249, 39.469112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.346886, 31.840893, 39.847000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.109425, 31.550089, 39.708996>,  <33.966949, 31.375607, 39.626194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.109425, 31.550089, 39.708996>,  <34.346886, 31.840893, 39.847000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.109425, 31.550089, 39.708996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536473, 0.037978, 0.843063,
		-0.599813, 0.685575, -0.412567,
		-0.593651, -0.727010, -0.345013,
		33.931328, 31.331985, 39.605492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.693871, 32.038086, 40.105316>,  <34.346886, 31.840893, 39.847000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.693871, 32.038086, 40.105316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.650642, 31.649616, 40.020336>,  <33.624706, 31.416533, 39.969349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.650642, 31.649616, 40.020336>,  <33.693871, 32.038086, 40.105316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.650642, 31.649616, 40.020336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549279, -0.119787, 0.827009,
		-0.828621, 0.206067, -0.520503,
		-0.108070, -0.971178, -0.212446,
		33.618221, 31.358263, 39.956604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.029465, 31.968872, 40.291653>,  <33.693871, 32.038086, 40.105316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.029465, 31.968872, 40.291653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.166569, 31.593105, 40.293182>,  <33.248833, 31.367645, 40.294098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.166569, 31.593105, 40.293182>,  <33.029465, 31.968872, 40.291653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.166569, 31.593105, 40.293182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555735, -0.199485, 0.807072,
		-0.757413, -0.278756, -0.590441,
		0.342760, -0.939415, 0.003822,
		33.269398, 31.311281, 40.294331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.449097, 31.565054, 40.377651>,  <33.029465, 31.968872, 40.291653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.449097, 31.565054, 40.377651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.746391, 31.314114, 40.470627>,  <32.924770, 31.163549, 40.526413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.746391, 31.314114, 40.470627>,  <32.449097, 31.565054, 40.377651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.746391, 31.314114, 40.470627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410213, -0.152865, 0.899087,
		-0.528509, -0.763587, -0.370962,
		0.743238, -0.627349, 0.232443,
		32.969364, 31.125910, 40.540359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.125309, 30.903835, 40.750294>,  <32.449097, 31.565054, 40.377651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.125309, 30.903835, 40.750294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.512974, 30.911961, 40.848530>,  <32.745571, 30.916836, 40.907471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.512974, 30.911961, 40.848530>,  <32.125309, 30.903835, 40.750294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.512974, 30.911961, 40.848530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224674, -0.336577, 0.914460,
		0.101239, -0.941437, -0.321633,
		0.969161, 0.020316, 0.245590,
		32.803722, 30.918055, 40.922207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.332897, 30.228500, 41.167439>,  <32.125309, 30.903835, 40.750294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.332897, 30.228500, 41.167439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.595806, 30.522213, 41.235355>,  <32.753551, 30.698441, 41.276108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.595806, 30.522213, 41.235355>,  <32.332897, 30.228500, 41.167439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.595806, 30.522213, 41.235355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047234, -0.264985, 0.963095,
		0.752174, -0.624993, -0.208850,
		0.657270, 0.734279, 0.169794,
		32.792988, 30.742496, 41.286293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.593224, 29.980263, 41.858349>,  <32.332897, 30.228500, 41.167439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.593224, 29.980263, 41.858349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.697632, 30.359205, 41.784180>,  <32.760277, 30.586571, 41.739677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.697632, 30.359205, 41.784180>,  <32.593224, 29.980263, 41.858349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.697632, 30.359205, 41.784180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068665, 0.173370, 0.982460,
		0.962887, -0.269176, -0.019797,
		0.261023, 0.947358, -0.185419,
		32.775940, 30.643414, 41.728554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.244644, 29.954481, 42.150719>,  <32.593224, 29.980263, 41.858349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.244644, 29.954481, 42.150719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.060234, 30.307653, 42.115208>,  <32.949589, 30.519558, 42.093903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.060234, 30.307653, 42.115208>,  <33.244644, 29.954481, 42.150719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.060234, 30.307653, 42.115208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149878, 0.176084, 0.972898,
		0.874636, 0.435229, -0.213512,
		-0.461030, 0.882932, -0.088778,
		32.921925, 30.572533, 42.088573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.573105, 30.409895, 42.640358>,  <33.244644, 29.954481, 42.150719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.573105, 30.409895, 42.640358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.223774, 30.583164, 42.551224>,  <33.014175, 30.687126, 42.497742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.223774, 30.583164, 42.551224>,  <33.573105, 30.409895, 42.640358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.223774, 30.583164, 42.551224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116714, 0.258052, 0.959055,
		0.472941, 0.863579, -0.174807,
		-0.873330, 0.433174, -0.222835,
		32.961777, 30.713116, 42.484375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.625904, 30.955803, 43.005436>,  <33.573105, 30.409895, 42.640358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.625904, 30.955803, 43.005436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.237442, 30.889387, 42.936985>,  <33.004364, 30.849537, 42.895916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.237442, 30.889387, 42.936985>,  <33.625904, 30.955803, 43.005436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.237442, 30.889387, 42.936985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198142, 0.162725, 0.966572,
		-0.132643, 0.972600, -0.190931,
		-0.971157, -0.166041, -0.171128,
		32.946095, 30.839575, 42.885647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.012806, 31.581955, 43.212833>,  <33.625904, 30.955803, 43.005436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.012806, 31.581955, 43.212833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.296314, 31.376602, 43.406361>,  <34.466419, 31.253389, 43.522476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.296314, 31.376602, 43.406361>,  <34.012806, 31.581955, 43.212833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.296314, 31.376602, 43.406361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486592, -0.140772, -0.862213,
		0.510754, 0.846534, 0.150033,
		0.708772, -0.513384, 0.483817,
		34.508945, 31.222588, 43.551506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.600624, 31.821421, 42.986633>,  <34.012806, 31.581955, 43.212833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.600624, 31.821421, 42.986633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.710335, 31.466169, 43.134144>,  <34.776161, 31.253019, 43.222652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.710335, 31.466169, 43.134144>,  <34.600624, 31.821421, 42.986633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.710335, 31.466169, 43.134144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539983, -0.175083, -0.823264,
		0.795731, 0.424940, 0.431553,
		0.274280, -0.888128, 0.368779,
		34.792618, 31.199730, 43.244778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.312859, 31.791359, 43.082939>,  <34.600624, 31.821421, 42.986633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.312859, 31.791359, 43.082939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.180904, 31.416594, 43.036694>,  <35.101734, 31.191734, 43.008945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.180904, 31.416594, 43.036694>,  <35.312859, 31.791359, 43.082939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.180904, 31.416594, 43.036694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619969, -0.122655, -0.774980,
		0.711910, -0.327331, 0.621320,
		-0.329883, -0.936915, -0.115615,
		35.081940, 31.135519, 43.002010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.007336, 31.474634, 42.905273>,  <35.312859, 31.791359, 43.082939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.007336, 31.474634, 42.905273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.709869, 31.238268, 42.780193>,  <35.531391, 31.096449, 42.705143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.709869, 31.238268, 42.780193>,  <36.007336, 31.474634, 42.905273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.709869, 31.238268, 42.780193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456784, -0.107566, -0.883050,
		0.488172, -0.799530, 0.349914,
		-0.743664, -0.590916, -0.312702,
		35.486771, 31.060993, 42.686382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.391048, 31.076221, 42.504509>,  <36.007336, 31.474634, 42.905273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.391048, 31.076221, 42.504509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.008793, 31.003820, 42.411568>,  <35.779438, 30.960381, 42.355801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.008793, 31.003820, 42.411568>,  <36.391048, 31.076221, 42.504509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.008793, 31.003820, 42.411568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285216, -0.371815, -0.883406,
		0.073505, -0.910490, 0.406946,
		-0.955640, -0.181002, -0.232356,
		35.722099, 30.949520, 42.341862>
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
