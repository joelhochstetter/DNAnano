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
	<24.610672, 34.540432, 35.128387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.462358, 34.818306, 34.881836>,  <24.373371, 34.985031, 34.733906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.462358, 34.818306, 34.881836>,  <24.610672, 34.540432, 35.128387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.462358, 34.818306, 34.881836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327087, -0.523487, -0.786750,
		-0.869215, -0.493323, -0.033125,
		-0.370782, 0.694689, -0.616382,
		24.351124, 35.026714, 34.696922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.312140, 34.126877, 34.990055>,  <24.610672, 34.540432, 35.128387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.312140, 34.126877, 34.990055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.690338, 34.049885, 34.884991>,  <25.917257, 34.003689, 34.821953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.690338, 34.049885, 34.884991>,  <25.312140, 34.126877, 34.990055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.690338, 34.049885, 34.884991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241166, 0.128079, -0.961995,
		0.218805, 0.972907, 0.074679,
		0.945496, -0.192479, -0.262657,
		25.973988, 33.992142, 34.806194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.811682, 34.527294, 35.440231>,  <25.312140, 34.126877, 34.990055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.811682, 34.527294, 35.440231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.039476, 34.231010, 35.297665>,  <26.176153, 34.053238, 35.212124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.039476, 34.231010, 35.297665>,  <25.811682, 34.527294, 35.440231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.039476, 34.231010, 35.297665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048899, -0.402299, 0.914202,
		-0.820545, -0.538053, -0.192883,
		0.569486, -0.740712, -0.356415,
		26.210321, 34.008797, 35.190739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.355595, 34.414513, 34.922646>,  <25.811682, 34.527294, 35.440231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.355595, 34.414513, 34.922646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.589724, 34.280293, 34.627403>,  <26.730200, 34.199760, 34.450256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.589724, 34.280293, 34.627403>,  <26.355595, 34.414513, 34.922646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.589724, 34.280293, 34.627403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784234, -0.465427, -0.410311,
		-0.205854, 0.819013, -0.535576,
		0.585321, -0.335552, -0.738108,
		26.765320, 34.179626, 34.405972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.702543, 34.744843, 34.348785>,  <26.355595, 34.414513, 34.922646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.702543, 34.744843, 34.348785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.078056, 34.750278, 34.211086>,  <27.303364, 34.753540, 34.128468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.078056, 34.750278, 34.211086>,  <26.702543, 34.744843, 34.348785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.078056, 34.750278, 34.211086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328561, -0.265236, -0.906475,
		-0.103629, 0.964088, -0.244532,
		0.938780, 0.013594, -0.344248,
		27.359690, 34.754356, 34.107811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.794233, 35.270870, 33.777939>,  <26.702543, 34.744843, 34.348785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.794233, 35.270870, 33.777939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.057932, 34.970825, 33.757076>,  <27.216152, 34.790798, 33.744560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.057932, 34.970825, 33.757076>,  <26.794233, 35.270870, 33.777939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.057932, 34.970825, 33.757076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316182, -0.213612, -0.924337,
		0.682218, 0.625858, -0.377996,
		0.659248, -0.750115, -0.052155,
		27.255707, 34.745792, 33.741428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.114862, 35.332722, 33.127483>,  <26.794233, 35.270870, 33.777939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.114862, 35.332722, 33.127483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.179234, 34.953686, 33.237877>,  <27.217857, 34.726265, 33.304111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.179234, 34.953686, 33.237877>,  <27.114862, 35.332722, 33.127483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.179234, 34.953686, 33.237877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238218, -0.308656, -0.920860,
		0.957786, 0.082449, -0.275406,
		0.160930, -0.947594, 0.275985,
		27.227512, 34.669407, 33.320671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.694361, 35.126617, 32.775101>,  <27.114862, 35.332722, 33.127483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.694361, 35.126617, 32.775101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.439295, 34.831039, 32.862137>,  <27.286255, 34.653694, 32.914360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.439295, 34.831039, 32.862137>,  <27.694361, 35.126617, 32.775101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.439295, 34.831039, 32.862137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147568, -0.160056, -0.976015,
		0.756046, -0.654481, -0.006982,
		-0.637666, -0.738943, 0.217591,
		27.247995, 34.609356, 32.927414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.741993, 34.692352, 32.246250>,  <27.694361, 35.126617, 32.775101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.741993, 34.692352, 32.246250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.412178, 34.550262, 32.422413>,  <27.214289, 34.465008, 32.528111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.412178, 34.550262, 32.422413>,  <27.741993, 34.692352, 32.246250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.412178, 34.550262, 32.422413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311912, -0.364046, -0.877600,
		0.472073, -0.860980, 0.189370,
		-0.824535, -0.355224, 0.440406,
		27.164818, 34.443695, 32.554535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.662695, 33.917770, 32.008053>,  <27.741993, 34.692352, 32.246250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.662695, 33.917770, 32.008053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.299776, 34.055702, 32.104305>,  <27.082024, 34.138462, 32.162056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.299776, 34.055702, 32.104305>,  <27.662695, 33.917770, 32.008053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.299776, 34.055702, 32.104305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382838, -0.440734, -0.811904,
		-0.173909, -0.828764, 0.531890,
		-0.907299, 0.344825, 0.240635,
		27.027586, 34.159149, 32.176495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.235186, 33.439495, 31.708492>,  <27.662695, 33.917770, 32.008053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.235186, 33.439495, 31.708492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.006491, 33.757236, 31.790583>,  <26.869274, 33.947884, 31.839836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.006491, 33.757236, 31.790583>,  <27.235186, 33.439495, 31.708492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.006491, 33.757236, 31.790583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545841, -0.181539, -0.817986,
		-0.612516, -0.579691, 0.537385,
		-0.571736, 0.794356, 0.205224,
		26.834970, 33.995544, 31.852150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.572029, 33.216125, 31.871468>,  <27.235186, 33.439495, 31.708492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.572029, 33.216125, 31.871468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.546316, 33.592438, 31.738325>,  <26.530888, 33.818226, 31.658440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.546316, 33.592438, 31.738325>,  <26.572029, 33.216125, 31.871468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.546316, 33.592438, 31.738325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526495, -0.315322, -0.789541,
		-0.847745, 0.124493, 0.515588,
		-0.064284, 0.940784, -0.332858,
		26.527031, 33.874672, 31.638468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.833559, 33.348713, 31.557032>,  <26.572029, 33.216125, 31.871468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.833559, 33.348713, 31.557032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.031887, 33.666103, 31.415859>,  <26.150885, 33.856537, 31.331156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.031887, 33.666103, 31.415859>,  <25.833559, 33.348713, 31.557032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.031887, 33.666103, 31.415859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413924, -0.141340, -0.899272,
		-0.763433, 0.591964, 0.258359,
		0.495820, 0.793474, -0.352932,
		26.180634, 33.904144, 31.309980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.351585, 33.600540, 31.093933>,  <25.833559, 33.348713, 31.557032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.351585, 33.600540, 31.093933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.713705, 33.720768, 30.973875>,  <25.930977, 33.792904, 30.901840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.713705, 33.720768, 30.973875>,  <25.351585, 33.600540, 31.093933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.713705, 33.720768, 30.973875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322273, 0.025718, -0.946297,
		-0.276711, 0.953412, 0.120149,
		0.905301, 0.300572, -0.300143,
		25.985296, 33.810940, 30.883833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.208668, 34.126892, 30.595497>,  <25.351585, 33.600540, 31.093933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.208668, 34.126892, 30.595497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.595304, 34.051662, 30.525839>,  <25.827288, 34.006527, 30.484043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.595304, 34.051662, 30.525839>,  <25.208668, 34.126892, 30.595497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.595304, 34.051662, 30.525839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182308, -0.026878, -0.982874,
		0.180170, 0.981787, -0.060267,
		0.966593, -0.188072, -0.174145,
		25.885283, 33.995239, 30.473595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.343990, 34.602272, 30.089802>,  <25.208668, 34.126892, 30.595497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.343990, 34.602272, 30.089802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.618591, 34.319435, 30.021999>,  <25.783352, 34.149734, 29.981318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.618591, 34.319435, 30.021999>,  <25.343990, 34.602272, 30.089802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.618591, 34.319435, 30.021999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137116, 0.103047, -0.985180,
		0.714082, 0.699571, -0.026212,
		0.686503, -0.707094, -0.169507,
		25.824543, 34.107307, 29.971148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.783487, 34.927662, 29.453175>,  <25.343990, 34.602272, 30.089802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.783487, 34.927662, 29.453175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.844465, 34.535686, 29.504522>,  <25.881052, 34.300503, 29.535330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.844465, 34.535686, 29.504522>,  <25.783487, 34.927662, 29.453175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.844465, 34.535686, 29.504522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212291, -0.159322, -0.964131,
		0.965242, 0.119726, -0.232321,
		0.152445, -0.979940, 0.128368,
		25.890200, 34.241703, 29.543034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.197706, 34.739754, 28.920116>,  <25.783487, 34.927662, 29.453175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.197706, 34.739754, 28.920116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.057205, 34.384636, 29.039072>,  <25.972904, 34.171566, 29.110445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.057205, 34.384636, 29.039072>,  <26.197706, 34.739754, 28.920116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.057205, 34.384636, 29.039072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086005, -0.285690, -0.954455,
		0.932322, -0.360833, 0.023994,
		-0.351253, -0.887795, 0.297389,
		25.951830, 34.118298, 29.128288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.620016, 34.212524, 28.717146>,  <26.197706, 34.739754, 28.920116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.620016, 34.212524, 28.717146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.255644, 34.048939, 28.738873>,  <26.037020, 33.950787, 28.751907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.255644, 34.048939, 28.738873>,  <26.620016, 34.212524, 28.717146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.255644, 34.048939, 28.738873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138040, -0.426205, -0.894033,
		0.388781, -0.806904, 0.444696,
		-0.910931, -0.408969, 0.054316,
		25.982365, 33.926247, 28.755167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.695583, 33.518761, 28.486525>,  <26.620016, 34.212524, 28.717146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.695583, 33.518761, 28.486525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.306997, 33.607285, 28.452402>,  <26.073845, 33.660400, 28.431929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.306997, 33.607285, 28.452402>,  <26.695583, 33.518761, 28.486525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.306997, 33.607285, 28.452402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044573, -0.523603, -0.850796,
		-0.232954, -0.822717, 0.518526,
		-0.971466, 0.221309, -0.085305,
		26.015558, 33.673676, 28.426811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.500578, 32.948059, 28.181799>,  <26.695583, 33.518761, 28.486525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.500578, 32.948059, 28.181799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.177197, 33.181404, 28.150597>,  <25.983168, 33.321411, 28.131874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.177197, 33.181404, 28.150597>,  <26.500578, 32.948059, 28.181799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.177197, 33.181404, 28.150597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193949, -0.389199, -0.900504,
		-0.555685, -0.712887, 0.427793,
		-0.808454, 0.583367, -0.078008,
		25.934660, 33.356415, 28.127193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.988321, 32.506298, 28.011553>,  <26.500578, 32.948059, 28.181799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.988321, 32.506298, 28.011553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.885202, 32.869873, 27.880486>,  <25.823332, 33.088020, 27.801846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.885202, 32.869873, 27.880486>,  <25.988321, 32.506298, 28.011553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.885202, 32.869873, 27.880486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280064, -0.394869, -0.875010,
		-0.924719, -0.133807, 0.356358,
		-0.257797, 0.908942, -0.327668,
		25.807863, 33.142555, 27.782185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.582989, 32.360756, 27.556906>,  <25.988321, 32.506298, 28.011553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.582989, 32.360756, 27.556906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.586432, 32.754501, 27.486532>,  <25.588497, 32.990749, 27.444307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.586432, 32.754501, 27.486532>,  <25.582989, 32.360756, 27.556906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.586432, 32.754501, 27.486532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184889, -0.171340, -0.967708,
		-0.982722, 0.040855, 0.180523,
		0.008605, 0.984365, -0.175933,
		25.589012, 33.049812, 27.433752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.923645, 32.637932, 27.250418>,  <25.582989, 32.360756, 27.556906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.923645, 32.637932, 27.250418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.243034, 32.844242, 27.126215>,  <25.434668, 32.968029, 27.051693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.243034, 32.844242, 27.126215>,  <24.923645, 32.637932, 27.250418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.243034, 32.844242, 27.126215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242708, -0.196211, -0.950049,
		-0.550941, 0.833950, -0.031485,
		0.798471, 0.515780, -0.310507,
		25.482576, 32.998978, 27.033062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.686085, 32.962940, 26.627035>,  <24.923645, 32.637932, 27.250418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.686085, 32.962940, 26.627035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.083607, 32.934872, 26.592571>,  <25.322121, 32.918030, 26.571892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.083607, 32.934872, 26.592571>,  <24.686085, 32.962940, 26.627035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.083607, 32.934872, 26.592571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103746, -0.308133, -0.945669,
		0.039812, 0.948752, -0.313505,
		0.993807, -0.070174, -0.086162,
		25.381748, 32.913818, 26.566723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.956291, 33.447426, 26.095423>,  <24.686085, 32.962940, 26.627035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.956291, 33.447426, 26.095423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.198160, 33.134800, 26.156773>,  <25.343281, 32.947224, 26.193583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.198160, 33.134800, 26.156773>,  <24.956291, 33.447426, 26.095423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.198160, 33.134800, 26.156773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158155, -0.306555, -0.938622,
		0.780615, 0.543300, -0.308974,
		0.604671, -0.781568, 0.153376,
		25.379562, 32.900330, 26.202785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.385429, 33.334389, 25.533333>,  <24.956291, 33.447426, 26.095423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.385429, 33.334389, 25.533333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.351145, 32.988361, 25.731041>,  <25.330574, 32.780743, 25.849665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.351145, 32.988361, 25.731041>,  <25.385429, 33.334389, 25.533333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.351145, 32.988361, 25.731041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296044, -0.451575, -0.841687,
		0.951321, -0.218468, -0.217395,
		-0.085711, -0.865073, 0.494269,
		25.325432, 32.728840, 25.879322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.907879, 32.765297, 25.354568>,  <25.385429, 33.334389, 25.533333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.907879, 32.765297, 25.354568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.536396, 32.651073, 25.449192>,  <25.313507, 32.582539, 25.505966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.536396, 32.651073, 25.449192>,  <25.907879, 32.765297, 25.354568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.536396, 32.651073, 25.449192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085848, -0.455043, -0.886322,
		0.360741, -0.843441, 0.398087,
		-0.928707, -0.285557, 0.236560,
		25.257784, 32.565407, 25.520161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.800156, 32.043095, 25.086708>,  <25.907879, 32.765297, 25.354568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.800156, 32.043095, 25.086708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.457251, 32.240631, 25.144978>,  <25.251507, 32.359154, 25.179939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.457251, 32.240631, 25.144978>,  <25.800156, 32.043095, 25.086708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.457251, 32.240631, 25.144978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341734, -0.334106, -0.878402,
		-0.385123, -0.802802, 0.455180,
		-0.857262, 0.493844, 0.145673,
		25.200071, 32.388783, 25.188681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.304197, 31.546024, 25.079678>,  <25.800156, 32.043095, 25.086708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.304197, 31.546024, 25.079678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.193825, 31.893360, 24.914827>,  <25.127602, 32.101761, 24.815916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.193825, 31.893360, 24.914827>,  <25.304197, 31.546024, 25.079678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.193825, 31.893360, 24.914827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242402, -0.477780, -0.844374,
		-0.930110, -0.133087, 0.342321,
		-0.275929, 0.868340, -0.412128,
		25.111046, 32.153862, 24.791189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.627932, 30.944368, 25.333065>,  <25.304197, 31.546024, 25.079678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.627932, 30.944368, 25.333065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.419554, 30.848995, 25.660912>,  <25.294527, 30.791771, 25.857618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.419554, 30.848995, 25.660912>,  <25.627932, 30.944368, 25.333065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.419554, 30.848995, 25.660912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851230, -0.073756, 0.519584,
		-0.063433, 0.968355, 0.241383,
		-0.520945, -0.238431, 0.819614,
		25.263269, 30.777466, 25.906796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.943672, 31.321346, 25.952221>,  <25.627932, 30.944368, 25.333065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.943672, 31.321346, 25.952221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.771852, 30.970678, 26.038877>,  <25.668760, 30.760277, 26.090872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.771852, 30.970678, 26.038877>,  <25.943672, 31.321346, 25.952221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.771852, 30.970678, 26.038877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808143, -0.266128, 0.525434,
		-0.402977, 0.400780, 0.822791,
		-0.429551, -0.876671, 0.216644,
		25.642986, 30.707678, 26.103870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.725941, 31.147978, 26.631638>,  <25.943672, 31.321346, 25.952221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.725941, 31.147978, 26.631638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.832861, 30.791950, 26.483950>,  <25.897013, 30.578333, 26.395336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.832861, 30.791950, 26.483950>,  <25.725941, 31.147978, 26.631638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.832861, 30.791950, 26.483950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668565, -0.104633, 0.736256,
		-0.693952, -0.443651, 0.567102,
		0.267303, -0.890071, -0.369220,
		25.913052, 30.524929, 26.373184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.574619, 30.635759, 27.151114>,  <25.725941, 31.147978, 26.631638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.574619, 30.635759, 27.151114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.890923, 30.568886, 26.915571>,  <26.080704, 30.528761, 26.774246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.890923, 30.568886, 26.915571>,  <25.574619, 30.635759, 27.151114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.890923, 30.568886, 26.915571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571681, -0.142180, 0.808063,
		-0.218819, -0.975620, -0.016854,
		0.790759, -0.167185, -0.588855,
		26.128151, 30.518730, 26.738914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.859789, 29.989376, 27.387033>,  <25.574619, 30.635759, 27.151114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.859789, 29.989376, 27.387033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.143787, 30.183540, 27.182962>,  <26.314186, 30.300039, 27.060520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.143787, 30.183540, 27.182962>,  <25.859789, 29.989376, 27.387033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.143787, 30.183540, 27.182962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686534, -0.315846, 0.654915,
		0.156767, -0.815240, -0.557501,
		0.709997, 0.485412, -0.510176,
		26.356787, 30.329165, 27.029909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.504036, 29.456409, 27.145847>,  <25.859789, 29.989376, 27.387033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.504036, 29.456409, 27.145847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.597467, 29.836880, 27.226547>,  <26.653526, 30.065163, 27.274967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.597467, 29.836880, 27.226547>,  <26.504036, 29.456409, 27.145847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.597467, 29.836880, 27.226547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649489, -0.307038, 0.695623,
		0.723606, -0.031446, -0.689496,
		0.233577, 0.951177, 0.201750,
		26.667540, 30.122232, 27.287073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.233442, 29.442766, 27.387314>,  <26.504036, 29.456409, 27.145847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.233442, 29.442766, 27.387314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.098789, 29.798824, 27.510157>,  <27.017998, 30.012459, 27.583862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.098789, 29.798824, 27.510157>,  <27.233442, 29.442766, 27.387314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.098789, 29.798824, 27.510157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613670, -0.039980, 0.788550,
		0.714204, 0.453915, -0.532798,
		-0.336634, 0.890147, 0.307108,
		26.997799, 30.065868, 27.602289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.849667, 29.831280, 27.524921>,  <27.233442, 29.442766, 27.387314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.849667, 29.831280, 27.524921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.572338, 30.025177, 27.738211>,  <27.405941, 30.141516, 27.866184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.572338, 30.025177, 27.738211>,  <27.849667, 29.831280, 27.524921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.572338, 30.025177, 27.738211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627861, 0.043174, 0.777127,
		0.353686, 0.873590, -0.334286,
		-0.693323, 0.484744, 0.533223,
		27.364342, 30.170601, 27.898178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.220263, 30.331434, 27.905464>,  <27.849667, 29.831280, 27.524921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.220263, 30.331434, 27.905464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.869375, 30.337917, 28.097393>,  <27.658844, 30.341806, 28.212549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.869375, 30.337917, 28.097393>,  <28.220263, 30.331434, 27.905464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.869375, 30.337917, 28.097393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478660, 0.106689, 0.871494,
		-0.037068, 0.994160, -0.101346,
		-0.877217, 0.016206, 0.479820,
		27.606211, 30.342779, 28.241339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.239717, 30.824177, 28.404167>,  <28.220263, 30.331434, 27.905464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.239717, 30.824177, 28.404167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.950596, 30.580641, 28.534931>,  <27.777122, 30.434519, 28.613390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.950596, 30.580641, 28.534931>,  <28.239717, 30.824177, 28.404167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.950596, 30.580641, 28.534931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442137, -0.043863, 0.895874,
		-0.531104, 0.792080, 0.300895,
		-0.722803, -0.608839, 0.326912,
		27.733755, 30.397989, 28.633005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.216497, 31.041563, 29.042042>,  <28.239717, 30.824177, 28.404167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.216497, 31.041563, 29.042042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.028587, 30.688469, 29.038183>,  <27.915842, 30.476612, 29.035868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.028587, 30.688469, 29.038183>,  <28.216497, 31.041563, 29.042042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.028587, 30.688469, 29.038183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364090, -0.203694, 0.908816,
		-0.804208, 0.423426, 0.417085,
		-0.469774, -0.882734, -0.009647,
		27.887655, 30.423649, 29.035290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.691105, 31.030754, 29.603857>,  <28.216497, 31.041563, 29.042042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.691105, 31.030754, 29.603857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.833300, 30.669964, 29.505821>,  <27.918617, 30.453489, 29.446999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.833300, 30.669964, 29.505821>,  <27.691105, 31.030754, 29.603857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.833300, 30.669964, 29.505821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221990, -0.173242, 0.959535,
		-0.907937, -0.395510, 0.138645,
		0.355486, -0.901976, -0.245092,
		27.939945, 30.399372, 29.432293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.327227, 30.589497, 30.010363>,  <27.691105, 31.030754, 29.603857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.327227, 30.589497, 30.010363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.688162, 30.443188, 29.919151>,  <27.904724, 30.355402, 29.864424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.688162, 30.443188, 29.919151>,  <27.327227, 30.589497, 30.010363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.688162, 30.443188, 29.919151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209294, -0.090668, 0.973640,
		-0.376804, -0.926278, -0.005259,
		0.902338, -0.365771, -0.228029,
		27.958864, 30.333456, 29.850742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.326052, 30.049654, 30.519159>,  <27.327227, 30.589497, 30.010363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.326052, 30.049654, 30.519159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.694141, 30.079624, 30.365498>,  <27.914995, 30.097607, 30.273300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.694141, 30.079624, 30.365498>,  <27.326052, 30.049654, 30.519159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.694141, 30.079624, 30.365498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391363, -0.188573, 0.900708,
		-0.004957, -0.979197, -0.202851,
		0.920223, 0.074924, -0.384156,
		27.970209, 30.102100, 30.250250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.712488, 29.771883, 31.098761>,  <27.326052, 30.049654, 30.519159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.712488, 29.771883, 31.098761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.985338, 29.900000, 30.835817>,  <28.149048, 29.976870, 30.678051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.985338, 29.900000, 30.835817>,  <27.712488, 29.771883, 31.098761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.985338, 29.900000, 30.835817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686843, 0.027818, 0.726273,
		0.250907, -0.946910, -0.201017,
		0.682123, 0.320294, -0.657358,
		28.189976, 29.996088, 30.638609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.378712, 29.293901, 31.237766>,  <27.712488, 29.771883, 31.098761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.378712, 29.293901, 31.237766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.429289, 29.656240, 31.076048>,  <28.459635, 29.873644, 30.979017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.429289, 29.656240, 31.076048>,  <28.378712, 29.293901, 31.237766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.429289, 29.656240, 31.076048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614767, 0.248303, 0.748604,
		0.778507, -0.343202, -0.525489,
		0.126442, 0.905847, -0.404295,
		28.467222, 29.927994, 30.954760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.044882, 29.454632, 31.439569>,  <28.378712, 29.293901, 31.237766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.044882, 29.454632, 31.439569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.868240, 29.799004, 31.338547>,  <28.762255, 30.005627, 31.277933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.868240, 29.799004, 31.338547>,  <29.044882, 29.454632, 31.439569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.868240, 29.799004, 31.338547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445301, 0.454689, 0.771340,
		0.778904, 0.228164, -0.584166,
		-0.441606, 0.860929, -0.252558,
		28.735758, 30.057281, 31.262779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.510551, 30.081921, 31.471073>,  <29.044882, 29.454632, 31.439569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.510551, 30.081921, 31.471073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.155008, 30.264685, 31.484716>,  <28.941683, 30.374344, 31.492903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.155008, 30.264685, 31.484716>,  <29.510551, 30.081921, 31.471073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.155008, 30.264685, 31.484716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348575, 0.626034, 0.697550,
		0.297363, 0.631913, -0.715724,
		-0.888859, 0.456909, 0.034110,
		28.888351, 30.401758, 31.494949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.639456, 30.823200, 31.489031>,  <29.510551, 30.081921, 31.471073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.639456, 30.823200, 31.489031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.261536, 30.820776, 31.620070>,  <29.034784, 30.819323, 31.698692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.261536, 30.820776, 31.620070>,  <29.639456, 30.823200, 31.489031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.261536, 30.820776, 31.620070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220897, 0.726660, 0.650515,
		-0.241992, 0.686971, -0.685209,
		-0.944799, -0.006058, 0.327596,
		28.978096, 30.818958, 31.718348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.532040, 31.515022, 31.714342>,  <29.639456, 30.823200, 31.489031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.532040, 31.515022, 31.714342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.256884, 31.279108, 31.883558>,  <29.091789, 31.137560, 31.985088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.256884, 31.279108, 31.883558>,  <29.532040, 31.515022, 31.714342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.256884, 31.279108, 31.883558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087394, 0.645911, 0.758394,
		-0.720534, 0.484721, -0.495859,
		-0.687890, -0.589784, 0.423039,
		29.050516, 31.102173, 32.010471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.892994, 31.933256, 31.691710>,  <29.532040, 31.515022, 31.714342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.892994, 31.933256, 31.691710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.897194, 31.669493, 31.992395>,  <28.899714, 31.511234, 32.172806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.897194, 31.669493, 31.992395>,  <28.892994, 31.933256, 31.691710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.897194, 31.669493, 31.992395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002698, 0.751770, 0.659420,
		-0.999941, -0.004895, 0.009671,
		0.010498, -0.659407, 0.751713,
		28.900343, 31.471670, 32.217911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.375757, 32.158379, 32.182884>,  <28.892994, 31.933256, 31.691710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.375757, 32.158379, 32.182884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.594076, 31.912251, 32.410389>,  <28.725067, 31.764574, 32.546890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.594076, 31.912251, 32.410389>,  <28.375757, 32.158379, 32.182884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.594076, 31.912251, 32.410389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083216, 0.635622, 0.767502,
		-0.833774, -0.466231, 0.295717,
		0.545798, -0.615316, 0.568763,
		28.757816, 31.727655, 32.581017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.075640, 32.192352, 32.857281>,  <28.375757, 32.158379, 32.182884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.075640, 32.192352, 32.857281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.439798, 32.041859, 32.926128>,  <28.658293, 31.951563, 32.967438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.439798, 32.041859, 32.926128>,  <28.075640, 32.192352, 32.857281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.439798, 32.041859, 32.926128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046552, 0.506520, 0.860971,
		-0.411109, -0.775812, 0.478648,
		0.910397, -0.376235, 0.172119,
		28.712917, 31.928988, 32.977764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.048811, 32.082432, 33.573906>,  <28.075640, 32.192352, 32.857281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.048811, 32.082432, 33.573906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.435816, 32.109585, 33.476490>,  <28.668018, 32.125877, 33.418041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.435816, 32.109585, 33.476490>,  <28.048811, 32.082432, 33.573906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.435816, 32.109585, 33.476490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176969, 0.506120, 0.844112,
		0.180566, -0.859787, 0.477663,
		0.967511, 0.067886, -0.243543,
		28.726068, 32.129951, 33.403427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.396423, 31.920803, 34.115711>,  <28.048811, 32.082432, 33.573906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.396423, 31.920803, 34.115711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.654417, 32.128052, 33.891018>,  <28.809214, 32.252399, 33.756203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.654417, 32.128052, 33.891018>,  <28.396423, 31.920803, 34.115711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.654417, 32.128052, 33.891018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179047, 0.612154, 0.770201,
		0.742927, -0.597343, 0.302060,
		0.644981, 0.518121, -0.561738,
		28.847912, 32.283489, 33.722496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.029554, 31.936697, 34.450405>,  <28.396423, 31.920803, 34.115711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.029554, 31.936697, 34.450405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.065928, 32.257839, 34.214725>,  <29.087751, 32.450523, 34.073318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.065928, 32.257839, 34.214725>,  <29.029554, 31.936697, 34.450405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.065928, 32.257839, 34.214725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242673, 0.555948, 0.795004,
		0.965837, -0.215274, -0.144278,
		0.090933, 0.802857, -0.589196,
		29.093208, 32.498695, 34.037968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.653666, 32.170696, 34.620663>,  <29.029554, 31.936697, 34.450405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.653666, 32.170696, 34.620663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.443241, 32.476307, 34.471252>,  <29.316986, 32.659676, 34.381607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.443241, 32.476307, 34.471252>,  <29.653666, 32.170696, 34.620663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.443241, 32.476307, 34.471252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271524, 0.567111, 0.777598,
		0.805937, 0.307644, -0.505787,
		-0.526061, 0.764029, -0.373524,
		29.285423, 32.705517, 34.359196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.141811, 32.658787, 34.388836>,  <29.653666, 32.170696, 34.620663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.141811, 32.658787, 34.388836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.790016, 32.835037, 34.460777>,  <29.578939, 32.940788, 34.503944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.790016, 32.835037, 34.460777>,  <30.141811, 32.658787, 34.388836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.790016, 32.835037, 34.460777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421998, 0.547274, 0.722779,
		0.220048, 0.711573, -0.667265,
		-0.879487, 0.440630, 0.179856,
		29.526171, 32.967228, 34.514732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.178337, 33.394054, 34.292034>,  <30.141811, 32.658787, 34.388836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.178337, 33.394054, 34.292034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.922705, 33.252110, 34.564987>,  <29.769325, 33.166943, 34.728760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.922705, 33.252110, 34.564987>,  <30.178337, 33.394054, 34.292034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.922705, 33.252110, 34.564987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553526, 0.403801, 0.728391,
		-0.534024, 0.843219, -0.061638,
		-0.639083, -0.354861, 0.682383,
		29.730980, 33.145653, 34.769703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.653990, 33.957748, 34.316170>,  <30.178337, 33.394054, 34.292034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.653990, 33.957748, 34.316170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.667084, 34.321392, 34.150063>,  <30.674940, 34.539577, 34.050396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.667084, 34.321392, 34.150063>,  <30.653990, 33.957748, 34.316170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.667084, 34.321392, 34.150063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345814, 0.379528, 0.858121,
		0.937732, -0.171697, -0.301959,
		0.032735, 0.909109, -0.415270,
		30.676905, 34.594124, 34.025482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.306211, 34.283802, 34.404518>,  <30.653990, 33.957748, 34.316170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.306211, 34.283802, 34.404518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.023205, 34.565060, 34.376198>,  <30.853401, 34.733814, 34.359203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.023205, 34.565060, 34.376198>,  <31.306211, 34.283802, 34.404518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.023205, 34.565060, 34.376198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311406, 0.400136, 0.861926,
		0.634389, 0.587776, -0.502065,
		-0.707514, 0.703143, -0.070805,
		30.810951, 34.776001, 34.354958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.631697, 34.964287, 34.488781>,  <31.306211, 34.283802, 34.404518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.631697, 34.964287, 34.488781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.246897, 35.009491, 34.588211>,  <31.016018, 35.036613, 34.647869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.246897, 35.009491, 34.588211>,  <31.631697, 34.964287, 34.488781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.246897, 35.009491, 34.588211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269832, 0.532859, 0.802030,
		-0.041818, 0.838625, -0.543103,
		-0.961999, 0.113007, 0.248571,
		30.958298, 35.043392, 34.662781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.462797, 35.749687, 34.655308>,  <31.631697, 34.964287, 34.488781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.462797, 35.749687, 34.655308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.249397, 35.456226, 34.823654>,  <31.121357, 35.280148, 34.924664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.249397, 35.456226, 34.823654>,  <31.462797, 35.749687, 34.655308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.249397, 35.456226, 34.823654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163726, 0.398607, 0.902389,
		-0.829803, 0.550330, -0.092538,
		-0.533499, -0.733654, 0.420869,
		31.089348, 35.236130, 34.949913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.235714, 35.999599, 35.249081>,  <31.462797, 35.749687, 34.655308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.235714, 35.999599, 35.249081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.147322, 35.616562, 35.323040>,  <31.094286, 35.386742, 35.367416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.147322, 35.616562, 35.323040>,  <31.235714, 35.999599, 35.249081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.147322, 35.616562, 35.323040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000209, 0.189631, 0.981855,
		-0.975278, 0.216931, -0.042104,
		-0.220979, -0.957591, 0.184897,
		31.081028, 35.329285, 35.378510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.814840, 35.992924, 35.752270>,  <31.235714, 35.999599, 35.249081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.814840, 35.992924, 35.752270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.959961, 35.621357, 35.781887>,  <31.047033, 35.398415, 35.799656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.959961, 35.621357, 35.781887>,  <30.814840, 35.992924, 35.752270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.959961, 35.621357, 35.781887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083785, 0.111648, 0.990210,
		-0.928092, -0.353046, 0.118335,
		0.362801, -0.928921, 0.074040,
		31.068802, 35.342682, 35.804100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.471767, 35.619843, 36.301342>,  <30.814840, 35.992924, 35.752270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.471767, 35.619843, 36.301342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.827656, 35.441704, 36.261219>,  <31.041189, 35.334820, 36.237144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.827656, 35.441704, 36.261219>,  <30.471767, 35.619843, 36.301342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.827656, 35.441704, 36.261219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068116, -0.087758, 0.993810,
		-0.451392, -0.891047, -0.047745,
		0.889722, -0.445346, -0.100308,
		31.094572, 35.308102, 36.231125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.355955, 35.173645, 36.955399>,  <30.471767, 35.619843, 36.301342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.355955, 35.173645, 36.955399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.733297, 35.152676, 36.824356>,  <30.959703, 35.140095, 36.745731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.733297, 35.152676, 36.824356>,  <30.355955, 35.173645, 36.955399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.733297, 35.152676, 36.824356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320783, -0.107987, 0.940977,
		-0.084707, -0.992769, -0.085054,
		0.943357, -0.052423, -0.327610,
		31.016304, 35.136948, 36.726074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.739697, 34.491306, 37.273678>,  <30.355955, 35.173645, 36.955399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.739697, 34.491306, 37.273678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.981493, 34.797249, 37.184612>,  <31.126572, 34.980816, 37.131172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.981493, 34.797249, 37.184612>,  <30.739697, 34.491306, 37.273678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.981493, 34.797249, 37.184612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362087, -0.014841, 0.932026,
		0.709565, -0.644025, -0.285917,
		0.604492, 0.764860, -0.222662,
		31.162840, 35.026707, 37.117813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.318087, 34.435398, 37.693119>,  <30.739697, 34.491306, 37.273678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.318087, 34.435398, 37.693119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.384947, 34.819221, 37.602505>,  <31.425062, 35.049515, 37.548138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.384947, 34.819221, 37.602505>,  <31.318087, 34.435398, 37.693119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.384947, 34.819221, 37.602505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488847, 0.118875, 0.864232,
		0.856207, -0.255194, -0.449205,
		0.167148, 0.959554, -0.226532,
		31.435091, 35.107086, 37.534546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.029919, 34.573689, 37.917835>,  <31.318087, 34.435398, 37.693119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.029919, 34.573689, 37.917835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.845478, 34.927273, 37.886871>,  <31.734812, 35.139423, 37.868294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.845478, 34.927273, 37.886871>,  <32.029919, 34.573689, 37.917835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.845478, 34.927273, 37.886871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432061, 0.299864, 0.850532,
		0.775051, 0.358738, -0.520194,
		-0.461106, 0.883962, -0.077413,
		31.707146, 35.192463, 37.863647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.459969, 35.041233, 38.104099>,  <32.029919, 34.573689, 37.917835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.459969, 35.041233, 38.104099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.103832, 35.209427, 38.173943>,  <31.890150, 35.310345, 38.215847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.103832, 35.209427, 38.173943>,  <32.459969, 35.041233, 38.104099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.103832, 35.209427, 38.173943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376982, 0.465797, 0.800573,
		0.255297, 0.778606, -0.573233,
		-0.890341, 0.420483, 0.174604,
		31.836729, 35.335571, 38.226322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.567013, 35.741249, 38.163704>,  <32.459969, 35.041233, 38.104099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.567013, 35.741249, 38.163704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.219490, 35.676327, 38.350822>,  <32.010975, 35.637375, 38.463093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.219490, 35.676327, 38.350822>,  <32.567013, 35.741249, 38.163704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.219490, 35.676327, 38.350822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346641, 0.475246, 0.808691,
		-0.353573, 0.864753, -0.356635,
		-0.868807, -0.162307, 0.467793,
		31.958847, 35.627636, 38.491161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.583206, 36.334286, 38.620132>,  <32.567013, 35.741249, 38.163704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.583206, 36.334286, 38.620132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.286922, 36.104992, 38.760273>,  <32.109154, 35.967415, 38.844357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.286922, 36.104992, 38.760273>,  <32.583206, 36.334286, 38.620132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.286922, 36.104992, 38.760273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089338, 0.432819, 0.897043,
		-0.665859, 0.695748, -0.269382,
		-0.740710, -0.573238, 0.350353,
		32.064709, 35.933022, 38.865379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.053757, 36.837360, 38.972939>,  <32.583206, 36.334286, 38.620132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.053757, 36.837360, 38.972939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.986740, 36.467247, 39.109047>,  <31.946531, 36.245178, 39.190712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.986740, 36.467247, 39.109047>,  <32.053757, 36.837360, 38.972939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.986740, 36.467247, 39.109047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173125, 0.312170, 0.934118,
		-0.970545, 0.215410, 0.107889,
		-0.167539, -0.925283, 0.340268,
		31.936478, 36.189663, 39.211128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.691935, 36.972698, 39.479721>,  <32.053757, 36.837360, 38.972939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.691935, 36.972698, 39.479721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.808754, 36.597610, 39.554966>,  <31.878845, 36.372559, 39.600113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.808754, 36.597610, 39.554966>,  <31.691935, 36.972698, 39.479721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.808754, 36.597610, 39.554966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061816, 0.177773, 0.982128,
		-0.954404, -0.298457, -0.006048,
		0.292048, -0.937721, 0.188117,
		31.896368, 36.316296, 39.611401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.325838, 36.714695, 40.097237>,  <31.691935, 36.972698, 39.479721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.325838, 36.714695, 40.097237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.606695, 36.430706, 40.075584>,  <31.775209, 36.260311, 40.062592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.606695, 36.430706, 40.075584>,  <31.325838, 36.714695, 40.097237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.606695, 36.430706, 40.075584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056575, -0.020156, 0.998195,
		-0.709786, -0.703937, 0.026015,
		0.702142, -0.709977, -0.054132,
		31.817337, 36.217712, 40.059345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.212811, 36.244793, 40.677174>,  <31.325838, 36.714695, 40.097237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.212811, 36.244793, 40.677174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.601496, 36.214497, 40.587704>,  <31.834707, 36.196320, 40.534019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.601496, 36.214497, 40.587704>,  <31.212811, 36.244793, 40.677174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.601496, 36.214497, 40.587704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226469, 0.030394, 0.973544,
		-0.066938, -0.996664, 0.046687,
		0.971716, -0.075740, -0.223679,
		31.893011, 36.191772, 40.520599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.457619, 35.650082, 41.061527>,  <31.212811, 36.244793, 40.677174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.457619, 35.650082, 41.061527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.785004, 35.859169, 40.966122>,  <31.981434, 35.984623, 40.908878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.785004, 35.859169, 40.966122>,  <31.457619, 35.650082, 41.061527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.785004, 35.859169, 40.966122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226159, 0.088516, 0.970060,
		0.528179, -0.847898, -0.045770,
		0.818461, 0.522717, -0.238512,
		32.030540, 36.015984, 40.894569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.917747, 35.288555, 41.386330>,  <31.457619, 35.650082, 41.061527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.917747, 35.288555, 41.386330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.080452, 35.645321, 41.307301>,  <32.178074, 35.859379, 41.259884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.080452, 35.645321, 41.307301>,  <31.917747, 35.288555, 41.386330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.080452, 35.645321, 41.307301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312321, 0.067470, 0.947578,
		0.858487, -0.447145, -0.251119,
		0.406762, 0.891913, -0.197575,
		32.202480, 35.912895, 41.248028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.658382, 35.268688, 41.482033>,  <31.917747, 35.288555, 41.386330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.658382, 35.268688, 41.482033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.568573, 35.656422, 41.521996>,  <32.514687, 35.889061, 41.545975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.568573, 35.656422, 41.521996>,  <32.658382, 35.268688, 41.482033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.568573, 35.656422, 41.521996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234240, -0.045831, 0.971098,
		0.945897, 0.241437, -0.216766,
		-0.224524, 0.969334, 0.099906,
		32.501217, 35.947224, 41.551968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.201679, 35.516975, 41.881447>,  <32.658382, 35.268688, 41.482033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.201679, 35.516975, 41.881447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.902569, 35.781132, 41.908909>,  <32.723103, 35.939625, 41.925388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.902569, 35.781132, 41.908909>,  <33.201679, 35.516975, 41.881447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.902569, 35.781132, 41.908909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032553, -0.066818, 0.997234,
		0.663156, 0.747939, 0.028467,
		-0.747773, 0.660395, 0.068658,
		32.678238, 35.979252, 41.929504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.316639, 36.038891, 42.437969>,  <33.201679, 35.516975, 41.881447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.316639, 36.038891, 42.437969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.917965, 36.040783, 42.405499>,  <32.678761, 36.041920, 42.386017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.917965, 36.040783, 42.405499>,  <33.316639, 36.038891, 42.437969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.917965, 36.040783, 42.405499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080617, 0.072941, 0.994073,
		0.010627, 0.997325, -0.072317,
		-0.996688, 0.004734, -0.081176,
		32.618958, 36.042202, 42.381145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.130722, 36.563988, 42.900974>,  <33.316639, 36.038891, 42.437969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.130722, 36.563988, 42.900974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.794010, 36.352005, 42.859875>,  <32.591984, 36.224815, 42.835217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.794010, 36.352005, 42.859875>,  <33.130722, 36.563988, 42.900974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.794010, 36.352005, 42.859875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233374, 0.185640, 0.954502,
		-0.486767, 0.827459, -0.279945,
		-0.841781, -0.529952, -0.102744,
		32.541477, 36.193020, 42.829052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.572178, 36.939796, 43.309391>,  <33.130722, 36.563988, 42.900974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.572178, 36.939796, 43.309391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.437317, 36.569973, 43.238369>,  <32.356400, 36.348080, 43.195755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.437317, 36.569973, 43.238369>,  <32.572178, 36.939796, 43.309391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.437317, 36.569973, 43.238369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271197, -0.085229, 0.958743,
		-0.901545, 0.371393, -0.222002,
		-0.337149, -0.924556, -0.177558,
		32.336174, 36.292606, 43.185101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.873779, 36.924049, 43.601059>,  <32.572178, 36.939796, 43.309391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.873779, 36.924049, 43.601059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.983906, 36.540955, 43.567734>,  <32.049980, 36.311096, 43.547737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.983906, 36.540955, 43.567734>,  <31.873779, 36.924049, 43.601059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.983906, 36.540955, 43.567734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137329, -0.124955, 0.982612,
		-0.951494, -0.259088, -0.165928,
		0.275316, -0.957736, -0.083314,
		32.066502, 36.253635, 43.542740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.325628, 36.417629, 43.821793>,  <31.873779, 36.924049, 43.601059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.325628, 36.417629, 43.821793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.677090, 36.231422, 43.864239>,  <31.887966, 36.119698, 43.889706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.677090, 36.231422, 43.864239>,  <31.325628, 36.417629, 43.821793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.677090, 36.231422, 43.864239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175767, -0.108737, 0.978408,
		-0.443929, -0.878333, -0.177365,
		0.878654, -0.465519, 0.106111,
		31.940685, 36.091766, 43.896072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.125532, 35.811943, 44.139080>,  <31.325628, 36.417629, 43.821793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.125532, 35.811943, 44.139080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.510704, 35.873081, 44.227985>,  <31.741808, 35.909763, 44.281330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.510704, 35.873081, 44.227985>,  <31.125532, 35.811943, 44.139080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.510704, 35.873081, 44.227985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227541, 0.017705, 0.973608,
		0.144872, -0.988092, 0.051826,
		0.962932, 0.152841, 0.222267,
		31.799583, 35.918934, 44.294666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.300116, 35.358917, 44.711029>,  <31.125532, 35.811943, 44.139080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.300116, 35.358917, 44.711029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.610369, 35.610943, 44.726036>,  <31.796520, 35.762157, 44.735043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.610369, 35.610943, 44.726036>,  <31.300116, 35.358917, 44.711029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.610369, 35.610943, 44.726036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068281, 0.024664, 0.997361,
		0.627479, -0.776149, 0.062152,
		0.775633, 0.630067, 0.037521,
		31.843060, 35.799961, 44.737293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.677595, 35.100952, 45.243519>,  <31.300116, 35.358917, 44.711029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.677595, 35.100952, 45.243519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.782879, 35.483376, 45.191872>,  <31.846050, 35.712830, 45.160881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.782879, 35.483376, 45.191872>,  <31.677595, 35.100952, 45.243519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.782879, 35.483376, 45.191872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059551, 0.117483, 0.991288,
		0.962899, -0.268607, -0.026011,
		0.263211, 0.956059, -0.129120,
		31.861841, 35.770195, 45.153137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.186417, 35.172535, 45.696621>,  <31.677595, 35.100952, 45.243519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.186417, 35.172535, 45.696621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.046127, 35.539059, 45.619297>,  <31.961954, 35.758972, 45.572903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.046127, 35.539059, 45.619297>,  <32.186417, 35.172535, 45.696621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.046127, 35.539059, 45.619297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074076, 0.232924, 0.969670,
		0.933545, 0.325764, -0.149568,
		-0.350722, 0.916310, -0.193314,
		31.940910, 35.813953, 45.561302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.621742, 35.651073, 46.104187>,  <32.186417, 35.172535, 45.696621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.621742, 35.651073, 46.104187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.276688, 35.838249, 46.027351>,  <32.069656, 35.950554, 45.981251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.276688, 35.838249, 46.027351>,  <32.621742, 35.651073, 46.104187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.276688, 35.838249, 46.027351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024114, 0.341270, 0.939656,
		0.505254, 0.815211, -0.283107,
		-0.862634, 0.467938, -0.192086,
		32.017899, 35.978630, 45.969727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.649162, 36.156857, 46.572426>,  <32.621742, 35.651073, 46.104187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.649162, 36.156857, 46.572426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.266884, 36.190590, 46.459618>,  <32.037518, 36.210831, 46.391933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.266884, 36.190590, 46.459618>,  <32.649162, 36.156857, 46.572426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.266884, 36.190590, 46.459618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209229, 0.479296, 0.852349,
		0.207048, 0.873592, -0.440417,
		-0.955696, 0.084329, -0.282018,
		31.980175, 36.215889, 46.375011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.468620, 36.781147, 46.780270>,  <32.649162, 36.156857, 46.572426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.468620, 36.781147, 46.780270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.116352, 36.602165, 46.718040>,  <31.904991, 36.494774, 46.680702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.116352, 36.602165, 46.718040>,  <32.468620, 36.781147, 46.780270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.116352, 36.602165, 46.718040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326004, 0.334161, 0.884341,
		-0.343718, 0.829530, -0.440158,
		-0.880670, -0.447456, -0.155573,
		31.852152, 36.467930, 46.671368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.953640, 37.307518, 46.711727>,  <32.468620, 36.781147, 46.780270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.953640, 37.307518, 46.711727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.766861, 36.972530, 46.825291>,  <31.654793, 36.771538, 46.893429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.766861, 36.972530, 46.825291>,  <31.953640, 37.307518, 46.711727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.766861, 36.972530, 46.825291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269319, 0.440492, 0.856407,
		-0.842275, 0.323436, -0.431234,
		-0.466948, -0.837470, 0.283908,
		31.626776, 36.721291, 46.910461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.276529, 37.504452, 46.996998>,  <31.953640, 37.307518, 46.711727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.276529, 37.504452, 46.996998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.340693, 37.139519, 47.147686>,  <31.379190, 36.920559, 47.238098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.340693, 37.139519, 47.147686>,  <31.276529, 37.504452, 46.996998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.340693, 37.139519, 47.147686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285092, 0.322571, 0.902591,
		-0.944982, -0.252184, -0.208355,
		0.160410, -0.912333, 0.376720,
		31.388815, 36.865818, 47.260700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.798206, 37.417522, 47.516747>,  <31.276529, 37.504452, 46.996998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.798206, 37.417522, 47.516747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.058613, 37.132732, 47.622025>,  <31.214857, 36.961861, 47.685192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.058613, 37.132732, 47.622025>,  <30.798206, 37.417522, 47.516747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.058613, 37.132732, 47.622025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215071, 0.159519, 0.963482,
		-0.727959, -0.683848, -0.049276,
		0.651015, -0.711973, 0.263200,
		31.253918, 36.919140, 47.700985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.436539, 37.044403, 48.030285>,  <30.798206, 37.417522, 47.516747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.436539, 37.044403, 48.030285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.827461, 36.974236, 48.077782>,  <31.062016, 36.932133, 48.106281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.827461, 36.974236, 48.077782>,  <30.436539, 37.044403, 48.030285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.827461, 36.974236, 48.077782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104040, 0.090808, 0.990419,
		-0.184525, -0.980296, 0.070497,
		0.977306, -0.175422, 0.118747,
		31.120653, 36.921608, 48.113407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.416658, 36.608944, 48.601990>,  <30.436539, 37.044403, 48.030285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.416658, 36.608944, 48.601990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.789946, 36.750820, 48.579033>,  <31.013918, 36.835945, 48.565258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.789946, 36.750820, 48.579033>,  <30.416658, 36.608944, 48.601990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.789946, 36.750820, 48.579033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077832, -0.043605, 0.996012,
		0.350777, -0.933965, -0.068300,
		0.933219, 0.354694, -0.057397,
		31.069912, 36.857227, 48.561813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.861904, 36.154518, 48.929340>,  <30.416658, 36.608944, 48.601990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.861904, 36.154518, 48.929340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.044001, 36.510647, 48.933113>,  <31.153259, 36.724323, 48.935375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.044001, 36.510647, 48.933113>,  <30.861904, 36.154518, 48.929340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.044001, 36.510647, 48.933113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038216, -0.030118, 0.998816,
		0.889547, -0.454343, -0.047735,
		0.455243, 0.890317, 0.009429,
		31.180574, 36.777740, 48.935940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.438683, 36.171371, 49.431648>,  <30.861904, 36.154518, 48.929340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.438683, 36.171371, 49.431648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.397486, 36.566498, 49.384987>,  <31.372768, 36.803574, 49.356991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.397486, 36.566498, 49.384987>,  <31.438683, 36.171371, 49.431648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.397486, 36.566498, 49.384987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211836, 0.136371, 0.967744,
		0.971863, 0.074959, -0.223300,
		-0.102993, 0.987818, -0.116655,
		31.366589, 36.862843, 49.349991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.020885, 36.523552, 49.932442>,  <31.438683, 36.171371, 49.431648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.020885, 36.523552, 49.932442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.721640, 36.776207, 49.851097>,  <31.542091, 36.927799, 49.802288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.721640, 36.776207, 49.851097>,  <32.020885, 36.523552, 49.932442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.721640, 36.776207, 49.851097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016856, 0.288287, 0.957396,
		0.663351, 0.719674, -0.205026,
		-0.748119, 0.631633, -0.203366,
		31.497204, 36.965698, 49.790089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.227406, 37.033112, 50.455109>,  <32.020885, 36.523552, 49.932442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.227406, 37.033112, 50.455109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.847500, 37.099686, 50.349087>,  <31.619558, 37.139629, 50.285473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.847500, 37.099686, 50.349087>,  <32.227406, 37.033112, 50.455109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.847500, 37.099686, 50.349087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217951, 0.256067, 0.941768,
		0.224618, 0.952223, -0.206927,
		-0.949760, 0.166438, -0.265055,
		31.562572, 37.149616, 50.269569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.126480, 37.561703, 50.787510>,  <32.227406, 37.033112, 50.455109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.126480, 37.561703, 50.787510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.757874, 37.445282, 50.684677>,  <31.536709, 37.375431, 50.622978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.757874, 37.445282, 50.684677>,  <32.126480, 37.561703, 50.787510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.757874, 37.445282, 50.684677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343352, 0.301387, 0.889537,
		-0.181417, 0.907996, -0.377666,
		-0.921519, -0.291050, -0.257085,
		31.481419, 37.357967, 50.607552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.710030, 38.097942, 51.020824>,  <32.126480, 37.561703, 50.787510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.710030, 38.097942, 51.020824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.484901, 37.769535, 50.982529>,  <31.349825, 37.572491, 50.959553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.484901, 37.769535, 50.982529>,  <31.710030, 38.097942, 51.020824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.484901, 37.769535, 50.982529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442407, 0.201374, 0.873913,
		-0.698219, 0.534210, -0.476561,
		-0.562820, -0.821017, -0.095735,
		31.316055, 37.523232, 50.953808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.965969, 38.305832, 51.134972>,  <31.710030, 38.097942, 51.020824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.965969, 38.305832, 51.134972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.035069, 37.921837, 51.223137>,  <31.076529, 37.691441, 51.276035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.035069, 37.921837, 51.223137>,  <30.965969, 38.305832, 51.134972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.035069, 37.921837, 51.223137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444625, 0.123675, 0.887137,
		-0.878901, -0.251252, -0.405470,
		0.172748, -0.959988, 0.220412,
		31.086893, 37.633839, 51.289261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.353994, 38.014290, 51.214809>,  <30.965969, 38.305832, 51.134972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.353994, 38.014290, 51.214809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.658333, 37.870949, 51.431217>,  <30.840935, 37.784946, 51.561062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.658333, 37.870949, 51.431217>,  <30.353994, 38.014290, 51.214809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.658333, 37.870949, 51.431217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403642, 0.391468, 0.826938,
		-0.508124, -0.847549, 0.153201,
		0.760844, -0.358348, 0.541021,
		30.886585, 37.763443, 51.593525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.183800, 37.441559, 51.786777>,  <30.353994, 38.014290, 51.214809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.183800, 37.441559, 51.786777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.497805, 37.670902, 51.880604>,  <30.686207, 37.808506, 51.936901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.497805, 37.670902, 51.880604>,  <30.183800, 37.441559, 51.786777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.497805, 37.670902, 51.880604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424563, 0.222215, 0.877705,
		0.451112, -0.788597, 0.417866,
		0.785012, 0.573354, 0.234566,
		30.733309, 37.842907, 51.950974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.607216, 37.178967, 52.432606>,  <30.183800, 37.441559, 51.786777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.607216, 37.178967, 52.432606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.565935, 37.569572, 52.356964>,  <30.541166, 37.803936, 52.311581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.565935, 37.569572, 52.356964>,  <30.607216, 37.178967, 52.432606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.565935, 37.569572, 52.356964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599239, 0.090702, 0.795416,
		0.793891, 0.195406, 0.575807,
		-0.103202, 0.976519, -0.189102,
		30.534975, 37.862530, 52.300232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.825415, 36.503906, 52.253529>,  <30.607216, 37.178967, 52.432606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.825415, 36.503906, 52.253529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.941748, 36.260189, 52.548603>,  <31.011547, 36.113956, 52.725647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.941748, 36.260189, 52.548603>,  <30.825415, 36.503906, 52.253529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.941748, 36.260189, 52.548603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038746, 0.777878, 0.627220,
		-0.955989, -0.153833, 0.249839,
		0.290831, -0.609296, 0.737683,
		31.028997, 36.077400, 52.769909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.402906, 36.267128, 52.952801>,  <30.825415, 36.503906, 52.253529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.402906, 36.267128, 52.952801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.522184, 36.296242, 53.333492>,  <30.593752, 36.313709, 53.561905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.522184, 36.296242, 53.333492>,  <30.402906, 36.267128, 52.952801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.522184, 36.296242, 53.333492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836304, -0.500531, -0.223751,
		0.460082, 0.862653, -0.210127,
		0.298195, 0.072786, 0.951726,
		30.611643, 36.318077, 53.619011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.967773, 36.781506, 53.052273>,  <30.402906, 36.267128, 52.952801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.967773, 36.781506, 53.052273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.935307, 36.447182, 53.269466>,  <30.915827, 36.246586, 53.399784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.935307, 36.447182, 53.269466>,  <30.967773, 36.781506, 53.052273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.935307, 36.447182, 53.269466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776584, -0.394519, -0.491195,
		0.624763, 0.381804, 0.681100,
		-0.081167, -0.835811, 0.542984,
		30.910957, 36.196438, 53.432362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.633558, 36.483364, 53.170013>,  <30.967773, 36.781506, 53.052273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.633558, 36.483364, 53.170013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.367117, 36.185818, 53.191799>,  <31.207253, 36.007290, 53.204872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.367117, 36.185818, 53.191799>,  <31.633558, 36.483364, 53.170013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.367117, 36.185818, 53.191799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602530, -0.579710, -0.548537,
		0.439615, -0.332564, 0.834350,
		-0.666105, -0.743866, 0.054469,
		31.167286, 35.962658, 53.208141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.910324, 35.863407, 53.426208>,  <31.633558, 36.483364, 53.170013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.910324, 35.863407, 53.426208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.608501, 35.790138, 53.174149>,  <31.427408, 35.746178, 53.022911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.608501, 35.790138, 53.174149>,  <31.910324, 35.863407, 53.426208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.608501, 35.790138, 53.174149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634678, -0.447799, -0.629810,
		-0.166818, -0.875171, 0.454145,
		-0.754557, -0.183172, -0.630153,
		31.382135, 35.735188, 52.985104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.152905, 35.285439, 53.142590>,  <31.910324, 35.863407, 53.426208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.152905, 35.285439, 53.142590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.847767, 35.343304, 52.890511>,  <31.664684, 35.378025, 52.739265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.847767, 35.343304, 52.890511>,  <32.152905, 35.285439, 53.142590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.847767, 35.343304, 52.890511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554027, -0.356252, -0.752422,
		-0.333357, -0.923123, 0.191615,
		-0.762841, 0.144665, -0.630194,
		31.618914, 35.386703, 52.701454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.143250, 34.853016, 52.623516>,  <32.152905, 35.285439, 53.142590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.143250, 34.853016, 52.623516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.883657, 35.094341, 52.438114>,  <31.727901, 35.239136, 52.326874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.883657, 35.094341, 52.438114>,  <32.143250, 34.853016, 52.623516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.883657, 35.094341, 52.438114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346936, -0.307515, -0.886042,
		-0.677095, -0.735831, -0.009739,
		-0.648982, 0.603314, -0.463503,
		31.688963, 35.275333, 52.299065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.756750, 34.449455, 52.168182>,  <32.143250, 34.853016, 52.623516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.756750, 34.449455, 52.168182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.759436, 34.825531, 52.031952>,  <31.761047, 35.051178, 51.950214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.759436, 34.825531, 52.031952>,  <31.756750, 34.449455, 52.168182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.759436, 34.825531, 52.031952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212130, -0.334171, -0.918330,
		-0.977219, -0.066079, -0.201687,
		0.006716, 0.940193, -0.340575,
		31.761450, 35.107590, 51.929779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.212418, 34.523972, 51.553715>,  <31.756750, 34.449455, 52.168182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.212418, 34.523972, 51.553715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.494076, 34.807423, 51.535717>,  <31.663071, 34.977493, 51.524918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.494076, 34.807423, 51.535717>,  <31.212418, 34.523972, 51.553715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.494076, 34.807423, 51.535717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156538, -0.216733, -0.963599,
		-0.692588, 0.671468, -0.263539,
		0.704143, 0.708631, -0.044996,
		31.705318, 35.020012, 51.522217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.033188, 34.815552, 50.995331>,  <31.212418, 34.523972, 51.553715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.033188, 34.815552, 50.995331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.410112, 34.944386, 51.031792>,  <31.636267, 35.021687, 51.053669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.410112, 34.944386, 51.031792>,  <31.033188, 34.815552, 50.995331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.410112, 34.944386, 51.031792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157378, -0.185970, -0.969870,
		-0.295428, 0.928266, -0.225930,
		0.942313, 0.322083, 0.091148,
		31.692806, 35.041012, 51.059135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.208170, 35.270138, 50.487061>,  <31.033188, 34.815552, 50.995331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.208170, 35.270138, 50.487061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.564465, 35.114590, 50.581181>,  <31.778242, 35.021259, 50.637653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.564465, 35.114590, 50.581181>,  <31.208170, 35.270138, 50.487061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.564465, 35.114590, 50.581181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201020, -0.127261, -0.971286,
		0.407653, 0.912459, -0.035184,
		0.890736, -0.388874, 0.235301,
		31.831686, 34.997929, 50.651772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.793039, 35.457153, 49.907707>,  <31.208170, 35.270138, 50.487061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.793039, 35.457153, 49.907707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.967577, 35.150520, 50.096157>,  <32.072300, 34.966541, 50.209229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.967577, 35.150520, 50.096157>,  <31.793039, 35.457153, 49.907707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.967577, 35.150520, 50.096157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366505, -0.326775, -0.871144,
		0.821753, 0.552790, 0.138368,
		0.436345, -0.766578, 0.471128,
		32.098480, 34.920547, 50.237495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.412647, 35.386726, 49.592468>,  <31.793039, 35.457153, 49.907707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.412647, 35.386726, 49.592468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.368629, 35.026958, 49.761673>,  <32.342220, 34.811100, 49.863197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.368629, 35.026958, 49.761673>,  <32.412647, 35.386726, 49.592468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.368629, 35.026958, 49.761673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465957, -0.422613, -0.777356,
		0.877937, 0.111561, 0.465596,
		-0.110045, -0.899418, 0.423011,
		32.335617, 34.757133, 49.888577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.054607, 35.083607, 49.498226>,  <32.412647, 35.386726, 49.592468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.054607, 35.083607, 49.498226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.819340, 34.774204, 49.592659>,  <32.678177, 34.588562, 49.649319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.819340, 34.774204, 49.592659>,  <33.054607, 35.083607, 49.498226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.819340, 34.774204, 49.592659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470619, -0.564762, -0.677909,
		0.657700, -0.287623, 0.696206,
		-0.588174, -0.773509, 0.236083,
		32.642887, 34.542152, 49.663483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.451817, 34.459206, 49.405540>,  <33.054607, 35.083607, 49.498226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.451817, 34.459206, 49.405540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.077171, 34.319176, 49.399693>,  <32.852386, 34.235157, 49.396183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.077171, 34.319176, 49.399693>,  <33.451817, 34.459206, 49.405540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.077171, 34.319176, 49.399693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242308, -0.617020, -0.748715,
		0.253083, -0.704795, 0.662731,
		-0.936609, -0.350072, -0.014620,
		32.796188, 34.214153, 49.395306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.432838, 33.708160, 49.446098>,  <33.451817, 34.459206, 49.405540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.432838, 33.708160, 49.446098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.089127, 33.821667, 49.275864>,  <32.882900, 33.889771, 49.173725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.089127, 33.821667, 49.275864>,  <33.432838, 33.708160, 49.446098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.089127, 33.821667, 49.275864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228898, -0.530736, -0.816042,
		-0.457441, -0.798619, 0.391094,
		-0.859275, 0.283771, -0.425583,
		32.831345, 33.906799, 49.148190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.455227, 33.223251, 48.887798>,  <33.432838, 33.708160, 49.446098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.455227, 33.223251, 48.887798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.144016, 33.459030, 48.800873>,  <32.957291, 33.600498, 48.748718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.144016, 33.459030, 48.800873>,  <33.455227, 33.223251, 48.887798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.144016, 33.459030, 48.800873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031755, -0.308579, -0.950669,
		-0.627430, -0.746545, 0.221365,
		-0.778025, 0.589448, -0.217318,
		32.910610, 33.635864, 48.735676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.919025, 32.846638, 48.561234>,  <33.455227, 33.223251, 48.887798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.919025, 32.846638, 48.561234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.855022, 33.221107, 48.436035>,  <32.816620, 33.445789, 48.360916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.855022, 33.221107, 48.436035>,  <32.919025, 32.846638, 48.561234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.855022, 33.221107, 48.436035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017538, -0.319731, -0.947346,
		-0.986960, -0.146095, 0.067579,
		-0.160010, 0.936178, -0.312999,
		32.807018, 33.501961, 48.342136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.278618, 32.809288, 48.097313>,  <32.919025, 32.846638, 48.561234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.278618, 32.809288, 48.097313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.509079, 33.126759, 48.019207>,  <32.647354, 33.317242, 47.972343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.509079, 33.126759, 48.019207>,  <32.278618, 32.809288, 48.097313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.509079, 33.126759, 48.019207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085956, -0.296411, -0.951185,
		-0.812813, 0.531240, -0.238998,
		0.576149, 0.793678, -0.195263,
		32.681923, 33.364861, 47.960629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.001904, 33.150948, 47.469669>,  <32.278618, 32.809288, 48.097313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.001904, 33.150948, 47.469669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.363121, 33.320152, 47.499535>,  <32.579853, 33.421677, 47.517452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.363121, 33.320152, 47.499535>,  <32.001904, 33.150948, 47.469669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.363121, 33.320152, 47.499535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157849, -0.165148, -0.973555,
		-0.399497, 0.890947, -0.215908,
		0.903043, 0.423014, 0.074659,
		32.634033, 33.447056, 47.521931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.133221, 33.333736, 46.800499>,  <32.001904, 33.150948, 47.469669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.133221, 33.333736, 46.800499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.502190, 33.370247, 46.950592>,  <32.723572, 33.392155, 47.040646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.502190, 33.370247, 46.950592>,  <32.133221, 33.333736, 46.800499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.502190, 33.370247, 46.950592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382577, -0.083731, -0.920122,
		-0.052571, 0.992299, -0.112157,
		0.922427, 0.091281, 0.375229,
		32.778919, 33.397633, 47.063160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.409428, 33.957710, 46.523197>,  <32.133221, 33.333736, 46.800499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.409428, 33.957710, 46.523197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.717342, 33.713028, 46.596138>,  <32.902092, 33.566219, 46.639900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.717342, 33.713028, 46.596138>,  <32.409428, 33.957710, 46.523197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.717342, 33.713028, 46.596138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366346, 0.189454, -0.910987,
		0.522710, 0.768064, 0.369935,
		0.769782, -0.611706, 0.182348,
		32.948277, 33.529514, 46.650841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.941238, 34.270466, 46.157009>,  <32.409428, 33.957710, 46.523197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.941238, 34.270466, 46.157009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.060593, 33.897514, 46.238625>,  <33.132206, 33.673744, 46.287594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.060593, 33.897514, 46.238625>,  <32.941238, 34.270466, 46.157009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.060593, 33.897514, 46.238625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425553, -0.061388, -0.902849,
		0.854325, 0.356224, 0.378460,
		0.298384, -0.932382, 0.204038,
		33.150108, 33.617802, 46.299835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.581402, 34.237530, 45.877651>,  <32.941238, 34.270466, 46.157009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.581402, 34.237530, 45.877651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.445438, 33.862339, 45.904984>,  <33.363861, 33.637226, 45.921383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.445438, 33.862339, 45.904984>,  <33.581402, 34.237530, 45.877651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.445438, 33.862339, 45.904984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445780, -0.224665, -0.866490,
		0.828097, -0.264066, 0.494495,
		-0.339906, -0.937974, 0.068329,
		33.343468, 33.580948, 45.925484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.071995, 33.987797, 45.485352>,  <33.581402, 34.237530, 45.877651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.071995, 33.987797, 45.485352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.820526, 33.679764, 45.528702>,  <33.669647, 33.494942, 45.554714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.820526, 33.679764, 45.528702>,  <34.071995, 33.987797, 45.485352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.820526, 33.679764, 45.528702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251767, -0.333397, -0.908548,
		0.735793, -0.543888, 0.403477,
		-0.628667, -0.770086, 0.108378,
		33.631927, 33.448738, 45.561214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.383286, 33.390587, 45.028259>,  <34.071995, 33.987797, 45.485352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.383286, 33.390587, 45.028259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.993912, 33.311703, 45.074791>,  <33.760288, 33.264374, 45.102711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.993912, 33.311703, 45.074791>,  <34.383286, 33.390587, 45.028259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.993912, 33.311703, 45.074791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044033, -0.337355, -0.940347,
		0.224693, -0.920489, 0.319709,
		-0.973434, -0.197212, 0.116333,
		33.701881, 33.252541, 45.109692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.184986, 32.598446, 44.883015>,  <34.383286, 33.390587, 45.028259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.184986, 32.598446, 44.883015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.870899, 32.834312, 44.807400>,  <33.682449, 32.975830, 44.762032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.870899, 32.834312, 44.807400>,  <34.184986, 32.598446, 44.883015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.870899, 32.834312, 44.807400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080170, -0.399520, -0.913212,
		-0.614012, -0.701913, 0.360982,
		-0.785215, 0.589663, -0.189037,
		33.635334, 33.011211, 44.750690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.699680, 32.185696, 44.420212>,  <34.184986, 32.598446, 44.883015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.699680, 32.185696, 44.420212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.559471, 32.560089, 44.407120>,  <33.475346, 32.784725, 44.399265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.559471, 32.560089, 44.407120>,  <33.699680, 32.185696, 44.420212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.559471, 32.560089, 44.407120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183711, -0.102985, -0.977571,
		-0.918361, -0.336643, 0.208048,
		-0.350518, 0.935984, -0.032732,
		33.454315, 32.840885, 44.397301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.057022, 32.189171, 44.037579>,  <33.699680, 32.185696, 44.420212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.057022, 32.189171, 44.037579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.204685, 32.559078, 44.000633>,  <33.293282, 32.781021, 43.978466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.204685, 32.559078, 44.000633>,  <33.057022, 32.189171, 44.037579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.204685, 32.559078, 44.000633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168773, -0.031029, -0.985166,
		-0.913914, 0.379270, 0.144621,
		0.369156, 0.924766, -0.092368,
		33.315434, 32.836510, 43.972923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.636959, 32.487850, 43.546543>,  <33.057022, 32.189171, 44.037579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.636959, 32.487850, 43.546543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.960793, 32.722443, 43.556427>,  <33.155094, 32.863197, 43.562359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.960793, 32.722443, 43.556427>,  <32.636959, 32.487850, 43.546543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.960793, 32.722443, 43.556427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049302, 0.109884, -0.992721,
		-0.584929, 0.802474, 0.117875,
		0.809585, 0.586482, 0.024711,
		33.203667, 32.898388, 43.563839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.432632, 33.061111, 43.270287>,  <32.636959, 32.487850, 43.546543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.432632, 33.061111, 43.270287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.830353, 33.054977, 43.228104>,  <33.068985, 33.051296, 43.202793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.830353, 33.054977, 43.228104>,  <32.432632, 33.061111, 43.270287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.830353, 33.054977, 43.228104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098005, 0.257112, -0.961399,
		0.041856, 0.966260, 0.254145,
		0.994305, -0.015333, -0.105459,
		33.128643, 33.050377, 43.196465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.535694, 33.419746, 42.669754>,  <32.432632, 33.061111, 43.270287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.535694, 33.419746, 42.669754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.915100, 33.294308, 42.687531>,  <33.142742, 33.219044, 42.698196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.915100, 33.294308, 42.687531>,  <32.535694, 33.419746, 42.669754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.915100, 33.294308, 42.687531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079000, 0.098361, -0.992010,
		0.306718, 0.944449, 0.118071,
		0.948516, -0.313595, 0.044442,
		33.199654, 33.200230, 42.700863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.891132, 33.935123, 42.270695>,  <32.535694, 33.419746, 42.669754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.891132, 33.935123, 42.270695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.150223, 33.630402, 42.274742>,  <33.305676, 33.447567, 42.277168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.150223, 33.630402, 42.274742>,  <32.891132, 33.935123, 42.270695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.150223, 33.630402, 42.274742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163650, 0.126151, -0.978420,
		0.744091, 0.635402, 0.206381,
		0.647725, -0.761807, 0.010115,
		33.344540, 33.401859, 42.277775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.477909, 34.107262, 41.927052>,  <32.891132, 33.935123, 42.270695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.477909, 34.107262, 41.927052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.506294, 33.708279, 41.924408>,  <33.523327, 33.468887, 41.922821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.506294, 33.708279, 41.924408>,  <33.477909, 34.107262, 41.927052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.506294, 33.708279, 41.924408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216827, 0.021891, -0.975965,
		0.973628, 0.067823, 0.217829,
		0.070962, -0.997457, -0.006608,
		33.527584, 33.409042, 41.922424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.087070, 33.993885, 41.446671>,  <33.477909, 34.107262, 41.927052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.087070, 33.993885, 41.446671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.861866, 33.664394, 41.473511>,  <33.726746, 33.466702, 41.489616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.861866, 33.664394, 41.473511>,  <34.087070, 33.993885, 41.446671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.861866, 33.664394, 41.473511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029500, -0.101175, -0.994431,
		0.825925, -0.557892, 0.081262,
		-0.563007, -0.823723, 0.067105,
		33.692963, 33.417278, 41.493641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.435444, 33.372303, 41.007614>,  <34.087070, 33.993885, 41.446671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.435444, 33.372303, 41.007614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.046726, 33.286777, 41.047394>,  <33.813496, 33.235462, 41.071262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.046726, 33.286777, 41.047394>,  <34.435444, 33.372303, 41.007614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.046726, 33.286777, 41.047394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067361, -0.152460, -0.986011,
		0.225990, -0.964903, 0.133757,
		-0.971798, -0.213819, 0.099452,
		33.755188, 33.222633, 41.077229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.384739, 32.868553, 40.557220>,  <34.435444, 33.372303, 41.007614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.384739, 32.868553, 40.557220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.002449, 32.965965, 40.623287>,  <33.773075, 33.024410, 40.662926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.002449, 32.965965, 40.623287>,  <34.384739, 32.868553, 40.557220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.002449, 32.965965, 40.623287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220014, -0.218702, -0.950665,
		-0.195378, -0.944918, 0.262597,
		-0.955731, 0.243514, 0.165166,
		33.715729, 33.039024, 40.672836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.956562, 32.389046, 40.146782>,  <34.384739, 32.868553, 40.557220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.956562, 32.389046, 40.146782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.707905, 32.693043, 40.222645>,  <33.558708, 32.875443, 40.268162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.707905, 32.693043, 40.222645>,  <33.956562, 32.389046, 40.146782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.707905, 32.693043, 40.222645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378591, -0.079557, -0.922139,
		-0.685730, -0.645044, 0.337182,
		-0.621646, 0.759993, 0.189653,
		33.521412, 32.921040, 40.279541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.304916, 32.258259, 39.737728>,  <33.956562, 32.389046, 40.146782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.304916, 32.258259, 39.737728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.301353, 32.654179, 39.794594>,  <33.299213, 32.891731, 39.828712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.301353, 32.654179, 39.794594>,  <33.304916, 32.258259, 39.737728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.301353, 32.654179, 39.794594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399390, 0.126815, -0.907968,
		-0.916738, -0.064870, 0.394187,
		-0.008911, 0.989803, 0.142165,
		33.298679, 32.951118, 39.837242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.630131, 32.533482, 39.626446>,  <33.304916, 32.258259, 39.737728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.630131, 32.533482, 39.626446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.875450, 32.846561, 39.584038>,  <33.022644, 33.034409, 39.558594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.875450, 32.846561, 39.584038>,  <32.630131, 32.533482, 39.626446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.875450, 32.846561, 39.584038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328202, 0.130447, -0.935557,
		-0.718432, 0.608574, 0.336887,
		0.613302, 0.782701, -0.106018,
		33.059441, 33.081371, 39.552231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.191650, 33.148510, 39.357468>,  <32.630131, 32.533482, 39.626446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.191650, 33.148510, 39.357468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.576630, 33.174561, 39.252048>,  <32.807617, 33.190193, 39.188797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.576630, 33.174561, 39.252048>,  <32.191650, 33.148510, 39.357468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.576630, 33.174561, 39.252048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268686, 0.089658, -0.959046,
		-0.038834, 0.993841, 0.103791,
		0.962445, 0.065131, -0.263549,
		32.865364, 33.194099, 39.172985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.176556, 33.650600, 38.845268>,  <32.191650, 33.148510, 39.357468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.176556, 33.650600, 38.845268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.547974, 33.507618, 38.805229>,  <32.770824, 33.421829, 38.781208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.547974, 33.507618, 38.805229>,  <32.176556, 33.650600, 38.845268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.547974, 33.507618, 38.805229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114945, -0.020481, -0.993161,
		0.352964, 0.933704, -0.060106,
		0.928549, -0.357459, -0.100096,
		32.826538, 33.400379, 38.775200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.586372, 34.039894, 38.256065>,  <32.176556, 33.650600, 38.845268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.586372, 34.039894, 38.256065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.766788, 33.683876, 38.282543>,  <32.875038, 33.470264, 38.298428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.766788, 33.683876, 38.282543>,  <32.586372, 34.039894, 38.256065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.766788, 33.683876, 38.282543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029383, -0.088932, -0.995604,
		0.892017, 0.447117, -0.066264,
		0.451045, -0.890043, 0.066192,
		32.902103, 33.416862, 38.302402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.127003, 34.184006, 37.943165>,  <32.586372, 34.039894, 38.256065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.127003, 34.184006, 37.943165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.051517, 33.791256, 37.936123>,  <33.006226, 33.555607, 37.931900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.051517, 33.791256, 37.936123>,  <33.127003, 34.184006, 37.943165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.051517, 33.791256, 37.936123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101999, -0.001771, -0.994783,
		0.976721, -0.189522, 0.100484,
		-0.188711, -0.981875, -0.017601,
		32.994904, 33.496693, 37.930843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.628345, 33.993320, 37.445477>,  <33.127003, 34.184006, 37.943165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.628345, 33.993320, 37.445477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.351166, 33.705303, 37.460255>,  <33.184860, 33.532494, 37.469124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.351166, 33.705303, 37.460255>,  <33.628345, 33.993320, 37.445477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.351166, 33.705303, 37.460255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026238, -0.026027, -0.999317,
		0.720512, -0.693441, -0.000857,
		-0.692945, -0.720043, 0.036948,
		33.143284, 33.489292, 37.471340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.820309, 33.460796, 37.129829>,  <33.628345, 33.993320, 37.445477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.820309, 33.460796, 37.129829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.422146, 33.426254, 37.113297>,  <33.183247, 33.405529, 37.103378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.422146, 33.426254, 37.113297>,  <33.820309, 33.460796, 37.129829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.422146, 33.426254, 37.113297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049611, -0.096079, -0.994137,
		0.081879, -0.991621, 0.099922,
		-0.995407, -0.086357, -0.041329,
		33.123524, 33.400349, 37.100899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.370979, 32.957962, 37.508060>,  <33.820309, 33.460796, 37.129829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.370979, 32.957962, 37.508060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.716061, 32.792881, 37.391155>,  <34.923111, 32.693832, 37.321011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.716061, 32.792881, 37.391155>,  <34.370979, 32.957962, 37.508060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.716061, 32.792881, 37.391155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255815, -0.142389, 0.956182,
		-0.436239, -0.899666, -0.017263,
		0.862702, -0.412708, -0.292263,
		34.974873, 32.669067, 37.303474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.401524, 32.227123, 37.783295>,  <34.370979, 32.957962, 37.508060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.401524, 32.227123, 37.783295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.751514, 32.412193, 37.726227>,  <34.961510, 32.523235, 37.691986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.751514, 32.412193, 37.726227>,  <34.401524, 32.227123, 37.783295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.751514, 32.412193, 37.726227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299236, -0.285108, 0.910589,
		0.380630, -0.839432, -0.387910,
		0.874974, 0.462674, -0.142667,
		35.014008, 32.550995, 37.683426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.041389, 31.693399, 37.998444>,  <34.401524, 32.227123, 37.783295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.041389, 31.693399, 37.998444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.225098, 32.048717, 37.998730>,  <35.335323, 32.261909, 37.998901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.225098, 32.048717, 37.998730>,  <35.041389, 31.693399, 37.998444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.225098, 32.048717, 37.998730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495879, -0.257054, 0.829474,
		0.737003, -0.380598, -0.558545,
		0.459273, 0.888295, 0.000719,
		35.362881, 32.315205, 37.998947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.671413, 31.586166, 38.302902>,  <35.041389, 31.693399, 37.998444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.671413, 31.586166, 38.302902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.636982, 31.983908, 38.327717>,  <35.616322, 32.222553, 38.342606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.636982, 31.983908, 38.327717>,  <35.671413, 31.586166, 38.302902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.636982, 31.983908, 38.327717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366161, -0.026336, 0.930179,
		0.926562, 0.102785, -0.361827,
		-0.086079, 0.994355, 0.062037,
		35.611156, 32.282215, 38.346329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.301884, 31.904552, 38.490730>,  <35.671413, 31.586166, 38.302902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.301884, 31.904552, 38.490730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.012356, 32.144970, 38.626274>,  <35.838638, 32.289223, 38.707600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.012356, 32.144970, 38.626274>,  <36.301884, 31.904552, 38.490730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.012356, 32.144970, 38.626274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453537, 0.044336, 0.890134,
		0.519987, 0.797984, -0.304688,
		-0.723822, 0.601045, 0.338861,
		35.795208, 32.325283, 38.727932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.559757, 32.322239, 39.056374>,  <36.301884, 31.904552, 38.490730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.559757, 32.322239, 39.056374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.164093, 32.361847, 39.099751>,  <35.926697, 32.385612, 39.125778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.164093, 32.361847, 39.099751>,  <36.559757, 32.322239, 39.056374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.164093, 32.361847, 39.099751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123780, 0.164840, 0.978523,
		0.079017, 0.981337, -0.175310,
		-0.989159, 0.099020, 0.108444,
		35.867344, 32.391552, 39.132282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.564373, 32.874886, 39.305546>,  <36.559757, 32.322239, 39.056374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.564373, 32.874886, 39.305546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.221638, 32.688972, 39.394817>,  <36.015999, 32.577423, 39.448380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.221638, 32.688972, 39.394817>,  <36.564373, 32.874886, 39.305546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.221638, 32.688972, 39.394817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177023, 0.141345, 0.974004,
		-0.484248, 0.874069, -0.038832,
		-0.856835, -0.464785, 0.223177,
		35.964588, 32.549538, 39.461769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.238445, 33.321781, 39.799122>,  <36.564373, 32.874886, 39.305546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.238445, 33.321781, 39.799122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.064545, 32.967712, 39.865414>,  <35.960205, 32.755272, 39.905190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.064545, 32.967712, 39.865414>,  <36.238445, 33.321781, 39.799122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.064545, 32.967712, 39.865414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176564, 0.096673, 0.979530,
		-0.883072, 0.455114, 0.114261,
		-0.434752, -0.885170, 0.165726,
		35.934120, 32.702160, 39.915131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.977592, 33.388851, 40.491814>,  <36.238445, 33.321781, 39.799122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.977592, 33.388851, 40.491814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.955669, 32.997288, 40.413090>,  <35.942516, 32.762348, 40.365856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.955669, 32.997288, 40.413090>,  <35.977592, 33.388851, 40.491814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.955669, 32.997288, 40.413090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111535, -0.201871, 0.973041,
		-0.992248, 0.031381, 0.120247,
		-0.054810, -0.978909, -0.196806,
		35.939228, 32.703613, 40.354050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.450195, 33.153187, 41.038376>,  <35.977592, 33.388851, 40.491814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.450195, 33.153187, 41.038376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.667488, 32.842941, 40.909801>,  <35.797863, 32.656792, 40.832657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.667488, 32.842941, 40.909801>,  <35.450195, 33.153187, 41.038376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.667488, 32.842941, 40.909801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042615, -0.356884, 0.933176,
		-0.838501, -0.520629, -0.160818,
		0.543232, -0.775616, -0.321434,
		35.830460, 32.610256, 40.813370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.087074, 32.609703, 41.469513>,  <35.450195, 33.153187, 41.038376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.087074, 32.609703, 41.469513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.438847, 32.495567, 41.317104>,  <35.649910, 32.427086, 41.225658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.438847, 32.495567, 41.317104>,  <35.087074, 32.609703, 41.469513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.438847, 32.495567, 41.317104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258976, -0.384820, 0.885915,
		-0.399421, -0.877776, -0.264523,
		0.879428, -0.285348, -0.381027,
		35.702675, 32.409966, 41.202797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.149967, 31.970587, 41.590237>,  <35.087074, 32.609703, 41.469513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.149967, 31.970587, 41.590237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.529114, 32.094326, 41.559654>,  <35.756603, 32.168571, 41.541306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.529114, 32.094326, 41.559654>,  <35.149967, 31.970587, 41.590237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.529114, 32.094326, 41.559654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163835, -0.267297, 0.949584,
		0.273317, -0.912609, -0.304045,
		0.947869, 0.309351, -0.076460,
		35.813473, 32.187130, 41.536716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.455212, 31.614290, 42.059357>,  <35.149967, 31.970587, 41.590237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.455212, 31.614290, 42.059357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.756100, 31.871403, 42.001392>,  <35.936634, 32.025669, 41.966614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.756100, 31.871403, 42.001392>,  <35.455212, 31.614290, 42.059357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.756100, 31.871403, 42.001392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326648, -0.172777, 0.929220,
		0.572249, -0.746311, -0.339929,
		0.752219, 0.642782, -0.144910,
		35.981766, 32.064236, 41.957920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.030434, 31.388542, 42.452190>,  <35.455212, 31.614290, 42.059357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.030434, 31.388542, 42.452190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.057865, 31.782921, 42.391251>,  <36.074322, 32.019547, 42.354687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.057865, 31.782921, 42.391251>,  <36.030434, 31.388542, 42.452190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.057865, 31.782921, 42.391251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267583, 0.128938, 0.954869,
		0.961092, -0.106247, -0.254980,
		0.068575, 0.985945, -0.152350,
		36.078438, 32.078705, 42.345547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647583, 31.607761, 42.766815>,  <36.030434, 31.388542, 42.452190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.647583, 31.607761, 42.766815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.432323, 31.944901, 42.767677>,  <36.303169, 32.147182, 42.768196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.432323, 31.944901, 42.767677>,  <36.647583, 31.607761, 42.766815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.432323, 31.944901, 42.767677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267388, 0.168300, 0.948778,
		0.799311, 0.511161, -0.315938,
		-0.538150, 0.842846, 0.002154,
		36.270878, 32.197754, 42.768322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.124573, 32.042015, 43.113831>,  <36.647583, 31.607761, 42.766815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.124573, 32.042015, 43.113831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.776016, 32.238239, 43.111794>,  <36.566883, 32.355972, 43.110569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.776016, 32.238239, 43.111794>,  <37.124573, 32.042015, 43.113831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.776016, 32.238239, 43.111794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197971, 0.361129, 0.911259,
		0.448866, 0.793057, -0.411802,
		-0.871394, 0.490558, -0.005096,
		36.514599, 32.385406, 43.110264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.233013, 32.715801, 43.379978>,  <37.124573, 32.042015, 43.113831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.233013, 32.715801, 43.379978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.840115, 32.653515, 43.421818>,  <36.604374, 32.616142, 43.446922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.840115, 32.653515, 43.421818>,  <37.233013, 32.715801, 43.379978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.840115, 32.653515, 43.421818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027516, 0.431996, 0.901456,
		-0.185556, 0.888332, -0.420043,
		-0.982248, -0.155712, 0.104603,
		36.545441, 32.606800, 43.453197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.972897, 33.267712, 43.789581>,  <37.233013, 32.715801, 43.379978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.972897, 33.267712, 43.789581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.669266, 33.007347, 43.785263>,  <36.487087, 32.851128, 43.782673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.669266, 33.007347, 43.785263>,  <36.972897, 33.267712, 43.789581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.669266, 33.007347, 43.785263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230232, 0.252897, 0.939700,
		-0.608934, 0.715789, -0.341829,
		-0.759074, -0.650915, -0.010800,
		36.441544, 32.812073, 43.782024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.329781, 33.649067, 44.097931>,  <36.972897, 33.267712, 43.789581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.329781, 33.649067, 44.097931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.312996, 33.255672, 44.168358>,  <36.302925, 33.019638, 44.210613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.312996, 33.255672, 44.168358>,  <36.329781, 33.649067, 44.097931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.312996, 33.255672, 44.168358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035587, 0.177585, 0.983462,
		-0.998485, 0.035000, -0.042450,
		-0.041960, -0.983483, 0.176071,
		36.300407, 32.960629, 44.221180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.713081, 33.648357, 44.548176>,  <36.329781, 33.649067, 44.097931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.713081, 33.648357, 44.548176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.915913, 33.312252, 44.624939>,  <36.037609, 33.110588, 44.670998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.915913, 33.312252, 44.624939>,  <35.713081, 33.648357, 44.548176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.915913, 33.312252, 44.624939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224118, 0.086457, 0.970719,
		-0.832253, -0.535239, -0.144479,
		0.507076, -0.840265, 0.191911,
		36.068035, 33.060173, 44.682514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.247978, 33.321186, 44.977661>,  <35.713081, 33.648357, 44.548176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.247978, 33.321186, 44.977661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.574883, 33.099567, 45.041061>,  <35.771023, 32.966599, 45.079102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.574883, 33.099567, 45.041061>,  <35.247978, 33.321186, 44.977661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.574883, 33.099567, 45.041061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301872, -0.177308, 0.936715,
		-0.490879, -0.813385, -0.312157,
		0.817258, -0.554045, 0.158502,
		35.820061, 32.933353, 45.088612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.038799, 32.777382, 45.316048>,  <35.247978, 33.321186, 44.977661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.038799, 32.777382, 45.316048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.423317, 32.817867, 45.418556>,  <35.654026, 32.842159, 45.480061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.423317, 32.817867, 45.418556>,  <35.038799, 32.777382, 45.316048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.423317, 32.817867, 45.418556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227867, -0.230849, 0.945931,
		0.154898, -0.967711, -0.198851,
		0.961293, 0.101211, 0.256268,
		35.711704, 32.848232, 45.495438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.205425, 32.230701, 45.766285>,  <35.038799, 32.777382, 45.316048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.205425, 32.230701, 45.766285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.485790, 32.512596, 45.810211>,  <35.654011, 32.681732, 45.836567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.485790, 32.512596, 45.810211>,  <35.205425, 32.230701, 45.766285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.485790, 32.512596, 45.810211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131888, -0.023244, 0.990992,
		0.700943, -0.709086, 0.076654,
		0.700917, 0.704739, 0.109813,
		35.696064, 32.724018, 45.843155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.456432, 32.070683, 46.377647>,  <35.205425, 32.230701, 45.766285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.456432, 32.070683, 46.377647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.608063, 32.436970, 46.324345>,  <35.699039, 32.656742, 46.292362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.608063, 32.436970, 46.324345>,  <35.456432, 32.070683, 46.377647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.608063, 32.436970, 46.324345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027212, 0.132915, 0.990754,
		0.924965, -0.379198, 0.025466,
		0.379076, 0.915720, -0.133261,
		35.721786, 32.711685, 46.284367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.799690, 32.144665, 46.931725>,  <35.456432, 32.070683, 46.377647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.799690, 32.144665, 46.931725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.794048, 32.529316, 46.822124>,  <35.790665, 32.760105, 46.756363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.794048, 32.529316, 46.822124>,  <35.799690, 32.144665, 46.931725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.794048, 32.529316, 46.822124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037139, 0.273333, 0.961202,
		0.999211, 0.023733, 0.031859,
		-0.014104, 0.961627, -0.273999,
		35.789818, 32.817802, 46.739925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.379738, 32.565472, 47.205612>,  <35.799690, 32.144665, 46.931725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.379738, 32.565472, 47.205612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.078392, 32.822357, 47.149029>,  <35.897583, 32.976486, 47.115078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.078392, 32.822357, 47.149029>,  <36.379738, 32.565472, 47.205612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.078392, 32.822357, 47.149029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046824, 0.266947, 0.962573,
		0.655934, 0.718544, -0.231179,
		-0.753364, 0.642209, -0.141455,
		35.852383, 33.015018, 47.106594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.518391, 33.027500, 47.670071>,  <36.379738, 32.565472, 47.205612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.518391, 33.027500, 47.670071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.152653, 33.153568, 47.568371>,  <35.933212, 33.229210, 47.507351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.152653, 33.153568, 47.568371>,  <36.518391, 33.027500, 47.670071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.152653, 33.153568, 47.568371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143804, 0.334225, 0.931458,
		0.378549, 0.888233, -0.260273,
		-0.914342, 0.315175, -0.254252,
		35.878349, 33.248119, 47.492096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.442944, 33.808807, 47.900757>,  <36.518391, 33.027500, 47.670071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.442944, 33.808807, 47.900757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.057350, 33.708969, 47.864006>,  <35.825996, 33.649067, 47.841957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.057350, 33.708969, 47.864006>,  <36.442944, 33.808807, 47.900757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.057350, 33.708969, 47.864006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188725, 0.398507, 0.897538,
		-0.187408, 0.882550, -0.431258,
		-0.963982, -0.249595, -0.091876,
		35.768154, 33.634090, 47.836445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.072571, 34.411236, 48.235020>,  <36.442944, 33.808807, 47.900757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.072571, 34.411236, 48.235020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.835114, 34.089436, 48.242615>,  <35.692638, 33.896355, 48.247173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.835114, 34.089436, 48.242615>,  <36.072571, 34.411236, 48.235020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.835114, 34.089436, 48.242615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358886, 0.285801, 0.888548,
		-0.720266, 0.520669, -0.458390,
		-0.593648, -0.804501, 0.018992,
		35.657021, 33.848083, 48.248314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.379261, 34.630367, 48.307907>,  <36.072571, 34.411236, 48.235020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.379261, 34.630367, 48.307907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.396801, 34.251610, 48.435326>,  <35.407326, 34.024357, 48.511776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.396801, 34.251610, 48.435326>,  <35.379261, 34.630367, 48.307907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.396801, 34.251610, 48.435326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495079, 0.256355, 0.830168,
		-0.867741, -0.194108, -0.457545,
		0.043849, -0.946892, 0.318548,
		35.409954, 33.967541, 48.530891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.712952, 34.499241, 48.499214>,  <35.379261, 34.630367, 48.307907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.712952, 34.499241, 48.499214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.959850, 34.251408, 48.693172>,  <35.107990, 34.102707, 48.809547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.959850, 34.251408, 48.693172>,  <34.712952, 34.499241, 48.499214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.959850, 34.251408, 48.693172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410655, 0.271992, 0.870277,
		-0.671096, -0.736302, -0.086548,
		0.617246, -0.619581, 0.484899,
		35.145023, 34.065533, 48.838642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.392391, 34.313854, 49.099110>,  <34.712952, 34.499241, 48.499214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.392391, 34.313854, 49.099110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.752960, 34.166904, 49.190742>,  <34.969303, 34.078735, 49.245720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.752960, 34.166904, 49.190742>,  <34.392391, 34.313854, 49.099110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.752960, 34.166904, 49.190742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157413, 0.214802, 0.963889,
		-0.403310, -0.904931, 0.135799,
		0.901422, -0.367370, 0.229080,
		35.023388, 34.056694, 49.259468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.281540, 34.036446, 49.740742>,  <34.392391, 34.313854, 49.099110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.281540, 34.036446, 49.740742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.677170, 34.086140, 49.709015>,  <34.914547, 34.115955, 49.689980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.677170, 34.086140, 49.709015>,  <34.281540, 34.036446, 49.740742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.677170, 34.086140, 49.709015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041155, 0.283925, 0.957963,
		0.141535, -0.950764, 0.275711,
		0.989077, 0.124238, -0.079314,
		34.973892, 34.123409, 49.685223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.634903, 33.758553, 50.385353>,  <34.281540, 34.036446, 49.740742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.634903, 33.758553, 50.385353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.882721, 34.028160, 50.224422>,  <35.031410, 34.189922, 50.127865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.882721, 34.028160, 50.224422>,  <34.634903, 33.758553, 50.385353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.882721, 34.028160, 50.224422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094187, 0.445011, 0.890558,
		0.779290, -0.589634, 0.212221,
		0.619544, 0.674015, -0.402329,
		35.068584, 34.230366, 50.103725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.001850, 33.943310, 50.913834>,  <34.634903, 33.758553, 50.385353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.001850, 33.943310, 50.913834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.144196, 34.209015, 50.650890>,  <35.229603, 34.368439, 50.493126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.144196, 34.209015, 50.650890>,  <35.001850, 33.943310, 50.913834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.144196, 34.209015, 50.650890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112582, 0.667811, 0.735767,
		0.927732, -0.335839, 0.162866,
		0.355863, 0.664259, -0.657359,
		35.250954, 34.408291, 50.453682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.701233, 34.221722, 51.194496>,  <35.001850, 33.943310, 50.913834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.701233, 34.221722, 51.194496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.517731, 34.484760, 50.955463>,  <35.407631, 34.642586, 50.812042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.517731, 34.484760, 50.955463>,  <35.701233, 34.221722, 51.194496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.517731, 34.484760, 50.955463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038583, 0.657153, 0.752769,
		0.887724, 0.368394, -0.276100,
		-0.458756, 0.657599, -0.597584,
		35.380104, 34.682041, 50.776188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.844994, 34.795315, 51.557873>,  <35.701233, 34.221722, 51.194496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.844994, 34.795315, 51.557873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.591888, 34.948700, 51.288780>,  <35.440025, 35.040730, 51.127327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.591888, 34.948700, 51.288780>,  <35.844994, 34.795315, 51.557873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.591888, 34.948700, 51.288780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172559, 0.777097, 0.605263,
		0.754870, 0.499076, -0.425552,
		-0.632768, 0.383461, -0.672728,
		35.402058, 35.063740, 51.086964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.098442, 35.486122, 51.464081>,  <35.844994, 34.795315, 51.557873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.098442, 35.486122, 51.464081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.712200, 35.473858, 51.360798>,  <35.480457, 35.466499, 51.298828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.712200, 35.473858, 51.360798>,  <36.098442, 35.486122, 51.464081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.712200, 35.473858, 51.360798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179199, 0.798013, 0.575381,
		0.188412, 0.601860, -0.776058,
		-0.965603, -0.030660, -0.258207,
		35.422520, 35.464661, 51.283337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.415268, 36.184093, 51.657345>,  <36.098442, 35.486122, 51.464081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.415268, 36.184093, 51.657345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.357273, 36.579063, 51.632114>,  <36.322475, 36.816044, 51.616978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.357273, 36.579063, 51.632114>,  <36.415268, 36.184093, 51.657345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.357273, 36.579063, 51.632114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095229, -0.077378, -0.992443,
		-0.984840, -0.137884, 0.105250,
		-0.144986, 0.987421, -0.063074,
		36.313778, 36.875290, 51.613194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.853203, 36.205940, 51.171986>,  <36.415268, 36.184093, 51.657345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.853203, 36.205940, 51.171986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.092678, 36.526272, 51.165756>,  <36.236362, 36.718472, 51.162018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.092678, 36.526272, 51.165756>,  <35.853203, 36.205940, 51.171986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.092678, 36.526272, 51.165756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106555, -0.098902, -0.989376,
		-0.793861, 0.590670, -0.144545,
		0.598691, 0.800829, -0.015576,
		36.272285, 36.766521, 51.161083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.611053, 36.526882, 50.565388>,  <35.853203, 36.205940, 51.171986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.611053, 36.526882, 50.565388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.947598, 36.722271, 50.657913>,  <36.149525, 36.839504, 50.713428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.947598, 36.722271, 50.657913>,  <35.611053, 36.526882, 50.565388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.947598, 36.722271, 50.657913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308264, -0.082162, -0.947746,
		-0.443943, 0.868702, -0.219706,
		0.841361, 0.488473, 0.231314,
		36.200005, 36.868813, 50.727306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.588833, 37.151974, 50.169971>,  <35.611053, 36.526882, 50.565388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.588833, 37.151974, 50.169971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.960159, 37.042130, 50.270233>,  <36.182953, 36.976223, 50.330391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.960159, 37.042130, 50.270233>,  <35.588833, 37.151974, 50.169971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.960159, 37.042130, 50.270233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257490, -0.011481, -0.966213,
		0.268207, 0.961488, 0.060051,
		0.928312, -0.274608, 0.250653,
		36.238651, 36.959747, 50.345428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.070438, 37.628235, 49.822712>,  <35.588833, 37.151974, 50.169971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.070438, 37.628235, 49.822712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.283447, 37.303455, 49.918350>,  <36.411251, 37.108589, 49.975731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.283447, 37.303455, 49.918350>,  <36.070438, 37.628235, 49.822712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.283447, 37.303455, 49.918350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205222, -0.150191, -0.967123,
		0.821163, 0.564077, 0.086650,
		0.532518, -0.811948, 0.239093,
		36.443203, 37.059872, 49.990078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.650513, 37.757202, 49.387596>,  <36.070438, 37.628235, 49.822712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.650513, 37.757202, 49.387596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.650909, 37.376259, 49.509590>,  <36.651146, 37.147694, 49.582787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.650909, 37.376259, 49.509590>,  <36.650513, 37.757202, 49.387596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.650909, 37.376259, 49.509590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384510, -0.281179, -0.879255,
		0.923120, 0.118141, 0.365912,
		0.000989, -0.952356, 0.304989,
		36.651207, 37.090553, 49.601086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.337166, 37.547462, 49.177139>,  <36.650513, 37.757202, 49.387596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.337166, 37.547462, 49.177139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.136059, 37.202271, 49.197105>,  <37.015396, 36.995155, 49.209084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.136059, 37.202271, 49.197105>,  <37.337166, 37.547462, 49.177139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.136059, 37.202271, 49.197105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362940, -0.263145, -0.893884,
		0.784539, -0.431299, 0.445511,
		-0.502765, -0.862981, 0.049912,
		36.985229, 36.943375, 49.212078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.750999, 37.140442, 48.850784>,  <37.337166, 37.547462, 49.177139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.750999, 37.140442, 48.850784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.417427, 36.919697, 48.849674>,  <37.217285, 36.787251, 48.849007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.417427, 36.919697, 48.849674>,  <37.750999, 37.140442, 48.850784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.417427, 36.919697, 48.849674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191571, -0.284766, -0.939260,
		0.517552, -0.783809, 0.343196,
		-0.833931, -0.551862, -0.002774,
		37.167248, 36.754139, 48.848843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.933456, 36.528778, 48.662792>,  <37.750999, 37.140442, 48.850784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.933456, 36.528778, 48.662792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.547928, 36.560135, 48.560886>,  <37.316612, 36.578949, 48.499741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.547928, 36.560135, 48.560886>,  <37.933456, 36.528778, 48.662792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.547928, 36.560135, 48.560886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230161, -0.237338, -0.943767,
		-0.134452, -0.968259, 0.210707,
		-0.963820, 0.078394, -0.254766,
		37.258781, 36.583652, 48.484455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.819016, 35.893185, 48.289711>,  <37.933456, 36.528778, 48.662792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.819016, 35.893185, 48.289711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.524105, 36.140831, 48.181553>,  <37.347157, 36.289417, 48.116657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.524105, 36.140831, 48.181553>,  <37.819016, 35.893185, 48.289711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.524105, 36.140831, 48.181553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160447, -0.228319, -0.960275,
		-0.656258, -0.751375, 0.069000,
		-0.737281, 0.619117, -0.270392,
		37.302921, 36.326565, 48.100433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.396053, 35.625416, 47.711056>,  <37.819016, 35.893185, 48.289711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.396053, 35.625416, 47.711056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.266575, 36.000683, 47.661972>,  <37.188889, 36.225845, 47.632523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.266575, 36.000683, 47.661972>,  <37.396053, 35.625416, 47.711056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.266575, 36.000683, 47.661972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024617, -0.121301, -0.992310,
		-0.945841, -0.324227, 0.016170,
		-0.323695, 0.938170, -0.122713,
		37.169468, 36.282135, 47.625156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.579918, 35.766033, 47.233894>,  <37.396053, 35.625416, 47.711056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.579918, 35.766033, 47.233894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.808434, 36.094265, 47.227158>,  <36.945541, 36.291203, 47.223118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.808434, 36.094265, 47.227158>,  <36.579918, 35.766033, 47.233894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.808434, 36.094265, 47.227158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103261, 0.051507, -0.993320,
		-0.814229, 0.569209, 0.114158,
		0.571286, 0.820578, -0.016839,
		36.979820, 36.340439, 47.222107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.282654, 36.263195, 46.824860>,  <36.579918, 35.766033, 47.233894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.282654, 36.263195, 46.824860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.658932, 36.398426, 46.813576>,  <36.884697, 36.479565, 46.806805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.658932, 36.398426, 46.813576>,  <36.282654, 36.263195, 46.824860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.658932, 36.398426, 46.813576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088638, 0.164670, -0.982358,
		-0.327469, 0.926599, 0.184871,
		0.940695, 0.338079, -0.028208,
		36.941139, 36.499851, 46.805115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.212963, 36.777943, 46.280869>,  <36.282654, 36.263195, 46.824860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.212963, 36.777943, 46.280869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.598621, 36.698277, 46.351017>,  <36.830017, 36.650478, 46.393108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.598621, 36.698277, 46.351017>,  <36.212963, 36.777943, 46.280869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.598621, 36.698277, 46.351017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138583, -0.185706, -0.972784,
		0.226314, 0.962209, -0.151447,
		0.964146, -0.199167, 0.175374,
		36.887863, 36.638527, 46.403629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.530499, 37.206284, 45.851109>,  <36.212963, 36.777943, 46.280869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.530499, 37.206284, 45.851109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.781578, 36.906796, 45.936344>,  <36.932224, 36.727100, 45.987484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.781578, 36.906796, 45.936344>,  <36.530499, 37.206284, 45.851109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.781578, 36.906796, 45.936344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213454, -0.097700, -0.972056,
		0.748619, 0.655644, 0.098491,
		0.627700, -0.748722, 0.213090,
		36.969887, 36.682178, 46.000271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.025898, 37.282646, 45.328941>,  <36.530499, 37.206284, 45.851109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.025898, 37.282646, 45.328941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.112812, 36.915253, 45.461113>,  <37.164959, 36.694817, 45.540417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.112812, 36.915253, 45.461113>,  <37.025898, 37.282646, 45.328941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.112812, 36.915253, 45.461113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044968, -0.328737, -0.943350,
		0.975072, 0.219834, -0.030127,
		0.217285, -0.918480, 0.330428,
		37.177998, 36.639709, 45.560242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.571960, 37.147449, 45.034603>,  <37.025898, 37.282646, 45.328941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.571960, 37.147449, 45.034603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.394073, 36.800514, 45.124004>,  <37.287342, 36.592354, 45.177643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.394073, 36.800514, 45.124004>,  <37.571960, 37.147449, 45.034603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.394073, 36.800514, 45.124004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055453, -0.275717, -0.959638,
		0.893955, -0.414370, 0.170712,
		-0.444713, -0.867339, 0.223501,
		37.260658, 36.540314, 45.191055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.973965, 36.624924, 44.680798>,  <37.571960, 37.147449, 45.034603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.973965, 36.624924, 44.680798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.614288, 36.453465, 44.715931>,  <37.398483, 36.350590, 44.737011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.614288, 36.453465, 44.715931>,  <37.973965, 36.624924, 44.680798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.614288, 36.453465, 44.715931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140820, -0.473550, -0.869437,
		0.414273, -0.769423, 0.486175,
		-0.899193, -0.428648, 0.087829,
		37.344532, 36.324871, 44.742279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.037346, 36.091469, 44.330627>,  <37.973965, 36.624924, 44.680798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.037346, 36.091469, 44.330627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.641068, 36.052711, 44.368855>,  <37.403301, 36.029457, 44.391792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.641068, 36.052711, 44.368855>,  <38.037346, 36.091469, 44.330627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.641068, 36.052711, 44.368855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042004, -0.450277, -0.891900,
		0.129450, -0.887616, 0.442018,
		-0.990696, -0.096890, 0.095572,
		37.343857, 36.023643, 44.397526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.885681, 35.379204, 44.311241>,  <38.037346, 36.091469, 44.330627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.885681, 35.379204, 44.311241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.548721, 35.568871, 44.208839>,  <37.346546, 35.682671, 44.147400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.548721, 35.568871, 44.208839>,  <37.885681, 35.379204, 44.311241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.548721, 35.568871, 44.208839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038147, -0.526364, -0.849403,
		-0.537521, -0.705761, 0.461490,
		-0.842387, 0.474176, -0.256009,
		37.296001, 35.711121, 44.132038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.490170, 34.816738, 43.936367>,  <37.885681, 35.379204, 44.311241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.490170, 34.816738, 43.936367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.281548, 35.142757, 43.835434>,  <37.156376, 35.338371, 43.774872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.281548, 35.142757, 43.835434>,  <37.490170, 34.816738, 43.936367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.281548, 35.142757, 43.835434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188865, -0.398692, -0.897427,
		-0.832054, -0.420398, 0.361873,
		-0.521552, 0.815052, -0.252334,
		37.125080, 35.387272, 43.759735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.804581, 34.572372, 43.703308>,  <37.490170, 34.816738, 43.936367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.804581, 34.572372, 43.703308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.838924, 34.933357, 43.534462>,  <36.859531, 35.149948, 43.433155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.838924, 34.933357, 43.534462>,  <36.804581, 34.572372, 43.703308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.838924, 34.933357, 43.534462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147695, -0.407472, -0.901196,
		-0.985299, 0.139720, 0.098304,
		0.085859, 0.902466, -0.422118,
		36.864681, 35.204098, 43.407825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.269855, 34.582703, 43.218525>,  <36.804581, 34.572372, 43.703308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.269855, 34.582703, 43.218525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.551163, 34.845901, 43.110855>,  <36.719948, 35.003819, 43.046253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.551163, 34.845901, 43.110855>,  <36.269855, 34.582703, 43.218525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.551163, 34.845901, 43.110855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090876, -0.292320, -0.951993,
		-0.705091, 0.693970, -0.145784,
		0.703270, 0.657993, -0.269178,
		36.762142, 35.043301, 43.030102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.060574, 34.918472, 42.622242>,  <36.269855, 34.582703, 43.218525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.060574, 34.918472, 42.622242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.453808, 34.991722, 42.623394>,  <36.689747, 35.035671, 42.624084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.453808, 34.991722, 42.623394>,  <36.060574, 34.918472, 42.622242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.453808, 34.991722, 42.623394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081474, -0.423199, -0.902366,
		-0.164024, 0.887338, -0.430960,
		0.983086, 0.183122, 0.002881,
		36.748734, 35.046658, 42.624260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.282429, 35.251884, 41.894768>,  <36.060574, 34.918472, 42.622242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.282429, 35.251884, 41.894768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.606098, 35.097660, 42.072113>,  <36.800301, 35.005123, 42.178520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.606098, 35.097660, 42.072113>,  <36.282429, 35.251884, 41.894768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.606098, 35.097660, 42.072113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254252, -0.450505, -0.855805,
		0.529705, 0.805224, -0.266508,
		0.809178, -0.385564, 0.443364,
		36.848850, 34.981991, 42.205124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.810417, 35.347065, 41.383881>,  <36.282429, 35.251884, 41.894768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.810417, 35.347065, 41.383881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.979839, 35.072617, 41.620468>,  <37.081493, 34.907948, 41.762421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.979839, 35.072617, 41.620468>,  <36.810417, 35.347065, 41.383881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.979839, 35.072617, 41.620468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332307, -0.489724, -0.806066,
		0.842718, 0.537961, 0.020580,
		0.423554, -0.686125, 0.591468,
		37.106907, 34.866779, 41.797909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.516087, 35.285084, 41.096157>,  <36.810417, 35.347065, 41.383881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.516087, 35.285084, 41.096157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.440666, 34.956562, 41.311527>,  <37.395416, 34.759449, 41.440750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.440666, 34.956562, 41.311527>,  <37.516087, 35.285084, 41.096157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.440666, 34.956562, 41.311527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330020, -0.569364, -0.752935,
		0.924952, 0.035728, 0.378400,
		-0.188547, -0.821308, 0.538426,
		37.384102, 34.710171, 41.473057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.173187, 34.927769, 41.345722>,  <37.516087, 35.285084, 41.096157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.173187, 34.927769, 41.345722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.878239, 34.658890, 41.319096>,  <37.701271, 34.497562, 41.303120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.878239, 34.658890, 41.319096>,  <38.173187, 34.927769, 41.345722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.878239, 34.658890, 41.319096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523440, -0.506321, -0.685310,
		0.426961, -0.540171, 0.725203,
		-0.737370, -0.672201, -0.066568,
		37.657028, 34.457230, 41.299126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.523994, 34.315765, 41.354923>,  <38.173187, 34.927769, 41.345722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.523994, 34.315765, 41.354923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.165688, 34.233101, 41.197495>,  <37.950703, 34.183502, 41.103039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.165688, 34.233101, 41.197495>,  <38.523994, 34.315765, 41.354923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.165688, 34.233101, 41.197495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441986, -0.319409, -0.838228,
		0.047520, -0.924807, 0.377457,
		-0.895762, -0.206663, -0.393573,
		37.896957, 34.171101, 41.079422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606590, 33.606564, 41.045025>,  <38.523994, 34.315765, 41.354923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.606590, 33.606564, 41.045025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.287140, 33.756573, 40.856747>,  <38.095470, 33.846577, 40.743778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.287140, 33.756573, 40.856747>,  <38.606590, 33.606564, 41.045025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.287140, 33.756573, 40.856747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406265, -0.241077, -0.881380,
		-0.444011, -0.895121, 0.040173,
		-0.798626, 0.375021, -0.470697,
		38.047550, 33.869080, 40.715538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.438705, 33.128277, 40.559933>,  <38.606590, 33.606564, 41.045025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.438705, 33.128277, 40.559933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.302723, 33.480057, 40.426670>,  <38.221134, 33.691124, 40.346714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.302723, 33.480057, 40.426670>,  <38.438705, 33.128277, 40.559933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.302723, 33.480057, 40.426670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269799, -0.248160, -0.930390,
		-0.900910, -0.406175, -0.152913,
		-0.339954, 0.879454, -0.333155,
		38.200737, 33.743893, 40.326725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.070969, 33.067501, 39.970985>,  <38.438705, 33.128277, 40.559933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.070969, 33.067501, 39.970985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.126385, 33.463169, 39.951633>,  <38.159634, 33.700569, 39.940022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.126385, 33.463169, 39.951633>,  <38.070969, 33.067501, 39.970985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.126385, 33.463169, 39.951633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387520, -0.099100, -0.916519,
		-0.911391, 0.108230, -0.397054,
		0.138543, 0.989174, -0.048377,
		38.167946, 33.759922, 39.937119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.848396, 33.221550, 39.264767>,  <38.070969, 33.067501, 39.970985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.848396, 33.221550, 39.264767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.063034, 33.539124, 39.379131>,  <38.191814, 33.729668, 39.447750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.063034, 33.539124, 39.379131>,  <37.848396, 33.221550, 39.264767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.063034, 33.539124, 39.379131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326733, 0.116915, -0.937857,
		-0.778019, 0.596664, -0.196668,
		0.536592, 0.793929, 0.285912,
		38.224010, 33.777302, 39.464905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.803776, 33.654415, 38.730103>,  <37.848396, 33.221550, 39.264767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.803776, 33.654415, 38.730103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.124634, 33.797096, 38.921654>,  <38.317150, 33.882706, 39.036583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.124634, 33.797096, 38.921654>,  <37.803776, 33.654415, 38.730103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.124634, 33.797096, 38.921654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399451, 0.275559, -0.874361,
		-0.443847, 0.892653, 0.078553,
		0.802146, 0.356704, 0.478877,
		38.365276, 33.904106, 39.065315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.973289, 34.425751, 38.541527>,  <37.803776, 33.654415, 38.730103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.973289, 34.425751, 38.541527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.339848, 34.315514, 38.657639>,  <38.559784, 34.249371, 38.727306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.339848, 34.315514, 38.657639>,  <37.973289, 34.425751, 38.541527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.339848, 34.315514, 38.657639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396937, 0.532385, -0.747668,
		0.051510, 0.800385, 0.597269,
		0.916399, -0.275591, 0.290280,
		38.614769, 34.232838, 38.744724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.436920, 35.019096, 38.408657>,  <37.973289, 34.425751, 38.541527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.436920, 35.019096, 38.408657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.711586, 34.734997, 38.470676>,  <38.876385, 34.564537, 38.507889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.711586, 34.734997, 38.470676>,  <38.436920, 35.019096, 38.408657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.711586, 34.734997, 38.470676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622857, 0.464798, -0.629295,
		0.374889, 0.528688, 0.761543,
		0.686664, -0.710248, 0.155050,
		38.917583, 34.521923, 38.517193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.110279, 35.340801, 38.663853>,  <38.436920, 35.019096, 38.408657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.110279, 35.340801, 38.663853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.226543, 34.985603, 38.521317>,  <39.296303, 34.772484, 38.435795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.226543, 34.985603, 38.521317>,  <39.110279, 35.340801, 38.663853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.226543, 34.985603, 38.521317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851579, 0.409889, -0.326810,
		0.436267, -0.208464, 0.875337,
		0.290663, -0.887994, -0.356344,
		39.313744, 34.719204, 38.414413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.840897, 35.251865, 38.824665>,  <39.110279, 35.340801, 38.663853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.840897, 35.251865, 38.824665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.775974, 35.002323, 38.518867>,  <39.737022, 34.852596, 38.335388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.775974, 35.002323, 38.518867>,  <39.840897, 35.251865, 38.824665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.775974, 35.002323, 38.518867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865677, 0.281805, -0.413751,
		0.473561, -0.728963, 0.494320,
		-0.162307, -0.623858, -0.764498,
		39.727283, 34.815166, 38.289516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.520607, 35.070259, 38.546776>,  <39.840897, 35.251865, 38.824665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.520607, 35.070259, 38.546776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.275040, 34.965008, 38.249084>,  <40.127701, 34.901859, 38.070469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.275040, 34.965008, 38.249084>,  <40.520607, 35.070259, 38.546776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.275040, 34.965008, 38.249084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699620, 0.255251, -0.667367,
		0.365566, -0.930383, 0.027387,
		-0.613916, -0.263127, -0.744225,
		40.090866, 34.886070, 38.025818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.936470, 34.612152, 38.176342>,  <40.520607, 35.070259, 38.546776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.936470, 34.612152, 38.176342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.647079, 34.758575, 37.942219>,  <40.473446, 34.846428, 37.801743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.647079, 34.758575, 37.942219>,  <40.936470, 34.612152, 38.176342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.647079, 34.758575, 37.942219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675810, 0.202437, -0.708731,
		-0.140948, -0.908306, -0.393844,
		-0.723473, 0.366058, -0.585310,
		40.430038, 34.868393, 37.766624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.113403, 34.398483, 37.459381>,  <40.936470, 34.612152, 38.176342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.113403, 34.398483, 37.459381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.881062, 34.723469, 37.439308>,  <40.741657, 34.918461, 37.427265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.881062, 34.723469, 37.439308>,  <41.113403, 34.398483, 37.459381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.881062, 34.723469, 37.439308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639317, 0.417170, -0.645943,
		-0.503869, -0.407280, -0.761734,
		-0.580853, 0.812460, -0.050182,
		40.706806, 34.967205, 37.424255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.986908, 34.532097, 36.677345>,  <41.113403, 34.398483, 37.459381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.986908, 34.532097, 36.677345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.963608, 34.865498, 36.897121>,  <40.949627, 35.065536, 37.028988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.963608, 34.865498, 36.897121>,  <40.986908, 34.532097, 36.677345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.963608, 34.865498, 36.897121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561636, 0.482372, -0.672221,
		-0.825331, 0.269428, -0.496223,
		-0.058249, 0.833502, 0.549438,
		40.946133, 35.115547, 37.061954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.917496, 35.057186, 36.152576>,  <40.986908, 34.532097, 36.677345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.917496, 35.057186, 36.152576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.004395, 35.226833, 36.504242>,  <41.056534, 35.328621, 36.715240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.004395, 35.226833, 36.504242>,  <40.917496, 35.057186, 36.152576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.004395, 35.226833, 36.504242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599717, 0.652637, -0.463038,
		-0.770157, 0.627843, -0.112566,
		0.217250, 0.424120, 0.879161,
		41.069569, 35.354069, 36.767990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.851509, 35.854496, 36.075817>,  <40.917496, 35.057186, 36.152576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.851509, 35.854496, 36.075817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.117168, 35.712662, 36.339081>,  <41.276562, 35.627560, 36.497040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.117168, 35.712662, 36.339081>,  <40.851509, 35.854496, 36.075817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.117168, 35.712662, 36.339081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741525, 0.424494, -0.519563,
		-0.095155, 0.833109, 0.544863,
		0.664144, -0.354590, 0.658163,
		41.316410, 35.606285, 36.536530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.296680, 36.478722, 36.327366>,  <40.851509, 35.854496, 36.075817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.296680, 36.478722, 36.327366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.438515, 36.104725, 36.330227>,  <41.523617, 35.880325, 36.331944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.438515, 36.104725, 36.330227>,  <41.296680, 36.478722, 36.327366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.438515, 36.104725, 36.330227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700485, 0.260573, -0.664396,
		0.619345, 0.240595, 0.747346,
		0.354589, -0.934995, 0.007149,
		41.544891, 35.824226, 36.332371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.893970, 36.588108, 36.134563>,  <41.296680, 36.478722, 36.327366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.893970, 36.588108, 36.134563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.870270, 36.191868, 36.085236>,  <41.856049, 35.954124, 36.055641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.870270, 36.191868, 36.085236>,  <41.893970, 36.588108, 36.134563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.870270, 36.191868, 36.085236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733786, 0.040530, -0.678171,
		0.676792, -0.130674, 0.724484,
		-0.059256, -0.990597, -0.123317,
		41.852493, 35.894688, 36.048241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.559376, 36.901951, 36.087086>,  <41.893970, 36.588108, 36.134563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.559376, 36.901951, 36.087086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.803101, 37.047867, 35.805470>,  <42.949337, 37.135414, 35.636501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.803101, 37.047867, 35.805470>,  <42.559376, 36.901951, 36.087086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.803101, 37.047867, 35.805470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778382, 0.105875, -0.618799,
		-0.151190, 0.925052, 0.348455,
		0.609313, 0.364788, -0.704036,
		42.985893, 37.157303, 35.594257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.100040, 37.202999, 35.627514>,  <42.559376, 36.901951, 36.087086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.100040, 37.202999, 35.627514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.442226, 37.216167, 35.420788>,  <42.647537, 37.224068, 35.296753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.442226, 37.216167, 35.420788>,  <42.100040, 37.202999, 35.627514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.442226, 37.216167, 35.420788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517859, 0.055181, -0.853685,
		0.000415, 0.997934, 0.064254,
		0.855466, 0.032920, -0.516811,
		42.698868, 37.226044, 35.265743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.018894, 37.788486, 35.195663>,  <42.100040, 37.202999, 35.627514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.018894, 37.788486, 35.195663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.267422, 37.496326, 35.082184>,  <42.416538, 37.321030, 35.014095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.267422, 37.496326, 35.082184>,  <42.018894, 37.788486, 35.195663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.267422, 37.496326, 35.082184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431117, -0.016328, -0.902148,
		0.654294, 0.682828, -0.325031,
		0.621319, -0.730397, -0.283696,
		42.453819, 37.277206, 34.997074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.408955, 38.016338, 34.613338>,  <42.018894, 37.788486, 35.195663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.408955, 38.016338, 34.613338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.401291, 37.616856, 34.594501>,  <42.396694, 37.377167, 34.583199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.401291, 37.616856, 34.594501>,  <42.408955, 38.016338, 34.613338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.401291, 37.616856, 34.594501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193713, 0.049918, -0.979787,
		0.980871, -0.009645, -0.194418,
		-0.019155, -0.998707, -0.047095,
		42.395546, 37.317245, 34.580372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.666763, 37.850727, 33.941921>,  <42.408955, 38.016338, 34.613338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.666763, 37.850727, 33.941921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.499039, 37.506042, 34.056202>,  <42.398403, 37.299232, 34.124771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.499039, 37.506042, 34.056202>,  <42.666763, 37.850727, 33.941921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.499039, 37.506042, 34.056202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119378, -0.259630, -0.958301,
		0.899959, -0.435933, 0.005996,
		-0.419312, -0.861716, 0.285697,
		42.373245, 37.247528, 34.141911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.831882, 37.469116, 33.400932>,  <42.666763, 37.850727, 33.941921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.831882, 37.469116, 33.400932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.555290, 37.248318, 33.587330>,  <42.389336, 37.115837, 33.699169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.555290, 37.248318, 33.587330>,  <42.831882, 37.469116, 33.400932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.555290, 37.248318, 33.587330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181583, -0.491541, -0.851713,
		0.699200, -0.673560, 0.239658,
		-0.691482, -0.552000, 0.465993,
		42.347847, 37.082718, 33.727127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.973942, 36.776955, 33.187767>,  <42.831882, 37.469116, 33.400932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.973942, 36.776955, 33.187767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.594181, 36.798164, 33.311584>,  <42.366325, 36.810890, 33.385876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.594181, 36.798164, 33.311584>,  <42.973942, 36.776955, 33.187767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.594181, 36.798164, 33.311584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282779, -0.573125, -0.769132,
		0.136628, -0.817751, 0.559121,
		-0.949404, 0.053023, 0.309548,
		42.309361, 36.814072, 33.404449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.710308, 36.114040, 33.066383>,  <42.973942, 36.776955, 33.187767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.710308, 36.114040, 33.066383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.366776, 36.310780, 33.123642>,  <42.160656, 36.428825, 33.157997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.366776, 36.310780, 33.123642>,  <42.710308, 36.114040, 33.066383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.366776, 36.310780, 33.123642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464301, -0.629371, -0.623151,
		-0.216404, -0.601645, 0.768891,
		-0.858832, 0.491849, 0.143146,
		42.109127, 36.458336, 33.166584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.169106, 35.637691, 33.170353>,  <42.710308, 36.114040, 33.066383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.169106, 35.637691, 33.170353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.978939, 35.955948, 33.020187>,  <41.864838, 36.146900, 32.930088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.978939, 35.955948, 33.020187>,  <42.169106, 35.637691, 33.170353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.978939, 35.955948, 33.020187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485841, -0.593191, -0.641937,
		-0.733442, -0.122798, 0.668568,
		-0.475417, 0.795642, -0.375411,
		41.836315, 36.194641, 32.907562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.573429, 35.285244, 32.891727>,  <42.169106, 35.637691, 33.170353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.573429, 35.285244, 32.891727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.548389, 35.647526, 32.724022>,  <41.533367, 35.864895, 32.623398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.548389, 35.647526, 32.724022>,  <41.573429, 35.285244, 32.891727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.548389, 35.647526, 32.724022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610356, -0.367112, -0.701922,
		-0.789650, 0.211960, 0.575783,
		-0.062598, 0.905705, -0.419261,
		41.529610, 35.919239, 32.598244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.810810, 35.471516, 32.789730>,  <41.573429, 35.285244, 32.891727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.810810, 35.471516, 32.789730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.022419, 35.690418, 32.530304>,  <41.149384, 35.821762, 32.374649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.022419, 35.690418, 32.530304>,  <40.810810, 35.471516, 32.789730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.022419, 35.690418, 32.530304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628224, -0.261239, -0.732863,
		-0.570498, 0.795148, 0.205601,
		0.529024, 0.547260, -0.648568,
		41.181126, 35.854595, 32.335735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.304329, 35.695381, 32.249039>,  <40.810810, 35.471516, 32.789730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.304329, 35.695381, 32.249039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.666271, 35.762836, 32.092686>,  <40.883438, 35.803310, 31.998873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.666271, 35.762836, 32.092686>,  <40.304329, 35.695381, 32.249039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.666271, 35.762836, 32.092686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358005, -0.195400, -0.913045,
		-0.230352, 0.966116, -0.116436,
		0.904859, 0.168637, -0.390885,
		40.937729, 35.813427, 31.975420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.241699, 36.132153, 31.632099>,  <40.304329, 35.695381, 32.249039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.241699, 36.132153, 31.632099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.574394, 35.920219, 31.565779>,  <40.774010, 35.793060, 31.525988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.574394, 35.920219, 31.565779>,  <40.241699, 36.132153, 31.632099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.574394, 35.920219, 31.565779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323197, -0.219284, -0.920575,
		0.451393, 0.819263, -0.353628,
		0.831738, -0.529833, -0.165800,
		40.823917, 35.761269, 31.516039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.261879, 36.061256, 30.873924>,  <40.241699, 36.132153, 31.632099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.261879, 36.061256, 30.873924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.545322, 35.802925, 30.987616>,  <40.715389, 35.647926, 31.055830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.545322, 35.802925, 30.987616>,  <40.261879, 36.061256, 30.873924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.545322, 35.802925, 30.987616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197339, -0.568133, -0.798926,
		0.677447, 0.510034, -0.530029,
		0.708606, -0.645825, 0.284231,
		40.757904, 35.609177, 31.072886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.515430, 35.869324, 30.189260>,  <40.261879, 36.061256, 30.873924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.515430, 35.869324, 30.189260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.615993, 35.580853, 30.447472>,  <40.676331, 35.407772, 30.602398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.615993, 35.580853, 30.447472>,  <40.515430, 35.869324, 30.189260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.615993, 35.580853, 30.447472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335219, -0.690547, -0.640917,
		0.907979, -0.055265, -0.415356,
		0.251403, -0.721174, 0.645527,
		40.691414, 35.364502, 30.641130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.828163, 35.495770, 29.765701>,  <40.515430, 35.869324, 30.189260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.828163, 35.495770, 29.765701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.717628, 35.266197, 30.074051>,  <40.651310, 35.128456, 30.259060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.717628, 35.266197, 30.074051>,  <40.828163, 35.495770, 29.765701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.717628, 35.266197, 30.074051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217509, -0.743947, -0.631849,
		0.936125, -0.342272, 0.080743,
		-0.276333, -0.573927, 0.770875,
		40.634727, 35.094021, 30.305313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.076576, 34.721752, 29.581772>,  <40.828163, 35.495770, 29.765701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.076576, 34.721752, 29.581772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.794289, 34.714817, 29.865084>,  <40.624916, 34.710655, 30.035070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.794289, 34.714817, 29.865084>,  <41.076576, 34.721752, 29.581772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.794289, 34.714817, 29.865084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347439, -0.862773, -0.367299,
		0.617452, -0.505294, 0.602852,
		-0.705719, -0.017335, 0.708280,
		40.582573, 34.709618, 30.077568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.087212, 34.042915, 29.920778>,  <41.076576, 34.721752, 29.581772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.087212, 34.042915, 29.920778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.730236, 34.179699, 30.038500>,  <40.516052, 34.261768, 30.109133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.730236, 34.179699, 30.038500>,  <41.087212, 34.042915, 29.920778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.730236, 34.179699, 30.038500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439389, -0.806842, -0.394897,
		0.102416, -0.481735, 0.870312,
		-0.892439, 0.341962, 0.294302,
		40.462505, 34.282288, 30.126791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.687347, 33.497185, 30.205862>,  <41.087212, 34.042915, 29.920778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.687347, 33.497185, 30.205862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.419865, 33.775715, 30.101591>,  <40.259373, 33.942833, 30.039028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.419865, 33.775715, 30.101591>,  <40.687347, 33.497185, 30.205862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.419865, 33.775715, 30.101591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512012, -0.685486, -0.517641,
		-0.539139, -0.212682, 0.814921,
		-0.668710, 0.696329, -0.260677,
		40.219254, 33.984615, 30.023388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.048748, 33.235531, 30.433270>,  <40.687347, 33.497185, 30.205862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.048748, 33.235531, 30.433270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.971474, 33.497147, 30.140720>,  <39.925110, 33.654118, 29.965191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.971474, 33.497147, 30.140720>,  <40.048748, 33.235531, 30.433270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.971474, 33.497147, 30.140720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528140, -0.697529, -0.484276,
		-0.826891, 0.292713, 0.480178,
		-0.193184, 0.654044, -0.731373,
		39.913517, 33.693359, 29.921309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.437687, 32.953865, 30.178131>,  <40.048748, 33.235531, 30.433270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.437687, 32.953865, 30.178131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.536518, 33.195251, 29.874876>,  <39.595818, 33.340084, 29.692923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.536518, 33.195251, 29.874876>,  <39.437687, 32.953865, 30.178131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.536518, 33.195251, 29.874876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247996, -0.716958, -0.651514,
		-0.936722, 0.348992, -0.027488,
		0.247081, 0.603470, -0.758139,
		39.610641, 33.376293, 29.647434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.906185, 32.963295, 29.691177>,  <39.437687, 32.953865, 30.178131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.906185, 32.963295, 29.691177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.233410, 33.072929, 29.488932>,  <39.429745, 33.138710, 29.367584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.233410, 33.072929, 29.488932>,  <38.906185, 32.963295, 29.691177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.233410, 33.072929, 29.488932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234196, -0.644192, -0.728127,
		-0.525283, 0.714068, -0.462801,
		0.818065, 0.274087, -0.505615,
		39.478828, 33.155155, 29.337248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636257, 33.241631, 29.024433>,  <38.906185, 32.963295, 29.691177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.636257, 33.241631, 29.024433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.016022, 33.117016, 29.008579>,  <39.243881, 33.042248, 28.999067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.016022, 33.117016, 29.008579>,  <38.636257, 33.241631, 29.024433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.016022, 33.117016, 29.008579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265492, -0.728793, -0.631169,
		0.167746, 0.609759, -0.774632,
		0.949408, -0.311535, -0.039634,
		39.300842, 33.023556, 28.996689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.874874, 33.087765, 28.358000>,  <38.636257, 33.241631, 29.024433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.874874, 33.087765, 28.358000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.112965, 32.878548, 28.602011>,  <39.255817, 32.753017, 28.748417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.112965, 32.878548, 28.602011>,  <38.874874, 33.087765, 28.358000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.112965, 32.878548, 28.602011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241551, -0.840513, -0.484965,
		0.766393, 0.141311, -0.626636,
		0.595227, -0.523038, 0.610030,
		39.291534, 32.721638, 28.785019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.217606, 32.632030, 27.936949>,  <38.874874, 33.087765, 28.358000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.217606, 32.632030, 27.936949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.149242, 32.458160, 28.290636>,  <39.108227, 32.353836, 28.502850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.149242, 32.458160, 28.290636>,  <39.217606, 32.632030, 27.936949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.149242, 32.458160, 28.290636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477550, -0.748424, -0.460225,
		0.861822, -0.500914, -0.079673,
		-0.170904, -0.434680, 0.884220,
		39.097973, 32.327755, 28.555902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.474564, 31.881552, 27.986507>,  <39.217606, 32.632030, 27.936949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.474564, 31.881552, 27.986507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.150398, 31.991503, 28.193459>,  <38.955898, 32.057472, 28.317629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.150398, 31.991503, 28.193459>,  <39.474564, 31.881552, 27.986507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.150398, 31.991503, 28.193459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574465, -0.546190, -0.609645,
		0.115007, -0.791276, 0.600546,
		-0.810409, 0.274879, 0.517376,
		38.907276, 32.073967, 28.348671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.706841, 31.313549, 27.781179>,  <39.474564, 31.881552, 27.986507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.706841, 31.313549, 27.781179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.517090, 31.067167, 28.032755>,  <39.403240, 30.919338, 28.183701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.517090, 31.067167, 28.032755>,  <39.706841, 31.313549, 27.781179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.517090, 31.067167, 28.032755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847010, -0.124681, 0.516748,
		-0.239876, 0.777852, 0.580867,
		-0.474376, -0.615956, 0.628940,
		39.374779, 30.882381, 28.221437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.851505, 31.416658, 28.432375>,  <39.706841, 31.313549, 27.781179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.851505, 31.416658, 28.432375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.793900, 31.031731, 28.524637>,  <39.759335, 30.800774, 28.579994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.793900, 31.031731, 28.524637>,  <39.851505, 31.416658, 28.432375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.793900, 31.031731, 28.524637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839298, 0.004700, 0.543652,
		-0.524250, 0.271886, 0.806994,
		-0.144019, -0.962318, 0.230657,
		39.750694, 30.743034, 28.593834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.967136, 31.283279, 29.130562>,  <39.851505, 31.416658, 28.432375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.967136, 31.283279, 29.130562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.070045, 30.942554, 28.948034>,  <40.131790, 30.738119, 28.838518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.070045, 30.942554, 28.948034>,  <39.967136, 31.283279, 29.130562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.070045, 30.942554, 28.948034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808522, -0.068883, 0.584421,
		-0.529249, -0.519299, 0.670987,
		0.257270, -0.851812, -0.456320,
		40.147228, 30.687012, 28.811138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.027214, 30.731810, 29.576263>,  <39.967136, 31.283279, 29.130562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.027214, 30.731810, 29.576263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.265434, 30.709848, 29.255688>,  <40.408367, 30.696672, 29.063341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.265434, 30.709848, 29.255688>,  <40.027214, 30.731810, 29.576263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.265434, 30.709848, 29.255688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803310, 0.036178, 0.594461,
		-0.003642, -0.997836, 0.065648,
		0.595549, -0.054901, -0.801440,
		40.444099, 30.693378, 29.015255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.535965, 30.226746, 29.721453>,  <40.027214, 30.731810, 29.576263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.535965, 30.226746, 29.721453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.691952, 30.488960, 29.462780>,  <40.785542, 30.646290, 29.307577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.691952, 30.488960, 29.462780>,  <40.535965, 30.226746, 29.721453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.691952, 30.488960, 29.462780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848624, 0.016762, 0.528731,
		0.357443, -0.754976, -0.549768,
		0.389965, 0.655537, -0.646682,
		40.808941, 30.685621, 29.268776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.277786, 30.052166, 29.537567>,  <40.535965, 30.226746, 29.721453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.277786, 30.052166, 29.537567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.223419, 30.446064, 29.494116>,  <41.190800, 30.682404, 29.468044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.223419, 30.446064, 29.494116>,  <41.277786, 30.052166, 29.537567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.223419, 30.446064, 29.494116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877620, 0.170549, 0.447991,
		0.459685, -0.034447, -0.887414,
		-0.135915, 0.984747, -0.108630,
		41.182644, 30.741488, 29.461527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.964340, 30.302952, 29.541904>,  <41.277786, 30.052166, 29.537567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.964340, 30.302952, 29.541904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.737743, 30.601192, 29.682283>,  <41.601784, 30.780136, 29.766510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.737743, 30.601192, 29.682283>,  <41.964340, 30.302952, 29.541904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.737743, 30.601192, 29.682283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745599, 0.282383, 0.603607,
		0.350948, 0.603606, -0.715888,
		-0.566495, 0.745600, 0.350946,
		41.567795, 30.824873, 29.787567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.306736, 30.973576, 29.666483>,  <41.964340, 30.302952, 29.541904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.306736, 30.973576, 29.666483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.990211, 31.030352, 29.904369>,  <41.800297, 31.064417, 30.047100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.990211, 31.030352, 29.904369>,  <42.306736, 30.973576, 29.666483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.990211, 31.030352, 29.904369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561021, 0.555263, 0.613954,
		-0.243079, 0.819473, -0.519015,
		-0.791308, 0.141939, 0.594714,
		41.752819, 31.072933, 30.082783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.231346, 31.686062, 29.735401>,  <42.306736, 30.973576, 29.666483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.231346, 31.686062, 29.735401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.073318, 31.496656, 30.050287>,  <41.978500, 31.383013, 30.239218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.073318, 31.496656, 30.050287>,  <42.231346, 31.686062, 29.735401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.073318, 31.496656, 30.050287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485205, 0.620091, 0.616493,
		-0.780061, 0.625518, -0.015230,
		-0.395071, -0.473512, 0.787214,
		41.954796, 31.354603, 30.286451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.995670, 32.222855, 30.143196>,  <42.231346, 31.686062, 29.735401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.995670, 32.222855, 30.143196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.017803, 31.905130, 30.385193>,  <42.031082, 31.714497, 30.530390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.017803, 31.905130, 30.385193>,  <41.995670, 32.222855, 30.143196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.017803, 31.905130, 30.385193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425134, 0.566992, 0.705536,
		-0.903438, 0.218163, 0.369060,
		0.055333, -0.794308, 0.604990,
		42.034405, 31.666838, 30.566690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.919437, 32.517586, 30.854088>,  <41.995670, 32.222855, 30.143196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.919437, 32.517586, 30.854088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.019779, 32.142006, 30.948278>,  <42.079983, 31.916658, 31.004793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.019779, 32.142006, 30.948278>,  <41.919437, 32.517586, 30.854088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.019779, 32.142006, 30.948278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317217, 0.309557, 0.896408,
		-0.914574, -0.150171, 0.375504,
		0.250854, -0.938948, 0.235476,
		42.095036, 31.860321, 31.018921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.640083, 32.394936, 31.492878>,  <41.919437, 32.517586, 30.854088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.640083, 32.394936, 31.492878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.960075, 32.159740, 31.445023>,  <42.152069, 32.018623, 31.416309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.960075, 32.159740, 31.445023>,  <41.640083, 32.394936, 31.492878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.960075, 32.159740, 31.445023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369549, 0.325716, 0.870254,
		-0.472728, -0.740394, 0.477854,
		0.799976, -0.587984, -0.119637,
		42.200069, 31.983345, 31.409132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.632336, 32.099056, 32.065964>,  <41.640083, 32.394936, 31.492878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.632336, 32.099056, 32.065964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.998241, 32.087250, 31.904802>,  <42.217785, 32.080166, 31.808105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.998241, 32.087250, 31.904802>,  <41.632336, 32.099056, 32.065964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.998241, 32.087250, 31.904802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384921, 0.366410, 0.847100,
		0.122619, -0.929985, 0.346544,
		0.914767, -0.029522, -0.402900,
		42.272671, 32.078392, 31.783932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.987553, 31.964636, 32.612091>,  <41.632336, 32.099056, 32.065964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.987553, 31.964636, 32.612091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.261856, 32.095814, 32.352188>,  <42.426437, 32.174519, 32.196247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.261856, 32.095814, 32.352188>,  <41.987553, 31.964636, 32.612091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.261856, 32.095814, 32.352188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460592, 0.495699, 0.736300,
		0.563552, -0.804198, 0.188880,
		0.685759, 0.327946, -0.649759,
		42.467583, 32.194199, 32.157261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.637920, 31.937071, 33.017303>,  <41.987553, 31.964636, 32.612091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.637920, 31.937071, 33.017303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.704044, 32.171970, 32.700363>,  <42.743717, 32.312908, 32.510201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.704044, 32.171970, 32.700363>,  <42.637920, 31.937071, 33.017303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.704044, 32.171970, 32.700363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675745, 0.517741, 0.524704,
		0.718361, -0.622162, -0.311243,
		0.165308, 0.587247, -0.792347,
		42.753635, 32.348145, 32.462658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.253117, 31.919874, 32.938564>,  <42.637920, 31.937071, 33.017303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.253117, 31.919874, 32.938564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.158707, 32.255997, 32.743351>,  <43.102058, 32.457668, 32.626221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.158707, 32.255997, 32.743351>,  <43.253117, 31.919874, 32.938564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.158707, 32.255997, 32.743351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696068, 0.496645, 0.518490,
		0.678071, -0.217330, -0.702131,
		-0.236027, 0.840304, -0.488037,
		43.087898, 32.508087, 32.596939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.805317, 32.293579, 32.633820>,  <43.253117, 31.919874, 32.938564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.805317, 32.293579, 32.633820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.529049, 32.579388, 32.678429>,  <43.363289, 32.750874, 32.705193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.529049, 32.579388, 32.678429>,  <43.805317, 32.293579, 32.633820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.529049, 32.579388, 32.678429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663625, 0.564943, 0.490348,
		0.287358, 0.412679, -0.864362,
		-0.690672, 0.714517, 0.111523,
		43.321846, 32.793743, 32.711887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.220367, 32.883366, 32.708519>,  <43.805317, 32.293579, 32.633820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.220367, 32.883366, 32.708519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.860340, 33.036930, 32.790974>,  <43.644325, 33.129070, 32.840446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.860340, 33.036930, 32.790974>,  <44.220367, 32.883366, 32.708519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.860340, 33.036930, 32.790974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432828, 0.732902, 0.524895,
		0.050435, 0.561663, -0.825828,
		-0.900065, 0.383914, 0.206140,
		43.590321, 33.152103, 32.852814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.190681, 33.597652, 32.611595>,  <44.220367, 32.883366, 32.708519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.190681, 33.597652, 32.611595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.877632, 33.559704, 32.857685>,  <43.689804, 33.536934, 33.005341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.877632, 33.559704, 32.857685>,  <44.190681, 33.597652, 32.611595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.877632, 33.559704, 32.857685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335002, 0.768814, 0.544701,
		-0.524671, 0.632397, -0.569908,
		-0.782620, -0.094868, 0.615228,
		43.642845, 33.531242, 33.042255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.807045, 34.284389, 32.731659>,  <44.190681, 33.597652, 32.611595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.807045, 34.284389, 32.731659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.729691, 34.054119, 33.049450>,  <43.683277, 33.915958, 33.240124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.729691, 34.054119, 33.049450>,  <43.807045, 34.284389, 32.731659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.729691, 34.054119, 33.049450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377534, 0.703751, 0.601832,
		-0.905577, 0.416329, 0.081242,
		-0.193386, -0.575677, 0.794480,
		43.671673, 33.881416, 33.287792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.447636, 34.718811, 33.119045>,  <43.807045, 34.284389, 32.731659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.447636, 34.718811, 33.119045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.590534, 34.431908, 33.358349>,  <43.676273, 34.259766, 33.501930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.590534, 34.431908, 33.358349>,  <43.447636, 34.718811, 33.119045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.590534, 34.431908, 33.358349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343998, 0.696541, 0.629679,
		-0.868354, -0.019152, 0.495575,
		0.357248, -0.717261, 0.598256,
		43.697708, 34.216728, 33.537827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.159763, 34.955006, 33.812080>,  <43.447636, 34.718811, 33.119045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.159763, 34.955006, 33.812080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.467167, 34.702988, 33.856701>,  <43.651608, 34.551777, 33.883472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.467167, 34.702988, 33.856701>,  <43.159763, 34.955006, 33.812080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.467167, 34.702988, 33.856701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424673, 0.632662, 0.647604,
		-0.478590, -0.450317, 0.753768,
		0.768508, -0.630042, 0.111548,
		43.697720, 34.513973, 33.890167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.298088, 34.915676, 34.474300>,  <43.159763, 34.955006, 33.812080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.298088, 34.915676, 34.474300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.630711, 34.792896, 34.289135>,  <43.830284, 34.719231, 34.178036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.630711, 34.792896, 34.289135>,  <43.298088, 34.915676, 34.474300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.630711, 34.792896, 34.289135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543563, 0.621104, 0.564597,
		0.114218, -0.721120, 0.683330,
		0.831561, -0.306946, -0.462915,
		43.880180, 34.700813, 34.150261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.805172, 34.925827, 34.998402>,  <43.298088, 34.915676, 34.474300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.805172, 34.925827, 34.998402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.055771, 34.922623, 34.686649>,  <44.206131, 34.920700, 34.499596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.055771, 34.922623, 34.686649>,  <43.805172, 34.925827, 34.998402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.055771, 34.922623, 34.686649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646952, 0.563018, 0.514260,
		0.434689, -0.826406, 0.357910,
		0.626497, -0.008007, -0.779382,
		44.243721, 34.920219, 34.452835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.479836, 34.872597, 35.339893>,  <43.805172, 34.925827, 34.998402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.479836, 34.872597, 35.339893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.501884, 35.016922, 34.967491>,  <44.515114, 35.103519, 34.744049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.501884, 35.016922, 34.967491>,  <44.479836, 34.872597, 35.339893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.501884, 35.016922, 34.967491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587552, 0.742177, 0.322423,
		0.807307, -0.564788, -0.171085,
		0.055126, 0.360816, -0.931006,
		44.518421, 35.125168, 34.688190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.065529, 35.152447, 35.381008>,  <44.479836, 34.872597, 35.339893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.065529, 35.152447, 35.381008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.915600, 35.311802, 35.046154>,  <44.825642, 35.407413, 34.845242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.915600, 35.311802, 35.046154>,  <45.065529, 35.152447, 35.381008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.915600, 35.311802, 35.046154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428178, 0.875281, 0.224827,
		0.822297, -0.274173, -0.498655,
		-0.374822, 0.398388, -0.837135,
		44.803154, 35.431320, 34.795013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.562637, 35.371601, 34.835476>,  <45.065529, 35.152447, 35.381008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.562637, 35.371601, 34.835476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.241970, 35.602562, 34.773594>,  <45.049568, 35.741138, 34.736465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.241970, 35.602562, 34.773594>,  <45.562637, 35.371601, 34.835476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.241970, 35.602562, 34.773594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554230, 0.814919, 0.169516,
		0.223954, 0.050152, -0.973308,
		-0.801670, 0.577400, -0.154709,
		45.001469, 35.775784, 34.727180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.761055, 35.965729, 34.510612>,  <45.562637, 35.371601, 34.835476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.761055, 35.965729, 34.510612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.397217, 36.078556, 34.632648>,  <45.178913, 36.146252, 34.705872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.397217, 36.078556, 34.632648>,  <45.761055, 35.965729, 34.510612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.397217, 36.078556, 34.632648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339048, 0.928315, 0.152571,
		-0.240184, 0.242218, -0.940023,
		-0.909592, 0.282067, 0.305090,
		45.124340, 36.163177, 34.724174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.326996, 36.254169, 35.127907>,  <45.761055, 35.965729, 34.510612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.326996, 36.254169, 35.127907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.302368, 35.954853, 34.863705>,  <46.287590, 35.775265, 34.705181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.302368, 35.954853, 34.863705>,  <46.326996, 36.254169, 35.127907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.302368, 35.954853, 34.863705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978014, 0.086874, -0.189583,
		0.199244, -0.657658, 0.726490,
		-0.061568, -0.748291, -0.660507,
		46.283897, 35.730366, 34.665554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.884884, 35.855408, 35.155922>,  <46.326996, 36.254169, 35.127907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.884884, 35.855408, 35.155922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.744385, 35.789249, 34.787300>,  <46.660088, 35.749554, 34.566124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.744385, 35.789249, 34.787300>,  <46.884884, 35.855408, 35.155922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.744385, 35.789249, 34.787300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936102, -0.042670, -0.349130,
		0.018421, -0.985304, 0.169813,
		-0.351245, -0.165394, -0.921559,
		46.639011, 35.739632, 34.510834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.159737, 35.267239, 35.016953>,  <46.884884, 35.855408, 35.155922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.159737, 35.267239, 35.016953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.084335, 35.519505, 34.715828>,  <47.039093, 35.670864, 34.535152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.084335, 35.519505, 34.715828>,  <47.159737, 35.267239, 35.016953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.084335, 35.519505, 34.715828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943875, -0.095363, -0.316238,
		-0.271231, -0.770175, -0.577291,
		-0.188507, 0.630664, -0.752814,
		47.027782, 35.708702, 34.489983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.593868, 34.704735, 34.692173>,  <47.159737, 35.267239, 35.016953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.593868, 34.704735, 34.692173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.817272, 34.981186, 34.875652>,  <47.951317, 35.147057, 34.985741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.817272, 34.981186, 34.875652>,  <47.593868, 34.704735, 34.692173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.817272, 34.981186, 34.875652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829390, -0.456498, -0.322059,
		-0.013188, 0.560316, -0.828174,
		0.558514, 0.691127, 0.458700,
		47.984825, 35.188522, 35.013264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.295723, 38.110790, 44.241642> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.897724, 38.109032, 44.201721>,  <34.658924, 38.107975, 44.177769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.897724, 38.109032, 44.201721>,  <35.295723, 38.110790, 44.241642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.897724, 38.109032, 44.201721> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093640, -0.389034, -0.916452,
		-0.034797, -0.921213, 0.387499,
		-0.994998, -0.004396, -0.099800,
		34.599224, 38.107712, 44.171780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.214771, 37.592709, 43.974964>,  <35.295723, 38.110790, 44.241642>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.214771, 37.592709, 43.974964> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.857918, 37.747486, 43.881699>,  <34.643806, 37.840351, 43.825737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.857918, 37.747486, 43.881699>,  <35.214771, 37.592709, 43.974964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.857918, 37.747486, 43.881699> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057635, -0.414419, -0.908259,
		-0.448078, -0.823728, 0.347416,
		-0.892135, 0.386948, -0.233168,
		34.590279, 37.863571, 43.811749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.716816, 37.052078, 43.702160>,  <35.214771, 37.592709, 43.974964>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.716816, 37.052078, 43.702160> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.610394, 37.412086, 43.564068>,  <34.546539, 37.628090, 43.481213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.610394, 37.412086, 43.564068>,  <34.716816, 37.052078, 43.702160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.610394, 37.412086, 43.564068> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014412, -0.354386, -0.934988,
		-0.963850, -0.253734, 0.081315,
		-0.266055, 0.900016, -0.345232,
		34.530579, 37.682091, 43.460499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.249363, 36.888409, 43.193932>,  <34.716816, 37.052078, 43.702160>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.249363, 36.888409, 43.193932> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.345917, 37.265209, 43.100666>,  <34.403851, 37.491291, 43.044708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.345917, 37.265209, 43.100666>,  <34.249363, 36.888409, 43.193932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.345917, 37.265209, 43.100666> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196121, -0.187952, -0.962398,
		-0.950404, 0.278039, 0.139377,
		0.241388, 0.942002, -0.233159,
		34.418335, 37.547810, 43.030720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.652588, 37.250458, 42.791756>,  <34.249363, 36.888409, 43.193932>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.652588, 37.250458, 42.791756> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.979843, 37.446842, 42.672016>,  <34.176197, 37.564674, 42.600174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.979843, 37.446842, 42.672016>,  <33.652588, 37.250458, 42.791756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.979843, 37.446842, 42.672016> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205671, -0.236300, -0.949664,
		-0.536987, 0.838520, -0.092348,
		0.818134, 0.490964, -0.299350,
		34.225285, 37.594131, 42.582211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.374840, 37.587814, 42.151134>,  <33.652588, 37.250458, 42.791756>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.374840, 37.587814, 42.151134> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.774086, 37.607426, 42.165867>,  <34.013634, 37.619194, 42.174706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.774086, 37.607426, 42.165867>,  <33.374840, 37.587814, 42.151134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.774086, 37.607426, 42.165867> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043161, -0.135037, -0.989900,
		-0.043563, 0.989627, -0.136899,
		0.998118, 0.049031, 0.036831,
		34.073521, 37.622135, 42.176918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.636395, 38.003090, 41.693039>,  <33.374840, 37.587814, 42.151134>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.636395, 38.003090, 41.693039> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.975891, 37.803078, 41.761871>,  <34.179588, 37.683071, 41.803169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.975891, 37.803078, 41.761871>,  <33.636395, 38.003090, 41.693039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.975891, 37.803078, 41.761871> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158296, -0.070252, -0.984889,
		0.504566, 0.863152, 0.019528,
		0.848737, -0.500033, 0.172081,
		34.230511, 37.653069, 41.813496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.151665, 38.297798, 41.160343>,  <33.636395, 38.003090, 41.693039>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.151665, 38.297798, 41.160343> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.269794, 37.939060, 41.292068>,  <34.340672, 37.723816, 41.371105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.269794, 37.939060, 41.292068>,  <34.151665, 38.297798, 41.160343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.269794, 37.939060, 41.292068> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240038, -0.263984, -0.934181,
		0.924751, 0.354937, 0.137316,
		0.295327, -0.896846, 0.329318,
		34.358391, 37.670006, 41.390865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.715569, 38.108898, 40.756641>,  <34.151665, 38.297798, 41.160343>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.715569, 38.108898, 40.756641> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.595627, 37.751850, 40.891296>,  <34.523663, 37.537621, 40.972088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.595627, 37.751850, 40.891296>,  <34.715569, 38.108898, 40.756641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.595627, 37.751850, 40.891296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138056, -0.389760, -0.910510,
		0.943942, -0.226546, 0.240102,
		-0.299855, -0.892616, 0.336635,
		34.505669, 37.484066, 40.992287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.252514, 37.541771, 40.502300>,  <34.715569, 38.108898, 40.756641>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.252514, 37.541771, 40.502300> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.910324, 37.346298, 40.570831>,  <34.705009, 37.229015, 40.611950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.910324, 37.346298, 40.570831>,  <35.252514, 37.541771, 40.502300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.910324, 37.346298, 40.570831> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145856, -0.544838, -0.825759,
		0.496875, -0.681429, 0.537373,
		-0.855477, -0.488678, 0.171326,
		34.653683, 37.199696, 40.622231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.407780, 36.864529, 40.568768>,  <35.252514, 37.541771, 40.502300>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.407780, 36.864529, 40.568768> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.025871, 36.885445, 40.451683>,  <34.796726, 36.897995, 40.381432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.025871, 36.885445, 40.451683>,  <35.407780, 36.864529, 40.568768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.025871, 36.885445, 40.451683> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195845, -0.630145, -0.751373,
		-0.223744, -0.774714, 0.591402,
		-0.954769, 0.052292, -0.292715,
		34.739441, 36.901131, 40.363869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.258312, 36.166306, 40.470661>,  <35.407780, 36.864529, 40.568768>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.258312, 36.166306, 40.470661> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.999889, 36.386562, 40.259232>,  <34.844833, 36.518719, 40.132374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.999889, 36.386562, 40.259232>,  <35.258312, 36.166306, 40.470661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.999889, 36.386562, 40.259232> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246424, -0.504948, -0.827226,
		-0.722413, -0.664692, 0.190535,
		-0.646061, 0.550646, -0.528577,
		34.806072, 36.551758, 40.100658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.997589, 35.646145, 39.857014>,  <35.258312, 36.166306, 40.470661>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.997589, 35.646145, 39.857014> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.870182, 36.008648, 39.745838>,  <34.793739, 36.226151, 39.679131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.870182, 36.008648, 39.745838>,  <34.997589, 35.646145, 39.857014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.870182, 36.008648, 39.745838> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047174, -0.277696, -0.959510,
		-0.946743, -0.318730, 0.045698,
		-0.318515, 0.906254, -0.277943,
		34.774628, 36.280525, 39.662457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.607662, 35.528431, 39.279755>,  <34.997589, 35.646145, 39.857014>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.607662, 35.528431, 39.279755> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.683418, 35.920204, 39.251919>,  <34.728874, 36.155270, 39.235218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.683418, 35.920204, 39.251919>,  <34.607662, 35.528431, 39.279755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.683418, 35.920204, 39.251919> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172658, -0.102984, -0.979583,
		-0.966602, 0.173511, -0.188612,
		0.189393, 0.979433, -0.069586,
		34.740234, 36.214035, 39.231041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.228016, 35.825306, 38.672821>,  <34.607662, 35.528431, 39.279755>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.228016, 35.825306, 38.672821> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.528072, 36.082569, 38.734318>,  <34.708107, 36.236927, 38.771214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.528072, 36.082569, 38.734318>,  <34.228016, 35.825306, 38.672821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.528072, 36.082569, 38.734318> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317289, -0.146087, -0.937009,
		-0.580183, 0.751671, -0.313652,
		0.750144, 0.643155, 0.153739,
		34.753117, 36.275517, 38.780441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.276325, 36.252132, 38.063583>,  <34.228016, 35.825306, 38.672821>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.276325, 36.252132, 38.063583> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.632309, 36.291405, 38.241722>,  <34.845898, 36.314968, 38.348606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.632309, 36.291405, 38.241722>,  <34.276325, 36.252132, 38.063583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.632309, 36.291405, 38.241722> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451434, -0.051260, -0.890831,
		-0.064631, 0.993848, -0.089940,
		0.889961, 0.098178, 0.445344,
		34.899296, 36.320858, 38.375324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.619778, 36.887783, 37.686092>,  <34.276325, 36.252132, 38.063583>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.619778, 36.887783, 37.686092> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.893959, 36.645706, 37.848026>,  <35.058468, 36.500458, 37.945187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.893959, 36.645706, 37.848026>,  <34.619778, 36.887783, 37.686092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.893959, 36.645706, 37.848026> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463871, -0.065598, -0.883471,
		0.561230, 0.793369, 0.235769,
		0.685452, -0.605196, 0.404837,
		35.099594, 36.464146, 37.969479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.268772, 37.167801, 37.528229>,  <34.619778, 36.887783, 37.686092>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.268772, 37.167801, 37.528229> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.345142, 36.779194, 37.584362>,  <35.390965, 36.546028, 37.618042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.345142, 36.779194, 37.584362>,  <35.268772, 37.167801, 37.528229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.345142, 36.779194, 37.584362> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484178, -0.031153, -0.874415,
		0.853884, 0.234896, 0.464441,
		0.190927, -0.971521, 0.140333,
		35.402420, 36.487736, 37.626461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.932117, 37.180210, 37.296642>,  <35.268772, 37.167801, 37.528229>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.932117, 37.180210, 37.296642> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.850548, 36.788628, 37.299587>,  <35.801605, 36.553677, 37.301353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.850548, 36.788628, 37.299587>,  <35.932117, 37.180210, 37.296642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.850548, 36.788628, 37.299587> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665063, -0.144050, -0.732762,
		0.718405, -0.144532, 0.680445,
		-0.203926, -0.978959, 0.007363,
		35.789371, 36.494942, 37.301796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.560810, 36.888210, 37.212784>,  <35.932117, 37.180210, 37.296642>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.560810, 36.888210, 37.212784> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.293713, 36.617882, 37.087955>,  <36.133453, 36.455685, 37.013058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.293713, 36.617882, 37.087955>,  <36.560810, 36.888210, 37.212784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.293713, 36.617882, 37.087955> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606963, -0.251603, -0.753852,
		0.430947, -0.692796, 0.578202,
		-0.667743, -0.675817, -0.312074,
		36.093391, 36.415138, 36.994331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.966946, 36.324528, 37.025993>,  <36.560810, 36.888210, 37.212784>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.966946, 36.324528, 37.025993> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.611736, 36.301025, 36.843578>,  <36.398613, 36.286926, 36.734131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.611736, 36.301025, 36.843578>,  <36.966946, 36.324528, 37.025993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611736, 36.301025, 36.843578> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459188, -0.164755, -0.872927,
		-0.023849, -0.984583, 0.173284,
		-0.888019, -0.058752, -0.456038,
		36.345329, 36.283401, 36.706768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.844234, 35.756451, 36.607140>,  <36.966946, 36.324528, 37.025993>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.844234, 35.756451, 36.607140> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.650990, 36.081001, 36.475521>,  <36.535042, 36.275730, 36.396549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.650990, 36.081001, 36.475521>,  <36.844234, 35.756451, 36.607140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.650990, 36.081001, 36.475521> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466704, -0.079334, -0.880848,
		-0.740804, -0.579114, -0.340346,
		-0.483111, 0.811377, -0.329045,
		36.506058, 36.324413, 36.376808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.573860, 35.959782, 36.463417>,  <36.844234, 35.756451, 36.607140>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.573860, 35.959782, 36.463417> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.937973, 36.117344, 36.514366>,  <38.156441, 36.211880, 36.544933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.937973, 36.117344, 36.514366>,  <37.573860, 35.959782, 36.463417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.937973, 36.117344, 36.514366> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114581, -0.055922, 0.991839,
		0.397812, -0.917449, -0.005771,
		0.910284, 0.393904, 0.127369,
		38.211060, 36.235516, 36.552578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.014320, 35.514339, 36.947189>,  <37.573860, 35.959782, 36.463417>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.014320, 35.514339, 36.947189> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.156971, 35.887249, 36.971497>,  <38.242561, 36.110992, 36.986080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.156971, 35.887249, 36.971497>,  <38.014320, 35.514339, 36.947189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.156971, 35.887249, 36.971497> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034277, -0.051947, 0.998062,
		0.933620, -0.358014, 0.013430,
		0.356622, 0.932270, 0.060770,
		38.263958, 36.166931, 36.989727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413704, 35.509270, 37.609032>,  <38.014320, 35.514339, 36.947189>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.413704, 35.509270, 37.609032> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.349422, 35.892971, 37.516075>,  <38.310856, 36.123192, 37.460300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.349422, 35.892971, 37.516075>,  <38.413704, 35.509270, 37.609032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.349422, 35.892971, 37.516075> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057833, 0.244203, 0.967998,
		0.985307, 0.142118, -0.094720,
		-0.160701, 0.959254, -0.232396,
		38.301212, 36.180748, 37.446358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.874744, 36.003136, 38.063503>,  <38.413704, 35.509270, 37.609032>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.874744, 36.003136, 38.063503> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.589146, 36.244747, 37.921886>,  <38.417786, 36.389713, 37.836914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.589146, 36.244747, 37.921886>,  <38.874744, 36.003136, 38.063503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.589146, 36.244747, 37.921886> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220246, 0.286230, 0.932504,
		0.664600, 0.743786, -0.071333,
		-0.714002, 0.604031, -0.354045,
		38.374947, 36.425957, 37.815674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.921841, 36.571453, 38.516815>,  <38.874744, 36.003136, 38.063503>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.921841, 36.571453, 38.516815> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.574993, 36.625687, 38.325100>,  <38.366882, 36.658226, 38.210072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.574993, 36.625687, 38.325100>,  <38.921841, 36.571453, 38.516815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.574993, 36.625687, 38.325100> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365719, 0.479956, 0.797428,
		0.338152, 0.866752, -0.366597,
		-0.867123, 0.135581, -0.479286,
		38.314857, 36.666363, 38.181313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.689320, 37.312496, 38.575142>,  <38.921841, 36.571453, 38.516815>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.689320, 37.312496, 38.575142> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.392792, 37.048180, 38.528149>,  <38.214874, 36.889587, 38.499954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.392792, 37.048180, 38.528149>,  <38.689320, 37.312496, 38.575142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.392792, 37.048180, 38.528149> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483380, 0.404231, 0.776493,
		-0.465612, 0.632415, -0.619077,
		-0.741316, -0.660794, -0.117482,
		38.170399, 36.849941, 38.492905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.132351, 37.646534, 38.571289>,  <38.689320, 37.312496, 38.575142>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.132351, 37.646534, 38.571289> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.956692, 37.298347, 38.660217>,  <37.851295, 37.089436, 38.713573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.956692, 37.298347, 38.660217>,  <38.132351, 37.646534, 38.571289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.956692, 37.298347, 38.660217> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422608, 0.418526, 0.803890,
		-0.792810, 0.259074, -0.551664,
		-0.439152, -0.870469, 0.222325,
		37.824947, 37.037209, 38.726913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.535378, 37.865284, 38.880363>,  <38.132351, 37.646534, 38.571289>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.535378, 37.865284, 38.880363> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.584530, 37.482414, 38.985226>,  <37.614021, 37.252693, 39.048141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.584530, 37.482414, 38.985226>,  <37.535378, 37.865284, 38.880363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.584530, 37.482414, 38.985226> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467034, 0.177302, 0.866281,
		-0.875659, -0.228888, -0.425243,
		0.122885, -0.957170, 0.262154,
		37.621395, 37.195263, 39.063873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.917316, 37.652847, 39.291157>,  <37.535378, 37.865284, 38.880363>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.917316, 37.652847, 39.291157> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.231178, 37.436161, 39.411724>,  <37.419495, 37.306149, 39.484066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.231178, 37.436161, 39.411724>,  <36.917316, 37.652847, 39.291157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.231178, 37.436161, 39.411724> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329752, 0.047007, 0.942896,
		-0.524953, -0.839244, -0.141749,
		0.784657, -0.541719, 0.301419,
		37.466576, 37.273643, 39.502151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.550823, 37.259354, 39.770073>,  <36.917316, 37.652847, 39.291157>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.550823, 37.259354, 39.770073> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.942974, 37.228859, 39.842793>,  <37.178265, 37.210564, 39.886425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.942974, 37.228859, 39.842793>,  <36.550823, 37.259354, 39.770073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.942974, 37.228859, 39.842793> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182243, 0.001209, 0.983253,
		-0.075183, -0.997089, -0.012709,
		0.980375, -0.076240, 0.181803,
		37.237087, 37.205990, 39.897335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.645691, 36.742905, 40.267902>,  <36.550823, 37.259354, 39.770073>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.645691, 36.742905, 40.267902> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.996468, 36.932610, 40.299011>,  <37.206932, 37.046432, 40.317677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.996468, 36.932610, 40.299011>,  <36.645691, 36.742905, 40.267902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.996468, 36.932610, 40.299011> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147464, 0.111511, 0.982761,
		0.457413, -0.873294, 0.167726,
		0.876942, 0.474261, 0.077773,
		37.259552, 37.074886, 40.322342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.042076, 36.390354, 40.855785>,  <36.645691, 36.742905, 40.267902>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.042076, 36.390354, 40.855785> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.166458, 36.766281, 40.799145>,  <37.241089, 36.991837, 40.765160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.166458, 36.766281, 40.799145>,  <37.042076, 36.390354, 40.855785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.166458, 36.766281, 40.799145> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092848, 0.178317, 0.979583,
		0.945877, -0.291462, 0.142709,
		0.310959, 0.939815, -0.141605,
		37.259747, 37.048225, 40.756664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.390621, 36.640644, 41.419960>,  <37.042076, 36.390354, 40.855785>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.390621, 36.640644, 41.419960> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.325825, 37.005390, 41.269093>,  <37.286945, 37.224239, 41.178574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.325825, 37.005390, 41.269093>,  <37.390621, 36.640644, 41.419960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.325825, 37.005390, 41.269093> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155714, 0.401045, 0.902727,
		0.974429, 0.087504, -0.206956,
		-0.161991, 0.911870, -0.377164,
		37.277229, 37.278950, 41.155945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.952538, 37.121593, 41.617920>,  <37.390621, 36.640644, 41.419960>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.952538, 37.121593, 41.617920> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.638184, 37.363983, 41.568645>,  <37.449570, 37.509418, 41.539082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.638184, 37.363983, 41.568645>,  <37.952538, 37.121593, 41.617920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.638184, 37.363983, 41.568645> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126134, 0.352115, 0.927418,
		0.605368, 0.713309, -0.353157,
		-0.785888, 0.605975, -0.123187,
		37.402416, 37.545776, 41.531689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.079025, 37.741512, 41.855988>,  <37.952538, 37.121593, 41.617920>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.079025, 37.741512, 41.855988> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.680534, 37.776093, 41.859077>,  <37.441441, 37.796841, 41.860931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.680534, 37.776093, 41.859077>,  <38.079025, 37.741512, 41.855988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.680534, 37.776093, 41.859077> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057388, 0.589272, 0.805894,
		0.065116, 0.803296, -0.592010,
		-0.996226, 0.086451, 0.007728,
		37.381668, 37.802029, 41.861397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.897209, 38.542675, 41.817097>,  <38.079025, 37.741512, 41.855988>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.897209, 38.542675, 41.817097> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.564304, 38.348625, 41.924419>,  <37.364559, 38.232197, 41.988815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.564304, 38.348625, 41.924419>,  <37.897209, 38.542675, 41.817097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.564304, 38.348625, 41.924419> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221322, 0.734494, 0.641510,
		-0.508284, 0.474523, -0.718662,
		-0.832264, -0.485125, 0.268310,
		37.314625, 38.203087, 42.004913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.331554, 39.063129, 41.868137>,  <37.897209, 38.542675, 41.817097>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.331554, 39.063129, 41.868137> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.206810, 38.755669, 42.091534>,  <37.131966, 38.571190, 42.225571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.206810, 38.755669, 42.091534>,  <37.331554, 39.063129, 41.868137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.206810, 38.755669, 42.091534> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183379, 0.625448, 0.758411,
		-0.932265, 0.134101, -0.336006,
		-0.311858, -0.768656, 0.558491,
		37.113251, 38.525070, 42.259083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.579399, 39.268631, 42.127632>,  <37.331554, 39.063129, 41.868137>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.579399, 39.268631, 42.127632> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.750153, 39.005955, 42.376320>,  <36.852604, 38.848351, 42.525532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.750153, 39.005955, 42.376320>,  <36.579399, 39.268631, 42.127632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.750153, 39.005955, 42.376320> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479249, 0.418732, 0.771351,
		-0.766872, -0.627232, -0.135969,
		0.426882, -0.656691, 0.621714,
		36.878216, 38.808949, 42.562836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.093075, 39.309860, 42.698479> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.419392, 39.126003, 42.838890>,  <36.615181, 39.015690, 42.923138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.419392, 39.126003, 42.838890>,  <36.093075, 39.309860, 42.698479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.419392, 39.126003, 42.838890> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225170, 0.306634, 0.924810,
		-0.532718, -0.833490, 0.146651,
		0.815788, -0.459642, 0.351026,
		36.664127, 38.988110, 42.944199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.797489, 38.762867, 43.151051>,  <36.093075, 39.309860, 42.698479>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.797489, 38.762867, 43.151051> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.175957, 38.824604, 43.264847>,  <36.403038, 38.861645, 43.333126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.175957, 38.824604, 43.264847>,  <35.797489, 38.762867, 43.151051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.175957, 38.824604, 43.264847> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288742, 0.005394, 0.957392,
		0.146233, -0.988003, 0.049670,
		0.946173, 0.154344, 0.284489,
		36.459808, 38.870907, 43.350193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891991, 38.334160, 43.701653>,  <35.797489, 38.762867, 43.151051>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.891991, 38.334160, 43.701653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.173000, 38.614094, 43.753326>,  <36.341606, 38.782055, 43.784328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.173000, 38.614094, 43.753326>,  <35.891991, 38.334160, 43.701653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.173000, 38.614094, 43.753326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279748, 0.104658, 0.954352,
		0.654371, -0.706593, 0.269303,
		0.702524, 0.699838, 0.129183,
		36.383759, 38.824043, 43.792080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.066296, 38.179821, 44.389088>,  <35.891991, 38.334160, 43.701653>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.066296, 38.179821, 44.389088> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.215504, 38.538734, 44.294659>,  <36.305031, 38.754082, 44.237999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.215504, 38.538734, 44.294659>,  <36.066296, 38.179821, 44.389088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.215504, 38.538734, 44.294659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042114, 0.270554, 0.961783,
		0.926865, -0.348826, 0.138712,
		0.373024, 0.897285, -0.236077,
		36.327412, 38.807919, 44.223835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.639572, 38.329754, 44.873112>,  <36.066296, 38.179821, 44.389088>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.639572, 38.329754, 44.873112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.539268, 38.689182, 44.729057>,  <36.479084, 38.904839, 44.642624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.539268, 38.689182, 44.729057>,  <36.639572, 38.329754, 44.873112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.539268, 38.689182, 44.729057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065964, 0.355295, 0.932424,
		0.965798, 0.257573, -0.029822,
		-0.250763, 0.898566, -0.360134,
		36.464039, 38.958752, 44.621017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.151691, 38.855244, 44.929852>,  <36.639572, 38.329754, 44.873112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.151691, 38.855244, 44.929852> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.797920, 39.041691, 44.938995>,  <36.585659, 39.153561, 44.944481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.797920, 39.041691, 44.938995>,  <37.151691, 38.855244, 44.929852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.797920, 39.041691, 44.938995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150882, 0.239253, 0.959163,
		0.441615, 0.851758, -0.281931,
		-0.884427, 0.466119, 0.022857,
		36.532593, 39.181526, 44.945854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.176147, 39.293919, 45.506195>,  <37.151691, 38.855244, 44.929852>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.176147, 39.293919, 45.506195> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.780449, 39.284569, 45.448456>,  <36.543030, 39.278961, 45.413811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.780449, 39.284569, 45.448456>,  <37.176147, 39.293919, 45.506195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.780449, 39.284569, 45.448456> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144254, 0.317794, 0.937122,
		0.023972, 0.947871, -0.317750,
		-0.989250, -0.023372, -0.144353,
		36.483673, 39.277557, 45.405151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.914341, 39.937023, 45.820080>,  <37.176147, 39.293919, 45.506195>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.914341, 39.937023, 45.820080> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.593609, 39.699604, 45.792439>,  <36.401169, 39.557152, 45.775852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.593609, 39.699604, 45.792439>,  <36.914341, 39.937023, 45.820080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.593609, 39.699604, 45.792439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285434, 0.278836, 0.916939,
		-0.524975, 0.754954, -0.392997,
		-0.801829, -0.593545, -0.069108,
		36.353062, 39.521542, 45.771706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.409748, 40.275040, 46.085018>,  <36.914341, 39.937023, 45.820080>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.409748, 40.275040, 46.085018> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.267567, 39.901619, 46.103489>,  <36.182259, 39.677567, 46.114571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.267567, 39.901619, 46.103489>,  <36.409748, 40.275040, 46.085018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.267567, 39.901619, 46.103489> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326402, 0.170269, 0.929769,
		-0.875853, 0.315413, -0.365236,
		-0.355449, -0.933554, 0.046179,
		36.160931, 39.621552, 46.117344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.737236, 40.336956, 46.486946>,  <36.409748, 40.275040, 46.085018>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.737236, 40.336956, 46.486946> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.830521, 39.948307, 46.502705>,  <35.886494, 39.715118, 46.512161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.830521, 39.948307, 46.502705>,  <35.737236, 40.336956, 46.486946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.830521, 39.948307, 46.502705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233100, -0.016527, 0.972312,
		-0.944074, -0.235941, -0.230341,
		0.233215, -0.971627, 0.039395,
		35.900486, 39.656818, 46.514523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.193298, 39.897301, 46.701855>,  <35.737236, 40.336956, 46.486946>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.193298, 39.897301, 46.701855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.499302, 39.665264, 46.813747>,  <35.682903, 39.526043, 46.880882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.499302, 39.665264, 46.813747>,  <35.193298, 39.897301, 46.701855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.499302, 39.665264, 46.813747> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340595, 0.004218, 0.940201,
		-0.546583, -0.814540, -0.194349,
		0.765012, -0.580092, 0.279734,
		35.728806, 39.491238, 46.897667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.949780, 39.595222, 47.340248>,  <35.193298, 39.897301, 46.701855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.949780, 39.595222, 47.340248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.341721, 39.515850, 47.331264>,  <35.576885, 39.468227, 47.325874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.341721, 39.515850, 47.331264>,  <34.949780, 39.595222, 47.340248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.341721, 39.515850, 47.331264> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028139, -0.248538, 0.968213,
		-0.197703, -0.948080, -0.249116,
		0.979858, -0.198428, -0.022459,
		35.635677, 39.456322, 47.324528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.015629, 38.858913, 47.652847>,  <34.949780, 39.595222, 47.340248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.015629, 38.858913, 47.652847> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.367302, 39.046467, 47.686737>,  <35.578308, 39.159000, 47.707069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.367302, 39.046467, 47.686737>,  <35.015629, 38.858913, 47.652847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.367302, 39.046467, 47.686737> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054673, -0.077358, 0.995503,
		0.473331, -0.879865, -0.042377,
		0.879187, 0.468886, 0.084721,
		35.631058, 39.187134, 47.712154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.383011, 38.368950, 48.078495>,  <35.015629, 38.858913, 47.652847>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.383011, 38.368950, 48.078495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.515118, 38.746464, 48.084042>,  <35.594383, 38.972973, 48.087368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.515118, 38.746464, 48.084042>,  <35.383011, 38.368950, 48.078495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.515118, 38.746464, 48.084042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002868, -0.015690, 0.999873,
		0.943883, -0.330185, -0.007888,
		0.330267, 0.943786, 0.013862,
		35.614197, 39.029598, 48.088200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.975063, 38.375095, 48.619453>,  <35.383011, 38.368950, 48.078495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.975063, 38.375095, 48.619453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.877491, 38.759041, 48.564079>,  <35.818947, 38.989407, 48.530857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.877491, 38.759041, 48.564079>,  <35.975063, 38.375095, 48.619453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.877491, 38.759041, 48.564079> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153458, 0.179151, 0.971780,
		0.957574, 0.215803, -0.190999,
		-0.243931, 0.959862, -0.138433,
		35.804314, 39.047001, 48.522549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.198837, 38.602013, 49.255993>,  <35.975063, 38.375095, 48.619453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.198837, 38.602013, 49.255993> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.984055, 38.917187, 49.135441>,  <35.855183, 39.106293, 49.063110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.984055, 38.917187, 49.135441>,  <36.198837, 38.602013, 49.255993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.984055, 38.917187, 49.135441> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136387, 0.271472, 0.952734,
		0.832509, 0.552686, -0.038306,
		-0.536961, 0.787935, -0.301382,
		35.822968, 39.153568, 49.045025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.503426, 39.256428, 49.528278>,  <36.198837, 38.602013, 49.255993>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.503426, 39.256428, 49.528278> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.121941, 39.349182, 49.451683>,  <35.893051, 39.404835, 49.405727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.121941, 39.349182, 49.451683>,  <36.503426, 39.256428, 49.528278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.121941, 39.349182, 49.451683> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124981, 0.273528, 0.953710,
		0.273528, 0.933494, -0.231885,
		-0.953710, 0.231885, -0.191487,
		35.835827, 39.418747, 49.394238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.448341, 39.963284, 49.803707>,  <36.503426, 39.256428, 49.528278>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.448341, 39.963284, 49.803707> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.078484, 39.812210, 49.784145>,  <35.856567, 39.721565, 49.772408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.078484, 39.812210, 49.784145>,  <36.448341, 39.963284, 49.803707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.078484, 39.812210, 49.784145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117433, 0.160603, 0.980008,
		-0.362275, 0.911902, -0.192853,
		-0.924644, -0.377680, -0.048905,
		35.801090, 39.698906, 49.769474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.035271, 40.426998, 50.164127>,  <36.448341, 39.963284, 49.803707>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.035271, 40.426998, 50.164127> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.793777, 40.108162, 50.159111>,  <35.648884, 39.916859, 50.156101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.793777, 40.108162, 50.159111>,  <36.035271, 40.426998, 50.164127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.793777, 40.108162, 50.159111> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326862, 0.233164, 0.915858,
		-0.727097, 0.557030, -0.401306,
		-0.603731, -0.797090, -0.012539,
		35.612659, 39.869034, 50.155350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.456181, 40.720787, 50.453499>,  <36.035271, 40.426998, 50.164127>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.456181, 40.720787, 50.453499> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.453220, 40.321735, 50.480873>,  <35.451443, 40.082306, 50.497299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.453220, 40.321735, 50.480873>,  <35.456181, 40.720787, 50.453499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.453220, 40.321735, 50.480873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312368, 0.067324, 0.947573,
		-0.949932, -0.014364, -0.312125,
		-0.007402, -0.997628, 0.068440,
		35.451000, 40.022446, 50.501404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.852707, 40.655930, 50.863647>,  <35.456181, 40.720787, 50.453499>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.852707, 40.655930, 50.863647> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.070030, 40.323627, 50.912067>,  <35.200424, 40.124245, 50.941120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.070030, 40.323627, 50.912067>,  <34.852707, 40.655930, 50.863647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.070030, 40.323627, 50.912067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338750, -0.085005, 0.937029,
		-0.768154, -0.550105, -0.327604,
		0.543312, -0.830758, 0.121051,
		35.233025, 40.074402, 50.948383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.185749, 40.292881, 50.604679>,  <34.852707, 40.655930, 50.863647>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.185749, 40.292881, 50.604679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.060982, 40.522228, 50.301643>,  <33.986122, 40.659836, 50.119820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.060982, 40.522228, 50.301643>,  <34.185749, 40.292881, 50.604679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.060982, 40.522228, 50.301643> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876570, -0.481263, -0.003327,
		-0.366510, 0.663046, 0.652718,
		-0.311923, 0.573372, -0.757594,
		33.967403, 40.694241, 50.074364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.592056, 40.661968, 50.762379>,  <34.185749, 40.292881, 50.604679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.592056, 40.661968, 50.762379> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.624966, 40.574390, 50.373474>,  <33.644711, 40.521843, 50.140133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.624966, 40.574390, 50.373474>,  <33.592056, 40.661968, 50.762379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.624966, 40.574390, 50.373474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847724, -0.528330, 0.047238,
		-0.524018, 0.820323, -0.229076,
		0.082277, -0.218947, -0.972262,
		33.649651, 40.508705, 50.081795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.437359, 40.442513, 51.514172>,  <33.592056, 40.661968, 50.762379>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.437359, 40.442513, 51.514172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.120472, 40.670135, 51.426018>,  <32.930340, 40.806709, 51.373127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.120472, 40.670135, 51.426018>,  <33.437359, 40.442513, 51.514172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.120472, 40.670135, 51.426018> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378447, 0.741452, 0.554100,
		0.478718, 0.355563, -0.802748,
		-0.792216, 0.569055, -0.220384,
		32.882809, 40.840851, 51.359901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.781837, 40.234428, 51.784855>,  <33.437359, 40.442513, 51.514172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.781837, 40.234428, 51.784855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.426880, 40.278809, 51.605873>,  <32.213905, 40.305435, 51.498482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.426880, 40.278809, 51.605873>,  <32.781837, 40.234428, 51.784855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.426880, 40.278809, 51.605873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339542, -0.499245, -0.797161,
		-0.311833, -0.859329, 0.405357,
		-0.887396, 0.110946, -0.447459,
		32.160660, 40.312092, 51.471634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.572670, 39.537483, 51.546425>,  <32.781837, 40.234428, 51.784855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.572670, 39.537483, 51.546425> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.371208, 39.790436, 51.310997>,  <32.250332, 39.942207, 51.169739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.371208, 39.790436, 51.310997>,  <32.572670, 39.537483, 51.546425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.371208, 39.790436, 51.310997> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219137, -0.565494, -0.795107,
		-0.835648, -0.529440, 0.146237,
		-0.503658, 0.632383, -0.588574,
		32.220112, 39.980152, 51.134426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.261448, 39.066963, 51.089897>,  <32.572670, 39.537483, 51.546425>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.261448, 39.066963, 51.089897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.192707, 39.417686, 50.910267>,  <32.151463, 39.628120, 50.802486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.192707, 39.417686, 50.910267>,  <32.261448, 39.066963, 51.089897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.192707, 39.417686, 50.910267> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159762, -0.425021, -0.890973,
		-0.972081, -0.224865, -0.067038,
		-0.171856, 0.876808, -0.449080,
		32.141151, 39.680729, 50.775543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.693548, 38.931149, 50.582836>,  <32.261448, 39.066963, 51.089897>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.693548, 38.931149, 50.582836> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.873045, 39.272572, 50.476952>,  <31.980743, 39.477425, 50.413422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.873045, 39.272572, 50.476952>,  <31.693548, 38.931149, 50.582836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.873045, 39.272572, 50.476952> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269975, -0.411847, -0.870342,
		-0.851906, 0.319095, -0.415252,
		0.448742, 0.853558, -0.264707,
		32.007668, 39.528641, 50.397541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.504074, 39.022274, 49.990944>,  <31.693548, 38.931149, 50.582836>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.504074, 39.022274, 49.990944> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.819555, 39.266014, 49.958366>,  <32.008842, 39.412258, 49.938820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.819555, 39.266014, 49.958366>,  <31.504074, 39.022274, 49.990944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.819555, 39.266014, 49.958366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200788, -0.380542, -0.902703,
		-0.581060, 0.695611, -0.422486,
		0.788704, 0.609354, -0.081447,
		32.056168, 39.448822, 49.933933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.431799, 39.321362, 49.333385>,  <31.504074, 39.022274, 49.990944>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.431799, 39.321362, 49.333385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.813475, 39.355572, 49.448071>,  <32.042480, 39.376099, 49.516884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.813475, 39.355572, 49.448071>,  <31.431799, 39.321362, 49.333385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.813475, 39.355572, 49.448071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298878, -0.317009, -0.900098,
		0.013907, 0.944558, -0.328050,
		0.954190, 0.085529, 0.286716,
		32.099731, 39.381229, 49.534084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.724302, 39.627628, 48.674019>,  <31.431799, 39.321362, 49.333385>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.724302, 39.627628, 48.674019> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.025787, 39.512684, 48.910439>,  <32.206680, 39.443718, 49.052292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.025787, 39.512684, 48.910439>,  <31.724302, 39.627628, 48.674019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.025787, 39.512684, 48.910439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555192, -0.202847, -0.806607,
		0.351678, 0.936097, 0.006651,
		0.753714, -0.287359, 0.591050,
		32.251900, 39.426476, 49.087753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.353561, 39.921898, 48.358978>,  <31.724302, 39.627628, 48.674019>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.353561, 39.921898, 48.358978> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.419674, 39.589893, 48.572056>,  <32.459343, 39.390690, 48.699902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.419674, 39.589893, 48.572056>,  <32.353561, 39.921898, 48.358978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.419674, 39.589893, 48.572056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666602, -0.304052, -0.680584,
		0.726858, 0.467587, 0.503031,
		0.165284, -0.830009, 0.532697,
		32.469257, 39.340889, 48.731865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.039284, 39.931366, 48.370750>,  <32.353561, 39.921898, 48.358978>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.039284, 39.931366, 48.370750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.942215, 39.550884, 48.446987>,  <32.883972, 39.322598, 48.492729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.942215, 39.550884, 48.446987>,  <33.039284, 39.931366, 48.370750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.942215, 39.550884, 48.446987> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617473, -0.302979, -0.725900,
		0.748223, -0.058471, 0.660866,
		-0.242672, -0.951202, 0.190592,
		32.869411, 39.265522, 48.504166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.638420, 39.544640, 48.358597>,  <33.039284, 39.931366, 48.370750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.638420, 39.544640, 48.358597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.341022, 39.289318, 48.278812>,  <33.162582, 39.136127, 48.230942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.341022, 39.289318, 48.278812>,  <33.638420, 39.544640, 48.358597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.341022, 39.289318, 48.278812> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534913, -0.388628, -0.750224,
		0.401352, -0.664484, 0.630379,
		-0.743495, -0.638302, -0.199465,
		33.117973, 39.097828, 48.218971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.993694, 38.914730, 48.173321>,  <33.638420, 39.544640, 48.358597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.993694, 38.914730, 48.173321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.631069, 38.850487, 48.017197>,  <33.413494, 38.811939, 47.923523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.631069, 38.850487, 48.017197>,  <33.993694, 38.914730, 48.173321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.631069, 38.850487, 48.017197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410299, -0.552184, -0.725773,
		-0.098954, -0.818105, 0.566491,
		-0.906566, -0.160613, -0.390309,
		33.359100, 38.802303, 47.900105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.013107, 38.170208, 47.972515>,  <33.993694, 38.914730, 48.173321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.013107, 38.170208, 47.972515> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.744347, 38.387447, 47.771084>,  <33.583088, 38.517792, 47.650227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.744347, 38.387447, 47.771084>,  <34.013107, 38.170208, 47.972515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.744347, 38.387447, 47.771084> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348414, -0.368218, -0.861988,
		-0.653568, -0.754628, 0.058186,
		-0.671905, 0.543095, -0.503578,
		33.542774, 38.550377, 47.620010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.886250, 37.713161, 47.376606>,  <34.013107, 38.170208, 47.972515>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.886250, 37.713161, 47.376606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.750648, 38.078102, 47.284782>,  <33.669289, 38.297066, 47.229687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.750648, 38.078102, 47.284782>,  <33.886250, 37.713161, 47.376606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.750648, 38.078102, 47.284782> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412779, -0.075019, -0.907736,
		-0.845393, -0.402484, -0.351166,
		-0.339005, 0.912348, -0.229558,
		33.648949, 38.351807, 47.215916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.515465, 37.701374, 46.880882>,  <33.886250, 37.713161, 47.376606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.515465, 37.701374, 46.880882> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.597332, 38.091965, 46.853764>,  <33.646454, 38.326321, 46.837494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.597332, 38.091965, 46.853764>,  <33.515465, 37.701374, 46.880882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.597332, 38.091965, 46.853764> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315664, -0.131406, -0.939728,
		-0.926534, 0.170935, -0.335135,
		0.204671, 0.976480, -0.067794,
		33.658733, 38.384911, 46.833424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.290699, 37.849445, 46.229740>,  <33.515465, 37.701374, 46.880882>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.290699, 37.849445, 46.229740> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.538528, 38.148540, 46.325253>,  <33.687225, 38.327995, 46.382561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.538528, 38.148540, 46.325253>,  <33.290699, 37.849445, 46.229740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.538528, 38.148540, 46.325253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330952, 0.026993, -0.943262,
		-0.711754, 0.663450, -0.230740,
		0.619578, 0.747734, 0.238782,
		33.724403, 38.372860, 46.396889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.068386, 38.349255, 45.775795>,  <33.290699, 37.849445, 46.229740>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.068386, 38.349255, 45.775795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.441784, 38.429890, 45.894421>,  <33.665821, 38.478271, 45.965595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.441784, 38.429890, 45.894421>,  <33.068386, 38.349255, 45.775795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.441784, 38.429890, 45.894421> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308444, -0.029558, -0.950783,
		-0.182900, 0.979024, -0.089771,
		0.933493, 0.201587, 0.296568,
		33.721832, 38.490364, 45.983391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.260265, 38.875683, 45.300762>,  <33.068386, 38.349255, 45.775795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.260265, 38.875683, 45.300762> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.579430, 38.691593, 45.456467>,  <33.770927, 38.581139, 45.549889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.579430, 38.691593, 45.456467>,  <33.260265, 38.875683, 45.300762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.579430, 38.691593, 45.456467> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339742, -0.190064, -0.921114,
		0.497908, 0.867217, 0.004704,
		0.797912, -0.460228, 0.389265,
		33.818802, 38.553524, 45.573246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.824821, 39.261333, 45.113167>,  <33.260265, 38.875683, 45.300762>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.824821, 39.261333, 45.113167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.967834, 38.899982, 45.207893>,  <34.053642, 38.683170, 45.264729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.967834, 38.899982, 45.207893>,  <33.824821, 39.261333, 45.113167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.967834, 38.899982, 45.207893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226497, -0.162127, -0.960424,
		0.906020, 0.397017, 0.146648,
		0.357529, -0.903378, 0.236813,
		34.075092, 38.628967, 45.278938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.403641, 39.215202, 44.669075>,  <33.824821, 39.261333, 45.113167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.403641, 39.215202, 44.669075> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.322655, 38.839439, 44.779728>,  <34.274063, 38.613983, 44.846119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.322655, 38.839439, 44.779728>,  <34.403641, 39.215202, 44.669075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.322655, 38.839439, 44.779728> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234149, -0.320727, -0.917774,
		0.950886, -0.121040, 0.284895,
		-0.202461, -0.939406, 0.276634,
		34.261917, 38.557617, 44.862717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.032574, 38.843761, 44.507893>,  <34.403641, 39.215202, 44.669075>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.032574, 38.843761, 44.507893> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.720867, 38.593323, 44.518875>,  <34.533844, 38.443058, 44.525467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.720867, 38.593323, 44.518875>,  <35.032574, 38.843761, 44.507893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.720867, 38.593323, 44.518875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184442, -0.270998, -0.944744,
		0.598942, -0.731139, 0.326657,
		-0.779262, -0.626096, 0.027459,
		34.487087, 38.405495, 44.527111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.564533, 32.723370, 28.889530> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.173191, 32.804550, 28.905643>,  <39.938385, 32.853260, 28.915312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.173191, 32.804550, 28.905643>,  <40.564533, 32.723370, 28.889530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.173191, 32.804550, 28.905643> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200559, 0.882304, 0.425813,
		0.050875, 0.424678, -0.903914,
		-0.978360, 0.202951, 0.040285,
		39.879684, 32.865437, 28.917728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.573273, 33.418240, 28.698366>,  <40.564533, 32.723370, 28.889530>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.573273, 33.418240, 28.698366> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.221325, 33.352318, 28.876656>,  <40.010155, 33.312763, 28.983629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.221325, 33.352318, 28.876656>,  <40.573273, 33.418240, 28.698366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.221325, 33.352318, 28.876656> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066840, 0.885696, 0.459429,
		-0.470492, 0.434030, -0.768281,
		-0.879869, -0.164806, 0.445724,
		39.957363, 33.302876, 29.010372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.132423, 34.063412, 28.701328>,  <40.573273, 33.418240, 28.698366>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.132423, 34.063412, 28.701328> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.989166, 33.846725, 29.005507>,  <39.903210, 33.716713, 29.188013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.989166, 33.846725, 29.005507>,  <40.132423, 34.063412, 28.701328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.989166, 33.846725, 29.005507> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149921, 0.770540, 0.619509,
		-0.921550, 0.335883, -0.194753,
		-0.358147, -0.541711, 0.760447,
		39.881721, 33.684212, 29.233641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.628407, 34.508793, 28.977882>,  <40.132423, 34.063412, 28.701328>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.628407, 34.508793, 28.977882> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.705017, 34.260323, 29.281845>,  <39.750984, 34.111240, 29.464222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.705017, 34.260323, 29.281845>,  <39.628407, 34.508793, 28.977882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.705017, 34.260323, 29.281845> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273350, 0.777365, 0.566555,
		-0.942654, 0.099209, 0.318686,
		0.191528, -0.621178, 0.759905,
		39.762474, 34.073971, 29.509817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330639, 34.786533, 29.642506>,  <39.628407, 34.508793, 28.977882>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.330639, 34.786533, 29.642506> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.614426, 34.523804, 29.744669>,  <39.784698, 34.366165, 29.805967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.614426, 34.523804, 29.744669>,  <39.330639, 34.786533, 29.642506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.614426, 34.523804, 29.744669> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381254, 0.662523, 0.644754,
		-0.592705, -0.360057, 0.720458,
		0.709469, -0.656827, 0.255408,
		39.827267, 34.326756, 29.821291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.348583, 34.878407, 30.388920>,  <39.330639, 34.786533, 29.642506>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.348583, 34.878407, 30.388920> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.689411, 34.720005, 30.252008>,  <39.893909, 34.624966, 30.169861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.689411, 34.720005, 30.252008>,  <39.348583, 34.878407, 30.388920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.689411, 34.720005, 30.252008> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517588, 0.540100, 0.663622,
		-0.077930, -0.742614, 0.665170,
		0.852073, -0.396000, -0.342278,
		39.945034, 34.601204, 30.149324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.640919, 34.688606, 31.000668>,  <39.348583, 34.878407, 30.388920>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.640919, 34.688606, 31.000668> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.929916, 34.702904, 30.724485>,  <40.103313, 34.711483, 30.558775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.929916, 34.702904, 30.724485>,  <39.640919, 34.688606, 31.000668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.929916, 34.702904, 30.724485> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597357, 0.470538, 0.649429,
		0.348097, -0.881656, 0.318609,
		0.722491, 0.035741, -0.690457,
		40.146664, 34.713627, 30.517349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.175388, 34.372055, 31.317808>,  <39.640919, 34.688606, 31.000668>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.175388, 34.372055, 31.317808> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.304405, 34.606689, 31.020653>,  <40.381813, 34.747471, 30.842360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.304405, 34.606689, 31.020653>,  <40.175388, 34.372055, 31.317808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.304405, 34.606689, 31.020653> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645595, 0.437626, 0.625852,
		0.692225, -0.681465, -0.237548,
		0.322539, 0.586590, -0.742886,
		40.401169, 34.782665, 30.797787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.898293, 34.412243, 31.475368>,  <40.175388, 34.372055, 31.317808>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.898293, 34.412243, 31.475368> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.846279, 34.709679, 31.213020>,  <40.815071, 34.888142, 31.055613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.846279, 34.709679, 31.213020>,  <40.898293, 34.412243, 31.475368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.846279, 34.709679, 31.213020> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581881, 0.592825, 0.556752,
		0.802811, -0.309241, -0.509769,
		-0.130033, 0.743592, -0.655868,
		40.807270, 34.932755, 31.016260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.582596, 34.649288, 31.274128>,  <40.898293, 34.412243, 31.475368>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.582596, 34.649288, 31.274128> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.314095, 34.944752, 31.249491>,  <41.152992, 35.122032, 31.234709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.314095, 34.944752, 31.249491>,  <41.582596, 34.649288, 31.274128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.314095, 34.944752, 31.249491> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588057, 0.581291, 0.562397,
		0.451225, 0.341291, -0.824570,
		-0.671256, 0.738662, -0.061594,
		41.112717, 35.166351, 31.231012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.018448, 35.197464, 31.301729>,  <41.582596, 34.649288, 31.274128>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.018448, 35.197464, 31.301729> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.661907, 35.363060, 31.375603>,  <41.447983, 35.462418, 31.419926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.661907, 35.363060, 31.375603>,  <42.018448, 35.197464, 31.301729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.661907, 35.363060, 31.375603> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444891, 0.720723, 0.531630,
		0.086983, 0.556033, -0.826596,
		-0.891351, 0.413988, 0.184683,
		41.394501, 35.487255, 31.431007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.122070, 35.947086, 31.358883>,  <42.018448, 35.197464, 31.301729>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.122070, 35.947086, 31.358883> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.768200, 35.893967, 31.537638>,  <41.555878, 35.862095, 31.644890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.768200, 35.893967, 31.537638>,  <42.122070, 35.947086, 31.358883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.768200, 35.893967, 31.537638> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288231, 0.597611, 0.748187,
		-0.366425, 0.790711, -0.490416,
		-0.884678, -0.132801, 0.446887,
		41.502796, 35.854126, 31.671703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.956970, 36.610786, 31.557758>,  <42.122070, 35.947086, 31.358883>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.956970, 36.610786, 31.557758> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.743111, 36.354706, 31.778408>,  <41.614796, 36.201057, 31.910797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.743111, 36.354706, 31.778408>,  <41.956970, 36.610786, 31.557758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.743111, 36.354706, 31.778408> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272057, 0.487607, 0.829593,
		-0.800085, 0.593614, -0.086527,
		-0.534649, -0.640204, 0.551624,
		41.582714, 36.162643, 31.943895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.464916, 37.020824, 31.945169>,  <41.956970, 36.610786, 31.557758>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.464916, 37.020824, 31.945169> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.482430, 36.683128, 32.158836>,  <41.492939, 36.480511, 32.287037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.482430, 36.683128, 32.158836>,  <41.464916, 37.020824, 31.945169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.482430, 36.683128, 32.158836> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296168, 0.521613, 0.800128,
		-0.954132, 0.123172, 0.272875,
		0.043782, -0.844244, 0.534167,
		41.495564, 36.429855, 32.319088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.098156, 37.173370, 32.522232>,  <41.464916, 37.020824, 31.945169>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.098156, 37.173370, 32.522232> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.327847, 36.863972, 32.629536>,  <41.465660, 36.678333, 32.693916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.327847, 36.863972, 32.629536>,  <41.098156, 37.173370, 32.522232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.327847, 36.863972, 32.629536> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276406, 0.491591, 0.825795,
		-0.770626, -0.400045, 0.496084,
		0.574226, -0.773500, 0.268258,
		41.500114, 36.631920, 32.710014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.037018, 37.186722, 33.273945>,  <41.098156, 37.173370, 32.522232>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.037018, 37.186722, 33.273945> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.361652, 36.959484, 33.219406>,  <41.556435, 36.823143, 33.186684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.361652, 36.959484, 33.219406>,  <41.037018, 37.186722, 33.273945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.361652, 36.959484, 33.219406> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404861, 0.378634, 0.832300,
		-0.421201, -0.730687, 0.537296,
		0.811589, -0.568096, -0.136345,
		41.605129, 36.789055, 33.178501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.145100, 37.023865, 33.972973>,  <41.037018, 37.186722, 33.273945>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.145100, 37.023865, 33.972973> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.486752, 36.925587, 33.789627>,  <41.691742, 36.866619, 33.679619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.486752, 36.925587, 33.789627>,  <41.145100, 37.023865, 33.972973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.486752, 36.925587, 33.789627> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517862, 0.320933, 0.792982,
		-0.047726, -0.914679, 0.401353,
		0.854131, -0.245692, -0.458361,
		41.742992, 36.851879, 33.652119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.437733, 36.590492, 34.481678>,  <41.145100, 37.023865, 33.972973>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.437733, 36.590492, 34.481678> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.709385, 36.706322, 34.211884>,  <41.872375, 36.775822, 34.050007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.709385, 36.706322, 34.211884>,  <41.437733, 36.590492, 34.481678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.709385, 36.706322, 34.211884> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692218, 0.052991, 0.719741,
		0.244161, -0.955687, -0.164462,
		0.679132, 0.289576, -0.674482,
		41.913124, 36.793194, 34.009541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.923271, 36.083069, 34.456909>,  <41.437733, 36.590492, 34.481678>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.923271, 36.083069, 34.456909> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.075809, 36.436371, 34.347775>,  <42.167332, 36.648350, 34.282291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.075809, 36.436371, 34.347775>,  <41.923271, 36.083069, 34.456909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.075809, 36.436371, 34.347775> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644437, -0.042397, 0.763481,
		0.662777, -0.466980, -0.585368,
		0.381349, 0.883251, -0.272839,
		42.190212, 36.701347, 34.265923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.640903, 36.053856, 34.482784>,  <41.923271, 36.083069, 34.456909>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.640903, 36.053856, 34.482784> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.580048, 36.448498, 34.506298>,  <42.543533, 36.685284, 34.520409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.580048, 36.448498, 34.506298>,  <42.640903, 36.053856, 34.482784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.580048, 36.448498, 34.506298> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566374, 0.038284, 0.823259,
		0.809983, 0.158550, -0.564614,
		-0.152144, 0.986609, 0.058789,
		42.534405, 36.744480, 34.523933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.134163, 36.224976, 34.799633>,  <42.640903, 36.053856, 34.482784>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.134163, 36.224976, 34.799633> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.925350, 36.562534, 34.849136>,  <42.800060, 36.765068, 34.878838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.925350, 36.562534, 34.849136>,  <43.134163, 36.224976, 34.799633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.925350, 36.562534, 34.849136> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334325, 0.068973, 0.939931,
		0.784670, 0.532051, -0.318143,
		-0.522035, 0.843898, 0.123757,
		42.768742, 36.815704, 34.886265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.892014, 36.264286, 35.113983>,  <43.134163, 36.224976, 34.799633>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.892014, 36.264286, 35.113983> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.260475, 36.270500, 34.958431>,  <44.481552, 36.274227, 34.865101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.260475, 36.270500, 34.958431>,  <43.892014, 36.264286, 35.113983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.260475, 36.270500, 34.958431> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230269, -0.783788, -0.576760,
		-0.313761, 0.620833, -0.718415,
		0.921157, 0.015536, -0.388881,
		44.536823, 36.275162, 34.841766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.913929, 36.417244, 34.360081>,  <43.892014, 36.264286, 35.113983>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.913929, 36.417244, 34.360081> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.233856, 36.205952, 34.474106>,  <44.425812, 36.079178, 34.542522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.233856, 36.205952, 34.474106>,  <43.913929, 36.417244, 34.360081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.233856, 36.205952, 34.474106> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319841, -0.776937, -0.542282,
		0.507924, 0.342555, -0.790361,
		0.799822, -0.528228, 0.285062,
		44.473804, 36.047482, 34.559624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.267166, 36.087082, 33.777275>,  <43.913929, 36.417244, 34.360081>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.267166, 36.087082, 33.777275> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.446609, 35.875278, 34.065269>,  <44.554276, 35.748196, 34.238064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.446609, 35.875278, 34.065269>,  <44.267166, 36.087082, 33.777275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.446609, 35.875278, 34.065269> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263460, -0.848145, -0.459608,
		0.854015, 0.016497, -0.519987,
		0.448606, -0.529508, 0.719982,
		44.581192, 35.716427, 34.281265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.662766, 35.543262, 33.456215>,  <44.267166, 36.087082, 33.777275>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.662766, 35.543262, 33.456215> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.578926, 35.421230, 33.827805>,  <44.528622, 35.348011, 34.050758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.578926, 35.421230, 33.827805>,  <44.662766, 35.543262, 33.456215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.578926, 35.421230, 33.827805> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261440, -0.898002, -0.353895,
		0.942189, -0.317045, 0.108456,
		-0.209594, -0.305081, 0.928976,
		44.516048, 35.329704, 34.106499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.971535, 34.943523, 33.419365>,  <44.662766, 35.543262, 33.456215>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.971535, 34.943523, 33.419365> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.742161, 34.941891, 33.747063>,  <44.604538, 34.940910, 33.943680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.742161, 34.941891, 33.747063>,  <44.971535, 34.943523, 33.419365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.742161, 34.941891, 33.747063> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423681, -0.854405, -0.300812,
		0.701191, -0.519592, 0.488217,
		-0.573434, -0.004078, 0.819242,
		44.570129, 34.940666, 33.992836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.994873, 34.294422, 33.583652>,  <44.971535, 34.943523, 33.419365>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.994873, 34.294422, 33.583652> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.667908, 34.422035, 33.775505>,  <44.471729, 34.498604, 33.890617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.667908, 34.422035, 33.775505>,  <44.994873, 34.294422, 33.583652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.667908, 34.422035, 33.775505> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460631, -0.861983, -0.211670,
		0.345906, -0.393957, 0.851555,
		-0.817415, 0.319035, 0.479634,
		44.422684, 34.517746, 33.919395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.741795, 33.694565, 34.016724>,  <44.994873, 34.294422, 33.583652>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.741795, 33.694565, 34.016724> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.425869, 33.936920, 33.978569>,  <44.236313, 34.082333, 33.955677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.425869, 33.936920, 33.978569>,  <44.741795, 33.694565, 34.016724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.425869, 33.936920, 33.978569> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560776, -0.776327, -0.287832,
		-0.248444, -0.173844, 0.952919,
		-0.789814, 0.605884, -0.095386,
		44.188927, 34.118687, 33.949955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.123238, 33.281269, 34.338631>,  <44.741795, 33.694565, 34.016724>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.123238, 33.281269, 34.338631> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.999817, 33.561096, 34.080822>,  <43.925762, 33.728992, 33.926136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.999817, 33.561096, 34.080822>,  <44.123238, 33.281269, 34.338631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.999817, 33.561096, 34.080822> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613623, -0.664128, -0.427084,
		-0.726817, 0.263714, 0.634186,
		-0.308552, 0.699563, -0.644520,
		43.907249, 33.770966, 33.887466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.370838, 33.009666, 34.152164>,  <44.123238, 33.281269, 34.338631>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.370838, 33.009666, 34.152164> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.472134, 33.298916, 33.895119>,  <43.532909, 33.472466, 33.740891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.472134, 33.298916, 33.895119>,  <43.370838, 33.009666, 34.152164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.472134, 33.298916, 33.895119> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633755, -0.377870, -0.674959,
		-0.730907, 0.578188, 0.362594,
		0.253240, 0.723127, -0.642617,
		43.548107, 33.515854, 33.702335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.744854, 33.233391, 33.888721>,  <43.370838, 33.009666, 34.152164>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.744854, 33.233391, 33.888721> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.017994, 33.339512, 33.616447>,  <43.181877, 33.403183, 33.453083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.017994, 33.339512, 33.616447>,  <42.744854, 33.233391, 33.888721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.017994, 33.339512, 33.616447> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558561, -0.410950, -0.720507,
		-0.470878, 0.872202, -0.132431,
		0.682850, 0.265300, -0.680685,
		43.222847, 33.419102, 33.412243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.468784, 33.625629, 33.303902>,  <42.744854, 33.233391, 33.888721>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.468784, 33.625629, 33.303902> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.813560, 33.497185, 33.146957>,  <43.020428, 33.420120, 33.052792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.813560, 33.497185, 33.146957>,  <42.468784, 33.625629, 33.303902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.813560, 33.497185, 33.146957> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497772, -0.388908, -0.775225,
		0.096338, 0.863505, -0.495054,
		0.861941, -0.321108, -0.392362,
		43.072144, 33.400852, 33.029247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.532654, 33.766064, 32.596260>,  <42.468784, 33.625629, 33.303902>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.532654, 33.766064, 32.596260> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.801735, 33.471241, 32.622246>,  <42.963184, 33.294350, 32.637836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.801735, 33.471241, 32.622246>,  <42.532654, 33.766064, 32.596260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.801735, 33.471241, 32.622246> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380189, -0.419647, -0.824228,
		0.634761, 0.529765, -0.562519,
		0.672706, -0.737052, 0.064965,
		43.003548, 33.250126, 32.641735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.606754, 33.588692, 31.917450>,  <42.532654, 33.766064, 32.596260>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.606754, 33.588692, 31.917450> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.763794, 33.280018, 32.117596>,  <42.858017, 33.094814, 32.237682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.763794, 33.280018, 32.117596>,  <42.606754, 33.588692, 31.917450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.763794, 33.280018, 32.117596> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383298, -0.631837, -0.673695,
		0.836030, 0.072705, -0.543846,
		0.392603, -0.771684, 0.500366,
		42.881577, 33.048512, 32.267704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.024857, 33.151676, 31.451811>,  <42.606754, 33.588692, 31.917450>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.024857, 33.151676, 31.451811> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.943722, 32.907154, 31.757795>,  <42.895042, 32.760441, 31.941387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.943722, 32.907154, 31.757795>,  <43.024857, 33.151676, 31.451811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.943722, 32.907154, 31.757795> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209259, -0.736095, -0.643720,
		0.956592, -0.290645, 0.021387,
		-0.202837, -0.611302, 0.764962,
		42.882870, 32.723763, 31.987284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.411072, 32.615692, 31.351032>,  <43.024857, 33.151676, 31.451811>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.411072, 32.615692, 31.351032> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.115299, 32.484821, 31.586384>,  <42.937836, 32.406300, 31.727594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.115299, 32.484821, 31.586384>,  <43.411072, 32.615692, 31.351032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.115299, 32.484821, 31.586384> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302397, -0.619428, -0.724475,
		0.601490, -0.713627, 0.359090,
		-0.739436, -0.327177, 0.588379,
		42.893467, 32.386669, 31.762897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.453335, 31.828409, 31.321720>,  <43.411072, 32.615692, 31.351032>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.453335, 31.828409, 31.321720> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.087463, 31.929874, 31.447594>,  <42.867943, 31.990753, 31.523117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.087463, 31.929874, 31.447594>,  <43.453335, 31.828409, 31.321720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.087463, 31.929874, 31.447594> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402382, -0.645047, -0.649617,
		0.038203, -0.720812, 0.692077,
		-0.914674, 0.253663, 0.314684,
		42.813061, 32.005974, 31.542000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.199486, 31.254850, 31.210546>,  <43.453335, 31.828409, 31.321720>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.199486, 31.254850, 31.210546> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.873329, 31.472017, 31.290918>,  <42.677635, 31.602318, 31.339142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.873329, 31.472017, 31.290918>,  <43.199486, 31.254850, 31.210546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.873329, 31.472017, 31.290918> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527953, -0.555017, -0.642823,
		-0.237479, -0.630237, 0.739192,
		-0.815395, 0.542916, 0.200931,
		42.628712, 31.634892, 31.351198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.728107, 30.779593, 31.272945>,  <43.199486, 31.254850, 31.210546>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.728107, 30.779593, 31.272945> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.527908, 31.116997, 31.194979>,  <42.407791, 31.319439, 31.148199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.527908, 31.116997, 31.194979>,  <42.728107, 30.779593, 31.272945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.527908, 31.116997, 31.194979> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608610, -0.502933, -0.613720,
		-0.615711, -0.188534, 0.765085,
		-0.500493, 0.843512, -0.194918,
		42.377762, 31.370050, 31.136503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.999352, 30.759533, 31.455402>,  <42.728107, 30.779593, 31.272945>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.999352, 30.759533, 31.455402> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.013443, 31.044146, 31.174694>,  <42.021896, 31.214912, 31.006269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.013443, 31.044146, 31.174694>,  <41.999352, 30.759533, 31.455402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.013443, 31.044146, 31.174694> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722172, -0.467275, -0.510021,
		-0.690816, 0.524766, 0.497386,
		0.035226, 0.711529, -0.701773,
		42.024010, 31.257605, 30.964163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.302559, 30.902908, 31.317001>,  <41.999352, 30.759533, 31.455402>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.302559, 30.902908, 31.317001> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.495319, 31.013678, 30.984476>,  <41.610977, 31.080139, 30.784962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.495319, 31.013678, 30.984476>,  <41.302559, 30.902908, 31.317001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.495319, 31.013678, 30.984476> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788724, -0.276182, -0.549216,
		-0.381684, 0.920347, 0.085323,
		0.481905, 0.276923, -0.831313,
		41.639893, 31.096754, 30.735083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.782814, 31.085920, 30.923248>,  <41.302559, 30.902908, 31.317001>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.782814, 31.085920, 30.923248> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.089573, 31.073469, 30.666843>,  <41.273628, 31.065998, 30.513000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.089573, 31.073469, 30.666843>,  <40.782814, 31.085920, 30.923248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.089573, 31.073469, 30.666843> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561736, -0.515579, -0.647017,
		-0.310354, 0.856276, -0.412882,
		0.766899, -0.031126, -0.641013,
		41.319641, 31.064131, 30.474539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.761967, 38.256435, 40.571285> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576248, 37.905800, 40.621906>,  <37.464817, 37.695419, 40.652279>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576248, 37.905800, 40.621906>,  <37.761967, 38.256435, 40.571285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.576248, 37.905800, 40.621906> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371095, -0.322283, -0.870874,
		0.804189, -0.357378, 0.474933,
		-0.464294, -0.876593, 0.126555,
		37.436958, 37.642822, 40.659874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.337944, 37.783852, 40.368107>,  <37.761967, 38.256435, 40.571285>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.337944, 37.783852, 40.368107> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.993057, 37.582958, 40.341763>,  <37.786125, 37.462421, 40.325954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.993057, 37.582958, 40.341763>,  <38.337944, 37.783852, 40.368107>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.993057, 37.582958, 40.341763> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338712, -0.474974, -0.812203,
		0.376637, -0.722604, 0.579645,
		-0.862218, -0.502238, -0.065862,
		37.734390, 37.432285, 40.322002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.501492, 37.102791, 40.066242>,  <38.337944, 37.783852, 40.368107>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.501492, 37.102791, 40.066242> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.105938, 37.128319, 40.012531>,  <37.868607, 37.143635, 39.980305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.105938, 37.128319, 40.012531>,  <38.501492, 37.102791, 40.066242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.105938, 37.128319, 40.012531> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084082, -0.504813, -0.859124,
		-0.122610, -0.860867, 0.493837,
		-0.988887, 0.063815, -0.134279,
		37.809273, 37.147465, 39.972248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.361942, 36.437740, 39.822071>,  <38.501492, 37.102791, 40.066242>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.361942, 36.437740, 39.822071> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.079414, 36.707897, 39.737263>,  <37.909897, 36.869991, 39.686378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.079414, 36.707897, 39.737263>,  <38.361942, 36.437740, 39.822071>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.079414, 36.707897, 39.737263> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094075, -0.207301, -0.973743,
		-0.701613, -0.707721, 0.082883,
		-0.706320, 0.675394, -0.212025,
		37.867519, 36.910515, 39.673656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.879799, 35.993328, 39.464554>,  <38.361942, 36.437740, 39.822071>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.879799, 35.993328, 39.464554> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.775860, 36.362034, 39.349438>,  <37.713497, 36.583260, 39.280369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.775860, 36.362034, 39.349438>,  <37.879799, 35.993328, 39.464554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.775860, 36.362034, 39.349438> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137273, -0.259744, -0.955871,
		-0.955843, -0.287885, -0.059040,
		-0.259845, 0.921767, -0.287793,
		37.697906, 36.638565, 39.263100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.338631, 35.867619, 38.918343>,  <37.879799, 35.993328, 39.464554>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.338631, 35.867619, 38.918343> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.494534, 36.233540, 38.875954>,  <37.588074, 36.453091, 38.850521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.494534, 36.233540, 38.875954>,  <37.338631, 35.867619, 38.918343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.494534, 36.233540, 38.875954> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220505, -0.204423, -0.953724,
		-0.894131, 0.348351, -0.281393,
		0.389754, 0.914802, -0.105968,
		37.611458, 36.507980, 38.844162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147224, 36.061436, 38.285820>,  <37.338631, 35.867619, 38.918343>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.147224, 36.061436, 38.285820> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.436832, 36.329853, 38.349693>,  <37.610600, 36.490902, 38.388016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.436832, 36.329853, 38.349693>,  <37.147224, 36.061436, 38.285820>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.436832, 36.329853, 38.349693> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277276, -0.071167, -0.958151,
		-0.631594, 0.737998, -0.237590,
		0.724022, 0.671040, 0.159680,
		37.654037, 36.531166, 38.397598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.099510, 36.533955, 37.687981>,  <37.147224, 36.061436, 38.285820>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.099510, 36.533955, 37.687981> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.460503, 36.597050, 37.848305>,  <37.677097, 36.634907, 37.944500>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.460503, 36.597050, 37.848305>,  <37.099510, 36.533955, 37.687981>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.460503, 36.597050, 37.848305> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414499, -0.064965, -0.907728,
		-0.117148, 0.985341, -0.124014,
		0.902478, 0.157742, 0.400813,
		37.731247, 36.644371, 37.968548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.390392, 37.142651, 37.341427>,  <37.099510, 36.533955, 37.687981>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.390392, 37.142651, 37.341427> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.689449, 36.914169, 37.476933>,  <37.868881, 36.777081, 37.558235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.689449, 36.914169, 37.476933>,  <37.390392, 37.142651, 37.341427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.689449, 36.914169, 37.476933> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377703, -0.053844, -0.924360,
		0.546239, 0.819040, 0.175490,
		0.747638, -0.571205, 0.338766,
		37.913742, 36.742809, 37.578564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.086269, 37.468647, 37.087353>,  <37.390392, 37.142651, 37.341427>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.086269, 37.468647, 37.087353> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.135395, 37.083145, 37.182087>,  <38.164871, 36.851845, 37.238930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.135395, 37.083145, 37.182087>,  <38.086269, 37.468647, 37.087353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.135395, 37.083145, 37.182087> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565499, -0.128154, -0.814731,
		0.815554, 0.233991, 0.529264,
		0.122813, -0.963756, 0.236838,
		38.172237, 36.794018, 37.253139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.758205, 37.348217, 36.998989>,  <38.086269, 37.468647, 37.087353>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.758205, 37.348217, 36.998989> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.595016, 36.983917, 36.973400>,  <38.497105, 36.765339, 36.958046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.595016, 36.983917, 36.973400>,  <38.758205, 37.348217, 36.998989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.595016, 36.983917, 36.973400> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455468, -0.142295, -0.878806,
		0.791269, -0.387668, 0.472870,
		-0.407972, -0.910750, -0.063977,
		38.472626, 36.710693, 36.954208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.241444, 36.982910, 36.692909>,  <38.758205, 37.348217, 36.998989>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.241444, 36.982910, 36.692909> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.927414, 36.738766, 36.650715>,  <38.738998, 36.592281, 36.625397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.927414, 36.738766, 36.650715>,  <39.241444, 36.982910, 36.692909>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.927414, 36.738766, 36.650715> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165616, -0.042741, -0.985264,
		0.596855, -0.790972, 0.134640,
		-0.785071, -0.610358, -0.105487,
		38.691895, 36.555660, 36.619068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.468140, 36.378036, 36.292274>,  <39.241444, 36.982910, 36.692909>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.468140, 36.378036, 36.292274> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.071297, 36.401405, 36.247887>,  <38.833191, 36.415424, 36.221252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.071297, 36.401405, 36.247887>,  <39.468140, 36.378036, 36.292274>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.071297, 36.401405, 36.247887> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099854, -0.167365, -0.980825,
		-0.075871, -0.984163, 0.160211,
		-0.992105, 0.058419, -0.110971,
		38.773666, 36.418930, 36.214596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.860424, 36.667763, 36.896225>,  <39.468140, 36.378036, 36.292274>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.860424, 36.667763, 36.896225> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.098537, 36.986107, 36.851959>,  <40.241405, 37.177113, 36.825397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.098537, 36.986107, 36.851959>,  <39.860424, 36.667763, 36.896225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.098537, 36.986107, 36.851959> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531292, 0.493180, 0.688841,
		0.602798, -0.351259, 0.716415,
		0.595284, 0.795858, -0.110667,
		40.277122, 37.224865, 36.818760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.813725, 35.914795, 37.222240>,  <39.860424, 36.667763, 36.896225>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.813725, 35.914795, 37.222240> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.101971, 35.638378, 37.244785>,  <40.274918, 35.472527, 37.258312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.101971, 35.638378, 37.244785>,  <39.813725, 35.914795, 37.222240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.101971, 35.638378, 37.244785> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634939, -0.625083, 0.454009,
		-0.278509, -0.362951, -0.889213,
		0.720614, -0.691042, 0.056360,
		40.318153, 35.431065, 37.261692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.478649, 35.238701, 37.001564>,  <39.813725, 35.914795, 37.222240>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.478649, 35.238701, 37.001564> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.792362, 35.152618, 37.234318>,  <39.980591, 35.100967, 37.373970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.792362, 35.152618, 37.234318>,  <39.478649, 35.238701, 37.001564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.792362, 35.152618, 37.234318> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569120, -0.622957, 0.536681,
		0.246989, -0.752070, -0.611054,
		0.784282, -0.215209, 0.581882,
		40.027645, 35.088055, 37.408882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340576, 34.540115, 37.016518>,  <39.478649, 35.238701, 37.001564>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.340576, 34.540115, 37.016518> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.562614, 34.660442, 37.326710>,  <39.695839, 34.732639, 37.512825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.562614, 34.660442, 37.326710>,  <39.340576, 34.540115, 37.016518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.562614, 34.660442, 37.326710> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534423, -0.585432, 0.609640,
		0.637385, -0.752846, -0.164205,
		0.555096, 0.300821, 0.775484,
		39.729145, 34.750687, 37.559357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.533283, 33.912876, 37.340363>,  <39.340576, 34.540115, 37.016518>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.533283, 33.912876, 37.340363> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.589478, 34.189621, 37.623657>,  <39.623196, 34.355667, 37.793633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.589478, 34.189621, 37.623657>,  <39.533283, 33.912876, 37.340363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.589478, 34.189621, 37.623657> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595092, -0.512689, 0.618882,
		0.791282, -0.508410, 0.339693,
		0.140490, 0.691859, 0.708233,
		39.631626, 34.397179, 37.836128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.699913, 33.553055, 38.009350>,  <39.533283, 33.912876, 37.340363>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.699913, 33.553055, 38.009350> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.559616, 33.912296, 38.115479>,  <39.475437, 34.127842, 38.179157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.559616, 33.912296, 38.115479>,  <39.699913, 33.553055, 38.009350>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.559616, 33.912296, 38.115479> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523674, -0.422979, 0.739496,
		0.776369, 0.120426, 0.618668,
		-0.350738, 0.898102, 0.265324,
		39.454395, 34.181728, 38.195076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.673378, 33.479954, 38.679657>,  <39.699913, 33.553055, 38.009350>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.673378, 33.479954, 38.679657> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.462013, 33.819481, 38.672920>,  <39.335194, 34.023197, 38.668880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.462013, 33.819481, 38.672920>,  <39.673378, 33.479954, 38.679657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.462013, 33.819481, 38.672920> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386736, -0.223002, 0.894821,
		0.755787, 0.479349, 0.446106,
		-0.528414, 0.848820, -0.016839,
		39.303490, 34.074127, 38.667870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.635277, 33.824890, 39.408695>,  <39.673378, 33.479954, 38.679657>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.635277, 33.824890, 39.408695> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330189, 33.970291, 39.194736>,  <39.147137, 34.057533, 39.066360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330189, 33.970291, 39.194736>,  <39.635277, 33.824890, 39.408695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.330189, 33.970291, 39.194736> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590768, -0.055073, 0.804960,
		0.263145, 0.929964, 0.256750,
		-0.762724, 0.363501, -0.534901,
		39.101372, 34.079342, 39.034267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.347862, 34.310532, 39.785633>,  <39.635277, 33.824890, 39.408695>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.347862, 34.310532, 39.785633> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.042637, 34.199577, 39.552124>,  <38.859501, 34.133007, 39.412018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.042637, 34.199577, 39.552124>,  <39.347862, 34.310532, 39.785633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.042637, 34.199577, 39.552124> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632521, 0.134825, 0.762718,
		-0.132858, 0.951252, -0.278331,
		-0.763063, -0.277384, -0.583774,
		38.813717, 34.116364, 39.376991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.913021, 34.778111, 39.877159>,  <39.347862, 34.310532, 39.785633>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.913021, 34.778111, 39.877159> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.672653, 34.490028, 39.738480>,  <38.528431, 34.317181, 39.655273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.672653, 34.490028, 39.738480>,  <38.913021, 34.778111, 39.877159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.672653, 34.490028, 39.738480> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635286, 0.167116, 0.753979,
		-0.485080, 0.673334, -0.557959,
		-0.600924, -0.720204, -0.346695,
		38.492374, 34.273968, 39.634472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.209885, 35.070038, 39.972927>,  <38.913021, 34.778111, 39.877159>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.209885, 35.070038, 39.972927> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.201691, 34.672333, 39.930920>,  <38.196774, 34.433712, 39.905716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.201691, 34.672333, 39.930920>,  <38.209885, 35.070038, 39.972927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.201691, 34.672333, 39.930920> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740087, -0.055542, 0.670213,
		-0.672199, 0.091452, -0.734701,
		-0.020486, -0.994259, -0.105018,
		38.195545, 34.374054, 39.899414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.534897, 34.806286, 39.880508>,  <38.209885, 35.070038, 39.972927>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.534897, 34.806286, 39.880508> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.761318, 34.521885, 40.047390>,  <37.897171, 34.351242, 40.147518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.761318, 34.521885, 40.047390>,  <37.534897, 34.806286, 39.880508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.761318, 34.521885, 40.047390> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664798, -0.094452, 0.741028,
		-0.487469, -0.696816, -0.526139,
		0.566054, -0.711004, 0.417200,
		37.931133, 34.308582, 40.172550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.049809, 34.431011, 40.191441>,  <37.534897, 34.806286, 39.880508>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.049809, 34.431011, 40.191441> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.363209, 34.230286, 40.338036>,  <37.551250, 34.109852, 40.425995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.363209, 34.230286, 40.338036>,  <37.049809, 34.431011, 40.191441>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.363209, 34.230286, 40.338036> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485977, -0.127294, 0.864652,
		-0.387239, -0.855560, -0.343602,
		0.783500, -0.501810, 0.366489,
		37.598259, 34.079742, 40.447983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.699009, 33.961735, 40.667343>,  <37.049809, 34.431011, 40.191441>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.699009, 33.961735, 40.667343> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.076958, 34.010349, 40.788956>,  <37.303726, 34.039516, 40.861923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.076958, 34.010349, 40.788956>,  <36.699009, 33.961735, 40.667343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.076958, 34.010349, 40.788956> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304021, -0.019119, 0.952473,
		0.121571, -0.992403, 0.018884,
		0.944877, 0.121534, 0.304036,
		37.360420, 34.046810, 40.880165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.765007, 33.533638, 41.233643>,  <36.699009, 33.961735, 40.667343>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.765007, 33.533638, 41.233643> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028706, 33.833130, 41.261368>,  <37.186924, 34.012825, 41.278004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028706, 33.833130, 41.261368>,  <36.765007, 33.533638, 41.233643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.028706, 33.833130, 41.261368> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439240, 0.308642, 0.843688,
		0.610302, -0.586638, 0.532341,
		0.659242, 0.748730, 0.069310,
		37.226479, 34.057751, 41.282162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.764568, 33.027145, 41.745468>,  <36.765007, 33.533638, 41.233643>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.764568, 33.027145, 41.745468> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.564011, 32.685505, 41.800774>,  <36.443676, 32.480522, 41.833958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.564011, 32.685505, 41.800774>,  <36.764568, 33.027145, 41.745468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.564011, 32.685505, 41.800774> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253702, -0.007651, -0.967252,
		0.827188, -0.520052, -0.212851,
		-0.501393, -0.854100, 0.138267,
		36.413593, 32.429276, 41.842255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.068443, 32.493542, 41.399105>,  <36.764568, 33.027145, 41.745468>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.068443, 32.493542, 41.399105> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.680058, 32.409725, 41.445267>,  <36.447025, 32.359436, 41.472965>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.680058, 32.409725, 41.445267>,  <37.068443, 32.493542, 41.399105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.680058, 32.409725, 41.445267> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139620, 0.104671, -0.984657,
		0.194250, -0.972180, -0.130889,
		-0.970965, -0.209545, 0.115404,
		36.388767, 32.346863, 41.479889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.025291, 32.098667, 40.843025>,  <37.068443, 32.493542, 41.399105>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.025291, 32.098667, 40.843025> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.662418, 32.208660, 40.970402>,  <36.444695, 32.274654, 41.046829>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.662418, 32.208660, 40.970402>,  <37.025291, 32.098667, 40.843025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.662418, 32.208660, 40.970402> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335187, -0.014890, -0.942034,
		-0.254300, -0.961334, 0.105678,
		-0.907183, 0.274981, 0.318441,
		36.390263, 32.291153, 41.065933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640743, 31.716675, 40.393246>,  <37.025291, 32.098667, 40.843025>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640743, 31.716675, 40.393246> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.394363, 31.996744, 40.537666>,  <36.246536, 32.164787, 40.624317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.394363, 31.996744, 40.537666>,  <36.640743, 31.716675, 40.393246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.394363, 31.996744, 40.537666> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529241, -0.028300, -0.848000,
		-0.583530, -0.713410, 0.387993,
		-0.615952, 0.700175, 0.361052,
		36.209579, 32.206795, 40.645981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.015507, 31.440912, 40.269871>,  <36.640743, 31.716675, 40.393246>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.015507, 31.440912, 40.269871> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.975204, 31.837559, 40.302227>,  <35.951023, 32.075546, 40.321640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.975204, 31.837559, 40.302227>,  <36.015507, 31.440912, 40.269871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.975204, 31.837559, 40.302227> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440512, 0.028435, -0.897296,
		-0.892075, -0.126035, 0.433955,
		-0.100751, 0.991618, 0.080886,
		35.944981, 32.135044, 40.326492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.310299, 31.582762, 40.066639>,  <36.015507, 31.440912, 40.269871>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.310299, 31.582762, 40.066639> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.517525, 31.919989, 40.008888>,  <35.641861, 32.122326, 39.974239>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.517525, 31.919989, 40.008888>,  <35.310299, 31.582762, 40.066639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.517525, 31.919989, 40.008888> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437264, 0.115974, -0.891824,
		-0.735123, 0.525156, 0.428725,
		0.518067, 0.843067, -0.144376,
		35.672943, 32.172909, 39.965576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.822071, 32.017040, 39.788803>,  <35.310299, 31.582762, 40.066639>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.822071, 32.017040, 39.788803> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.180454, 32.168831, 39.696491>,  <35.395485, 32.259907, 39.641106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.180454, 32.168831, 39.696491>,  <34.822071, 32.017040, 39.788803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.180454, 32.168831, 39.696491> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350233, 0.284123, -0.892531,
		-0.273129, 0.880493, 0.387469,
		0.895956, 0.379480, -0.230776,
		35.449242, 32.282677, 39.627258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.679012, 32.691818, 39.457886>,  <34.822071, 32.017040, 39.788803>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.679012, 32.691818, 39.457886> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.048618, 32.599979, 39.335583>,  <35.270382, 32.544876, 39.262199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.048618, 32.599979, 39.335583>,  <34.679012, 32.691818, 39.457886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.048618, 32.599979, 39.335583> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265351, 0.190699, -0.945105,
		0.275304, 0.954420, 0.115283,
		0.924011, -0.229601, -0.305756,
		35.325821, 32.531097, 39.243855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.995777, 33.296154, 38.991016>,  <34.679012, 32.691818, 39.457886>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.995777, 33.296154, 38.991016> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.227802, 32.985165, 38.893806>,  <35.367016, 32.798569, 38.835480>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.227802, 32.985165, 38.893806>,  <34.995777, 33.296154, 38.991016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.227802, 32.985165, 38.893806> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042830, 0.268824, -0.962237,
		0.813448, 0.568562, 0.122635,
		0.580059, -0.777477, -0.243026,
		35.401821, 32.751923, 38.820900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.399170, 33.527626, 38.540405>,  <34.995777, 33.296154, 38.991016>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.399170, 33.527626, 38.540405> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.479202, 33.140640, 38.478455>,  <35.527222, 32.908451, 38.441284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.479202, 33.140640, 38.478455>,  <35.399170, 33.527626, 38.540405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.479202, 33.140640, 38.478455> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228234, 0.107703, -0.967631,
		0.952827, 0.228950, -0.199258,
		0.200078, -0.967462, -0.154876,
		35.539227, 32.850403, 38.431992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.900818, 33.481518, 37.938427>,  <35.399170, 33.527626, 38.540405>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.900818, 33.481518, 37.938427> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.721539, 33.124554, 37.959332>,  <35.613972, 32.910378, 37.971874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.721539, 33.124554, 37.959332>,  <35.900818, 33.481518, 37.938427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.721539, 33.124554, 37.959332> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196363, 0.041249, -0.979663,
		0.872102, -0.449343, -0.193723,
		-0.448196, -0.892406, 0.052261,
		35.587078, 32.856831, 37.975010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.171467, 32.973324, 37.371761>,  <35.900818, 33.481518, 37.938427>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.171467, 32.973324, 37.371761> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.798679, 32.866390, 37.469707>,  <35.575005, 32.802231, 37.528477>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.798679, 32.866390, 37.469707>,  <36.171467, 32.973324, 37.371761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.798679, 32.866390, 37.469707> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232185, -0.078573, -0.969493,
		0.278421, -0.960394, 0.011156,
		-0.931972, -0.267337, 0.244866,
		35.519089, 32.786190, 37.543167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.055069, 32.930050, 45.658638> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.660263, 32.893242, 45.605972>,  <36.423378, 32.871155, 45.574371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.660263, 32.893242, 45.605972>,  <37.055069, 32.930050, 45.658638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.660263, 32.893242, 45.605972> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154225, -0.313618, -0.936941,
		0.044929, -0.945079, 0.323738,
		-0.987014, -0.092025, -0.131664,
		36.364159, 32.865635, 45.566475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.002831, 32.355991, 45.206280>,  <37.055069, 32.930050, 45.658638>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.002831, 32.355991, 45.206280> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.642532, 32.527634, 45.179390>,  <36.426353, 32.630619, 45.163254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.642532, 32.527634, 45.179390>,  <37.002831, 32.355991, 45.206280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.642532, 32.527634, 45.179390> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024515, -0.204761, -0.978505,
		-0.433652, -0.879737, 0.194958,
		-0.900747, 0.429110, -0.067228,
		36.372307, 32.656368, 45.159222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.712769, 31.923210, 44.796768>,  <37.002831, 32.355991, 45.206280>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.712769, 31.923210, 44.796768> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.479538, 32.247021, 44.769375>,  <36.339600, 32.441307, 44.752937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.479538, 32.247021, 44.769375>,  <36.712769, 31.923210, 44.796768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.479538, 32.247021, 44.769375> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207148, -0.229654, -0.950972,
		-0.785566, -0.540300, 0.301597,
		-0.583074, 0.809527, -0.068486,
		36.304615, 32.489880, 44.748829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.212746, 31.665079, 44.403057>,  <36.712769, 31.923210, 44.796768>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.212746, 31.665079, 44.403057> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.207966, 32.063267, 44.365330>,  <36.205097, 32.302181, 44.342693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.207966, 32.063267, 44.365330>,  <36.212746, 31.665079, 44.403057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.207966, 32.063267, 44.365330> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111597, -0.095062, -0.989197,
		-0.993682, -0.001291, 0.112227,
		-0.011946, 0.995470, -0.094318,
		36.204384, 32.361908, 44.337036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.658772, 31.815844, 44.115154>,  <36.212746, 31.665079, 44.403057>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.658772, 31.815844, 44.115154> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.905334, 32.113976, 44.013546>,  <36.053272, 32.292854, 43.952579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.905334, 32.113976, 44.013546>,  <35.658772, 31.815844, 44.115154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.905334, 32.113976, 44.013546> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180737, -0.180067, -0.966907,
		-0.766405, 0.641920, 0.023714,
		0.616407, 0.745329, -0.254023,
		36.090256, 32.337574, 43.937340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309204, 32.269875, 43.594116>,  <35.658772, 31.815844, 44.115154>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309204, 32.269875, 43.594116> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.694344, 32.366859, 43.546574>,  <35.925426, 32.425049, 43.518047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.694344, 32.366859, 43.546574>,  <35.309204, 32.269875, 43.594116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.694344, 32.366859, 43.546574> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105398, -0.067805, -0.992116,
		-0.248608, 0.967789, -0.039731,
		0.962853, 0.242460, -0.118860,
		35.983200, 32.439598, 43.510914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.322674, 32.887726, 43.089077>,  <35.309204, 32.269875, 43.594116>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.322674, 32.887726, 43.089077> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.691353, 32.732624, 43.084579>,  <35.912560, 32.639565, 43.081882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.691353, 32.732624, 43.084579>,  <35.322674, 32.887726, 43.089077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.691353, 32.732624, 43.084579> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024262, 0.086551, -0.995952,
		0.387155, 0.917692, 0.089181,
		0.921695, -0.387751, -0.011244,
		35.967861, 32.616299, 43.081207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.665428, 33.293274, 42.658630>,  <35.322674, 32.887726, 43.089077>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.665428, 33.293274, 42.658630> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.883808, 32.959106, 42.683987>,  <36.014835, 32.758606, 42.699200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.883808, 32.959106, 42.683987>,  <35.665428, 33.293274, 42.658630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.883808, 32.959106, 42.683987> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058063, -0.037749, -0.997599,
		0.835805, 0.548317, 0.027898,
		0.545947, -0.835418, 0.063388,
		36.047592, 32.708481, 42.703003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.342228, 33.386955, 42.296612>,  <35.665428, 33.293274, 42.658630>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.342228, 33.386955, 42.296612> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.198250, 33.013767, 42.295753>,  <36.111862, 32.789856, 42.295238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.198250, 33.013767, 42.295753>,  <36.342228, 33.386955, 42.296612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.198250, 33.013767, 42.295753> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116305, -0.042588, -0.992300,
		0.925695, -0.357426, 0.123839,
		-0.359948, -0.932970, -0.002147,
		36.090267, 32.733875, 42.295109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032433, 33.608604, 42.128628>,  <36.342228, 33.386955, 42.296612>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.032433, 33.608604, 42.128628> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.112461, 33.929264, 41.903301>,  <37.160477, 34.121662, 41.768105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.112461, 33.929264, 41.903301>,  <37.032433, 33.608604, 42.128628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.112461, 33.929264, 41.903301> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102594, 0.588922, 0.801652,
		0.974395, -0.102594, 0.200070,
		0.200070, 0.801652, -0.563317,
		37.172482, 34.169758, 41.734306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.483818, 33.904434, 42.543446>,  <37.032433, 33.608604, 42.128628>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.483818, 33.904434, 42.543446> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.373436, 34.211735, 42.312401>,  <37.307205, 34.396114, 42.173775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.373436, 34.211735, 42.312401>,  <37.483818, 33.904434, 42.543446>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.373436, 34.211735, 42.312401> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022976, 0.606047, 0.795097,
		0.960895, 0.206144, -0.184896,
		-0.275960, 0.768253, -0.577610,
		37.290649, 34.442211, 42.139118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.921223, 34.475956, 42.747551>,  <37.483818, 33.904434, 42.543446>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.921223, 34.475956, 42.747551> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.610695, 34.647579, 42.562843>,  <37.424377, 34.750553, 42.452019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.610695, 34.647579, 42.562843>,  <37.921223, 34.475956, 42.747551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.610695, 34.647579, 42.562843> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070385, 0.668990, 0.739931,
		0.626393, 0.606928, -0.489153,
		-0.776323, 0.429059, -0.461769,
		37.377796, 34.776299, 42.424313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.008282, 35.140526, 42.784492>,  <37.921223, 34.475956, 42.747551>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.008282, 35.140526, 42.784492> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.614105, 35.137821, 42.716545>,  <37.377598, 35.136196, 42.675777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.614105, 35.137821, 42.716545>,  <38.008282, 35.140526, 42.784492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.614105, 35.137821, 42.716545> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127265, 0.691850, 0.710737,
		0.112717, 0.722010, -0.682639,
		-0.985443, -0.006764, -0.169869,
		37.318474, 35.135792, 42.665585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.773983, 35.847500, 42.761692>,  <38.008282, 35.140526, 42.784492>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.773983, 35.847500, 42.761692> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.469215, 35.604645, 42.851906>,  <37.286354, 35.458931, 42.906033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.469215, 35.604645, 42.851906>,  <37.773983, 35.847500, 42.761692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.469215, 35.604645, 42.851906> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252320, 0.598955, 0.759991,
		-0.596502, 0.522146, -0.609548,
		-0.761918, -0.607138, 0.225530,
		37.240639, 35.422504, 42.919563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.205502, 36.332928, 42.832306>,  <37.773983, 35.847500, 42.761692>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.205502, 36.332928, 42.832306> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.088043, 35.990726, 43.002899>,  <37.017567, 35.785404, 43.105255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.088043, 35.990726, 43.002899>,  <37.205502, 36.332928, 42.832306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.088043, 35.990726, 43.002899> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063350, 0.427752, 0.901674,
		-0.953812, 0.291793, -0.071413,
		-0.293649, -0.855503, 0.426480,
		36.999947, 35.734077, 43.130844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633228, 36.488857, 43.401745>,  <37.205502, 36.332928, 42.832306>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.633228, 36.488857, 43.401745> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.801842, 36.144482, 43.515652>,  <36.903011, 35.937855, 43.583996>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.801842, 36.144482, 43.515652>,  <36.633228, 36.488857, 43.401745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.801842, 36.144482, 43.515652> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007539, 0.310690, 0.950481,
		-0.906782, -0.402805, 0.124475,
		0.421532, -0.860941, 0.284764,
		36.928303, 35.886200, 43.601082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.116859, 36.176678, 43.786934>,  <36.633228, 36.488857, 43.401745>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.116859, 36.176678, 43.786934> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.483807, 36.058224, 43.893326>,  <36.703976, 35.987152, 43.957161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.483807, 36.058224, 43.893326>,  <36.116859, 36.176678, 43.786934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.483807, 36.058224, 43.893326> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158090, 0.342196, 0.926234,
		-0.365306, -0.891744, 0.267103,
		0.917365, -0.296132, 0.265982,
		36.759018, 35.969383, 43.973122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.045509, 35.934032, 44.496246>,  <36.116859, 36.176678, 43.786934>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.045509, 35.934032, 44.496246> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.440853, 35.983257, 44.460480>,  <36.678059, 36.012791, 44.439018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.440853, 35.983257, 44.460480>,  <36.045509, 35.934032, 44.496246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.440853, 35.983257, 44.460480> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047861, 0.306406, 0.950697,
		0.144393, -0.943913, 0.296951,
		0.988362, 0.123062, -0.089419,
		36.737362, 36.020176, 44.433655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.267281, 35.765541, 45.179276>,  <36.045509, 35.934032, 44.496246>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.267281, 35.765541, 45.179276> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.605148, 35.927795, 45.039558>,  <36.807869, 36.025146, 44.955730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.605148, 35.927795, 45.039558>,  <36.267281, 35.765541, 45.179276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.605148, 35.927795, 45.039558> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231616, 0.311322, 0.921647,
		0.482590, -0.859384, 0.169012,
		0.844666, 0.405632, -0.349288,
		36.858547, 36.049484, 44.934772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.792648, 35.361984, 45.600838>,  <36.267281, 35.765541, 45.179276>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.792648, 35.361984, 45.600838> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.962246, 35.701988, 45.475800>,  <37.064003, 35.905991, 45.400776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.962246, 35.701988, 45.475800>,  <36.792648, 35.361984, 45.600838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.962246, 35.701988, 45.475800> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276134, 0.207388, 0.938477,
		0.862543, -0.484225, -0.146786,
		0.423992, 0.850010, -0.312593,
		37.089443, 35.956989, 45.382023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.454170, 35.423283, 45.911869>,  <36.792648, 35.361984, 45.600838>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.454170, 35.423283, 45.911869> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.357418, 35.800865, 45.822033>,  <37.299366, 36.027416, 45.768131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.357418, 35.800865, 45.822033>,  <37.454170, 35.423283, 45.911869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.357418, 35.800865, 45.822033> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229666, 0.280584, 0.931947,
		0.942734, 0.173837, -0.284662,
		-0.241878, 0.943956, -0.224592,
		37.284855, 36.084053, 45.754654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.832687, 35.779629, 46.452126>,  <37.454170, 35.423283, 45.911869>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.832687, 35.779629, 46.452126> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.575184, 36.047108, 46.303303>,  <37.420681, 36.207596, 46.214008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.575184, 36.047108, 46.303303>,  <37.832687, 35.779629, 46.452126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.575184, 36.047108, 46.303303> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018108, 0.499382, 0.866192,
		0.765017, 0.550879, -0.333589,
		-0.643755, 0.668693, -0.372061,
		37.382057, 36.247715, 46.191685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.122467, 36.398491, 46.731365>,  <37.832687, 35.779629, 46.452126>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.122467, 36.398491, 46.731365> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.745792, 36.481987, 46.625793>,  <37.519787, 36.532085, 46.562450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.745792, 36.481987, 46.625793>,  <38.122467, 36.398491, 46.731365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.745792, 36.481987, 46.625793> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086182, 0.608570, 0.788806,
		0.325270, 0.765553, -0.555093,
		-0.941686, 0.208736, -0.263926,
		37.463287, 36.544609, 46.546616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.011972, 36.877014, 45.695286> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.289404, 36.594078, 45.749859>,  <31.455864, 36.424316, 45.782600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.289404, 36.594078, 45.749859>,  <31.011972, 36.877014, 45.695286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.289404, 36.594078, 45.749859> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312562, 0.124859, -0.941656,
		0.649038, 0.695757, 0.307688,
		0.693581, -0.707342, 0.136429,
		31.497478, 36.381874, 45.790787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.636694, 37.080811, 45.364288>,  <31.011972, 36.877014, 45.695286>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.636694, 37.080811, 45.364288> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.707720, 36.691017, 45.419216>,  <31.750336, 36.457142, 45.452175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.707720, 36.691017, 45.419216>,  <31.636694, 37.080811, 45.364288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.707720, 36.691017, 45.419216> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423471, -0.050301, -0.904512,
		0.888337, 0.218762, 0.403733,
		0.177564, -0.974481, 0.137324,
		31.760988, 36.398674, 45.460415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.254105, 36.976341, 45.022980>,  <31.636694, 37.080811, 45.364288>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.254105, 36.976341, 45.022980> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.122231, 36.600422, 45.058968>,  <32.043106, 36.374870, 45.080563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.122231, 36.600422, 45.058968>,  <32.254105, 36.976341, 45.022980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.122231, 36.600422, 45.058968> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313243, -0.198792, -0.928634,
		0.890611, -0.277972, 0.359923,
		-0.329684, -0.939794, 0.089974,
		32.023327, 36.318485, 45.085960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.838844, 36.569328, 44.841946>,  <32.254105, 36.976341, 45.022980>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.838844, 36.569328, 44.841946> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.501083, 36.360088, 44.795731>,  <32.298428, 36.234543, 44.768002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.501083, 36.360088, 44.795731>,  <32.838844, 36.569328, 44.841946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.501083, 36.360088, 44.795731> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376343, -0.425761, -0.822857,
		0.381246, -0.738305, 0.556379,
		-0.844404, -0.523100, -0.115536,
		32.247761, 36.203159, 44.761070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.113335, 35.912369, 44.639519>,  <32.838844, 36.569328, 44.841946>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.113335, 35.912369, 44.639519> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.725197, 35.932571, 44.544964>,  <32.492313, 35.944691, 44.488232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.725197, 35.932571, 44.544964>,  <33.113335, 35.912369, 44.639519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.725197, 35.932571, 44.544964> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213190, -0.282133, -0.935388,
		-0.113932, -0.958045, 0.263000,
		-0.970345, 0.050502, -0.236390,
		32.434093, 35.947723, 44.474049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.030743, 35.422802, 44.043861>,  <33.113335, 35.912369, 44.639519>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.030743, 35.422802, 44.043861> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.689735, 35.624363, 43.988304>,  <32.485130, 35.745300, 43.954971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.689735, 35.624363, 43.988304>,  <33.030743, 35.422802, 44.043861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.689735, 35.624363, 43.988304> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000975, -0.264188, -0.964471,
		-0.522691, -0.822368, 0.224735,
		-0.852522, 0.503901, -0.138890,
		32.433979, 35.775532, 43.946636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.556705, 35.032215, 43.488098>,  <33.030743, 35.422802, 44.043861>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.556705, 35.032215, 43.488098> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.431400, 35.412067, 43.491425>,  <32.356216, 35.639980, 43.493420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.431400, 35.412067, 43.491425>,  <32.556705, 35.032215, 43.488098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.431400, 35.412067, 43.491425> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204889, -0.059036, -0.977003,
		-0.927300, -0.307763, 0.213063,
		-0.313264, 0.949630, 0.008313,
		32.337421, 35.696957, 43.493919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.860542, 35.134212, 43.126507>,  <32.556705, 35.032215, 43.488098>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.860542, 35.134212, 43.126507> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.021530, 35.500378, 43.128819>,  <32.118122, 35.720078, 43.130203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.021530, 35.500378, 43.128819>,  <31.860542, 35.134212, 43.126507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.021530, 35.500378, 43.128819> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116794, 0.057604, -0.991484,
		-0.907953, 0.398367, 0.130099,
		0.402469, 0.915416, 0.005775,
		32.142269, 35.775002, 43.130550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.541492, 35.497158, 42.585312>,  <31.860542, 35.134212, 43.126507>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.541492, 35.497158, 42.585312> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.852186, 35.734444, 42.669964>,  <32.038601, 35.876816, 42.720753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.852186, 35.734444, 42.669964>,  <31.541492, 35.497158, 42.585312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.852186, 35.734444, 42.669964> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068015, 0.255038, -0.964536,
		-0.626147, 0.763580, 0.157749,
		0.776733, 0.593212, 0.211626,
		32.085205, 35.912407, 42.733452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.373432, 36.138245, 42.196049>,  <31.541492, 35.497158, 42.585312>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.373432, 36.138245, 42.196049> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.762840, 36.092422, 42.275177>,  <31.996485, 36.064930, 42.322655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.762840, 36.092422, 42.275177>,  <31.373432, 36.138245, 42.196049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.762840, 36.092422, 42.275177> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222046, 0.268200, -0.937424,
		0.054333, 0.956528, 0.286535,
		0.973521, -0.114557, 0.197821,
		32.054897, 36.058056, 42.334522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.675920, 36.713352, 42.078926>,  <31.373432, 36.138245, 42.196049>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.675920, 36.713352, 42.078926> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.980446, 36.461880, 42.015476>,  <32.163162, 36.310997, 41.977406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.980446, 36.461880, 42.015476>,  <31.675920, 36.713352, 42.078926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.980446, 36.461880, 42.015476> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076509, 0.330039, -0.940862,
		0.643857, 0.704152, 0.299362,
		0.761311, -0.628684, -0.158624,
		32.208839, 36.273273, 41.967888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.101597, 37.171673, 41.633854>,  <31.675920, 36.713352, 42.078926>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.101597, 37.171673, 41.633854> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.190708, 36.781868, 41.623241>,  <32.244175, 36.547985, 41.616875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.190708, 36.781868, 41.623241>,  <32.101597, 37.171673, 41.633854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.190708, 36.781868, 41.623241> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086492, 0.007352, -0.996225,
		0.971026, 0.224229, -0.082649,
		0.222775, -0.974509, -0.026533,
		32.257542, 36.489517, 41.615280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.679611, 37.122021, 41.191753>,  <32.101597, 37.171673, 41.633854>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.679611, 37.122021, 41.191753> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.529678, 36.751225, 41.186218>,  <32.439720, 36.528748, 41.182896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.529678, 36.751225, 41.186218>,  <32.679611, 37.122021, 41.191753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.529678, 36.751225, 41.186218> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073090, -0.014666, -0.997218,
		0.924208, -0.374798, 0.073251,
		-0.374829, -0.926990, -0.013840,
		32.417229, 36.473129, 41.182068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.031364, 36.803299, 40.601669>,  <32.679611, 37.122021, 41.191753>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.031364, 36.803299, 40.601669> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.728176, 36.560097, 40.696163>,  <32.546261, 36.414173, 40.752857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.728176, 36.560097, 40.696163>,  <33.031364, 36.803299, 40.601669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.728176, 36.560097, 40.696163> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139795, -0.202325, -0.969289,
		0.637130, -0.767719, 0.068360,
		-0.757973, -0.608007, 0.236231,
		32.500786, 36.377693, 40.767033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.589661, 36.621147, 40.921810>,  <33.031364, 36.803299, 40.601669>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.589661, 36.621147, 40.921810> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.936398, 36.803429, 40.840897>,  <34.144440, 36.912796, 40.792347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.936398, 36.803429, 40.840897>,  <33.589661, 36.621147, 40.921810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.936398, 36.803429, 40.840897> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052158, 0.320613, 0.945773,
		0.495846, -0.830387, 0.254152,
		0.866843, 0.455702, -0.202286,
		34.196449, 36.940140, 40.780212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.017872, 36.376923, 41.394829>,  <33.589661, 36.621147, 40.921810>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.017872, 36.376923, 41.394829> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.190727, 36.721153, 41.287006>,  <34.294441, 36.927692, 41.222313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.190727, 36.721153, 41.287006>,  <34.017872, 36.376923, 41.394829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.190727, 36.721153, 41.287006> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054990, 0.273205, 0.960383,
		0.900131, -0.429837, 0.070738,
		0.432134, 0.860581, -0.269557,
		34.320366, 36.979328, 41.206139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.573814, 36.492931, 41.905064>,  <34.017872, 36.376923, 41.394829>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.573814, 36.492931, 41.905064> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.506920, 36.849998, 41.737652>,  <34.466782, 37.064240, 41.637203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.506920, 36.849998, 41.737652>,  <34.573814, 36.492931, 41.905064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.506920, 36.849998, 41.737652> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083907, 0.435858, 0.896096,
		0.982339, 0.114746, -0.147794,
		-0.167240, 0.892671, -0.418532,
		34.456749, 37.117802, 41.612091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.321228, 37.011047, 41.922745>,  <34.573814, 36.492931, 41.905064>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.321228, 37.011047, 41.922745> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.956879, 37.173615, 41.894085>,  <34.738270, 37.271156, 41.876888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.956879, 37.173615, 41.894085>,  <35.321228, 37.011047, 41.922745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.956879, 37.173615, 41.894085> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124586, 0.436327, 0.891121,
		0.393431, 0.802772, -0.448072,
		-0.910874, 0.406418, -0.071650,
		34.683617, 37.295540, 41.872589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.373356, 37.719643, 42.162655>,  <35.321228, 37.011047, 41.922745>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.373356, 37.719643, 42.162655> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.977676, 37.664169, 42.181679>,  <34.740269, 37.630886, 42.193092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.977676, 37.664169, 42.181679>,  <35.373356, 37.719643, 42.162655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.977676, 37.664169, 42.181679> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050884, 0.628983, 0.775752,
		-0.137496, 0.764950, -0.629243,
		-0.989195, -0.138681, 0.047559,
		34.680920, 37.622566, 42.195946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.141258, 38.459541, 42.312531>,  <35.373356, 37.719643, 42.162655>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.141258, 38.459541, 42.312531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.864811, 38.186169, 42.406582>,  <34.698944, 38.022144, 42.463013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.864811, 38.186169, 42.406582>,  <35.141258, 38.459541, 42.312531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.864811, 38.186169, 42.406582> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080537, 0.396120, 0.914660,
		-0.718241, 0.613201, -0.328807,
		-0.691117, -0.683428, 0.235124,
		34.657475, 37.981140, 42.477119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.584488, 38.816532, 42.724613>,  <35.141258, 38.459541, 42.312531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.584488, 38.816532, 42.724613> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.562313, 38.428177, 42.817825>,  <34.549007, 38.195164, 42.873753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.562313, 38.428177, 42.817825>,  <34.584488, 38.816532, 42.724613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.562313, 38.428177, 42.817825> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073996, 0.236745, 0.968750,
		-0.995716, 0.036465, -0.084967,
		-0.055441, -0.970887, 0.233032,
		34.545681, 38.136909, 42.887733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.031898, 38.818085, 43.143097>,  <34.584488, 38.816532, 42.724613>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.031898, 38.818085, 43.143097> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.174149, 38.454250, 43.229057>,  <34.259499, 38.235950, 43.280632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.174149, 38.454250, 43.229057>,  <34.031898, 38.818085, 43.143097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.174149, 38.454250, 43.229057> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278483, 0.116364, 0.953366,
		-0.892174, -0.398891, -0.211921,
		0.355629, -0.909585, 0.214901,
		34.280838, 38.181374, 43.293530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.494743, 38.488682, 43.551121>,  <34.031898, 38.818085, 43.143097>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.494743, 38.488682, 43.551121> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.820408, 38.269188, 43.627052>,  <34.015808, 38.137493, 43.672611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.820408, 38.269188, 43.627052>,  <33.494743, 38.488682, 43.551121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.820408, 38.269188, 43.627052> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291089, -0.102846, 0.951152,
		-0.502403, -0.829649, -0.243463,
		0.814161, -0.548731, 0.189831,
		34.064655, 38.104568, 43.684002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.371433, 38.019310, 43.980972>,  <33.494743, 38.488682, 43.551121>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.371433, 38.019310, 43.980972> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.762264, 38.022358, 44.066063>,  <33.996765, 38.024189, 44.117119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.762264, 38.022358, 44.066063>,  <33.371433, 38.019310, 43.980972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.762264, 38.022358, 44.066063> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211803, -0.064975, 0.975150,
		0.021257, -0.997858, -0.061871,
		0.977081, 0.007625, 0.212731,
		34.055389, 38.024643, 44.129883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.440285, 37.557411, 44.618996>,  <33.371433, 38.019310, 43.980972>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.440285, 37.557411, 44.618996> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.767899, 37.782829, 44.575909>,  <33.964466, 37.918079, 44.550056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.767899, 37.782829, 44.575909>,  <33.440285, 37.557411, 44.618996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.767899, 37.782829, 44.575909> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042827, 0.127170, 0.990956,
		0.572148, -0.816237, 0.080022,
		0.819032, 0.563546, -0.107717,
		34.013607, 37.951893, 44.543594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.991428, 37.379620, 45.248482>,  <33.440285, 37.557411, 44.618996>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.991428, 37.379620, 45.248482> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.069893, 37.749691, 45.118523>,  <34.116974, 37.971733, 45.040546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.069893, 37.749691, 45.118523>,  <33.991428, 37.379620, 45.248482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.069893, 37.749691, 45.118523> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042771, 0.339089, 0.939782,
		0.979638, -0.170456, 0.106088,
		0.196165, 0.925183, -0.324894,
		34.128742, 38.027245, 45.021053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.567665, 37.560177, 45.717804>,  <33.991428, 37.379620, 45.248482>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.567665, 37.560177, 45.717804> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.402111, 37.894730, 45.574051>,  <34.302780, 38.095463, 45.487797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.402111, 37.894730, 45.574051>,  <34.567665, 37.560177, 45.717804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.402111, 37.894730, 45.574051> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056866, 0.370262, 0.927185,
		0.908551, 0.404185, -0.105684,
		-0.413885, 0.836385, -0.359387,
		34.277946, 38.145645, 45.466236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.988354, 38.160141, 45.997334>,  <34.567665, 37.560177, 45.717804>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.988354, 38.160141, 45.997334> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.640110, 38.322479, 45.886105>,  <34.431164, 38.419884, 45.819366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.640110, 38.322479, 45.886105>,  <34.988354, 38.160141, 45.997334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.640110, 38.322479, 45.886105> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116340, 0.379344, 0.917912,
		0.478013, 0.831498, -0.283046,
		-0.870614, 0.405845, -0.278068,
		34.378925, 38.444233, 45.802685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293709, 38.731956, 45.600117>,  <34.988354, 38.160141, 45.997334>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.293709, 38.731956, 45.600117> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.613041, 38.966869, 45.653431>,  <35.804642, 39.107819, 45.685417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.613041, 38.966869, 45.653431>,  <35.293709, 38.731956, 45.600117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.613041, 38.966869, 45.653431> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096696, 0.093443, -0.990918,
		-0.594403, 0.803970, 0.017811,
		0.798333, 0.587282, 0.133284,
		35.852539, 39.143055, 45.693417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.192810, 39.227016, 45.116230>,  <35.293709, 38.731956, 45.600117>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.192810, 39.227016, 45.116230> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.583344, 39.220715, 45.202503>,  <35.817665, 39.216934, 45.254269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.583344, 39.220715, 45.202503>,  <35.192810, 39.227016, 45.116230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.583344, 39.220715, 45.202503> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216038, 0.116032, -0.969466,
		-0.009751, 0.993120, 0.116690,
		0.976336, -0.015757, 0.215684,
		35.876244, 39.215988, 45.267208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.414631, 39.855320, 44.715466>,  <35.192810, 39.227016, 45.116230>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.414631, 39.855320, 44.715466> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.743786, 39.645206, 44.802116>,  <35.941280, 39.519138, 44.854107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.743786, 39.645206, 44.802116>,  <35.414631, 39.855320, 44.715466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.743786, 39.645206, 44.802116> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260433, 0.009838, -0.965442,
		0.504999, 0.850870, 0.144897,
		0.822891, -0.525283, 0.216627,
		35.990654, 39.487621, 44.867104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.960396, 40.104057, 44.249405>,  <35.414631, 39.855320, 44.715466>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.960396, 40.104057, 44.249405> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.134506, 39.759800, 44.355099>,  <36.238972, 39.553246, 44.418514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.134506, 39.759800, 44.355099>,  <35.960396, 40.104057, 44.249405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.134506, 39.759800, 44.355099> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389435, -0.084626, -0.917158,
		0.811710, 0.502123, 0.298330,
		0.435279, -0.860646, 0.264236,
		36.265091, 39.501606, 44.434368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.626991, 40.082039, 44.032719>,  <35.960396, 40.104057, 44.249405>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.626991, 40.082039, 44.032719> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.536926, 39.693478, 44.062840>,  <36.482887, 39.460339, 44.080910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.536926, 39.693478, 44.062840>,  <36.626991, 40.082039, 44.032719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.536926, 39.693478, 44.062840> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468420, -0.175691, -0.865861,
		0.854333, -0.159688, 0.494586,
		-0.225162, -0.971407, 0.075298,
		36.469379, 39.402054, 44.085430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241219, 39.773754, 43.913185>,  <36.626991, 40.082039, 44.032719>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.241219, 39.773754, 43.913185> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.973499, 39.478115, 43.882805>,  <36.812866, 39.300732, 43.864578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.973499, 39.478115, 43.882805>,  <37.241219, 39.773754, 43.913185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.973499, 39.478115, 43.882805> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495204, -0.367544, -0.787200,
		0.553904, -0.564485, 0.612003,
		-0.669301, -0.739099, -0.075951,
		36.772709, 39.256386, 43.860020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.681087, 39.212410, 43.675571>,  <37.241219, 39.773754, 43.913185>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.681087, 39.212410, 43.675571> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.308453, 39.098957, 43.584621>,  <37.084873, 39.030884, 43.530052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.308453, 39.098957, 43.584621>,  <37.681087, 39.212410, 43.675571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.308453, 39.098957, 43.584621> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337250, -0.440866, -0.831805,
		0.135682, -0.851581, 0.506359,
		-0.931586, -0.283631, -0.227378,
		37.028976, 39.013866, 43.516407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.658543, 38.505230, 43.614117>,  <37.681087, 39.212410, 43.675571>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.658543, 38.505230, 43.614117> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.360920, 38.643181, 43.385227>,  <37.182346, 38.725952, 43.247894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.360920, 38.643181, 43.385227>,  <37.658543, 38.505230, 43.614117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.360920, 38.643181, 43.385227> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213256, -0.689077, -0.692600,
		-0.633166, -0.637365, 0.439167,
		-0.744058, 0.344876, -0.572222,
		37.137703, 38.746643, 43.213562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.338020, 37.880112, 43.338905>,  <37.658543, 38.505230, 43.614117>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.338020, 37.880112, 43.338905> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.211769, 38.173607, 43.098240>,  <37.136017, 38.349705, 42.953842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.211769, 38.173607, 43.098240>,  <37.338020, 37.880112, 43.338905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.211769, 38.173607, 43.098240> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059908, -0.617403, -0.784363,
		-0.946989, -0.283614, 0.150915,
		-0.315631, 0.733742, -0.601664,
		37.117081, 38.393730, 42.917740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.912426, 37.448353, 42.983730>,  <37.338020, 37.880112, 43.338905>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.912426, 37.448353, 42.983730> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.953201, 37.782436, 42.767570>,  <36.977665, 37.982887, 42.637875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.953201, 37.782436, 42.767570>,  <36.912426, 37.448353, 42.983730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.953201, 37.782436, 42.767570> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192870, -0.516330, -0.834389,
		-0.975915, 0.189283, 0.108453,
		0.101939, 0.835210, -0.540401,
		36.983784, 38.033001, 42.605450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368599, 37.420982, 42.504135>,  <36.912426, 37.448353, 42.983730>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.368599, 37.420982, 42.504135> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.652645, 37.668877, 42.370472>,  <36.823074, 37.817612, 42.290276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.652645, 37.668877, 42.370472>,  <36.368599, 37.420982, 42.504135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.652645, 37.668877, 42.370472> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094735, -0.386184, -0.917544,
		-0.697682, 0.683219, -0.215524,
		0.710116, 0.619736, -0.334158,
		36.865681, 37.854797, 42.270226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109585, 37.917179, 41.850529>,  <36.368599, 37.420982, 42.504135>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.109585, 37.917179, 41.850529> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.503864, 37.851494, 41.865677>,  <36.740433, 37.812080, 41.874767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.503864, 37.851494, 41.865677>,  <36.109585, 37.917179, 41.850529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.503864, 37.851494, 41.865677> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001063, -0.218656, -0.975801,
		0.168525, 0.961885, -0.215353,
		0.985697, -0.164218, 0.037872,
		36.799572, 37.802227, 41.877037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.399029, 38.229397, 41.196785>,  <36.109585, 37.917179, 41.850529>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.399029, 38.229397, 41.196785> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.726604, 38.029457, 41.309563>,  <36.923149, 37.909492, 41.377228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.726604, 38.029457, 41.309563>,  <36.399029, 38.229397, 41.196785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.726604, 38.029457, 41.309563> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188661, -0.229492, -0.954851,
		0.541989, 0.835153, -0.093636,
		0.818935, -0.499853, 0.281943,
		36.972286, 37.879501, 41.394146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.911072, 38.494961, 40.805233>,  <36.399029, 38.229397, 41.196785>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.911072, 38.494961, 40.805233> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.027126, 38.126476, 40.908920>,  <37.096760, 37.905388, 40.971134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.027126, 38.126476, 40.908920>,  <36.911072, 38.494961, 40.805233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.027126, 38.126476, 40.908920> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226475, -0.197084, -0.953869,
		0.929801, 0.335460, 0.151449,
		0.290137, -0.921208, 0.259222,
		37.114166, 37.850113, 40.986687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.623854, 33.172436, 26.519773> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.230936, 33.097656, 26.524611>,  <25.995186, 33.052788, 26.527512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.230936, 33.097656, 26.524611>,  <26.623854, 33.172436, 26.519773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.230936, 33.097656, 26.524611> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082123, 0.487710, 0.869135,
		-0.168382, 0.852754, -0.494428,
		-0.982295, -0.186950, 0.012091,
		25.936247, 33.041573, 26.528238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.383247, 33.848770, 26.664494>,  <26.623854, 33.172436, 26.519773>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.383247, 33.848770, 26.664494> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.113293, 33.574001, 26.772318>,  <25.951321, 33.409142, 26.837013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.113293, 33.574001, 26.772318>,  <26.383247, 33.848770, 26.664494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.113293, 33.574001, 26.772318> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031728, 0.337950, 0.940629,
		-0.737239, 0.643371, -0.206283,
		-0.674887, -0.686923, 0.269563,
		25.910826, 33.367924, 26.853188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.913103, 34.181328, 27.078279>,  <26.383247, 33.848770, 26.664494>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.913103, 34.181328, 27.078279> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.841898, 33.806084, 27.197111>,  <25.799175, 33.580936, 27.268410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.841898, 33.806084, 27.197111>,  <25.913103, 34.181328, 27.078279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.841898, 33.806084, 27.197111> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259708, 0.335986, 0.905354,
		-0.949138, 0.084010, -0.303445,
		-0.178012, -0.938113, 0.297079,
		25.788494, 33.524651, 27.286236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.368460, 34.333221, 27.442732>,  <25.913103, 34.181328, 27.078279>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.368460, 34.333221, 27.442732> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.505512, 33.972439, 27.547867>,  <25.587744, 33.755970, 27.610947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.505512, 33.972439, 27.547867>,  <25.368460, 34.333221, 27.442732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.505512, 33.972439, 27.547867> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298158, 0.160908, 0.940856,
		-0.890901, -0.400735, -0.213792,
		0.342633, -0.901953, 0.262836,
		25.608303, 33.701855, 27.626719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.942953, 34.127670, 27.957510>,  <25.368460, 34.333221, 27.442732>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.942953, 34.127670, 27.957510> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.232382, 33.858856, 28.020514>,  <25.406038, 33.697567, 28.058315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.232382, 33.858856, 28.020514>,  <24.942953, 34.127670, 27.957510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.232382, 33.858856, 28.020514> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138294, 0.082419, 0.986956,
		-0.676255, -0.735914, -0.033303,
		0.723570, -0.672040, 0.157509,
		25.449453, 33.657246, 28.067766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.726633, 33.779488, 28.561012>,  <24.942953, 34.127670, 27.957510>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.726633, 33.779488, 28.561012> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.121817, 33.743557, 28.510620>,  <25.358927, 33.721996, 28.480385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.121817, 33.743557, 28.510620>,  <24.726633, 33.779488, 28.561012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.121817, 33.743557, 28.510620> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135142, 0.104475, 0.985303,
		-0.075350, -0.990462, 0.115357,
		0.987957, -0.089832, -0.125981,
		25.418203, 33.716606, 28.472826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.865114, 33.362938, 29.148754>,  <24.726633, 33.779488, 28.561012>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.865114, 33.362938, 29.148754> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.206209, 33.527813, 29.020414>,  <25.410866, 33.626740, 28.943411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.206209, 33.527813, 29.020414>,  <24.865114, 33.362938, 29.148754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.206209, 33.527813, 29.020414> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244463, 0.227899, 0.942496,
		0.461607, -0.882136, 0.093573,
		0.852735, 0.412187, -0.320850,
		25.462030, 33.651470, 28.924160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.416433, 32.983921, 29.596815>,  <24.865114, 33.362938, 29.148754>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.416433, 32.983921, 29.596815> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.573172, 33.317902, 29.442249>,  <25.667213, 33.518291, 29.349510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.573172, 33.317902, 29.442249>,  <25.416433, 32.983921, 29.596815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.573172, 33.317902, 29.442249> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524343, 0.142450, 0.839507,
		0.755991, -0.531570, -0.381982,
		0.391843, 0.834950, -0.386416,
		25.690725, 33.568386, 29.326324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.196470, 32.939770, 29.783327>,  <25.416433, 32.983921, 29.596815>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.196470, 32.939770, 29.783327> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.107529, 33.319347, 29.693825>,  <26.054165, 33.547092, 29.640123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.107529, 33.319347, 29.693825>,  <26.196470, 32.939770, 29.783327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.107529, 33.319347, 29.693825> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345294, 0.291272, 0.892151,
		0.911774, 0.121110, -0.392430,
		-0.222352, 0.948943, -0.223756,
		26.040823, 33.604031, 29.626698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.828806, 33.396465, 29.831917>,  <26.196470, 32.939770, 29.783327>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.828806, 33.396465, 29.831917> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.501781, 33.621227, 29.882286>,  <26.305567, 33.756084, 29.912508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.501781, 33.621227, 29.882286>,  <26.828806, 33.396465, 29.831917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.501781, 33.621227, 29.882286> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270559, 0.181796, 0.945382,
		0.508322, 0.806978, -0.300658,
		-0.817561, 0.561905, 0.125924,
		26.256514, 33.789799, 29.920063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.121330, 33.966606, 30.186483>,  <26.828806, 33.396465, 29.831917>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.121330, 33.966606, 30.186483> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.730234, 33.975189, 30.269974>,  <26.495577, 33.980339, 30.320068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.730234, 33.975189, 30.269974>,  <27.121330, 33.966606, 30.186483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.730234, 33.975189, 30.269974> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202056, 0.364439, 0.909042,
		-0.056564, 0.930980, -0.360661,
		-0.977739, 0.021454, 0.208724,
		26.436913, 33.981625, 30.332590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.094934, 34.434799, 30.638199>,  <27.121330, 33.966606, 30.186483>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.094934, 34.434799, 30.638199> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.744772, 34.250702, 30.697321>,  <26.534676, 34.140244, 30.732794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.744772, 34.250702, 30.697321>,  <27.094934, 34.434799, 30.638199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.744772, 34.250702, 30.697321> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013742, 0.281951, 0.959330,
		-0.483196, 0.841833, -0.240497,
		-0.875404, -0.460240, 0.147807,
		26.482151, 34.112629, 30.741663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.755211, 34.943802, 30.856970>,  <27.094934, 34.434799, 30.638199>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.755211, 34.943802, 30.856970> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.596918, 34.604748, 30.998343>,  <26.501942, 34.401318, 31.083166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.596918, 34.604748, 30.998343>,  <26.755211, 34.943802, 30.856970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.596918, 34.604748, 30.998343> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074540, 0.353932, 0.932296,
		-0.915336, 0.395285, -0.076880,
		-0.395733, -0.847633, 0.353431,
		26.478199, 34.350456, 31.104372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.228848, 35.125511, 31.349390>,  <26.755211, 34.943802, 30.856970>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.228848, 35.125511, 31.349390> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.328743, 34.745766, 31.425650>,  <26.388681, 34.517918, 31.471405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.328743, 34.745766, 31.425650>,  <26.228848, 35.125511, 31.349390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.328743, 34.745766, 31.425650> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095436, 0.220060, 0.970807,
		-0.963598, -0.224255, 0.145561,
		0.249740, -0.949359, 0.190648,
		26.403666, 34.460957, 31.482843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.047421, 35.006088, 32.073139>,  <26.228848, 35.125511, 31.349390>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.047421, 35.006088, 32.073139> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.288445, 34.695450, 31.999578>,  <26.433060, 34.509068, 31.955442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.288445, 34.695450, 31.999578>,  <26.047421, 35.006088, 32.073139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.288445, 34.695450, 31.999578> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260998, -0.026008, 0.964989,
		-0.754189, -0.629462, 0.187019,
		0.602560, -0.776596, -0.183904,
		26.469213, 34.462471, 31.944407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.839687, 34.456493, 32.574295>,  <26.047421, 35.006088, 32.073139>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.839687, 34.456493, 32.574295> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.214527, 34.374279, 32.461441>,  <26.439430, 34.324951, 32.393730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.214527, 34.374279, 32.461441>,  <25.839687, 34.456493, 32.574295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.214527, 34.374279, 32.461441> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277025, -0.053840, 0.959353,
		-0.212370, -0.977168, 0.006485,
		0.937100, -0.205535, -0.282134,
		26.495657, 34.312618, 32.376801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.141071, 34.073185, 33.168083>,  <25.839687, 34.456493, 32.574295>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.141071, 34.073185, 33.168083> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.459124, 34.173473, 32.947208>,  <26.649954, 34.233646, 32.814686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.459124, 34.173473, 32.947208>,  <26.141071, 34.073185, 33.168083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.459124, 34.173473, 32.947208> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583152, -0.066201, 0.809661,
		0.166446, -0.965792, -0.198848,
		0.795129, 0.250723, -0.552185,
		26.697662, 34.248692, 32.781551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.631310, 33.548447, 33.352226>,  <26.141071, 34.073185, 33.168083>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.631310, 33.548447, 33.352226> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.822992, 33.869617, 33.210423>,  <26.938002, 34.062321, 33.125340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.822992, 33.869617, 33.210423>,  <26.631310, 33.548447, 33.352226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.822992, 33.869617, 33.210423> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519634, 0.065973, 0.851838,
		0.707348, -0.592420, -0.385612,
		0.479206, 0.802923, -0.354508,
		26.966755, 34.110493, 33.104069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.345303, 33.405659, 33.545517>,  <26.631310, 33.548447, 33.352226>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.345303, 33.405659, 33.545517> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.340631, 33.798676, 33.471237>,  <27.337828, 34.034485, 33.426670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.340631, 33.798676, 33.471237>,  <27.345303, 33.405659, 33.545517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.340631, 33.798676, 33.471237> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498776, 0.166682, 0.850552,
		0.866652, -0.082688, -0.492013,
		-0.011679, 0.982538, -0.185698,
		27.337128, 34.093437, 33.415527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.017347, 33.677017, 33.785065>,  <27.345303, 33.405659, 33.545517>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.017347, 33.677017, 33.785065> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.771723, 33.992073, 33.764870>,  <27.624348, 34.181107, 33.752754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.771723, 33.992073, 33.764870>,  <28.017347, 33.677017, 33.785065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.771723, 33.992073, 33.764870> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341285, 0.322660, 0.882845,
		0.711657, 0.524889, -0.466943,
		-0.614059, 0.787644, -0.050487,
		27.587505, 34.228367, 33.749725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.793943, 33.712116, 33.669918>,  <28.017347, 33.677017, 33.785065>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.793943, 33.712116, 33.669918> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.938110, 33.418159, 33.899712>,  <29.024611, 33.241783, 34.037586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.938110, 33.418159, 33.899712>,  <28.793943, 33.712116, 33.669918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.938110, 33.418159, 33.899712> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033510, -0.625677, -0.779362,
		0.932189, 0.261645, -0.250131,
		0.360417, -0.734894, 0.574482,
		29.046236, 33.197693, 34.072056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.422823, 33.479774, 33.364975>,  <28.793943, 33.712116, 33.669918>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.422823, 33.479774, 33.364975> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.290344, 33.167488, 33.576935>,  <29.210857, 32.980118, 33.704109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.290344, 33.167488, 33.576935>,  <29.422823, 33.479774, 33.364975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.290344, 33.167488, 33.576935> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019286, -0.567075, -0.823440,
		0.943364, -0.262503, 0.202871,
		-0.331199, -0.780717, 0.529896,
		29.190985, 32.933273, 33.735905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.873604, 32.888027, 33.264793>,  <29.422823, 33.479774, 33.364975>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.873604, 32.888027, 33.264793> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.509743, 32.747643, 33.353657>,  <29.291426, 32.663410, 33.406975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.509743, 32.747643, 33.353657>,  <29.873604, 32.888027, 33.264793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.509743, 32.747643, 33.353657> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121632, -0.736482, -0.665432,
		0.397160, -0.578290, 0.712632,
		-0.909653, -0.350962, 0.222163,
		29.236847, 32.642353, 33.420307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.002640, 32.168041, 33.085899>,  <29.873604, 32.888027, 33.264793>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.002640, 32.168041, 33.085899> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.617271, 32.158249, 33.192646>,  <29.386049, 32.152374, 33.256695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.617271, 32.158249, 33.192646>,  <30.002640, 32.168041, 33.085899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.617271, 32.158249, 33.192646> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103730, -0.884120, -0.455600,
		0.247095, -0.466617, 0.849242,
		-0.963423, -0.024484, 0.266864,
		29.328245, 32.150902, 33.272705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.929564, 31.513550, 33.217113>,  <30.002640, 32.168041, 33.085899>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.929564, 31.513550, 33.217113> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.561224, 31.654638, 33.150631>,  <29.340219, 31.739292, 33.110741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.561224, 31.654638, 33.150631>,  <29.929564, 31.513550, 33.217113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.561224, 31.654638, 33.150631> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196898, -0.788557, -0.582588,
		-0.336553, -0.503751, 0.795592,
		-0.920849, 0.352722, -0.166203,
		29.284969, 31.760454, 33.100769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.504074, 30.911587, 33.231258>,  <29.929564, 31.513550, 33.217113>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.504074, 30.911587, 33.231258> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.276495, 31.173929, 33.032803>,  <29.139948, 31.331335, 32.913731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.276495, 31.173929, 33.032803>,  <29.504074, 30.911587, 33.231258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.276495, 31.173929, 33.032803> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267297, -0.718024, -0.642646,
		-0.777721, -0.233017, 0.583827,
		-0.568949, 0.655854, -0.496138,
		29.105810, 31.370686, 32.883961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.959026, 30.498617, 33.100212>,  <29.504074, 30.911587, 33.231258>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.959026, 30.498617, 33.100212> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.942032, 30.802118, 32.840218>,  <28.931835, 30.984219, 32.684219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.942032, 30.802118, 32.840218>,  <28.959026, 30.498617, 33.100212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.942032, 30.802118, 32.840218> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357641, -0.619017, -0.699222,
		-0.932892, 0.202754, 0.297662,
		-0.042488, 0.758755, -0.649989,
		28.929285, 31.029745, 32.645222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.277510, 30.346443, 32.696594>,  <28.959026, 30.498617, 33.100212>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.277510, 30.346443, 32.696594> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.478136, 30.605757, 32.467453>,  <28.598513, 30.761345, 32.329967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.478136, 30.605757, 32.467453>,  <28.277510, 30.346443, 32.696594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.478136, 30.605757, 32.467453> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379320, -0.430325, -0.819107,
		-0.777527, 0.628131, 0.030071,
		0.501566, 0.648284, -0.572852,
		28.628607, 30.800241, 32.295597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.849209, 30.402086, 32.175137>,  <28.277510, 30.346443, 32.696594>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.849209, 30.402086, 32.175137> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.187840, 30.564062, 32.036957>,  <28.391018, 30.661247, 31.954050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.187840, 30.564062, 32.036957>,  <27.849209, 30.402086, 32.175137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.187840, 30.564062, 32.036957> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202725, -0.354786, -0.912705,
		-0.492151, 0.842704, -0.218261,
		0.846576, 0.404941, -0.345445,
		28.441813, 30.685545, 31.933323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.721502, 30.949631, 31.568186>,  <27.849209, 30.402086, 32.175137>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.721502, 30.949631, 31.568186> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.095024, 30.808960, 31.541843>,  <28.319138, 30.724558, 31.526037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.095024, 30.808960, 31.541843>,  <27.721502, 30.949631, 31.568186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.095024, 30.808960, 31.541843> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129899, -0.161732, -0.978248,
		0.333374, 0.922045, -0.196708,
		0.933803, -0.351675, -0.065855,
		28.375166, 30.703457, 31.522087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.131058, 31.166565, 30.924473>,  <27.721502, 30.949631, 31.568186>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.131058, 31.166565, 30.924473> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.322655, 30.829006, 31.021141>,  <28.437613, 30.626471, 31.079142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.322655, 30.829006, 31.021141>,  <28.131058, 31.166565, 30.924473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.322655, 30.829006, 31.021141> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050380, -0.301283, -0.952203,
		0.876371, 0.443924, -0.186828,
		0.478994, -0.843896, 0.241671,
		28.466352, 30.575838, 31.093643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.690193, 31.081612, 30.464041>,  <28.131058, 31.166565, 30.924473>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.690193, 31.081612, 30.464041> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.609035, 30.720495, 30.615725>,  <28.560341, 30.503824, 30.706734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.609035, 30.720495, 30.615725>,  <28.690193, 31.081612, 30.464041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.609035, 30.720495, 30.615725> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116134, -0.362344, -0.924781,
		0.972290, -0.231671, -0.031328,
		-0.202893, -0.902793, 0.379209,
		28.548168, 30.449657, 30.729486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.178646, 30.606684, 30.163937>,  <28.690193, 31.081612, 30.464041>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.178646, 30.606684, 30.163937> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.843662, 30.427492, 30.289143>,  <28.642672, 30.319977, 30.364267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.843662, 30.427492, 30.289143>,  <29.178646, 30.606684, 30.163937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.843662, 30.427492, 30.289143> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136360, -0.383361, -0.913477,
		0.529217, -0.807681, 0.259962,
		-0.837458, -0.447979, 0.313017,
		28.592424, 30.293098, 30.383047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.195238, 29.947796, 29.843393>,  <29.178646, 30.606684, 30.163937>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.195238, 29.947796, 29.843393> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.815424, 30.025127, 29.942192>,  <28.587536, 30.071526, 30.001471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.815424, 30.025127, 29.942192>,  <29.195238, 29.947796, 29.843393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.815424, 30.025127, 29.942192> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300967, -0.339821, -0.891034,
		-0.088327, -0.920405, 0.380857,
		-0.949536, 0.193328, 0.246996,
		28.530563, 30.083126, 30.016291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.879074, 29.506636, 29.434315>,  <29.195238, 29.947796, 29.843393>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.879074, 29.506636, 29.434315> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.591366, 29.746666, 29.574348>,  <28.418741, 29.890684, 29.658369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.591366, 29.746666, 29.574348>,  <28.879074, 29.506636, 29.434315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.591366, 29.746666, 29.574348> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470437, -0.049894, -0.881022,
		-0.511215, -0.798384, 0.318185,
		-0.719270, 0.600078, 0.350083,
		28.375586, 29.926689, 29.679373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.247818, 29.182606, 29.144735>,  <28.879074, 29.506636, 29.434315>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.247818, 29.182606, 29.144735> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.152254, 29.561455, 29.230413>,  <28.094915, 29.788765, 29.281820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.152254, 29.561455, 29.230413>,  <28.247818, 29.182606, 29.144735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.152254, 29.561455, 29.230413> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507650, 0.066217, -0.859015,
		-0.827776, -0.313965, 0.464987,
		-0.238911, 0.947123, 0.214197,
		28.080582, 29.845592, 29.294672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.503757, 29.200457, 29.056717>,  <28.247818, 29.182606, 29.144735>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.503757, 29.200457, 29.056717> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.631140, 29.579302, 29.040886>,  <27.707569, 29.806608, 29.031387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.631140, 29.579302, 29.040886>,  <27.503757, 29.200457, 29.056717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.631140, 29.579302, 29.040886> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528353, 0.142680, -0.836950,
		-0.787038, 0.287441, 0.545846,
		0.318455, 0.947111, -0.039576,
		27.726677, 29.863436, 29.029013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.851120, 29.621750, 29.030233>,  <27.503757, 29.200457, 29.056717>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.851120, 29.621750, 29.030233> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.139441, 29.869184, 28.905146>,  <27.312433, 30.017645, 28.830093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.139441, 29.869184, 28.905146>,  <26.851120, 29.621750, 29.030233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.139441, 29.869184, 28.905146> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566577, 0.265919, -0.779921,
		-0.399292, 0.739348, 0.542153,
		0.720802, 0.618588, -0.312718,
		27.355680, 30.054762, 28.811331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.431526, 30.062281, 28.740591>,  <26.851120, 29.621750, 29.030233>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.431526, 30.062281, 28.740591> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.796679, 30.152519, 28.604504>,  <27.015770, 30.206663, 28.522850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.796679, 30.152519, 28.604504>,  <26.431526, 30.062281, 28.740591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.796679, 30.152519, 28.604504> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402582, 0.359477, -0.841846,
		-0.067617, 0.905474, 0.418982,
		0.912883, 0.225597, -0.340221,
		27.070543, 30.220198, 28.502438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.349510, 30.737700, 28.450304>,  <26.431526, 30.062281, 28.740591>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.349510, 30.737700, 28.450304> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.665840, 30.543009, 28.301876>,  <26.855639, 30.426195, 28.212818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.665840, 30.543009, 28.301876>,  <26.349510, 30.737700, 28.450304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.665840, 30.543009, 28.301876> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223154, 0.335247, -0.915321,
		0.569912, 0.806664, 0.156506,
		0.790824, -0.486727, -0.371072,
		26.903088, 30.396990, 28.190554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.733490, 31.223196, 28.039019>,  <26.349510, 30.737700, 28.450304>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.733490, 31.223196, 28.039019> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.816322, 30.859804, 27.893808>,  <26.866022, 30.641769, 27.806683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.816322, 30.859804, 27.893808>,  <26.733490, 31.223196, 28.039019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.816322, 30.859804, 27.893808> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341022, 0.280765, -0.897148,
		0.916963, 0.309581, -0.251670,
		0.207080, -0.908477, -0.363025,
		26.878447, 30.587261, 27.784901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.926964, 31.360651, 27.384104>,  <26.733490, 31.223196, 28.039019>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.926964, 31.360651, 27.384104> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.845045, 30.969646, 27.363991>,  <26.795895, 30.735044, 27.351923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.845045, 30.969646, 27.363991>,  <26.926964, 31.360651, 27.384104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.845045, 30.969646, 27.363991> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311883, 0.113866, -0.943272,
		0.927786, -0.177496, -0.328189,
		-0.204797, -0.977512, -0.050285,
		26.783606, 30.676394, 27.348906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.047142, 37.116703, 46.905167> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.699738, 36.921600, 46.869884>,  <37.491295, 36.804539, 46.848717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.699738, 36.921600, 46.869884>,  <38.047142, 37.116703, 46.905167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.699738, 36.921600, 46.869884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197778, 0.177845, 0.963979,
		-0.454500, 0.854672, -0.250928,
		-0.868512, -0.487757, -0.088205,
		37.439182, 36.775272, 46.843422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.541737, 37.490822, 47.253990>,  <38.047142, 37.116703, 46.905167>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.541737, 37.490822, 47.253990> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.381107, 37.124496, 47.251835>,  <37.284729, 36.904701, 47.250542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.381107, 37.124496, 47.251835>,  <37.541737, 37.490822, 47.253990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.381107, 37.124496, 47.251835> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342537, 0.144738, 0.928289,
		-0.849359, 0.374617, -0.371822,
		-0.401570, -0.915813, -0.005386,
		37.260635, 36.849754, 47.250217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.895870, 37.534874, 47.565929>,  <37.541737, 37.490822, 47.253990>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.895870, 37.534874, 47.565929> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.987797, 37.146637, 47.594589>,  <37.042953, 36.913696, 47.611786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.987797, 37.146637, 47.594589>,  <36.895870, 37.534874, 47.565929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.987797, 37.146637, 47.594589> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146502, 0.038282, 0.988469,
		-0.962144, -0.237665, -0.133396,
		0.229818, -0.970593, 0.071651,
		37.056744, 36.855461, 47.616085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.335979, 37.150570, 47.834335>,  <36.895870, 37.534874, 47.565929>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.335979, 37.150570, 47.834335> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.648956, 36.925350, 47.940731>,  <36.836742, 36.790218, 48.004570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.648956, 36.925350, 47.940731>,  <36.335979, 37.150570, 47.834335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.648956, 36.925350, 47.940731> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281996, 0.060465, 0.957508,
		-0.555208, -0.824208, -0.111467,
		0.782447, -0.563050, 0.265994,
		36.883690, 36.756435, 48.020531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.008408, 36.610088, 48.163822>,  <36.335979, 37.150570, 47.834335>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.008408, 36.610088, 48.163822> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.395309, 36.591667, 48.263660>,  <36.627449, 36.580612, 48.323563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.395309, 36.591667, 48.263660>,  <36.008408, 36.610088, 48.163822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395309, 36.591667, 48.263660> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239464, 0.160279, 0.957584,
		-0.084108, -0.985997, 0.144001,
		0.967255, -0.046058, 0.249592,
		36.685486, 36.577850, 48.338539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.069996, 36.122543, 48.726723>,  <36.008408, 36.610088, 48.163822>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.069996, 36.122543, 48.726723> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.409538, 36.330029, 48.767471>,  <36.613266, 36.454517, 48.791920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.409538, 36.330029, 48.767471>,  <36.069996, 36.122543, 48.726723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.409538, 36.330029, 48.767471> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150133, 0.051783, 0.987309,
		0.506851, -0.853381, 0.121832,
		0.848859, 0.518709, 0.101874,
		36.664196, 36.485641, 48.798035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.309715, 35.851612, 49.328278>,  <36.069996, 36.122543, 48.726723>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.309715, 35.851612, 49.328278> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.522629, 36.190178, 49.334724>,  <36.650375, 36.393318, 49.338593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.522629, 36.190178, 49.334724>,  <36.309715, 35.851612, 49.328278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.522629, 36.190178, 49.334724> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145450, 0.072684, 0.986692,
		0.833977, -0.527544, 0.161799,
		0.532284, 0.846412, 0.016114,
		36.682316, 36.444103, 49.339558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.738190, 35.809284, 49.887211>,  <36.309715, 35.851612, 49.328278>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.738190, 35.809284, 49.887211> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.709190, 36.200851, 49.810829>,  <36.691792, 36.435791, 49.764999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.709190, 36.200851, 49.810829>,  <36.738190, 35.809284, 49.887211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.709190, 36.200851, 49.810829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044956, 0.188054, 0.981129,
		0.996355, 0.079710, 0.030376,
		-0.072494, 0.978918, -0.190952,
		36.687443, 36.494526, 49.753544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227371, 36.086285, 50.354355>,  <36.738190, 35.809284, 49.887211>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.227371, 36.086285, 50.354355> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.986176, 36.382446, 50.235554>,  <36.841457, 36.560143, 50.164272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.986176, 36.382446, 50.235554>,  <37.227371, 36.086285, 50.354355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.986176, 36.382446, 50.235554> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078708, 0.315269, 0.945733,
		0.793860, 0.593640, -0.131827,
		-0.602985, 0.740404, -0.297004,
		36.805279, 36.604568, 50.146454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.534599, 36.655228, 50.654964>,  <37.227371, 36.086285, 50.354355>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.534599, 36.655228, 50.654964> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.150459, 36.727894, 50.570366>,  <36.919975, 36.771492, 50.519608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.150459, 36.727894, 50.570366>,  <37.534599, 36.655228, 50.654964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.150459, 36.727894, 50.570366> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122474, 0.406603, 0.905359,
		0.250466, 0.895362, -0.368231,
		-0.960347, 0.181663, -0.211499,
		36.862354, 36.782394, 50.506916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400253, 37.337646, 50.816223>,  <37.534599, 36.655228, 50.654964>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.400253, 37.337646, 50.816223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.022774, 37.205547, 50.808605>,  <36.796284, 37.126286, 50.804035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.022774, 37.205547, 50.808605>,  <37.400253, 37.337646, 50.816223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.022774, 37.205547, 50.808605> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131147, 0.320655, 0.938073,
		-0.303691, 0.887759, -0.345914,
		-0.943702, -0.330250, -0.019047,
		36.739662, 37.106472, 50.802891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.970146, 37.820190, 51.109936>,  <37.400253, 37.337646, 50.816223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.970146, 37.820190, 51.109936> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.735561, 37.497009, 51.132839>,  <36.594810, 37.303101, 51.146580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.735561, 37.497009, 51.132839>,  <36.970146, 37.820190, 51.109936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.735561, 37.497009, 51.132839> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164950, 0.188346, 0.968152,
		-0.793001, 0.558342, -0.243729,
		-0.586465, -0.807948, 0.057260,
		36.559624, 37.254623, 51.150017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.332043, 38.058186, 51.325325>,  <36.970146, 37.820190, 51.109936>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.332043, 38.058186, 51.325325> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.415062, 37.683392, 51.437737>,  <36.464874, 37.458515, 51.505184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.415062, 37.683392, 51.437737>,  <36.332043, 38.058186, 51.325325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.415062, 37.683392, 51.437737> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036747, 0.279614, 0.959409,
		-0.977535, -0.209447, 0.023601,
		0.207544, -0.936989, 0.281029,
		36.477325, 37.402294, 51.522045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891090, 37.932247, 51.872601>,  <36.332043, 38.058186, 51.325325>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.891090, 37.932247, 51.872601> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.215603, 37.700008, 51.900120>,  <36.410309, 37.560665, 51.916630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.215603, 37.700008, 51.900120>,  <35.891090, 37.932247, 51.872601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.215603, 37.700008, 51.900120> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045385, 0.179851, 0.982646,
		-0.582892, -0.794080, 0.172260,
		0.811281, -0.580595, 0.068794,
		36.458988, 37.525829, 51.920757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.642735, 38.530048, 51.539051>,  <35.891090, 37.932247, 51.872601>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.642735, 38.530048, 51.539051> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.954277, 38.571659, 51.786457>,  <36.141205, 38.596626, 51.934898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.954277, 38.571659, 51.786457>,  <35.642735, 38.530048, 51.539051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.954277, 38.571659, 51.786457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566660, -0.305990, 0.765027,
		0.268842, -0.946334, -0.179376,
		0.778859, 0.104026, 0.618512,
		36.187935, 38.602867, 51.972012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.998116, 39.044598, 51.056965>,  <35.642735, 38.530048, 51.539051>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.998116, 39.044598, 51.056965> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.719845, 39.331013, 51.033886>,  <35.552883, 39.502861, 51.020039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.719845, 39.331013, 51.033886>,  <35.998116, 39.044598, 51.056965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.719845, 39.331013, 51.033886> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088866, -0.165487, -0.982200,
		-0.712840, -0.678164, 0.178756,
		-0.695674, 0.716036, -0.057700,
		35.511143, 39.545822, 51.016575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.358406, 38.722599, 50.715115>,  <35.998116, 39.044598, 51.056965>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.358406, 38.722599, 50.715115> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.381924, 39.116760, 50.651203>,  <35.396034, 39.353256, 50.612854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.381924, 39.116760, 50.651203>,  <35.358406, 38.722599, 50.715115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.381924, 39.116760, 50.651203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111883, -0.152546, -0.981943,
		-0.991981, 0.075605, 0.101281,
		0.058790, 0.985400, -0.159782,
		35.399559, 39.412380, 50.603268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.885975, 38.805443, 50.166962>,  <35.358406, 38.722599, 50.715115>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.885975, 38.805443, 50.166962> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.117977, 39.131275, 50.169937>,  <35.257179, 39.326775, 50.171722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.117977, 39.131275, 50.169937>,  <34.885975, 38.805443, 50.166962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.117977, 39.131275, 50.169937> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091152, 0.073972, -0.993086,
		-0.809499, 0.575314, 0.117155,
		0.580002, 0.814581, 0.007439,
		35.291977, 39.375648, 50.172169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.558838, 39.312260, 49.744522>,  <34.885975, 38.805443, 50.166962>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.558838, 39.312260, 49.744522> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.948215, 39.403831, 49.744221>,  <35.181843, 39.458775, 49.744041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.948215, 39.403831, 49.744221>,  <34.558838, 39.312260, 49.744522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.948215, 39.403831, 49.744221> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024199, 0.099620, -0.994731,
		-0.227645, 0.968333, 0.102514,
		0.973443, 0.228927, -0.000754,
		35.240250, 39.472511, 49.743996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.600399, 39.749985, 49.176983>,  <34.558838, 39.312260, 49.744522>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.600399, 39.749985, 49.176983> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.978584, 39.645802, 49.255234>,  <35.205494, 39.583290, 49.302185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.978584, 39.645802, 49.255234>,  <34.600399, 39.749985, 49.176983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.978584, 39.645802, 49.255234> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244028, 0.168530, -0.955012,
		0.215774, 0.950662, 0.222897,
		0.945459, -0.260460, 0.195624,
		35.262222, 39.567665, 49.313919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.099564, 40.209541, 48.874882>,  <34.600399, 39.749985, 49.176983>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.099564, 40.209541, 48.874882> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.331169, 39.884087, 48.895805>,  <35.470135, 39.688812, 48.908360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.331169, 39.884087, 48.895805>,  <35.099564, 40.209541, 48.874882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.331169, 39.884087, 48.895805> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104686, 0.010564, -0.994449,
		0.808567, 0.581278, 0.091292,
		0.579016, -0.813636, 0.052310,
		35.504875, 39.639996, 48.911499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.581909, 40.310547, 48.318020>,  <35.099564, 40.209541, 48.874882>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.581909, 40.310547, 48.318020> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.682484, 39.931633, 48.397457>,  <35.742828, 39.704285, 48.445118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.682484, 39.931633, 48.397457>,  <35.581909, 40.310547, 48.318020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.682484, 39.931633, 48.397457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073701, -0.185848, -0.979811,
		0.965063, 0.260999, 0.023086,
		0.251439, -0.947280, 0.198591,
		35.757915, 39.647449, 48.457035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.248554, 40.208546, 48.084972>,  <35.581909, 40.310547, 48.318020>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.248554, 40.208546, 48.084972> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.078190, 39.847351, 48.107632>,  <35.975971, 39.630634, 48.121227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.078190, 39.847351, 48.107632>,  <36.248554, 40.208546, 48.084972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.078190, 39.847351, 48.107632> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141231, -0.128198, -0.981641,
		0.893672, -0.410095, 0.182132,
		-0.425915, -0.902988, 0.056649,
		35.950417, 39.576454, 48.124626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.738785, 39.857334, 47.779415>,  <36.248554, 40.208546, 48.084972>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.738785, 39.857334, 47.779415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.412319, 39.626209, 47.778038>,  <36.216438, 39.487534, 47.777210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.412319, 39.626209, 47.778038>,  <36.738785, 39.857334, 47.779415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.412319, 39.626209, 47.778038> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110347, -0.150016, -0.982506,
		0.567185, -0.802267, 0.186197,
		-0.816165, -0.577809, -0.003441,
		36.167469, 39.452866, 47.777004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.956524, 39.374790, 47.332214>,  <36.738785, 39.857334, 47.779415>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.956524, 39.374790, 47.332214> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.556652, 39.364719, 47.331299>,  <36.316730, 39.358677, 47.330750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.556652, 39.364719, 47.331299>,  <36.956524, 39.374790, 47.332214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.556652, 39.364719, 47.331299> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010617, -0.336075, -0.941775,
		0.022947, -0.941498, 0.336235,
		-0.999680, -0.025181, -0.002284,
		36.256748, 39.357166, 47.330612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.716190, 38.763199, 47.048298>,  <36.956524, 39.374790, 47.332214>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.716190, 38.763199, 47.048298> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.415630, 39.020607, 46.989956>,  <36.235294, 39.175053, 46.954952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.415630, 39.020607, 46.989956>,  <36.716190, 38.763199, 47.048298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.415630, 39.020607, 46.989956> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048258, -0.166860, -0.984799,
		-0.658076, -0.747020, 0.094324,
		-0.751404, 0.643520, -0.145856,
		36.190208, 39.213661, 46.946198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.381271, 38.466381, 46.506676>,  <36.716190, 38.763199, 47.048298>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.381271, 38.466381, 46.506676> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.207424, 38.826626, 46.506756>,  <36.103115, 39.042774, 46.506802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.207424, 38.826626, 46.506756>,  <36.381271, 38.466381, 46.506676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.207424, 38.826626, 46.506756> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124262, -0.059751, -0.990449,
		-0.892000, -0.430495, 0.137881,
		-0.434622, 0.900613, 0.000196,
		36.077038, 39.096809, 46.506813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.565445, 38.527771, 46.353760>,  <36.381271, 38.466381, 46.506676>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.565445, 38.527771, 46.353760> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.756641, 38.865643, 46.257397>,  <35.871361, 39.068367, 46.199581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.756641, 38.865643, 46.257397>,  <35.565445, 38.527771, 46.353760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.756641, 38.865643, 46.257397> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126958, -0.204944, -0.970505,
		-0.869141, 0.494478, 0.009278,
		0.477992, 0.844683, -0.240903,
		35.900040, 39.119049, 46.185127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.926476, 38.835007, 46.379379>,  <35.565445, 38.527771, 46.353760>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.926476, 38.835007, 46.379379> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.559307, 38.723251, 46.266697>,  <34.339005, 38.656197, 46.199085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.559307, 38.723251, 46.266697>,  <34.926476, 38.835007, 46.379379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.559307, 38.723251, 46.266697> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380513, 0.418807, 0.824507,
		-0.112379, 0.864026, -0.490744,
		-0.917922, -0.279391, -0.281708,
		34.283932, 38.639435, 46.182186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.527245, 39.325432, 46.719570>,  <34.926476, 38.835007, 46.379379>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.527245, 39.325432, 46.719570> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.269699, 39.041656, 46.604939>,  <34.115170, 38.871391, 46.536160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.269699, 39.041656, 46.604939>,  <34.527245, 39.325432, 46.719570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.269699, 39.041656, 46.604939> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578925, 0.206808, 0.788718,
		-0.500281, 0.673738, -0.543870,
		-0.643866, -0.709441, -0.286582,
		34.076538, 38.828823, 46.518963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.820358, 39.648792, 46.640392>,  <34.527245, 39.325432, 46.719570>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.820358, 39.648792, 46.640392> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.783730, 39.255741, 46.704952>,  <33.761753, 39.019909, 46.743687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.783730, 39.255741, 46.704952>,  <33.820358, 39.648792, 46.640392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.783730, 39.255741, 46.704952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606255, 0.183595, 0.773788,
		-0.789981, -0.026993, -0.612537,
		-0.091572, -0.982631, 0.161401,
		33.756256, 38.960953, 46.753372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.119743, 39.522228, 46.850048>,  <33.820358, 39.648792, 46.640392>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.119743, 39.522228, 46.850048> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.276878, 39.170303, 46.957085>,  <33.371159, 38.959148, 47.021305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.276878, 39.170303, 46.957085>,  <33.119743, 39.522228, 46.850048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.276878, 39.170303, 46.957085> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591258, -0.018776, 0.806264,
		-0.704338, -0.474948, -0.527573,
		0.392839, -0.879814, 0.267592,
		33.394730, 38.906361, 47.037361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.489357, 39.080540, 46.974411>,  <33.119743, 39.522228, 46.850048>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.489357, 39.080540, 46.974411> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.807468, 38.929230, 47.163910>,  <32.998337, 38.838444, 47.277611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.807468, 38.929230, 47.163910>,  <32.489357, 39.080540, 46.974411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.807468, 38.929230, 47.163910> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509386, 0.006771, 0.860511,
		-0.328715, -0.925670, -0.187301,
		0.795281, -0.378272, 0.473749,
		33.046051, 38.815750, 47.306034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.205952, 38.539474, 47.424831>,  <32.489357, 39.080540, 46.974411>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.205952, 38.539474, 47.424831> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.563770, 38.644981, 47.569172>,  <32.778461, 38.708286, 47.655777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.563770, 38.644981, 47.569172>,  <32.205952, 38.539474, 47.424831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.563770, 38.644981, 47.569172> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406805, 0.145944, 0.901782,
		0.185203, -0.953480, 0.237858,
		0.894545, 0.263774, 0.360851,
		32.832134, 38.724113, 47.677429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.270386, 38.151005, 48.059280>,  <32.205952, 38.539474, 47.424831>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.270386, 38.151005, 48.059280> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.524506, 38.457645, 48.096611>,  <32.676979, 38.641632, 48.119007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.524506, 38.457645, 48.096611>,  <32.270386, 38.151005, 48.059280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.524506, 38.457645, 48.096611> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344927, 0.173552, 0.922445,
		0.690956, -0.618219, 0.374680,
		0.635299, 0.766606, 0.093323,
		32.715096, 38.687626, 48.124607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.254684, 37.420887, 48.447983>,  <32.270386, 38.151005, 48.059280>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.254684, 37.420887, 48.447983> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.903055, 37.239162, 48.505726>,  <31.692080, 37.130127, 48.540371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.903055, 37.239162, 48.505726>,  <32.254684, 37.420887, 48.447983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.903055, 37.239162, 48.505726> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019101, -0.336148, -0.941615,
		0.476313, -0.824987, 0.304175,
		-0.879068, -0.454314, 0.144354,
		31.639334, 37.102867, 48.549030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.384537, 36.692078, 48.246071>,  <32.254684, 37.420887, 48.447983>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.384537, 36.692078, 48.246071> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.984619, 36.689213, 48.238415>,  <31.744669, 36.687496, 48.233822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.984619, 36.689213, 48.238415>,  <32.384537, 36.692078, 48.246071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.984619, 36.689213, 48.238415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020401, -0.403665, -0.914679,
		-0.001178, -0.914879, 0.403727,
		-0.999791, -0.007159, -0.019140,
		31.684681, 36.687065, 48.232674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.203381, 36.076118, 47.922489>,  <32.384537, 36.692078, 48.246071>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.203381, 36.076118, 47.922489> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.895121, 36.324375, 47.864658>,  <31.710165, 36.473331, 47.829960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.895121, 36.324375, 47.864658>,  <32.203381, 36.076118, 47.922489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.895121, 36.324375, 47.864658> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005653, -0.220200, -0.975438,
		-0.637236, -0.752537, 0.166188,
		-0.770648, 0.620645, -0.144574,
		31.663927, 36.510571, 47.821285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.720903, 35.686394, 47.715084>,  <32.203381, 36.076118, 47.922489>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.720903, 35.686394, 47.715084> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.593939, 36.046658, 47.596382>,  <31.517759, 36.262817, 47.525162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.593939, 36.046658, 47.596382>,  <31.720903, 35.686394, 47.715084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.593939, 36.046658, 47.596382> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045732, -0.327112, -0.943879,
		-0.947185, -0.286027, 0.145018,
		-0.317412, 0.900659, -0.296755,
		31.498714, 36.316856, 47.507355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.099751, 35.537525, 47.278973>,  <31.720903, 35.686394, 47.715084>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.099751, 35.537525, 47.278973> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.246450, 35.892803, 47.168262>,  <31.334471, 36.105968, 47.101837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.246450, 35.892803, 47.168262>,  <31.099751, 35.537525, 47.278973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.246450, 35.892803, 47.168262> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161337, -0.232271, -0.959177,
		-0.916223, 0.396433, 0.058113,
		0.366751, 0.888195, -0.276771,
		31.356476, 36.159264, 47.085232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.732693, 35.793819, 46.649979>,  <31.099751, 35.537525, 47.278973>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.732693, 35.793819, 46.649979> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.066206, 36.014637, 46.652946>,  <31.266314, 36.147129, 46.654728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.066206, 36.014637, 46.652946>,  <30.732693, 35.793819, 46.649979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.066206, 36.014637, 46.652946> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115362, -0.161058, -0.980180,
		-0.539908, 0.818111, -0.197972,
		0.833781, 0.552045, 0.007423,
		31.316339, 36.180252, 46.655174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.672869, 36.355034, 46.114574>,  <30.732693, 35.793819, 46.649979>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.672869, 36.355034, 46.114574> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.056864, 36.266708, 46.183468>,  <31.287260, 36.213715, 46.224804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.056864, 36.266708, 46.183468>,  <30.672869, 36.355034, 46.114574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.056864, 36.266708, 46.183468> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184410, 0.035611, -0.982204,
		0.210749, 0.974666, 0.074907,
		0.959988, -0.220812, 0.172233,
		31.344860, 36.200466, 46.235138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<33.910660, 35.252579, 51.796692> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.862869, 35.649555, 51.807964>,  <33.834194, 35.887741, 51.814728>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.862869, 35.649555, 51.807964>,  <33.910660, 35.252579, 51.796692>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.862869, 35.649555, 51.807964> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979000, 0.122487, -0.162957,
		-0.165176, 0.008117, -0.986231,
		-0.119478, 0.992437, 0.028179,
		33.827026, 35.947285, 51.816418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.121292, 35.446617, 51.130112>,  <33.910660, 35.252579, 51.796692>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.121292, 35.446617, 51.130112> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.520519, 35.460350, 51.150864>,  <34.760056, 35.468590, 51.163315>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.520519, 35.460350, 51.150864>,  <34.121292, 35.446617, 51.130112>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.520519, 35.460350, 51.150864> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062106, -0.597640, -0.799356,
		0.003558, 0.801029, -0.598615,
		0.998063, 0.034333, 0.051875,
		34.819939, 35.470650, 51.166428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.449837, 35.653915, 50.437305>,  <34.121292, 35.446617, 51.130112>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.449837, 35.653915, 50.437305> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.757954, 35.465813, 50.609589>,  <34.942825, 35.352951, 50.712959>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.757954, 35.465813, 50.609589>,  <34.449837, 35.653915, 50.437305>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.757954, 35.465813, 50.609589> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157311, -0.514411, -0.842992,
		0.617977, 0.717108, -0.322273,
		0.770297, -0.470253, 0.430703,
		34.989044, 35.324738, 50.738800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.748173, 35.430790, 49.933338>,  <34.449837, 35.653915, 50.437305>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.748173, 35.430790, 49.933338> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.960171, 35.225094, 50.203053>,  <35.087368, 35.101677, 50.364883>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.960171, 35.225094, 50.203053>,  <34.748173, 35.430790, 49.933338>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.960171, 35.225094, 50.203053> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341453, -0.598429, -0.724771,
		0.776221, 0.614360, -0.141573,
		0.529992, -0.514242, 0.674288,
		35.119167, 35.070820, 50.405338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.336452, 35.426441, 49.702156>,  <34.748173, 35.430790, 49.933338>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.336452, 35.426441, 49.702156> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.350388, 35.115677, 49.953617>,  <35.358749, 34.929218, 50.104492>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.350388, 35.115677, 49.953617>,  <35.336452, 35.426441, 49.702156>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.350388, 35.115677, 49.953617> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354518, -0.578516, -0.734600,
		0.934400, 0.248457, 0.255275,
		0.034836, -0.776909, 0.628648,
		35.360840, 34.882603, 50.142212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.976227, 35.043865, 49.501522>,  <35.336452, 35.426441, 49.702156>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.976227, 35.043865, 49.501522> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.728367, 34.792805, 49.690029>,  <35.579651, 34.642170, 49.803135>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.728367, 34.792805, 49.690029>,  <35.976227, 35.043865, 49.501522>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.728367, 34.792805, 49.690029> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043879, -0.627195, -0.777625,
		0.783653, -0.461175, 0.416180,
		-0.619647, -0.627650, 0.471267,
		35.542473, 34.604511, 49.831409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.273666, 34.304619, 49.530384>,  <35.976227, 35.043865, 49.501522>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.273666, 34.304619, 49.530384> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.884171, 34.226543, 49.577263>,  <35.650475, 34.179699, 49.605389>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.884171, 34.226543, 49.577263>,  <36.273666, 34.304619, 49.530384>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.884171, 34.226543, 49.577263> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025227, -0.604102, -0.796508,
		0.226264, -0.772635, 0.593162,
		-0.973739, -0.195185, 0.117195,
		35.592049, 34.167988, 49.612423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.222588, 33.591206, 49.472263>,  <36.273666, 34.304619, 49.530384>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.222588, 33.591206, 49.472263> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.865120, 33.754589, 49.397945>,  <35.650639, 33.852619, 49.353355>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.865120, 33.754589, 49.397945>,  <36.222588, 33.591206, 49.472263>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.865120, 33.754589, 49.397945> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010519, -0.433010, -0.901328,
		-0.448617, -0.803529, 0.391261,
		-0.893663, 0.408466, -0.185803,
		35.597019, 33.877125, 49.342205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.875763, 33.070538, 49.370445>,  <36.222588, 33.591206, 49.472263>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.875763, 33.070538, 49.370445> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.631584, 33.335335, 49.196491>,  <35.485077, 33.494213, 49.092121>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.631584, 33.335335, 49.196491>,  <35.875763, 33.070538, 49.370445>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.631584, 33.335335, 49.196491> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064143, -0.505933, -0.860185,
		-0.789459, -0.552989, 0.266380,
		-0.610443, 0.661994, -0.434884,
		35.448452, 33.533932, 49.066025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.343254, 32.701679, 48.790508>,  <35.875763, 33.070538, 49.370445>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.343254, 32.701679, 48.790508> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.332390, 33.097218, 48.731941>,  <35.325871, 33.334541, 48.696800>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.332390, 33.097218, 48.731941>,  <35.343254, 32.701679, 48.790508>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.332390, 33.097218, 48.731941> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006489, -0.146294, -0.989220,
		-0.999610, -0.027820, -0.002443,
		-0.027162, 0.988850, -0.146418,
		35.324242, 33.393871, 48.688015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.792664, 32.820469, 48.362213>,  <35.343254, 32.701679, 48.790508>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.792664, 32.820469, 48.362213> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.050030, 33.126232, 48.345715>,  <35.204449, 33.309689, 48.335815>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.050030, 33.126232, 48.345715>,  <34.792664, 32.820469, 48.362213>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.050030, 33.126232, 48.345715> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041939, -0.018596, -0.998947,
		-0.764371, 0.644463, 0.020093,
		0.643411, 0.764409, -0.041243,
		35.243053, 33.355556, 48.333344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.568943, 33.108383, 47.740257>,  <34.792664, 32.820469, 48.362213>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.568943, 33.108383, 47.740257> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.930740, 33.276463, 47.769444>,  <35.147820, 33.377312, 47.786953>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.930740, 33.276463, 47.769444>,  <34.568943, 33.108383, 47.740257>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.930740, 33.276463, 47.769444> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164755, -0.186467, -0.968548,
		-0.393378, 0.888067, -0.237888,
		0.904494, 0.420199, 0.072961,
		35.202087, 33.402523, 47.791332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.919209, 33.286594, 47.544765>,  <34.568943, 33.108383, 47.740257>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.919209, 33.286594, 47.544765> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.569450, 33.372829, 47.370888>,  <33.359596, 33.424568, 47.266563>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.569450, 33.372829, 47.370888>,  <33.919209, 33.286594, 47.544765>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.569450, 33.372829, 47.370888> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299329, 0.465423, 0.832936,
		0.381883, 0.858431, -0.342433,
		-0.874395, 0.215584, -0.434691,
		33.307133, 33.437504, 47.240479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.777985, 33.944443, 47.602898>,  <33.919209, 33.286594, 47.544765>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.777985, 33.944443, 47.602898> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.419827, 33.770473, 47.564716>,  <33.204933, 33.666092, 47.541805>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.419827, 33.770473, 47.564716>,  <33.777985, 33.944443, 47.602898>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.419827, 33.770473, 47.564716> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284985, 0.395032, 0.873346,
		-0.342126, 0.809194, -0.477655,
		-0.895396, -0.434919, -0.095458,
		33.151207, 33.639999, 47.536079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.299568, 34.496403, 47.750198>,  <33.777985, 33.944443, 47.602898>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.299568, 34.496403, 47.750198> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.117126, 34.145527, 47.810207>,  <33.007660, 33.935001, 47.846214>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.117126, 34.145527, 47.810207>,  <33.299568, 34.496403, 47.750198>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.117126, 34.145527, 47.810207> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285070, 0.303709, 0.909118,
		-0.843032, 0.371886, -0.388584,
		-0.456105, -0.877189, 0.150023,
		32.980293, 33.882370, 47.855213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.550957, 34.682468, 47.935711>,  <33.299568, 34.496403, 47.750198>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.550957, 34.682468, 47.935711> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.640976, 34.315353, 48.066559>,  <32.694988, 34.095085, 48.145069>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.640976, 34.315353, 48.066559>,  <32.550957, 34.682468, 47.935711>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.640976, 34.315353, 48.066559> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227179, 0.277056, 0.933611,
		-0.947493, -0.284425, -0.146151,
		0.225050, -0.917792, 0.327124,
		32.708492, 34.040016, 48.164696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.956049, 34.467632, 48.252510>,  <32.550957, 34.682468, 47.935711>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.956049, 34.467632, 48.252510> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.252525, 34.242352, 48.398628>,  <32.430412, 34.107182, 48.486301>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.252525, 34.242352, 48.398628>,  <31.956049, 34.467632, 48.252510>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.252525, 34.242352, 48.398628> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396084, 0.072448, 0.915352,
		-0.541992, -0.823138, -0.169378,
		0.741190, -0.563200, 0.365298,
		32.474884, 34.073391, 48.508217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.687504, 33.921223, 48.631889>,  <31.956049, 34.467632, 48.252510>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.687504, 33.921223, 48.631889> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.059475, 33.939568, 48.777840>,  <32.282658, 33.950573, 48.865410>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.059475, 33.939568, 48.777840>,  <31.687504, 33.921223, 48.631889>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.059475, 33.939568, 48.777840> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367612, 0.142752, 0.918958,
		-0.009946, -0.988696, 0.149606,
		0.929926, 0.045858, 0.364876,
		32.338451, 33.953323, 48.887302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.590265, 33.727444, 49.302727>,  <31.687504, 33.921223, 48.631889>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.590265, 33.727444, 49.302727> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.953438, 33.889194, 49.346806>,  <32.171341, 33.986244, 49.373253>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.953438, 33.889194, 49.346806>,  <31.590265, 33.727444, 49.302727>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.953438, 33.889194, 49.346806> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231586, 0.264890, 0.936056,
		0.349331, -0.875393, 0.334149,
		0.907930, 0.404378, 0.110194,
		32.225819, 34.010506, 49.379864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.881330, 33.467957, 49.947830>,  <31.590265, 33.727444, 49.302727>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.881330, 33.467957, 49.947830> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.096413, 33.793468, 49.859619>,  <32.225464, 33.988777, 49.806690>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.096413, 33.793468, 49.859619>,  <31.881330, 33.467957, 49.947830>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.096413, 33.793468, 49.859619> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058298, 0.296822, 0.953152,
		0.841114, -0.499659, 0.207045,
		0.537707, 0.813780, -0.220532,
		32.257725, 34.037601, 49.793461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.238903, 33.543949, 50.495605>,  <31.881330, 33.467957, 49.947830>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.238903, 33.543949, 50.495605> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.283585, 33.901062, 50.321037>,  <32.310394, 34.115330, 50.216297>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.283585, 33.901062, 50.321037>,  <32.238903, 33.543949, 50.495605>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.283585, 33.901062, 50.321037> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109137, 0.425495, 0.898356,
		0.987731, -0.147980, -0.049906,
		0.111704, 0.892780, -0.436424,
		32.317097, 34.168896, 50.190109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.646507, 33.917652, 50.888691>,  <32.238903, 33.543949, 50.495605>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.646507, 33.917652, 50.888691> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.483639, 34.223454, 50.688793>,  <32.385918, 34.406933, 50.568855>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.483639, 34.223454, 50.688793>,  <32.646507, 33.917652, 50.888691>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.483639, 34.223454, 50.688793> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117580, 0.498726, 0.858748,
		0.905751, 0.408419, -0.113178,
		-0.407173, 0.764504, -0.499743,
		32.361488, 34.452805, 50.538872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.971119, 34.558651, 51.002686>,  <32.646507, 33.917652, 50.888691>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.971119, 34.558651, 51.002686> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.607456, 34.691883, 50.902695>,  <32.389259, 34.771824, 50.842701>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.607456, 34.691883, 50.902695>,  <32.971119, 34.558651, 51.002686>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.607456, 34.691883, 50.902695> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004085, 0.593094, 0.805123,
		0.416430, 0.733006, -0.537856,
		-0.909159, 0.333080, -0.249977,
		32.334709, 34.791809, 50.827702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.909023, 35.303078, 51.274879>,  <32.971119, 34.558651, 51.002686>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.909023, 35.303078, 51.274879> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.520344, 35.241505, 51.203205>,  <32.287136, 35.204559, 51.160198>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.520344, 35.241505, 51.203205>,  <32.909023, 35.303078, 51.274879>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.520344, 35.241505, 51.203205> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234839, 0.547293, 0.803319,
		-0.025590, 0.822663, -0.567953,
		-0.971697, -0.153934, -0.179188,
		32.228836, 35.195324, 51.149448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.562931, 36.009880, 51.306145>,  <32.909023, 35.303078, 51.274879>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.562931, 36.009880, 51.306145> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.305763, 35.714455, 51.387318>,  <32.151463, 35.537201, 51.436024>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.305763, 35.714455, 51.387318>,  <32.562931, 36.009880, 51.306145>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.305763, 35.714455, 51.387318> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152252, 0.382895, 0.911159,
		-0.750653, 0.554900, -0.358617,
		-0.642915, -0.738564, 0.202937,
		32.112888, 35.492886, 51.448200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.968325, 36.331299, 51.627449>,  <32.562931, 36.009880, 51.306145>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.968325, 36.331299, 51.627449> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.916809, 35.946850, 51.725147>,  <31.885900, 35.716179, 51.783768>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.916809, 35.946850, 51.725147>,  <31.968325, 36.331299, 51.627449>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.916809, 35.946850, 51.725147> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153720, 0.262667, 0.952563,
		-0.979685, 0.085134, -0.181572,
		-0.128788, -0.961123, 0.244245,
		31.878172, 35.658512, 51.798420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.231123, 36.325153, 51.266087>,  <31.968325, 36.331299, 51.627449>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.231123, 36.325153, 51.266087> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.178614, 36.720604, 51.295456>,  <31.147108, 36.957874, 51.313076>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.178614, 36.720604, 51.295456>,  <31.231123, 36.325153, 51.266087>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.178614, 36.720604, 51.295456> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065389, 0.082535, -0.994441,
		-0.989187, -0.125743, -0.075480,
		-0.131273, 0.988624, 0.073420,
		31.139231, 37.017193, 51.317482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.673819, 36.426781, 50.762890>,  <31.231123, 36.325153, 51.266087>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.673819, 36.426781, 50.762890> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.849964, 36.778755, 50.834217>,  <30.955650, 36.989941, 50.877014>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.849964, 36.778755, 50.834217>,  <30.673819, 36.426781, 50.762890>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.849964, 36.778755, 50.834217> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121537, 0.138363, -0.982896,
		-0.889556, 0.454502, -0.046015,
		0.440362, 0.879934, 0.178320,
		30.982073, 37.042736, 50.887714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.306248, 36.970051, 50.417553>,  <30.673819, 36.426781, 50.762890>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.306248, 36.970051, 50.417553> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.682064, 37.099758, 50.461567>,  <30.907555, 37.177582, 50.487976>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.682064, 37.099758, 50.461567>,  <30.306248, 36.970051, 50.417553>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.682064, 37.099758, 50.461567> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101009, 0.044603, -0.993885,
		-0.327194, 0.944913, 0.009153,
		0.939543, 0.324269, 0.110039,
		30.963926, 37.197041, 50.494579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.341797, 37.442577, 49.895042>,  <30.306248, 36.970051, 50.417553>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.341797, 37.442577, 49.895042> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.720852, 37.368458, 49.999077>,  <30.948286, 37.323986, 50.061497>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.720852, 37.368458, 49.999077>,  <30.341797, 37.442577, 49.895042>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.720852, 37.368458, 49.999077> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242615, -0.111831, -0.963655,
		0.207647, 0.976299, -0.061020,
		0.947639, -0.185296, 0.260087,
		31.005144, 37.312870, 50.077103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.690508, 37.941261, 49.491322>,  <30.341797, 37.442577, 49.895042>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.690508, 37.941261, 49.491322> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.943657, 37.652885, 49.604256>,  <31.095547, 37.479858, 49.672016>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.943657, 37.652885, 49.604256>,  <30.690508, 37.941261, 49.491322>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.943657, 37.652885, 49.604256> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373837, -0.034796, -0.926841,
		0.678025, 0.692119, 0.247494,
		0.632873, -0.720944, 0.282332,
		31.133518, 37.436604, 49.688957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.255756, 38.155895, 49.156834>,  <30.690508, 37.941261, 49.491322>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.255756, 38.155895, 49.156834> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.283381, 37.761532, 49.217785>,  <31.299955, 37.524914, 49.254356>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.283381, 37.761532, 49.217785>,  <31.255756, 38.155895, 49.156834>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.283381, 37.761532, 49.217785> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287346, -0.126615, -0.949421,
		0.955334, 0.109351, 0.274553,
		0.069058, -0.985906, 0.152381,
		31.304098, 37.465759, 49.263500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.766916, 37.902100, 48.840385>,  <31.255756, 38.155895, 49.156834>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.766916, 37.902100, 48.840385> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.564520, 37.559555, 48.881603>,  <31.443083, 37.354027, 48.906334>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.564520, 37.559555, 48.881603>,  <31.766916, 37.902100, 48.840385>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.564520, 37.559555, 48.881603> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077063, -0.163875, -0.983466,
		0.859091, -0.489682, 0.148913,
		-0.505989, -0.856362, 0.103047,
		31.412724, 37.302647, 48.912518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.455563, 38.043289, 48.791279>,  <31.766916, 37.902100, 48.840385>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.455563, 38.043289, 48.791279> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.585899, 38.407318, 48.688839>,  <32.664101, 38.625736, 48.627377>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.585899, 38.407318, 48.688839>,  <32.455563, 38.043289, 48.791279>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.585899, 38.407318, 48.688839> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268155, 0.348722, 0.898046,
		0.906597, -0.223950, 0.357670,
		0.325845, 0.910077, -0.256097,
		32.683651, 38.680340, 48.612011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.832539, 38.168663, 49.258156>,  <32.455563, 38.043289, 48.791279>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.832539, 38.168663, 49.258156> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.717545, 38.517036, 49.098740>,  <32.648548, 38.726059, 49.003090>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.717545, 38.517036, 49.098740>,  <32.832539, 38.168663, 49.258156>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.717545, 38.517036, 49.098740> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072623, 0.395085, 0.915769,
		0.955028, 0.292211, -0.050331,
		-0.287483, 0.870931, -0.398538,
		32.631298, 38.778316, 48.979179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.285423, 38.748981, 49.561459>,  <32.832539, 38.168663, 49.258156>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.285423, 38.748981, 49.561459> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.961525, 38.932728, 49.415424>,  <32.767185, 39.042976, 49.327805>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.961525, 38.932728, 49.415424>,  <33.285423, 38.748981, 49.561459>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.961525, 38.932728, 49.415424> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114042, 0.487122, 0.865856,
		0.575591, 0.742760, -0.342058,
		-0.809747, 0.459370, -0.365088,
		32.718601, 39.070538, 49.305897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.400337, 39.434746, 49.843521>,  <33.285423, 38.748981, 49.561459>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.400337, 39.434746, 49.843521> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.011887, 39.426067, 49.748489>,  <32.778816, 39.420860, 49.691471>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.011887, 39.426067, 49.748489>,  <33.400337, 39.434746, 49.843521>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.011887, 39.426067, 49.748489> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209909, 0.550942, 0.807713,
		0.113368, 0.834261, -0.539589,
		-0.971126, -0.021696, -0.237578,
		32.720551, 39.419559, 49.677216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.173241, 40.088642, 49.913609>,  <33.400337, 39.434746, 49.843521>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.173241, 40.088642, 49.913609> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.823605, 39.894341, 49.912693>,  <32.613823, 39.777760, 49.912144>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.823605, 39.894341, 49.912693>,  <33.173241, 40.088642, 49.913609>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.823605, 39.894341, 49.912693> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309794, 0.553807, 0.772869,
		-0.374156, 0.676268, -0.634562,
		-0.874091, -0.485757, -0.002293,
		32.561378, 39.748615, 49.912006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.696701, 40.646084, 50.060234>,  <33.173241, 40.088642, 49.913609>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.696701, 40.646084, 50.060234> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.492744, 40.316216, 50.158146>,  <32.370369, 40.118294, 50.216892>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.492744, 40.316216, 50.158146>,  <32.696701, 40.646084, 50.060234>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.492744, 40.316216, 50.158146> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457487, 0.500938, 0.734689,
		-0.728500, 0.262629, -0.632703,
		-0.509896, -0.824674, 0.244784,
		32.339775, 40.068813, 50.231583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.114204, 40.846657, 50.214382>,  <32.696701, 40.646084, 50.060234>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.114204, 40.846657, 50.214382> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.084133, 40.482006, 50.376019>,  <32.066090, 40.263218, 50.473000>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.084133, 40.482006, 50.376019>,  <32.114204, 40.846657, 50.214382>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.084133, 40.482006, 50.376019> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386722, 0.400179, 0.830845,
		-0.919127, -0.093808, -0.382630,
		-0.075181, -0.911623, 0.404093,
		32.061581, 40.208519, 50.497246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.389074, 40.703434, 50.434765>,  <32.114204, 40.846657, 50.214382>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.389074, 40.703434, 50.434765> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.639032, 40.483334, 50.656300>,  <31.789007, 40.351273, 50.789219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.639032, 40.483334, 50.656300>,  <31.389074, 40.703434, 50.434765>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.639032, 40.483334, 50.656300> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283235, 0.501281, 0.817615,
		-0.727518, -0.667790, 0.157399,
		0.624897, -0.550249, 0.553833,
		31.826502, 40.318260, 50.822449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.027426, 40.788807, 50.977974>,  <31.389074, 40.703434, 50.434765>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.027426, 40.788807, 50.977974> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.376230, 40.644306, 51.110088>,  <31.585512, 40.557606, 51.189358>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.376230, 40.644306, 51.110088>,  <31.027426, 40.788807, 50.977974>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.376230, 40.644306, 51.110088> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071040, 0.574223, 0.815611,
		-0.484303, -0.734686, 0.475066,
		0.872012, -0.361254, 0.330290,
		31.637835, 40.535931, 51.209175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.579987, 36.624409, 35.704876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.833843, 36.382408, 35.897209>,  <35.986156, 36.237206, 36.012608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.833843, 36.382408, 35.897209>,  <35.579987, 36.624409, 35.704876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.833843, 36.382408, 35.897209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358357, 0.320859, 0.876715,
		-0.684695, -0.728711, -0.013177,
		0.634644, -0.605005, 0.480829,
		36.024235, 36.200905, 36.041458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.233055, 36.130005, 36.062817>,  <35.579987, 36.624409, 35.704876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.233055, 36.130005, 36.062817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.577267, 36.188839, 36.257900>,  <35.783794, 36.224140, 36.374950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.577267, 36.188839, 36.257900>,  <35.233055, 36.130005, 36.062817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.577267, 36.188839, 36.257900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492581, -0.003754, 0.870259,
		0.129837, -0.989116, 0.069223,
		0.860527, 0.147090, 0.487707,
		35.835426, 36.232964, 36.404213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.247028, 35.500668, 36.537003>,  <35.233055, 36.130005, 36.062817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.247028, 35.500668, 36.537003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.506851, 35.768986, 36.680172>,  <35.662746, 35.929977, 36.766075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.506851, 35.768986, 36.680172>,  <35.247028, 35.500668, 36.537003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.506851, 35.768986, 36.680172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474948, -0.009621, 0.879961,
		0.593719, -0.741579, 0.312345,
		0.649555, 0.670797, 0.357924,
		35.701717, 35.970226, 36.787548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.476032, 35.219925, 37.227058>,  <35.247028, 35.500668, 36.537003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.476032, 35.219925, 37.227058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563705, 35.609463, 37.250977>,  <35.616310, 35.843185, 37.265327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563705, 35.609463, 37.250977>,  <35.476032, 35.219925, 37.227058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.563705, 35.609463, 37.250977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392454, 0.031889, 0.919218,
		0.893273, -0.224949, 0.389181,
		0.219187, 0.973849, 0.059796,
		35.629463, 35.901619, 37.268917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.565842, 35.296848, 37.996971>,  <35.476032, 35.219925, 37.227058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.565842, 35.296848, 37.996971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.529736, 35.673054, 37.865952>,  <35.508072, 35.898777, 37.787342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.529736, 35.673054, 37.865952>,  <35.565842, 35.296848, 37.996971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.529736, 35.673054, 37.865952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453877, 0.253899, 0.854126,
		0.886480, 0.225767, 0.403958,
		-0.090269, 0.940513, -0.327547,
		35.502655, 35.955208, 37.767689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.029816, 35.762325, 38.514297>,  <35.565842, 35.296848, 37.996971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.029816, 35.762325, 38.514297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.738667, 35.972206, 38.337708>,  <35.563976, 36.098133, 38.231754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.738667, 35.972206, 38.337708>,  <36.029816, 35.762325, 38.514297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.738667, 35.972206, 38.337708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390986, 0.211333, 0.895806,
		0.563325, 0.824640, 0.051326,
		-0.727870, 0.524698, -0.441472,
		35.520306, 36.129616, 38.205265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.024246, 36.352451, 38.962490>,  <36.029816, 35.762325, 38.514297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.024246, 36.352451, 38.962490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.668690, 36.344551, 38.779411>,  <35.455357, 36.339809, 38.669563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.668690, 36.344551, 38.779411>,  <36.024246, 36.352451, 38.962490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.668690, 36.344551, 38.779411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450919, 0.214151, 0.866494,
		0.080901, 0.976601, -0.199263,
		-0.888891, -0.019752, -0.457693,
		35.402023, 36.338627, 38.642105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.806538, 36.984257, 39.086243>,  <36.024246, 36.352451, 38.962490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.806538, 36.984257, 39.086243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.478634, 36.776375, 38.989998>,  <35.281891, 36.651646, 38.932251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.478634, 36.776375, 38.989998>,  <35.806538, 36.984257, 39.086243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.478634, 36.776375, 38.989998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467715, 0.365070, 0.804964,
		-0.330501, 0.772420, -0.542344,
		-0.819763, -0.519704, -0.240616,
		35.232704, 36.620464, 38.917812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.236969, 37.408669, 39.149227>,  <35.806538, 36.984257, 39.086243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.236969, 37.408669, 39.149227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.084930, 37.039516, 39.173958>,  <34.993710, 36.818024, 39.188797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.084930, 37.039516, 39.173958>,  <35.236969, 37.408669, 39.149227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.084930, 37.039516, 39.173958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517463, 0.267572, 0.812796,
		-0.766655, 0.276946, -0.579259,
		-0.380094, -0.922879, 0.061826,
		34.970901, 36.762653, 39.192505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.477932, 37.444912, 39.191425>,  <35.236969, 37.408669, 39.149227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.477932, 37.444912, 39.191425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.576096, 37.083145, 39.331024>,  <34.634995, 36.866085, 39.414783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.576096, 37.083145, 39.331024>,  <34.477932, 37.444912, 39.191425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.576096, 37.083145, 39.331024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624361, 0.127940, 0.770587,
		-0.741585, -0.407009, -0.533287,
		0.245407, -0.904420, 0.348999,
		34.649719, 36.811821, 39.435722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.886002, 37.100784, 39.343819>,  <34.477932, 37.444912, 39.191425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.886002, 37.100784, 39.343819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.166245, 36.932568, 39.574398>,  <34.334393, 36.831638, 39.712746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.166245, 36.932568, 39.574398>,  <33.886002, 37.100784, 39.343819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.166245, 36.932568, 39.574398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477820, 0.323475, 0.816732,
		-0.529936, -0.847648, 0.025686,
		0.700611, -0.420543, 0.576445,
		34.376427, 36.806404, 39.747330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.541992, 36.735016, 39.978073>,  <33.886002, 37.100784, 39.343819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.541992, 36.735016, 39.978073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.910393, 36.820679, 40.108242>,  <34.131432, 36.872078, 40.186344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.910393, 36.820679, 40.108242>,  <33.541992, 36.735016, 39.978073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.910393, 36.820679, 40.108242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388922, 0.457269, 0.799778,
		0.022472, -0.863158, 0.504433,
		0.920997, 0.214157, 0.325425,
		34.186691, 36.884926, 40.205868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.141747, 36.079071, 40.278259>,  <33.541992, 36.735016, 39.978073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.141747, 36.079071, 40.278259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.750950, 36.129425, 40.347134>,  <32.516472, 36.159637, 40.388458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.750950, 36.129425, 40.347134>,  <33.141747, 36.079071, 40.278259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.750950, 36.129425, 40.347134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207649, -0.376858, -0.902696,
		-0.048742, -0.917678, 0.394325,
		-0.976988, 0.125881, 0.172186,
		32.457855, 36.167191, 40.398788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.865158, 35.450420, 40.110931>,  <33.141747, 36.079071, 40.278259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.865158, 35.450420, 40.110931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.565044, 35.714069, 40.090408>,  <32.384975, 35.872257, 40.078094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.565044, 35.714069, 40.090408>,  <32.865158, 35.450420, 40.110931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.565044, 35.714069, 40.090408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237620, -0.341278, -0.909432,
		-0.616937, -0.670140, 0.412676,
		-0.750283, 0.659123, -0.051308,
		32.339958, 35.911804, 40.075016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.202526, 35.110466, 39.949112>,  <32.865158, 35.450420, 40.110931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.202526, 35.110466, 39.949112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.081158, 35.475182, 39.838421>,  <32.008335, 35.694012, 39.772007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.081158, 35.475182, 39.838421>,  <32.202526, 35.110466, 39.949112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.081158, 35.475182, 39.838421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263214, -0.359321, -0.895325,
		-0.915780, -0.198824, 0.349021,
		-0.303423, 0.911788, -0.276726,
		31.990131, 35.748718, 39.755402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.637156, 35.001434, 39.591770>,  <32.202526, 35.110466, 39.949112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.637156, 35.001434, 39.591770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.724171, 35.372616, 39.470726>,  <31.776381, 35.595325, 39.398098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.724171, 35.372616, 39.470726>,  <31.637156, 35.001434, 39.591770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.724171, 35.372616, 39.470726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181062, -0.266288, -0.946735,
		-0.959111, 0.260742, 0.110090,
		0.217538, 0.927957, -0.302610,
		31.789433, 35.651005, 39.379944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.073040, 35.214203, 39.310650>,  <31.637156, 35.001434, 39.591770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.073040, 35.214203, 39.310650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.385544, 35.419476, 39.168507>,  <31.573046, 35.542641, 39.083221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.385544, 35.419476, 39.168507>,  <31.073040, 35.214203, 39.310650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.385544, 35.419476, 39.168507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328621, -0.145874, -0.933129,
		-0.530702, 0.845793, 0.054677,
		0.781258, 0.513182, -0.355360,
		31.619921, 35.573429, 39.061897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.736994, 35.672848, 38.865368>,  <31.073040, 35.214203, 39.310650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.736994, 35.672848, 38.865368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.121817, 35.666077, 38.756443>,  <31.352711, 35.662014, 38.691086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.121817, 35.666077, 38.756443>,  <30.736994, 35.672848, 38.865368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.121817, 35.666077, 38.756443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272838, -0.063994, -0.959929,
		-0.001174, 0.997806, -0.066186,
		0.962059, -0.016931, -0.272315,
		31.410435, 35.660995, 38.674747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.791409, 36.096985, 38.233280>,  <30.736994, 35.672848, 38.865368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.791409, 36.096985, 38.233280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.097187, 35.839108, 38.233627>,  <31.280653, 35.684383, 38.233833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.097187, 35.839108, 38.233627>,  <30.791409, 36.096985, 38.233280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.097187, 35.839108, 38.233627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129977, -0.155433, -0.979258,
		0.631451, 0.748476, -0.202615,
		0.764444, -0.644689, 0.000863,
		31.326521, 35.645702, 38.233887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.028412, 36.324287, 37.746174>,  <30.791409, 36.096985, 38.233280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.028412, 36.324287, 37.746174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.259502, 35.999683, 37.781242>,  <31.398157, 35.804920, 37.802284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.259502, 35.999683, 37.781242>,  <31.028412, 36.324287, 37.746174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.259502, 35.999683, 37.781242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131820, -0.198765, -0.971142,
		0.805514, 0.549499, -0.221805,
		0.577728, -0.811507, 0.087673,
		31.432821, 35.756229, 37.807545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.582644, 36.356003, 37.143879>,  <31.028412, 36.324287, 37.746174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.582644, 36.356003, 37.143879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.540573, 35.976711, 37.263748>,  <31.515331, 35.749138, 37.335670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.540573, 35.976711, 37.263748>,  <31.582644, 36.356003, 37.143879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.540573, 35.976711, 37.263748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013639, -0.302691, -0.952991,
		0.994360, -0.096146, 0.044769,
		-0.105177, -0.948227, 0.299672,
		31.509020, 35.692242, 37.353649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.033638, 35.917473, 36.825928>,  <31.582644, 36.356003, 37.143879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.033638, 35.917473, 36.825928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.746115, 35.653057, 36.912037>,  <31.573601, 35.494408, 36.963703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.746115, 35.653057, 36.912037>,  <32.033638, 35.917473, 36.825928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.746115, 35.653057, 36.912037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142418, -0.163072, -0.976281,
		0.680466, -0.732416, 0.023073,
		-0.718807, -0.661040, 0.215274,
		31.530472, 35.454746, 36.976620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.213985, 35.330490, 36.374184>,  <32.033638, 35.917473, 36.825928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.213985, 35.330490, 36.374184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.841883, 35.235264, 36.485855>,  <31.618620, 35.178127, 36.552856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.841883, 35.235264, 36.485855>,  <32.213985, 35.330490, 36.374184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.841883, 35.235264, 36.485855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263387, -0.096422, -0.959859,
		0.255429, -0.966451, 0.026994,
		-0.930260, -0.238066, 0.279179,
		31.562805, 35.163845, 36.569611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.124676, 34.630970, 36.175644>,  <32.213985, 35.330490, 36.374184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.124676, 34.630970, 36.175644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.776562, 34.827400, 36.190876>,  <31.567694, 34.945259, 36.200016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.776562, 34.827400, 36.190876>,  <32.124676, 34.630970, 36.175644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.776562, 34.827400, 36.190876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257445, -0.387601, -0.885148,
		-0.419921, -0.780131, 0.463748,
		-0.870281, 0.491082, 0.038079,
		31.515476, 34.974724, 36.202301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.531050, 34.178654, 36.049633>,  <32.124676, 34.630970, 36.175644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.531050, 34.178654, 36.049633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.403662, 34.545120, 35.952297>,  <31.327229, 34.764999, 35.893894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.403662, 34.545120, 35.952297>,  <31.531050, 34.178654, 36.049633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.403662, 34.545120, 35.952297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388905, -0.360388, -0.847864,
		-0.864483, -0.175382, 0.471075,
		-0.318470, 0.916167, -0.243342,
		31.308121, 34.819969, 35.879295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.101562, 33.969090, 35.661507>,  <31.531050, 34.178654, 36.049633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.101562, 33.969090, 35.661507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.119146, 34.356770, 35.564579>,  <31.129698, 34.589378, 35.506424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.119146, 34.356770, 35.564579>,  <31.101562, 33.969090, 35.661507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.119146, 34.356770, 35.564579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214850, -0.227705, -0.949731,
		-0.975657, 0.093814, 0.198223,
		0.043961, 0.969200, -0.242318,
		31.132336, 34.647530, 35.491882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.394604, 33.455482, 36.051838>,  <31.101562, 33.969090, 35.661507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.394604, 33.455482, 36.051838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.362797, 33.088886, 36.208668>,  <31.343712, 32.868927, 36.302765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.362797, 33.088886, 36.208668>,  <31.394604, 33.455482, 36.051838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.362797, 33.088886, 36.208668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752647, 0.202694, 0.626448,
		-0.653605, 0.344908, 0.673676,
		-0.079517, -0.916490, 0.392076,
		31.338942, 32.813938, 36.326290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.361713, 33.345680, 36.825668>,  <31.394604, 33.455482, 36.051838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.361713, 33.345680, 36.825668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.516949, 33.009785, 36.673756>,  <31.610090, 32.808247, 36.582607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.516949, 33.009785, 36.673756>,  <31.361713, 33.345680, 36.825668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.516949, 33.009785, 36.673756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741384, 0.039660, 0.669908,
		-0.547482, -0.541547, 0.637957,
		0.388088, -0.839734, -0.379781,
		31.633375, 32.757866, 36.559822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.262413, 32.910305, 37.381832>,  <31.361713, 33.345680, 36.825668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.262413, 32.910305, 37.381832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.541613, 32.890762, 37.096058>,  <31.709131, 32.879036, 36.924595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.541613, 32.890762, 37.096058>,  <31.262413, 32.910305, 37.381832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.541613, 32.890762, 37.096058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715898, 0.023919, 0.697795,
		-0.017006, -0.998519, 0.051674,
		0.697998, -0.048860, -0.714431,
		31.751013, 32.876102, 36.881729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.937284, 32.816971, 37.402977>,  <31.262413, 32.910305, 37.381832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.937284, 32.816971, 37.402977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.269527, 33.016327, 37.303623>,  <32.468872, 33.135941, 37.244011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.269527, 33.016327, 37.303623>,  <31.937284, 32.816971, 37.402977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.269527, 33.016327, 37.303623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463785, -0.372273, 0.803938,
		0.308212, -0.782953, -0.540361,
		0.830607, 0.498395, -0.248383,
		32.518711, 33.165844, 37.229107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.406849, 32.426567, 37.667370>,  <31.937284, 32.816971, 37.402977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.406849, 32.426567, 37.667370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.627903, 32.752777, 37.598660>,  <32.760536, 32.948505, 37.557434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.627903, 32.752777, 37.598660>,  <32.406849, 32.426567, 37.667370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.627903, 32.752777, 37.598660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391564, -0.072128, 0.917319,
		0.735710, -0.574206, -0.359192,
		0.552638, 0.815528, -0.171773,
		32.793694, 32.997437, 37.547127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.149052, 32.219826, 37.850220>,  <32.406849, 32.426567, 37.667370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.149052, 32.219826, 37.850220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.049519, 32.602516, 37.910576>,  <32.989799, 32.832130, 37.946789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.049519, 32.602516, 37.910576>,  <33.149052, 32.219826, 37.850220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.049519, 32.602516, 37.910576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298813, -0.072357, 0.951565,
		0.921300, 0.281866, -0.267877,
		-0.248831, 0.956722, 0.150888,
		32.974869, 32.889534, 37.955841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.546005, 32.330498, 38.381435>,  <33.149052, 32.219826, 37.850220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.546005, 32.330498, 38.381435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.358501, 32.683544, 38.367256>,  <33.245998, 32.895370, 38.358749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.358501, 32.683544, 38.367256>,  <33.546005, 32.330498, 38.381435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.358501, 32.683544, 38.367256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242383, 0.167114, 0.955680,
		0.849420, 0.439392, -0.292267,
		-0.468759, 0.882614, -0.035449,
		33.217873, 32.948330, 38.356621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.950993, 32.748363, 38.661118>,  <33.546005, 32.330498, 38.381435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.950993, 32.748363, 38.661118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.609730, 32.955845, 38.683262>,  <33.404972, 33.080334, 38.696548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.609730, 32.955845, 38.683262>,  <33.950993, 32.748363, 38.661118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.609730, 32.955845, 38.683262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120993, 0.093542, 0.988236,
		0.507428, 0.849819, -0.142566,
		-0.853158, 0.518708, 0.055357,
		33.353783, 33.111458, 38.699867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.130421, 33.399021, 38.938248>,  <33.950993, 32.748363, 38.661118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.130421, 33.399021, 38.938248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.748692, 33.311649, 39.019791>,  <33.519653, 33.259228, 39.068718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.748692, 33.311649, 39.019791>,  <34.130421, 33.399021, 38.938248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.748692, 33.311649, 39.019791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148419, 0.245587, 0.957945,
		-0.259307, 0.944445, -0.201950,
		-0.954323, -0.218429, 0.203856,
		33.462395, 33.246120, 39.080948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.972614, 33.951839, 39.442841>,  <34.130421, 33.399021, 38.938248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.972614, 33.951839, 39.442841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.697380, 33.662655, 39.467716>,  <33.532238, 33.489143, 39.482639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.697380, 33.662655, 39.467716>,  <33.972614, 33.951839, 39.442841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.697380, 33.662655, 39.467716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027984, 0.059199, 0.997854,
		-0.725088, 0.688351, -0.020502,
		-0.688087, -0.722958, 0.062187,
		33.490955, 33.445766, 39.486374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.511383, 34.152409, 40.063465>,  <33.972614, 33.951839, 39.442841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.511383, 34.152409, 40.063465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.447830, 33.763329, 39.995811>,  <33.409698, 33.529881, 39.955219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.447830, 33.763329, 39.995811>,  <33.511383, 34.152409, 40.063465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.447830, 33.763329, 39.995811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012641, -0.169293, 0.985485,
		-0.987216, 0.158715, 0.014602,
		-0.158883, -0.972702, -0.169135,
		33.400166, 33.471519, 39.945072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.830082, 33.973743, 40.446861>,  <33.511383, 34.152409, 40.063465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.830082, 33.973743, 40.446861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.032291, 33.631550, 40.401985>,  <33.153618, 33.426231, 40.375061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.032291, 33.631550, 40.401985>,  <32.830082, 33.973743, 40.446861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.032291, 33.631550, 40.401985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076230, -0.173802, 0.981826,
		-0.859438, -0.487785, -0.153075,
		0.505525, -0.855487, -0.112189,
		33.183949, 33.374905, 40.368328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.619312, 33.533878, 40.970757>,  <32.830082, 33.973743, 40.446861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.619312, 33.533878, 40.970757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.948441, 33.330292, 40.869633>,  <33.145920, 33.208138, 40.808960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.948441, 33.330292, 40.869633>,  <32.619312, 33.533878, 40.970757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.948441, 33.330292, 40.869633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109849, -0.294013, 0.949468,
		-0.557579, -0.809015, -0.186011,
		0.822824, -0.508970, -0.252805,
		33.195290, 33.177601, 40.793793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.543770, 32.790985, 41.197643>,  <32.619312, 33.533878, 40.970757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.543770, 32.790985, 41.197643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.925632, 32.906422, 41.168407>,  <33.154751, 32.975685, 41.150864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.925632, 32.906422, 41.168407>,  <32.543770, 32.790985, 41.197643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.925632, 32.906422, 41.168407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105691, -0.099020, 0.989457,
		0.278316, -0.952317, -0.125032,
		0.954657, 0.288596, -0.073092,
		33.212029, 32.993000, 41.146481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.986351, 32.321301, 41.466682>,  <32.543770, 32.790985, 41.197643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.986351, 32.321301, 41.466682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.203915, 32.656448, 41.485165>,  <33.334454, 32.857536, 41.496254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.203915, 32.656448, 41.485165>,  <32.986351, 32.321301, 41.466682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.203915, 32.656448, 41.485165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159963, -0.157579, 0.974464,
		0.823756, -0.522630, -0.219737,
		0.543911, 0.837870, 0.046205,
		33.367088, 32.907810, 41.499027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.611061, 32.137703, 41.752220>,  <32.986351, 32.321301, 41.466682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.611061, 32.137703, 41.752220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.563213, 32.529408, 41.817627>,  <33.534504, 32.764431, 41.856869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.563213, 32.529408, 41.817627>,  <33.611061, 32.137703, 41.752220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.563213, 32.529408, 41.817627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251367, -0.129459, 0.959195,
		0.960472, 0.155840, -0.230668,
		-0.119619, 0.979262, 0.163515,
		33.527328, 32.823185, 41.866680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.025993, 32.306709, 42.282753>,  <33.611061, 32.137703, 41.752220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.025993, 32.306709, 42.282753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.815823, 32.647022, 42.278851>,  <33.689720, 32.851212, 42.276508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.815823, 32.647022, 42.278851>,  <34.025993, 32.306709, 42.282753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.815823, 32.647022, 42.278851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292325, 0.191275, 0.936995,
		0.799044, 0.489474, -0.349206,
		-0.525429, 0.850782, -0.009752,
		33.658195, 32.902256, 42.275925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.389759, 32.728336, 42.746330>,  <34.025993, 32.306709, 42.282753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.389759, 32.728336, 42.746330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.020615, 32.880878, 42.724808>,  <33.799129, 32.972404, 42.711895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.020615, 32.880878, 42.724808>,  <34.389759, 32.728336, 42.746330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.020615, 32.880878, 42.724808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075790, 0.316790, 0.945463,
		0.377606, 0.868452, -0.321256,
		-0.922860, 0.381360, -0.053802,
		33.743755, 32.995285, 42.708668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.350304, 33.510201, 42.978626>,  <34.389759, 32.728336, 42.746330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.350304, 33.510201, 42.978626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.007912, 33.320061, 43.059959>,  <33.802475, 33.205978, 43.108757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.007912, 33.320061, 43.059959>,  <34.350304, 33.510201, 42.978626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.007912, 33.320061, 43.059959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126403, 0.188931, 0.973821,
		-0.501317, 0.859274, -0.101636,
		-0.855981, -0.475346, 0.203330,
		33.751118, 33.177456, 43.120956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.311649, 33.569054, 43.670288>,  <34.350304, 33.510201, 42.978626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.311649, 33.569054, 43.670288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.955769, 33.394344, 43.617134>,  <33.742241, 33.289520, 43.585243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.955769, 33.394344, 43.617134>,  <34.311649, 33.569054, 43.670288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.955769, 33.394344, 43.617134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168356, 0.043338, 0.984773,
		-0.424364, 0.898527, -0.112091,
		-0.889703, -0.436773, -0.132882,
		33.688858, 33.263313, 43.577271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.842617, 34.007469, 44.015438>,  <34.311649, 33.569054, 43.670288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.842617, 34.007469, 44.015438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.664921, 33.649899, 43.991600>,  <33.558304, 33.435356, 43.977299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.664921, 33.649899, 43.991600>,  <33.842617, 34.007469, 44.015438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.664921, 33.649899, 43.991600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261041, 0.065520, 0.963102,
		-0.857034, 0.443406, -0.262457,
		-0.444242, -0.893923, -0.059594,
		33.531647, 33.381721, 43.973721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.077236, 34.078346, 44.300972>,  <33.842617, 34.007469, 44.015438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.077236, 34.078346, 44.300972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.190552, 33.695282, 44.321495>,  <33.258541, 33.465443, 44.333809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.190552, 33.695282, 44.321495>,  <33.077236, 34.078346, 44.300972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.190552, 33.695282, 44.321495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214406, -0.011100, 0.976682,
		-0.934761, -0.287681, -0.208473,
		0.283287, -0.957662, 0.051305,
		33.275539, 33.407982, 44.336887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.557240, 33.697639, 44.600258>,  <33.077236, 34.078346, 44.300972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.557240, 33.697639, 44.600258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.884979, 33.472965, 44.646168>,  <33.081623, 33.338161, 44.673714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.884979, 33.472965, 44.646168>,  <32.557240, 33.697639, 44.600258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.884979, 33.472965, 44.646168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079029, 0.087635, 0.993013,
		-0.567818, -0.822698, 0.027415,
		0.819352, -0.561684, 0.114778,
		33.130783, 33.304459, 44.680599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.377640, 33.159222, 45.117821>,  <32.557240, 33.697639, 44.600258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.377640, 33.159222, 45.117821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.775349, 33.201122, 45.126225>,  <33.013973, 33.226261, 45.131268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.775349, 33.201122, 45.126225>,  <32.377640, 33.159222, 45.117821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.775349, 33.201122, 45.126225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033629, 0.120232, 0.992176,
		0.101402, -0.987204, 0.123067,
		0.994277, 0.104747, 0.021006,
		33.073631, 33.232548, 45.132526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.674358, 32.666183, 45.571106>,  <32.377640, 33.159222, 45.117821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.674358, 32.666183, 45.571106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.987503, 32.914787, 45.582764>,  <33.175388, 33.063950, 45.589760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.987503, 32.914787, 45.582764>,  <32.674358, 32.666183, 45.571106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.987503, 32.914787, 45.582764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044806, 0.009593, 0.998950,
		0.620581, -0.783345, 0.035357,
		0.782861, 0.621513, 0.029146,
		33.222363, 33.101242, 45.591507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.139118, 32.315613, 46.014915>,  <32.674358, 32.666183, 45.571106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.139118, 32.315613, 46.014915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.194981, 32.711147, 45.994110>,  <33.228500, 32.948467, 45.981628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.194981, 32.711147, 45.994110>,  <33.139118, 32.315613, 46.014915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.194981, 32.711147, 45.994110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077757, 0.063313, 0.994960,
		0.987142, -0.134912, 0.085731,
		0.139660, 0.988833, -0.052009,
		33.236877, 33.007797, 45.978508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.727688, 32.517303, 46.405453>,  <33.139118, 32.315613, 46.014915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.727688, 32.517303, 46.405453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.516270, 32.856079, 46.382313>,  <33.389420, 33.059345, 46.368431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.516270, 32.856079, 46.382313>,  <33.727688, 32.517303, 46.405453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.516270, 32.856079, 46.382313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048091, 0.097906, 0.994033,
		0.847544, 0.522606, -0.092478,
		-0.528541, 0.846934, -0.057847,
		33.357708, 33.110161, 46.364960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.988995, 32.959026, 46.885437>,  <33.727688, 32.517303, 46.405453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.988995, 32.959026, 46.885437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.610550, 33.073170, 46.824188>,  <33.383484, 33.141655, 46.787441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.610550, 33.073170, 46.824188>,  <33.988995, 32.959026, 46.885437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.610550, 33.073170, 46.824188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119676, 0.131265, 0.984097,
		0.300917, 0.949390, -0.090041,
		-0.946111, 0.285356, -0.153119,
		33.326717, 33.158775, 46.778252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.593239, 33.410900, 47.103512>,  <33.988995, 32.959026, 46.885437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.593239, 33.410900, 47.103512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.972992, 33.375641, 47.224110>,  <35.200844, 33.354485, 47.296471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.972992, 33.375641, 47.224110>,  <34.593239, 33.410900, 47.103512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.972992, 33.375641, 47.224110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260142, -0.317330, -0.911936,
		0.176061, 0.944209, -0.278337,
		0.949383, -0.088149, 0.301498,
		35.257809, 33.349197, 47.314560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.975204, 33.878826, 46.776409>,  <34.593239, 33.410900, 47.103512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.975204, 33.878826, 46.776409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.243000, 33.601704, 46.883598>,  <35.403675, 33.435429, 46.947910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.243000, 33.601704, 46.883598>,  <34.975204, 33.878826, 46.776409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.243000, 33.601704, 46.883598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188335, -0.190649, -0.963422,
		0.718553, 0.695466, 0.002843,
		0.669486, -0.692806, 0.267972,
		35.443848, 33.393864, 46.963989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.526577, 33.974621, 46.242065>,  <34.975204, 33.878826, 46.776409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.526577, 33.974621, 46.242065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.631920, 33.621136, 46.396824>,  <35.695126, 33.409042, 46.489681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.631920, 33.621136, 46.396824>,  <35.526577, 33.974621, 46.242065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.631920, 33.621136, 46.396824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372753, -0.276693, -0.885718,
		0.889775, 0.377476, 0.256539,
		0.263354, -0.883716, 0.386900,
		35.710926, 33.356022, 46.512894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.189663, 33.906643, 46.142174>,  <35.526577, 33.974621, 46.242065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.189663, 33.906643, 46.142174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.046181, 33.534645, 46.174290>,  <35.960091, 33.311447, 46.193558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.046181, 33.534645, 46.174290>,  <36.189663, 33.906643, 46.142174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.046181, 33.534645, 46.174290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489048, -0.260498, -0.832450,
		0.795087, -0.259336, 0.548252,
		-0.358703, -0.929992, 0.080291,
		35.938568, 33.255646, 46.198376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.712193, 33.508366, 45.913391>,  <36.189663, 33.906643, 46.142174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.712193, 33.508366, 45.913391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.398499, 33.260513, 45.900597>,  <36.210281, 33.111801, 45.892921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.398499, 33.260513, 45.900597>,  <36.712193, 33.508366, 45.913391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.398499, 33.260513, 45.900597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355104, -0.405968, -0.842076,
		0.508795, -0.671746, 0.538410,
		-0.784238, -0.619635, -0.031985,
		36.163227, 33.074623, 45.891003>
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
