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
	<24.129478, 34.856377, 34.761997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.504667, 34.836422, 34.899239>,  <24.729780, 34.824451, 34.981583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.504667, 34.836422, 34.899239>,  <24.129478, 34.856377, 34.761997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.504667, 34.836422, 34.899239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166300, -0.803599, -0.571466,
		0.304222, 0.593077, -0.745458,
		0.937973, -0.049883, 0.343101,
		24.786058, 34.821457, 35.002171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.621395, 34.820541, 34.240948>,  <24.129478, 34.856377, 34.761997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.621395, 34.820541, 34.240948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.826054, 34.663181, 34.546486>,  <24.948849, 34.568764, 34.729809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.826054, 34.663181, 34.546486>,  <24.621395, 34.820541, 34.240948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.826054, 34.663181, 34.546486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291641, -0.756719, -0.585082,
		0.808185, 0.522123, -0.272442,
		0.511647, -0.393399, 0.763842,
		24.979548, 34.545162, 34.775639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.206148, 34.819931, 33.861340>,  <24.621395, 34.820541, 34.240948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.206148, 34.819931, 33.861340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.162529, 34.583248, 34.180836>,  <25.136356, 34.441238, 34.372532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.162529, 34.583248, 34.180836>,  <25.206148, 34.819931, 33.861340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.162529, 34.583248, 34.180836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241404, -0.795241, -0.556162,
		0.964278, 0.132170, 0.229562,
		-0.109049, -0.591712, 0.798740,
		25.129814, 34.405735, 34.420456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.841719, 34.459358, 33.939892>,  <25.206148, 34.819931, 33.861340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.841719, 34.459358, 33.939892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.541725, 34.217606, 34.047405>,  <25.361729, 34.072552, 34.111912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.541725, 34.217606, 34.047405>,  <25.841719, 34.459358, 33.939892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.541725, 34.217606, 34.047405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428684, -0.753578, -0.498348,
		0.503741, -0.258530, 0.824261,
		-0.749983, -0.604386, 0.268780,
		25.316730, 34.036289, 34.128040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.140228, 33.857014, 34.337555>,  <25.841719, 34.459358, 33.939892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.140228, 33.857014, 34.337555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.807083, 33.799568, 34.123745>,  <25.607197, 33.765099, 33.995461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.807083, 33.799568, 34.123745>,  <26.140228, 33.857014, 34.337555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.807083, 33.799568, 34.123745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479682, -0.669105, -0.567630,
		-0.276131, -0.729159, 0.626162,
		-0.832861, -0.143619, -0.534525,
		25.557224, 33.756481, 33.963387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.917816, 33.103325, 34.212757>,  <26.140228, 33.857014, 34.337555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.917816, 33.103325, 34.212757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.784084, 33.301231, 33.891899>,  <25.703846, 33.419975, 33.699387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.784084, 33.301231, 33.891899>,  <25.917816, 33.103325, 34.212757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.784084, 33.301231, 33.891899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240085, -0.778327, -0.580143,
		-0.911364, -0.386540, 0.141430,
		-0.334327, 0.494767, -0.802142,
		25.683786, 33.449661, 33.651257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.082031, 32.395458, 34.369408>,  <25.917816, 33.103325, 34.212757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.082031, 32.395458, 34.369408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.078056, 32.658825, 34.670441>,  <26.075672, 32.816845, 34.851063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.078056, 32.658825, 34.670441>,  <26.082031, 32.395458, 34.369408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.078056, 32.658825, 34.670441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369186, 0.697033, -0.614692,
		-0.929303, -0.283952, 0.236153,
		-0.009936, 0.658419, 0.752586,
		26.075075, 32.856350, 34.896217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.679585, 32.103279, 34.396366>,  <26.082031, 32.395458, 34.369408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.679585, 32.103279, 34.396366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.037836, 32.281200, 34.396927>,  <27.252787, 32.387955, 34.397263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.037836, 32.281200, 34.396927>,  <26.679585, 32.103279, 34.396366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.037836, 32.281200, 34.396927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079095, -0.156153, -0.984561,
		-0.437715, 0.881911, -0.175036,
		0.895628, 0.444802, 0.001404,
		27.306524, 32.414642, 34.397346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.612865, 32.572208, 33.870441>,  <26.679585, 32.103279, 34.396366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.612865, 32.572208, 33.870441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.007364, 32.522938, 33.914524>,  <27.244062, 32.493374, 33.940975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.007364, 32.522938, 33.914524>,  <26.612865, 32.572208, 33.870441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.007364, 32.522938, 33.914524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102635, -0.066246, -0.992511,
		0.129557, 0.990171, -0.052692,
		0.986246, -0.123179, 0.110209,
		27.303238, 32.485985, 33.947586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.929546, 32.823689, 33.194469>,  <26.612865, 32.572208, 33.870441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.929546, 32.823689, 33.194469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.221836, 32.627533, 33.384441>,  <27.397209, 32.509838, 33.498425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.221836, 32.627533, 33.384441>,  <26.929546, 32.823689, 33.194469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.221836, 32.627533, 33.384441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531241, -0.028458, -0.846743,
		0.428752, 0.871037, 0.239722,
		0.730722, -0.490392, 0.474932,
		27.441053, 32.480415, 33.526920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.508757, 33.202568, 33.161621>,  <26.929546, 32.823689, 33.194469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.508757, 33.202568, 33.161621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.608517, 32.817135, 33.200207>,  <27.668373, 32.585876, 33.223358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.608517, 32.817135, 33.200207>,  <27.508757, 33.202568, 33.161621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.608517, 32.817135, 33.200207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370740, 0.002982, -0.928732,
		0.894624, 0.267388, 0.357983,
		0.249399, -0.963584, 0.096464,
		27.683336, 32.528061, 33.229145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.146362, 33.114407, 32.813431>,  <27.508757, 33.202568, 33.161621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.146362, 33.114407, 32.813431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.999371, 32.743835, 32.846142>,  <27.911175, 32.521492, 32.865768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.999371, 32.743835, 32.846142>,  <28.146362, 33.114407, 32.813431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.999371, 32.743835, 32.846142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192981, -0.161974, -0.967741,
		0.909790, -0.339843, 0.238305,
		-0.367479, -0.926429, 0.081779,
		27.889126, 32.465908, 32.870674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.674971, 32.589458, 32.417088>,  <28.146362, 33.114407, 32.813431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.674971, 32.589458, 32.417088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.325190, 32.397472, 32.445267>,  <28.115320, 32.282280, 32.462173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.325190, 32.397472, 32.445267>,  <28.674971, 32.589458, 32.417088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.325190, 32.397472, 32.445267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089369, -0.302122, -0.949071,
		0.476809, -0.823621, 0.307086,
		-0.874452, -0.479970, 0.070448,
		28.062855, 32.253483, 32.466400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.839533, 31.975950, 32.099560>,  <28.674971, 32.589458, 32.417088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.839533, 31.975950, 32.099560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.440536, 31.959000, 32.122257>,  <28.201139, 31.948830, 32.135876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.440536, 31.959000, 32.122257>,  <28.839533, 31.975950, 32.099560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.440536, 31.959000, 32.122257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029273, -0.482865, -0.875206,
		0.064487, -0.874669, 0.480412,
		-0.997489, -0.042376, 0.056743,
		28.141291, 31.946287, 32.139278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.672762, 31.305498, 32.006496>,  <28.839533, 31.975950, 32.099560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.672762, 31.305498, 32.006496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.329416, 31.481422, 31.900837>,  <28.123409, 31.586977, 31.837442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.329416, 31.481422, 31.900837>,  <28.672762, 31.305498, 32.006496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.329416, 31.481422, 31.900837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029480, -0.471731, -0.881250,
		-0.512193, -0.764220, 0.391951,
		-0.858364, 0.439815, -0.264147,
		28.071907, 31.613367, 31.821592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.217281, 30.754801, 31.792429>,  <28.672762, 31.305498, 32.006496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.217281, 30.754801, 31.792429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.086321, 31.090712, 31.619186>,  <28.007744, 31.292257, 31.515240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.086321, 31.090712, 31.619186>,  <28.217281, 30.754801, 31.792429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.086321, 31.090712, 31.619186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068444, -0.436089, -0.897297,
		-0.942403, -0.323420, 0.085299,
		-0.327401, 0.839777, -0.433108,
		27.988100, 31.342646, 31.489254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.826611, 30.559101, 31.271112>,  <28.217281, 30.754801, 31.792429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.826611, 30.559101, 31.271112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.910265, 30.924389, 31.131233>,  <27.960457, 31.143562, 31.047306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.910265, 30.924389, 31.131233>,  <27.826611, 30.559101, 31.271112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.910265, 30.924389, 31.131233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060392, -0.368985, -0.927471,
		-0.976020, 0.172848, -0.132319,
		0.209135, 0.913222, -0.349698,
		27.973005, 31.198355, 31.026323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.494028, 30.545805, 30.587164>,  <27.826611, 30.559101, 31.271112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.494028, 30.545805, 30.587164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.688900, 30.895000, 30.577831>,  <27.805824, 31.104519, 30.572231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.688900, 30.895000, 30.577831>,  <27.494028, 30.545805, 30.587164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.688900, 30.895000, 30.577831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101495, -0.083133, -0.991357,
		-0.867383, 0.480602, -0.129105,
		0.487181, 0.872990, -0.023329,
		27.835054, 31.156897, 30.570833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.199745, 30.945145, 29.995434>,  <27.494028, 30.545805, 30.587164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.199745, 30.945145, 29.995434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.569206, 31.089134, 30.048021>,  <27.790882, 31.175528, 30.079573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.569206, 31.089134, 30.048021>,  <27.199745, 30.945145, 29.995434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.569206, 31.089134, 30.048021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124312, 0.043069, -0.991308,
		-0.362507, 0.931968, -0.004968,
		0.923653, 0.359973, 0.131468,
		27.846302, 31.197126, 30.087461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.267183, 31.286592, 29.333597>,  <27.199745, 30.945145, 29.995434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.267183, 31.286592, 29.333597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.631516, 31.259220, 29.496424>,  <27.850115, 31.242796, 29.594120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.631516, 31.259220, 29.496424>,  <27.267183, 31.286592, 29.333597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.631516, 31.259220, 29.496424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397172, -0.123325, -0.909420,
		0.112436, 0.990004, -0.085149,
		0.910831, -0.068433, 0.407068,
		27.904764, 31.238689, 29.618544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.712673, 31.769255, 28.977690>,  <27.267183, 31.286592, 29.333597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.712673, 31.769255, 28.977690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.944126, 31.478502, 29.125652>,  <28.082998, 31.304050, 29.214430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.944126, 31.478502, 29.125652>,  <27.712673, 31.769255, 28.977690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.944126, 31.478502, 29.125652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313190, -0.220741, -0.923680,
		0.753059, 0.650321, 0.099924,
		0.578631, -0.726881, 0.369905,
		28.117716, 31.260437, 29.236624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.248892, 31.800169, 28.459564>,  <27.712673, 31.769255, 28.977690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.248892, 31.800169, 28.459564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.299219, 31.460278, 28.664358>,  <28.329416, 31.256342, 28.787235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.299219, 31.460278, 28.664358>,  <28.248892, 31.800169, 28.459564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.299219, 31.460278, 28.664358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261342, -0.469466, -0.843387,
		0.957011, 0.239918, 0.163002,
		0.125820, -0.849730, 0.511985,
		28.336966, 31.205359, 28.817953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.893303, 31.618153, 28.325966>,  <28.248892, 31.800169, 28.459564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.893303, 31.618153, 28.325966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.686768, 31.295618, 28.441357>,  <28.562845, 31.102098, 28.510592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.686768, 31.295618, 28.441357>,  <28.893303, 31.618153, 28.325966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.686768, 31.295618, 28.441357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329323, -0.497904, -0.802271,
		0.790531, -0.319243, 0.522632,
		-0.516340, -0.806335, 0.288475,
		28.531866, 31.053719, 28.527899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.319134, 31.056332, 28.120878>,  <28.893303, 31.618153, 28.325966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.319134, 31.056332, 28.120878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.951740, 30.901457, 28.153051>,  <28.731304, 30.808531, 28.172356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.951740, 30.901457, 28.153051>,  <29.319134, 31.056332, 28.120878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.951740, 30.901457, 28.153051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165090, -0.560246, -0.811708,
		0.359346, -0.732263, 0.578499,
		-0.918485, -0.387189, 0.080433,
		28.676195, 30.785301, 28.177181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.459560, 30.391916, 27.845404>,  <29.319134, 31.056332, 28.120878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.459560, 30.391916, 27.845404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.066330, 30.464632, 27.836369>,  <28.830391, 30.508261, 27.830948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.066330, 30.464632, 27.836369>,  <29.459560, 30.391916, 27.845404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.066330, 30.464632, 27.836369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070853, -0.491050, -0.868245,
		-0.168929, -0.851952, 0.495621,
		-0.983078, 0.181788, -0.022590,
		28.771406, 30.519169, 27.829592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.004013, 29.786652, 27.780653>,  <29.459560, 30.391916, 27.845404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.004013, 29.786652, 27.780653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.808855, 30.099125, 27.624851>,  <28.691761, 30.286608, 27.531370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.808855, 30.099125, 27.624851>,  <29.004013, 29.786652, 27.780653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.808855, 30.099125, 27.624851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125774, -0.504476, -0.854216,
		-0.863794, -0.367776, 0.344383,
		-0.487893, 0.781182, -0.389507,
		28.662487, 30.333479, 27.507999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.853584, 29.101126, 27.503485>,  <29.004013, 29.786652, 27.780653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.853584, 29.101126, 27.503485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.640200, 28.964090, 27.194149>,  <28.512169, 28.881868, 27.008549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.640200, 28.964090, 27.194149>,  <28.853584, 29.101126, 27.503485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.640200, 28.964090, 27.194149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704724, 0.685636, 0.182395,
		0.467741, 0.642290, -0.607191,
		-0.533462, -0.342589, -0.773338,
		28.480162, 28.861313, 26.962149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.133984, 28.394417, 27.648779>,  <28.853584, 29.101126, 27.503485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.133984, 28.394417, 27.648779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.402000, 28.604488, 27.858627>,  <29.562811, 28.730532, 27.984537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.402000, 28.604488, 27.858627>,  <29.133984, 28.394417, 27.648779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.402000, 28.604488, 27.858627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639802, -0.766951, -0.049384,
		0.376424, 0.368744, -0.849901,
		0.670043, 0.525180, 0.524623,
		29.603014, 28.762043, 28.016014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.870508, 28.367430, 27.341200>,  <29.133984, 28.394417, 27.648779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.870508, 28.367430, 27.341200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.911280, 28.437971, 27.732813>,  <29.935743, 28.480297, 27.967781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.911280, 28.437971, 27.732813>,  <29.870508, 28.367430, 27.341200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.911280, 28.437971, 27.732813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764070, -0.644101, 0.036473,
		0.637030, 0.744334, -0.200401,
		0.101930, 0.176354, 0.979035,
		29.941858, 28.490877, 28.026524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.538155, 28.483536, 27.334867>,  <29.870508, 28.367430, 27.341200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.538155, 28.483536, 27.334867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.400932, 28.413815, 27.704067>,  <30.318598, 28.371983, 27.925587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.400932, 28.413815, 27.704067>,  <30.538155, 28.483536, 27.334867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.400932, 28.413815, 27.704067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785412, -0.592196, 0.180086,
		0.515208, 0.786716, 0.340056,
		-0.343057, -0.174303, 0.923001,
		30.298016, 28.361525, 27.980968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.032509, 28.620016, 27.879595>,  <30.538155, 28.483536, 27.334867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.032509, 28.620016, 27.879595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.777943, 28.352812, 28.033861>,  <30.625202, 28.192490, 28.126421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.777943, 28.352812, 28.033861>,  <31.032509, 28.620016, 27.879595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.777943, 28.352812, 28.033861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764520, -0.612649, 0.200426,
		0.102391, 0.422403, 0.900606,
		-0.636416, -0.668010, 0.385666,
		30.587017, 28.152409, 28.149561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.427565, 29.247946, 27.624607>,  <31.032509, 28.620016, 27.879595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.427565, 29.247946, 27.624607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.407278, 29.600101, 27.435995>,  <31.395105, 29.811396, 27.322828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.407278, 29.600101, 27.435995>,  <31.427565, 29.247946, 27.624607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.407278, 29.600101, 27.435995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804000, -0.244091, -0.542221,
		-0.592462, -0.406610, -0.695454,
		-0.050718, 0.880391, -0.471530,
		31.392063, 29.864218, 27.294537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.379286, 29.188747, 26.926140>,  <31.427565, 29.247946, 27.624607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.379286, 29.188747, 26.926140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.539955, 29.554001, 26.953979>,  <31.636356, 29.773153, 26.970684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.539955, 29.554001, 26.953979>,  <31.379286, 29.188747, 26.926140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.539955, 29.554001, 26.953979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764984, -0.292778, -0.573656,
		-0.503448, 0.283664, -0.816134,
		0.401671, 0.913135, 0.069600,
		31.660456, 29.827942, 26.974859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.384537, 29.517094, 26.320301>,  <31.379286, 29.188747, 26.926140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.384537, 29.517094, 26.320301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.695942, 29.674011, 26.516268>,  <31.882786, 29.768162, 26.633848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.695942, 29.674011, 26.516268>,  <31.384537, 29.517094, 26.320301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.695942, 29.674011, 26.516268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582089, -0.159392, -0.797350,
		-0.234707, 0.905924, -0.352440,
		0.778514, 0.392295, 0.489918,
		31.929497, 29.791700, 26.663242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.696486, 30.169701, 26.013117>,  <31.384537, 29.517094, 26.320301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.696486, 30.169701, 26.013117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.977203, 29.971178, 26.217533>,  <32.145634, 29.852064, 26.340183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.977203, 29.971178, 26.217533>,  <31.696486, 30.169701, 26.013117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.977203, 29.971178, 26.217533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638565, 0.120278, -0.760111,
		0.315780, 0.859775, 0.401334,
		0.701796, -0.496306, 0.511041,
		32.187740, 29.822287, 26.370846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.013304, 30.221659, 26.437672>,  <31.696486, 30.169701, 26.013117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.013304, 30.221659, 26.437672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.992706, 30.617720, 26.385597>,  <30.980349, 30.855356, 26.354353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.992706, 30.617720, 26.385597>,  <31.013304, 30.221659, 26.437672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.992706, 30.617720, 26.385597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390491, 0.139944, 0.909908,
		0.919166, -0.003983, -0.393851,
		-0.051493, 0.990151, -0.130187,
		30.977259, 30.914764, 26.346540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.721291, 30.545225, 26.656483>,  <31.013304, 30.221659, 26.437672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.721291, 30.545225, 26.656483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.394419, 30.770588, 26.705130>,  <31.198296, 30.905806, 26.734318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.394419, 30.770588, 26.705130>,  <31.721291, 30.545225, 26.656483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.394419, 30.770588, 26.705130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157826, 0.015790, 0.987341,
		0.554355, 0.826028, -0.101824,
		-0.817179, 0.563408, 0.121616,
		31.149265, 30.939610, 26.741613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.801126, 30.890640, 27.285393>,  <31.721291, 30.545225, 26.656483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.801126, 30.890640, 27.285393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.410316, 30.973763, 27.266460>,  <31.175831, 31.023636, 27.255102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.410316, 30.973763, 27.266460>,  <31.801126, 30.890640, 27.285393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.410316, 30.973763, 27.266460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046541, 0.008682, 0.998879,
		0.207985, 0.978131, 0.001189,
		-0.977024, 0.207807, -0.047329,
		31.117208, 31.036104, 27.252262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.840500, 31.451715, 27.700588>,  <31.801126, 30.890640, 27.285393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.840500, 31.451715, 27.700588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.450329, 31.367849, 27.673513>,  <31.216227, 31.317530, 27.657269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.450329, 31.367849, 27.673513>,  <31.840500, 31.451715, 27.700588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.450329, 31.367849, 27.673513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107355, 0.184025, 0.977041,
		-0.192393, 0.960300, -0.202011,
		-0.975428, -0.209663, -0.067688,
		31.157700, 31.304951, 27.653208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.490528, 32.025600, 27.977087>,  <31.840500, 31.451715, 27.700588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.490528, 32.025600, 27.977087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.230679, 31.722820, 28.005421>,  <31.074768, 31.541153, 28.022421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.230679, 31.722820, 28.005421>,  <31.490528, 32.025600, 27.977087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.230679, 31.722820, 28.005421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169876, 0.235342, 0.956951,
		-0.741032, 0.609627, -0.281472,
		-0.649625, -0.756947, 0.070835,
		31.035791, 31.495735, 28.026670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.729792, 32.275333, 28.211357>,  <31.490528, 32.025600, 27.977087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.729792, 32.275333, 28.211357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.773699, 31.884350, 28.283501>,  <30.800043, 31.649761, 28.326788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.773699, 31.884350, 28.283501>,  <30.729792, 32.275333, 28.211357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.773699, 31.884350, 28.283501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097301, 0.170019, 0.980626,
		-0.989183, -0.125189, -0.076445,
		0.109767, -0.977457, 0.180361,
		30.806629, 31.591112, 28.337608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.308147, 32.145088, 28.769547>,  <30.729792, 32.275333, 28.211357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.308147, 32.145088, 28.769547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.513466, 31.801975, 28.780384>,  <30.636658, 31.596107, 28.786886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.513466, 31.801975, 28.780384>,  <30.308147, 32.145088, 28.769547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.513466, 31.801975, 28.780384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259155, -0.124827, 0.957735,
		-0.818148, -0.498623, -0.286372,
		0.513296, -0.857784, 0.027094,
		30.667456, 31.544640, 28.788513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.864815, 31.642448, 29.119808>,  <30.308147, 32.145088, 28.769547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.864815, 31.642448, 29.119808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.240816, 31.525608, 29.190317>,  <30.466417, 31.455503, 29.232622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.240816, 31.525608, 29.190317>,  <29.864815, 31.642448, 29.119808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.240816, 31.525608, 29.190317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189616, -0.017779, 0.981697,
		-0.283618, -0.956223, -0.072099,
		0.940004, -0.292098, 0.176273,
		30.522818, 31.437979, 29.243198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.782621, 31.186348, 29.718100>,  <29.864815, 31.642448, 29.119808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.782621, 31.186348, 29.718100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.166401, 31.297844, 29.701317>,  <30.396669, 31.364742, 29.691248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.166401, 31.297844, 29.701317>,  <29.782621, 31.186348, 29.718100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.166401, 31.297844, 29.701317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031554, 0.254116, 0.966659,
		0.280118, -0.926134, 0.252607,
		0.959447, 0.278750, -0.041959,
		30.454235, 31.381466, 29.688730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.151115, 30.859573, 30.350761>,  <29.782621, 31.186348, 29.718100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.151115, 30.859573, 30.350761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.351198, 31.175861, 30.209595>,  <30.471249, 31.365635, 30.124895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.351198, 31.175861, 30.209595>,  <30.151115, 30.859573, 30.350761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.351198, 31.175861, 30.209595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086496, 0.359904, 0.928971,
		0.861575, -0.495205, 0.111632,
		0.500208, 0.790722, -0.352917,
		30.501261, 31.413078, 30.103720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.712761, 31.026146, 30.891806>,  <30.151115, 30.859573, 30.350761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.712761, 31.026146, 30.891806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.740108, 31.360741, 30.674322>,  <30.756517, 31.561497, 30.543833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.740108, 31.360741, 30.674322>,  <30.712761, 31.026146, 30.891806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.740108, 31.360741, 30.674322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320171, 0.497759, 0.806056,
		0.944890, -0.229188, -0.233788,
		0.068368, 0.836486, -0.543707,
		30.760618, 31.611687, 30.511209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.419617, 31.403484, 30.964825>,  <30.712761, 31.026146, 30.891806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.419617, 31.403484, 30.964825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.149920, 31.668552, 30.834435>,  <30.988100, 31.827593, 30.756201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.149920, 31.668552, 30.834435>,  <31.419617, 31.403484, 30.964825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.149920, 31.668552, 30.834435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120207, 0.533990, 0.836902,
		0.728660, 0.525092, -0.439697,
		-0.674244, 0.662671, -0.325978,
		30.947647, 31.867353, 30.736641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.676313, 32.026077, 31.228624>,  <31.419617, 31.403484, 30.964825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.676313, 32.026077, 31.228624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.294352, 32.104427, 31.139364>,  <31.065174, 32.151436, 31.085808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.294352, 32.104427, 31.139364>,  <31.676313, 32.026077, 31.228624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.294352, 32.104427, 31.139364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102378, 0.488263, 0.866670,
		0.278711, 0.850431, -0.446191,
		-0.954903, 0.195871, -0.223150,
		31.007881, 32.163189, 31.072420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.519402, 32.721592, 31.385675>,  <31.676313, 32.026077, 31.228624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.519402, 32.721592, 31.385675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.153831, 32.559280, 31.389454>,  <30.934490, 32.461895, 31.391722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.153831, 32.559280, 31.389454>,  <31.519402, 32.721592, 31.385675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.153831, 32.559280, 31.389454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178314, 0.422306, 0.888742,
		-0.364620, 0.810557, -0.458311,
		-0.913924, -0.405776, 0.009447,
		30.879654, 32.437546, 31.392288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.066307, 33.264782, 31.591969>,  <31.519402, 32.721592, 31.385675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.066307, 33.264782, 31.591969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.856867, 32.932003, 31.665398>,  <30.731203, 32.732334, 31.709455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.856867, 32.932003, 31.665398>,  <31.066307, 33.264782, 31.591969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.856867, 32.932003, 31.665398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400806, 0.430679, 0.808622,
		-0.751795, 0.349818, -0.558955,
		-0.523601, -0.831951, 0.183573,
		30.699787, 32.682419, 31.720470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.331387, 33.407841, 31.669739>,  <31.066307, 33.264782, 31.591969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.331387, 33.407841, 31.669739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.374540, 33.060799, 31.863901>,  <30.400433, 32.852573, 31.980398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.374540, 33.060799, 31.863901>,  <30.331387, 33.407841, 31.669739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.374540, 33.060799, 31.863901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417370, 0.403619, 0.814183,
		-0.902310, -0.290431, -0.318570,
		0.107883, -0.867607, 0.485407,
		30.406904, 32.800518, 32.009521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.796164, 33.400063, 32.001213>,  <30.331387, 33.407841, 31.669739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.796164, 33.400063, 32.001213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.007261, 33.117439, 32.189789>,  <30.133921, 32.947865, 32.302937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.007261, 33.117439, 32.189789>,  <29.796164, 33.400063, 32.001213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.007261, 33.117439, 32.189789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371871, 0.306819, 0.876113,
		-0.763674, -0.637681, -0.100827,
		0.527745, -0.706559, 0.471444,
		30.165585, 32.905472, 32.331223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.295391, 32.993599, 32.432030>,  <29.796164, 33.400063, 32.001213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.295391, 32.993599, 32.432030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.643238, 32.917339, 32.614201>,  <29.851946, 32.871582, 32.723503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.643238, 32.917339, 32.614201>,  <29.295391, 32.993599, 32.432030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.643238, 32.917339, 32.614201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414459, 0.219386, 0.883229,
		-0.268305, -0.956829, 0.111764,
		0.869618, -0.190653, 0.455429,
		29.904123, 32.860142, 32.750828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.143284, 32.587894, 33.033516>,  <29.295391, 32.993599, 32.432030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.143284, 32.587894, 33.033516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.508503, 32.707088, 33.144909>,  <29.727634, 32.778606, 33.211742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.508503, 32.707088, 33.144909>,  <29.143284, 32.587894, 33.033516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.508503, 32.707088, 33.144909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320705, 0.102701, 0.941595,
		0.251981, -0.949030, 0.189336,
		0.913046, 0.297985, 0.278480,
		29.782417, 32.796482, 33.228455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.355185, 32.209370, 33.685207>,  <29.143284, 32.587894, 33.033516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.355185, 32.209370, 33.685207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.593695, 32.530483, 33.685883>,  <29.736801, 32.723152, 33.686287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.593695, 32.530483, 33.685883>,  <29.355185, 32.209370, 33.685207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.593695, 32.530483, 33.685883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204804, 0.150086, 0.967228,
		0.776217, -0.577078, 0.253905,
		0.596273, 0.802780, 0.001689,
		29.772577, 32.771317, 33.686390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.857584, 32.142555, 34.322853>,  <29.355185, 32.209370, 33.685207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.857584, 32.142555, 34.322853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.831448, 32.525295, 34.209591>,  <29.815765, 32.754940, 34.141636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.831448, 32.525295, 34.209591>,  <29.857584, 32.142555, 34.322853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.831448, 32.525295, 34.209591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118433, 0.274317, 0.954318,
		0.990810, 0.095893, 0.095398,
		-0.065343, 0.956846, -0.283153,
		29.811844, 32.812347, 34.124645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.372826, 32.505409, 34.672825>,  <29.857584, 32.142555, 34.322853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.372826, 32.505409, 34.672825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.075710, 32.759895, 34.589394>,  <29.897442, 32.912586, 34.539333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.075710, 32.759895, 34.589394>,  <30.372826, 32.505409, 34.672825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.075710, 32.759895, 34.589394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036869, 0.349923, 0.936053,
		0.668513, 0.687597, -0.283374,
		-0.742786, 0.636211, -0.208577,
		29.852875, 32.950760, 34.526821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.614601, 33.118137, 35.068493>,  <30.372826, 32.505409, 34.672825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.614601, 33.118137, 35.068493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.225004, 33.189861, 35.013092>,  <29.991245, 33.232895, 34.979851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.225004, 33.189861, 35.013092>,  <30.614601, 33.118137, 35.068493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.225004, 33.189861, 35.013092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098579, 0.215044, 0.971616,
		0.204003, 0.960003, -0.191776,
		-0.973994, 0.179307, -0.138506,
		29.932806, 33.243652, 34.971539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.378521, 33.738186, 35.253128>,  <30.614601, 33.118137, 35.068493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.378521, 33.738186, 35.253128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.057196, 33.507793, 35.313709>,  <29.864401, 33.369560, 35.350056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.057196, 33.507793, 35.313709>,  <30.378521, 33.738186, 35.253128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.057196, 33.507793, 35.313709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100352, 0.381574, 0.918875,
		-0.587040, 0.722947, -0.364324,
		-0.803314, -0.575977, 0.151450,
		29.816202, 33.334999, 35.359146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.746887, 34.089188, 35.612160>,  <30.378521, 33.738186, 35.253128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.746887, 34.089188, 35.612160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.722168, 33.716465, 35.755222>,  <29.707336, 33.492832, 35.841061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.722168, 33.716465, 35.755222>,  <29.746887, 34.089188, 35.612160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.722168, 33.716465, 35.755222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077961, 0.361757, 0.929007,
		-0.995039, 0.029526, -0.095000,
		-0.061796, -0.931805, 0.357661,
		29.703629, 33.436924, 35.862522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.170395, 34.104092, 36.016483>,  <29.746887, 34.089188, 35.612160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.170395, 34.104092, 36.016483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.453749, 33.838242, 36.111530>,  <29.623760, 33.678730, 36.168560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.453749, 33.838242, 36.111530>,  <29.170395, 34.104092, 36.016483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.453749, 33.838242, 36.111530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101478, 0.429057, 0.897559,
		-0.698496, -0.611702, 0.371381,
		0.708382, -0.664629, 0.237620,
		29.666264, 33.638851, 36.182816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.985067, 33.892445, 36.688648>,  <29.170395, 34.104092, 36.016483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.985067, 33.892445, 36.688648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.377436, 33.867004, 36.615166>,  <29.612856, 33.851738, 36.571075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.377436, 33.867004, 36.615166>,  <28.985067, 33.892445, 36.688648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.377436, 33.867004, 36.615166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194121, 0.371537, 0.907897,
		0.010509, -0.926237, 0.376795,
		0.980921, -0.063603, -0.183707,
		29.671713, 33.847923, 36.560055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.429880, 33.556232, 37.280834>,  <28.985067, 33.892445, 36.688648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.429880, 33.556232, 37.280834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.636517, 33.848087, 37.101608>,  <29.760498, 34.023201, 36.994072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.636517, 33.848087, 37.101608>,  <29.429880, 33.556232, 37.280834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.636517, 33.848087, 37.101608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203728, 0.403522, 0.892000,
		0.831643, -0.552081, 0.059807,
		0.516590, 0.729642, -0.448060,
		29.791494, 34.066978, 36.967190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.153597, 33.541634, 37.443604>,  <29.429880, 33.556232, 37.280834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.153597, 33.541634, 37.443604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.042267, 33.916992, 37.361679>,  <29.975470, 34.142208, 37.312527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.042267, 33.916992, 37.361679>,  <30.153597, 33.541634, 37.443604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.042267, 33.916992, 37.361679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256932, 0.278202, 0.925521,
		0.925484, 0.204974, -0.318535,
		-0.278325, 0.938397, -0.204807,
		29.958769, 34.198513, 37.300236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.737234, 34.122456, 37.508812>,  <30.153597, 33.541634, 37.443604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.737234, 34.122456, 37.508812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.372004, 34.244961, 37.616508>,  <30.152864, 34.318466, 37.681126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.372004, 34.244961, 37.616508>,  <30.737234, 34.122456, 37.508812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.372004, 34.244961, 37.616508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385240, 0.431325, 0.815812,
		0.133722, 0.848622, -0.511819,
		-0.913076, 0.306265, 0.269245,
		30.098080, 34.336842, 37.697281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.064814, 33.389359, 37.512535>,  <30.737234, 34.122456, 37.508812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.064814, 33.389359, 37.512535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.453711, 33.322124, 37.447433>,  <31.687050, 33.281784, 37.408371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.453711, 33.322124, 37.447433>,  <31.064814, 33.389359, 37.512535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.453711, 33.322124, 37.447433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194251, 0.192157, 0.961947,
		-0.130418, -0.966862, 0.219474,
		0.972244, -0.168088, -0.162753,
		31.745384, 33.271698, 37.398609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.297861, 32.827133, 38.019974>,  <31.064814, 33.389359, 37.512535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.297861, 32.827133, 38.019974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.608429, 33.041210, 37.886864>,  <31.794769, 33.169659, 37.806999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.608429, 33.041210, 37.886864>,  <31.297861, 32.827133, 38.019974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.608429, 33.041210, 37.886864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370756, 0.039094, 0.927907,
		0.509621, -0.843823, -0.168074,
		0.776419, 0.535196, -0.332776,
		31.841354, 33.201767, 37.787029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.711054, 32.704693, 38.502769>,  <31.297861, 32.827133, 38.019974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.711054, 32.704693, 38.502769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.848574, 33.037075, 38.327808>,  <31.931086, 33.236504, 38.222832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.848574, 33.037075, 38.327808>,  <31.711054, 32.704693, 38.502769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.848574, 33.037075, 38.327808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130444, 0.419020, 0.898558,
		0.929938, -0.365982, 0.035667,
		0.343802, 0.830951, -0.437403,
		31.951714, 33.286362, 38.196587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.279156, 32.890137, 38.912064>,  <31.711054, 32.704693, 38.502769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.279156, 32.890137, 38.912064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.193691, 33.217979, 38.699425>,  <32.142414, 33.414684, 38.571842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.193691, 33.217979, 38.699425>,  <32.279156, 32.890137, 38.912064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.193691, 33.217979, 38.699425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023638, 0.548339, 0.835922,
		0.976623, 0.166035, -0.136530,
		-0.213657, 0.819608, -0.531596,
		32.129593, 33.463863, 38.539948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.771065, 33.394058, 39.121716>,  <32.279156, 32.890137, 38.912064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.771065, 33.394058, 39.121716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.465385, 33.601124, 38.967823>,  <32.281979, 33.725365, 38.875488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.465385, 33.601124, 38.967823>,  <32.771065, 33.394058, 39.121716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.465385, 33.601124, 38.967823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007031, 0.603158, 0.797591,
		0.644938, 0.606816, -0.464575,
		-0.764203, 0.517662, -0.384733,
		32.236126, 33.756424, 38.852402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.979443, 34.168434, 39.194054>,  <32.771065, 33.394058, 39.121716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.979443, 34.168434, 39.194054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.590282, 34.173897, 39.101719>,  <32.356789, 34.177174, 39.046318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.590282, 34.173897, 39.101719>,  <32.979443, 34.168434, 39.194054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.590282, 34.173897, 39.101719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143452, 0.747309, 0.648807,
		0.181364, 0.664336, -0.725096,
		-0.972897, 0.013654, -0.230835,
		32.298412, 34.177994, 39.032467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.823944, 34.847446, 38.825142>,  <32.979443, 34.168434, 39.194054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.823944, 34.847446, 38.825142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.500370, 34.675446, 38.985500>,  <32.306225, 34.572247, 39.081715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.500370, 34.675446, 38.985500>,  <32.823944, 34.847446, 38.825142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.500370, 34.675446, 38.985500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062262, 0.740746, 0.668893,
		-0.584585, 0.516134, -0.625992,
		-0.808940, -0.430001, 0.400894,
		32.257687, 34.546444, 39.105770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.277321, 35.475731, 39.058449>,  <32.823944, 34.847446, 38.825142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.277321, 35.475731, 39.058449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.155098, 35.169819, 39.285339>,  <32.081764, 34.986271, 39.421474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.155098, 35.169819, 39.285339>,  <32.277321, 35.475731, 39.058449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.155098, 35.169819, 39.285339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078610, 0.613945, 0.785424,
		-0.948922, 0.195405, -0.247716,
		-0.305560, -0.764780, 0.567226,
		32.063431, 34.940384, 39.455505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.812706, 35.782963, 39.622852>,  <32.277321, 35.475731, 39.058449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.812706, 35.782963, 39.622852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.918549, 35.418621, 39.749557>,  <31.982054, 35.200016, 39.825581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.918549, 35.418621, 39.749557>,  <31.812706, 35.782963, 39.622852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.918549, 35.418621, 39.749557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010544, 0.325715, 0.945409,
		-0.964299, -0.253501, 0.076582,
		0.264606, -0.910850, 0.316759,
		31.997931, 35.145367, 39.844585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.304976, 35.508919, 40.244110>,  <31.812706, 35.782963, 39.622852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.304976, 35.508919, 40.244110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.634983, 35.290886, 40.303745>,  <31.832989, 35.160065, 40.339527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.634983, 35.290886, 40.303745>,  <31.304976, 35.508919, 40.244110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.634983, 35.290886, 40.303745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064718, 0.353231, 0.933295,
		-0.561385, -0.760338, 0.326699,
		0.825020, -0.545082, 0.149091,
		31.882488, 35.127361, 40.348473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.215654, 35.260525, 41.033352>,  <31.304976, 35.508919, 40.244110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.215654, 35.260525, 41.033352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.599983, 35.207031, 40.936245>,  <31.830580, 35.174934, 40.877979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.599983, 35.207031, 40.936245>,  <31.215654, 35.260525, 41.033352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.599983, 35.207031, 40.936245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272175, 0.289799, 0.917571,
		-0.052352, -0.947699, 0.314843,
		0.960822, -0.133729, -0.242769,
		31.888229, 35.166912, 40.863415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.549284, 34.692139, 41.440765>,  <31.215654, 35.260525, 41.033352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.549284, 34.692139, 41.440765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.842310, 34.927872, 41.304508>,  <32.018127, 35.069309, 41.222755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.842310, 34.927872, 41.304508>,  <31.549284, 34.692139, 41.440765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.842310, 34.927872, 41.304508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307592, 0.159822, 0.938000,
		0.607234, -0.791926, -0.064193,
		0.732567, 0.589331, -0.340640,
		32.062080, 35.104671, 41.202316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.055428, 34.526161, 41.758331>,  <31.549284, 34.692139, 41.440765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.055428, 34.526161, 41.758331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.151299, 34.901630, 41.659172>,  <32.208820, 35.126911, 41.599674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.151299, 34.901630, 41.659172>,  <32.055428, 34.526161, 41.758331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.151299, 34.901630, 41.659172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250890, 0.186785, 0.949824,
		0.937875, -0.289845, -0.190735,
		0.239675, 0.938670, -0.247901,
		32.223202, 35.183231, 41.584801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.692154, 34.607761, 42.080734>,  <32.055428, 34.526161, 41.758331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.692154, 34.607761, 42.080734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.559769, 34.979233, 42.013779>,  <32.480335, 35.202114, 41.973606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.559769, 34.979233, 42.013779>,  <32.692154, 34.607761, 42.080734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.559769, 34.979233, 42.013779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257153, 0.259434, 0.930895,
		0.907928, 0.265051, -0.324677,
		-0.330967, 0.928678, -0.167388,
		32.460480, 35.257835, 41.963562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.162270, 34.999115, 42.522415>,  <32.692154, 34.607761, 42.080734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.162270, 34.999115, 42.522415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.877502, 35.268646, 42.443291>,  <32.706642, 35.430363, 42.395817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.877502, 35.268646, 42.443291>,  <33.162270, 34.999115, 42.522415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.877502, 35.268646, 42.443291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028977, 0.253246, 0.966968,
		0.701662, 0.694136, -0.160766,
		-0.711921, 0.673826, -0.197807,
		32.663925, 35.470795, 42.383949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.263535, 35.569180, 42.825943>,  <33.162270, 34.999115, 42.522415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.263535, 35.569180, 42.825943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.871765, 35.628139, 42.770813>,  <32.636703, 35.663517, 42.737736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.871765, 35.628139, 42.770813>,  <33.263535, 35.569180, 42.825943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.871765, 35.628139, 42.770813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103992, 0.216666, 0.970691,
		0.172942, 0.965054, -0.196881,
		-0.979427, 0.147399, -0.137829,
		32.577938, 35.672359, 42.729465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.001907, 36.367485, 43.038338>,  <33.263535, 35.569180, 42.825943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.001907, 36.367485, 43.038338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.695709, 36.110203, 43.045307>,  <32.511990, 35.955833, 43.049488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.695709, 36.110203, 43.045307>,  <33.001907, 36.367485, 43.038338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.695709, 36.110203, 43.045307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294668, 0.374507, 0.879156,
		-0.572004, 0.667855, -0.476215,
		-0.765495, -0.643206, 0.017424,
		32.466061, 35.917240, 43.050533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.668552, 36.754402, 43.422592>,  <33.001907, 36.367485, 43.038338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.668552, 36.754402, 43.422592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.450890, 36.419285, 43.404686>,  <32.320293, 36.218216, 43.393944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.450890, 36.419285, 43.404686>,  <32.668552, 36.754402, 43.422592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.450890, 36.419285, 43.404686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463640, 0.255819, 0.848289,
		-0.699237, 0.482354, -0.527638,
		-0.544156, -0.837789, -0.044761,
		32.287643, 36.167950, 43.391258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.932354, 36.895538, 43.550873>,  <32.668552, 36.754402, 43.422592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.932354, 36.895538, 43.550873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.021229, 36.524265, 43.670277>,  <32.074554, 36.301502, 43.741920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.021229, 36.524265, 43.670277>,  <31.932354, 36.895538, 43.550873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.021229, 36.524265, 43.670277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303165, 0.225220, 0.925941,
		-0.926674, -0.296229, -0.231352,
		0.222185, -0.928183, 0.298512,
		32.087883, 36.245811, 43.759830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.322214, 36.495506, 43.822952>,  <31.932354, 36.895538, 43.550873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.322214, 36.495506, 43.822952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.627338, 36.297661, 43.989552>,  <31.810413, 36.178951, 44.089512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.627338, 36.297661, 43.989552>,  <31.322214, 36.495506, 43.822952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.627338, 36.297661, 43.989552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432413, 0.088704, 0.897302,
		-0.480767, -0.864572, -0.146215,
		0.762812, -0.494618, 0.416498,
		31.856182, 36.149277, 44.114502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.968647, 36.217972, 44.291821>,  <31.322214, 36.495506, 43.822952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.968647, 36.217972, 44.291821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.329647, 36.093258, 44.410675>,  <31.546247, 36.018429, 44.481987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.329647, 36.093258, 44.410675>,  <30.968647, 36.217972, 44.291821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.329647, 36.093258, 44.410675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236021, 0.219055, 0.946736,
		-0.360264, -0.924558, 0.124110,
		0.902498, -0.311782, 0.297133,
		31.600397, 35.999722, 44.499813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.917128, 35.643364, 44.808495>,  <30.968647, 36.217972, 44.291821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.917128, 35.643364, 44.808495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.270800, 35.820988, 44.866512>,  <31.483002, 35.927563, 44.901325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.270800, 35.820988, 44.866512>,  <30.917128, 35.643364, 44.808495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.270800, 35.820988, 44.866512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215284, 0.111774, 0.970134,
		0.414586, -0.888998, 0.194427,
		0.884179, 0.444061, 0.145047,
		31.536053, 35.954205, 44.910027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.095289, 35.393387, 45.290051>,  <30.917128, 35.643364, 44.808495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.095289, 35.393387, 45.290051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.333607, 35.714134, 45.308090>,  <31.476597, 35.906582, 45.318913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.333607, 35.714134, 45.308090>,  <31.095289, 35.393387, 45.290051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.333607, 35.714134, 45.308090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098134, 0.016950, 0.995029,
		0.797118, -0.597259, 0.088790,
		0.595795, 0.801869, 0.045100,
		31.512346, 35.954697, 45.321621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.546352, 35.226490, 45.881794>,  <31.095289, 35.393387, 45.290051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.546352, 35.226490, 45.881794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.598694, 35.619839, 45.831417>,  <31.630098, 35.855846, 45.801189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.598694, 35.619839, 45.831417>,  <31.546352, 35.226490, 45.881794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.598694, 35.619839, 45.831417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091065, 0.114578, 0.989232,
		0.987211, -0.140914, -0.074557,
		0.130854, 0.983369, -0.125945,
		31.637949, 35.914848, 45.793633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.102913, 35.524357, 46.302856>,  <31.546352, 35.226490, 45.881794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.102913, 35.524357, 46.302856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.845963, 35.825699, 46.246563>,  <31.691792, 36.006504, 46.212788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.845963, 35.825699, 46.246563>,  <32.102913, 35.524357, 46.302856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.845963, 35.825699, 46.246563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128908, 0.287225, 0.949149,
		0.755470, 0.591570, -0.281621,
		-0.642377, 0.753357, -0.140731,
		31.653250, 36.051704, 46.204342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.483662, 36.077366, 46.643528>,  <32.102913, 35.524357, 46.302856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.483662, 36.077366, 46.643528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.101448, 36.189785, 46.607807>,  <31.872122, 36.257236, 46.586372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.101448, 36.189785, 46.607807>,  <32.483662, 36.077366, 46.643528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.101448, 36.189785, 46.607807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058362, 0.477068, 0.876926,
		0.289063, 0.832717, -0.472256,
		-0.955529, 0.281049, -0.089304,
		31.814789, 36.274101, 46.581017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.523964, 36.845776, 46.710686>,  <32.483662, 36.077366, 46.643528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.523964, 36.845776, 46.710686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.169510, 36.688255, 46.808403>,  <31.956837, 36.593742, 46.867035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.169510, 36.688255, 46.808403>,  <32.523964, 36.845776, 46.710686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.169510, 36.688255, 46.808403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060639, 0.424096, 0.903585,
		-0.459434, 0.815516, -0.351928,
		-0.886140, -0.393797, 0.244296,
		31.903667, 36.570118, 46.881691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.185032, 37.435795, 47.061684>,  <32.523964, 36.845776, 46.710686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.185032, 37.435795, 47.061684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.982552, 37.110096, 47.175365>,  <31.861065, 36.914677, 47.243576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.982552, 37.110096, 47.175365>,  <32.185032, 37.435795, 47.061684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.982552, 37.110096, 47.175365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043554, 0.353261, 0.934510,
		-0.861318, 0.460668, -0.214283,
		-0.506197, -0.814243, 0.284206,
		31.830692, 36.865822, 47.260628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.795401, 37.719997, 47.617527>,  <32.185032, 37.435795, 47.061684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.795401, 37.719997, 47.617527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.805744, 37.323013, 47.665462>,  <31.811951, 37.084824, 47.694225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.805744, 37.323013, 47.665462>,  <31.795401, 37.719997, 47.617527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.805744, 37.323013, 47.665462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350868, 0.121265, 0.928540,
		-0.936068, 0.018036, 0.351357,
		0.025860, -0.992456, 0.119840,
		31.813501, 37.025276, 47.701416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.620398, 37.611221, 48.271450>,  <31.795401, 37.719997, 47.617527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.620398, 37.611221, 48.271450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.788368, 37.259388, 48.182014>,  <31.889151, 37.048286, 48.128353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.788368, 37.259388, 48.182014>,  <31.620398, 37.611221, 48.271450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.788368, 37.259388, 48.182014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417345, -0.031618, 0.908198,
		-0.805907, -0.474689, 0.353814,
		0.419924, -0.879586, -0.223590,
		31.914345, 36.995514, 48.114937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.522038, 37.252438, 48.907204>,  <31.620398, 37.611221, 48.271450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.522038, 37.252438, 48.907204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.802475, 37.061199, 48.695587>,  <31.970737, 36.946457, 48.568615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.802475, 37.061199, 48.695587>,  <31.522038, 37.252438, 48.907204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.802475, 37.061199, 48.695587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519178, -0.166320, 0.838327,
		-0.488793, -0.862415, 0.131612,
		0.701096, -0.478098, -0.529043,
		32.012802, 36.917770, 48.536873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.622292, 36.503662, 49.175148>,  <31.522038, 37.252438, 48.907204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.622292, 36.503662, 49.175148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.952282, 36.626923, 48.985641>,  <32.150276, 36.700878, 48.871937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.952282, 36.626923, 48.985641>,  <31.622292, 36.503662, 49.175148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.952282, 36.626923, 48.985641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533825, -0.149599, 0.832257,
		0.185585, -0.939502, -0.287914,
		0.824978, 0.308150, -0.473767,
		32.199776, 36.719368, 48.843510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.068272, 36.096188, 49.423950>,  <31.622292, 36.503662, 49.175148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.068272, 36.096188, 49.423950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.309811, 36.379589, 49.277859>,  <32.454735, 36.549629, 49.190205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.309811, 36.379589, 49.277859>,  <32.068272, 36.096188, 49.423950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.309811, 36.379589, 49.277859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460576, 0.063835, 0.885322,
		0.650568, -0.702814, -0.287774,
		0.603846, 0.708504, -0.365228,
		32.490963, 36.592140, 49.168289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.779617, 35.952194, 49.611515>,  <32.068272, 36.096188, 49.423950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.779617, 35.952194, 49.611515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.768684, 36.345440, 49.539146>,  <32.762123, 36.581387, 49.495728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.768684, 36.345440, 49.539146>,  <32.779617, 35.952194, 49.611515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.768684, 36.345440, 49.539146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419355, 0.175565, 0.890684,
		0.907411, -0.051525, -0.417075,
		-0.027331, 0.983119, -0.180917,
		32.760487, 36.640377, 49.484871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.433956, 36.205631, 49.762043>,  <32.779617, 35.952194, 49.611515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.433956, 36.205631, 49.762043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.177059, 36.509357, 49.803947>,  <33.022923, 36.691593, 49.829090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.177059, 36.509357, 49.803947>,  <33.433956, 36.205631, 49.762043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.177059, 36.509357, 49.803947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463574, 0.275932, 0.841998,
		0.610433, 0.589327, -0.529212,
		-0.642239, 0.759312, 0.104759,
		32.984386, 36.737152, 49.835377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.904747, 36.709290, 50.028347>,  <33.433956, 36.205631, 49.762043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.904747, 36.709290, 50.028347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.545963, 36.863590, 50.114754>,  <33.330692, 36.956173, 50.166599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.545963, 36.863590, 50.114754>,  <33.904747, 36.709290, 50.028347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.545963, 36.863590, 50.114754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380545, 0.424886, 0.821376,
		0.225066, 0.818942, -0.527901,
		-0.896957, 0.385754, 0.216017,
		33.276875, 36.979317, 50.179558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.085030, 37.377483, 50.273865>,  <33.904747, 36.709290, 50.028347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.085030, 37.377483, 50.273865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.713264, 37.318142, 50.409031>,  <33.490208, 37.282536, 50.490131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.713264, 37.318142, 50.409031>,  <34.085030, 37.377483, 50.273865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.713264, 37.318142, 50.409031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241219, 0.448782, 0.860469,
		-0.279306, 0.881241, -0.381317,
		-0.929409, -0.148353, 0.337920,
		33.434441, 37.273636, 50.510406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.896091, 38.154537, 50.516842>,  <34.085030, 37.377483, 50.273865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.896091, 38.154537, 50.516842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.674770, 37.873737, 50.696198>,  <33.541977, 37.705257, 50.803810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.674770, 37.873737, 50.696198>,  <33.896091, 38.154537, 50.516842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.674770, 37.873737, 50.696198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217524, 0.397843, 0.891294,
		-0.804078, 0.590689, -0.067425,
		-0.553302, -0.702003, 0.448386,
		33.508781, 37.663136, 50.830711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.452976, 38.457726, 50.951378>,  <33.896091, 38.154537, 50.516842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.452976, 38.457726, 50.951378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.487701, 38.084591, 51.091248>,  <33.508537, 37.860710, 51.175167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.487701, 38.084591, 51.091248>,  <33.452976, 38.457726, 50.951378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.487701, 38.084591, 51.091248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230949, 0.360280, 0.903803,
		-0.969085, 0.002292, 0.246716,
		0.086815, -0.932841, 0.349672,
		33.513744, 37.804737, 51.196148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.057995, 38.390167, 51.600060>,  <33.452976, 38.457726, 50.951378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.057995, 38.390167, 51.600060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.331013, 38.104733, 51.663223>,  <33.494823, 37.933472, 51.701122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.331013, 38.104733, 51.663223>,  <33.057995, 38.390167, 51.600060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.331013, 38.104733, 51.663223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240942, 0.423684, 0.873177,
		-0.689986, -0.557936, 0.461115,
		0.682544, -0.713582, 0.157906,
		33.535774, 37.890659, 51.710594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.969467, 38.160763, 52.243874>,  <33.057995, 38.390167, 51.600060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.969467, 38.160763, 52.243874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.347351, 38.109657, 52.123077>,  <33.574081, 38.078995, 52.050602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.347351, 38.109657, 52.123077>,  <32.969467, 38.160763, 52.243874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.347351, 38.109657, 52.123077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326849, 0.440653, 0.836059,
		0.026257, -0.888539, 0.458049,
		0.944712, -0.127760, -0.301988,
		33.630764, 38.071331, 52.032482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.287945, 38.136517, 52.841808>,  <32.969467, 38.160763, 52.243874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.287945, 38.136517, 52.841808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.604893, 38.164936, 52.599453>,  <33.795063, 38.181988, 52.454041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.604893, 38.164936, 52.599453>,  <33.287945, 38.136517, 52.841808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.604893, 38.164936, 52.599453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488739, 0.520447, 0.700192,
		0.365081, -0.850933, 0.377662,
		0.792370, 0.071048, -0.605890,
		33.842602, 38.186253, 52.417686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.866890, 37.640144, 53.209824>,  <33.287945, 38.136517, 52.841808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.866890, 37.640144, 53.209824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.760769, 37.266151, 53.303993>,  <32.697098, 37.041756, 53.360493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.760769, 37.266151, 53.303993>,  <32.866890, 37.640144, 53.209824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.760769, 37.266151, 53.303993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861732, -0.120415, 0.492868,
		-0.432476, 0.333626, 0.837651,
		-0.265299, -0.934984, 0.235419,
		32.681179, 36.985657, 53.374619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.904682, 37.494556, 53.970604>,  <32.866890, 37.640144, 53.209824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.904682, 37.494556, 53.970604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.950188, 37.163261, 53.751122>,  <32.977489, 36.964485, 53.619431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.950188, 37.163261, 53.751122>,  <32.904682, 37.494556, 53.970604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.950188, 37.163261, 53.751122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914834, -0.128067, 0.382984,
		-0.387473, -0.545548, 0.743130,
		0.113765, -0.828237, -0.548708,
		32.984318, 36.914791, 53.586510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.050785, 36.998604, 54.477425>,  <32.904682, 37.494556, 53.970604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.050785, 36.998604, 54.477425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.200363, 36.927174, 54.113384>,  <33.290108, 36.884315, 53.894962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.200363, 36.927174, 54.113384>,  <33.050785, 36.998604, 54.477425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.200363, 36.927174, 54.113384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901768, -0.159329, 0.401781,
		-0.216753, -0.970940, 0.101454,
		0.373941, -0.178575, -0.910098,
		33.312546, 36.873600, 53.840355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.250717, 36.389648, 54.427486>,  <33.050785, 36.998604, 54.477425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.250717, 36.389648, 54.427486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.485237, 36.605564, 54.185863>,  <33.625950, 36.735115, 54.040890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.485237, 36.605564, 54.185863>,  <33.250717, 36.389648, 54.427486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.485237, 36.605564, 54.185863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763819, -0.119934, 0.634190,
		0.269884, -0.833211, -0.482620,
		0.586296, 0.539792, -0.604054,
		33.661125, 36.767502, 54.004646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.931419, 36.055309, 54.238682>,  <33.250717, 36.389648, 54.427486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.931419, 36.055309, 54.238682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.966896, 36.453686, 54.244762>,  <33.988182, 36.692711, 54.248409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.966896, 36.453686, 54.244762>,  <33.931419, 36.055309, 54.238682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.966896, 36.453686, 54.244762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915259, -0.087511, 0.393245,
		0.392980, -0.020966, -0.919308,
		0.088695, 0.995943, 0.015200,
		33.993504, 36.752468, 54.249321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.614529, 36.292507, 53.953098>,  <33.931419, 36.055309, 54.238682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.614529, 36.292507, 53.953098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.501568, 36.590534, 54.194801>,  <34.433792, 36.769348, 54.339825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.501568, 36.590534, 54.194801>,  <34.614529, 36.292507, 53.953098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.501568, 36.590534, 54.194801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926765, 0.049247, 0.372399,
		0.247703, 0.665171, -0.704408,
		-0.282399, 0.745065, 0.604259,
		34.416847, 36.814053, 54.376080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.195305, 35.783634, 54.018238>,  <34.614529, 36.292507, 53.953098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.195305, 35.783634, 54.018238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.957939, 35.579197, 53.769516>,  <34.815521, 35.456535, 53.620281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.957939, 35.579197, 53.769516>,  <35.195305, 35.783634, 54.018238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.957939, 35.579197, 53.769516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728878, -0.013486, -0.684511,
		0.341467, -0.859417, 0.380530,
		-0.593412, -0.511098, -0.621805,
		34.779915, 35.425869, 53.582973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.660900, 35.498962, 53.591240>,  <35.195305, 35.783634, 54.018238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.660900, 35.498962, 53.591240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.328159, 35.450005, 53.374706>,  <35.128513, 35.420628, 53.244785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.328159, 35.450005, 53.374706>,  <35.660900, 35.498962, 53.591240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.328159, 35.450005, 53.374706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541830, 0.032112, -0.839875,
		0.120184, -0.991961, 0.039608,
		-0.831851, -0.122401, -0.541333,
		35.078606, 35.413284, 53.212307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.790558, 34.952194, 53.131351>,  <35.660900, 35.498962, 53.591240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.790558, 34.952194, 53.131351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.507282, 35.191757, 52.981804>,  <35.337318, 35.335495, 52.892075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.507282, 35.191757, 52.981804>,  <35.790558, 34.952194, 53.131351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.507282, 35.191757, 52.981804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406825, -0.086634, -0.909389,
		-0.577029, -0.796119, -0.182297,
		-0.708188, 0.598907, -0.373872,
		35.294827, 35.371429, 52.869644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.414696, 34.652016, 52.600861>,  <35.790558, 34.952194, 53.131351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.414696, 34.652016, 52.600861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.353359, 35.038769, 52.519257>,  <35.316555, 35.270821, 52.470295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.353359, 35.038769, 52.519257>,  <35.414696, 34.652016, 52.600861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.353359, 35.038769, 52.519257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146785, -0.181878, -0.972304,
		-0.977210, -0.179042, -0.114034,
		-0.153343, 0.966884, -0.204013,
		35.307358, 35.328835, 52.458054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.134632, 34.604885, 51.955448>,  <35.414696, 34.652016, 52.600861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.134632, 34.604885, 51.955448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.253963, 34.984543, 51.995705>,  <35.325562, 35.212337, 52.019859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.253963, 34.984543, 51.995705>,  <35.134632, 34.604885, 51.955448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.253963, 34.984543, 51.995705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336275, -0.005835, -0.941746,
		-0.893262, 0.314797, -0.320913,
		0.298331, 0.949141, 0.100646,
		35.343464, 35.269287, 52.025898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.797359, 34.926075, 51.394833>,  <35.134632, 34.604885, 51.955448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.797359, 34.926075, 51.394833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.092972, 35.161507, 51.525925>,  <35.270340, 35.302765, 51.604580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.092972, 35.161507, 51.525925>,  <34.797359, 34.926075, 51.394833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.092972, 35.161507, 51.525925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199254, 0.273745, -0.940937,
		-0.643534, 0.760680, 0.085027,
		0.739027, 0.588583, 0.327733,
		35.314678, 35.338081, 51.624245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.745617, 35.598072, 51.068977>,  <34.797359, 34.926075, 51.394833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.745617, 35.598072, 51.068977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.124260, 35.570038, 51.194851>,  <35.351444, 35.553215, 51.270374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.124260, 35.570038, 51.194851>,  <34.745617, 35.598072, 51.068977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.124260, 35.570038, 51.194851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321581, 0.135929, -0.937075,
		0.022904, 0.988236, 0.151210,
		0.946605, -0.070089, 0.314684,
		35.408241, 35.549011, 51.289257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.089680, 36.268036, 50.968246>,  <34.745617, 35.598072, 51.068977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.089680, 36.268036, 50.968246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.355846, 35.969532, 50.975357>,  <35.515545, 35.790428, 50.979622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.355846, 35.969532, 50.975357>,  <35.089680, 36.268036, 50.968246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.355846, 35.969532, 50.975357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321049, 0.264605, -0.909347,
		0.673907, 0.610801, 0.415659,
		0.665415, -0.746262, 0.017778,
		35.555470, 35.745655, 50.980690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.670227, 36.555336, 50.641426>,  <35.089680, 36.268036, 50.968246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.670227, 36.555336, 50.641426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.787277, 36.172974, 50.651276>,  <35.857510, 35.943554, 50.657185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.787277, 36.172974, 50.651276>,  <35.670227, 36.555336, 50.641426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.787277, 36.172974, 50.651276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250509, 0.051786, -0.966728,
		0.922829, 0.289060, 0.254618,
		0.292628, -0.955909, 0.024623,
		35.875065, 35.886200, 50.658661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325668, 36.507328, 50.297073>,  <35.670227, 36.555336, 50.641426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.325668, 36.507328, 50.297073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.192795, 36.130169, 50.287296>,  <36.113071, 35.903873, 50.281429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.192795, 36.130169, 50.287296>,  <36.325668, 36.507328, 50.297073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.192795, 36.130169, 50.287296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212359, -0.049514, -0.975937,
		0.918998, -0.329383, 0.216680,
		-0.332186, -0.942897, -0.024444,
		36.093140, 35.847301, 50.279964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.940372, 36.057140, 50.091263>,  <36.325668, 36.507328, 50.297073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.940372, 36.057140, 50.091263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.612343, 35.846676, 50.001263>,  <36.415524, 35.720398, 49.947262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.612343, 35.846676, 50.001263>,  <36.940372, 36.057140, 50.091263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.612343, 35.846676, 50.001263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298866, -0.058493, -0.952501,
		0.488008, -0.848370, 0.205220,
		-0.820077, -0.526162, -0.225004,
		36.366318, 35.688828, 49.933762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.180904, 35.425068, 49.728806>,  <36.940372, 36.057140, 50.091263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.180904, 35.425068, 49.728806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.796379, 35.488953, 49.639042>,  <36.565662, 35.527283, 49.585182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.796379, 35.488953, 49.639042>,  <37.180904, 35.425068, 49.728806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.796379, 35.488953, 49.639042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217161, -0.061705, -0.974184,
		-0.169442, -0.985232, 0.024634,
		-0.961317, 0.159718, -0.224409,
		36.507984, 35.536869, 49.571720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.976467, 34.860199, 49.284969>,  <37.180904, 35.425068, 49.728806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.976467, 34.860199, 49.284969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.711555, 35.145096, 49.191940>,  <36.552608, 35.316032, 49.136124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.711555, 35.145096, 49.191940>,  <36.976467, 34.860199, 49.284969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.711555, 35.145096, 49.191940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023931, -0.290144, -0.956684,
		-0.748872, -0.639161, 0.175112,
		-0.662282, 0.712243, -0.232576,
		36.512871, 35.358768, 49.122166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.602028, 34.532219, 48.719173>,  <36.976467, 34.860199, 49.284969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.602028, 34.532219, 48.719173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.469742, 34.909508, 48.706772>,  <36.390369, 35.135880, 48.699329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.469742, 34.909508, 48.706772>,  <36.602028, 34.532219, 48.719173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.469742, 34.909508, 48.706772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079995, -0.060755, -0.994942,
		-0.940333, -0.326564, 0.095545,
		-0.330717, 0.943220, -0.031006,
		36.370525, 35.192474, 48.697472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.853432, 34.594196, 48.366920>,  <36.602028, 34.532219, 48.719173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.853432, 34.594196, 48.366920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.059128, 34.936245, 48.340614>,  <36.182545, 35.141472, 48.324829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.059128, 34.936245, 48.340614>,  <35.853432, 34.594196, 48.366920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.059128, 34.936245, 48.340614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156031, 0.017873, -0.987590,
		-0.843331, 0.518125, 0.142616,
		0.514244, 0.855118, -0.065770,
		36.213402, 35.192780, 48.320885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.403187, 35.067623, 48.056709>,  <35.853432, 34.594196, 48.366920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.403187, 35.067623, 48.056709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.765419, 35.220821, 47.983788>,  <35.982758, 35.312740, 47.940037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.765419, 35.220821, 47.983788>,  <35.403187, 35.067623, 48.056709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.765419, 35.220821, 47.983788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198983, 0.004023, -0.979995,
		-0.374599, 0.923742, 0.079853,
		0.905583, 0.382995, -0.182302,
		36.037094, 35.335720, 47.929096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.257622, 35.536068, 47.621819>,  <35.403187, 35.067623, 48.056709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.257622, 35.536068, 47.621819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.647976, 35.464790, 47.571388>,  <35.882187, 35.422024, 47.541130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.647976, 35.464790, 47.571388>,  <35.257622, 35.536068, 47.621819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.647976, 35.464790, 47.571388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149282, -0.123426, -0.981061,
		0.159258, 0.976224, -0.147050,
		0.975885, -0.178194, -0.126076,
		35.940742, 35.411331, 47.533566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.406307, 35.881775, 46.934273>,  <35.257622, 35.536068, 47.621819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.406307, 35.881775, 46.934273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.719418, 35.641521, 46.999393>,  <35.907284, 35.497368, 47.038467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.719418, 35.641521, 46.999393>,  <35.406307, 35.881775, 46.934273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.719418, 35.641521, 46.999393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006973, -0.270061, -0.962818,
		0.622266, 0.752534, -0.215586,
		0.782775, -0.600632, 0.162802,
		35.954250, 35.461330, 47.048233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.809059, 35.957626, 46.376266>,  <35.406307, 35.881775, 46.934273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.809059, 35.957626, 46.376266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.938412, 35.610706, 46.527641>,  <36.016022, 35.402554, 46.618465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.938412, 35.610706, 46.527641>,  <35.809059, 35.957626, 46.376266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.938412, 35.610706, 46.527641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119016, -0.359476, -0.925534,
		0.938755, 0.344338, -0.013024,
		0.323378, -0.867300, 0.378441,
		36.035427, 35.350517, 46.641174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.354527, 35.917843, 46.054935>,  <35.809059, 35.957626, 46.376266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.354527, 35.917843, 46.054935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.256836, 35.541927, 46.150558>,  <36.198223, 35.316380, 46.207932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.256836, 35.541927, 46.150558>,  <36.354527, 35.917843, 46.054935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.256836, 35.541927, 46.150558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069500, -0.262857, -0.962329,
		0.967224, -0.218412, 0.129512,
		-0.244227, -0.939789, 0.239062,
		36.183567, 35.259991, 46.222279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.877781, 35.470886, 45.748276>,  <36.354527, 35.917843, 46.054935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.877781, 35.470886, 45.748276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.560062, 35.240623, 45.825951>,  <36.369431, 35.102467, 45.872559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.560062, 35.240623, 45.825951>,  <36.877781, 35.470886, 45.748276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.560062, 35.240623, 45.825951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012974, -0.335642, -0.941900,
		0.607391, -0.745629, 0.274068,
		-0.794297, -0.575657, 0.194192,
		36.321774, 35.067924, 45.884209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.988121, 34.735836, 45.452194>,  <36.877781, 35.470886, 45.748276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.988121, 34.735836, 45.452194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.591728, 34.758308, 45.500839>,  <36.353893, 34.771793, 45.530025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.591728, 34.758308, 45.500839>,  <36.988121, 34.735836, 45.452194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.591728, 34.758308, 45.500839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133107, -0.310403, -0.941240,
		-0.015132, -0.948943, 0.315084,
		-0.990986, 0.056183, 0.121614,
		36.294434, 34.775162, 45.537323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.780514, 34.091290, 45.164352>,  <36.988121, 34.735836, 45.452194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.780514, 34.091290, 45.164352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.443222, 34.303585, 45.198483>,  <36.240849, 34.430962, 45.218960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.443222, 34.303585, 45.198483>,  <36.780514, 34.091290, 45.164352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.443222, 34.303585, 45.198483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202623, -0.166800, -0.964946,
		-0.497904, -0.830959, 0.248191,
		-0.843229, 0.530739, 0.085321,
		36.190254, 34.462807, 45.224079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.190487, 33.621010, 44.956493>,  <36.780514, 34.091290, 45.164352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.190487, 33.621010, 44.956493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.102375, 34.004986, 44.887218>,  <36.049507, 34.235371, 44.845654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.102375, 34.004986, 44.887218>,  <36.190487, 33.621010, 44.956493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.102375, 34.004986, 44.887218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092816, -0.197371, -0.975925,
		-0.971011, -0.198900, 0.132574,
		-0.220278, 0.959939, -0.173188,
		36.036293, 34.292969, 44.835262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.873356, 33.632729, 44.318298>,  <36.190487, 33.621010, 44.956493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.873356, 33.632729, 44.318298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.926735, 34.028881, 44.332901>,  <35.958763, 34.266575, 44.341663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.926735, 34.028881, 44.332901>,  <35.873356, 33.632729, 44.318298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.926735, 34.028881, 44.332901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087126, 0.024971, -0.995884,
		-0.987219, 0.136078, -0.082956,
		0.133447, 0.990383, 0.036508,
		35.966770, 34.325996, 44.343853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.278206, 33.966358, 43.916489>,  <35.873356, 33.632729, 44.318298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.278206, 33.966358, 43.916489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.551697, 34.257545, 43.936771>,  <35.715794, 34.432259, 43.948940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.551697, 34.257545, 43.936771>,  <35.278206, 33.966358, 43.916489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.551697, 34.257545, 43.936771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049118, 0.115235, -0.992123,
		-0.728080, 0.675854, 0.114546,
		0.683730, 0.727971, 0.050703,
		35.756817, 34.475937, 43.951981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.055347, 34.544415, 43.563084>,  <35.278206, 33.966358, 43.916489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.055347, 34.544415, 43.563084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.454788, 34.545349, 43.541950>,  <35.694454, 34.545910, 43.529270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.454788, 34.545349, 43.541950>,  <35.055347, 34.544415, 43.563084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.454788, 34.545349, 43.541950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052792, 0.103962, -0.993179,
		0.003174, 0.994578, 0.103940,
		0.998600, 0.002335, -0.052836,
		35.754368, 34.546051, 43.526100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.195351, 35.037823, 43.057110>,  <35.055347, 34.544415, 43.563084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.195351, 35.037823, 43.057110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.528290, 34.816536, 43.070667>,  <35.728054, 34.683765, 43.078804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.528290, 34.816536, 43.070667>,  <35.195351, 35.037823, 43.057110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.528290, 34.816536, 43.070667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023770, -0.025469, -0.999393,
		0.553742, 0.832649, -0.008049,
		0.832349, -0.553214, 0.033896,
		35.777996, 34.650570, 43.080837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.602650, 35.323650, 42.477043>,  <35.195351, 35.037823, 43.057110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.602650, 35.323650, 42.477043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.771519, 34.971062, 42.561687>,  <35.872841, 34.759510, 42.612476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.771519, 34.971062, 42.561687>,  <35.602650, 35.323650, 42.477043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.771519, 34.971062, 42.561687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133356, -0.170509, -0.976290,
		0.896655, 0.440380, 0.045566,
		0.422169, -0.881472, 0.211615,
		35.898170, 34.706619, 42.625172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.084492, 35.345726, 42.017265>,  <35.602650, 35.323650, 42.477043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.084492, 35.345726, 42.017265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.047630, 34.961197, 42.121082>,  <36.025513, 34.730480, 42.183372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.047630, 34.961197, 42.121082>,  <36.084492, 35.345726, 42.017265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.047630, 34.961197, 42.121082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060983, -0.265614, -0.962149,
		0.993876, -0.072839, 0.083102,
		-0.092155, -0.961324, 0.259545,
		36.019985, 34.672798, 42.198944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.681980, 34.972683, 41.668293>,  <36.084492, 35.345726, 42.017265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.681980, 34.972683, 41.668293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.392178, 34.709373, 41.750031>,  <36.218296, 34.551388, 41.799072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.392178, 34.709373, 41.750031>,  <36.681980, 34.972683, 41.668293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.392178, 34.709373, 41.750031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257950, -0.533876, -0.805256,
		0.639177, -0.530706, 0.556601,
		-0.724510, -0.658276, 0.204346,
		36.174824, 34.511890, 41.811333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.851303, 34.410614, 41.263046>,  <36.681980, 34.972683, 41.668293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.851303, 34.410614, 41.263046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.483395, 34.291656, 41.365479>,  <36.262650, 34.220284, 41.426937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.483395, 34.291656, 41.365479>,  <36.851303, 34.410614, 41.263046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.483395, 34.291656, 41.365479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071606, -0.514390, -0.854562,
		0.385866, -0.804339, 0.451826,
		-0.919772, -0.297393, 0.256081,
		36.207462, 34.202438, 41.442303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.864037, 33.736450, 40.998661>,  <36.851303, 34.410614, 41.263046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.864037, 33.736450, 40.998661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.482288, 33.848484, 41.040092>,  <36.253239, 33.915703, 41.064953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.482288, 33.848484, 41.040092>,  <36.864037, 33.736450, 40.998661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.482288, 33.848484, 41.040092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233971, -0.485781, -0.842184,
		-0.185564, -0.827991, 0.529147,
		-0.954371, 0.280084, 0.103583,
		36.195976, 33.932510, 41.071167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.472279, 33.153191, 41.056023>,  <36.864037, 33.736450, 40.998661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.472279, 33.153191, 41.056023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.233849, 33.444286, 40.920322>,  <36.090790, 33.618942, 40.838902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.233849, 33.444286, 40.920322>,  <36.472279, 33.153191, 41.056023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.233849, 33.444286, 40.920322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230282, -0.559711, -0.796049,
		-0.769199, -0.396381, 0.501214,
		-0.596074, 0.727740, -0.339249,
		36.055027, 33.662609, 40.818546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.987560, 32.821533, 40.778614>,  <36.472279, 33.153191, 41.056023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.987560, 32.821533, 40.778614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.931263, 33.176598, 40.603230>,  <35.897484, 33.389637, 40.498001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.931263, 33.176598, 40.603230>,  <35.987560, 32.821533, 40.778614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.931263, 33.176598, 40.603230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253114, -0.460409, -0.850856,
		-0.957144, -0.008774, 0.289480,
		-0.140745, 0.887663, -0.438457,
		35.889038, 33.442898, 40.471691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.330826, 32.763206, 40.427483>,  <35.987560, 32.821533, 40.778614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.330826, 32.763206, 40.427483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.556023, 33.041794, 40.249508>,  <35.691139, 33.208946, 40.142723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.556023, 33.041794, 40.249508>,  <35.330826, 32.763206, 40.427483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.556023, 33.041794, 40.249508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262798, -0.359561, -0.895351,
		-0.783567, 0.621005, -0.019399,
		0.562992, 0.696469, -0.444939,
		35.724922, 33.250736, 40.116028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.923061, 32.895550, 39.805607>,  <35.330826, 32.763206, 40.427483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.923061, 32.895550, 39.805607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.283928, 33.041138, 39.712986>,  <35.500446, 33.128490, 39.657413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.283928, 33.041138, 39.712986>,  <34.923061, 32.895550, 39.805607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.283928, 33.041138, 39.712986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148677, -0.241538, -0.958934,
		-0.404956, 0.899546, -0.163793,
		0.902167, 0.363973, -0.231554,
		35.554577, 33.150330, 39.643520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.872429, 33.362247, 39.219086>,  <34.923061, 32.895550, 39.805607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.872429, 33.362247, 39.219086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.250549, 33.232040, 39.227573>,  <35.477421, 33.153915, 39.232666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.250549, 33.232040, 39.227573>,  <34.872429, 33.362247, 39.219086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.250549, 33.232040, 39.227573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038596, -0.176195, -0.983598,
		0.323921, 0.928973, -0.179120,
		0.945297, -0.325521, 0.021219,
		35.534138, 33.134384, 39.233940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.105293, 33.574684, 38.598610>,  <34.872429, 33.362247, 39.219086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.105293, 33.574684, 38.598610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.406643, 33.338573, 38.714535>,  <35.587452, 33.196907, 38.784092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.406643, 33.338573, 38.714535>,  <35.105293, 33.574684, 38.598610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.406643, 33.338573, 38.714535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196451, -0.218568, -0.955843,
		0.627560, 0.777044, -0.048702,
		0.753376, -0.590281, 0.289815,
		35.632656, 33.161488, 38.801479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.711845, 33.791782, 38.305355>,  <35.105293, 33.574684, 38.598610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.711845, 33.791782, 38.305355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.739792, 33.402950, 38.394951>,  <35.756561, 33.169651, 38.448708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.739792, 33.402950, 38.394951>,  <35.711845, 33.791782, 38.305355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.739792, 33.402950, 38.394951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355305, -0.185562, -0.916147,
		0.932136, 0.143590, 0.332422,
		0.069865, -0.972085, 0.223987,
		35.760750, 33.111324, 38.462147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.282337, 33.666508, 37.909874>,  <35.711845, 33.791782, 38.305355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.282337, 33.666508, 37.909874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.126808, 33.314114, 38.017712>,  <36.033489, 33.102676, 38.082417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.126808, 33.314114, 38.017712>,  <36.282337, 33.666508, 37.909874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.126808, 33.314114, 38.017712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172239, -0.356972, -0.918098,
		0.905068, -0.310545, 0.290539,
		-0.388825, -0.880984, 0.269596,
		36.010162, 33.049820, 38.098591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.722019, 33.197815, 37.736343>,  <36.282337, 33.666508, 37.909874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.722019, 33.197815, 37.736343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.397453, 32.969460, 37.786442>,  <36.202713, 32.832447, 37.816502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.397453, 32.969460, 37.786442>,  <36.722019, 33.197815, 37.736343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.397453, 32.969460, 37.786442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137035, -0.394146, -0.908774,
		0.568178, -0.720230, 0.398049,
		-0.811416, -0.570892, 0.125248,
		36.154030, 32.798191, 37.824017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.035954, 33.473911, 38.392300>,  <36.722019, 33.197815, 37.736343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.035954, 33.473911, 38.392300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.419754, 33.445755, 38.283192>,  <37.650036, 33.428860, 38.217728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.419754, 33.445755, 38.283192>,  <37.035954, 33.473911, 38.392300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.419754, 33.445755, 38.283192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216064, -0.437405, 0.872923,
		-0.180758, -0.896506, -0.404481,
		0.959502, -0.070394, -0.272767,
		37.707603, 33.424637, 38.201363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.275986, 32.855751, 38.696980>,  <37.035954, 33.473911, 38.392300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.275986, 32.855751, 38.696980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.626869, 33.036388, 38.631771>,  <37.837399, 33.144772, 38.592644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.626869, 33.036388, 38.631771>,  <37.275986, 32.855751, 38.696980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.626869, 33.036388, 38.631771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273311, -0.190524, 0.942869,
		0.394733, -0.871645, -0.290554,
		0.877204, 0.451593, -0.163024,
		37.890030, 33.171867, 38.582863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.866428, 32.433880, 38.965633>,  <37.275986, 32.855751, 38.696980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.866428, 32.433880, 38.965633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.991821, 32.813717, 38.966419>,  <38.067059, 33.041618, 38.966892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.991821, 32.813717, 38.966419>,  <37.866428, 32.433880, 38.965633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.991821, 32.813717, 38.966419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185445, -0.063249, 0.980617,
		0.931310, -0.307042, -0.195925,
		0.313482, 0.949592, 0.001965,
		38.085865, 33.098595, 38.967010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.557491, 32.356926, 39.287502>,  <37.866428, 32.433880, 38.965633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.557491, 32.356926, 39.287502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.405209, 32.722889, 39.341179>,  <38.313839, 32.942467, 39.373386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.405209, 32.722889, 39.341179>,  <38.557491, 32.356926, 39.287502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.405209, 32.722889, 39.341179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223996, -0.049551, 0.973330,
		0.897155, 0.400612, -0.186071,
		-0.380708, 0.914907, 0.134190,
		38.290997, 32.997360, 39.381435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890900, 32.549145, 39.892910>,  <38.557491, 32.356926, 39.287502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.890900, 32.549145, 39.892910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.650963, 32.864571, 39.838718>,  <38.507000, 33.053825, 39.806202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.650963, 32.864571, 39.838718>,  <38.890900, 32.549145, 39.892910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.650963, 32.864571, 39.838718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168715, 0.290171, 0.941985,
		0.782132, 0.542181, -0.307099,
		-0.599838, 0.788569, -0.135478,
		38.471012, 33.101143, 39.798077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.182289, 33.092216, 40.137581>,  <38.890900, 32.549145, 39.892910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.182289, 33.092216, 40.137581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.820839, 33.263439, 40.131481>,  <38.603970, 33.366173, 40.127823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.820839, 33.263439, 40.131481>,  <39.182289, 33.092216, 40.137581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.820839, 33.263439, 40.131481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075689, 0.194614, 0.977955,
		0.421588, 0.882549, -0.208257,
		-0.903623, 0.428057, -0.015248,
		38.549751, 33.391857, 40.126907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.239246, 33.710873, 40.485893>,  <39.182289, 33.092216, 40.137581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.239246, 33.710873, 40.485893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.847904, 33.633083, 40.514198>,  <38.613098, 33.586411, 40.531181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.847904, 33.633083, 40.514198>,  <39.239246, 33.710873, 40.485893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.847904, 33.633083, 40.514198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006786, 0.311617, 0.950184,
		-0.206832, 0.930095, -0.303551,
		-0.978353, -0.194469, 0.070764,
		38.554398, 33.574741, 40.535427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.930820, 34.306671, 40.743107>,  <39.239246, 33.710873, 40.485893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.930820, 34.306671, 40.743107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.649200, 34.044819, 40.853214>,  <38.480228, 33.887707, 40.919277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.649200, 34.044819, 40.853214>,  <38.930820, 34.306671, 40.743107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.649200, 34.044819, 40.853214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199778, 0.189385, 0.961365,
		-0.681466, 0.731845, -0.002558,
		-0.704054, -0.654626, 0.275266,
		38.437984, 33.848431, 40.935795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.541054, 34.629307, 41.203522>,  <38.930820, 34.306671, 40.743107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.541054, 34.629307, 41.203522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.482986, 34.240116, 41.275337>,  <38.448147, 34.006599, 41.318428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.482986, 34.240116, 41.275337>,  <38.541054, 34.629307, 41.203522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.482986, 34.240116, 41.275337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055705, 0.173135, 0.983322,
		-0.987838, 0.152747, 0.029066,
		-0.145167, -0.972981, 0.179538,
		38.439438, 33.948223, 41.329197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.024784, 34.522175, 41.664413>,  <38.541054, 34.629307, 41.203522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.024784, 34.522175, 41.664413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.230324, 34.180992, 41.701145>,  <38.353645, 33.976284, 41.723186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.230324, 34.180992, 41.701145>,  <38.024784, 34.522175, 41.664413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.230324, 34.180992, 41.701145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160634, 0.200814, 0.966370,
		-0.842709, -0.481814, 0.240201,
		0.513846, -0.852953, 0.091832,
		38.384480, 33.925106, 41.728695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.804676, 34.283970, 42.394974>,  <38.024784, 34.522175, 41.664413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.804676, 34.283970, 42.394974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.132545, 34.079014, 42.292526>,  <38.329266, 33.956039, 42.231056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.132545, 34.079014, 42.292526>,  <37.804676, 34.283970, 42.394974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.132545, 34.079014, 42.292526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254268, -0.075209, 0.964205,
		-0.513310, -0.855454, 0.068638,
		0.819671, -0.512388, -0.256120,
		38.378448, 33.925297, 42.215691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.919979, 33.865898, 42.917175>,  <37.804676, 34.283970, 42.394974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.919979, 33.865898, 42.917175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.282497, 33.862461, 42.748158>,  <38.500008, 33.860397, 42.646748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.282497, 33.862461, 42.748158>,  <37.919979, 33.865898, 42.917175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.282497, 33.862461, 42.748158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422630, 0.023817, 0.905990,
		0.002277, -0.999679, 0.025217,
		0.906300, -0.008594, -0.422549,
		38.554386, 33.859882, 42.621391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.290730, 33.269493, 43.185207>,  <37.919979, 33.865898, 42.917175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.290730, 33.269493, 43.185207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.557938, 33.542038, 43.065544>,  <38.718262, 33.705566, 42.993748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.557938, 33.542038, 43.065544>,  <38.290730, 33.269493, 43.185207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.557938, 33.542038, 43.065544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421628, -0.015308, 0.906640,
		0.613172, -0.731785, -0.297508,
		0.668019, 0.681364, -0.299155,
		38.758343, 33.746449, 42.975800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.985489, 32.973640, 43.581661>,  <38.290730, 33.269493, 43.185207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.985489, 32.973640, 43.581661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.039410, 33.358307, 43.486145>,  <39.071762, 33.589108, 43.428833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.039410, 33.358307, 43.486145>,  <38.985489, 32.973640, 43.581661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.039410, 33.358307, 43.486145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361797, 0.176584, 0.915380,
		0.922459, -0.209791, -0.324124,
		0.134804, 0.961668, -0.238794,
		39.079849, 33.646809, 43.414509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.693230, 33.010769, 43.823990>,  <38.985489, 32.973640, 43.581661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.693230, 33.010769, 43.823990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.518063, 33.368599, 43.788303>,  <39.412960, 33.583298, 43.766891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.518063, 33.368599, 43.788303>,  <39.693230, 33.010769, 43.823990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.518063, 33.368599, 43.788303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225702, 0.205459, 0.952284,
		0.870220, 0.396889, -0.291883,
		-0.437921, 0.894576, -0.089216,
		39.386688, 33.636971, 43.761539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.108593, 33.442196, 44.146225>,  <39.693230, 33.010769, 43.823990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.108593, 33.442196, 44.146225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.763103, 33.643639, 44.138634>,  <39.555809, 33.764503, 44.134079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.763103, 33.643639, 44.138634>,  <40.108593, 33.442196, 44.146225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.763103, 33.643639, 44.138634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098918, 0.206329, 0.973470,
		0.494159, 0.838934, -0.228027,
		-0.863726, 0.503605, -0.018973,
		39.503986, 33.794720, 44.132942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.280830, 33.980984, 44.564598>,  <40.108593, 33.442196, 44.146225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.280830, 33.980984, 44.564598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.881767, 34.003979, 44.549820>,  <39.642330, 34.017776, 44.540955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.881767, 34.003979, 44.549820>,  <40.280830, 33.980984, 44.564598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.881767, 34.003979, 44.549820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006462, 0.458786, 0.888523,
		0.068031, 0.886685, -0.457342,
		-0.997662, 0.057491, -0.036942,
		39.582470, 34.021225, 44.538738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.059948, 34.641651, 44.867443>,  <40.280830, 33.980984, 44.564598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.059948, 34.641651, 44.867443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.729538, 34.416512, 44.879353>,  <39.531292, 34.281425, 44.886497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.729538, 34.416512, 44.879353>,  <40.059948, 34.641651, 44.867443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.729538, 34.416512, 44.879353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234834, 0.391695, 0.889622,
		-0.512390, 0.727854, -0.455725,
		-0.826020, -0.562853, 0.029776,
		39.481731, 34.247654, 44.888287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.468815, 35.074978, 44.975021>,  <40.059948, 34.641651, 44.867443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.468815, 35.074978, 44.975021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.408798, 34.716011, 45.140972>,  <39.372787, 34.500629, 45.240543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.408798, 34.716011, 45.140972>,  <39.468815, 35.074978, 44.975021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.408798, 34.716011, 45.140972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385050, 0.439536, 0.811507,
		-0.910617, -0.037985, -0.411503,
		-0.150045, -0.897421, 0.414875,
		39.363785, 34.446785, 45.265434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.757439, 35.099953, 45.376991>,  <39.468815, 35.074978, 44.975021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.757439, 35.099953, 45.376991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.905155, 34.755894, 45.517712>,  <38.993786, 34.549458, 45.602146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.905155, 34.755894, 45.517712>,  <38.757439, 35.099953, 45.376991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.905155, 34.755894, 45.517712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106635, 0.336841, 0.935504,
		-0.923174, -0.382990, 0.032671,
		0.369294, -0.860149, 0.351803,
		39.015942, 34.497849, 45.623253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.316860, 34.879436, 45.764839>,  <38.757439, 35.099953, 45.376991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.316860, 34.879436, 45.764839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.632912, 34.682091, 45.910328>,  <38.822540, 34.563683, 45.997620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.632912, 34.682091, 45.910328>,  <38.316860, 34.879436, 45.764839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.632912, 34.682091, 45.910328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240922, 0.295658, 0.924415,
		-0.563611, -0.818032, 0.114744,
		0.790126, -0.493366, 0.363718,
		38.869949, 34.534081, 46.019444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.992111, 34.473763, 46.327614>,  <38.316860, 34.879436, 45.764839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.992111, 34.473763, 46.327614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.389690, 34.499054, 46.363548>,  <38.628239, 34.514229, 46.385109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.389690, 34.499054, 46.363548>,  <37.992111, 34.473763, 46.327614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.389690, 34.499054, 46.363548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102729, 0.245279, 0.963994,
		0.038921, -0.967388, 0.250291,
		0.993948, 0.063232, 0.089833,
		38.687874, 34.518024, 46.390499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.158493, 33.961121, 46.868607>,  <37.992111, 34.473763, 46.327614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.158493, 33.961121, 46.868607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.473785, 34.207226, 46.863899>,  <38.662960, 34.354889, 46.861073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.473785, 34.207226, 46.863899>,  <38.158493, 33.961121, 46.868607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.473785, 34.207226, 46.863899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204457, 0.279883, 0.938010,
		0.580417, -0.736965, 0.346408,
		0.788235, 0.615262, -0.011772,
		38.710255, 34.391804, 46.860367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.418217, 33.970188, 47.519020>,  <38.158493, 33.961121, 46.868607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.418217, 33.970188, 47.519020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.563972, 34.308743, 47.363663>,  <38.651424, 34.511875, 47.270447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.563972, 34.308743, 47.363663>,  <38.418217, 33.970188, 47.519020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.563972, 34.308743, 47.363663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179628, 0.473119, 0.862491,
		0.913758, -0.244516, 0.324435,
		0.364389, 0.846386, -0.388395,
		38.673290, 34.562660, 47.247143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.959797, 34.159325, 47.997284>,  <38.418217, 33.970188, 47.519020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.959797, 34.159325, 47.997284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.854816, 34.485550, 47.790993>,  <38.791828, 34.681286, 47.667217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.854816, 34.485550, 47.790993>,  <38.959797, 34.159325, 47.997284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.854816, 34.485550, 47.790993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085227, 0.551964, 0.829501,
		0.961173, 0.173752, -0.214373,
		-0.262454, 0.815565, -0.515725,
		38.776081, 34.730221, 47.636276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.406315, 34.714237, 48.277767>,  <38.959797, 34.159325, 47.997284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.406315, 34.714237, 48.277767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.106583, 34.886078, 48.076195>,  <38.926743, 34.989182, 47.955254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.106583, 34.886078, 48.076195>,  <39.406315, 34.714237, 48.277767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.106583, 34.886078, 48.076195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054866, 0.718102, 0.693772,
		0.659920, 0.547513, -0.514524,
		-0.749330, 0.429605, -0.503929,
		38.881783, 35.014961, 47.925014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.635761, 35.426796, 48.122890>,  <39.406315, 34.714237, 48.277767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.635761, 35.426796, 48.122890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.237354, 35.425747, 48.087254>,  <38.998310, 35.425117, 48.065872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.237354, 35.425747, 48.087254>,  <39.635761, 35.426796, 48.122890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.237354, 35.425747, 48.087254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058863, 0.769923, 0.635416,
		0.066929, 0.638131, -0.767013,
		-0.996020, -0.002621, -0.089092,
		38.938549, 35.424961, 48.060528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.398979, 36.115196, 47.846447>,  <39.635761, 35.426796, 48.122890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.398979, 36.115196, 47.846447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.107075, 35.954399, 48.067661>,  <38.931931, 35.857922, 48.200390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.107075, 35.954399, 48.067661>,  <39.398979, 36.115196, 47.846447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.107075, 35.954399, 48.067661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009915, 0.815026, 0.579340,
		-0.683631, 0.417296, -0.598759,
		-0.729760, -0.401992, 0.553039,
		38.888145, 35.833801, 48.233574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.945000, 36.635529, 47.855007>,  <39.398979, 36.115196, 47.846447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.945000, 36.635529, 47.855007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.829483, 36.397747, 48.155201>,  <38.760174, 36.255077, 48.335316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.829483, 36.397747, 48.155201>,  <38.945000, 36.635529, 47.855007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.829483, 36.397747, 48.155201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209577, 0.804125, 0.556291,
		-0.934171, 0.003369, -0.356810,
		-0.288794, -0.594450, 0.750485,
		38.742844, 36.219414, 48.380348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.326969, 36.962971, 48.075748>,  <38.945000, 36.635529, 47.855007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.326969, 36.962971, 48.075748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.452496, 36.740227, 48.383366>,  <38.527813, 36.606583, 48.567936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.452496, 36.740227, 48.383366>,  <38.326969, 36.962971, 48.075748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.452496, 36.740227, 48.383366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353797, 0.683052, 0.638958,
		-0.881106, -0.472601, 0.017339,
		0.313816, -0.556855, 0.769046,
		38.546642, 36.573170, 48.614079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.786037, 37.044117, 48.546978>,  <38.326969, 36.962971, 48.075748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.786037, 37.044117, 48.546978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.081100, 36.899471, 48.775047>,  <38.258137, 36.812683, 48.911888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.081100, 36.899471, 48.775047>,  <37.786037, 37.044117, 48.546978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.081100, 36.899471, 48.775047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284664, 0.599184, 0.748294,
		-0.612235, -0.714291, 0.339052,
		0.737655, -0.361616, 0.570175,
		38.302399, 36.790985, 48.946098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.456978, 36.914719, 49.214245>,  <37.786037, 37.044117, 48.546978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.456978, 36.914719, 49.214245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.850193, 36.917225, 49.287556>,  <38.086124, 36.918728, 49.331543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.850193, 36.917225, 49.287556>,  <37.456978, 36.914719, 49.214245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.850193, 36.917225, 49.287556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161741, 0.500637, 0.850413,
		-0.086425, -0.865635, 0.493161,
		0.983041, 0.006267, 0.183276,
		38.145107, 36.919106, 49.342537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.442921, 36.805531, 49.853359>,  <37.456978, 36.914719, 49.214245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.442921, 36.805531, 49.853359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.807297, 36.962662, 49.802959>,  <38.025921, 37.056942, 49.772720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.807297, 36.962662, 49.802959>,  <37.442921, 36.805531, 49.853359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.807297, 36.962662, 49.802959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068037, 0.444301, 0.893290,
		0.406888, -0.805162, 0.431458,
		0.910941, 0.392824, -0.126000,
		38.080578, 37.080509, 49.765160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.959438, 36.602837, 50.448872>,  <37.442921, 36.805531, 49.853359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.959438, 36.602837, 50.448872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.116390, 36.934006, 50.288578>,  <38.210564, 37.132706, 50.192402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.116390, 36.934006, 50.288578>,  <37.959438, 36.602837, 50.448872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.116390, 36.934006, 50.288578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047804, 0.453440, 0.890004,
		0.918559, -0.330065, 0.217499,
		0.392382, 0.827919, -0.400733,
		38.234104, 37.182381, 50.168358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.604378, 36.731049, 50.852196>,  <37.959438, 36.602837, 50.448872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.604378, 36.731049, 50.852196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.473125, 37.072395, 50.690163>,  <38.394375, 37.277203, 50.592941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.473125, 37.072395, 50.690163>,  <38.604378, 36.731049, 50.852196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.473125, 37.072395, 50.690163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020988, 0.422139, 0.906288,
		0.944399, 0.305884, -0.120606,
		-0.328132, 0.853366, -0.405087,
		38.374687, 37.328403, 50.568638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.898758, 37.184895, 51.239967>,  <38.604378, 36.731049, 50.852196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.898758, 37.184895, 51.239967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.635311, 37.432480, 51.068802>,  <38.477242, 37.581032, 50.966103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.635311, 37.432480, 51.068802>,  <38.898758, 37.184895, 51.239967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.635311, 37.432480, 51.068802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075925, 0.511109, 0.856156,
		0.748636, 0.596370, -0.289631,
		-0.658619, 0.618959, -0.427914,
		38.437725, 37.618168, 50.940426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.103279, 37.924152, 51.293465>,  <38.898758, 37.184895, 51.239967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.103279, 37.924152, 51.293465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.706005, 37.950851, 51.255260>,  <38.467640, 37.966869, 51.232338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.706005, 37.950851, 51.255260>,  <39.103279, 37.924152, 51.293465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.706005, 37.950851, 51.255260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020841, 0.704697, 0.709203,
		0.114644, 0.706362, -0.698505,
		-0.993188, 0.066749, -0.095510,
		38.408051, 37.970875, 51.226608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.878975, 38.654911, 51.146164>,  <39.103279, 37.924152, 51.293465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.878975, 38.654911, 51.146164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.599270, 38.440594, 51.335461>,  <38.431446, 38.312004, 51.449039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.599270, 38.440594, 51.335461>,  <38.878975, 38.654911, 51.146164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.599270, 38.440594, 51.335461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019019, 0.647819, 0.761557,
		-0.714614, 0.541528, -0.442804,
		-0.699261, -0.535797, 0.473240,
		38.389492, 38.279854, 51.477432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.959259, 38.914364, 50.350540>,  <38.878975, 38.654911, 51.146164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.959259, 38.914364, 50.350540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.957829, 39.314327, 50.345371>,  <38.956970, 39.554306, 50.342270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.957829, 39.314327, 50.345371>,  <38.959259, 38.914364, 50.350540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.957829, 39.314327, 50.345371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407247, -0.010350, -0.913260,
		-0.913311, -0.008526, -0.407173,
		-0.003572, 0.999910, -0.012925,
		38.956757, 39.614300, 50.341496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.460781, 39.209503, 49.768078>,  <38.959259, 38.914364, 50.350540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.460781, 39.209503, 49.768078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.762360, 39.455471, 49.860554>,  <38.943306, 39.603050, 49.916039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.762360, 39.455471, 49.860554>,  <38.460781, 39.209503, 49.768078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.762360, 39.455471, 49.860554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456203, -0.236851, -0.857776,
		-0.472704, 0.752183, -0.459099,
		0.753943, 0.614917, 0.231188,
		38.988541, 39.639946, 49.929909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.557022, 39.719521, 49.247318>,  <38.460781, 39.209503, 49.768078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.557022, 39.719521, 49.247318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.918892, 39.708172, 49.417385>,  <39.136013, 39.701363, 49.519424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.918892, 39.708172, 49.417385>,  <38.557022, 39.719521, 49.247318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.918892, 39.708172, 49.417385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417528, -0.140226, -0.897779,
		0.085088, 0.989713, -0.115013,
		0.904672, -0.028369, 0.425164,
		39.190292, 39.699661, 49.544933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.985176, 39.937988, 48.751793>,  <38.557022, 39.719521, 49.247318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.985176, 39.937988, 48.751793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.244137, 39.792656, 49.019783>,  <39.399513, 39.705456, 49.180576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.244137, 39.792656, 49.019783>,  <38.985176, 39.937988, 48.751793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.244137, 39.792656, 49.019783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668550, -0.151356, -0.728102,
		0.365947, 0.919284, 0.144917,
		0.647398, -0.363331, 0.669975,
		39.438354, 39.683659, 49.220776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.723442, 40.289368, 48.639938>,  <38.985176, 39.937988, 48.751793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.723442, 40.289368, 48.639938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.785500, 39.947136, 48.837486>,  <39.822735, 39.741795, 48.956017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.785500, 39.947136, 48.837486>,  <39.723442, 40.289368, 48.639938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.785500, 39.947136, 48.837486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698310, -0.258641, -0.667434,
		0.698781, 0.448422, 0.557336,
		0.155142, -0.855583, 0.493871,
		39.832043, 39.690460, 48.985649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.389164, 40.078335, 48.453495>,  <39.723442, 40.289368, 48.639938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.389164, 40.078335, 48.453495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.263718, 39.735210, 48.616371>,  <40.188450, 39.529335, 48.714096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.263718, 39.735210, 48.616371>,  <40.389164, 40.078335, 48.453495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.263718, 39.735210, 48.616371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629323, -0.508886, -0.587356,
		0.711053, 0.072047, 0.699437,
		-0.313617, -0.857814, 0.407186,
		40.169632, 39.477867, 48.738525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.002884, 39.604710, 48.395790>,  <40.389164, 40.078335, 48.453495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.002884, 39.604710, 48.395790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.703003, 39.346661, 48.454800>,  <40.523075, 39.191830, 48.490208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.703003, 39.346661, 48.454800>,  <41.002884, 39.604710, 48.395790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.703003, 39.346661, 48.454800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271959, -0.503574, -0.820031,
		0.603312, -0.574658, 0.552977,
		-0.749702, -0.645122, 0.147529,
		40.478092, 39.153126, 48.499058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.344807, 38.966972, 48.374382>,  <41.002884, 39.604710, 48.395790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.344807, 38.966972, 48.374382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.952995, 38.924500, 48.305977>,  <40.717907, 38.899017, 48.264935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.952995, 38.924500, 48.305977>,  <41.344807, 38.966972, 48.374382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.952995, 38.924500, 48.305977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199776, -0.408695, -0.890538,
		0.024670, -0.906473, 0.421543,
		-0.979531, -0.106184, -0.171009,
		40.659138, 38.892643, 48.254673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.271156, 38.291626, 48.144329>,  <41.344807, 38.966972, 48.374382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.271156, 38.291626, 48.144329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.934929, 38.483120, 48.042931>,  <40.733192, 38.598015, 47.982090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.934929, 38.483120, 48.042931>,  <41.271156, 38.291626, 48.144329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.934929, 38.483120, 48.042931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066138, -0.373768, -0.925161,
		-0.537654, -0.794426, 0.282515,
		-0.840568, 0.478732, -0.253499,
		40.682758, 38.626740, 47.966881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.888985, 37.763016, 47.793816>,  <41.271156, 38.291626, 48.144329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.888985, 37.763016, 47.793816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.740055, 38.116085, 47.679092>,  <40.650696, 38.327927, 47.610260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.740055, 38.116085, 47.679092>,  <40.888985, 37.763016, 47.793816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.740055, 38.116085, 47.679092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094765, -0.343564, -0.934336,
		-0.923251, -0.320699, 0.211564,
		-0.372326, 0.882675, -0.286805,
		40.628357, 38.380886, 47.593052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.161247, 37.715797, 47.409264>,  <40.888985, 37.763016, 47.793816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.161247, 37.715797, 47.409264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.363724, 38.039726, 47.290630>,  <40.485210, 38.234081, 47.219452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.363724, 38.039726, 47.290630>,  <40.161247, 37.715797, 47.409264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.363724, 38.039726, 47.290630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296591, -0.159456, -0.941598,
		-0.809817, 0.564594, 0.159470,
		0.506192, 0.809820, -0.296584,
		40.515583, 38.282673, 47.201656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.728889, 37.886501, 46.914951>,  <40.161247, 37.715797, 47.409264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.728889, 37.886501, 46.914951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.051064, 38.096523, 46.804974>,  <40.244366, 38.222538, 46.738987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.051064, 38.096523, 46.804974>,  <39.728889, 37.886501, 46.914951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.051064, 38.096523, 46.804974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179107, -0.226588, -0.957381,
		-0.564976, 0.820351, -0.088460,
		0.805433, 0.525053, -0.274948,
		40.292694, 38.254040, 46.722488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.634323, 38.139736, 46.171593>,  <39.728889, 37.886501, 46.914951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.634323, 38.139736, 46.171593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.027771, 38.148315, 46.243176>,  <40.263840, 38.153461, 46.286125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.027771, 38.148315, 46.243176>,  <39.634323, 38.139736, 46.171593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.027771, 38.148315, 46.243176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176985, -0.302807, -0.936474,
		0.034104, 0.952810, -0.301644,
		0.983622, 0.021449, 0.178960,
		40.322857, 38.154751, 46.296864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.977055, 38.501057, 45.682205>,  <39.634323, 38.139736, 46.171593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.977055, 38.501057, 45.682205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.288181, 38.292625, 45.822762>,  <40.474857, 38.167568, 45.907097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.288181, 38.292625, 45.822762>,  <39.977055, 38.501057, 45.682205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.288181, 38.292625, 45.822762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299257, -0.184597, -0.936146,
		0.552668, 0.833310, 0.012351,
		0.777820, -0.521074, 0.351395,
		40.521526, 38.136303, 45.928181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.522720, 38.749985, 45.239273>,  <39.977055, 38.501057, 45.682205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.522720, 38.749985, 45.239273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.628021, 38.410728, 45.423168>,  <40.691200, 38.207176, 45.533504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.628021, 38.410728, 45.423168>,  <40.522720, 38.749985, 45.239273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.628021, 38.410728, 45.423168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213215, -0.413611, -0.885136,
		0.940872, 0.331034, 0.071954,
		0.263249, -0.848141, 0.459736,
		40.706997, 38.156284, 45.561089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.135525, 38.572441, 45.000744>,  <40.522720, 38.749985, 45.239273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.135525, 38.572441, 45.000744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.953674, 38.235668, 45.117001>,  <40.844566, 38.033604, 45.186756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.953674, 38.235668, 45.117001>,  <41.135525, 38.572441, 45.000744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.953674, 38.235668, 45.117001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110245, -0.376998, -0.919630,
		0.883835, -0.386043, 0.264211,
		-0.454624, -0.841928, 0.290645,
		40.817287, 37.983089, 45.204193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.516582, 37.967072, 44.790806>,  <41.135525, 38.572441, 45.000744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.516582, 37.967072, 44.790806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.157528, 37.817104, 44.883484>,  <40.942093, 37.727123, 44.939091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.157528, 37.817104, 44.883484>,  <41.516582, 37.967072, 44.790806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.157528, 37.817104, 44.883484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000095, -0.525872, -0.850564,
		0.440733, -0.763476, 0.472078,
		-0.897638, -0.374916, 0.231697,
		40.888237, 37.704628, 44.952991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.648399, 37.283047, 44.523853>,  <41.516582, 37.967072, 44.790806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.648399, 37.283047, 44.523853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.259781, 37.344448, 44.595997>,  <41.026608, 37.381290, 44.639282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.259781, 37.344448, 44.595997>,  <41.648399, 37.283047, 44.523853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.259781, 37.344448, 44.595997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236690, -0.602341, -0.762340,
		-0.008383, -0.783340, 0.621537,
		-0.971549, 0.153503, 0.180359,
		40.968315, 37.390499, 44.650105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.292210, 36.623657, 44.629002>,  <41.648399, 37.283047, 44.523853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.292210, 36.623657, 44.629002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.004154, 36.877949, 44.517830>,  <40.831322, 37.030525, 44.451126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.004154, 36.877949, 44.517830>,  <41.292210, 36.623657, 44.629002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.004154, 36.877949, 44.517830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311203, -0.653978, -0.689540,
		-0.620120, -0.410074, 0.668798,
		-0.720141, 0.635730, -0.277929,
		40.788113, 37.068668, 44.434452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.533665, 36.291912, 44.647125>,  <41.292210, 36.623657, 44.629002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.533665, 36.291912, 44.647125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.619938, 36.570942, 44.373814>,  <40.671703, 36.738358, 44.209827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.619938, 36.570942, 44.373814>,  <40.533665, 36.291912, 44.647125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.619938, 36.570942, 44.373814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258464, -0.634009, -0.728855,
		-0.941635, 0.333808, 0.043550,
		0.215686, 0.697571, -0.683282,
		40.684643, 36.780212, 44.168831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.187397, 36.050831, 44.021542>,  <40.533665, 36.291912, 44.647125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.187397, 36.050831, 44.021542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.370537, 36.376839, 43.879490>,  <40.480419, 36.572441, 43.794258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.370537, 36.376839, 43.879490>,  <40.187397, 36.050831, 44.021542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.370537, 36.376839, 43.879490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064336, -0.368040, -0.927582,
		-0.886698, 0.447542, -0.116073,
		0.457851, 0.815017, -0.355133,
		40.507893, 36.621346, 43.772949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.800621, 36.232063, 43.578152>,  <40.187397, 36.050831, 44.021542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.800621, 36.232063, 43.578152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.143147, 36.402657, 43.461643>,  <40.348663, 36.505013, 43.391739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.143147, 36.402657, 43.461643>,  <39.800621, 36.232063, 43.578152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.143147, 36.402657, 43.461643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118641, -0.386457, -0.914645,
		-0.502645, 0.817779, -0.280330,
		0.856313, 0.426483, -0.291273,
		40.400040, 36.530602, 43.374260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.675037, 36.445198, 42.920414>,  <39.800621, 36.232063, 43.578152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.675037, 36.445198, 42.920414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.072845, 36.482185, 42.939919>,  <40.311531, 36.504379, 42.951622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.072845, 36.482185, 42.939919>,  <39.675037, 36.445198, 42.920414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.072845, 36.482185, 42.939919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075182, -0.308594, -0.948218,
		-0.072637, 0.946688, -0.313856,
		0.994521, 0.092472, 0.048758,
		40.371201, 36.509926, 42.954548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.886036, 36.711246, 42.299606>,  <39.675037, 36.445198, 42.920414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.886036, 36.711246, 42.299606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.222778, 36.543739, 42.435791>,  <40.424824, 36.443233, 42.517502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.222778, 36.543739, 42.435791>,  <39.886036, 36.711246, 42.299606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.222778, 36.543739, 42.435791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168136, -0.395942, -0.902751,
		0.512847, 0.817229, -0.262916,
		0.841854, -0.418767, 0.340463,
		40.475334, 36.418110, 42.537930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.342274, 36.828609, 41.808773>,  <39.886036, 36.711246, 42.299606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.342274, 36.828609, 41.808773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.484692, 36.494091, 41.975548>,  <40.570141, 36.293381, 42.075611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.484692, 36.494091, 41.975548>,  <40.342274, 36.828609, 41.808773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.484692, 36.494091, 41.975548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032926, -0.457127, -0.888792,
		0.933889, 0.302721, -0.190294,
		0.356045, -0.836298, 0.416938,
		40.591503, 36.243202, 42.100628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.753002, 36.554131, 41.341797>,  <40.342274, 36.828609, 41.808773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.753002, 36.554131, 41.341797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.700069, 36.223766, 41.561016>,  <40.668308, 36.025547, 41.692547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.700069, 36.223766, 41.561016>,  <40.753002, 36.554131, 41.341797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.700069, 36.223766, 41.561016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002042, -0.552678, -0.833393,
		0.991203, -0.111405, 0.071452,
		-0.132334, -0.825915, 0.548043,
		40.660370, 35.975990, 41.725430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.274521, 36.099422, 41.090755>,  <40.753002, 36.554131, 41.341797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.274521, 36.099422, 41.090755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.989777, 35.890171, 41.278198>,  <40.818932, 35.764622, 41.390663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.989777, 35.890171, 41.278198>,  <41.274521, 36.099422, 41.090755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.989777, 35.890171, 41.278198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017204, -0.680016, -0.732996,
		0.702114, -0.513726, 0.493074,
		-0.711857, -0.523129, 0.468610,
		40.776218, 35.733231, 41.418781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.555687, 35.395744, 41.129192>,  <41.274521, 36.099422, 41.090755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.555687, 35.395744, 41.129192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.156334, 35.373196, 41.132370>,  <40.916721, 35.359665, 41.134277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.156334, 35.373196, 41.132370>,  <41.555687, 35.395744, 41.129192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.156334, 35.373196, 41.132370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034672, -0.712822, -0.700488,
		0.045151, -0.699076, 0.713620,
		-0.998378, -0.056371, 0.007946,
		40.856819, 35.356285, 41.134754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.482857, 34.699566, 40.920246>,  <41.555687, 35.395744, 41.129192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.482857, 34.699566, 40.920246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.117222, 34.855728, 40.876369>,  <40.897842, 34.949425, 40.850044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.117222, 34.855728, 40.876369>,  <41.482857, 34.699566, 40.920246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.117222, 34.855728, 40.876369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069463, -0.417240, -0.906138,
		-0.399520, -0.820671, 0.408512,
		-0.914089, 0.390397, -0.109689,
		40.842995, 34.972847, 40.843460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.109150, 34.144253, 40.662148>,  <41.482857, 34.699566, 40.920246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.109150, 34.144253, 40.662148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.881775, 34.456917, 40.559479>,  <40.745350, 34.644516, 40.497875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.881775, 34.456917, 40.559479>,  <41.109150, 34.144253, 40.662148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.881775, 34.456917, 40.559479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151897, -0.406332, -0.901011,
		-0.808580, -0.473184, 0.349708,
		-0.568442, 0.781660, -0.256676,
		40.711243, 34.691414, 40.482475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.442070, 33.902130, 40.278885>,  <41.109150, 34.144253, 40.662148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.442070, 33.902130, 40.278885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.541229, 34.276833, 40.180058>,  <40.600727, 34.501652, 40.120762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.541229, 34.276833, 40.180058>,  <40.442070, 33.902130, 40.278885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.541229, 34.276833, 40.180058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093242, -0.230771, -0.968530,
		-0.964288, 0.263135, 0.030137,
		0.247900, 0.936752, -0.247065,
		40.615601, 34.557858, 40.105938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.146584, 34.030918, 39.603825>,  <40.442070, 33.902130, 40.278885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.146584, 34.030918, 39.603825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.384724, 34.350903, 39.633785>,  <40.527607, 34.542892, 39.651760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.384724, 34.350903, 39.633785>,  <40.146584, 34.030918, 39.603825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.384724, 34.350903, 39.633785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103419, 0.016145, -0.994507,
		-0.796779, 0.599830, -0.073119,
		0.595355, 0.799965, 0.074898,
		40.563332, 34.590893, 39.656254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.881020, 34.576828, 39.272945>,  <40.146584, 34.030918, 39.603825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.881020, 34.576828, 39.272945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.264431, 34.687199, 39.244389>,  <40.494476, 34.753422, 39.227257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.264431, 34.687199, 39.244389>,  <39.881020, 34.576828, 39.272945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.264431, 34.687199, 39.244389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073455, -0.002852, -0.997294,
		-0.275384, 0.961174, 0.017535,
		0.958524, 0.275927, -0.071389,
		40.551987, 34.769978, 39.222973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.004639, 35.018864, 38.757671>,  <39.881020, 34.576828, 39.272945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.004639, 35.018864, 38.757671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.397625, 34.948841, 38.783360>,  <40.633415, 34.906826, 38.798771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.397625, 34.948841, 38.783360>,  <40.004639, 35.018864, 38.757671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.397625, 34.948841, 38.783360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058004, -0.040410, -0.997498,
		0.177216, 0.983728, -0.029547,
		0.982461, -0.175058, 0.064221,
		40.692364, 34.896324, 38.802628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.299774, 35.542122, 38.303822>,  <40.004639, 35.018864, 38.757671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.299774, 35.542122, 38.303822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.599583, 35.288227, 38.379002>,  <40.779469, 35.135891, 38.424110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.599583, 35.288227, 38.379002>,  <40.299774, 35.542122, 38.303822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.599583, 35.288227, 38.379002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268648, 0.032172, -0.962701,
		0.605013, 0.772060, 0.194634,
		0.749524, -0.634735, 0.187948,
		40.824440, 35.097805, 38.435387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.004524, 35.887249, 38.008476>,  <40.299774, 35.542122, 38.303822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.004524, 35.887249, 38.008476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.028790, 35.489582, 38.044159>,  <41.043350, 35.250984, 38.065567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.028790, 35.489582, 38.044159>,  <41.004524, 35.887249, 38.008476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.028790, 35.489582, 38.044159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278229, -0.068984, -0.958034,
		0.958597, 0.082939, 0.272420,
		0.060666, -0.994164, 0.089204,
		41.046989, 35.191334, 38.070919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.686268, 35.732239, 37.679001>,  <41.004524, 35.887249, 38.008476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.686268, 35.732239, 37.679001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.473988, 35.393288, 37.685886>,  <41.346619, 35.189915, 37.690018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.473988, 35.393288, 37.685886>,  <41.686268, 35.732239, 37.679001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.473988, 35.393288, 37.685886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174039, -0.128826, -0.976276,
		0.829496, -0.515118, 0.215846,
		-0.530704, -0.847382, 0.017210,
		41.314777, 35.139072, 37.691048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.073265, 35.430252, 37.226334>,  <41.686268, 35.732239, 37.679001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.073265, 35.430252, 37.226334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.747513, 35.199532, 37.251911>,  <41.552063, 35.061100, 37.267258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.747513, 35.199532, 37.251911>,  <42.073265, 35.430252, 37.226334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.747513, 35.199532, 37.251911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008507, -0.122043, -0.992488,
		0.580272, -0.807717, 0.104296,
		-0.814379, -0.576800, 0.063947,
		41.503201, 35.026493, 37.271095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.211617, 34.765347, 37.014851>,  <42.073265, 35.430252, 37.226334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.211617, 34.765347, 37.014851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.824699, 34.802166, 36.920303>,  <41.592548, 34.824257, 36.863575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.824699, 34.802166, 36.920303>,  <42.211617, 34.765347, 37.014851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.824699, 34.802166, 36.920303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228709, -0.086478, -0.969646,
		-0.109702, -0.991991, 0.062596,
		-0.967294, 0.092056, -0.236364,
		41.534512, 34.829781, 36.849396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.000694, 34.291733, 36.453121>,  <42.211617, 34.765347, 37.014851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.000694, 34.291733, 36.453121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.746361, 34.600422, 36.448074>,  <41.593761, 34.785637, 36.445045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.746361, 34.600422, 36.448074>,  <42.000694, 34.291733, 36.453121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.746361, 34.600422, 36.448074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147763, 0.105670, -0.983362,
		-0.757551, -0.627117, -0.181220,
		-0.635832, 0.771724, -0.012614,
		41.555611, 34.831940, 36.444290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.114986, 34.668152, 35.825600>,  <42.000694, 34.291733, 36.453121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.114986, 34.668152, 35.825600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.451004, 34.546089, 36.005024>,  <42.652615, 34.472851, 36.112679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.451004, 34.546089, 36.005024>,  <42.114986, 34.668152, 35.825600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.451004, 34.546089, 36.005024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495727, 0.095824, -0.863176,
		0.220418, 0.947470, 0.231768,
		0.840042, -0.305153, 0.448565,
		42.703018, 34.454544, 36.139595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.638195, 35.139500, 35.553726>,  <42.114986, 34.668152, 35.825600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.638195, 35.139500, 35.553726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.841106, 34.825909, 35.696861>,  <42.962852, 34.637756, 35.782742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.841106, 34.825909, 35.696861>,  <42.638195, 35.139500, 35.553726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.841106, 34.825909, 35.696861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569310, -0.006863, -0.822095,
		0.646957, 0.620755, 0.442843,
		0.507280, -0.783975, 0.357842,
		42.993290, 34.590717, 35.804214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.343803, 35.227394, 35.664841>,  <42.638195, 35.139500, 35.553726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.343803, 35.227394, 35.664841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.301598, 34.845711, 35.552876>,  <43.276276, 34.616699, 35.485699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.301598, 34.845711, 35.552876>,  <43.343803, 35.227394, 35.664841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.301598, 34.845711, 35.552876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445500, 0.206296, -0.871190,
		0.889043, -0.216621, 0.403334,
		-0.105512, -0.954210, -0.279910,
		43.269943, 34.559448, 35.468903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.873531, 35.208099, 35.193012>,  <43.343803, 35.227394, 35.664841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.873531, 35.208099, 35.193012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.609936, 34.917431, 35.115364>,  <43.451778, 34.743031, 35.068775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.609936, 34.917431, 35.115364>,  <43.873531, 35.208099, 35.193012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.609936, 34.917431, 35.115364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202197, 0.077438, -0.976279,
		0.724465, -0.682608, 0.095899,
		-0.658990, -0.726670, -0.194122,
		43.412239, 34.699429, 35.057129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.084084, 34.516415, 34.855659>,  <43.873531, 35.208099, 35.193012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.084084, 34.516415, 34.855659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.724442, 34.639652, 34.731281>,  <43.508656, 34.713593, 34.656654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.724442, 34.639652, 34.731281>,  <44.084084, 34.516415, 34.855659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.724442, 34.639652, 34.731281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352941, 0.090079, -0.931300,
		-0.258915, -0.947083, -0.189728,
		-0.899109, 0.308091, -0.310941,
		43.454708, 34.732079, 34.638000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.772415, 34.084805, 34.327049>,  <44.084084, 34.516415, 34.855659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.772415, 34.084805, 34.327049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.574455, 34.426067, 34.261078>,  <43.455681, 34.630825, 34.221497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.574455, 34.426067, 34.261078>,  <43.772415, 34.084805, 34.327049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.574455, 34.426067, 34.261078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146617, -0.105094, -0.983595,
		-0.856494, -0.510958, -0.073076,
		-0.494896, 0.853157, -0.164927,
		43.425987, 34.682014, 34.211601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.295101, 33.955914, 33.800053>,  <43.772415, 34.084805, 34.327049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.295101, 33.955914, 33.800053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.424213, 34.333961, 33.820339>,  <43.501678, 34.560791, 33.832512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.424213, 34.333961, 33.820339>,  <43.295101, 33.955914, 33.800053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.424213, 34.333961, 33.820339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285632, -0.046183, -0.957226,
		-0.902347, 0.323456, -0.284862,
		0.322776, 0.945115, 0.050717,
		43.521046, 34.617496, 33.835556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.979496, 34.314991, 33.168533>,  <43.295101, 33.955914, 33.800053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.979496, 34.314991, 33.168533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.328381, 34.493889, 33.247749>,  <43.537712, 34.601227, 33.295280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.328381, 34.493889, 33.247749>,  <42.979496, 34.314991, 33.168533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.328381, 34.493889, 33.247749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271091, -0.104992, -0.956810,
		-0.407136, 0.888228, -0.212819,
		0.872210, 0.447245, 0.198044,
		43.590042, 34.628063, 33.307163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.086834, 34.837143, 32.734177>,  <42.979496, 34.314991, 33.168533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.086834, 34.837143, 32.734177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.461430, 34.760860, 32.851894>,  <43.686188, 34.715092, 32.922527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.461430, 34.760860, 32.851894>,  <43.086834, 34.837143, 32.734177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.461430, 34.760860, 32.851894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281489, -0.091729, -0.955170,
		0.209151, 0.977352, -0.032223,
		0.936493, -0.190704, 0.294299,
		43.742378, 34.703648, 32.940186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.431194, 34.891647, 32.111160>,  <43.086834, 34.837143, 32.734177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.431194, 34.891647, 32.111160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.746273, 34.779282, 32.330479>,  <43.935318, 34.711861, 32.462070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.746273, 34.779282, 32.330479>,  <43.431194, 34.891647, 32.111160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.746273, 34.779282, 32.330479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574705, 0.014446, -0.818233,
		0.221932, 0.959624, 0.172821,
		0.787693, -0.280913, 0.548295,
		43.982582, 34.695007, 32.494968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.990982, 35.344387, 31.966511>,  <43.431194, 34.891647, 32.111160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.990982, 35.344387, 31.966511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.106590, 34.979046, 32.081226>,  <44.175957, 34.759842, 32.150055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.106590, 34.979046, 32.081226>,  <43.990982, 35.344387, 31.966511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.106590, 34.979046, 32.081226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369397, -0.169970, -0.913595,
		0.883183, 0.369987, 0.288266,
		0.289022, -0.913356, 0.286787,
		44.193298, 34.705040, 32.167263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.615421, 35.164684, 31.611000>,  <43.990982, 35.344387, 31.966511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.615421, 35.164684, 31.611000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.477287, 34.807194, 31.725540>,  <44.394409, 34.592701, 31.794264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.477287, 34.807194, 31.725540>,  <44.615421, 35.164684, 31.611000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.477287, 34.807194, 31.725540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015232, -0.310419, -0.950478,
		0.938357, -0.323870, 0.120812,
		-0.345333, -0.893727, 0.286351,
		44.373688, 34.539074, 31.811445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.061340, 34.774017, 31.373432>,  <44.615421, 35.164684, 31.611000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.061340, 34.774017, 31.373432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.734280, 34.549038, 31.422586>,  <44.538044, 34.414051, 31.452080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.734280, 34.549038, 31.422586>,  <45.061340, 34.774017, 31.373432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.734280, 34.549038, 31.422586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023725, -0.246188, -0.968932,
		0.575228, -0.789330, 0.214639,
		-0.817649, -0.562449, 0.122887,
		44.488983, 34.380302, 31.459452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.235249, 34.136105, 31.052164>,  <45.061340, 34.774017, 31.373432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.235249, 34.136105, 31.052164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.836922, 34.140320, 31.088465>,  <44.597927, 34.142849, 31.110245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.836922, 34.140320, 31.088465>,  <45.235249, 34.136105, 31.052164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.836922, 34.140320, 31.088465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090632, -0.239028, -0.966774,
		0.011508, -0.970955, 0.238983,
		-0.995818, 0.010533, 0.090750,
		44.538177, 34.143478, 31.115690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.999752, 33.514721, 30.728226>,  <45.235249, 34.136105, 31.052164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.999752, 33.514721, 30.728226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.667736, 33.734402, 30.689423>,  <44.468525, 33.866211, 30.666140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.667736, 33.734402, 30.689423>,  <44.999752, 33.514721, 30.728226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.667736, 33.734402, 30.689423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099245, -0.316627, -0.943344,
		-0.548798, -0.773388, 0.317319,
		-0.830043, 0.549198, -0.097010,
		44.418724, 33.899162, 30.660320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.522518, 33.197769, 30.417877>,  <44.999752, 33.514721, 30.728226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.522518, 33.197769, 30.417877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.406414, 33.572578, 30.340176>,  <44.336754, 33.797466, 30.293554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.406414, 33.572578, 30.340176>,  <44.522518, 33.197769, 30.417877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.406414, 33.572578, 30.340176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015775, -0.207650, -0.978076,
		-0.956819, -0.280828, 0.075053,
		-0.290256, 0.937026, -0.194253,
		44.319336, 33.853687, 30.281900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.991520, 33.152931, 29.919258>,  <44.522518, 33.197769, 30.417877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.991520, 33.152931, 29.919258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.127556, 33.525002, 29.863966>,  <44.209175, 33.748245, 29.830791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.127556, 33.525002, 29.863966>,  <43.991520, 33.152931, 29.919258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.127556, 33.525002, 29.863966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099534, -0.110562, -0.988873,
		-0.935112, 0.350061, 0.054983,
		0.340087, 0.930179, -0.138231,
		44.229584, 33.804054, 29.822496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.586914, 33.348122, 29.351278>,  <43.991520, 33.152931, 29.919258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.586914, 33.348122, 29.351278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.879623, 33.618828, 29.383537>,  <44.055248, 33.781250, 29.402893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.879623, 33.618828, 29.383537>,  <43.586914, 33.348122, 29.351278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.879623, 33.618828, 29.383537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089425, 0.021969, -0.995751,
		-0.675660, 0.735873, -0.044444,
		0.731770, 0.676764, 0.080649,
		44.099155, 33.821857, 29.407732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.384007, 33.933464, 28.949476>,  <43.586914, 33.348122, 29.351278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.384007, 33.933464, 28.949476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.781292, 33.964024, 28.984550>,  <44.019665, 33.982357, 29.005594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.781292, 33.964024, 28.984550>,  <43.384007, 33.933464, 28.949476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.781292, 33.964024, 28.984550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064975, 0.260813, -0.963200,
		-0.096454, 0.962362, 0.254080,
		0.993214, 0.076395, 0.087686,
		44.079258, 33.986942, 29.010857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.529907, 34.532066, 28.578320>,  <43.384007, 33.933464, 28.949476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.529907, 34.532066, 28.578320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.887341, 34.352943, 28.590866>,  <44.101799, 34.245472, 28.598394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.887341, 34.352943, 28.590866>,  <43.529907, 34.532066, 28.578320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.887341, 34.352943, 28.590866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198124, 0.330718, -0.922698,
		0.402813, 0.830721, 0.384244,
		0.893582, -0.447803, 0.031369,
		44.155415, 34.218601, 28.600277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.058239, 35.027966, 28.353769>,  <43.529907, 34.532066, 28.578320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.058239, 35.027966, 28.353769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.229046, 34.675312, 28.273394>,  <44.331532, 34.463718, 28.225168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.229046, 34.675312, 28.273394>,  <44.058239, 35.027966, 28.353769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.229046, 34.675312, 28.273394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136747, 0.282624, -0.949433,
		0.893844, 0.377945, 0.241246,
		0.427016, -0.881635, -0.200939,
		44.357151, 34.410820, 28.213112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.618401, 35.172199, 27.901070>,  <44.058239, 35.027966, 28.353769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.618401, 35.172199, 27.901070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.543530, 34.783287, 27.845022>,  <44.498608, 34.549938, 27.811394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.543530, 34.783287, 27.845022>,  <44.618401, 35.172199, 27.901070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.543530, 34.783287, 27.845022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141318, 0.114502, -0.983320,
		0.972107, -0.203859, 0.115968,
		-0.187180, -0.972281, -0.140117,
		44.487377, 34.491604, 27.802986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.233555, 34.934174, 27.612097>,  <44.618401, 35.172199, 27.901070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.233555, 34.934174, 27.612097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.959213, 34.658443, 27.518774>,  <44.794609, 34.493004, 27.462780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.959213, 34.658443, 27.518774>,  <45.233555, 34.934174, 27.612097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.959213, 34.658443, 27.518774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282594, 0.043159, -0.958268,
		0.670628, -0.723165, 0.165198,
		-0.685856, -0.689325, -0.233306,
		44.753456, 34.451645, 27.448782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.504688, 34.552925, 27.063742>,  <45.233555, 34.934174, 27.612097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.504688, 34.552925, 27.063742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.121368, 34.441624, 27.037701>,  <44.891376, 34.374844, 27.022076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.121368, 34.441624, 27.037701>,  <45.504688, 34.552925, 27.063742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.121368, 34.441624, 27.037701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069014, -0.004266, -0.997607,
		0.277309, -0.960498, 0.023291,
		-0.958299, -0.278253, -0.065104,
		44.833878, 34.358147, 27.018169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.502579, 33.901138, 26.738575>,  <45.504688, 34.552925, 27.063742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.502579, 33.901138, 26.738575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.142071, 34.063782, 26.678740>,  <44.925766, 34.161369, 26.642839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.142071, 34.063782, 26.678740>,  <45.502579, 33.901138, 26.738575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.142071, 34.063782, 26.678740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051606, -0.242055, -0.968889,
		-0.430169, -0.880953, 0.197174,
		-0.901272, 0.406611, -0.149587,
		44.871689, 34.185764, 26.633863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.204239, 33.383591, 26.354349>,  <45.502579, 33.901138, 26.738575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.204239, 33.383591, 26.354349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.982922, 33.711449, 26.294941>,  <44.850132, 33.908161, 26.259296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.982922, 33.711449, 26.294941>,  <45.204239, 33.383591, 26.354349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.982922, 33.711449, 26.294941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115501, -0.252062, -0.960794,
		-0.824943, -0.514442, 0.234132,
		-0.553289, 0.819643, -0.148518,
		44.816936, 33.957340, 26.250385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.747620, 33.242092, 25.840845>,  <45.204239, 33.383591, 26.354349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.747620, 33.242092, 25.840845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.755093, 33.641590, 25.822245>,  <44.759575, 33.881290, 25.811085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.755093, 33.641590, 25.822245>,  <44.747620, 33.242092, 25.840845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.755093, 33.641590, 25.822245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123347, -0.048454, -0.991180,
		-0.992188, 0.012777, -0.124097,
		0.018678, 0.998744, -0.046500,
		44.760696, 33.941212, 25.808294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.167835, 33.528271, 25.417768>,  <44.747620, 33.242092, 25.840845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.167835, 33.528271, 25.417768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.445683, 33.816021, 25.417389>,  <44.612392, 33.988670, 25.417162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.445683, 33.816021, 25.417389>,  <44.167835, 33.528271, 25.417768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.445683, 33.816021, 25.417389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016443, 0.014560, -0.999759,
		-0.719190, 0.694467, 0.021943,
		0.694619, 0.719377, -0.000948,
		44.654068, 34.031834, 25.417105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.922714, 34.134377, 24.909885>,  <44.167835, 33.528271, 25.417768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.922714, 34.134377, 24.909885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.318672, 34.125381, 24.965891>,  <44.556248, 34.119984, 24.999495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.318672, 34.125381, 24.965891>,  <43.922714, 34.134377, 24.909885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.318672, 34.125381, 24.965891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141439, 0.085490, -0.986249,
		0.010206, 0.996085, 0.087806,
		0.989894, -0.022485, 0.140012,
		44.615639, 34.118637, 25.007895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.321400, 34.512085, 24.483454>,  <43.922714, 34.134377, 24.909885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.321400, 34.512085, 24.483454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.619431, 34.266453, 24.587585>,  <44.798248, 34.119076, 24.650064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.619431, 34.266453, 24.587585>,  <44.321400, 34.512085, 24.483454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.619431, 34.266453, 24.587585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381840, 0.072693, -0.921365,
		0.546866, 0.785890, 0.288642,
		0.745074, -0.614078, 0.260331,
		44.842953, 34.082230, 24.665686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.875961, 34.661095, 24.137707>,  <44.321400, 34.512085, 24.483454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.875961, 34.661095, 24.137707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.987213, 34.292149, 24.244955>,  <45.053963, 34.070782, 24.309303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.987213, 34.292149, 24.244955>,  <44.875961, 34.661095, 24.137707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.987213, 34.292149, 24.244955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609830, -0.046101, -0.791190,
		0.742126, 0.383561, 0.549663,
		0.278130, -0.922364, 0.268119,
		45.070652, 34.015438, 24.325392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.570923, 34.723721, 24.134291>,  <44.875961, 34.661095, 24.137707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.570923, 34.723721, 24.134291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.489918, 34.332115, 24.125118>,  <45.441315, 34.097153, 24.119616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.489918, 34.332115, 24.125118>,  <45.570923, 34.723721, 24.134291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.489918, 34.332115, 24.125118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798043, -0.151416, -0.583266,
		0.567552, -0.136418, 0.811957,
		-0.202512, -0.979011, -0.022931,
		45.429165, 34.038410, 24.118238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.123188, 34.348316, 24.382469>,  <45.570923, 34.723721, 24.134291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.123188, 34.348316, 24.382469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.910458, 34.167107, 24.096272>,  <45.782818, 34.058380, 23.924553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.910458, 34.167107, 24.096272>,  <46.123188, 34.348316, 24.382469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.910458, 34.167107, 24.096272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823449, -0.079374, -0.561811,
		0.197720, -0.887960, 0.415251,
		-0.531826, -0.453019, -0.715496,
		45.750908, 34.031200, 23.881622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.359303, 35.079769, 24.189308>,  <46.123188, 34.348316, 24.382469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.359303, 35.079769, 24.189308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.755341, 35.126755, 24.158571>,  <46.992966, 35.154945, 24.140129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.755341, 35.126755, 24.158571>,  <46.359303, 35.079769, 24.189308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.755341, 35.126755, 24.158571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001824, 0.558169, 0.829725,
		0.140354, -0.821370, 0.552857,
		0.990100, 0.117464, -0.076843,
		47.052372, 35.161995, 24.135519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.645996, 34.737900, 24.691223>,  <46.359303, 35.079769, 24.189308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.645996, 34.737900, 24.691223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.845768, 35.065102, 24.577070>,  <46.965630, 35.261421, 24.508579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.845768, 35.065102, 24.577070>,  <46.645996, 34.737900, 24.691223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.845768, 35.065102, 24.577070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044813, 0.304572, 0.951435,
		0.865196, -0.487962, 0.115454,
		0.499428, 0.818003, -0.285381,
		46.995598, 35.310501, 24.491455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.316082, 34.713348, 25.090662>,  <46.645996, 34.737900, 24.691223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.316082, 34.713348, 25.090662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.184345, 35.066345, 24.956354>,  <47.105301, 35.278145, 24.875769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.184345, 35.066345, 24.956354>,  <47.316082, 34.713348, 25.090662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.184345, 35.066345, 24.956354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005220, 0.357307, 0.933973,
		0.944196, 0.305846, -0.122284,
		-0.329345, 0.882491, -0.335771,
		47.085541, 35.331093, 24.855623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.728214, 35.352661, 25.349983>,  <47.316082, 34.713348, 25.090662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.728214, 35.352661, 25.349983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.343536, 35.430294, 25.272543>,  <47.112732, 35.476871, 25.226078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.343536, 35.430294, 25.272543>,  <47.728214, 35.352661, 25.349983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.343536, 35.430294, 25.272543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081720, 0.471158, 0.878255,
		0.261668, 0.860432, -0.437248,
		-0.961692, 0.194079, -0.193601,
		47.055027, 35.488518, 25.214462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.528976, 36.121635, 25.385574>,  <47.728214, 35.352661, 25.349983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.528976, 36.121635, 25.385574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.203968, 35.907940, 25.478872>,  <47.008965, 35.779724, 25.534851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.203968, 35.907940, 25.478872>,  <47.528976, 36.121635, 25.385574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.203968, 35.907940, 25.478872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049510, 0.461920, 0.885539,
		-0.580830, 0.707968, -0.401768,
		-0.812518, -0.534239, 0.233245,
		46.960213, 35.747669, 25.548845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.132500, 36.621136, 25.840054>,  <47.528976, 36.121635, 25.385574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.132500, 36.621136, 25.840054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.984562, 36.251457, 25.878166>,  <46.895802, 36.029652, 25.901033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.984562, 36.251457, 25.878166>,  <47.132500, 36.621136, 25.840054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.984562, 36.251457, 25.878166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268368, 0.204448, 0.941371,
		-0.889492, 0.322588, -0.323638,
		-0.369843, -0.924196, 0.095282,
		46.873608, 35.974197, 25.906752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.450439, 36.670982, 26.099852>,  <47.132500, 36.621136, 25.840054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.450439, 36.670982, 26.099852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.574520, 36.308739, 26.215538>,  <46.648968, 36.091393, 26.284950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.574520, 36.308739, 26.215538>,  <46.450439, 36.670982, 26.099852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.574520, 36.308739, 26.215538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267768, 0.208678, 0.940614,
		-0.912183, -0.369219, -0.177762,
		0.310197, -0.905611, 0.289218,
		46.667580, 36.037056, 26.302303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.901447, 36.273422, 26.445255>,  <46.450439, 36.670982, 26.099852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.901447, 36.273422, 26.445255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.241066, 36.105148, 26.573095>,  <46.444836, 36.004185, 26.649799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.241066, 36.105148, 26.573095>,  <45.901447, 36.273422, 26.445255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.241066, 36.105148, 26.573095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283090, 0.148507, 0.947526,
		-0.446073, -0.894969, 0.006997,
		0.849046, -0.420685, 0.319602,
		46.495781, 35.978943, 26.668976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.650333, 35.771580, 26.900068>,  <45.901447, 36.273422, 26.445255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.650333, 35.771580, 26.900068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.034191, 35.828743, 26.996954>,  <46.264503, 35.863041, 27.055086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.034191, 35.828743, 26.996954>,  <45.650333, 35.771580, 26.900068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.034191, 35.828743, 26.996954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258037, 0.104931, 0.960420,
		0.111856, -0.984155, 0.137576,
		0.959638, 0.142928, 0.242211,
		46.322083, 35.871616, 27.069618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.786751, 35.427670, 27.548557>,  <45.650333, 35.771580, 26.900068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.786751, 35.427670, 27.548557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.082180, 35.695831, 27.520077>,  <46.259438, 35.856728, 27.502989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.082180, 35.695831, 27.520077>,  <45.786751, 35.427670, 27.548557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.082180, 35.695831, 27.520077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059951, 0.170502, 0.983532,
		0.671506, -0.722138, 0.166119,
		0.738570, 0.670407, -0.071201,
		46.303753, 35.896954, 27.498716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.223282, 35.161518, 27.979246>,  <45.786751, 35.427670, 27.548557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.223282, 35.161518, 27.979246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.304287, 35.551929, 27.947336>,  <46.352890, 35.786175, 27.928190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.304287, 35.551929, 27.947336>,  <46.223282, 35.161518, 27.979246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.304287, 35.551929, 27.947336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215501, 0.123882, 0.968614,
		0.955274, -0.178962, 0.235421,
		0.202510, 0.976026, -0.079775,
		46.365040, 35.844738, 27.923405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.373562, 35.439751, 28.734732>,  <46.223282, 35.161518, 27.979246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.373562, 35.439751, 28.734732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.314499, 35.758408, 28.500277>,  <46.279060, 35.949604, 28.359604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.314499, 35.758408, 28.500277>,  <46.373562, 35.439751, 28.734732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.314499, 35.758408, 28.500277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344320, 0.514155, 0.785550,
		0.927169, 0.317807, 0.198384,
		-0.147653, 0.796645, -0.586135,
		46.270203, 35.997402, 28.324436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.618431, 35.950260, 29.183302>,  <46.373562, 35.439751, 28.734732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.618431, 35.950260, 29.183302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.372925, 36.141148, 28.931730>,  <46.225620, 36.255680, 28.780787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.372925, 36.141148, 28.931730>,  <46.618431, 35.950260, 29.183302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.372925, 36.141148, 28.931730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325378, 0.572925, 0.752254,
		0.719319, 0.666349, -0.196366,
		-0.613766, 0.477218, -0.628931,
		46.188793, 36.284313, 28.743052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.553112, 36.557137, 29.485634>,  <46.618431, 35.950260, 29.183302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.553112, 36.557137, 29.485634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.251888, 36.564072, 29.222546>,  <46.071152, 36.568233, 29.064693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.251888, 36.564072, 29.222546>,  <46.553112, 36.557137, 29.485634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.251888, 36.564072, 29.222546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584636, 0.440944, 0.681005,
		0.301822, 0.897367, -0.321925,
		-0.753063, 0.017333, -0.657720,
		46.025970, 36.569271, 29.025230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.365746, 37.350826, 29.408848>,  <46.553112, 36.557137, 29.485634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.365746, 37.350826, 29.408848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.088367, 37.073067, 29.331964>,  <45.921940, 36.906410, 29.285835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.088367, 37.073067, 29.331964>,  <46.365746, 37.350826, 29.408848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.088367, 37.073067, 29.331964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565304, 0.358947, 0.742690,
		-0.446733, 0.623668, -0.641457,
		-0.693441, -0.694403, -0.192209,
		45.880337, 36.864746, 29.274302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.773285, 37.723957, 29.400145>,  <46.365746, 37.350826, 29.408848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.773285, 37.723957, 29.400145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.690712, 37.338642, 29.468800>,  <45.641171, 37.107452, 29.509993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.690712, 37.338642, 29.468800>,  <45.773285, 37.723957, 29.400145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.690712, 37.338642, 29.468800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550007, 0.259316, 0.793881,
		-0.809246, 0.069477, -0.583347,
		-0.206428, -0.963290, 0.171638,
		45.628784, 37.049656, 29.520290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.093102, 37.820007, 29.665848>,  <45.773285, 37.723957, 29.400145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.093102, 37.820007, 29.665848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.208576, 37.452759, 29.774446>,  <45.277863, 37.232410, 29.839605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.208576, 37.452759, 29.774446>,  <45.093102, 37.820007, 29.665848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.208576, 37.452759, 29.774446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631475, 0.030555, 0.774794,
		-0.719651, -0.395116, -0.570951,
		0.288688, -0.918122, 0.271495,
		45.295181, 37.177322, 29.855896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.448597, 37.515232, 29.914309>,  <45.093102, 37.820007, 29.665848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.448597, 37.515232, 29.914309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.748386, 37.294403, 30.060461>,  <44.928261, 37.161907, 30.148153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.748386, 37.294403, 30.060461>,  <44.448597, 37.515232, 29.914309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.748386, 37.294403, 30.060461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516490, -0.142322, 0.844383,
		-0.414160, -0.821559, -0.391807,
		0.749473, -0.552074, 0.365382,
		44.973228, 37.128780, 30.170076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.078648, 36.946388, 30.279356>,  <44.448597, 37.515232, 29.914309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.078648, 36.946388, 30.279356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.458420, 36.990578, 30.396919>,  <44.686283, 37.017094, 30.467457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.458420, 36.990578, 30.396919>,  <44.078648, 36.946388, 30.279356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.458420, 36.990578, 30.396919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270785, -0.185741, 0.944551,
		0.158942, -0.976368, -0.146432,
		0.949427, 0.110477, 0.293907,
		44.743248, 37.023720, 30.485092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.185787, 36.470993, 30.794003>,  <44.078648, 36.946388, 30.279356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.185787, 36.470993, 30.794003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.507328, 36.694492, 30.875612>,  <44.700253, 36.828590, 30.924578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.507328, 36.694492, 30.875612>,  <44.185787, 36.470993, 30.794003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.507328, 36.694492, 30.875612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030976, -0.303206, 0.952421,
		0.594022, -0.771925, -0.226425,
		0.803852, 0.558746, 0.204022,
		44.748482, 36.862118, 30.936819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.727154, 36.076077, 31.240793>,  <44.185787, 36.470993, 30.794003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.727154, 36.076077, 31.240793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.768955, 36.472248, 31.276844>,  <44.794037, 36.709953, 31.298475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.768955, 36.472248, 31.276844>,  <44.727154, 36.076077, 31.240793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.768955, 36.472248, 31.276844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138337, -0.075266, 0.987521,
		0.984856, -0.115669, 0.129148,
		0.104505, 0.990432, 0.090128,
		44.800308, 36.769379, 31.303883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.243851, 36.203217, 31.690353>,  <44.727154, 36.076077, 31.240793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.243851, 36.203217, 31.690353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.040627, 36.546761, 31.716347>,  <44.918690, 36.752888, 31.731943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.040627, 36.546761, 31.716347>,  <45.243851, 36.203217, 31.690353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.040627, 36.546761, 31.716347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047968, -0.103544, 0.993468,
		0.859982, 0.501629, 0.093805,
		-0.508065, 0.858864, 0.064984,
		44.888206, 36.804420, 31.735842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.648067, 36.668434, 32.152805>,  <45.243851, 36.203217, 31.690353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.648067, 36.668434, 32.152805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.255749, 36.746235, 32.158474>,  <45.020355, 36.792915, 32.161877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.255749, 36.746235, 32.158474>,  <45.648067, 36.668434, 32.152805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.255749, 36.746235, 32.158474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004709, -0.049028, 0.998786,
		0.194957, 0.979677, 0.047171,
		-0.980801, 0.194498, 0.014172,
		44.961510, 36.804585, 32.162724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.579216, 36.986244, 32.758564>,  <45.648067, 36.668434, 32.152805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.579216, 36.986244, 32.758564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.198780, 36.908836, 32.662254>,  <44.970516, 36.862392, 32.604469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.198780, 36.908836, 32.662254>,  <45.579216, 36.986244, 32.758564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.198780, 36.908836, 32.662254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214646, -0.146498, 0.965642,
		-0.222139, 0.970098, 0.097796,
		-0.951095, -0.193516, -0.240771,
		44.913452, 36.850780, 32.590023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.362057, 37.025410, 33.041607>,  <45.579216, 36.986244, 32.758564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.362057, 37.025410, 33.041607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.378685, 36.955215, 33.435047>,  <46.388660, 36.913101, 33.671112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.378685, 36.955215, 33.435047>,  <46.362057, 37.025410, 33.041607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.378685, 36.955215, 33.435047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647240, 0.754698, 0.107290,
		-0.761152, 0.632168, 0.144951,
		0.041569, -0.175482, 0.983605,
		46.391155, 36.902573, 33.730129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.961388, 36.625488, 33.178375>,  <46.362057, 37.025410, 33.041607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.961388, 36.625488, 33.178375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.278957, 36.755695, 32.972961>,  <47.469498, 36.833820, 32.849712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.278957, 36.755695, 32.972961>,  <46.961388, 36.625488, 33.178375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.278957, 36.755695, 32.972961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479567, -0.854460, 0.199784,
		-0.373761, -0.404888, -0.834487,
		0.793926, 0.325521, -0.513535,
		47.517136, 36.853352, 32.818901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.451515, 36.241772, 33.230034>,  <46.961388, 36.625488, 33.178375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.451515, 36.241772, 33.230034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.234154, 36.303185, 33.560158>,  <47.103737, 36.340034, 33.758232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.234154, 36.303185, 33.560158>,  <47.451515, 36.241772, 33.230034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.234154, 36.303185, 33.560158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065241, -0.987883, 0.140821,
		0.836932, 0.022679, 0.546836,
		-0.543404, 0.153534, 0.825312,
		47.071133, 36.349243, 33.807751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.719078, 35.945995, 33.802601>,  <47.451515, 36.241772, 33.230034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.719078, 35.945995, 33.802601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.323330, 35.925381, 33.857002>,  <47.085880, 35.913013, 33.889645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.323330, 35.925381, 33.857002>,  <47.719078, 35.945995, 33.802601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.323330, 35.925381, 33.857002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073792, -0.983685, 0.164072,
		0.125330, 0.172363, 0.977028,
		-0.989367, -0.051534, 0.136004,
		47.026520, 35.909920, 33.897804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.753059, 35.642326, 34.406151>,  <47.719078, 35.945995, 33.802601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.753059, 35.642326, 34.406151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.420364, 35.573891, 34.194893>,  <47.220745, 35.532829, 34.068138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.420364, 35.573891, 34.194893>,  <47.753059, 35.642326, 34.406151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.420364, 35.573891, 34.194893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091238, -0.980519, 0.173948,
		-0.547616, 0.096492, 0.831147,
		-0.831740, -0.171089, -0.528144,
		47.170841, 35.522564, 34.036449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.584339, 35.442429, 35.115211>,  <47.753059, 35.642326, 34.406151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.584339, 35.442429, 35.115211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.752747, 35.116283, 34.956249>,  <47.853790, 34.920597, 34.860874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.752747, 35.116283, 34.956249>,  <47.584339, 35.442429, 35.115211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.752747, 35.116283, 34.956249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562612, 0.108918, -0.819515,
		0.711485, 0.568615, -0.412875,
		0.421019, -0.815361, -0.397403,
		47.879051, 34.871674, 34.837029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.032043, 38.091049, 43.766647> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.647678, 38.023262, 43.854225>,  <34.417061, 37.982590, 43.906773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.647678, 38.023262, 43.854225>,  <35.032043, 38.091049, 43.766647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.647678, 38.023262, 43.854225> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167945, -0.271916, -0.947553,
		0.220111, -0.947282, 0.232826,
		-0.960909, -0.169465, 0.218943,
		34.359406, 37.972424, 43.919907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.890175, 37.263737, 43.624695>,  <35.032043, 38.091049, 43.766647>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.890175, 37.263737, 43.624695> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.553181, 37.479183, 43.620430>,  <34.350983, 37.608452, 43.617870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.553181, 37.479183, 43.620430>,  <34.890175, 37.263737, 43.624695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.553181, 37.479183, 43.620430> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180300, -0.300569, -0.936563,
		-0.507652, -0.787118, 0.350337,
		-0.842485, 0.538614, -0.010667,
		34.300434, 37.640766, 43.617229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.382454, 36.859509, 43.176125>,  <34.890175, 37.263737, 43.624695>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.382454, 36.859509, 43.176125> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.219421, 37.223934, 43.200916>,  <34.121601, 37.442589, 43.215794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.219421, 37.223934, 43.200916>,  <34.382454, 36.859509, 43.176125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.219421, 37.223934, 43.200916> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263004, -0.052119, -0.963386,
		-0.874475, -0.408959, 0.260856,
		-0.407581, 0.911063, 0.061981,
		34.097149, 37.497253, 43.219509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.757748, 36.866146, 42.970707>,  <34.382454, 36.859509, 43.176125>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.757748, 36.866146, 42.970707> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.892063, 37.235638, 42.896976>,  <33.972652, 37.457333, 42.852737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.892063, 37.235638, 42.896976>,  <33.757748, 36.866146, 42.970707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.892063, 37.235638, 42.896976> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208129, -0.118090, -0.970947,
		-0.918656, 0.364394, 0.152601,
		0.335787, 0.923727, -0.184325,
		33.992798, 37.512756, 42.841679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.442909, 37.004837, 42.375072>,  <33.757748, 36.866146, 42.970707>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.442909, 37.004837, 42.375072> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.721588, 37.289551, 42.410812>,  <33.888794, 37.460377, 42.432259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.721588, 37.289551, 42.410812>,  <33.442909, 37.004837, 42.375072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.721588, 37.289551, 42.410812> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124667, 0.002530, -0.992195,
		-0.706451, 0.702398, -0.086972,
		0.696696, 0.711780, 0.089353,
		33.930595, 37.503086, 42.437618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.207470, 37.506500, 41.976196>,  <33.442909, 37.004837, 42.375072>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.207470, 37.506500, 41.976196> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.605244, 37.536282, 42.006008>,  <33.843906, 37.554150, 42.023895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.605244, 37.536282, 42.006008>,  <33.207470, 37.506500, 41.976196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.605244, 37.536282, 42.006008> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095433, -0.337084, -0.936625,
		-0.044610, 0.938526, -0.342313,
		0.994436, 0.074451, 0.074529,
		33.903576, 37.558617, 42.028366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.399487, 37.716450, 41.389122>,  <33.207470, 37.506500, 41.976196>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.399487, 37.716450, 41.389122> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.765820, 37.625782, 41.521706>,  <33.985619, 37.571381, 41.601257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.765820, 37.625782, 41.521706>,  <33.399487, 37.716450, 41.389122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.765820, 37.625782, 41.521706> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245648, -0.336716, -0.908999,
		0.317648, 0.913917, -0.252696,
		0.915837, -0.226668, 0.331459,
		34.040569, 37.557781, 41.621143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.858219, 38.153736, 41.020164>,  <33.399487, 37.716450, 41.389122>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.858219, 38.153736, 41.020164> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.017593, 37.809868, 41.148048>,  <34.113216, 37.603546, 41.224781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.017593, 37.809868, 41.148048>,  <33.858219, 38.153736, 41.020164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.017593, 37.809868, 41.148048> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039053, -0.332358, -0.942345,
		0.916364, 0.387950, -0.098850,
		0.398436, -0.859670, 0.319711,
		34.137123, 37.551968, 41.243961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.348145, 38.104107, 40.583908>,  <33.858219, 38.153736, 41.020164>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.348145, 38.104107, 40.583908> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.317837, 37.737896, 40.741928>,  <34.299652, 37.518169, 40.836739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.317837, 37.737896, 40.741928>,  <34.348145, 38.104107, 40.583908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.317837, 37.737896, 40.741928> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242762, -0.401206, -0.883233,
		0.967122, 0.028979, 0.252656,
		-0.075772, -0.915529, 0.395051,
		34.295105, 37.463238, 40.860443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.665180, 37.643085, 40.140747>,  <34.348145, 38.104107, 40.583908>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.665180, 37.643085, 40.140747> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.494320, 37.380745, 40.389713>,  <34.391804, 37.223339, 40.539093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.494320, 37.380745, 40.389713>,  <34.665180, 37.643085, 40.140747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.494320, 37.380745, 40.389713> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065112, -0.664275, -0.744647,
		0.901834, -0.358601, 0.241040,
		-0.427148, -0.655854, 0.622415,
		34.366177, 37.183990, 40.576439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.076801, 37.099926, 40.168255>,  <34.665180, 37.643085, 40.140747>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.076801, 37.099926, 40.168255> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.703457, 36.984123, 40.253128>,  <34.479450, 36.914642, 40.304054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.703457, 36.984123, 40.253128>,  <35.076801, 37.099926, 40.168255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.703457, 36.984123, 40.253128> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023384, -0.638943, -0.768899,
		0.358173, -0.712699, 0.603135,
		-0.933362, -0.289503, 0.212186,
		34.423447, 36.897274, 40.316784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.068264, 36.388149, 40.441250>,  <35.076801, 37.099926, 40.168255>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.068264, 36.388149, 40.441250> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.707729, 36.461040, 40.284081>,  <34.491409, 36.504776, 40.189777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.707729, 36.461040, 40.284081>,  <35.068264, 36.388149, 40.441250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.707729, 36.461040, 40.284081> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106827, -0.785631, -0.609403,
		-0.419742, -0.591251, 0.688650,
		-0.901335, 0.182225, -0.392924,
		34.437328, 36.515709, 40.166203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.845028, 35.732014, 40.286350>,  <35.068264, 36.388149, 40.441250>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.845028, 35.732014, 40.286350> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.594250, 35.951115, 40.064751>,  <34.443783, 36.082573, 39.931793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.594250, 35.951115, 40.064751>,  <34.845028, 35.732014, 40.286350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.594250, 35.951115, 40.064751> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187196, -0.584354, -0.789613,
		-0.756240, -0.598749, 0.263821,
		-0.626945, 0.547751, -0.553995,
		34.406166, 36.115440, 39.898552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.473789, 35.304714, 39.763824>,  <34.845028, 35.732014, 40.286350>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.473789, 35.304714, 39.763824> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.464905, 35.676773, 39.617222>,  <34.459576, 35.900009, 39.529259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.464905, 35.676773, 39.617222>,  <34.473789, 35.304714, 39.763824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.464905, 35.676773, 39.617222> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256331, -0.349048, -0.901365,
		-0.966334, -0.113967, -0.230674,
		-0.022210, 0.930149, -0.366510,
		34.458241, 35.955818, 39.507267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.126125, 35.292202, 39.060474>,  <34.473789, 35.304714, 39.763824>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.126125, 35.292202, 39.060474> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.330048, 35.635197, 39.032707>,  <34.452400, 35.840992, 39.016045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.330048, 35.635197, 39.032707>,  <34.126125, 35.292202, 39.060474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.330048, 35.635197, 39.032707> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407563, -0.311801, -0.858296,
		-0.757620, 0.409273, -0.508437,
		0.509809, 0.857482, -0.069422,
		34.482990, 35.892441, 39.011879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.935040, 35.662910, 38.448624>,  <34.126125, 35.292202, 39.060474>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.935040, 35.662910, 38.448624> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.301159, 35.805836, 38.522980>,  <34.520832, 35.891590, 38.567593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.301159, 35.805836, 38.522980>,  <33.935040, 35.662910, 38.448624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.301159, 35.805836, 38.522980> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264499, -0.185162, -0.946443,
		-0.303759, 0.915446, -0.263988,
		0.915298, 0.357316, 0.185890,
		34.575748, 35.913029, 38.578747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.111736, 35.921967, 37.874435>,  <33.935040, 35.662910, 38.448624>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.111736, 35.921967, 37.874435> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.475018, 35.904934, 38.040977>,  <34.692986, 35.894714, 38.140903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.475018, 35.904934, 38.040977>,  <34.111736, 35.921967, 37.874435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.475018, 35.904934, 38.040977> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411349, -0.092673, -0.906755,
		0.077196, 0.994786, -0.066651,
		0.908203, -0.042581, 0.416358,
		34.747478, 35.892159, 38.165886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.525398, 36.455376, 37.617481>,  <34.111736, 35.921967, 37.874435>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.525398, 36.455376, 37.617481> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.786507, 36.176258, 37.735447>,  <34.943172, 36.008789, 37.806229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.786507, 36.176258, 37.735447>,  <34.525398, 36.455376, 37.617481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.786507, 36.176258, 37.735447> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544229, 0.161143, -0.823315,
		0.526979, 0.697938, 0.484949,
		0.652769, -0.697793, 0.294919,
		34.982338, 35.966919, 37.823921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.986851, 36.655445, 37.335747>,  <34.525398, 36.455376, 37.617481>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.986851, 36.655445, 37.335747> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.086304, 36.274551, 37.406654>,  <35.145977, 36.046013, 37.449200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.086304, 36.274551, 37.406654>,  <34.986851, 36.655445, 37.335747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.086304, 36.274551, 37.406654> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456949, -0.046058, -0.888300,
		0.854037, 0.301864, 0.423672,
		0.248632, -0.952238, 0.177272,
		35.160892, 35.988880, 37.459835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.702080, 36.604599, 37.306507>,  <34.986851, 36.655445, 37.335747>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.702080, 36.604599, 37.306507> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.580551, 36.226665, 37.257553>,  <35.507633, 35.999905, 37.228180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.580551, 36.226665, 37.257553>,  <35.702080, 36.604599, 37.306507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.580551, 36.226665, 37.257553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552813, -0.070210, -0.830342,
		0.775945, -0.319930, 0.543649,
		-0.303821, -0.944836, -0.122383,
		35.489407, 35.943214, 37.220837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.247253, 36.247425, 37.004139>,  <35.702080, 36.604599, 37.306507>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.247253, 36.247425, 37.004139> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.945606, 36.005211, 36.902451>,  <35.764618, 35.859882, 36.841438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.945606, 36.005211, 36.902451>,  <36.247253, 36.247425, 37.004139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.945606, 36.005211, 36.902451> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383819, -0.092264, -0.918787,
		0.532906, -0.790449, 0.301995,
		-0.754118, -0.605539, -0.254221,
		35.719372, 35.823551, 36.826183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.596653, 35.690884, 36.655869>,  <36.247253, 36.247425, 37.004139>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.596653, 35.690884, 36.655869> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.210537, 35.688496, 36.551422>,  <35.978867, 35.687065, 36.488754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.210537, 35.688496, 36.551422>,  <36.596653, 35.690884, 36.655869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.210537, 35.688496, 36.551422> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244022, -0.377010, -0.893486,
		-0.093111, -0.926190, 0.365380,
		-0.965289, -0.005968, -0.261115,
		35.920952, 35.686707, 36.473087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.159283, 35.314522, 36.333839>,  <36.596653, 35.690884, 36.655869>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.159283, 35.314522, 36.333839> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.531990, 35.169407, 36.339455>,  <37.755615, 35.082336, 36.342823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.531990, 35.169407, 36.339455>,  <37.159283, 35.314522, 36.333839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.531990, 35.169407, 36.339455> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037056, 0.133486, 0.990358,
		-0.361168, -0.922260, 0.137821,
		0.931764, -0.362792, 0.014035,
		37.811520, 35.060570, 36.343666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.254940, 34.762123, 36.967991>,  <37.159283, 35.314522, 36.333839>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.254940, 34.762123, 36.967991> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.606972, 34.933014, 36.885113>,  <37.818192, 35.035549, 36.835388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.606972, 34.933014, 36.885113>,  <37.254940, 34.762123, 36.967991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.606972, 34.933014, 36.885113> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055558, 0.340704, 0.938528,
		0.471559, -0.837493, 0.276112,
		0.880083, 0.427231, -0.207191,
		37.870998, 35.061184, 36.822956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.718170, 34.530014, 37.520466>,  <37.254940, 34.762123, 36.967991>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.718170, 34.530014, 37.520466> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.884968, 34.845505, 37.339790>,  <37.985046, 35.034798, 37.231384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.884968, 34.845505, 37.339790>,  <37.718170, 34.530014, 37.520466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.884968, 34.845505, 37.339790> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207363, 0.401300, 0.892165,
		0.884940, -0.465689, 0.003785,
		0.416990, 0.788728, -0.451693,
		38.010063, 35.082123, 37.204281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.388416, 34.772179, 37.903286>,  <37.718170, 34.530014, 37.520466>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.388416, 34.772179, 37.903286> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.298882, 35.077057, 37.660320>,  <38.245159, 35.259983, 37.514542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.298882, 35.077057, 37.660320>,  <38.388416, 34.772179, 37.903286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.298882, 35.077057, 37.660320> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157435, 0.643316, 0.749239,
		0.961827, 0.072079, -0.263994,
		-0.223836, 0.762200, -0.607411,
		38.231731, 35.305717, 37.478096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.865063, 35.243782, 38.034691>,  <38.388416, 34.772179, 37.903286>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.865063, 35.243782, 38.034691> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.533310, 35.430233, 37.911503>,  <38.334259, 35.542103, 37.837589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.533310, 35.430233, 37.911503>,  <38.865063, 35.243782, 38.034691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.533310, 35.430233, 37.911503> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104762, 0.671229, 0.733809,
		0.548766, 0.576348, -0.605540,
		-0.829386, 0.466127, -0.307969,
		38.284492, 35.570072, 37.819111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.086807, 36.004929, 38.040485>,  <38.865063, 35.243782, 38.034691>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.086807, 36.004929, 38.040485> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.687374, 35.983955, 38.044083>,  <38.447716, 35.971371, 38.046242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.687374, 35.983955, 38.044083>,  <39.086807, 36.004929, 38.040485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.687374, 35.983955, 38.044083> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022219, 0.564739, 0.824971,
		-0.048336, 0.823603, -0.565104,
		-0.998584, -0.052432, 0.008997,
		38.387798, 35.968227, 38.046783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.776165, 36.670784, 38.179581>,  <39.086807, 36.004929, 38.040485>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.776165, 36.670784, 38.179581> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.504543, 36.405937, 38.306381>,  <38.341572, 36.247028, 38.382462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.504543, 36.405937, 38.306381>,  <38.776165, 36.670784, 38.179581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.504543, 36.405937, 38.306381> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129817, 0.533337, 0.835883,
		-0.722519, 0.526457, -0.448118,
		-0.679053, -0.662115, 0.317003,
		38.300827, 36.207302, 38.401482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267681, 37.102943, 38.508583>,  <38.776165, 36.670784, 38.179581>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.267681, 37.102943, 38.508583> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.213367, 36.729694, 38.641750>,  <38.180779, 36.505745, 38.721653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.213367, 36.729694, 38.641750>,  <38.267681, 37.102943, 38.508583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.213367, 36.729694, 38.641750> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053456, 0.342443, 0.938017,
		-0.989295, 0.109574, -0.096380,
		-0.135787, -0.933127, 0.332920,
		38.172630, 36.449757, 38.741627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.764572, 37.256386, 38.947029>,  <38.267681, 37.102943, 38.508583>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.764572, 37.256386, 38.947029> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.898987, 36.891422, 39.040478>,  <37.979637, 36.672443, 39.096546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.898987, 36.891422, 39.040478>,  <37.764572, 37.256386, 38.947029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.898987, 36.891422, 39.040478> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136383, 0.198290, 0.970608,
		-0.931921, -0.358026, -0.057804,
		0.336041, -0.912413, 0.233619,
		37.999798, 36.617699, 39.110565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.293575, 36.974182, 39.435215>,  <37.764572, 37.256386, 38.947029>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.293575, 36.974182, 39.435215> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.605721, 36.732510, 39.499706>,  <37.793007, 36.587505, 39.538403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.605721, 36.732510, 39.499706>,  <37.293575, 36.974182, 39.435215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.605721, 36.732510, 39.499706> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113873, 0.116216, 0.986675,
		-0.614869, -0.788326, 0.021891,
		0.780365, -0.604182, 0.161227,
		37.839828, 36.551254, 39.548073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010223, 36.468422, 39.926933>,  <37.293575, 36.974182, 39.435215>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.010223, 36.468422, 39.926933> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.409363, 36.482395, 39.949123>,  <37.648846, 36.490780, 39.962437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.409363, 36.482395, 39.949123>,  <37.010223, 36.468422, 39.926933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.409363, 36.482395, 39.949123> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060561, 0.167157, 0.984069,
		0.025099, -0.985311, 0.168913,
		0.997849, 0.034928, 0.055476,
		37.708717, 36.492874, 39.965767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.012501, 36.397835, 40.635674>,  <37.010223, 36.468422, 39.926933>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.012501, 36.397835, 40.635674> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.388172, 36.499657, 40.543453>,  <37.613575, 36.560749, 40.488121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.388172, 36.499657, 40.543453>,  <37.012501, 36.397835, 40.635674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.388172, 36.499657, 40.543453> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093006, 0.457696, 0.884231,
		0.330603, -0.851891, 0.406182,
		0.939176, 0.254552, -0.230547,
		37.669926, 36.576023, 40.474289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.415138, 36.132397, 41.183182>,  <37.012501, 36.397835, 40.635674>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.415138, 36.132397, 41.183182> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.632366, 36.401505, 40.982201>,  <37.762703, 36.562969, 40.861614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.632366, 36.401505, 40.982201>,  <37.415138, 36.132397, 41.183182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.632366, 36.401505, 40.982201> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057658, 0.567086, 0.821638,
		0.837708, -0.475174, 0.269175,
		0.543067, 0.672772, -0.502450,
		37.795288, 36.603336, 40.831467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.133923, 36.198891, 41.533688>,  <37.415138, 36.132397, 41.183182>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.133923, 36.198891, 41.533688> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.035583, 36.532967, 41.336910>,  <37.976578, 36.733414, 41.218842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.035583, 36.532967, 41.336910>,  <38.133923, 36.198891, 41.533688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.035583, 36.532967, 41.336910> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152815, 0.534572, 0.831192,
		0.957186, 0.129173, -0.259055,
		-0.245851, 0.835193, -0.491945,
		37.961826, 36.783524, 41.189327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.561264, 36.706039, 41.886585>,  <38.133923, 36.198891, 41.533688>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.561264, 36.706039, 41.886585> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.274712, 36.916267, 41.703033>,  <38.102779, 37.042404, 41.592903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.274712, 36.916267, 41.703033>,  <38.561264, 36.706039, 41.886585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.274712, 36.916267, 41.703033> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066284, 0.705996, 0.705108,
		0.694551, 0.474711, -0.540600,
		-0.716384, 0.525566, -0.458884,
		38.059795, 37.073936, 41.565369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.783272, 37.416817, 41.917534>,  <38.561264, 36.706039, 41.886585>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.783272, 37.416817, 41.917534> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.394062, 37.417362, 41.825260>,  <38.160534, 37.417690, 41.769897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.394062, 37.417362, 41.825260>,  <38.783272, 37.416817, 41.917534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.394062, 37.417362, 41.825260> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182752, 0.605682, 0.774436,
		0.140773, 0.795706, -0.589097,
		-0.973029, 0.001361, -0.230681,
		38.102154, 37.417770, 41.756058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.594143, 38.150230, 42.028645>,  <38.783272, 37.416817, 41.917534>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.594143, 38.150230, 42.028645> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.261539, 37.928089, 42.033833>,  <38.061977, 37.794804, 42.036945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.261539, 37.928089, 42.033833>,  <38.594143, 38.150230, 42.028645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.261539, 37.928089, 42.033833> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305906, 0.477256, 0.823801,
		-0.463689, 0.681035, -0.566731,
		-0.831513, -0.555354, 0.012965,
		38.012085, 37.761482, 42.037724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.967159, 38.611454, 42.044743>,  <38.594143, 38.150230, 42.028645>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.967159, 38.611454, 42.044743> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.858749, 38.256050, 42.192848>,  <37.793705, 38.042809, 42.281712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.858749, 38.256050, 42.192848>,  <37.967159, 38.611454, 42.044743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.858749, 38.256050, 42.192848> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238436, 0.434637, 0.868469,
		-0.932574, 0.147092, -0.329650,
		-0.271023, -0.888513, 0.370259,
		37.777443, 37.989498, 42.303925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.712124, 38.426521, 42.680504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.959835, 38.115002, 42.720421>,  <37.108463, 37.928089, 42.744370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.959835, 38.115002, 42.720421>,  <36.712124, 38.426521, 42.680504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.959835, 38.115002, 42.720421> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230064, -0.058471, 0.971417,
		-0.750707, -0.624539, -0.215384,
		0.619281, -0.778802, 0.099790,
		37.145618, 37.881363, 42.750359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.335514, 37.899902, 42.932220>,  <36.712124, 38.426521, 42.680504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.335514, 37.899902, 42.932220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.710110, 37.825081, 43.050880>,  <36.934868, 37.780190, 43.122074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.710110, 37.825081, 43.050880>,  <36.335514, 37.899902, 42.932220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.710110, 37.825081, 43.050880> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326272, -0.154561, 0.932554,
		-0.128574, -0.970117, -0.205770,
		0.936491, -0.187039, 0.296650,
		36.991055, 37.768967, 43.139874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.272591, 37.469479, 43.483879>,  <36.335514, 37.899902, 42.932220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.272591, 37.469479, 43.483879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.655106, 37.571236, 43.541553>,  <36.884617, 37.632290, 43.576160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.655106, 37.571236, 43.541553>,  <36.272591, 37.469479, 43.483879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.655106, 37.571236, 43.541553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083312, -0.235630, 0.968265,
		0.280300, -0.937956, -0.204136,
		0.956290, 0.254397, 0.144190,
		36.941994, 37.647556, 43.584812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.479172, 37.002453, 43.992977>,  <36.272591, 37.469479, 43.483879>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.479172, 37.002453, 43.992977> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.747463, 37.299122, 43.995724>,  <36.908440, 37.477123, 43.997372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.747463, 37.299122, 43.995724>,  <36.479172, 37.002453, 43.992977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.747463, 37.299122, 43.995724> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130636, 0.109017, 0.985418,
		0.730108, -0.661845, 0.170010,
		0.670728, 0.741671, 0.006867,
		36.948681, 37.521622, 43.997784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.775703, 36.940956, 44.666527>,  <36.479172, 37.002453, 43.992977>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.775703, 36.940956, 44.666527> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.863247, 37.307144, 44.531464>,  <36.915771, 37.526859, 44.450428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.863247, 37.307144, 44.531464>,  <36.775703, 36.940956, 44.666527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.863247, 37.307144, 44.531464> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105985, 0.366299, 0.924442,
		0.969985, -0.166532, 0.177192,
		0.218855, 0.915474, -0.337655,
		36.928902, 37.581787, 44.430168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.940907, 37.142757, 45.354431>,  <36.775703, 36.940956, 44.666527>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.940907, 37.142757, 45.354431> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.959450, 37.443947, 45.091862>,  <36.970577, 37.624660, 44.934322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.959450, 37.443947, 45.091862>,  <36.940907, 37.142757, 45.354431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.959450, 37.443947, 45.091862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051362, 0.658054, 0.751216,
		0.997603, -0.001113, 0.069183,
		0.046362, 0.752970, -0.656420,
		36.973358, 37.669838, 44.894936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.540253, 37.634079, 45.495464>,  <36.940907, 37.142757, 45.354431>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.540253, 37.634079, 45.495464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.235188, 37.833115, 45.330173>,  <37.052147, 37.952534, 45.230999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.235188, 37.833115, 45.330173>,  <37.540253, 37.634079, 45.495464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.235188, 37.833115, 45.330173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034452, 0.606722, 0.794167,
		0.645879, 0.619918, -0.445581,
		-0.762662, 0.497585, -0.413226,
		37.006390, 37.982391, 45.206207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.715088, 38.218662, 45.641163>,  <37.540253, 37.634079, 45.495464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.715088, 38.218662, 45.641163> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.323978, 38.238937, 45.559792>,  <37.089314, 38.251102, 45.510967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.323978, 38.238937, 45.559792>,  <37.715088, 38.218662, 45.641163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.323978, 38.238937, 45.559792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122061, 0.651265, 0.748969,
		0.170453, 0.757155, -0.630605,
		-0.977776, 0.050692, -0.203430,
		37.030647, 38.254147, 45.498764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.607986, 38.868782, 45.415813>,  <37.715088, 38.218662, 45.641163>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.607986, 38.868782, 45.415813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.265133, 38.722801, 45.561214>,  <37.059422, 38.635212, 45.648457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.265133, 38.722801, 45.561214>,  <37.607986, 38.868782, 45.415813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.265133, 38.722801, 45.561214> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046976, 0.758140, 0.650397,
		-0.512951, 0.540400, -0.666970,
		-0.857132, -0.364954, 0.363503,
		37.007992, 38.613316, 45.670265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.173035, 39.458649, 45.594715>,  <37.607986, 38.868782, 45.415813>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.173035, 39.458649, 45.594715> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.997505, 39.164913, 45.801857>,  <36.892189, 38.988670, 45.926144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.997505, 39.164913, 45.801857>,  <37.173035, 39.458649, 45.594715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.997505, 39.164913, 45.801857> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190985, 0.639364, 0.744807,
		-0.878044, 0.227933, -0.420815,
		-0.438820, -0.734343, 0.517858,
		36.865860, 38.944611, 45.957214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.514065, 39.688225, 45.825298>,  <37.173035, 39.458649, 45.594715>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.514065, 39.688225, 45.825298> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.598770, 39.381519, 46.067696>,  <36.649593, 39.197495, 46.213135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.598770, 39.381519, 46.067696>,  <36.514065, 39.688225, 45.825298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.598770, 39.381519, 46.067696> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127554, 0.593064, 0.794987,
		-0.968962, -0.245644, 0.027784,
		0.211762, -0.766769, 0.605990,
		36.662300, 39.151489, 46.249493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.011562, 39.788494, 46.290684>,  <36.514065, 39.688225, 45.825298>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.011562, 39.788494, 46.290684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.290077, 39.545002, 46.442806>,  <36.457188, 39.398907, 46.534081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.290077, 39.545002, 46.442806>,  <36.011562, 39.788494, 46.290684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.290077, 39.545002, 46.442806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070010, 0.469728, 0.880031,
		-0.714340, -0.639381, 0.284449,
		0.696288, -0.608726, 0.380309,
		36.498962, 39.362385, 46.556900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.753681, 39.423920, 46.933777>,  <36.011562, 39.788494, 46.290684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.753681, 39.423920, 46.933777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.149334, 39.436443, 46.991234>,  <36.386726, 39.443958, 47.025707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.149334, 39.436443, 46.991234>,  <35.753681, 39.423920, 46.933777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.149334, 39.436443, 46.991234> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146123, 0.317072, 0.937077,
		-0.016207, -0.947885, 0.318202,
		0.989133, 0.031310, 0.143647,
		36.446075, 39.445835, 47.034328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.783417, 39.382465, 47.563015>,  <35.753681, 39.423920, 46.933777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.783417, 39.382465, 47.563015> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.165585, 39.476299, 47.491291>,  <36.394886, 39.532600, 47.448257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.165585, 39.476299, 47.491291>,  <35.783417, 39.382465, 47.563015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.165585, 39.476299, 47.491291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112257, 0.273090, 0.955416,
		0.273089, -0.932949, 0.234581,
		-0.955416, -0.234581, 0.179308,
		36.452209, 39.546673, 47.437500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229477, 38.885014, 47.932594>,  <35.783417, 39.382465, 47.563015>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.229477, 38.885014, 47.932594> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.445446, 39.218113, 47.883575>,  <36.575027, 39.417973, 47.854164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.445446, 39.218113, 47.883575>,  <36.229477, 38.885014, 47.932594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.445446, 39.218113, 47.883575> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213645, 0.005247, 0.976897,
		0.814152, -0.553628, -0.175080,
		0.539919, 0.832748, -0.122551,
		36.607422, 39.467937, 47.846809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.707775, 38.892616, 48.432877>,  <36.229477, 38.885014, 47.932594>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.707775, 38.892616, 48.432877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.759995, 39.274605, 48.326298>,  <36.791325, 39.503796, 48.262352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.759995, 39.274605, 48.326298>,  <36.707775, 38.892616, 48.432877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.759995, 39.274605, 48.326298> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196792, 0.238438, 0.951010,
		0.971716, -0.176585, -0.156803,
		0.130546, 0.954969, -0.266444,
		36.799160, 39.561096, 48.246365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.322292, 39.120071, 48.908569>,  <36.707775, 38.892616, 48.432877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.322292, 39.120071, 48.908569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.150177, 39.449791, 48.761398>,  <37.046906, 39.647625, 48.673096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.150177, 39.449791, 48.761398>,  <37.322292, 39.120071, 48.908569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.150177, 39.449791, 48.761398> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191508, 0.481677, 0.855168,
		0.882142, 0.297510, -0.365122,
		-0.430292, 0.824303, -0.367932,
		37.021091, 39.697083, 48.651020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.821503, 39.597176, 49.000736>,  <37.322292, 39.120071, 48.908569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.821503, 39.597176, 49.000736> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.457027, 39.759964, 48.975101>,  <37.238342, 39.857635, 48.959721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.457027, 39.759964, 48.975101>,  <37.821503, 39.597176, 49.000736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.457027, 39.759964, 48.975101> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182445, 0.538077, 0.822914,
		0.369383, 0.738140, -0.564541,
		-0.911192, 0.406968, -0.064087,
		37.183670, 39.882053, 48.955875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.826492, 40.292286, 49.108360>,  <37.821503, 39.597176, 49.000736>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.826492, 40.292286, 49.108360> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.441967, 40.231911, 49.200527>,  <37.211250, 40.195686, 49.255829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.441967, 40.231911, 49.200527>,  <37.826492, 40.292286, 49.108360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.441967, 40.231911, 49.200527> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095812, 0.601040, 0.793455,
		-0.258256, 0.784836, -0.563326,
		-0.961313, -0.150942, 0.230419,
		37.153572, 40.186626, 49.269653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.541843, 40.997345, 49.202152>,  <37.826492, 40.292286, 49.108360>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.541843, 40.997345, 49.202152> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.278297, 40.740456, 49.358845>,  <37.120171, 40.586323, 49.452862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.278297, 40.740456, 49.358845>,  <37.541843, 40.997345, 49.202152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.278297, 40.740456, 49.358845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134254, 0.612762, 0.778780,
		-0.740188, 0.460517, -0.489946,
		-0.658861, -0.642221, 0.391732,
		37.080639, 40.547791, 49.476364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.069088, 41.430313, 49.509960>,  <37.541843, 40.997345, 49.202152>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.069088, 41.430313, 49.509960> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.019810, 41.078411, 49.693634>,  <36.990242, 40.867271, 49.803841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.019810, 41.078411, 49.693634>,  <37.069088, 41.430313, 49.509960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.019810, 41.078411, 49.693634> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129724, 0.473019, 0.871450,
		-0.983867, 0.047792, -0.172400,
		-0.123198, -0.879755, 0.459188,
		36.982849, 40.814484, 49.831390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.344139, 41.469200, 49.760750>,  <37.069088, 41.430313, 49.509960>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.344139, 41.469200, 49.760750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.580505, 41.221905, 49.968052>,  <36.722324, 41.073528, 50.092434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.580505, 41.221905, 49.968052>,  <36.344139, 41.469200, 49.760750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.580505, 41.221905, 49.968052> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268075, 0.455430, 0.848952,
		-0.760889, -0.640593, 0.103387,
		0.590919, -0.618242, 0.518258,
		36.757782, 41.036430, 50.123528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.019547, 41.393665, 50.338600>,  <36.344139, 41.469200, 49.760750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.019547, 41.393665, 50.338600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.391842, 41.281197, 50.432129>,  <36.615219, 41.213715, 50.488247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.391842, 41.281197, 50.432129>,  <36.019547, 41.393665, 50.338600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.391842, 41.281197, 50.432129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138942, 0.319557, 0.937325,
		-0.338270, -0.904890, 0.258356,
		0.930735, -0.281173, 0.233824,
		36.671062, 41.196846, 50.502277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.597561, 40.966099, 50.774540>,  <36.019547, 41.393665, 50.338600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.597561, 40.966099, 50.774540> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.231808, 40.957623, 50.936264>,  <35.012356, 40.952538, 51.033298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.231808, 40.957623, 50.936264>,  <35.597561, 40.966099, 50.774540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.231808, 40.957623, 50.936264> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008475, -0.997409, -0.071444,
		0.404772, -0.068753, 0.911829,
		-0.914379, -0.021191, 0.404306,
		34.957493, 40.951263, 51.057556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.484024, 40.328453, 51.126114>,  <35.597561, 40.966099, 50.774540>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.484024, 40.328453, 51.126114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.103977, 40.450012, 51.098030>,  <34.875950, 40.522945, 51.081181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.103977, 40.450012, 51.098030>,  <35.484024, 40.328453, 51.126114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.103977, 40.450012, 51.098030> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250684, -0.877971, -0.407828,
		-0.185579, -0.369883, 0.910355,
		-0.950115, 0.303896, -0.070210,
		34.818943, 40.541180, 51.076965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.062546, 39.761013, 51.319645>,  <35.484024, 40.328453, 51.126114>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.062546, 39.761013, 51.319645> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.786602, 39.992268, 51.145359>,  <34.621037, 40.131020, 51.040787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.786602, 39.992268, 51.145359>,  <35.062546, 39.761013, 51.319645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.786602, 39.992268, 51.145359> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372652, -0.799588, -0.470944,
		-0.620661, -0.162518, 0.767051,
		-0.689862, 0.578140, -0.435711,
		34.579643, 40.165710, 51.014645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.326477, 39.378811, 51.284588>,  <35.062546, 39.761013, 51.319645>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.326477, 39.378811, 51.284588> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.310978, 39.652203, 50.993011>,  <34.301678, 39.816238, 50.818066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.310978, 39.652203, 50.993011>,  <34.326477, 39.378811, 51.284588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.310978, 39.652203, 50.993011> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389070, -0.682243, -0.619006,
		-0.920393, 0.259627, 0.292354,
		-0.038746, 0.683475, -0.728945,
		34.299355, 39.857246, 50.774326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.643536, 39.222374, 50.961006>,  <34.326477, 39.378811, 51.284588>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.643536, 39.222374, 50.961006> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.855305, 39.451855, 50.711021>,  <33.982365, 39.589542, 50.561031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.855305, 39.451855, 50.711021>,  <33.643536, 39.222374, 50.961006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.855305, 39.451855, 50.711021> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349813, -0.523506, -0.776900,
		-0.772882, 0.629926, -0.076465,
		0.529419, 0.573703, -0.624964,
		34.014130, 39.623966, 50.523533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.192074, 39.445618, 50.445358>,  <33.643536, 39.222374, 50.961006>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.192074, 39.445618, 50.445358> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.553215, 39.504364, 50.283722>,  <33.769901, 39.539612, 50.186741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.553215, 39.504364, 50.283722>,  <33.192074, 39.445618, 50.445358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.553215, 39.504364, 50.283722> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267449, -0.544053, -0.795285,
		-0.336645, 0.826098, -0.451920,
		0.902852, 0.146863, -0.404092,
		33.824070, 39.548424, 50.162495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.078316, 39.645283, 49.728580>,  <33.192074, 39.445618, 50.445358>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.078316, 39.645283, 49.728580> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.457134, 39.517399, 49.740532>,  <33.684425, 39.440670, 49.747704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.457134, 39.517399, 49.740532>,  <33.078316, 39.645283, 49.728580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.457134, 39.517399, 49.740532> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147678, -0.516282, -0.843590,
		0.285126, 0.794506, -0.536157,
		0.947045, -0.319708, 0.029874,
		33.741249, 39.421486, 49.749493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.170845, 39.626068, 49.067657>,  <33.078316, 39.645283, 49.728580>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.170845, 39.626068, 49.067657> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.507187, 39.457088, 49.203007>,  <33.708992, 39.355701, 49.284214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.507187, 39.457088, 49.203007>,  <33.170845, 39.626068, 49.067657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.507187, 39.457088, 49.203007> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188222, -0.357916, -0.914587,
		0.507475, 0.832726, -0.221442,
		0.840858, -0.422449, 0.338371,
		33.759445, 39.330353, 49.304520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.736259, 39.809177, 48.553230>,  <33.170845, 39.626068, 49.067657>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.736259, 39.809177, 48.553230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.851173, 39.492008, 48.768169>,  <33.920120, 39.301708, 48.897133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.851173, 39.492008, 48.768169>,  <33.736259, 39.809177, 48.553230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.851173, 39.492008, 48.768169> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356092, -0.432371, -0.828404,
		0.889194, 0.429332, 0.158141,
		0.287285, -0.792924, 0.537344,
		33.937359, 39.254131, 48.929371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.436314, 39.721886, 48.340652>,  <33.736259, 39.809177, 48.553230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.436314, 39.721886, 48.340652> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.253769, 39.387672, 48.463036>,  <34.144241, 39.187145, 48.536465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.253769, 39.387672, 48.463036>,  <34.436314, 39.721886, 48.340652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.253769, 39.387672, 48.463036> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241401, -0.447220, -0.861232,
		0.856422, -0.319176, 0.405794,
		-0.456363, -0.835537, 0.305959,
		34.116859, 39.137012, 48.554825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.807755, 39.191269, 47.997486>,  <34.436314, 39.721886, 48.340652>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.807755, 39.191269, 47.997486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.473045, 39.001892, 48.107510>,  <34.272221, 38.888268, 48.173523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.473045, 39.001892, 48.107510>,  <34.807755, 39.191269, 47.997486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.473045, 39.001892, 48.107510> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006520, -0.493701, -0.869607,
		0.547505, -0.729461, 0.410030,
		-0.836777, -0.473441, 0.275060,
		34.222012, 38.859859, 48.190029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.932552, 38.400543, 47.936062>,  <34.807755, 39.191269, 47.997486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.932552, 38.400543, 47.936062> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.544289, 38.490414, 47.901775>,  <34.311333, 38.544334, 47.881203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.544289, 38.490414, 47.901775>,  <34.932552, 38.400543, 47.936062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.544289, 38.490414, 47.901775> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007494, -0.328023, -0.944640,
		-0.240355, -0.917563, 0.316713,
		-0.970656, 0.224676, -0.085719,
		34.253094, 38.557816, 47.876060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.795238, 37.871273, 47.542133>,  <34.932552, 38.400543, 47.936062>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.795238, 37.871273, 47.542133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.474316, 38.105843, 47.497562>,  <34.281761, 38.246586, 47.470818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.474316, 38.105843, 47.497562>,  <34.795238, 37.871273, 47.542133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.474316, 38.105843, 47.497562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005696, -0.179148, -0.983806,
		-0.596890, -0.789944, 0.140391,
		-0.802302, 0.586424, -0.111431,
		34.233624, 38.281769, 47.464134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.368011, 37.580547, 47.081100>,  <34.795238, 37.871273, 47.542133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.368011, 37.580547, 47.081100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.240211, 37.959076, 47.061546>,  <34.163532, 38.186195, 47.049812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.240211, 37.959076, 47.061546>,  <34.368011, 37.580547, 47.081100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.240211, 37.959076, 47.061546> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090679, -0.020822, -0.995663,
		-0.943238, -0.322545, -0.079160,
		-0.319498, 0.946325, -0.048888,
		34.144363, 38.242973, 47.046879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.810993, 37.489594, 46.646866>,  <34.368011, 37.580547, 47.081100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.810993, 37.489594, 46.646866> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.909901, 37.877159, 46.643600>,  <33.969246, 38.109699, 46.641644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.909901, 37.877159, 46.643600>,  <33.810993, 37.489594, 46.646866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.909901, 37.877159, 46.643600> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040821, -0.018832, -0.998989,
		-0.968087, 0.246685, -0.044208,
		0.247268, 0.968913, -0.008161,
		33.984081, 38.167831, 46.641151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.361706, 37.925831, 46.282673>,  <33.810993, 37.489594, 46.646866>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.361706, 37.925831, 46.282673> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.694706, 38.147255, 46.291790>,  <33.894505, 38.280109, 46.297260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.694706, 38.147255, 46.291790>,  <33.361706, 37.925831, 46.282673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.694706, 38.147255, 46.291790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080262, 0.161203, -0.983652,
		-0.548181, 0.817061, 0.178631,
		0.832500, 0.553556, 0.022790,
		33.944454, 38.313320, 46.298626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.183136, 38.493412, 45.851791>,  <33.361706, 37.925831, 46.282673>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.183136, 38.493412, 45.851791> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.579891, 38.510448, 45.899696>,  <33.817944, 38.520672, 45.928440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.579891, 38.510448, 45.899696>,  <33.183136, 38.493412, 45.851791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.579891, 38.510448, 45.899696> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124531, -0.136849, -0.982733,
		-0.025468, 0.989676, -0.141043,
		0.991889, 0.042593, 0.119760,
		33.877457, 38.523228, 45.935623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.345009, 38.961475, 45.394981>,  <33.183136, 38.493412, 45.851791>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.345009, 38.961475, 45.394981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.664349, 38.729313, 45.459198>,  <33.855953, 38.590015, 45.497726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.664349, 38.729313, 45.459198>,  <33.345009, 38.961475, 45.394981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.664349, 38.729313, 45.459198> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174263, -0.032516, -0.984162,
		0.576430, 0.813681, 0.075184,
		0.798349, -0.580402, 0.160538,
		33.903854, 38.555191, 45.507359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.716652, 39.031693, 44.789093>,  <33.345009, 38.961475, 45.394981>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.716652, 39.031693, 44.789093> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.908653, 38.707222, 44.922714>,  <34.023853, 38.512539, 45.002888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.908653, 38.707222, 44.922714>,  <33.716652, 39.031693, 44.789093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.908653, 38.707222, 44.922714> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239416, -0.245198, -0.939445,
		0.843963, 0.530917, 0.076511,
		0.480007, -0.811175, 0.334048,
		34.052654, 38.463871, 45.022930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.357086, 39.048195, 44.436092>,  <33.716652, 39.031693, 44.789093>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.357086, 39.048195, 44.436092> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.275276, 38.682274, 44.575409>,  <34.226189, 38.462723, 44.659000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.275276, 38.682274, 44.575409>,  <34.357086, 39.048195, 44.436092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.275276, 38.682274, 44.575409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254482, -0.393274, -0.883501,
		0.945202, -0.092067, 0.313235,
		-0.204528, -0.914800, 0.348294,
		34.213917, 38.407833, 44.679897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.975533, 38.647812, 44.331154>,  <34.357086, 39.048195, 44.436092>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.975533, 38.647812, 44.331154> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.664951, 38.396900, 44.355297>,  <34.478603, 38.246353, 44.369781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.664951, 38.396900, 44.355297>,  <34.975533, 38.647812, 44.331154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.664951, 38.396900, 44.355297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201265, -0.337597, -0.919522,
		0.597176, -0.701815, 0.388377,
		-0.776449, -0.627283, 0.060354,
		34.432018, 38.208714, 44.373402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<45.548805, 34.962730, 25.552071> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.251694, 34.704456, 25.481234>,  <45.073425, 34.549492, 25.438732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.251694, 34.704456, 25.481234>,  <45.548805, 34.962730, 25.552071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.251694, 34.704456, 25.481234> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233233, 0.001603, 0.972420,
		-0.627595, 0.763600, -0.151787,
		-0.742783, -0.645688, -0.177091,
		45.028858, 34.510750, 25.428106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.911125, 35.203575, 25.823589>,  <45.548805, 34.962730, 25.552071>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.911125, 35.203575, 25.823589> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.856136, 34.807648, 25.808847>,  <44.823143, 34.570091, 25.800003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.856136, 34.807648, 25.808847>,  <44.911125, 35.203575, 25.823589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.856136, 34.807648, 25.808847> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311675, 0.007910, 0.950156,
		-0.940191, 0.142109, -0.309590,
		-0.137474, -0.989820, -0.036854,
		44.814896, 34.510700, 25.797791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.196659, 35.083691, 26.026993>,  <44.911125, 35.203575, 25.823589>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.196659, 35.083691, 26.026993> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.399944, 34.744343, 26.086315>,  <44.521915, 34.540733, 26.121908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.399944, 34.744343, 26.086315>,  <44.196659, 35.083691, 26.026993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.399944, 34.744343, 26.086315> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293789, -0.008901, 0.955829,
		-0.809572, -0.529336, -0.253763,
		0.508214, -0.848365, 0.148307,
		44.552410, 34.489834, 26.130808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.740421, 34.788727, 26.525860>,  <44.196659, 35.083691, 26.026993>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.740421, 34.788727, 26.525860> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.078320, 34.578030, 26.563679>,  <44.281059, 34.451611, 26.586370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.078320, 34.578030, 26.563679>,  <43.740421, 34.788727, 26.525860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.078320, 34.578030, 26.563679> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204392, -0.154274, 0.966656,
		-0.494594, -0.835907, -0.237985,
		0.844749, -0.526744, 0.094549,
		44.331745, 34.420006, 26.592043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.557209, 34.231445, 26.918703>,  <43.740421, 34.788727, 26.525860>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.557209, 34.231445, 26.918703> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.956627, 34.236740, 26.939611>,  <44.196278, 34.239918, 26.952156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.956627, 34.236740, 26.939611>,  <43.557209, 34.231445, 26.918703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.956627, 34.236740, 26.939611> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046428, -0.281936, 0.958309,
		0.027421, -0.959342, -0.280911,
		0.998545, 0.013236, 0.052271,
		44.256191, 34.240711, 26.955294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.810768, 33.617893, 27.216270>,  <43.557209, 34.231445, 26.918703>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.810768, 33.617893, 27.216270> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.101742, 33.886440, 27.272989>,  <44.276325, 34.047569, 27.307020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.101742, 33.886440, 27.272989>,  <43.810768, 33.617893, 27.216270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.101742, 33.886440, 27.272989> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120645, -0.328565, 0.936744,
		0.675490, -0.664311, -0.320006,
		0.727432, 0.671368, 0.141796,
		44.319973, 34.087852, 27.315529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.295952, 33.262054, 27.521435>,  <43.810768, 33.617893, 27.216270>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.295952, 33.262054, 27.521435> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.352299, 33.645695, 27.619648>,  <44.386108, 33.875877, 27.678576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.352299, 33.645695, 27.619648>,  <44.295952, 33.262054, 27.521435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.352299, 33.645695, 27.619648> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141350, -0.264948, 0.953846,
		0.979886, -0.099663, -0.172892,
		0.140871, 0.959099, 0.245532,
		44.394562, 33.933426, 27.693308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.796516, 33.205349, 28.147558>,  <44.295952, 33.262054, 27.521435>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.796516, 33.205349, 28.147558> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.655094, 33.579082, 28.165487>,  <44.570240, 33.803322, 28.176245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.655094, 33.579082, 28.165487>,  <44.796516, 33.205349, 28.147558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.655094, 33.579082, 28.165487> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052945, -0.027851, 0.998209,
		0.933913, 0.355299, -0.039622,
		-0.353559, 0.934338, 0.044822,
		44.549026, 33.859383, 28.178934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.203362, 33.515903, 28.686790>,  <44.796516, 33.205349, 28.147558>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.203362, 33.515903, 28.686790> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.881096, 33.749237, 28.645554>,  <44.687737, 33.889236, 28.620811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.881096, 33.749237, 28.645554>,  <45.203362, 33.515903, 28.686790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.881096, 33.749237, 28.645554> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051395, 0.104543, 0.993192,
		0.590140, 0.805476, -0.054246,
		-0.805663, 0.583334, -0.103093,
		44.639397, 33.924236, 28.614626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.327751, 34.135185, 29.064157>,  <45.203362, 33.515903, 28.686790>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.327751, 34.135185, 29.064157> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.933258, 34.072495, 29.043060>,  <44.696564, 34.034878, 29.030401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.933258, 34.072495, 29.043060>,  <45.327751, 34.135185, 29.064157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.933258, 34.072495, 29.043060> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087450, 0.223604, 0.970749,
		-0.140353, 0.961996, -0.234232,
		-0.986232, -0.156731, -0.052743,
		44.637390, 34.025475, 29.027237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.094101, 34.652851, 29.581507>,  <45.327751, 34.135185, 29.064157>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.094101, 34.652851, 29.581507> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.800251, 34.390545, 29.511881>,  <44.623940, 34.233162, 29.470106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.800251, 34.390545, 29.511881>,  <45.094101, 34.652851, 29.581507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.800251, 34.390545, 29.511881> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379924, 0.185042, 0.906321,
		-0.562125, 0.731937, -0.385077,
		-0.734625, -0.655766, -0.174064,
		44.579865, 34.193813, 29.459661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.553181, 35.027988, 29.835016>,  <45.094101, 34.652851, 29.581507>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.553181, 35.027988, 29.835016> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.434841, 34.646233, 29.818966>,  <44.363838, 34.417179, 29.809336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.434841, 34.646233, 29.818966>,  <44.553181, 35.027988, 29.835016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.434841, 34.646233, 29.818966> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249323, 0.036600, 0.967728,
		-0.922123, 0.296308, -0.248780,
		-0.295851, -0.954391, -0.040126,
		44.346085, 34.359917, 29.806929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.856194, 35.041714, 30.302677>,  <44.553181, 35.027988, 29.835016>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.856194, 35.041714, 30.302677> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.996563, 34.668858, 30.266991>,  <44.080784, 34.445145, 30.245579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.996563, 34.668858, 30.266991>,  <43.856194, 35.041714, 30.302677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.996563, 34.668858, 30.266991> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234012, -0.179550, 0.955510,
		-0.906691, -0.314438, -0.281141,
		0.350928, -0.932143, -0.089214,
		44.101841, 34.389214, 30.240227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.365574, 34.619373, 30.664209>,  <43.856194, 35.041714, 30.302677>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.365574, 34.619373, 30.664209> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.709923, 34.416138, 30.653294>,  <43.916534, 34.294197, 30.646744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.709923, 34.416138, 30.653294>,  <43.365574, 34.619373, 30.664209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.709923, 34.416138, 30.653294> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122157, -0.258447, 0.958271,
		-0.493936, -0.821617, -0.284556,
		0.860874, -0.508085, -0.027290,
		43.968185, 34.263714, 30.645107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.242889, 34.245079, 31.224377>,  <43.365574, 34.619373, 30.664209>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.242889, 34.245079, 31.224377> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.639999, 34.207615, 31.194380>,  <43.878265, 34.185139, 31.176382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.639999, 34.207615, 31.194380>,  <43.242889, 34.245079, 31.224377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.639999, 34.207615, 31.194380> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074660, -0.007032, 0.997184,
		-0.093926, -0.995579, 0.000012,
		0.992776, -0.093662, -0.074990,
		43.937832, 34.179516, 31.171883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.450520, 33.632442, 31.665476>,  <43.242889, 34.245079, 31.224377>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.450520, 33.632442, 31.665476> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.792805, 33.831795, 31.609800>,  <43.998177, 33.951405, 31.576395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.792805, 33.831795, 31.609800>,  <43.450520, 33.632442, 31.665476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.792805, 33.831795, 31.609800> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125116, 0.061724, 0.990220,
		0.502098, -0.864758, -0.009537,
		0.855712, 0.498381, -0.139187,
		44.049519, 33.981308, 31.568045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.964512, 33.332390, 32.195190>,  <43.450520, 33.632442, 31.665476>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.964512, 33.332390, 32.195190> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.088989, 33.693058, 32.075092>,  <44.163677, 33.909458, 32.003033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.088989, 33.693058, 32.075092>,  <43.964512, 33.332390, 32.195190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.088989, 33.693058, 32.075092> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227171, 0.236199, 0.944777,
		0.922795, -0.362218, -0.131329,
		0.311196, 0.901669, -0.300248,
		44.182346, 33.963558, 31.985018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.596783, 33.545807, 32.623009>,  <43.964512, 33.332390, 32.195190>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.596783, 33.545807, 32.623009> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.444736, 33.889526, 32.486122>,  <44.353508, 34.095760, 32.403988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.444736, 33.889526, 32.486122>,  <44.596783, 33.545807, 32.623009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.444736, 33.889526, 32.486122> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032295, 0.357435, 0.933379,
		0.924376, 0.365843, -0.108115,
		-0.380114, 0.859302, -0.342219,
		44.330704, 34.147316, 32.383457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.902214, 34.059792, 32.964668>,  <44.596783, 33.545807, 32.623009>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.902214, 34.059792, 32.964668> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.573120, 34.252876, 32.844604>,  <44.375664, 34.368729, 32.772564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.573120, 34.252876, 32.844604>,  <44.902214, 34.059792, 32.964668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.573120, 34.252876, 32.844604> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015379, 0.546768, 0.837143,
		0.568220, 0.684129, -0.457267,
		-0.822733, 0.482714, -0.300163,
		44.326302, 34.397690, 32.754555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.937988, 34.672375, 33.346996>,  <44.902214, 34.059792, 32.964668>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.937988, 34.672375, 33.346996> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.561115, 34.678772, 33.213108>,  <44.334991, 34.682610, 33.132774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.561115, 34.678772, 33.213108>,  <44.937988, 34.672375, 33.346996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.561115, 34.678772, 33.213108> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299485, 0.407942, 0.862491,
		0.150339, 0.912868, -0.379567,
		-0.942182, 0.015992, -0.334720,
		44.278461, 34.683571, 33.112694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.686066, 35.324314, 33.586784>,  <44.937988, 34.672375, 33.346996>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.686066, 35.324314, 33.586784> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.365959, 35.097992, 33.507343>,  <44.173897, 34.962200, 33.459679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.365959, 35.097992, 33.507343>,  <44.686066, 35.324314, 33.586784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.365959, 35.097992, 33.507343> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492682, 0.431613, 0.755629,
		-0.341817, 0.702551, -0.624166,
		-0.800266, -0.565802, -0.198601,
		44.125881, 34.928253, 33.447762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.379807, 35.869457, 33.170269>,  <44.686066, 35.324314, 33.586784>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.379807, 35.869457, 33.170269> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.223564, 36.235310, 33.128555>,  <44.129818, 36.454823, 33.103527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.223564, 36.235310, 33.128555>,  <44.379807, 35.869457, 33.170269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.223564, 36.235310, 33.128555> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406791, 0.069876, -0.910845,
		-0.825800, -0.398207, -0.399357,
		-0.390610, 0.914630, -0.104283,
		44.106380, 36.509697, 33.097271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.141342, 35.949421, 32.539616>,  <44.379807, 35.869457, 33.170269>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.141342, 35.949421, 32.539616> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.231773, 36.309303, 32.688969>,  <44.286034, 36.525234, 32.778580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.231773, 36.309303, 32.688969>,  <44.141342, 35.949421, 32.539616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.231773, 36.309303, 32.688969> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385956, 0.269206, -0.882364,
		-0.894386, 0.343596, -0.286384,
		0.226081, 0.899705, 0.373387,
		44.299599, 36.579216, 32.800983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.772511, 36.518589, 32.127514>,  <44.141342, 35.949421, 32.539616>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.772511, 36.518589, 32.127514> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.116142, 36.639427, 32.292789>,  <44.322319, 36.711929, 32.391956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.116142, 36.639427, 32.292789>,  <43.772511, 36.518589, 32.127514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.116142, 36.639427, 32.292789> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282652, 0.393018, -0.875011,
		-0.426726, 0.868491, 0.252246,
		0.859077, 0.302092, 0.413192,
		44.373867, 36.730053, 32.416748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.772282, 37.274063, 31.980766>,  <43.772511, 36.518589, 32.127514>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.772282, 37.274063, 31.980766> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.159241, 37.187599, 32.033562>,  <44.391415, 37.135723, 32.065239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.159241, 37.187599, 32.033562>,  <43.772282, 37.274063, 31.980766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.159241, 37.187599, 32.033562> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194302, 0.299146, -0.934215,
		0.162453, 0.929402, 0.331393,
		0.967396, -0.216157, 0.131987,
		44.449459, 37.122753, 32.073158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.220749, 37.877998, 31.808910>,  <43.772282, 37.274063, 31.980766>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.220749, 37.877998, 31.808910> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.447174, 37.548328, 31.801970>,  <44.583031, 37.350525, 31.797804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.447174, 37.548328, 31.801970>,  <44.220749, 37.877998, 31.808910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.447174, 37.548328, 31.801970> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355697, 0.263185, -0.896779,
		0.743672, 0.501464, 0.442138,
		0.566066, -0.824177, -0.017354,
		44.616993, 37.301075, 31.796762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.054417, 38.042992, 31.557274>,  <44.220749, 37.877998, 31.808910>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.054417, 38.042992, 31.557274> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.940826, 37.672432, 31.458361>,  <44.872673, 37.450096, 31.399014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.940826, 37.672432, 31.458361>,  <45.054417, 38.042992, 31.557274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.940826, 37.672432, 31.458361> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425536, 0.109342, -0.898311,
		0.859231, -0.360324, 0.363165,
		-0.283974, -0.926397, -0.247281,
		44.855633, 37.394512, 31.384176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.615536, 37.755005, 31.098368>,  <45.054417, 38.042992, 31.557274>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.615536, 37.755005, 31.098368> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.313938, 37.500225, 31.034136>,  <45.132980, 37.347359, 30.995596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.313938, 37.500225, 31.034136>,  <45.615536, 37.755005, 31.098368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.313938, 37.500225, 31.034136> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345485, -0.176614, -0.921655,
		0.558689, -0.750400, 0.353223,
		-0.753994, -0.636951, -0.160580,
		45.087738, 37.309139, 30.985962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.881538, 37.081932, 31.033968>,  <45.615536, 37.755005, 31.098368>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.881538, 37.081932, 31.033968> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.523876, 37.040150, 30.859810>,  <45.309277, 37.015079, 30.755316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.523876, 37.040150, 30.859810>,  <45.881538, 37.081932, 31.033968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.523876, 37.040150, 30.859810> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442742, -0.351269, -0.824979,
		-0.066770, -0.930430, 0.360336,
		-0.894159, -0.104452, -0.435395,
		45.255627, 37.008816, 30.729191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.868721, 36.337589, 30.702282>,  <45.881538, 37.081932, 31.033968>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.868721, 36.337589, 30.702282> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.600777, 36.582317, 30.534012>,  <45.440010, 36.729153, 30.433050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.600777, 36.582317, 30.534012>,  <45.868721, 36.337589, 30.702282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.600777, 36.582317, 30.534012> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312262, -0.281893, -0.907210,
		-0.673632, -0.739064, -0.002219,
		-0.669860, 0.611818, -0.420673,
		45.399818, 36.765862, 30.407810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.563065, 35.985798, 30.133131>,  <45.868721, 36.337589, 30.702282>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.563065, 35.985798, 30.133131> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.451561, 36.361130, 30.051315>,  <45.384659, 36.586327, 30.002226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.451561, 36.361130, 30.051315>,  <45.563065, 35.985798, 30.133131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.451561, 36.361130, 30.051315> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071234, -0.192191, -0.978769,
		-0.957715, -0.287413, -0.013265,
		-0.278762, 0.938326, -0.204537,
		45.367931, 36.642628, 29.989954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.063095, 35.923492, 29.594851>,  <45.563065, 35.985798, 30.133131>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.063095, 35.923492, 29.594851> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.262474, 36.270107, 29.584517>,  <45.382103, 36.478077, 29.578316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.262474, 36.270107, 29.584517>,  <45.063095, 35.923492, 29.594851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.262474, 36.270107, 29.584517> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310117, -0.206056, -0.928099,
		-0.809551, 0.454601, -0.371435,
		0.498452, 0.866532, -0.025833,
		45.412010, 36.530067, 29.576767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.916042, 36.073997, 28.902842>,  <45.063095, 35.923492, 29.594851>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.916042, 36.073997, 28.902842> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.203705, 36.327251, 29.017351>,  <45.376301, 36.479206, 29.086058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.203705, 36.327251, 29.017351>,  <44.916042, 36.073997, 28.902842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.203705, 36.327251, 29.017351> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381315, -0.015186, -0.924321,
		-0.580875, 0.773890, -0.252346,
		0.719154, 0.633138, 0.286275,
		45.419453, 36.517193, 29.103233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.949509, 36.572678, 28.305336>,  <44.916042, 36.073997, 28.902842>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.949509, 36.572678, 28.305336> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.284966, 36.570263, 28.523195>,  <45.486240, 36.568813, 28.653912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.284966, 36.570263, 28.523195>,  <44.949509, 36.572678, 28.305336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.284966, 36.570263, 28.523195> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544593, 0.027427, -0.838252,
		-0.009876, 0.999606, 0.026290,
		0.838642, -0.006039, 0.544649,
		45.536560, 36.568451, 28.686590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.414742, 37.014744, 27.962627>,  <44.949509, 36.572678, 28.305336>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.414742, 37.014744, 27.962627> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.640972, 36.782402, 28.196798>,  <45.776711, 36.642998, 28.337301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.640972, 36.782402, 28.196798>,  <45.414742, 37.014744, 27.962627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.640972, 36.782402, 28.196798> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594330, -0.205057, -0.777640,
		0.571744, 0.787754, 0.229244,
		0.565580, -0.580857, 0.585426,
		45.810646, 36.608147, 28.372427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.107964, 37.133862, 27.710581>,  <45.414742, 37.014744, 27.962627>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.107964, 37.133862, 27.710581> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.145027, 36.781651, 27.896521>,  <46.167263, 36.570324, 28.008085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.145027, 36.781651, 27.896521>,  <46.107964, 37.133862, 27.710581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.145027, 36.781651, 27.896521> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542108, -0.346987, -0.765322,
		0.835185, 0.322911, 0.445191,
		0.092656, -0.880527, 0.464851,
		46.172825, 36.517494, 28.035976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.811520, 37.082268, 27.740696>,  <46.107964, 37.133862, 27.710581>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.811520, 37.082268, 27.740696> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.640743, 36.721886, 27.771673>,  <46.538277, 36.505657, 27.790260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.640743, 36.721886, 27.771673>,  <46.811520, 37.082268, 27.740696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.640743, 36.721886, 27.771673> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676900, -0.375201, -0.633270,
		0.599606, -0.217947, 0.770047,
		-0.426942, -0.900957, 0.077445,
		46.512661, 36.451599, 27.794907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.300411, 36.672581, 27.486013>,  <46.811520, 37.082268, 27.740696>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.300411, 36.672581, 27.486013> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.989437, 36.421223, 27.496672>,  <46.802853, 36.270409, 27.503067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.989437, 36.421223, 27.496672>,  <47.300411, 36.672581, 27.486013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.989437, 36.421223, 27.496672> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279430, -0.383037, -0.880455,
		0.563481, -0.677053, 0.473381,
		-0.777437, -0.628397, 0.026645,
		46.756207, 36.232704, 27.504665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.600700, 36.056908, 27.374506>,  <47.300411, 36.672581, 27.486013>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.600700, 36.056908, 27.374506> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.214268, 36.012058, 27.281450>,  <46.982410, 35.985149, 27.225616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.214268, 36.012058, 27.281450>,  <47.600700, 36.056908, 27.374506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.214268, 36.012058, 27.281450> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257186, -0.335925, -0.906096,
		0.023448, -0.935191, 0.353367,
		-0.966077, -0.112127, -0.232641,
		46.924446, 35.978420, 27.211658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.537903, 35.366665, 27.032906>,  <47.600700, 36.056908, 27.374506>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.537903, 35.366665, 27.032906> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.225624, 35.585171, 26.911507>,  <47.038258, 35.716274, 26.838667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.225624, 35.585171, 26.911507>,  <47.537903, 35.366665, 27.032906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.225624, 35.585171, 26.911507> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019315, -0.464338, -0.885448,
		-0.624615, -0.697126, 0.351955,
		-0.780694, 0.546266, -0.303497,
		46.991417, 35.749050, 26.820457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.084873, 34.825798, 26.647961>,  <47.537903, 35.366665, 27.032906>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.084873, 34.825798, 26.647961> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.983440, 35.197033, 26.538893>,  <46.922581, 35.419773, 26.473452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.983440, 35.197033, 26.538893>,  <47.084873, 34.825798, 26.647961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.983440, 35.197033, 26.538893> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010217, -0.279299, -0.960150,
		-0.967260, -0.246263, 0.061343,
		-0.253582, 0.928088, -0.272670,
		46.907364, 35.475460, 26.457092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.556049, 34.695835, 26.152882>,  <47.084873, 34.825798, 26.647961>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.556049, 34.695835, 26.152882> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.657806, 35.074562, 26.074062>,  <46.718861, 35.301796, 26.026772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.657806, 35.074562, 26.074062>,  <46.556049, 34.695835, 26.152882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.657806, 35.074562, 26.074062> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180336, -0.246619, -0.952186,
		-0.950139, 0.206695, -0.233482,
		0.254394, 0.946814, -0.197048,
		46.734123, 35.358604, 26.014948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.867336, 37.086861, 40.279087> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.510685, 36.910252, 40.319183>,  <38.296692, 36.804287, 40.343243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.510685, 36.910252, 40.319183>,  <38.867336, 37.086861, 40.279087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.510685, 36.910252, 40.319183> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274945, -0.703925, -0.654900,
		0.359719, -0.556368, 0.749037,
		-0.891632, -0.441524, 0.100245,
		38.243195, 36.777794, 40.349258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.986965, 36.422268, 40.216526>,  <38.867336, 37.086861, 40.279087>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.986965, 36.422268, 40.216526> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598652, 36.450157, 40.124680>,  <38.365665, 36.466892, 40.069572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598652, 36.450157, 40.124680>,  <38.986965, 36.422268, 40.216526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.598652, 36.450157, 40.124680> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157680, -0.535948, -0.829395,
		-0.180892, -0.841367, 0.509293,
		-0.970780, 0.069726, -0.229616,
		38.307419, 36.471073, 40.055794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.897167, 35.848228, 39.863312>,  <38.986965, 36.422268, 40.216526>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.897167, 35.848228, 39.863312> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.585556, 36.072929, 39.751930>,  <38.398590, 36.207752, 39.685101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.585556, 36.072929, 39.751930>,  <38.897167, 35.848228, 39.863312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.585556, 36.072929, 39.751930> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007451, -0.452386, -0.891791,
		-0.626940, -0.692659, 0.356609,
		-0.779032, 0.561757, -0.278458,
		38.351845, 36.241455, 39.668392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.421547, 35.388462, 39.470078>,  <38.897167, 35.848228, 39.863312>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.421547, 35.388462, 39.470078> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304466, 35.758324, 39.372639>,  <38.234219, 35.980240, 39.314175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304466, 35.758324, 39.372639>,  <38.421547, 35.388462, 39.470078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.304466, 35.758324, 39.372639> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129342, -0.290700, -0.948032,
		-0.947416, -0.245981, 0.204684,
		-0.292699, 0.924655, -0.243598,
		38.216656, 36.035721, 39.299561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.725674, 35.271511, 39.146229>,  <38.421547, 35.388462, 39.470078>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.725674, 35.271511, 39.146229> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.876507, 35.622368, 39.027283>,  <37.967007, 35.832882, 38.955914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.876507, 35.622368, 39.027283>,  <37.725674, 35.271511, 39.146229>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.876507, 35.622368, 39.027283> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261465, -0.207189, -0.942714,
		-0.888505, 0.433236, 0.151214,
		0.377087, 0.877143, -0.297365,
		37.989632, 35.885509, 38.938072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279621, 35.459549, 38.625389>,  <37.725674, 35.271511, 39.146229>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.279621, 35.459549, 38.625389> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.601334, 35.690964, 38.571095>,  <37.794361, 35.829815, 38.538517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.601334, 35.690964, 38.571095>,  <37.279621, 35.459549, 38.625389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.601334, 35.690964, 38.571095> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116582, -0.070367, -0.990685,
		-0.582702, 0.812614, 0.010853,
		0.804281, 0.578539, -0.135740,
		37.842617, 35.864525, 38.530373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.185951, 35.810921, 38.003452>,  <37.279621, 35.459549, 38.625389>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.185951, 35.810921, 38.003452> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.571789, 35.902966, 38.054985>,  <37.803291, 35.958195, 38.085903>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.571789, 35.902966, 38.054985>,  <37.185951, 35.810921, 38.003452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.571789, 35.902966, 38.054985> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168494, -0.161943, -0.972309,
		-0.202880, 0.959594, -0.194983,
		0.964598, 0.230115, 0.128831,
		37.861168, 35.972000, 38.093636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.320934, 36.251904, 37.376442>,  <37.185951, 35.810921, 38.003452>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.320934, 36.251904, 37.376442> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.623573, 36.033474, 37.520309>,  <37.805157, 35.902416, 37.606628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.623573, 36.033474, 37.520309>,  <37.320934, 36.251904, 37.376442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.623573, 36.033474, 37.520309> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217345, -0.308752, -0.925977,
		0.616701, 0.778764, -0.114915,
		0.756598, -0.546075, 0.359668,
		37.850552, 35.869652, 37.628208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.869102, 36.400238, 36.884682>,  <37.320934, 36.251904, 37.376442>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.869102, 36.400238, 36.884682> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.943012, 36.053650, 37.070190>,  <37.987358, 35.845695, 37.181496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.943012, 36.053650, 37.070190>,  <37.869102, 36.400238, 36.884682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.943012, 36.053650, 37.070190> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251191, -0.414584, -0.874656,
		0.950138, 0.278105, 0.141047,
		0.184771, -0.866474, 0.463770,
		37.998444, 35.793709, 37.209320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.561356, 36.160583, 36.697250>,  <37.869102, 36.400238, 36.884682>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.561356, 36.160583, 36.697250> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.393772, 35.828453, 36.844238>,  <38.293221, 35.629177, 36.932430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.393772, 35.828453, 36.844238>,  <38.561356, 36.160583, 36.697250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.393772, 35.828453, 36.844238> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252919, -0.495399, -0.831031,
		0.872069, -0.255229, 0.417557,
		-0.418960, -0.830324, 0.367470,
		38.268085, 35.579357, 36.954479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.058022, 35.656315, 36.609734>,  <38.561356, 36.160583, 36.697250>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.058022, 35.656315, 36.609734> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.699738, 35.487865, 36.666821>,  <38.484768, 35.386795, 36.701073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.699738, 35.487865, 36.666821>,  <39.058022, 35.656315, 36.609734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.699738, 35.487865, 36.666821> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046674, -0.408245, -0.911678,
		0.442192, -0.809934, 0.385323,
		-0.895705, -0.421121, 0.142720,
		38.431026, 35.361530, 36.709637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.112930, 35.020309, 36.287022>,  <39.058022, 35.656315, 36.609734>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.112930, 35.020309, 36.287022> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.725945, 35.121498, 36.288456>,  <38.493752, 35.182213, 36.289314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.725945, 35.121498, 36.288456>,  <39.112930, 35.020309, 36.287022>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.725945, 35.121498, 36.288456> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125342, -0.466963, -0.875349,
		-0.219764, -0.847320, 0.483479,
		-0.967467, 0.252970, 0.003583,
		38.435703, 35.197388, 36.289532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.505733, 35.547405, 35.710289>,  <39.112930, 35.020309, 36.287022>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.505733, 35.547405, 35.710289> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877327, 35.693188, 35.684490>,  <40.100285, 35.780659, 35.669010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877327, 35.693188, 35.684490>,  <39.505733, 35.547405, 35.710289>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.877327, 35.693188, 35.684490> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275112, 0.796530, 0.538381,
		0.247590, -0.482403, 0.840230,
		0.928984, 0.364455, -0.064498,
		40.156021, 35.802525, 35.665142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.873302, 35.720535, 36.404007>,  <39.505733, 35.547405, 35.710289>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.873302, 35.720535, 36.404007> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.984875, 35.971272, 36.113003>,  <40.051819, 36.121712, 35.938400>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.984875, 35.971272, 36.113003>,  <39.873302, 35.720535, 36.404007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.984875, 35.971272, 36.113003> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225032, 0.779147, 0.585056,
		0.933573, 0.000522, 0.358387,
		0.278931, 0.626841, -0.727508,
		40.068554, 36.159325, 35.894749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.554939, 35.638954, 36.459473>,  <39.873302, 35.720535, 36.404007>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.554939, 35.638954, 36.459473> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.851917, 35.371128, 36.450966>,  <41.030106, 35.210434, 36.445862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.851917, 35.371128, 36.450966>,  <40.554939, 35.638954, 36.459473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.851917, 35.371128, 36.450966> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035591, -0.071123, 0.996832,
		-0.668956, -0.739341, -0.076636,
		0.742449, -0.669564, -0.021265,
		41.074654, 35.170258, 36.444588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.291531, 35.057720, 36.780327>,  <40.554939, 35.638954, 36.459473>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.291531, 35.057720, 36.780327> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.680077, 34.965054, 36.801392>,  <40.913204, 34.909454, 36.814030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.680077, 34.965054, 36.801392>,  <40.291531, 35.057720, 36.780327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.680077, 34.965054, 36.801392> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097980, -0.188720, 0.977131,
		-0.216442, -0.954311, -0.206016,
		0.971367, -0.231677, 0.052656,
		40.971489, 34.895554, 36.817188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.397606, 34.340248, 37.138355>,  <40.291531, 35.057720, 36.780327>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.397606, 34.340248, 37.138355> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.736412, 34.547348, 37.186523>,  <40.939693, 34.671608, 37.215424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.736412, 34.547348, 37.186523>,  <40.397606, 34.340248, 37.138355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.736412, 34.547348, 37.186523> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039332, -0.164881, 0.985529,
		0.530114, -0.839493, -0.119292,
		0.847014, 0.517751, 0.120425,
		40.990517, 34.702675, 37.222652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.569794, 34.093277, 37.748878>,  <40.397606, 34.340248, 37.138355>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.569794, 34.093277, 37.748878> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.811031, 34.411270, 37.722729>,  <40.955776, 34.602066, 37.707039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.811031, 34.411270, 37.722729>,  <40.569794, 34.093277, 37.748878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.811031, 34.411270, 37.722729> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153492, -0.035234, 0.987522,
		0.782760, -0.605606, -0.143273,
		0.603098, 0.794984, -0.065376,
		40.991959, 34.649765, 37.703117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.174515, 33.886044, 38.090202>,  <40.569794, 34.093277, 37.748878>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.174515, 33.886044, 38.090202> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.141121, 34.284649, 38.090008>,  <41.121086, 34.523811, 38.089890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.141121, 34.284649, 38.090008>,  <41.174515, 33.886044, 38.090202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.141121, 34.284649, 38.090008> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123159, 0.010801, 0.992328,
		0.988869, 0.082781, -0.123631,
		-0.083481, 0.996509, -0.000486,
		41.116077, 34.583603, 38.089863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.651749, 34.092957, 38.599266>,  <41.174515, 33.886044, 38.090202>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.651749, 34.092957, 38.599266> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.432899, 34.422028, 38.537476>,  <41.301590, 34.619469, 38.500401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.432899, 34.422028, 38.537476>,  <41.651749, 34.092957, 38.599266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.432899, 34.422028, 38.537476> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030522, 0.204028, 0.978489,
		0.836498, 0.530635, -0.136737,
		-0.547119, 0.822678, -0.154474,
		41.268764, 34.668831, 38.491135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.959949, 34.678413, 38.912159>,  <41.651749, 34.092957, 38.599266>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.959949, 34.678413, 38.912159> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.565201, 34.741520, 38.898308>,  <41.328354, 34.779385, 38.889996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.565201, 34.741520, 38.898308>,  <41.959949, 34.678413, 38.912159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.565201, 34.741520, 38.898308> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013673, 0.295240, 0.955325,
		0.160941, 0.942308, -0.293520,
		-0.986869, 0.157764, -0.034632,
		41.269138, 34.788849, 38.887917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.783390, 35.098927, 39.409859>,  <41.959949, 34.678413, 38.912159>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.783390, 35.098927, 39.409859> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.404610, 34.997612, 39.330727>,  <41.177341, 34.936825, 39.283249>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.404610, 34.997612, 39.330727>,  <41.783390, 35.098927, 39.409859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.404610, 34.997612, 39.330727> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244442, 0.167983, 0.955002,
		-0.208653, 0.952696, -0.220984,
		-0.946949, -0.253282, -0.197829,
		41.120525, 34.921627, 39.271378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.427620, 35.555229, 39.891598>,  <41.783390, 35.098927, 39.409859>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.427620, 35.555229, 39.891598> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.146069, 35.288338, 39.794144>,  <40.977139, 35.128204, 39.735672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.146069, 35.288338, 39.794144>,  <41.427620, 35.555229, 39.891598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.146069, 35.288338, 39.794144> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380556, 0.064611, 0.922498,
		-0.599773, 0.742048, -0.299395,
		-0.703882, -0.667226, -0.243639,
		40.934902, 35.088169, 39.721050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.783260, 35.844364, 39.957176>,  <41.427620, 35.555229, 39.891598>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.783260, 35.844364, 39.957176> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.716892, 35.451389, 39.991344>,  <40.677071, 35.215607, 40.011845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.716892, 35.451389, 39.991344>,  <40.783260, 35.844364, 39.957176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.716892, 35.451389, 39.991344> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463689, 0.154170, 0.872482,
		-0.870323, 0.105156, -0.481123,
		-0.165921, -0.982433, 0.085418,
		40.667114, 35.156658, 40.016972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.154621, 35.839073, 40.211285>,  <40.783260, 35.844364, 39.957176>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.154621, 35.839073, 40.211285> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.302143, 35.479038, 40.304081>,  <40.390656, 35.263016, 40.359760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.302143, 35.479038, 40.304081>,  <40.154621, 35.839073, 40.211285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.302143, 35.479038, 40.304081> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288145, 0.126578, 0.949184,
		-0.883716, -0.416912, -0.212674,
		0.368807, -0.900090, 0.231990,
		40.412785, 35.209011, 40.373676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.685307, 35.521423, 40.641846>,  <40.154621, 35.839073, 40.211285>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.685307, 35.521423, 40.641846> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.041786, 35.351997, 40.706779>,  <40.255676, 35.250343, 40.745739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.041786, 35.351997, 40.706779>,  <39.685307, 35.521423, 40.641846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.041786, 35.351997, 40.706779> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050089, 0.263791, 0.963278,
		-0.450833, -0.866606, 0.213875,
		0.891201, -0.423565, 0.162333,
		40.309147, 35.224926, 40.755478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.625481, 35.072052, 41.306988>,  <39.685307, 35.521423, 40.641846>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.625481, 35.072052, 41.306988> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.014072, 35.162609, 41.278767>,  <40.247227, 35.216942, 41.261833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.014072, 35.162609, 41.278767>,  <39.625481, 35.072052, 41.306988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.014072, 35.162609, 41.278767> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018273, 0.225163, 0.974150,
		0.236439, -0.947651, 0.214603,
		0.971475, 0.226405, -0.070554,
		40.305515, 35.230526, 41.257603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.884872, 34.861656, 41.885498>,  <39.625481, 35.072052, 41.306988>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.884872, 34.861656, 41.885498> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.158207, 35.118622, 41.746723>,  <40.322208, 35.272800, 41.663460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.158207, 35.118622, 41.746723>,  <39.884872, 34.861656, 41.885498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.158207, 35.118622, 41.746723> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108331, 0.380713, 0.918326,
		0.722027, -0.665105, 0.190560,
		0.683332, 0.642412, -0.346936,
		40.363205, 35.311344, 41.642643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.739368, 34.083038, 42.124672>,  <39.884872, 34.861656, 41.885498>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.739368, 34.083038, 42.124672> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.376335, 33.990231, 42.264652>,  <39.158516, 33.934547, 42.348640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.376335, 33.990231, 42.264652>,  <39.739368, 34.083038, 42.124672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.376335, 33.990231, 42.264652> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338951, -0.087040, -0.936769,
		0.247805, -0.968810, 0.000354,
		-0.907582, -0.232016, 0.349948,
		39.104061, 33.920628, 42.369637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.519669, 33.397881, 41.860107>,  <39.739368, 34.083038, 42.124672>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.519669, 33.397881, 41.860107> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.159668, 33.526699, 41.977604>,  <38.943668, 33.603989, 42.048100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.159668, 33.526699, 41.977604>,  <39.519669, 33.397881, 41.860107>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.159668, 33.526699, 41.977604> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403341, -0.359807, -0.841341,
		-0.165260, -0.875686, 0.453721,
		-0.900003, 0.322044, 0.293738,
		38.889668, 33.623314, 42.065723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.116562, 32.830986, 41.803989>,  <39.519669, 33.397881, 41.860107>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.116562, 32.830986, 41.803989> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.903831, 33.168777, 41.778652>,  <38.776192, 33.371452, 41.763451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.903831, 33.168777, 41.778652>,  <39.116562, 32.830986, 41.803989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.903831, 33.168777, 41.778652> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481110, -0.362845, -0.798045,
		-0.696916, -0.393950, 0.599259,
		-0.531828, 0.844480, -0.063339,
		38.744282, 33.422123, 41.759651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.500431, 32.634521, 41.505142>,  <39.116562, 32.830986, 41.803989>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.500431, 32.634521, 41.505142> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.467102, 33.029381, 41.450592>,  <38.447105, 33.266296, 41.417862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.467102, 33.029381, 41.450592>,  <38.500431, 32.634521, 41.505142>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.467102, 33.029381, 41.450592> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229037, -0.152160, -0.961452,
		-0.969845, -0.048874, 0.238771,
		-0.083321, 0.987147, -0.136377,
		38.442104, 33.325523, 41.409679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.825005, 32.762951, 41.195816>,  <38.500431, 32.634521, 41.505142>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.825005, 32.762951, 41.195816> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.995861, 33.113525, 41.106903>,  <38.098377, 33.323868, 41.053555>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.995861, 33.113525, 41.106903>,  <37.825005, 32.762951, 41.195816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.995861, 33.113525, 41.106903> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353119, -0.064618, -0.933344,
		-0.832379, 0.477166, 0.281884,
		0.427145, 0.876435, -0.222283,
		38.124004, 33.376457, 41.040218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.366222, 33.076515, 40.669716>,  <37.825005, 32.762951, 41.195816>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.366222, 33.076515, 40.669716> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.708942, 33.280312, 40.637932>,  <37.914574, 33.402592, 40.618862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.708942, 33.280312, 40.637932>,  <37.366222, 33.076515, 40.669716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.708942, 33.280312, 40.637932> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117846, 0.043447, -0.992081,
		-0.502007, 0.859377, 0.097267,
		0.856797, 0.509494, -0.079463,
		37.965981, 33.433159, 40.614094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290287, 33.660088, 40.212292>,  <37.366222, 33.076515, 40.669716>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.290287, 33.660088, 40.212292> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.683609, 33.595222, 40.179264>,  <37.919601, 33.556305, 40.159447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.683609, 33.595222, 40.179264>,  <37.290287, 33.660088, 40.212292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.683609, 33.595222, 40.179264> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075597, 0.048732, -0.995947,
		0.165529, 0.985560, 0.035660,
		0.983303, -0.162163, -0.082572,
		37.978600, 33.546574, 40.154491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.544632, 34.077980, 39.705296>,  <37.290287, 33.660088, 40.212292>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.544632, 34.077980, 39.705296> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.822334, 33.791229, 39.730892>,  <37.988956, 33.619179, 39.746250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.822334, 33.791229, 39.730892>,  <37.544632, 34.077980, 39.705296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.822334, 33.791229, 39.730892> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149916, 0.057079, -0.987050,
		0.703938, 0.694861, 0.147099,
		0.694259, -0.716875, 0.063990,
		38.030613, 33.576168, 39.750088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.158611, 34.325218, 39.487213>,  <37.544632, 34.077980, 39.705296>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.158611, 34.325218, 39.487213> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.172977, 33.928329, 39.439537>,  <38.181599, 33.690197, 39.410931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.172977, 33.928329, 39.439537>,  <38.158611, 34.325218, 39.487213>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.172977, 33.928329, 39.439537> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052381, 0.120974, -0.991273,
		0.997981, 0.029359, 0.056318,
		0.035916, -0.992221, -0.119192,
		38.183754, 33.630665, 39.403778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.638477, 34.245743, 39.000607>,  <38.158611, 34.325218, 39.487213>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.638477, 34.245743, 39.000607> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.425762, 33.907669, 38.979225>,  <38.298134, 33.704823, 38.966396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.425762, 33.907669, 38.979225>,  <38.638477, 34.245743, 39.000607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.425762, 33.907669, 38.979225> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035823, 0.085518, -0.995692,
		0.846118, -0.527585, -0.075755,
		-0.531791, -0.845187, -0.053458,
		38.266224, 33.654114, 38.963188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.035049, 33.827110, 38.484318>,  <38.638477, 34.245743, 39.000607>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.035049, 33.827110, 38.484318> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.675934, 33.651112, 38.492172>,  <38.460464, 33.545513, 38.496887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.675934, 33.651112, 38.492172>,  <39.035049, 33.827110, 38.484318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.675934, 33.651112, 38.492172> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066900, 0.092159, -0.993494,
		0.435321, -0.893259, -0.112175,
		-0.897786, -0.439993, 0.019641,
		38.406597, 33.519115, 38.498066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.938953, 33.285305, 37.893955>,  <39.035049, 33.827110, 38.484318>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.938953, 33.285305, 37.893955> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.560802, 33.355862, 38.003605>,  <38.333912, 33.398197, 38.069393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.560802, 33.355862, 38.003605>,  <38.938953, 33.285305, 37.893955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.560802, 33.355862, 38.003605> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262656, 0.085814, -0.961066,
		-0.193051, -0.980572, -0.034795,
		-0.945380, 0.176396, 0.274120,
		38.277187, 33.408779, 38.085842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.911701, 33.910603, 46.463047> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.591991, 34.109718, 46.328365>,  <39.400166, 34.229187, 46.247555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.591991, 34.109718, 46.328365>,  <39.911701, 33.910603, 46.463047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.591991, 34.109718, 46.328365> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016341, -0.542060, -0.840181,
		-0.600750, -0.677034, 0.425118,
		-0.799270, 0.497791, -0.336706,
		39.352211, 34.259056, 46.227352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.514835, 33.431896, 46.092201>,  <39.911701, 33.910603, 46.463047>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.514835, 33.431896, 46.092201> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.360966, 33.765488, 45.933960>,  <39.268642, 33.965641, 45.839016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.360966, 33.765488, 45.933960>,  <39.514835, 33.431896, 46.092201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.360966, 33.765488, 45.933960> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074095, -0.455102, -0.887351,
		-0.920074, -0.312029, 0.236860,
		-0.384675, 0.833979, -0.395607,
		39.245564, 34.015682, 45.815277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.019909, 33.288746, 45.615597>,  <39.514835, 33.431896, 46.092201>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.019909, 33.288746, 45.615597> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.101433, 33.657803, 45.484638>,  <39.150349, 33.879238, 45.406063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.101433, 33.657803, 45.484638>,  <39.019909, 33.288746, 45.615597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.101433, 33.657803, 45.484638> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261776, -0.270876, -0.926336,
		-0.943363, 0.274505, 0.186318,
		0.203814, 0.922645, -0.327393,
		39.162579, 33.934597, 45.386421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636772, 33.379620, 45.074467>,  <39.019909, 33.288746, 45.615597>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.636772, 33.379620, 45.074467> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.899776, 33.678356, 45.034668>,  <39.057579, 33.857597, 45.010788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.899776, 33.678356, 45.034668>,  <38.636772, 33.379620, 45.074467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.899776, 33.678356, 45.034668> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005116, -0.136477, -0.990630,
		-0.753427, 0.650842, -0.093556,
		0.657512, 0.746846, -0.099496,
		39.097031, 33.902409, 45.004818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.312279, 33.861832, 44.657326>,  <38.636772, 33.379620, 45.074467>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.312279, 33.861832, 44.657326> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.701408, 33.945534, 44.617664>,  <38.934887, 33.995754, 44.593868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.701408, 33.945534, 44.617664>,  <38.312279, 33.861832, 44.657326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.701408, 33.945534, 44.617664> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085886, -0.071587, -0.993730,
		-0.215042, 0.975237, -0.051669,
		0.972821, 0.209256, -0.099153,
		38.993256, 34.008312, 44.587917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304291, 34.363354, 44.176510>,  <38.312279, 33.861832, 44.657326>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.304291, 34.363354, 44.176510> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.686268, 34.245552, 44.161797>,  <38.915455, 34.174873, 44.152969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.686268, 34.245552, 44.161797>,  <38.304291, 34.363354, 44.176510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.686268, 34.245552, 44.161797> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073276, -0.113852, -0.990792,
		0.287602, 0.948845, -0.130302,
		0.954943, -0.294502, -0.036784,
		38.972752, 34.157200, 44.150761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.710678, 34.795631, 43.750793>,  <38.304291, 34.363354, 44.176510>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.710678, 34.795631, 43.750793> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.923264, 34.456856, 43.744450>,  <39.050816, 34.253590, 43.740643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.923264, 34.456856, 43.744450>,  <38.710678, 34.795631, 43.750793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.923264, 34.456856, 43.744450> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121233, -0.057521, -0.990956,
		0.838364, 0.528575, -0.133247,
		0.531459, -0.846936, -0.015857,
		39.082703, 34.202774, 43.739693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.198635, 34.874977, 43.192268>,  <38.710678, 34.795631, 43.750793>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.198635, 34.874977, 43.192268> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.158794, 34.482807, 43.260204>,  <39.134888, 34.247505, 43.300968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.158794, 34.482807, 43.260204>,  <39.198635, 34.874977, 43.192268>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.158794, 34.482807, 43.260204> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064345, -0.163986, -0.984362,
		0.992944, -0.108976, -0.046752,
		-0.099605, -0.980425, 0.169842,
		39.128914, 34.188679, 43.311157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.709972, 34.591492, 42.671791>,  <39.198635, 34.874977, 43.192268>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.709972, 34.591492, 42.671791> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.418587, 34.331158, 42.757351>,  <39.243755, 34.174957, 42.808689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.418587, 34.331158, 42.757351>,  <39.709972, 34.591492, 42.671791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.418587, 34.331158, 42.757351> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084900, -0.224058, -0.970871,
		0.679800, -0.725408, 0.107964,
		-0.728467, -0.650832, 0.213902,
		39.200047, 34.135910, 42.821522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.442413, 34.929176, 42.436119>,  <39.709972, 34.591492, 42.671791>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.442413, 34.929176, 42.436119> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.508972, 35.253574, 42.211761>,  <40.548908, 35.448215, 42.077148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.508972, 35.253574, 42.211761>,  <40.442413, 34.929176, 42.436119>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.508972, 35.253574, 42.211761> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191078, 0.531518, 0.825214,
		0.967369, -0.244484, -0.066522,
		0.166394, 0.810997, -0.560889,
		40.558891, 35.496872, 42.043495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.979210, 35.130127, 42.740063>,  <40.442413, 34.929176, 42.436119>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.979210, 35.130127, 42.740063> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.872181, 35.465370, 42.549915>,  <40.807964, 35.666515, 42.435825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.872181, 35.465370, 42.549915>,  <40.979210, 35.130127, 42.740063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.872181, 35.465370, 42.549915> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168320, 0.526428, 0.833392,
		0.948722, 0.142980, -0.281929,
		-0.267573, 0.838111, -0.475367,
		40.791908, 35.716805, 42.407307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.470036, 35.696655, 42.932865>,  <40.979210, 35.130127, 42.740063>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.470036, 35.696655, 42.932865> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.146332, 35.910175, 42.834766>,  <40.952110, 36.038288, 42.775906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.146332, 35.910175, 42.834766>,  <41.470036, 35.696655, 42.932865>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.146332, 35.910175, 42.834766> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132289, 0.572359, 0.809262,
		0.572359, 0.622461, -0.533805,
		-0.809262, 0.533805, -0.245250,
		40.903553, 36.070316, 42.761192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.664230, 36.442379, 43.070435>,  <41.470036, 35.696655, 42.932865>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.664230, 36.442379, 43.070435> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.265327, 36.468784, 43.057034>,  <41.025986, 36.484627, 43.048992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.265327, 36.468784, 43.057034>,  <41.664230, 36.442379, 43.070435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.265327, 36.468784, 43.057034> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021975, 0.696101, 0.717608,
		0.070694, 0.714902, -0.695641,
		-0.997256, 0.066017, -0.033501,
		40.966152, 36.488590, 43.046982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.541073, 37.162899, 43.122910>,  <41.664230, 36.442379, 43.070435>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.541073, 37.162899, 43.122910> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.195541, 36.974346, 43.194008>,  <40.988224, 36.861214, 43.236668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.195541, 36.974346, 43.194008>,  <41.541073, 37.162899, 43.122910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.195541, 36.974346, 43.194008> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225487, 0.677280, 0.700319,
		-0.450504, 0.564877, -0.691346,
		-0.863830, -0.471386, 0.177745,
		40.936394, 36.832932, 43.247330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.132565, 37.688133, 43.441513>,  <41.541073, 37.162899, 43.122910>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.132565, 37.688133, 43.441513> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.935848, 37.350101, 43.525410>,  <40.817818, 37.147282, 43.575748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.935848, 37.350101, 43.525410>,  <41.132565, 37.688133, 43.441513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.935848, 37.350101, 43.525410> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348524, 0.411801, 0.841992,
		-0.797920, 0.340979, -0.497048,
		-0.491787, -0.845076, 0.209744,
		40.788311, 37.096581, 43.588333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.496143, 37.843666, 43.523468>,  <41.132565, 37.688133, 43.441513>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.496143, 37.843666, 43.523468> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.574917, 37.513756, 43.735493>,  <40.622181, 37.315811, 43.862709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.574917, 37.513756, 43.735493>,  <40.496143, 37.843666, 43.523468>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.574917, 37.513756, 43.735493> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340188, 0.449576, 0.825926,
		-0.919505, -0.342975, -0.192040,
		0.196935, -0.824773, 0.530063,
		40.633999, 37.266323, 43.894512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.788757, 37.749561, 43.985165>,  <40.496143, 37.843666, 43.523468>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.788757, 37.749561, 43.985165> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.123775, 37.572918, 44.113850>,  <40.324787, 37.466934, 44.191059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.123775, 37.572918, 44.113850>,  <39.788757, 37.749561, 43.985165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.123775, 37.572918, 44.113850> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127115, 0.415170, 0.900820,
		-0.531372, -0.795373, 0.291590,
		0.837547, -0.441605, 0.321713,
		40.375038, 37.440437, 44.210365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.701881, 37.667889, 44.660553>,  <39.788757, 37.749561, 43.985165>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.701881, 37.667889, 44.660553> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.082169, 37.544167, 44.669163>,  <40.310341, 37.469933, 44.674328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.082169, 37.544167, 44.669163>,  <39.701881, 37.667889, 44.660553>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.082169, 37.544167, 44.669163> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063930, 0.263486, 0.962542,
		-0.303388, -0.913732, 0.270275,
		0.950720, -0.309303, 0.021524,
		40.367386, 37.451374, 44.675621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.733521, 37.171375, 45.280544>,  <39.701881, 37.667889, 44.660553>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.733521, 37.171375, 45.280544> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.087151, 37.325821, 45.175217>,  <40.299328, 37.418488, 45.112022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.087151, 37.325821, 45.175217>,  <39.733521, 37.171375, 45.280544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.087151, 37.325821, 45.175217> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164389, 0.270501, 0.948581,
		0.437484, -0.881900, 0.175670,
		0.884073, 0.386111, -0.263315,
		40.352371, 37.441654, 45.096222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.321098, 36.874447, 45.751087>,  <39.733521, 37.171375, 45.280544>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.321098, 36.874447, 45.751087> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.462292, 37.203491, 45.572777>,  <40.547009, 37.400917, 45.465790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.462292, 37.203491, 45.572777>,  <40.321098, 36.874447, 45.751087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.462292, 37.203491, 45.572777> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287645, 0.357956, 0.888329,
		0.890318, -0.441787, -0.110269,
		0.352980, 0.822613, -0.445772,
		40.568188, 37.450275, 45.439045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.920223, 36.848267, 46.023735>,  <40.321098, 36.874447, 45.751087>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.920223, 36.848267, 46.023735> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.842964, 37.215473, 45.885204>,  <40.796608, 37.435799, 45.802086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.842964, 37.215473, 45.885204>,  <40.920223, 36.848267, 46.023735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.842964, 37.215473, 45.885204> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098356, 0.369313, 0.924085,
		0.976228, 0.144417, -0.161623,
		-0.193143, 0.918015, -0.346330,
		40.785023, 37.490879, 45.781307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.428448, 37.374645, 46.402531>,  <40.920223, 36.848267, 46.023735>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.428448, 37.374645, 46.402531> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.136192, 37.605728, 46.256973>,  <40.960838, 37.744377, 46.169640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.136192, 37.605728, 46.256973>,  <41.428448, 37.374645, 46.402531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.136192, 37.605728, 46.256973> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062905, 0.473750, 0.878410,
		0.679864, 0.664688, -0.309798,
		-0.730635, 0.577712, -0.363898,
		40.917000, 37.779041, 46.147804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.639145, 38.043823, 46.551285>,  <41.428448, 37.374645, 46.402531>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.639145, 38.043823, 46.551285> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.244534, 38.053959, 46.486645>,  <41.007767, 38.060040, 46.447861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.244534, 38.053959, 46.486645>,  <41.639145, 38.043823, 46.551285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.244534, 38.053959, 46.486645> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101713, 0.678696, 0.727342,
		0.128110, 0.733982, -0.666977,
		-0.986531, 0.025339, -0.161603,
		40.948574, 38.061562, 46.438164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<30.646198, 36.773727, 46.475780> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.022934, 36.641281, 46.498764>,  <31.248976, 36.561813, 46.512554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.022934, 36.641281, 46.498764>,  <30.646198, 36.773727, 46.475780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.022934, 36.641281, 46.498764> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006887, -0.151926, -0.988368,
		0.335992, 0.931280, -0.140810,
		0.941840, -0.331114, 0.057460,
		31.305487, 36.541946, 46.516003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.096212, 37.156494, 46.028946>,  <30.646198, 36.773727, 46.475780>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.096212, 37.156494, 46.028946> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.285297, 36.807247, 46.076630>,  <31.398748, 36.597698, 46.105240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.285297, 36.807247, 46.076630>,  <31.096212, 37.156494, 46.028946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.285297, 36.807247, 46.076630> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173878, -0.040201, -0.983946,
		0.863891, 0.485853, 0.132812,
		0.472715, -0.873115, 0.119208,
		31.427113, 36.545311, 46.112392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.727268, 37.214661, 45.619495>,  <31.096212, 37.156494, 46.028946>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.727268, 37.214661, 45.619495> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.709906, 36.820759, 45.686878>,  <31.699488, 36.584419, 45.727310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.709906, 36.820759, 45.686878>,  <31.727268, 37.214661, 45.619495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.709906, 36.820759, 45.686878> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237510, -0.173954, -0.955682,
		0.970415, -0.001471, 0.241439,
		-0.043405, -0.984753, 0.168459,
		31.696884, 36.525333, 45.737415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.395767, 36.894436, 45.477779>,  <31.727268, 37.214661, 45.619495>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.395767, 36.894436, 45.477779> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.119156, 36.609985, 45.427044>,  <31.953188, 36.439316, 45.396603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.119156, 36.609985, 45.427044>,  <32.395767, 36.894436, 45.477779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.119156, 36.609985, 45.427044> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376844, -0.205362, -0.903225,
		0.616258, -0.672405, 0.409997,
		-0.691531, -0.711125, -0.126836,
		31.911697, 36.396648, 45.388992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.718189, 36.377502, 45.201160>,  <32.395767, 36.894436, 45.477779>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.718189, 36.377502, 45.201160> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.351078, 36.257511, 45.097092>,  <32.130810, 36.185516, 45.034649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.351078, 36.257511, 45.097092>,  <32.718189, 36.377502, 45.201160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.351078, 36.257511, 45.097092> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381432, -0.483852, -0.787653,
		0.110394, -0.822131, 0.558492,
		-0.917782, -0.299979, -0.260172,
		32.075745, 36.167519, 45.019039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.844707, 35.793655, 44.819202>,  <32.718189, 36.377502, 45.201160>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.844707, 35.793655, 44.819202> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.462955, 35.861729, 44.721062>,  <32.233906, 35.902573, 44.662178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.462955, 35.861729, 44.721062>,  <32.844707, 35.793655, 44.819202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.462955, 35.861729, 44.721062> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134784, -0.487693, -0.862548,
		-0.266449, -0.856267, 0.442506,
		-0.954378, 0.170182, -0.245356,
		32.176643, 35.912785, 44.647453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.579433, 35.211090, 44.666157>,  <32.844707, 35.793655, 44.819202>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.579433, 35.211090, 44.666157> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.380646, 35.505959, 44.483032>,  <32.261372, 35.682880, 44.373158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.380646, 35.505959, 44.483032>,  <32.579433, 35.211090, 44.666157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.380646, 35.505959, 44.483032> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145159, -0.449519, -0.881398,
		-0.855539, -0.504486, 0.116391,
		-0.496973, 0.737175, -0.457811,
		32.231552, 35.727112, 44.345688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.310299, 34.951977, 44.030273>,  <32.579433, 35.211090, 44.666157>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.310299, 34.951977, 44.030273> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.228977, 35.333241, 43.940693>,  <32.180183, 35.562000, 43.886944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.228977, 35.333241, 43.940693>,  <32.310299, 34.951977, 44.030273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.228977, 35.333241, 43.940693> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003921, -0.227931, -0.973669,
		-0.979108, -0.198827, 0.042602,
		-0.203302, 0.953161, -0.223949,
		32.167988, 35.619190, 43.873508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.827929, 34.920418, 43.509617>,  <32.310299, 34.951977, 44.030273>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.827929, 34.920418, 43.509617> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.975712, 35.291492, 43.488087>,  <32.064381, 35.514137, 43.475170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.975712, 35.291492, 43.488087>,  <31.827929, 34.920418, 43.509617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.975712, 35.291492, 43.488087> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084860, -0.091360, -0.992195,
		-0.925364, 0.362010, -0.112478,
		0.369460, 0.927687, -0.053821,
		32.086552, 35.569798, 43.471939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.357542, 35.261345, 43.111713>,  <31.827929, 34.920418, 43.509617>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.357542, 35.261345, 43.111713> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.713791, 35.440929, 43.082794>,  <31.927540, 35.548679, 43.065441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.713791, 35.440929, 43.082794>,  <31.357542, 35.261345, 43.111713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.713791, 35.440929, 43.082794> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133191, 0.105513, -0.985458,
		-0.434806, 0.887299, 0.153769,
		0.890620, 0.448964, -0.072302,
		31.980976, 35.575619, 43.061104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.289188, 35.859303, 42.608101>,  <31.357542, 35.261345, 43.111713>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.289188, 35.859303, 42.608101> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.683983, 35.809372, 42.648643>,  <31.920860, 35.779415, 42.672970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.683983, 35.809372, 42.648643>,  <31.289188, 35.859303, 42.608101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.683983, 35.809372, 42.648643> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094138, -0.062455, -0.993598,
		0.130358, 0.990211, -0.049892,
		0.986988, -0.124827, 0.101358,
		31.980080, 35.771923, 42.679050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.694311, 36.282959, 42.091084>,  <31.289188, 35.859303, 42.608101>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.694311, 36.282959, 42.091084> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.965887, 36.007095, 42.191807>,  <32.128834, 35.841576, 42.252239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.965887, 36.007095, 42.191807>,  <31.694311, 36.282959, 42.091084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.965887, 36.007095, 42.191807> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219852, -0.136257, -0.965970,
		0.700502, 0.711198, 0.059113,
		0.678941, -0.689661, 0.251807,
		32.169571, 35.800198, 42.267349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.190155, 36.510536, 41.708702>,  <31.694311, 36.282959, 42.091084>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.190155, 36.510536, 41.708702> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.248299, 36.122837, 41.788136>,  <32.283184, 35.890217, 41.835796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.248299, 36.122837, 41.788136>,  <32.190155, 36.510536, 41.708702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.248299, 36.122837, 41.788136> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188013, -0.169996, -0.967343,
		0.971350, 0.177948, 0.157520,
		0.145359, -0.969245, 0.198582,
		32.291904, 35.832062, 41.847710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.762932, 36.313580, 41.338974>,  <32.190155, 36.510536, 41.708702>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.762932, 36.313580, 41.338974> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.572590, 35.967537, 41.402405>,  <32.458385, 35.759911, 41.440464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.572590, 35.967537, 41.402405>,  <32.762932, 36.313580, 41.338974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.572590, 35.967537, 41.402405> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198326, -0.281202, -0.938931,
		0.856870, -0.415348, 0.305386,
		-0.475858, -0.865108, 0.158579,
		32.429832, 35.708004, 41.449978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.475651, 36.590183, 41.261784>,  <32.762932, 36.313580, 41.338974>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.475651, 36.590183, 41.261784> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.764954, 36.757385, 41.041904>,  <33.938534, 36.857708, 40.909977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.764954, 36.757385, 41.041904>,  <33.475651, 36.590183, 41.261784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.764954, 36.757385, 41.041904> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290564, 0.537903, 0.791349,
		0.626474, -0.732071, 0.267584,
		0.723258, 0.418009, -0.549696,
		33.981930, 36.882790, 40.876995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.160877, 36.301254, 41.447392>,  <33.475651, 36.590183, 41.261784>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.160877, 36.301254, 41.447392> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.208630, 36.659866, 41.276752>,  <34.237282, 36.875034, 41.174370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.208630, 36.659866, 41.276752>,  <34.160877, 36.301254, 41.447392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.208630, 36.659866, 41.276752> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325318, 0.370626, 0.869945,
		0.938038, -0.242635, -0.247412,
		0.119382, 0.896530, -0.426594,
		34.244446, 36.928825, 41.148773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.762394, 36.631069, 41.853436>,  <34.160877, 36.301254, 41.447392>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.762394, 36.631069, 41.853436> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.577381, 36.910511, 41.635075>,  <34.466373, 37.078178, 41.504059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.577381, 36.910511, 41.635075>,  <34.762394, 36.631069, 41.853436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.577381, 36.910511, 41.635075> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072154, 0.643344, 0.762170,
		0.883660, 0.313141, -0.347977,
		-0.462535, 0.698607, -0.545902,
		34.438622, 37.120094, 41.471302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.242989, 37.221172, 41.846882>,  <34.762394, 36.631069, 41.853436>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.242989, 37.221172, 41.846882> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.858585, 37.318142, 41.793678>,  <34.627941, 37.376324, 41.761757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.858585, 37.318142, 41.793678>,  <35.242989, 37.221172, 41.846882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.858585, 37.318142, 41.793678> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028858, 0.566317, 0.823682,
		0.275004, 0.787728, -0.551232,
		-0.961010, 0.242423, -0.133008,
		34.570282, 37.390869, 41.753777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.141857, 37.907604, 42.005768>,  <35.242989, 37.221172, 41.846882>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.141857, 37.907604, 42.005768> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.763725, 37.778381, 42.023621>,  <34.536846, 37.700848, 42.034332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.763725, 37.778381, 42.023621>,  <35.141857, 37.907604, 42.005768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.763725, 37.778381, 42.023621> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108996, 0.441956, 0.890390,
		-0.307367, 0.836846, -0.453005,
		-0.945328, -0.323052, 0.044630,
		34.480125, 37.681465, 42.037010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.861092, 38.411896, 42.469791>,  <35.141857, 37.907604, 42.005768>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.861092, 38.411896, 42.469791> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.583851, 38.123688, 42.461243>,  <34.417507, 37.950764, 42.456112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.583851, 38.123688, 42.461243>,  <34.861092, 38.411896, 42.469791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.583851, 38.123688, 42.461243> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342346, 0.302937, 0.889397,
		-0.634353, 0.623764, -0.456635,
		-0.693106, -0.720519, -0.021374,
		34.375919, 37.907532, 42.454830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.326218, 38.781090, 42.760296>,  <34.861092, 38.411896, 42.469791>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.326218, 38.781090, 42.760296> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.226494, 38.394722, 42.788147>,  <34.166660, 38.162903, 42.804859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.226494, 38.394722, 42.788147>,  <34.326218, 38.781090, 42.760296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.226494, 38.394722, 42.788147> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318316, 0.149638, 0.936100,
		-0.914613, 0.211219, -0.344774,
		-0.249314, -0.965917, 0.069626,
		34.151699, 38.104946, 42.809036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.644543, 38.711952, 43.040768>,  <34.326218, 38.781090, 42.760296>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.644543, 38.711952, 43.040768> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.797440, 38.346577, 43.096649>,  <33.889179, 38.127350, 43.130177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.797440, 38.346577, 43.096649>,  <33.644543, 38.711952, 43.040768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.797440, 38.346577, 43.096649> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351249, -0.003793, 0.936274,
		-0.854702, -0.406953, -0.322295,
		0.382242, -0.913441, 0.139700,
		33.912113, 38.072544, 43.138557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.187401, 38.309338, 43.483829>,  <33.644543, 38.711952, 43.040768>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.187401, 38.309338, 43.483829> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.534569, 38.116753, 43.532669>,  <33.742870, 38.001202, 43.561974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.534569, 38.116753, 43.532669>,  <33.187401, 38.309338, 43.483829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.534569, 38.116753, 43.532669> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133107, 0.011370, 0.991036,
		-0.478534, -0.876393, -0.054218,
		0.867921, -0.481462, 0.122095,
		33.794945, 37.972313, 43.569298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.097160, 37.797962, 44.148605>,  <33.187401, 38.309338, 43.483829>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.097160, 37.797962, 44.148605> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.485065, 37.870434, 44.083199>,  <33.717808, 37.913918, 44.043953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.485065, 37.870434, 44.083199>,  <33.097160, 37.797962, 44.148605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.485065, 37.870434, 44.083199> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137561, 0.147653, 0.979426,
		0.201597, -0.972302, 0.118265,
		0.969761, 0.181181, -0.163518,
		33.775993, 37.924786, 44.034142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.456158, 37.376820, 44.682446>,  <33.097160, 37.797962, 44.148605>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.456158, 37.376820, 44.682446> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.773418, 37.596485, 44.577122>,  <33.963776, 37.728283, 44.513927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.773418, 37.596485, 44.577122>,  <33.456158, 37.376820, 44.682446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.773418, 37.596485, 44.577122> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237882, 0.118648, 0.964020,
		0.560647, -0.827249, -0.036531,
		0.793150, 0.549165, -0.263307,
		34.011364, 37.761234, 44.498131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.146549, 37.157825, 45.036934>,  <33.456158, 37.376820, 44.682446>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.146549, 37.157825, 45.036934> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.174519, 37.543034, 44.932861>,  <34.191299, 37.774158, 44.870419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.174519, 37.543034, 44.932861>,  <34.146549, 37.157825, 45.036934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.174519, 37.543034, 44.932861> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156237, 0.247030, 0.956330,
		0.985241, -0.107524, -0.133185,
		0.069927, 0.963024, -0.260183,
		34.195496, 37.831940, 44.854805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.775364, 37.459209, 45.421455>,  <34.146549, 37.157825, 45.036934>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.775364, 37.459209, 45.421455> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.555027, 37.768913, 45.296814>,  <34.422825, 37.954735, 45.222031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.555027, 37.768913, 45.296814>,  <34.775364, 37.459209, 45.421455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.555027, 37.768913, 45.296814> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181439, 0.475517, 0.860792,
		0.814647, 0.417626, -0.402416,
		-0.550845, 0.774256, -0.311605,
		34.389774, 38.001190, 45.203331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.118690, 38.044662, 45.670307>,  <34.775364, 37.459209, 45.421455>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.118690, 38.044662, 45.670307> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.738712, 38.157658, 45.616943>,  <34.510723, 38.225456, 45.584927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.738712, 38.157658, 45.616943>,  <35.118690, 38.044662, 45.670307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.738712, 38.157658, 45.616943> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012681, 0.391821, 0.919954,
		0.312151, 0.875600, -0.368628,
		-0.949948, 0.282490, -0.133411,
		34.453728, 38.242405, 45.576920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.763504, 38.345760, 45.231602>,  <35.118690, 38.044662, 45.670307>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.763504, 38.345760, 45.231602> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.157677, 38.329987, 45.297771>,  <36.394180, 38.320522, 45.337471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.157677, 38.329987, 45.297771>,  <35.763504, 38.345760, 45.231602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.157677, 38.329987, 45.297771> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141420, -0.350221, -0.925930,
		0.094444, 0.935837, -0.339544,
		0.985434, -0.039430, 0.165422,
		36.453308, 38.318157, 45.347397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.983101, 38.564625, 44.576691>,  <35.763504, 38.345760, 45.231602>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.983101, 38.564625, 44.576691> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.272186, 38.373783, 44.776714>,  <36.445637, 38.259277, 44.896729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.272186, 38.373783, 44.776714>,  <35.983101, 38.564625, 44.576691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.272186, 38.373783, 44.776714> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364190, -0.352044, -0.862224,
		0.587414, 0.805256, -0.080670,
		0.722711, -0.477103, 0.500062,
		36.488998, 38.230652, 44.926731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.422592, 38.635113, 44.127285>,  <35.983101, 38.564625, 44.576691>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.422592, 38.635113, 44.127285> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.631634, 38.379971, 44.353569>,  <36.757061, 38.226887, 44.489338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.631634, 38.379971, 44.353569>,  <36.422592, 38.635113, 44.127285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.631634, 38.379971, 44.353569> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569224, -0.232934, -0.788496,
		0.634716, 0.734089, 0.241347,
		0.522609, -0.637851, 0.565708,
		36.788418, 38.188614, 44.523281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.056862, 38.779449, 43.953762>,  <36.422592, 38.635113, 44.127285>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.056862, 38.779449, 43.953762> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.040607, 38.414761, 44.117275>,  <37.030857, 38.195946, 44.215385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.040607, 38.414761, 44.117275>,  <37.056862, 38.779449, 43.953762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.040607, 38.414761, 44.117275> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467432, -0.378939, -0.798694,
		0.883095, 0.158628, 0.441566,
		-0.040631, -0.911725, 0.408787,
		37.028419, 38.141243, 44.239910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.687435, 38.618359, 43.927441>,  <37.056862, 38.779449, 43.953762>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.687435, 38.618359, 43.927441> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.473694, 38.281300, 43.953999>,  <37.345448, 38.079063, 43.969933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.473694, 38.281300, 43.953999>,  <37.687435, 38.618359, 43.927441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.473694, 38.281300, 43.953999> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489409, -0.372485, -0.788501,
		0.689159, -0.388846, 0.611439,
		-0.534358, -0.842647, 0.066397,
		37.313385, 38.028507, 43.973919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.144791, 37.981445, 43.896389>,  <37.687435, 38.618359, 43.927441>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.144791, 37.981445, 43.896389> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.774612, 37.884228, 43.780128>,  <37.552505, 37.825897, 43.710373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.774612, 37.884228, 43.780128>,  <38.144791, 37.981445, 43.896389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.774612, 37.884228, 43.780128> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343261, -0.213135, -0.914738,
		0.160376, -0.946310, 0.280673,
		-0.925446, -0.243046, -0.290650,
		37.496979, 37.811314, 43.692932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218643, 37.533173, 43.430569>,  <38.144791, 37.981445, 43.896389>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.218643, 37.533173, 43.430569> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.838676, 37.619926, 43.340584>,  <37.610695, 37.671978, 43.286591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.838676, 37.619926, 43.340584>,  <38.218643, 37.533173, 43.430569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.838676, 37.619926, 43.340584> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200552, -0.128961, -0.971158,
		-0.239644, -0.967641, 0.079006,
		-0.949921, 0.216887, -0.224967,
		37.553699, 37.684994, 43.273094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991428, 36.980961, 43.036850>,  <38.218643, 37.533173, 43.430569>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.991428, 36.980961, 43.036850> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.768505, 37.300976, 42.947998>,  <37.634750, 37.492985, 42.894688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.768505, 37.300976, 42.947998>,  <37.991428, 36.980961, 43.036850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.768505, 37.300976, 42.947998> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160924, -0.158377, -0.974177,
		-0.814561, -0.578664, -0.040481,
		-0.557310, 0.800040, -0.222129,
		37.601311, 37.540989, 42.881359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.408554, 36.791496, 42.541100>,  <37.991428, 36.980961, 43.036850>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.408554, 36.791496, 42.541100> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.500835, 37.176178, 42.481899>,  <37.556206, 37.406986, 42.446381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.500835, 37.176178, 42.481899>,  <37.408554, 36.791496, 42.541100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.500835, 37.176178, 42.481899> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070087, -0.168132, -0.983269,
		-0.970496, 0.216473, -0.106192,
		0.230706, 0.961702, -0.148000,
		37.570045, 37.464687, 42.437500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.943981, 37.029640, 42.114643>,  <37.408554, 36.791496, 42.541100>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.943981, 37.029640, 42.114643> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.259693, 37.270226, 42.065186>,  <37.449120, 37.414577, 42.035511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.259693, 37.270226, 42.065186>,  <36.943981, 37.029640, 42.114643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.259693, 37.270226, 42.065186> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013239, -0.184641, -0.982717,
		-0.613895, 0.777272, -0.137771,
		0.789277, 0.601461, -0.123640,
		37.496475, 37.450665, 42.028095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763187, 37.414719, 41.542030>,  <36.943981, 37.029640, 42.114643>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.763187, 37.414719, 41.542030> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.160240, 37.433941, 41.586540>,  <37.398472, 37.445473, 41.613247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.160240, 37.433941, 41.586540>,  <36.763187, 37.414719, 41.542030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.160240, 37.433941, 41.586540> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118088, -0.176571, -0.977179,
		-0.027311, 0.983114, -0.180944,
		0.992627, 0.048055, 0.111272,
		37.458027, 37.448357, 41.619923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.068920, 37.630844, 40.885475>,  <36.763187, 37.414719, 41.542030>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.068920, 37.630844, 40.885475> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.393948, 37.499622, 41.078190>,  <37.588963, 37.420891, 41.193817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.393948, 37.499622, 41.078190>,  <37.068920, 37.630844, 40.885475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.393948, 37.499622, 41.078190> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319115, -0.441304, -0.838699,
		0.487754, 0.835243, -0.253900,
		0.812565, -0.328056, 0.481786,
		37.637718, 37.401207, 41.222725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.765480, 37.820305, 40.503120>,  <37.068920, 37.630844, 40.885475>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.765480, 37.820305, 40.503120> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.824852, 37.497375, 40.731575>,  <37.860474, 37.303619, 40.868649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.824852, 37.497375, 40.731575>,  <37.765480, 37.820305, 40.503120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.824852, 37.497375, 40.731575> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315091, -0.508825, -0.801133,
		0.937383, 0.298870, 0.178857,
		0.148428, -0.807325, 0.571135,
		37.869381, 37.255177, 40.902916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364326, 37.594479, 40.174183>,  <37.765480, 37.820305, 40.503120>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.364326, 37.594479, 40.174183> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.210224, 37.296280, 40.391739>,  <38.117764, 37.117363, 40.522274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.210224, 37.296280, 40.391739>,  <38.364326, 37.594479, 40.174183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.210224, 37.296280, 40.391739> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311034, -0.659799, -0.684049,
		0.868813, -0.094365, 0.486065,
		-0.385256, -0.745493, 0.543891,
		38.094646, 37.072632, 40.554905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.432146, 30.724812, 27.865183> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.825670, 30.653149, 27.867098>,  <28.061785, 30.610151, 27.868246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.825670, 30.653149, 27.867098>,  <27.432146, 30.724812, 27.865183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.825670, 30.653149, 27.867098> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023517, 0.155524, 0.987552,
		-0.177674, -0.971450, 0.157219,
		0.983808, -0.179160, 0.004787,
		28.120813, 30.599401, 27.868534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.493254, 30.259451, 28.295292>,  <27.432146, 30.724812, 27.865183>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.493254, 30.259451, 28.295292> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.851255, 30.434128, 28.258915>,  <28.066055, 30.538935, 28.237089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.851255, 30.434128, 28.258915>,  <27.493254, 30.259451, 28.295292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.851255, 30.434128, 28.258915> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046630, 0.111161, 0.992708,
		0.443618, -0.892716, 0.079127,
		0.895002, 0.436693, -0.090940,
		28.119757, 30.565136, 28.231632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.958361, 29.956940, 28.827993>,  <27.493254, 30.259451, 28.295292>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.958361, 29.956940, 28.827993> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.129152, 30.304768, 28.728765>,  <28.231627, 30.513464, 28.669230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.129152, 30.304768, 28.728765>,  <27.958361, 29.956940, 28.827993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.129152, 30.304768, 28.728765> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139942, 0.207486, 0.968177,
		0.893368, -0.448104, -0.033098,
		0.426977, 0.869570, -0.248069,
		28.257246, 30.565639, 28.654345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.485197, 30.050434, 29.360802>,  <27.958361, 29.956940, 28.827993>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.485197, 30.050434, 29.360802> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.442932, 30.412649, 29.196444>,  <28.417572, 30.629978, 29.097828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.442932, 30.412649, 29.196444>,  <28.485197, 30.050434, 29.360802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.442932, 30.412649, 29.196444> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093094, 0.420403, 0.902549,
		0.990035, 0.057115, -0.128721,
		-0.105664, 0.905538, -0.410896,
		28.411234, 30.684311, 29.073175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.009726, 30.443090, 29.700081>,  <28.485197, 30.050434, 29.360802>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.009726, 30.443090, 29.700081> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.713854, 30.678774, 29.570028>,  <28.536331, 30.820183, 29.491997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.713854, 30.678774, 29.570028>,  <29.009726, 30.443090, 29.700081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.713854, 30.678774, 29.570028> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097688, 0.384006, 0.918148,
		0.665831, 0.710897, -0.226483,
		-0.739680, 0.589207, -0.325129,
		28.491949, 30.855536, 29.472490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.121370, 30.977919, 30.088335>,  <29.009726, 30.443090, 29.700081>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.121370, 30.977919, 30.088335> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.758696, 31.057800, 29.939720>,  <28.541090, 31.105728, 29.850552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.758696, 31.057800, 29.939720>,  <29.121370, 30.977919, 30.088335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.758696, 31.057800, 29.939720> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267049, 0.410038, 0.872097,
		0.326503, 0.889937, -0.318445,
		-0.906686, 0.199702, -0.371536,
		28.486691, 31.117710, 29.828259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.023655, 31.638287, 30.259678>,  <29.121370, 30.977919, 30.088335>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.023655, 31.638287, 30.259678> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.653690, 31.498318, 30.200224>,  <28.431711, 31.414335, 30.164553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.653690, 31.498318, 30.200224>,  <29.023655, 31.638287, 30.259678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.653690, 31.498318, 30.200224> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325270, 0.525943, 0.785864,
		-0.196820, 0.775201, -0.600271,
		-0.924911, -0.349924, -0.148634,
		28.376217, 31.393341, 30.155634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.599646, 32.178463, 30.389362>,  <29.023655, 31.638287, 30.259678>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.599646, 32.178463, 30.389362> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.344833, 31.876316, 30.450821>,  <28.191946, 31.695028, 30.487696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.344833, 31.876316, 30.450821>,  <28.599646, 32.178463, 30.389362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.344833, 31.876316, 30.450821> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290663, 0.419999, 0.859718,
		-0.713936, 0.503010, -0.487111,
		-0.637033, -0.755369, 0.153646,
		28.153723, 31.649706, 30.496914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.014704, 32.484493, 30.624571>,  <28.599646, 32.178463, 30.389362>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.014704, 32.484493, 30.624571> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.023453, 32.104961, 30.750587>,  <28.028702, 31.877243, 30.826199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.023453, 32.104961, 30.750587>,  <28.014704, 32.484493, 30.624571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.023453, 32.104961, 30.750587> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188557, 0.305548, 0.933320,
		-0.981819, -0.079817, -0.172225,
		0.021871, -0.948825, 0.315042,
		28.030014, 31.820314, 30.845100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.509853, 32.488960, 31.089489>,  <28.014704, 32.484493, 30.624571>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.509853, 32.488960, 31.089489> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.667566, 32.133930, 31.184786>,  <27.762194, 31.920914, 31.241964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.667566, 32.133930, 31.184786>,  <27.509853, 32.488960, 31.089489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.667566, 32.133930, 31.184786> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160689, 0.188667, 0.968805,
		-0.904833, -0.420264, -0.068236,
		0.394280, -0.887571, 0.238244,
		27.785851, 31.867659, 31.256258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.061525, 32.330727, 31.500656>,  <27.509853, 32.488960, 31.089489>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.061525, 32.330727, 31.500656> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.377836, 32.102230, 31.588614>,  <27.567623, 31.965132, 31.641388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.377836, 32.102230, 31.588614>,  <27.061525, 32.330727, 31.500656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.377836, 32.102230, 31.588614> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070249, 0.272172, 0.959681,
		-0.608061, -0.774340, 0.175097,
		0.790776, -0.571244, 0.219894,
		27.615068, 31.930857, 31.654581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.845217, 31.987928, 32.059521>,  <27.061525, 32.330727, 31.500656>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.845217, 31.987928, 32.059521> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.244623, 31.979456, 32.079571>,  <27.484268, 31.974373, 32.091602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.244623, 31.979456, 32.079571>,  <26.845217, 31.987928, 32.059521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.244623, 31.979456, 32.079571> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043007, 0.257150, 0.965414,
		-0.033341, -0.966139, 0.255858,
		0.998518, -0.021184, 0.050125,
		27.544178, 31.973101, 32.094608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.986103, 31.530064, 32.537022>,  <26.845217, 31.987928, 32.059521>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.986103, 31.530064, 32.537022> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.315304, 31.757029, 32.526352>,  <27.512825, 31.893208, 32.519951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.315304, 31.757029, 32.526352>,  <26.986103, 31.530064, 32.537022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.315304, 31.757029, 32.526352> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020239, 0.076215, 0.996886,
		0.567676, -0.819900, 0.074209,
		0.823003, 0.567410, -0.026672,
		27.562204, 31.927252, 32.518349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.469702, 31.243366, 33.048092>,  <26.986103, 31.530064, 32.537022>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.469702, 31.243366, 33.048092> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.572071, 31.625572, 32.989445>,  <27.633493, 31.854895, 32.954258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.572071, 31.625572, 32.989445>,  <27.469702, 31.243366, 33.048092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.572071, 31.625572, 32.989445> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114857, 0.120536, 0.986042,
		0.959849, -0.269192, -0.078899,
		0.255925, 0.955514, -0.146615,
		27.648849, 31.912226, 32.945461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.026903, 31.352528, 33.585949>,  <27.469702, 31.243366, 33.048092>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.026903, 31.352528, 33.585949> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.893894, 31.708868, 33.462135>,  <27.814089, 31.922672, 33.387848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.893894, 31.708868, 33.462135>,  <28.026903, 31.352528, 33.585949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.893894, 31.708868, 33.462135> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007956, 0.330853, 0.943649,
		0.943062, 0.311320, -0.117103,
		-0.332521, 0.890851, -0.309538,
		27.794138, 31.976124, 33.369274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.483690, 31.838085, 33.897480>,  <28.026903, 31.352528, 33.585949>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.483690, 31.838085, 33.897480> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.150673, 32.039459, 33.805023>,  <27.950863, 32.160282, 33.749550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.150673, 32.039459, 33.805023>,  <28.483690, 31.838085, 33.897480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.150673, 32.039459, 33.805023> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017040, 0.440333, 0.897673,
		0.553699, 0.743412, -0.375174,
		-0.832543, 0.503433, -0.231144,
		27.900909, 32.190491, 33.735680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.556986, 32.428959, 34.178425>,  <28.483690, 31.838085, 33.897480>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.556986, 32.428959, 34.178425> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.163799, 32.447636, 34.107327>,  <27.927887, 32.458839, 34.064667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.163799, 32.447636, 34.107327>,  <28.556986, 32.428959, 34.178425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.163799, 32.447636, 34.107327> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142574, 0.416546, 0.897865,
		0.115961, 0.907915, -0.402795,
		-0.982968, 0.046689, -0.177748,
		27.868910, 32.461643, 34.054001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.413935, 33.018787, 34.413502>,  <28.556986, 32.428959, 34.178425>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.413935, 33.018787, 34.413502> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.082972, 32.794239, 34.407017>,  <27.884394, 32.659512, 34.403126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.082972, 32.794239, 34.407017>,  <28.413935, 33.018787, 34.413502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.082972, 32.794239, 34.407017> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339704, 0.477288, 0.810430,
		-0.447212, 0.676063, -0.585611,
		-0.827407, -0.561369, -0.016213,
		27.834749, 32.625828, 34.402153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.772587, 33.119324, 35.085087>,  <28.413935, 33.018787, 34.413502>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.772587, 33.119324, 35.085087> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.124998, 33.289070, 35.168713>,  <29.336445, 33.390919, 35.218887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.124998, 33.289070, 35.168713>,  <28.772587, 33.119324, 35.085087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.124998, 33.289070, 35.168713> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201800, 0.062565, -0.977426,
		-0.427865, 0.903327, -0.030515,
		0.881027, 0.424365, 0.209061,
		29.389307, 33.416378, 35.231430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.791796, 33.690907, 34.624329>,  <28.772587, 33.119324, 35.085087>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.791796, 33.690907, 34.624329> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.155188, 33.564957, 34.734249>,  <29.373222, 33.489388, 34.800201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.155188, 33.564957, 34.734249>,  <28.791796, 33.690907, 34.624329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.155188, 33.564957, 34.734249> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288956, -0.001815, -0.957341,
		0.301945, 0.949130, 0.089337,
		0.908479, -0.314879, 0.274804,
		29.427731, 33.470493, 34.816692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.148300, 33.938187, 34.098213>,  <28.791796, 33.690907, 34.624329>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.148300, 33.938187, 34.098213> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.382050, 33.650646, 34.248817>,  <29.522299, 33.478123, 34.339180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.382050, 33.650646, 34.248817>,  <29.148300, 33.938187, 34.098213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.382050, 33.650646, 34.248817> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311433, -0.229776, -0.922069,
		0.749345, 0.656090, 0.089600,
		0.584372, -0.718853, 0.376510,
		29.557362, 33.434990, 34.361771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.860975, 34.107658, 33.987465>,  <29.148300, 33.938187, 34.098213>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.860975, 34.107658, 33.987465> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.821791, 33.710270, 34.010872>,  <29.798281, 33.471836, 34.024918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.821791, 33.710270, 34.010872>,  <29.860975, 34.107658, 33.987465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.821791, 33.710270, 34.010872> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424456, -0.094894, -0.900462,
		0.900134, -0.063370, 0.430980,
		-0.097960, -0.993468, 0.058520,
		29.792402, 33.412228, 34.028427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.404518, 33.873680, 33.655727>,  <29.860975, 34.107658, 33.987465>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.404518, 33.873680, 33.655727> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.215548, 33.521149, 33.659267>,  <30.102165, 33.309631, 33.661392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.215548, 33.521149, 33.659267>,  <30.404518, 33.873680, 33.655727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.215548, 33.521149, 33.659267> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534849, -0.294657, -0.791905,
		0.700535, -0.369381, 0.610580,
		-0.472426, -0.881326, 0.008854,
		30.073820, 33.256752, 33.661922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.914791, 33.357925, 33.382843>,  <30.404518, 33.873680, 33.655727>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.914791, 33.357925, 33.382843> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.560093, 33.177113, 33.344154>,  <30.347275, 33.068626, 33.320942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.560093, 33.177113, 33.344154>,  <30.914791, 33.357925, 33.382843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.560093, 33.177113, 33.344154> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282344, -0.363948, -0.887594,
		0.366017, -0.814377, 0.450356,
		-0.886743, -0.452030, -0.096723,
		30.294069, 33.041504, 33.315136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.042835, 32.697964, 33.322353>,  <30.914791, 33.357925, 33.382843>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.042835, 32.697964, 33.322353> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.701912, 32.753437, 33.120625>,  <30.497358, 32.786720, 32.999588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.701912, 32.753437, 33.120625>,  <31.042835, 32.697964, 33.322353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.701912, 32.753437, 33.120625> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418319, -0.398075, -0.816422,
		-0.313978, -0.906810, 0.281271,
		-0.852307, 0.138677, -0.504323,
		30.446220, 32.795040, 32.969326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.895214, 32.094238, 32.985039>,  <31.042835, 32.697964, 33.322353>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.895214, 32.094238, 32.985039> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.672304, 32.365501, 32.793392>,  <30.538557, 32.528259, 32.678406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.672304, 32.365501, 32.793392>,  <30.895214, 32.094238, 32.985039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.672304, 32.365501, 32.793392> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148257, -0.486478, -0.861022,
		-0.816984, -0.550859, 0.170561,
		-0.557276, 0.678155, -0.479114,
		30.505121, 32.568947, 32.649658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.403440, 31.649605, 32.616039>,  <30.895214, 32.094238, 32.985039>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.403440, 31.649605, 32.616039> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.426630, 32.005043, 32.434036>,  <30.440544, 32.218307, 32.324833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.426630, 32.005043, 32.434036>,  <30.403440, 31.649605, 32.616039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.426630, 32.005043, 32.434036> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130280, -0.458614, -0.879034,
		-0.989781, -0.008319, -0.142354,
		0.057972, 0.888597, -0.455011,
		30.444021, 32.271622, 32.297531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.065042, 31.595972, 32.034805>,  <30.403440, 31.649605, 32.616039>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.065042, 31.595972, 32.034805> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.273046, 31.925558, 31.944767>,  <30.397848, 32.123310, 31.890743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.273046, 31.925558, 31.944767>,  <30.065042, 31.595972, 32.034805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.273046, 31.925558, 31.944767> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065449, -0.301194, -0.951314,
		-0.851649, 0.479961, -0.210551,
		0.520010, 0.823966, -0.225099,
		30.429050, 32.172749, 31.877237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.725348, 31.890314, 31.355972>,  <30.065042, 31.595972, 32.034805>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.725348, 31.890314, 31.355972> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.083145, 32.068855, 31.345762>,  <30.297823, 32.175980, 31.339636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.083145, 32.068855, 31.345762>,  <29.725348, 31.890314, 31.355972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.083145, 32.068855, 31.345762> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057515, -0.171505, -0.983503,
		-0.443365, 0.878269, -0.179082,
		0.894494, 0.446351, -0.025526,
		30.351494, 32.202759, 31.338104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.723413, 32.210419, 30.774015>,  <29.725348, 31.890314, 31.355972>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.723413, 32.210419, 30.774015> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.111195, 32.236469, 30.868603>,  <30.343864, 32.252098, 30.925354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.111195, 32.236469, 30.868603>,  <29.723413, 32.210419, 30.774015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.111195, 32.236469, 30.868603> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237364, -0.006292, -0.971400,
		-0.061775, 0.997857, -0.021558,
		0.969454, 0.065125, 0.236467,
		30.402031, 32.256008, 30.939543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.038780, 32.660160, 30.262466>,  <29.723413, 32.210419, 30.774015>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.038780, 32.660160, 30.262466> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.316776, 32.420258, 30.421104>,  <30.483574, 32.276318, 30.516287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.316776, 32.420258, 30.421104>,  <30.038780, 32.660160, 30.262466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.316776, 32.420258, 30.421104> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460802, -0.051894, -0.885985,
		0.551952, 0.798501, 0.240301,
		0.694990, -0.599753, 0.396594,
		30.525272, 32.240334, 30.540083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.747894, 32.726559, 29.897837>,  <30.038780, 32.660160, 30.262466>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.747894, 32.726559, 29.897837> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.758432, 32.375767, 30.089762>,  <30.764755, 32.165291, 30.204916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.758432, 32.375767, 30.089762>,  <30.747894, 32.726559, 29.897837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.758432, 32.375767, 30.089762> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251159, -0.458775, -0.852317,
		0.967587, 0.142963, 0.208174,
		0.026345, -0.876976, 0.479811,
		30.766336, 32.112675, 30.233706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.298609, 32.387188, 29.774075>,  <30.747894, 32.726559, 29.897837>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.298609, 32.387188, 29.774075> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.078262, 32.068130, 29.872301>,  <30.946054, 31.876696, 29.931238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.078262, 32.068130, 29.872301>,  <31.298609, 32.387188, 29.774075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.078262, 32.068130, 29.872301> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242857, -0.434704, -0.867210,
		0.798477, -0.418080, 0.433178,
		-0.550867, -0.797648, 0.245568,
		30.913002, 31.828836, 29.945971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.710058, 31.688570, 29.598585>,  <31.298609, 32.387188, 29.774075>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.710058, 31.688570, 29.598585> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.324604, 31.589834, 29.639534>,  <31.093332, 31.530592, 29.664103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.324604, 31.589834, 29.639534>,  <31.710058, 31.688570, 29.598585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.324604, 31.589834, 29.639534> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038149, -0.506240, -0.861548,
		0.264490, -0.826311, 0.497247,
		-0.963634, -0.246840, 0.102373,
		31.035515, 31.515781, 29.670246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.761442, 31.054703, 29.277620>,  <31.710058, 31.688570, 29.598585>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.761442, 31.054703, 29.277620> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.372978, 31.149837, 29.270866>,  <31.139900, 31.206919, 29.266815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.372978, 31.149837, 29.270866>,  <31.761442, 31.054703, 29.277620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.372978, 31.149837, 29.270866> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073853, -0.367378, -0.927135,
		-0.226709, -0.899148, 0.374347,
		-0.971159, 0.237836, -0.016883,
		31.081631, 31.221189, 29.265800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.388226, 30.514767, 28.890938>,  <31.761442, 31.054703, 29.277620>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.388226, 30.514767, 28.890938> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.137348, 30.825169, 28.864258>,  <30.986822, 31.011410, 28.848249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.137348, 30.825169, 28.864258>,  <31.388226, 30.514767, 28.890938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.137348, 30.825169, 28.864258> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068774, -0.140478, -0.987692,
		-0.775822, -0.614887, 0.141476,
		-0.627193, 0.776003, -0.066698,
		30.949190, 31.057970, 28.844248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.631380, 30.343277, 28.678820>,  <31.388226, 30.514767, 28.890938>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.631380, 30.343277, 28.678820> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.700384, 30.717319, 28.555002>,  <30.741787, 30.941744, 28.480711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.700384, 30.717319, 28.555002>,  <30.631380, 30.343277, 28.678820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.700384, 30.717319, 28.555002> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222934, -0.269037, -0.936974,
		-0.959448, 0.230646, 0.162055,
		0.172511, 0.935105, -0.309545,
		30.752138, 30.997850, 28.462139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.206827, 30.512859, 28.170515>,  <30.631380, 30.343277, 28.678820>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.206827, 30.512859, 28.170515> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.466936, 30.812380, 28.119219>,  <30.623001, 30.992092, 28.088442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.466936, 30.812380, 28.119219>,  <30.206827, 30.512859, 28.170515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.466936, 30.812380, 28.119219> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092809, -0.089239, -0.991677,
		-0.754011, 0.656761, 0.011465,
		0.650272, 0.748800, -0.128240,
		30.662018, 31.037020, 28.080748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.915874, 30.969193, 27.704018>,  <30.206827, 30.512859, 28.170515>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.915874, 30.969193, 27.704018> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.296574, 31.089548, 27.679871>,  <30.524992, 31.161762, 27.665382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.296574, 31.089548, 27.679871>,  <29.915874, 30.969193, 27.704018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.296574, 31.089548, 27.679871> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090167, 0.086147, -0.992194,
		-0.293341, 0.949760, 0.109120,
		0.951746, 0.300890, -0.060366,
		30.582098, 31.179815, 27.661760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.835880, 31.375162, 27.201057>,  <29.915874, 30.969193, 27.704018>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.835880, 31.375162, 27.201057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.231607, 31.316866, 27.199993>,  <30.469044, 31.281889, 27.199354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.231607, 31.316866, 27.199993>,  <29.835880, 31.375162, 27.201057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.231607, 31.316866, 27.199993> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029970, 0.221257, -0.974755,
		0.142649, 0.964264, 0.223262,
		0.989320, -0.145739, -0.002663,
		30.528404, 31.273144, 27.199194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.159420, 31.769457, 26.751543>,  <29.835880, 31.375162, 27.201057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.159420, 31.769457, 26.751543> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.448921, 31.494411, 26.774757>,  <30.622622, 31.329384, 26.788687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.448921, 31.494411, 26.774757>,  <30.159420, 31.769457, 26.751543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.448921, 31.494411, 26.774757> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004993, -0.089319, -0.995991,
		0.690039, 0.720563, -0.068079,
		0.723755, -0.687613, 0.058036,
		30.666048, 31.288128, 26.792168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.875643, 32.195175, 26.624975>,  <30.159420, 31.769457, 26.751543>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.875643, 32.195175, 26.624975> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.847460, 31.810614, 26.518593>,  <30.830549, 31.579876, 26.454763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.847460, 31.810614, 26.518593>,  <30.875643, 32.195175, 26.624975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.847460, 31.810614, 26.518593> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160628, 0.252202, -0.954250,
		0.984497, -0.109955, 0.136659,
		-0.070459, -0.961407, -0.265954,
		30.826323, 31.522192, 26.438807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<41.353676, 38.919838, 46.473709> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.013535, 38.722214, 46.546158>,  <40.809452, 38.603638, 46.589626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.013535, 38.722214, 46.546158>,  <41.353676, 38.919838, 46.473709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.013535, 38.722214, 46.546158> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034532, 0.395850, 0.917666,
		-0.525083, 0.774082, -0.353672,
		-0.850350, -0.494064, 0.181123,
		40.758430, 38.573994, 46.600494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.934776, 39.414459, 46.849007>,  <41.353676, 38.919838, 46.473709>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.934776, 39.414459, 46.849007> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.788071, 39.056820, 46.951832>,  <40.700047, 38.842236, 47.013527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.788071, 39.056820, 46.951832>,  <40.934776, 39.414459, 46.849007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.788071, 39.056820, 46.951832> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255497, 0.362496, 0.896280,
		-0.894543, 0.263042, -0.361388,
		-0.366761, -0.894095, 0.257062,
		40.678043, 38.788593, 47.028950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.284176, 39.553635, 47.110050>,  <40.934776, 39.414459, 46.849007>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.284176, 39.553635, 47.110050> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.358425, 39.193184, 47.266777>,  <40.402977, 38.976913, 47.360813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.358425, 39.193184, 47.266777>,  <40.284176, 39.553635, 47.110050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.358425, 39.193184, 47.266777> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270141, 0.336579, 0.902074,
		-0.944757, -0.273295, -0.180952,
		0.185628, -0.901124, 0.391814,
		40.414112, 38.922848, 47.384323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.660400, 39.238068, 47.505928>,  <40.284176, 39.553635, 47.110050>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.660400, 39.238068, 47.505928> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.979790, 39.042572, 47.646545>,  <40.171421, 38.925274, 47.730915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.979790, 39.042572, 47.646545>,  <39.660400, 39.238068, 47.505928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.979790, 39.042572, 47.646545> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371060, 0.060307, 0.926648,
		-0.474090, -0.870343, -0.133199,
		0.798469, -0.488739, 0.351540,
		40.219330, 38.895950, 47.752007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.410782, 38.943825, 48.022587>,  <39.660400, 39.238068, 47.505928>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.410782, 38.943825, 48.022587> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.802059, 38.905445, 48.096279>,  <40.036823, 38.882420, 48.140495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.802059, 38.905445, 48.096279>,  <39.410782, 38.943825, 48.022587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.802059, 38.905445, 48.096279> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181672, 0.034787, 0.982744,
		-0.100700, -0.994778, 0.016598,
		0.978190, -0.095947, 0.184227,
		40.095516, 38.876663, 48.151546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.468811, 38.352871, 48.602585>,  <39.410782, 38.943825, 48.022587>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.468811, 38.352871, 48.602585> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.777924, 38.606052, 48.583935>,  <39.963390, 38.757961, 48.572746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.777924, 38.606052, 48.583935>,  <39.468811, 38.352871, 48.602585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.777924, 38.606052, 48.583935> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232643, 0.350850, 0.907073,
		0.590493, -0.690126, 0.418383,
		0.772784, 0.632954, -0.046621,
		40.009758, 38.795937, 48.569950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.734371, 38.367050, 49.260708>,  <39.468811, 38.352871, 48.602585>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.734371, 38.367050, 49.260708> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.878872, 38.706001, 49.105042>,  <39.965572, 38.909370, 49.011642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.878872, 38.706001, 49.105042>,  <39.734371, 38.367050, 49.260708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.878872, 38.706001, 49.105042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177936, 0.472322, 0.863279,
		0.915336, -0.242611, 0.321404,
		0.361247, 0.847379, -0.389164,
		39.987247, 38.960217, 48.988293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.149010, 38.702011, 49.751102>,  <39.734371, 38.367050, 49.260708>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.149010, 38.702011, 49.751102> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.031181, 38.989910, 49.499645>,  <39.960484, 39.162651, 49.348770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.031181, 38.989910, 49.499645>,  <40.149010, 38.702011, 49.751102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.031181, 38.989910, 49.499645> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454196, 0.473337, 0.754757,
		0.840795, 0.507855, 0.187477,
		-0.294567, 0.719747, -0.628645,
		39.942810, 39.205833, 49.311050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.259964, 39.234665, 50.100224>,  <40.149010, 38.702011, 49.751102>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.259964, 39.234665, 50.100224> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.999992, 39.381485, 49.834030>,  <39.844009, 39.469578, 49.674316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.999992, 39.381485, 49.834030>,  <40.259964, 39.234665, 50.100224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.999992, 39.381485, 49.834030> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472102, 0.491215, 0.732002,
		0.595577, 0.789925, -0.145970,
		-0.649929, 0.367051, -0.665482,
		39.805012, 39.491600, 49.634384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.334805, 39.910255, 50.188747>,  <40.259964, 39.234665, 50.100224>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.334805, 39.910255, 50.188747> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.990192, 39.849136, 49.995079>,  <39.783424, 39.812466, 49.878880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.990192, 39.849136, 49.995079>,  <40.334805, 39.910255, 50.188747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.990192, 39.849136, 49.995079> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507012, 0.209039, 0.836207,
		-0.026562, 0.965896, -0.257564,
		-0.861529, -0.152799, -0.484169,
		39.731735, 39.803295, 49.849827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.929138, 40.475361, 50.299740>,  <40.334805, 39.910255, 50.188747>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.929138, 40.475361, 50.299740> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.645237, 40.211739, 50.200226>,  <39.474895, 40.053566, 50.140518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.645237, 40.211739, 50.200226>,  <39.929138, 40.475361, 50.299740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.645237, 40.211739, 50.200226> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511466, 0.239258, 0.825323,
		-0.484412, 0.713020, -0.506900,
		-0.709751, -0.659058, -0.248786,
		39.432312, 40.014023, 50.125591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.251007, 40.874428, 50.232376>,  <39.929138, 40.475361, 50.299740>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.251007, 40.874428, 50.232376> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.161251, 40.488056, 50.283947>,  <39.107395, 40.256233, 50.314892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.161251, 40.488056, 50.283947>,  <39.251007, 40.874428, 50.232376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.161251, 40.488056, 50.283947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541464, 0.233587, 0.807622,
		-0.810224, 0.111414, -0.575433,
		-0.224394, -0.965932, 0.128931,
		39.093933, 40.198277, 50.322628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.452175, 40.693848, 50.337353>,  <39.251007, 40.874428, 50.232376>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.452175, 40.693848, 50.337353> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.732185, 40.511253, 50.557022>,  <38.900192, 40.401695, 50.688824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.732185, 40.511253, 50.557022>,  <38.452175, 40.693848, 50.337353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.732185, 40.511253, 50.557022> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376889, 0.417034, 0.827065,
		-0.606566, -0.785942, 0.119889,
		0.700023, -0.456485, 0.549172,
		38.942192, 40.374310, 50.721775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.744469, 40.900650, 50.709236>,  <38.452175, 40.693848, 50.337353>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.744469, 40.900650, 50.709236> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.361450, 40.813824, 50.785122>,  <37.131641, 40.761726, 50.830654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.361450, 40.813824, 50.785122>,  <37.744469, 40.900650, 50.709236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.361450, 40.813824, 50.785122> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073109, -0.453720, -0.888140,
		0.278866, -0.864303, 0.418587,
		-0.957544, -0.217069, 0.189716,
		37.074188, 40.748703, 50.842037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.522842, 40.151497, 50.701527>,  <37.744469, 40.900650, 50.709236>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.522842, 40.151497, 50.701527> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.249985, 40.396420, 50.541641>,  <37.086269, 40.543373, 50.445709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.249985, 40.396420, 50.541641>,  <37.522842, 40.151497, 50.701527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.249985, 40.396420, 50.541641> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071768, -0.600060, -0.796729,
		-0.727692, -0.514793, 0.453268,
		-0.682139, 0.612303, -0.399713,
		37.045341, 40.580109, 50.421726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.849312, 39.731037, 50.521469>,  <37.522842, 40.151497, 50.701527>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.849312, 39.731037, 50.521469> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.875546, 40.064415, 50.301991>,  <36.891285, 40.264442, 50.170303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.875546, 40.064415, 50.301991>,  <36.849312, 39.731037, 50.521469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.875546, 40.064415, 50.301991> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200349, -0.527687, -0.825474,
		-0.977527, 0.164068, 0.132373,
		0.065582, 0.833444, -0.548699,
		36.895222, 40.314449, 50.137383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.233112, 39.719719, 50.091671>,  <36.849312, 39.731037, 50.521469>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.233112, 39.719719, 50.091671> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.510384, 39.955837, 49.926239>,  <36.676746, 40.097507, 49.826981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.510384, 39.955837, 49.926239>,  <36.233112, 39.719719, 50.091671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.510384, 39.955837, 49.926239> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137041, -0.455408, -0.879672,
		-0.707614, 0.666451, -0.234787,
		0.693183, 0.590293, -0.413584,
		36.718338, 40.132927, 49.802162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.926304, 39.926186, 49.498852>,  <36.233112, 39.719719, 50.091671>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.926304, 39.926186, 49.498852> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.308651, 40.018093, 49.425617>,  <36.538059, 40.073238, 49.381676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.308651, 40.018093, 49.425617>,  <35.926304, 39.926186, 49.498852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.308651, 40.018093, 49.425617> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140394, -0.190187, -0.971658,
		-0.258077, 0.954482, -0.149536,
		0.955869, 0.229768, -0.183086,
		36.595413, 40.087025, 49.370693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.927986, 40.354420, 48.930470>,  <35.926304, 39.926186, 49.498852>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.927986, 40.354420, 48.930470> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.298752, 40.204327, 48.928360>,  <36.521214, 40.114269, 48.927094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.298752, 40.204327, 48.928360>,  <35.927986, 40.354420, 48.930470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.298752, 40.204327, 48.928360> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032520, -0.066316, -0.997269,
		0.373857, 0.924556, -0.073672,
		0.926916, -0.375232, -0.005274,
		36.576828, 40.091759, 48.926777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.339573, 40.686684, 48.339539>,  <35.927986, 40.354420, 48.930470>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.339573, 40.686684, 48.339539> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.527508, 40.350525, 48.447598>,  <36.640270, 40.148830, 48.512432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.527508, 40.350525, 48.447598>,  <36.339573, 40.686684, 48.339539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.527508, 40.350525, 48.447598> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209232, -0.191294, -0.958973,
		0.857598, 0.507085, 0.085961,
		0.469837, -0.840399, 0.270151,
		36.668461, 40.098404, 48.528645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.928364, 40.777344, 47.922924>,  <36.339573, 40.686684, 48.339539>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.928364, 40.777344, 47.922924> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.880428, 40.396603, 48.035793>,  <36.851665, 40.168159, 48.103516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.880428, 40.396603, 48.035793>,  <36.928364, 40.777344, 47.922924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.880428, 40.396603, 48.035793> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337987, -0.306362, -0.889892,
		0.933490, -0.011271, 0.358426,
		-0.119839, -0.951848, 0.282176,
		36.844479, 40.111050, 48.120445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.488953, 40.402386, 47.662376>,  <36.928364, 40.777344, 47.922924>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.488953, 40.402386, 47.662376> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.198425, 40.130939, 47.706093>,  <37.024109, 39.968071, 47.732323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.198425, 40.130939, 47.706093>,  <37.488953, 40.402386, 47.662376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.198425, 40.130939, 47.706093> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235690, -0.395242, -0.887825,
		0.645686, -0.619087, 0.447014,
		-0.726320, -0.678613, 0.109289,
		36.980530, 39.927357, 47.738880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.673103, 40.014938, 47.208618>,  <37.488953, 40.402386, 47.662376>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.673103, 40.014938, 47.208618> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.323845, 39.834755, 47.283134>,  <37.114288, 39.726646, 47.327847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.323845, 39.834755, 47.283134>,  <37.673103, 40.014938, 47.208618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.323845, 39.834755, 47.283134> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024906, -0.422901, -0.905834,
		0.486821, -0.786286, 0.380473,
		-0.873147, -0.450455, 0.186294,
		37.061901, 39.699619, 47.339024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.682419, 39.274662, 46.972229>,  <37.673103, 40.014938, 47.208618>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.682419, 39.274662, 46.972229> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.289356, 39.335629, 47.014488>,  <37.053520, 39.372208, 47.039845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.289356, 39.335629, 47.014488>,  <37.682419, 39.274662, 46.972229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.289356, 39.335629, 47.014488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172996, -0.548096, -0.818330,
		-0.066822, -0.822411, 0.564956,
		-0.982653, 0.152417, 0.105649,
		36.994560, 39.381355, 47.046185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.302914, 38.625130, 47.291958>,  <37.682419, 39.274662, 46.972229>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.302914, 38.625130, 47.291958> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.077507, 38.853981, 47.053589>,  <36.942261, 38.991291, 46.910568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.077507, 38.853981, 47.053589>,  <37.302914, 38.625130, 47.291958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.077507, 38.853981, 47.053589> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190038, -0.612237, -0.767497,
		-0.803947, -0.545748, 0.236283,
		-0.563520, 0.572124, -0.595918,
		36.908451, 39.025620, 46.874813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.854996, 38.113102, 46.978897>,  <37.302914, 38.625130, 47.291958>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.854996, 38.113102, 46.978897> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.838791, 38.443737, 46.754356>,  <36.829067, 38.642117, 46.619633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.838791, 38.443737, 46.754356>,  <36.854996, 38.113102, 46.978897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.838791, 38.443737, 46.754356> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088068, -0.556674, -0.826050,
		-0.995291, -0.082898, -0.050246,
		-0.040507, 0.826585, -0.561353,
		36.826637, 38.691711, 46.585949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.292625, 37.975365, 46.566689>,  <36.854996, 38.113102, 46.978897>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.292625, 37.975365, 46.566689> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.446743, 38.287922, 46.370335>,  <36.539215, 38.475456, 46.252522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.446743, 38.287922, 46.370335>,  <36.292625, 37.975365, 46.566689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.446743, 38.287922, 46.370335> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051325, -0.549277, -0.834063,
		-0.921365, 0.296165, -0.251738,
		0.385294, 0.781397, -0.490884,
		36.562332, 38.522343, 46.223068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.796860, 38.129581, 45.932819>,  <36.292625, 37.975365, 46.566689>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.796860, 38.129581, 45.932819> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.156693, 38.292454, 45.869637>,  <36.372593, 38.390175, 45.831726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.156693, 38.292454, 45.869637>,  <35.796860, 38.129581, 45.932819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.156693, 38.292454, 45.869637> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040695, -0.281957, -0.958563,
		-0.434845, 0.868738, -0.237075,
		0.899585, 0.407179, -0.157961,
		36.426567, 38.414608, 45.822247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.178688, 38.624676, 46.083450>,  <35.796860, 38.129581, 45.932819>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.178688, 38.624676, 46.083450> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.791759, 38.535080, 46.035927>,  <34.559601, 38.481323, 46.007412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.791759, 38.535080, 46.035927>,  <35.178688, 38.624676, 46.083450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.791759, 38.535080, 46.035927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176921, 0.260636, 0.949088,
		-0.181625, 0.939093, -0.291748,
		-0.967322, -0.223994, -0.118807,
		34.501564, 38.467880, 46.000286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.899483, 39.186073, 46.323448>,  <35.178688, 38.624676, 46.083450>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.899483, 39.186073, 46.323448> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.604099, 38.916756, 46.308788>,  <34.426868, 38.755165, 46.299992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.604099, 38.916756, 46.308788>,  <34.899483, 39.186073, 46.323448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.604099, 38.916756, 46.308788> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315563, 0.297051, 0.901211,
		-0.595897, 0.677075, -0.431829,
		-0.738462, -0.673298, -0.036648,
		34.382561, 38.714767, 46.297794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.412296, 39.396114, 46.653290>,  <34.899483, 39.186073, 46.323448>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.412296, 39.396114, 46.653290> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.251408, 39.030426, 46.633621>,  <34.154877, 38.811012, 46.621822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.251408, 39.030426, 46.633621>,  <34.412296, 39.396114, 46.653290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.251408, 39.030426, 46.633621> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370019, 0.113199, 0.922102,
		-0.837440, 0.389080, -0.383811,
		-0.402218, -0.914222, -0.049169,
		34.130741, 38.756161, 46.618870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.757195, 39.446651, 46.940102>,  <34.412296, 39.396114, 46.653290>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.757195, 39.446651, 46.940102> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.862972, 39.061825, 46.966942>,  <33.926437, 38.830929, 46.983047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.862972, 39.061825, 46.966942>,  <33.757195, 39.446651, 46.940102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.862972, 39.061825, 46.966942> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319417, -0.021719, 0.947365,
		-0.909969, -0.271957, -0.313043,
		0.264441, -0.962064, 0.067104,
		33.942307, 38.773205, 46.987072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.248203, 39.144363, 47.293766>,  <33.757195, 39.446651, 46.940102>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.248203, 39.144363, 47.293766> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.527401, 38.863670, 47.350857>,  <33.694920, 38.695255, 47.385113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.527401, 38.863670, 47.350857>,  <33.248203, 39.144363, 47.293766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.527401, 38.863670, 47.350857> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142063, 0.059660, 0.988058,
		-0.701867, -0.709939, -0.058048,
		0.697998, -0.701732, 0.142730,
		33.736801, 38.653152, 47.393677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.988743, 38.693005, 47.803917>,  <33.248203, 39.144363, 47.293766>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.988743, 38.693005, 47.803917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.387150, 38.657799, 47.809612>,  <33.626194, 38.636677, 47.813030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.387150, 38.657799, 47.809612>,  <32.988743, 38.693005, 47.803917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.387150, 38.657799, 47.809612> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006807, 0.084181, 0.996427,
		-0.088901, -0.992556, 0.083246,
		0.996018, -0.088017, 0.014240,
		33.685955, 38.631393, 47.813885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.083763, 38.281616, 48.321095>,  <32.988743, 38.693005, 47.803917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.083763, 38.281616, 48.321095> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.437805, 38.463505, 48.281479>,  <33.650230, 38.572639, 48.257710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.437805, 38.463505, 48.281479>,  <33.083763, 38.281616, 48.321095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.437805, 38.463505, 48.281479> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055893, 0.107397, 0.992644,
		0.462014, -0.884134, 0.069642,
		0.885109, 0.454723, -0.099036,
		33.703339, 38.599922, 48.251770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.130344, 37.596081, 48.663265>,  <33.083763, 38.281616, 48.321095>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.130344, 37.596081, 48.663265> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.905750, 37.308495, 48.827133>,  <32.770992, 37.135944, 48.925453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.905750, 37.308495, 48.827133>,  <33.130344, 37.596081, 48.663265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.905750, 37.308495, 48.827133> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468296, -0.132080, -0.873644,
		0.682227, -0.682383, -0.262526,
		-0.561485, -0.718963, 0.409666,
		32.737305, 37.092804, 48.950031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.259274, 37.080410, 48.167076>,  <33.130344, 37.596081, 48.663265>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.259274, 37.080410, 48.167076> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.936523, 36.982197, 48.381985>,  <32.742874, 36.923267, 48.510929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.936523, 36.982197, 48.381985>,  <33.259274, 37.080410, 48.167076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.936523, 36.982197, 48.381985> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520690, -0.133932, -0.843175,
		0.278987, -0.960091, -0.019781,
		-0.806875, -0.245535, 0.537275,
		32.694462, 36.908535, 48.543167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.018002, 36.415585, 47.966663>,  <33.259274, 37.080410, 48.167076>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.018002, 36.415585, 47.966663> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.697300, 36.557404, 48.159119>,  <32.504879, 36.642494, 48.274593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.697300, 36.557404, 48.159119>,  <33.018002, 36.415585, 47.966663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.697300, 36.557404, 48.159119> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578993, -0.261139, -0.772381,
		-0.148203, -0.897832, 0.414649,
		-0.801750, 0.354548, 0.481137,
		32.456776, 36.663769, 48.303459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.511219, 35.868675, 47.867748>,  <33.018002, 36.415585, 47.966663>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.511219, 35.868675, 47.867748> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.323490, 36.211086, 47.954422>,  <32.210854, 36.416534, 48.006428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.323490, 36.211086, 47.954422>,  <32.511219, 35.868675, 47.867748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.323490, 36.211086, 47.954422> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621064, -0.145561, -0.770124,
		-0.627709, -0.496008, 0.599964,
		-0.469319, 0.856030, 0.216683,
		32.182693, 36.467896, 48.019428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.804968, 35.737949, 47.862442>,  <32.511219, 35.868675, 47.867748>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.804968, 35.737949, 47.862442> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.808868, 36.135063, 47.814644>,  <31.811209, 36.373333, 47.785965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.808868, 36.135063, 47.814644>,  <31.804968, 35.737949, 47.862442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.808868, 36.135063, 47.814644> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487093, -0.099644, -0.867647,
		-0.873296, 0.066666, 0.482608,
		0.009754, 0.992788, -0.119491,
		31.811794, 36.432899, 47.778797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.093792, 35.883739, 47.655209>,  <31.804968, 35.737949, 47.862442>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.093792, 35.883739, 47.655209> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.316086, 36.191761, 47.529873>,  <31.449461, 36.376572, 47.454670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.316086, 36.191761, 47.529873>,  <31.093792, 35.883739, 47.655209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.316086, 36.191761, 47.529873> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381181, -0.098935, -0.919191,
		-0.738825, 0.630264, 0.238547,
		0.555732, 0.770051, -0.313341,
		31.482805, 36.422775, 47.435871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.700407, 36.326576, 47.230457>,  <31.093792, 35.883739, 47.655209>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.700407, 36.326576, 47.230457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.068094, 36.426136, 47.108414>,  <31.288706, 36.485870, 47.035187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.068094, 36.426136, 47.108414>,  <30.700407, 36.326576, 47.230457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.068094, 36.426136, 47.108414> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338844, 0.105346, -0.934926,
		-0.200560, 0.962784, 0.181174,
		0.919217, 0.248899, -0.305105,
		31.343859, 36.500805, 47.016884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<37.220280, 37.780674, 51.845028> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.570091, 37.937164, 51.730381>,  <37.779976, 38.031059, 51.661594>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.570091, 37.937164, 51.730381>,  <37.220280, 37.780674, 51.845028>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.570091, 37.937164, 51.730381> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037171, -0.535174, -0.843924,
		-0.483553, 0.748687, -0.453481,
		0.874525, 0.391225, -0.286614,
		37.832447, 38.054531, 51.644398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.136806, 38.007755, 51.090954>,  <37.220280, 37.780674, 51.845028>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.136806, 38.007755, 51.090954> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.533768, 37.978558, 51.130585>,  <37.771942, 37.961040, 51.154362>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.533768, 37.978558, 51.130585>,  <37.136806, 38.007755, 51.090954>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.533768, 37.978558, 51.130585> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070405, -0.323559, -0.943585,
		0.100934, 0.943388, -0.315960,
		0.992399, -0.072994, 0.099077,
		37.831486, 37.956657, 51.160309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.422222, 38.245548, 50.448959>,  <37.136806, 38.007755, 51.090954>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.422222, 38.245548, 50.448959> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.736778, 38.052856, 50.603630>,  <37.925514, 37.937241, 50.696430>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.736778, 38.052856, 50.603630>,  <37.422222, 38.245548, 50.448959>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.736778, 38.052856, 50.603630> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178123, -0.422537, -0.888670,
		0.591486, 0.767721, -0.246473,
		0.786395, -0.481734, 0.386673,
		37.972698, 37.908337, 50.719631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.994488, 38.434834, 50.012043>,  <37.422222, 38.245548, 50.448959>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.994488, 38.434834, 50.012043> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.101044, 38.088879, 50.182220>,  <38.164978, 37.881306, 50.284325>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.101044, 38.088879, 50.182220>,  <37.994488, 38.434834, 50.012043>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.101044, 38.088879, 50.182220> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304723, -0.343182, -0.888465,
		0.914429, 0.366321, 0.172131,
		0.266391, -0.864890, 0.425442,
		38.180962, 37.829411, 50.309853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.621204, 38.311375, 49.695740>,  <37.994488, 38.434834, 50.012043>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.621204, 38.311375, 49.695740> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.474480, 37.962341, 49.824760>,  <38.386444, 37.752922, 49.902172>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.474480, 37.962341, 49.824760>,  <38.621204, 38.311375, 49.695740>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.474480, 37.962341, 49.824760> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270517, -0.431787, -0.860454,
		0.890097, -0.228364, 0.394433,
		-0.366808, -0.872588, 0.322556,
		38.364437, 37.700565, 49.921528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.188389, 37.747513, 49.533344>,  <38.621204, 38.311375, 49.695740>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.188389, 37.747513, 49.533344> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.863247, 37.530392, 49.617851>,  <38.668163, 37.400120, 49.668556>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.863247, 37.530392, 49.617851>,  <39.188389, 37.747513, 49.533344>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.863247, 37.530392, 49.617851> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253593, -0.656330, -0.710579,
		0.524362, -0.524023, 0.671152,
		-0.812856, -0.542800, 0.211266,
		38.619389, 37.367554, 49.681232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.446392, 37.009502, 49.638546>,  <39.188389, 37.747513, 49.533344>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.446392, 37.009502, 49.638546> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.054379, 36.967846, 49.570797>,  <38.819172, 36.942852, 49.530148>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.054379, 36.967846, 49.570797>,  <39.446392, 37.009502, 49.638546>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.054379, 36.967846, 49.570797> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193283, -0.698838, -0.688671,
		-0.046645, -0.707658, 0.705014,
		-0.980034, -0.104144, -0.169375,
		38.760368, 36.936604, 49.519985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.324078, 36.275520, 49.610401>,  <39.446392, 37.009502, 49.638546>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.324078, 36.275520, 49.610401> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.002918, 36.433411, 49.431717>,  <38.810223, 36.528145, 49.324505>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.002918, 36.433411, 49.431717>,  <39.324078, 36.275520, 49.610401>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.002918, 36.433411, 49.431717> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093632, -0.823567, -0.559438,
		-0.588720, -0.407344, 0.698197,
		-0.802896, 0.394726, -0.446710,
		38.762051, 36.551826, 49.297703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.807587, 35.750538, 49.587650>,  <39.324078, 36.275520, 49.610401>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.807587, 35.750538, 49.587650> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.755539, 36.019566, 49.296249>,  <38.724312, 36.180984, 49.121410>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.755539, 36.019566, 49.296249>,  <38.807587, 35.750538, 49.587650>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.755539, 36.019566, 49.296249> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031851, -0.737204, -0.674919,
		-0.990987, -0.064614, 0.117343,
		-0.130115, 0.672573, -0.728502,
		38.716503, 36.221336, 49.077698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.160263, 35.493656, 49.292183>,  <38.807587, 35.750538, 49.587650>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.160263, 35.493656, 49.292183> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.368576, 35.714870, 49.032051>,  <38.493565, 35.847599, 48.875973>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.368576, 35.714870, 49.032051>,  <38.160263, 35.493656, 49.292183>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.368576, 35.714870, 49.032051> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026526, -0.750943, -0.659834,
		-0.853276, 0.360883, -0.376410,
		0.520785, 0.553035, -0.650334,
		38.524811, 35.880779, 48.836952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.836514, 35.242455, 48.734100>,  <38.160263, 35.493656, 49.292183>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.836514, 35.242455, 48.734100> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.142029, 35.440811, 48.568825>,  <38.325336, 35.559826, 48.469662>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.142029, 35.440811, 48.568825>,  <37.836514, 35.242455, 48.734100>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.142029, 35.440811, 48.568825> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059835, -0.582983, -0.810278,
		-0.642689, 0.643603, -0.415603,
		0.763787, 0.495889, -0.413187,
		38.371166, 35.589577, 48.444870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.606491, 35.323792, 47.998695>,  <37.836514, 35.242455, 48.734100>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.606491, 35.323792, 47.998695> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.003403, 35.353367, 48.038532>,  <38.241550, 35.371113, 48.062435>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.003403, 35.353367, 48.038532>,  <37.606491, 35.323792, 47.998695>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.003403, 35.353367, 48.038532> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118667, -0.332217, -0.935708,
		-0.036103, 0.940300, -0.338426,
		0.992277, 0.073942, 0.099589,
		38.301086, 35.375549, 48.068409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.211002, 35.825226, 47.869511>,  <37.606491, 35.323792, 47.998695>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.211002, 35.825226, 47.869511> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.839386, 35.678482, 47.888702>,  <36.616417, 35.590435, 47.900219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.839386, 35.678482, 47.888702>,  <37.211002, 35.825226, 47.869511>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.839386, 35.678482, 47.888702> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087893, 0.344817, 0.934546,
		-0.359390, 0.864012, -0.352593,
		-0.929039, -0.366857, 0.047983,
		36.560673, 35.568424, 47.903099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.814178, 36.320705, 48.294357>,  <37.211002, 35.825226, 47.869511>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.814178, 36.320705, 48.294357> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.610329, 35.976547, 48.293308>,  <36.488018, 35.770054, 48.292679>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.610329, 35.976547, 48.293308>,  <36.814178, 36.320705, 48.294357>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.610329, 35.976547, 48.293308> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161179, 0.092476, 0.982583,
		-0.845166, 0.501169, -0.185806,
		-0.509623, -0.860394, -0.002620,
		36.457443, 35.718430, 48.292522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196888, 36.481838, 48.676079>,  <36.814178, 36.320705, 48.294357>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.196888, 36.481838, 48.676079> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.234577, 36.083889, 48.690815>,  <36.257191, 35.845119, 48.699657>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.234577, 36.083889, 48.690815>,  <36.196888, 36.481838, 48.676079>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.234577, 36.083889, 48.690815> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241837, 0.013027, 0.970229,
		-0.965732, -0.100324, -0.239369,
		0.094219, -0.994870, 0.036843,
		36.262844, 35.785427, 48.701866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.535961, 36.160580, 48.870037>,  <36.196888, 36.481838, 48.676079>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.535961, 36.160580, 48.870037> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.840881, 35.919960, 48.965572>,  <36.023834, 35.775589, 49.022896>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.840881, 35.919960, 48.965572>,  <35.535961, 36.160580, 48.870037>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.840881, 35.919960, 48.965572> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351679, -0.075174, 0.933098,
		-0.543348, -0.795292, -0.268856,
		0.762296, -0.601548, 0.238841,
		36.069569, 35.739494, 49.037224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.233521, 35.624954, 49.373398>,  <35.535961, 36.160580, 48.870037>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.233521, 35.624954, 49.373398> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.629955, 35.612579, 49.425213>,  <35.867817, 35.605156, 49.456303>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.629955, 35.612579, 49.425213>,  <35.233521, 35.624954, 49.373398>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.629955, 35.612579, 49.425213> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132714, -0.148039, 0.980036,
		-0.011140, -0.988498, -0.150826,
		0.991092, -0.030935, 0.129538,
		35.927284, 35.603298, 49.464073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.209805, 35.088753, 49.749947>,  <35.233521, 35.624954, 49.373398>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.209805, 35.088753, 49.749947> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.562801, 35.270924, 49.796940>,  <35.774597, 35.380226, 49.825138>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.562801, 35.270924, 49.796940>,  <35.209805, 35.088753, 49.749947>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.562801, 35.270924, 49.796940> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082325, -0.096370, 0.991935,
		0.463075, -0.885043, -0.047552,
		0.882488, 0.455425, 0.117487,
		35.827549, 35.407551, 49.832188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.681950, 34.633221, 50.241077>,  <35.209805, 35.088753, 49.749947>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.681950, 34.633221, 50.241077> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.806740, 35.013161, 50.249615>,  <35.881615, 35.241123, 50.254738>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.806740, 35.013161, 50.249615>,  <35.681950, 34.633221, 50.241077>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.806740, 35.013161, 50.249615> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078946, -0.048304, 0.995708,
		0.946804, -0.308954, -0.090056,
		0.311978, 0.949850, 0.021344,
		35.900333, 35.298115, 50.256020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.299419, 34.671124, 50.639927>,  <35.681950, 34.633221, 50.241077>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.299419, 34.671124, 50.639927> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.112648, 35.024822, 50.636028>,  <36.000584, 35.237041, 50.633690>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.112648, 35.024822, 50.636028>,  <36.299419, 34.671124, 50.639927>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.112648, 35.024822, 50.636028> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096185, 0.061744, 0.993447,
		0.879049, 0.462929, -0.113880,
		-0.466927, 0.884242, -0.009750,
		35.972569, 35.290096, 50.633102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.483955, 34.922787, 51.241756>,  <36.299419, 34.671124, 50.639927>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.483955, 34.922787, 51.241756> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.213287, 35.209667, 51.175140>,  <36.050884, 35.381794, 51.135170>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.213287, 35.209667, 51.175140>,  <36.483955, 34.922787, 51.241756>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.213287, 35.209667, 51.175140> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056535, 0.276134, 0.959455,
		0.734110, 0.639822, -0.227399,
		-0.676673, 0.717202, -0.166540,
		36.010284, 35.424828, 51.125179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.646442, 35.562943, 51.704548>,  <36.483955, 34.922787, 51.241756>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.646442, 35.562943, 51.704548> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.266945, 35.563541, 51.578133>,  <36.039246, 35.563900, 51.502281>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.266945, 35.563541, 51.578133>,  <36.646442, 35.562943, 51.704548>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.266945, 35.563541, 51.578133> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315825, 0.032718, 0.948253,
		0.011758, 0.999463, -0.030569,
		-0.948744, 0.001495, -0.316041,
		35.982323, 35.563992, 51.483322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.403309, 35.973614, 52.106625>,  <36.646442, 35.562943, 51.704548>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.403309, 35.973614, 52.106625> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.086025, 35.785599, 51.951763>,  <35.895657, 35.672791, 51.858845>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.086025, 35.785599, 51.951763>,  <36.403309, 35.973614, 52.106625>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.086025, 35.785599, 51.951763> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465328, 0.057750, 0.883253,
		-0.392803, 0.880755, -0.264529,
		-0.793206, -0.470037, -0.387155,
		35.848064, 35.644588, 51.835617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.800159, 36.473015, 52.298439>,  <36.403309, 35.973614, 52.106625>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.800159, 36.473015, 52.298439> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.676907, 36.101475, 52.216171>,  <35.602955, 35.878551, 52.166809>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.676907, 36.101475, 52.216171>,  <35.800159, 36.473015, 52.298439>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.676907, 36.101475, 52.216171> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616868, 0.030490, 0.786476,
		-0.724244, 0.369207, -0.582371,
		-0.308129, -0.928847, -0.205670,
		35.584469, 35.822823, 52.154469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.030914, 36.548031, 52.226727>,  <35.800159, 36.473015, 52.298439>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.030914, 36.548031, 52.226727> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.154869, 36.176712, 52.308929>,  <35.229240, 35.953922, 52.358250>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.154869, 36.176712, 52.308929>,  <35.030914, 36.548031, 52.226727>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.154869, 36.176712, 52.308929> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543310, 0.004482, 0.839520,
		-0.780246, -0.371810, -0.502965,
		0.309888, -0.928298, 0.205505,
		35.247837, 35.898224, 52.370583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.446201, 36.055103, 52.162289>,  <35.030914, 36.548031, 52.226727>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.446201, 36.055103, 52.162289> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.711254, 35.912632, 52.425823>,  <34.870285, 35.827148, 52.583942>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.711254, 35.912632, 52.425823>,  <34.446201, 36.055103, 52.162289>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.711254, 35.912632, 52.425823> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714524, -0.037014, 0.698631,
		-0.224449, -0.933686, -0.279022,
		0.662629, -0.356175, 0.658833,
		34.910042, 35.805779, 52.623474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.210560, 36.763245, 51.966709>,  <34.446201, 36.055103, 52.162289>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.210560, 36.763245, 51.966709> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.990143, 37.090103, 51.899025>,  <33.857895, 37.286217, 51.858414>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.990143, 37.090103, 51.899025>,  <34.210560, 36.763245, 51.966709>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.990143, 37.090103, 51.899025> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336024, -0.402884, -0.851335,
		-0.763834, -0.412262, 0.496586,
		-0.551040, 0.817144, -0.169207,
		33.824829, 37.335247, 51.848263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.528191, 36.628502, 51.630943>,  <34.210560, 36.763245, 51.966709>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.528191, 36.628502, 51.630943> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.505920, 37.012897, 51.522568>,  <33.492558, 37.243534, 51.457542>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.505920, 37.012897, 51.522568>,  <33.528191, 36.628502, 51.630943>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.505920, 37.012897, 51.522568> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510517, -0.260600, -0.819427,
		-0.858064, 0.092698, 0.505108,
		-0.055672, 0.960986, -0.270935,
		33.489220, 37.301193, 51.441288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.778732, 36.721832, 51.459953>,  <33.528191, 36.628502, 51.630943>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.778732, 36.721832, 51.459953> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.996460, 36.986801, 51.254074>,  <33.127098, 37.145782, 51.130547>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.996460, 36.986801, 51.254074>,  <32.778732, 36.721832, 51.459953>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.996460, 36.986801, 51.254074> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357841, -0.371576, -0.856669,
		-0.758726, 0.650480, 0.034787,
		0.544320, 0.662425, -0.514693,
		33.159756, 37.185528, 51.099667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.278091, 36.980320, 50.993988>,  <32.778732, 36.721832, 51.459953>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.278091, 36.980320, 50.993988> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.634972, 37.088505, 50.849304>,  <32.849098, 37.153416, 50.762493>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.634972, 37.088505, 50.849304>,  <32.278091, 36.980320, 50.993988>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.634972, 37.088505, 50.849304> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334437, -0.142614, -0.931565,
		-0.303542, 0.952108, -0.036785,
		0.892196, 0.270467, -0.361709,
		32.902630, 37.169643, 50.740791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.166653, 37.573566, 50.540451>,  <32.278091, 36.980320, 50.993988>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.166653, 37.573566, 50.540451> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.498661, 37.386272, 50.419239>,  <32.697865, 37.273895, 50.346512>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.498661, 37.386272, 50.419239>,  <32.166653, 37.573566, 50.540451>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.498661, 37.386272, 50.419239> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322193, 0.040952, -0.945788,
		0.455263, 0.882654, -0.116871,
		0.830017, -0.468237, -0.303029,
		32.747665, 37.245800, 50.328331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.356789, 37.862907, 49.865852>,  <32.166653, 37.573566, 50.540451>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.356789, 37.862907, 49.865852> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.547031, 37.511623, 49.845657>,  <32.661179, 37.300854, 49.833542>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.547031, 37.511623, 49.845657>,  <32.356789, 37.862907, 49.865852>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.547031, 37.511623, 49.845657> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384703, -0.156046, -0.909754,
		0.791074, 0.452110, -0.412066,
		0.475610, -0.878206, -0.050484,
		32.689716, 37.248161, 49.830513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.783184, 37.917629, 49.252342>,  <32.356789, 37.862907, 49.865852>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.783184, 37.917629, 49.252342> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.802200, 37.522873, 49.314041>,  <32.813610, 37.286018, 49.351063>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.802200, 37.522873, 49.314041>,  <32.783184, 37.917629, 49.252342>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.802200, 37.522873, 49.314041> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274152, -0.161387, -0.948048,
		0.960511, 0.002781, -0.278229,
		0.047539, -0.986887, 0.154252,
		32.816463, 37.226807, 49.360317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.516953, 38.089710, 49.069996>,  <32.783184, 37.917629, 49.252342>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.516953, 38.089710, 49.069996> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.708912, 38.391273, 48.890522>,  <33.824089, 38.572212, 48.782837>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.708912, 38.391273, 48.890522>,  <33.516953, 38.089710, 49.069996>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.708912, 38.391273, 48.890522> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308339, 0.333859, 0.890767,
		0.821353, -0.565828, -0.072239,
		0.479903, 0.753908, -0.448683,
		33.852882, 38.617447, 48.755917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.079948, 38.126148, 49.432274>,  <33.516953, 38.089710, 49.069996>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.079948, 38.126148, 49.432274> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.057461, 38.490704, 49.269203>,  <34.043968, 38.709438, 49.171360>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.057461, 38.490704, 49.269203>,  <34.079948, 38.126148, 49.432274>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.057461, 38.490704, 49.269203> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291475, 0.405519, 0.866370,
		0.954925, -0.070125, -0.288444,
		-0.056216, 0.911393, -0.407680,
		34.040596, 38.764122, 49.146900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.639126, 38.454762, 49.661026>,  <34.079948, 38.126148, 49.432274>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.639126, 38.454762, 49.661026> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.388203, 38.751484, 49.566196>,  <34.237648, 38.929520, 49.509300>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.388203, 38.751484, 49.566196>,  <34.639126, 38.454762, 49.661026>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.388203, 38.751484, 49.566196> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273857, 0.495099, 0.824548,
		0.729032, 0.452321, -0.513729,
		-0.627307, 0.741811, -0.237072,
		34.200012, 38.974026, 49.495075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.039185, 39.076408, 49.745426>,  <34.639126, 38.454762, 49.661026>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.039185, 39.076408, 49.745426> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.647289, 39.155914, 49.755222>,  <34.412151, 39.203617, 49.761101>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.647289, 39.155914, 49.755222>,  <35.039185, 39.076408, 49.745426>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.647289, 39.155914, 49.755222> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160890, 0.708396, 0.687233,
		0.119248, 0.677251, -0.726024,
		-0.979742, 0.198761, 0.024488,
		34.353367, 39.215542, 49.762569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.926384, 39.781689, 49.631695>,  <35.039185, 39.076408, 49.745426>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.926384, 39.781689, 49.631695> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.585487, 39.686909, 49.818260>,  <34.380951, 39.630043, 49.930199>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.585487, 39.686909, 49.818260>,  <34.926384, 39.781689, 49.631695>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.585487, 39.686909, 49.818260> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095603, 0.805996, 0.584150,
		-0.514340, 0.542427, -0.664250,
		-0.852241, -0.236947, 0.466413,
		34.329815, 39.615826, 49.958183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.592594, 40.409645, 49.635574>,  <34.926384, 39.781689, 49.631695>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.592594, 40.409645, 49.635574> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.423759, 40.175247, 49.912254>,  <34.322460, 40.034607, 50.078262>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.423759, 40.175247, 49.912254>,  <34.592594, 40.409645, 49.635574>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.423759, 40.175247, 49.912254> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040952, 0.774543, 0.631194,
		-0.905630, 0.238093, -0.350922,
		-0.422087, -0.585999, 0.691699,
		34.297134, 39.999447, 50.119762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.163673, 40.934097, 50.058292>,  <34.592594, 40.409645, 49.635574>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.163673, 40.934097, 50.058292> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.195629, 40.592659, 50.264206>,  <34.214802, 40.387798, 50.387753>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.195629, 40.592659, 50.264206>,  <34.163673, 40.934097, 50.058292>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.195629, 40.592659, 50.264206> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098495, 0.507145, 0.856214,
		-0.991926, -0.119107, -0.043559,
		0.079890, -0.853591, 0.514781,
		34.219597, 40.336582, 50.418640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.684868, 40.957489, 50.537193>,  <34.163673, 40.934097, 50.058292>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.684868, 40.957489, 50.537193> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.970901, 40.720097, 50.684944>,  <34.142521, 40.577663, 50.773594>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.970901, 40.720097, 50.684944>,  <33.684868, 40.957489, 50.537193>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.970901, 40.720097, 50.684944> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124670, 0.628210, 0.767990,
		-0.687835, -0.503125, 0.523210,
		0.715081, -0.593479, 0.369380,
		34.185425, 40.542053, 50.795757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.624222, 41.020103, 51.270935>,  <33.684868, 40.957489, 50.537193>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.624222, 41.020103, 51.270935> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.989651, 40.869987, 51.208263>,  <34.208908, 40.779919, 51.170662>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.989651, 40.869987, 51.208263>,  <33.624222, 41.020103, 51.270935>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.989651, 40.869987, 51.208263> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364531, 0.584879, 0.724592,
		-0.180296, -0.719079, 0.671133,
		0.913570, -0.375290, -0.156675,
		34.263721, 40.757401, 51.161263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.794609, 35.690479, 36.136349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.152817, 35.597446, 36.288109>,  <35.367741, 35.541626, 36.379166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.152817, 35.597446, 36.288109>,  <34.794609, 35.690479, 36.136349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.152817, 35.597446, 36.288109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379172, 0.047503, 0.924106,
		-0.232956, -0.971415, -0.045650,
		0.895522, -0.232585, 0.379400,
		35.421474, 35.527672, 36.401928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.684223, 35.140106, 36.643574>,  <34.794609, 35.690479, 36.136349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.684223, 35.140106, 36.643574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.036934, 35.317070, 36.708988>,  <35.248562, 35.423248, 36.748238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.036934, 35.317070, 36.708988>,  <34.684223, 35.140106, 36.643574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.036934, 35.317070, 36.708988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215620, 0.069734, 0.973984,
		0.419493, -0.894099, 0.156882,
		0.881779, 0.442406, 0.163532,
		35.301468, 35.449791, 36.758049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.070847, 34.704819, 37.072632>,  <34.684223, 35.140106, 36.643574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.070847, 34.704819, 37.072632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.207989, 35.076061, 37.130688>,  <35.290272, 35.298809, 37.165524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.207989, 35.076061, 37.130688>,  <35.070847, 34.704819, 37.072632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.207989, 35.076061, 37.130688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337032, -0.022691, 0.941220,
		0.876848, -0.371615, 0.305023,
		0.342850, 0.928110, 0.145143,
		35.310844, 35.354492, 37.174229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.414658, 34.775520, 37.792393>,  <35.070847, 34.704819, 37.072632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.414658, 34.775520, 37.792393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.402264, 35.157429, 37.674107>,  <35.394829, 35.386574, 37.603134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.402264, 35.157429, 37.674107>,  <35.414658, 34.775520, 37.792393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.402264, 35.157429, 37.674107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276524, 0.276118, 0.920485,
		0.960507, 0.110291, 0.255463,
		-0.030983, 0.954775, -0.295712,
		35.392967, 35.443863, 37.585392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.850399, 35.143017, 38.254036>,  <35.414658, 34.775520, 37.792393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.850399, 35.143017, 38.254036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.591049, 35.409763, 38.107117>,  <35.435440, 35.569809, 38.018963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.591049, 35.409763, 38.107117>,  <35.850399, 35.143017, 38.254036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.591049, 35.409763, 38.107117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199077, 0.317158, 0.927243,
		0.734835, 0.674319, -0.072880,
		-0.648372, 0.666862, -0.367300,
		35.396538, 35.609821, 37.996925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.918720, 35.807632, 38.672703>,  <35.850399, 35.143017, 38.254036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.918720, 35.807632, 38.672703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.557106, 35.862999, 38.510929>,  <35.340137, 35.896221, 38.413864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.557106, 35.862999, 38.510929>,  <35.918720, 35.807632, 38.672703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.557106, 35.862999, 38.510929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327496, 0.383766, 0.863406,
		0.274719, 0.912997, -0.301606,
		-0.904033, 0.138420, -0.404431,
		35.285896, 35.904526, 38.389599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.710014, 36.462856, 38.865116>,  <35.918720, 35.807632, 38.672703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.710014, 36.462856, 38.865116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.356339, 36.301468, 38.770954>,  <35.144131, 36.204636, 38.714455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.356339, 36.301468, 38.770954>,  <35.710014, 36.462856, 38.865116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.356339, 36.301468, 38.770954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361908, 0.273054, 0.891327,
		-0.295344, 0.873301, -0.387450,
		-0.884192, -0.403470, -0.235409,
		35.091080, 36.180428, 38.700333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.102116, 36.993156, 38.882423>,  <35.710014, 36.462856, 38.865116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.102116, 36.993156, 38.882423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.925022, 36.639004, 38.939121>,  <34.818768, 36.426514, 38.973141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.925022, 36.639004, 38.939121>,  <35.102116, 36.993156, 38.882423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.925022, 36.639004, 38.939121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603798, 0.411248, 0.682864,
		-0.662885, 0.216741, -0.716663,
		-0.442731, -0.885380, 0.141742,
		34.792202, 36.373390, 38.981644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.331268, 37.135590, 38.933128>,  <35.102116, 36.993156, 38.882423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.331268, 37.135590, 38.933128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.374916, 36.769646, 39.088623>,  <34.401104, 36.550079, 39.181919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.374916, 36.769646, 39.088623>,  <34.331268, 37.135590, 38.933128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.374916, 36.769646, 39.088623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591505, 0.254538, 0.765070,
		-0.798883, -0.313426, -0.513372,
		0.109120, -0.914863, 0.388739,
		34.407654, 36.495186, 39.205246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.678684, 37.049923, 39.328548>,  <34.331268, 37.135590, 38.933128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.678684, 37.049923, 39.328548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.901745, 36.760796, 39.491795>,  <34.035580, 36.587318, 39.589741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.901745, 36.760796, 39.491795>,  <33.678684, 37.049923, 39.328548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.901745, 36.760796, 39.491795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252893, 0.320339, 0.912923,
		-0.790615, -0.612299, -0.004160,
		0.557649, -0.722823, 0.408111,
		34.069038, 36.543949, 39.614227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.199619, 36.691059, 39.903267>,  <33.678684, 37.049923, 39.328548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.199619, 36.691059, 39.903267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.591675, 36.642872, 39.966290>,  <33.826908, 36.613960, 40.004101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.591675, 36.642872, 39.966290>,  <33.199619, 36.691059, 39.903267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.591675, 36.642872, 39.966290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115487, 0.299180, 0.947182,
		-0.161239, -0.946562, 0.279325,
		0.980135, -0.120464, 0.157555,
		33.885715, 36.606731, 40.013557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.197559, 36.435589, 40.629532>,  <33.199619, 36.691059, 39.903267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.197559, 36.435589, 40.629532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.561451, 36.568764, 40.530296>,  <33.779785, 36.648670, 40.470757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.561451, 36.568764, 40.530296>,  <33.197559, 36.435589, 40.629532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.561451, 36.568764, 40.530296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031613, 0.540230, 0.840923,
		0.414002, -0.772853, 0.480936,
		0.909727, 0.332940, -0.248088,
		33.834370, 36.668648, 40.455868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.941147, 35.870178, 40.685307>,  <33.197559, 36.435589, 40.629532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.941147, 35.870178, 40.685307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.669334, 35.630173, 40.854168>,  <32.506245, 35.486168, 40.955486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.669334, 35.630173, 40.854168>,  <32.941147, 35.870178, 40.685307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.669334, 35.630173, 40.854168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153537, -0.446371, -0.881578,
		0.717398, -0.663878, 0.211199,
		-0.679533, -0.600016, 0.422156,
		32.465473, 35.450169, 40.980816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.141621, 35.158745, 40.583218>,  <32.941147, 35.870178, 40.685307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.141621, 35.158745, 40.583218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.748756, 35.146400, 40.657413>,  <32.513039, 35.138992, 40.701931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.748756, 35.146400, 40.657413>,  <33.141621, 35.158745, 40.583218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.748756, 35.146400, 40.657413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130636, -0.597523, -0.791139,
		0.135252, -0.801258, 0.582832,
		-0.982161, -0.030864, 0.185490,
		32.454109, 35.137142, 40.713058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.971725, 34.511421, 40.411667>,  <33.141621, 35.158745, 40.583218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.971725, 34.511421, 40.411667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.622795, 34.706158, 40.393665>,  <32.413437, 34.822998, 40.382866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.622795, 34.706158, 40.393665>,  <32.971725, 34.511421, 40.411667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.622795, 34.706158, 40.393665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188638, -0.420066, -0.887671,
		-0.451063, -0.765851, 0.458273,
		-0.872329, 0.486844, -0.045007,
		32.361095, 34.852211, 40.380165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.476170, 34.007931, 40.315437>,  <32.971725, 34.511421, 40.411667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.476170, 34.007931, 40.315437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.330536, 34.352589, 40.174011>,  <32.243156, 34.559383, 40.089153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.330536, 34.352589, 40.174011>,  <32.476170, 34.007931, 40.315437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.330536, 34.352589, 40.174011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228663, -0.450699, -0.862892,
		-0.902861, -0.233316, 0.361118,
		-0.364082, 0.861646, -0.353567,
		32.221310, 34.611084, 40.067940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.811180, 33.856247, 40.038204>,  <32.476170, 34.007931, 40.315437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.811180, 33.856247, 40.038204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.896370, 34.205185, 39.862179>,  <31.947483, 34.414547, 39.756561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.896370, 34.205185, 39.862179>,  <31.811180, 33.856247, 40.038204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.896370, 34.205185, 39.862179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387377, -0.338100, -0.857687,
		-0.896984, 0.353137, 0.265919,
		0.212974, 0.872343, -0.440068,
		31.960262, 34.466888, 39.730160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.171328, 34.104488, 39.654747>,  <31.811180, 33.856247, 40.038204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.171328, 34.104488, 39.654747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.501953, 34.242416, 39.476807>,  <31.700329, 34.325172, 39.370041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.501953, 34.242416, 39.476807>,  <31.171328, 34.104488, 39.654747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.501953, 34.242416, 39.476807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233085, -0.509700, -0.828177,
		-0.512314, 0.788228, -0.340926,
		0.826563, 0.344822, -0.444851,
		31.749922, 34.345863, 39.343353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.980789, 34.230110, 38.903618>,  <31.171328, 34.104488, 39.654747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.980789, 34.230110, 38.903618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.375916, 34.199291, 38.957706>,  <31.612991, 34.180798, 38.990158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.375916, 34.199291, 38.957706>,  <30.980789, 34.230110, 38.903618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.375916, 34.199291, 38.957706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074799, -0.526864, -0.846652,
		0.136477, 0.846450, -0.514681,
		0.987815, -0.077051, 0.135219,
		31.672260, 34.176174, 38.998272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.307272, 34.446575, 38.236317>,  <30.980789, 34.230110, 38.903618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.307272, 34.446575, 38.236317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.578051, 34.236336, 38.442421>,  <31.740517, 34.110191, 38.566086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.578051, 34.236336, 38.442421>,  <31.307272, 34.446575, 38.236317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.578051, 34.236336, 38.442421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281638, -0.461808, -0.841079,
		0.680019, 0.714482, -0.164591,
		0.676945, -0.525594, 0.515263,
		31.781134, 34.078659, 38.597000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.999075, 34.672375, 37.946522>,  <31.307272, 34.446575, 38.236317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.999075, 34.672375, 37.946522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.987139, 34.307507, 38.110012>,  <31.979977, 34.088585, 38.208107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.987139, 34.307507, 38.110012>,  <31.999075, 34.672375, 37.946522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.987139, 34.307507, 38.110012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275078, -0.400614, -0.873980,
		0.960959, 0.086353, 0.262871,
		-0.029839, -0.912169, 0.408727,
		31.978188, 34.033855, 38.232632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.377514, 34.319534, 37.558315>,  <31.999075, 34.672375, 37.946522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.377514, 34.319534, 37.558315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.247528, 34.005657, 37.769470>,  <32.169537, 33.817333, 37.896164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.247528, 34.005657, 37.769470>,  <32.377514, 34.319534, 37.558315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.247528, 34.005657, 37.769470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146632, -0.593234, -0.791563,
		0.934291, -0.179822, 0.307839,
		-0.324961, -0.784689, 0.527885,
		32.150040, 33.770252, 37.927837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.766869, 33.933853, 37.272991>,  <32.377514, 34.319534, 37.558315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.766869, 33.933853, 37.272991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.482944, 33.710072, 37.444183>,  <32.312588, 33.575802, 37.546898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.482944, 33.710072, 37.444183>,  <32.766869, 33.933853, 37.272991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.482944, 33.710072, 37.444183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136877, -0.705565, -0.695301,
		0.690962, -0.434953, 0.577397,
		-0.709814, -0.559459, 0.427983,
		32.270000, 33.542233, 37.572578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.021713, 33.167919, 37.341545>,  <32.766869, 33.933853, 37.272991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.021713, 33.167919, 37.341545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.623501, 33.197781, 37.364708>,  <32.384575, 33.215698, 37.378605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.623501, 33.197781, 37.364708>,  <33.021713, 33.167919, 37.341545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.623501, 33.197781, 37.364708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094124, -0.730679, -0.676202,
		-0.008167, -0.678628, 0.734437,
		-0.995527, 0.074650, 0.057908,
		32.324844, 33.220177, 37.382080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.681355, 33.143394, 37.919579>,  <33.021713, 33.167919, 37.341545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.681355, 33.143394, 37.919579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.629780, 33.534840, 37.983704>,  <32.598835, 33.769707, 38.022179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.629780, 33.534840, 37.983704>,  <32.681355, 33.143394, 37.919579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.629780, 33.534840, 37.983704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690060, 0.204646, -0.694217,
		-0.712174, 0.021118, -0.701685,
		-0.128936, 0.978608, 0.160316,
		32.591099, 33.828423, 38.031799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.215298, 32.642239, 38.200741>,  <32.681355, 33.143394, 37.919579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.215298, 32.642239, 38.200741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.101040, 32.335789, 37.970451>,  <33.032486, 32.151920, 37.832275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.101040, 32.335789, 37.970451>,  <33.215298, 32.642239, 38.200741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.101040, 32.335789, 37.970451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315992, 0.491863, -0.811307,
		0.904740, -0.413673, 0.101589,
		-0.285648, -0.766124, -0.575725,
		33.015347, 32.105953, 37.797733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.782684, 32.298210, 38.425461>,  <33.215298, 32.642239, 38.200741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.782684, 32.298210, 38.425461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.691174, 31.909021, 38.412907>,  <33.636269, 31.675508, 38.405373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.691174, 31.909021, 38.412907>,  <33.782684, 32.298210, 38.425461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.691174, 31.909021, 38.412907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142044, -0.001470, -0.989860,
		0.963061, -0.230911, 0.138541,
		-0.228773, -0.972974, -0.031384,
		33.622543, 31.617128, 38.403492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.316879, 31.856945, 38.029316>,  <33.782684, 32.298210, 38.425461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.316879, 31.856945, 38.029316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.944557, 31.712101, 38.009384>,  <33.721165, 31.625195, 37.997425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.944557, 31.712101, 38.009384>,  <34.316879, 31.856945, 38.029316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.944557, 31.712101, 38.009384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029248, 0.062114, -0.997640,
		0.364350, -0.930064, -0.047225,
		-0.930803, -0.362110, -0.049834,
		33.665318, 31.603468, 37.994434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.075844, 32.049679, 38.066513>,  <34.316879, 31.856945, 38.029316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.075844, 32.049679, 38.066513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.401596, 32.267113, 37.985229>,  <35.597050, 32.397572, 37.936459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.401596, 32.267113, 37.985229>,  <35.075844, 32.049679, 38.066513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.401596, 32.267113, 37.985229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009354, 0.362412, 0.931971,
		0.580250, -0.757082, 0.300228,
		0.814385, 0.543584, -0.203208,
		35.645912, 32.430187, 37.924267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.511513, 31.926533, 38.574818>,  <35.075844, 32.049679, 38.066513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.511513, 31.926533, 38.574818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.699028, 32.245613, 38.423077>,  <35.811539, 32.437061, 38.332031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.699028, 32.245613, 38.423077>,  <35.511513, 31.926533, 38.574818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.699028, 32.245613, 38.423077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236607, 0.300373, 0.924010,
		0.851030, -0.522924, -0.047930,
		0.468790, 0.797701, -0.379354,
		35.839664, 32.484924, 38.309269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.151421, 31.930094, 38.900379>,  <35.511513, 31.926533, 38.574818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.151421, 31.930094, 38.900379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.067722, 32.296906, 38.764572>,  <36.017502, 32.516991, 38.683086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.067722, 32.296906, 38.764572>,  <36.151421, 31.930094, 38.900379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.067722, 32.296906, 38.764572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079785, 0.362061, 0.928734,
		0.974603, 0.167245, -0.148925,
		-0.209246, 0.917028, -0.339522,
		36.004948, 32.572014, 38.662716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.664852, 32.388889, 39.078510>,  <36.151421, 31.930094, 38.900379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.664852, 32.388889, 39.078510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.359989, 32.637352, 39.005543>,  <36.177071, 32.786430, 38.961761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.359989, 32.637352, 39.005543>,  <36.664852, 32.388889, 39.078510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.359989, 32.637352, 39.005543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118536, 0.410900, 0.903942,
		0.636447, 0.667324, -0.386801,
		-0.762158, 0.621161, -0.182414,
		36.131340, 32.823700, 38.950817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.841183, 32.943970, 39.363045>,  <36.664852, 32.388889, 39.078510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.841183, 32.943970, 39.363045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.451199, 33.014881, 39.309349>,  <36.217209, 33.057426, 39.277134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.451199, 33.014881, 39.309349>,  <36.841183, 32.943970, 39.363045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451199, 33.014881, 39.309349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037709, 0.463123, 0.885492,
		0.219143, 0.868384, -0.444843,
		-0.974964, 0.177275, -0.134236,
		36.158710, 33.068062, 39.269077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.732552, 33.721695, 39.290440>,  <36.841183, 32.943970, 39.363045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.732552, 33.721695, 39.290440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.381325, 33.566746, 39.402824>,  <36.170589, 33.473778, 39.470253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.381325, 33.566746, 39.402824>,  <36.732552, 33.721695, 39.290440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.381325, 33.566746, 39.402824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010841, 0.570872, 0.820967,
		-0.478409, 0.723913, -0.497066,
		-0.878070, -0.387370, 0.280959,
		36.117905, 33.450535, 39.487110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.270542, 34.260246, 39.531242>,  <36.732552, 33.721695, 39.290440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.270542, 34.260246, 39.531242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.101166, 33.938736, 39.698406>,  <35.999538, 33.745831, 39.798702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.101166, 33.938736, 39.698406>,  <36.270542, 34.260246, 39.531242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.101166, 33.938736, 39.698406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108154, 0.502859, 0.857576,
		-0.899443, 0.317937, -0.299863,
		-0.423444, -0.803772, 0.417907,
		35.974133, 33.697605, 39.823780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.623417, 34.542759, 39.865631>,  <36.270542, 34.260246, 39.531242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.623417, 34.542759, 39.865631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.696037, 34.197823, 40.054695>,  <35.739609, 33.990860, 40.168133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.696037, 34.197823, 40.054695>,  <35.623417, 34.542759, 39.865631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.696037, 34.197823, 40.054695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098306, 0.462328, 0.881243,
		-0.978455, -0.206457, -0.000836,
		0.181552, -0.862339, 0.472663,
		35.750504, 33.939121, 40.196495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.229927, 34.569607, 40.442101>,  <35.623417, 34.542759, 39.865631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.229927, 34.569607, 40.442101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.491665, 34.289658, 40.556648>,  <35.648708, 34.121689, 40.625378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.491665, 34.289658, 40.556648>,  <35.229927, 34.569607, 40.442101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.491665, 34.289658, 40.556648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018989, 0.363365, 0.931453,
		-0.755958, -0.614929, 0.224476,
		0.654345, -0.699878, 0.286366,
		35.687969, 34.079693, 40.642559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.992085, 34.450294, 41.105709>,  <35.229927, 34.569607, 40.442101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.992085, 34.450294, 41.105709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.338211, 34.249828, 41.108833>,  <35.545887, 34.129551, 41.110706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.338211, 34.249828, 41.108833>,  <34.992085, 34.450294, 41.105709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.338211, 34.249828, 41.108833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142931, 0.261659, 0.954518,
		-0.480411, -0.824846, 0.298050,
		0.865318, -0.501162, 0.007807,
		35.597805, 34.099480, 41.111176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.969433, 33.938091, 41.661232>,  <34.992085, 34.450294, 41.105709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.969433, 33.938091, 41.661232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.353905, 34.028656, 41.598148>,  <35.584587, 34.082996, 41.560299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.353905, 34.028656, 41.598148>,  <34.969433, 33.938091, 41.661232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.353905, 34.028656, 41.598148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117814, 0.180076, 0.976572,
		0.249511, -0.957240, 0.146410,
		0.961178, 0.226416, -0.157707,
		35.642258, 34.096581, 41.550835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.218311, 33.762630, 42.209915>,  <34.969433, 33.938091, 41.661232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.218311, 33.762630, 42.209915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.546257, 33.940262, 42.065350>,  <35.743023, 34.046841, 41.978611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.546257, 33.940262, 42.065350>,  <35.218311, 33.762630, 42.209915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.546257, 33.940262, 42.065350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206707, 0.359088, 0.910125,
		0.533946, -0.820884, 0.202608,
		0.819862, 0.444077, -0.361416,
		35.792217, 34.073486, 41.956924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.780712, 33.450645, 42.528713>,  <35.218311, 33.762630, 42.209915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.780712, 33.450645, 42.528713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.909103, 33.812717, 42.417271>,  <35.986137, 34.029961, 42.350407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.909103, 33.812717, 42.417271>,  <35.780712, 33.450645, 42.528713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.909103, 33.812717, 42.417271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176087, 0.232000, 0.956645,
		0.930573, -0.356122, -0.084923,
		0.320980, 0.905181, -0.278602,
		36.005398, 34.084270, 42.333691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368813, 33.592655, 42.864014>,  <35.780712, 33.450645, 42.528713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.368813, 33.592655, 42.864014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.263809, 33.969807, 42.781971>,  <36.200806, 34.196098, 42.732746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.263809, 33.969807, 42.781971>,  <36.368813, 33.592655, 42.864014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.263809, 33.969807, 42.781971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256227, 0.273048, 0.927250,
		0.930289, 0.190855, -0.313268,
		-0.262507, 0.942878, -0.205111,
		36.185059, 34.252670, 42.720436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.970387, 34.038593, 43.180386>,  <36.368813, 33.592655, 42.864014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.970387, 34.038593, 43.180386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.626034, 34.235394, 43.128513>,  <36.419422, 34.353474, 43.097389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.626034, 34.235394, 43.128513>,  <36.970387, 34.038593, 43.180386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.626034, 34.235394, 43.128513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030570, 0.304430, 0.952044,
		0.507888, 0.815632, -0.277118,
		-0.860881, 0.492003, -0.129682,
		36.367771, 34.382996, 43.089607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.053867, 34.667412, 43.454960>,  <36.970387, 34.038593, 43.180386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.053867, 34.667412, 43.454960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.656544, 34.629345, 43.481152>,  <36.418152, 34.606503, 43.496868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.656544, 34.629345, 43.481152>,  <37.053867, 34.667412, 43.454960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.656544, 34.629345, 43.481152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027267, 0.357641, 0.933461,
		-0.112257, 0.928997, -0.352651,
		-0.993305, -0.095172, 0.065478,
		36.358551, 34.600792, 43.500793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.837132, 35.204338, 43.948250>,  <37.053867, 34.667412, 43.454960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.837132, 35.204338, 43.948250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.501080, 34.987507, 43.955574>,  <36.299450, 34.857407, 43.959969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.501080, 34.987507, 43.955574>,  <36.837132, 35.204338, 43.948250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.501080, 34.987507, 43.955574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139473, 0.248545, 0.958526,
		-0.524147, 0.802731, -0.284415,
		-0.840129, -0.542077, 0.018315,
		36.249043, 34.824883, 43.961067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.395821, 35.568352, 44.337383>,  <36.837132, 35.204338, 43.948250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.395821, 35.568352, 44.337383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.271702, 35.188541, 44.355755>,  <36.197231, 34.960655, 44.366776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.271702, 35.188541, 44.355755>,  <36.395821, 35.568352, 44.337383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.271702, 35.188541, 44.355755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403416, 0.175271, 0.898073,
		-0.860795, 0.260147, -0.437442,
		-0.310301, -0.949528, 0.045925,
		36.178612, 34.903683, 44.369534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.695087, 35.535980, 44.566074>,  <36.395821, 35.568352, 44.337383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.695087, 35.535980, 44.566074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.825771, 35.169823, 44.660149>,  <35.904182, 34.950127, 44.716591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.825771, 35.169823, 44.660149>,  <35.695087, 35.535980, 44.566074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.825771, 35.169823, 44.660149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334410, 0.120777, 0.934656,
		-0.883986, -0.384008, -0.266659,
		0.326710, -0.915397, 0.235181,
		35.923786, 34.895203, 44.730701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.173389, 35.262981, 45.046009>,  <35.695087, 35.535980, 44.566074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.173389, 35.262981, 45.046009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.502575, 35.047920, 45.119396>,  <35.700089, 34.918884, 45.163429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.502575, 35.047920, 45.119396>,  <35.173389, 35.262981, 45.046009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.502575, 35.047920, 45.119396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094982, 0.188188, 0.977529,
		-0.560095, -0.821899, 0.103805,
		0.822965, -0.537650, 0.183469,
		35.749466, 34.886627, 45.174438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.013374, 34.781639, 45.613914>,  <35.173389, 35.262981, 45.046009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.013374, 34.781639, 45.613914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.411259, 34.822048, 45.606522>,  <35.649990, 34.846294, 45.602085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.411259, 34.822048, 45.606522>,  <35.013374, 34.781639, 45.613914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.411259, 34.822048, 45.606522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021554, -0.029410, 0.999335,
		0.100418, -0.994449, -0.031433,
		0.994712, 0.101029, -0.018481,
		35.709671, 34.852356, 45.600979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.239632, 34.429283, 46.165421>,  <35.013374, 34.781639, 45.613914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.239632, 34.429283, 46.165421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.575493, 34.619446, 46.060368>,  <35.777008, 34.733543, 45.997334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.575493, 34.619446, 46.060368>,  <35.239632, 34.429283, 46.165421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.575493, 34.619446, 46.060368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271051, 0.052254, 0.961146,
		0.470657, -0.878214, -0.084984,
		0.839650, 0.475405, -0.262634,
		35.827389, 34.762066, 45.981579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.691799, 34.150944, 46.592690>,  <35.239632, 34.429283, 46.165421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.691799, 34.150944, 46.592690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.850658, 34.491261, 46.455040>,  <35.945976, 34.695450, 46.372452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.850658, 34.491261, 46.455040>,  <35.691799, 34.150944, 46.592690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.850658, 34.491261, 46.455040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138474, 0.315115, 0.938897,
		0.907247, -0.420535, 0.007334,
		0.397150, 0.850796, -0.344120,
		35.969803, 34.746498, 46.351803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412201, 34.185856, 46.916229>,  <35.691799, 34.150944, 46.592690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.412201, 34.185856, 46.916229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.284710, 34.555573, 46.832222>,  <36.208218, 34.777401, 46.781818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.284710, 34.555573, 46.832222>,  <36.412201, 34.185856, 46.916229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.284710, 34.555573, 46.832222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229663, 0.290276, 0.928975,
		0.919603, 0.247853, -0.304793,
		-0.318723, 0.924288, -0.210016,
		36.189095, 34.832859, 46.769218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.937737, 34.617619, 47.367027>,  <36.412201, 34.185856, 46.916229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.937737, 34.617619, 47.367027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.629917, 34.859020, 47.283520>,  <36.445225, 35.003860, 47.233418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.629917, 34.859020, 47.283520>,  <36.937737, 34.617619, 47.367027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.629917, 34.859020, 47.283520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101824, 0.438700, 0.892846,
		0.630418, 0.665831, -0.399052,
		-0.769549, 0.603499, -0.208766,
		36.399052, 35.040070, 47.220890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.239967, 35.286949, 47.359619>,  <36.937737, 34.617619, 47.367027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.239967, 35.286949, 47.359619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.846996, 35.329479, 47.420971>,  <36.611214, 35.354996, 47.457783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.846996, 35.329479, 47.420971>,  <37.239967, 35.286949, 47.359619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.846996, 35.329479, 47.420971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180032, 0.323413, 0.928974,
		0.049169, 0.940266, -0.336872,
		-0.982431, 0.106324, 0.153376,
		36.552265, 35.361378, 47.466984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940697, 35.664864, 47.346130>,  <37.239967, 35.286949, 47.359619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.940697, 35.664864, 47.346130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.230625, 35.446507, 47.514244>,  <38.404583, 35.315491, 47.615112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.230625, 35.446507, 47.514244>,  <37.940697, 35.664864, 47.346130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.230625, 35.446507, 47.514244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250869, -0.359032, -0.898978,
		0.641641, 0.757032, -0.123285,
		0.724818, -0.545893, 0.420285,
		38.448071, 35.282738, 47.640331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.381599, 35.681274, 46.793835>,  <37.940697, 35.664864, 47.346130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.381599, 35.681274, 46.793835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.491444, 35.405350, 47.061790>,  <38.557350, 35.239796, 47.222565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.491444, 35.405350, 47.061790>,  <38.381599, 35.681274, 46.793835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.491444, 35.405350, 47.061790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316606, -0.592953, -0.740383,
		0.907936, 0.415410, 0.055565,
		0.274615, -0.689812, 0.669885,
		38.573830, 35.198406, 47.262756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.152737, 35.662079, 46.714817>,  <38.381599, 35.681274, 46.793835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.152737, 35.662079, 46.714817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.019562, 35.321671, 46.877254>,  <38.939655, 35.117424, 46.974716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.019562, 35.321671, 46.877254>,  <39.152737, 35.662079, 46.714817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.019562, 35.321671, 46.877254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564128, -0.524856, -0.637406,
		0.755586, 0.016868, 0.654832,
		-0.332941, -0.851024, 0.406089,
		38.919678, 35.066364, 46.999081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.725964, 35.232697, 46.813042>,  <39.152737, 35.662079, 46.714817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.725964, 35.232697, 46.813042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.409027, 34.991184, 46.848003>,  <39.218864, 34.846279, 46.868980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.409027, 34.991184, 46.848003>,  <39.725964, 35.232697, 46.813042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.409027, 34.991184, 46.848003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344282, -0.560807, -0.752971,
		0.503645, -0.566521, 0.652223,
		-0.792346, -0.603779, 0.087404,
		39.171322, 34.810051, 46.874226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.964092, 34.624813, 46.578506>,  <39.725964, 35.232697, 46.813042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.964092, 34.624813, 46.578506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.568756, 34.569885, 46.552193>,  <39.331554, 34.536930, 46.536404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.568756, 34.569885, 46.552193>,  <39.964092, 34.624813, 46.578506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.568756, 34.569885, 46.552193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136761, -0.610638, -0.780011,
		0.066941, -0.779913, 0.622298,
		-0.988340, -0.137320, -0.065785,
		39.272255, 34.528690, 46.532455>
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
