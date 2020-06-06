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
	<24.353022, 34.899925, 34.826221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.587374, 34.956257, 35.145447>,  <24.727985, 34.990055, 35.336983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.587374, 34.956257, 35.145447>,  <24.353022, 34.899925, 34.826221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.587374, 34.956257, 35.145447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783998, 0.150817, -0.602164,
		-0.205163, 0.978479, -0.022047,
		0.585880, 0.140827, 0.798068,
		24.763138, 34.998505, 35.384869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.673084, 35.536846, 34.649593>,  <24.353022, 34.899925, 34.826221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.673084, 35.536846, 34.649593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.863539, 35.255592, 34.860836>,  <24.977812, 35.086838, 34.987583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.863539, 35.255592, 34.860836>,  <24.673084, 35.536846, 34.649593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.863539, 35.255592, 34.860836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767229, 0.038696, -0.640204,
		0.429716, 0.710001, 0.557891,
		0.476134, -0.703136, 0.528106,
		25.006378, 35.044651, 35.019268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.282928, 35.886997, 35.051552>,  <24.673084, 35.536846, 34.649593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.282928, 35.886997, 35.051552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.300468, 35.502308, 34.943348>,  <25.310993, 35.271496, 34.878426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.300468, 35.502308, 34.943348>,  <25.282928, 35.886997, 35.051552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.300468, 35.502308, 34.943348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723238, 0.217352, -0.655504,
		0.689206, -0.166897, 0.705082,
		0.043850, -0.961719, -0.270507,
		25.313623, 35.213791, 34.862194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.931671, 35.874676, 34.785404>,  <25.282928, 35.886997, 35.051552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.931671, 35.874676, 34.785404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.733732, 35.557014, 34.644295>,  <25.614969, 35.366417, 34.559628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.733732, 35.557014, 34.644295>,  <25.931671, 35.874676, 34.785404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.733732, 35.557014, 34.644295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606460, -0.024866, -0.794726,
		0.622360, -0.607211, 0.493926,
		-0.494848, -0.794151, -0.352773,
		25.585278, 35.318768, 34.538464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.178453, 35.574772, 35.476856>,  <25.931671, 35.874676, 34.785404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.178453, 35.574772, 35.476856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.072081, 35.889748, 35.699284>,  <26.008257, 36.078735, 35.832741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.072081, 35.889748, 35.699284>,  <26.178453, 35.574772, 35.476856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.072081, 35.889748, 35.699284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867428, -0.447110, 0.218315,
		0.420535, -0.424295, 0.801950,
		-0.265930, 0.787443, 0.556071,
		25.992302, 36.125980, 35.866104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.922562, 35.685818, 35.183556>,  <26.178453, 35.574772, 35.476856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.922562, 35.685818, 35.183556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.273664, 35.635654, 35.368519>,  <27.484325, 35.605556, 35.479496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.273664, 35.635654, 35.368519>,  <26.922562, 35.685818, 35.183556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.273664, 35.635654, 35.368519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045586, -0.982617, -0.179962,
		0.476936, 0.136883, -0.868214,
		0.877755, -0.125409, 0.462405,
		27.536991, 35.598030, 35.507240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.232353, 35.139519, 34.897560>,  <26.922562, 35.685818, 35.183556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.232353, 35.139519, 34.897560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.381918, 35.152714, 35.268311>,  <27.471657, 35.160633, 35.490761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.381918, 35.152714, 35.268311>,  <27.232353, 35.139519, 34.897560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.381918, 35.152714, 35.268311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173486, -0.984216, -0.034953,
		0.911094, 0.173870, -0.373734,
		0.373912, 0.032992, 0.926877,
		27.494091, 35.162613, 35.546375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.897848, 34.663940, 34.892826>,  <27.232353, 35.139519, 34.897560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.897848, 34.663940, 34.892826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.815756, 34.726921, 35.279213>,  <27.766500, 34.764709, 35.511044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.815756, 34.726921, 35.279213>,  <27.897848, 34.663940, 34.892826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.815756, 34.726921, 35.279213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158135, -0.968672, 0.191491,
		0.965854, 0.192053, 0.173904,
		-0.205233, 0.157452, 0.965965,
		27.754187, 34.774158, 35.569004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.406231, 34.420780, 35.215355>,  <27.897848, 34.663940, 34.892826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.406231, 34.420780, 35.215355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.099491, 34.422855, 35.472076>,  <27.915447, 34.424099, 35.626110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.099491, 34.422855, 35.472076>,  <28.406231, 34.420780, 35.215355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.099491, 34.422855, 35.472076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083215, -0.990723, 0.107436,
		0.636412, 0.135795, 0.759302,
		-0.766848, 0.005188, 0.641808,
		27.869436, 34.424412, 35.664619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.634237, 34.019680, 35.784515>,  <28.406231, 34.420780, 35.215355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.634237, 34.019680, 35.784515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.234335, 34.020565, 35.793282>,  <27.994392, 34.021095, 35.798542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.234335, 34.020565, 35.793282>,  <28.634237, 34.019680, 35.784515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.234335, 34.020565, 35.793282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005491, -0.938516, 0.345193,
		0.021336, 0.345230, 0.938276,
		-0.999757, 0.002213, 0.021919,
		27.934408, 34.021229, 35.799858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.480482, 33.970192, 36.461784>,  <28.634237, 34.019680, 35.784515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.480482, 33.970192, 36.461784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.169037, 33.845032, 36.244213>,  <27.982170, 33.769936, 36.113670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.169037, 33.845032, 36.244213>,  <28.480482, 33.970192, 36.461784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.169037, 33.845032, 36.244213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082110, -0.910156, 0.406046,
		-0.622111, 0.271491, 0.734350,
		-0.778611, -0.312903, -0.543927,
		27.935453, 33.751160, 36.081036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.044783, 33.627064, 36.964214>,  <28.480482, 33.970192, 36.461784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.044783, 33.627064, 36.964214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.897635, 33.498386, 36.615231>,  <27.809345, 33.421181, 36.405842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.897635, 33.498386, 36.615231>,  <28.044783, 33.627064, 36.964214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.897635, 33.498386, 36.615231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061242, -0.944595, 0.322475,
		-0.927857, 0.065199, 0.367192,
		-0.367872, -0.321698, -0.872456,
		27.787273, 33.401878, 36.353493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.415354, 33.197174, 37.100761>,  <28.044783, 33.627064, 36.964214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.415354, 33.197174, 37.100761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.554358, 33.112011, 36.735485>,  <27.637760, 33.060913, 36.516319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.554358, 33.112011, 36.735485>,  <27.415354, 33.197174, 37.100761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.554358, 33.112011, 36.735485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155791, -0.947236, 0.280130,
		-0.924645, -0.239613, -0.296003,
		0.347508, -0.212906, -0.913186,
		27.658609, 33.048138, 36.461529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.073202, 32.581604, 36.924809>,  <27.415354, 33.197174, 37.100761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.073202, 32.581604, 36.924809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.394732, 32.566761, 36.687325>,  <27.587648, 32.557854, 36.544834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.394732, 32.566761, 36.687325>,  <27.073202, 32.581604, 36.924809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.394732, 32.566761, 36.687325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149231, -0.953558, 0.261643,
		-0.575848, -0.298914, -0.760953,
		0.803822, -0.037109, -0.593711,
		27.635878, 32.555630, 36.509212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.964930, 32.069832, 36.373936>,  <27.073202, 32.581604, 36.924809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.964930, 32.069832, 36.373936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.353788, 32.134163, 36.442131>,  <27.587103, 32.172760, 36.483047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.353788, 32.134163, 36.442131>,  <26.964930, 32.069832, 36.373936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.353788, 32.134163, 36.442131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169560, -0.984791, -0.037891,
		0.161802, 0.065743, -0.984631,
		0.972147, 0.160824, 0.170489,
		27.645432, 32.182411, 36.493279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.236069, 31.525770, 36.057777>,  <26.964930, 32.069832, 36.373936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.236069, 31.525770, 36.057777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.554815, 31.656076, 36.261299>,  <27.746063, 31.734261, 36.383411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.554815, 31.656076, 36.261299>,  <27.236069, 31.525770, 36.057777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.554815, 31.656076, 36.261299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380510, -0.924769, -0.003847,
		0.469276, 0.196672, -0.860872,
		0.796864, 0.325765, 0.508807,
		27.793875, 31.753805, 36.413940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.757469, 31.125969, 35.807415>,  <27.236069, 31.525770, 36.057777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.757469, 31.125969, 35.807415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.907858, 31.269604, 36.149105>,  <27.998091, 31.355785, 36.354118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.907858, 31.269604, 36.149105>,  <27.757469, 31.125969, 35.807415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.907858, 31.269604, 36.149105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446756, -0.877887, 0.172404,
		0.811821, 0.316811, -0.490487,
		0.375973, 0.359089, 0.854225,
		28.020649, 31.377331, 36.405373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.433067, 30.843273, 35.805614>,  <27.757469, 31.125969, 35.807415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.433067, 30.843273, 35.805614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.388815, 30.928089, 36.194008>,  <28.362265, 30.978979, 36.427044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.388815, 30.928089, 36.194008>,  <28.433067, 30.843273, 35.805614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.388815, 30.928089, 36.194008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468927, -0.850257, 0.239105,
		0.876281, 0.481770, -0.005368,
		-0.110629, 0.212040, 0.970979,
		28.355627, 30.991701, 36.485302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.106646, 30.859671, 36.194801>,  <28.433067, 30.843273, 35.805614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.106646, 30.859671, 36.194801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.820686, 30.783245, 36.463848>,  <28.649111, 30.737391, 36.625275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.820686, 30.783245, 36.463848>,  <29.106646, 30.859671, 36.194801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.820686, 30.783245, 36.463848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479837, -0.833748, 0.273169,
		0.508601, 0.518034, 0.687725,
		-0.714900, -0.191062, 0.672617,
		28.606216, 30.725927, 36.665634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.497995, 30.723516, 36.714836>,  <29.106646, 30.859671, 36.194801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.497995, 30.723516, 36.714836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.152004, 30.585438, 36.860523>,  <28.944410, 30.502590, 36.947933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.152004, 30.585438, 36.860523>,  <29.497995, 30.723516, 36.714836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.152004, 30.585438, 36.860523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488130, -0.747112, 0.451168,
		0.116369, 0.568035, 0.814736,
		-0.864978, -0.345195, 0.364215,
		28.892511, 30.481880, 36.969788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.637508, 30.484642, 37.374062>,  <29.497995, 30.723516, 36.714836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.637508, 30.484642, 37.374062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.299318, 30.292557, 37.280621>,  <29.096405, 30.177305, 37.224556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.299318, 30.292557, 37.280621>,  <29.637508, 30.484642, 37.374062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.299318, 30.292557, 37.280621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358790, -0.834816, 0.417554,
		-0.395529, 0.269217, 0.878111,
		-0.845474, -0.480212, -0.233601,
		29.045675, 30.148493, 37.210541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.297333, 30.125975, 37.984020>,  <29.637508, 30.484642, 37.374062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.297333, 30.125975, 37.984020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.170164, 29.915890, 37.668278>,  <29.093863, 29.789839, 37.478832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.170164, 29.915890, 37.668278>,  <29.297333, 30.125975, 37.984020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.170164, 29.915890, 37.668278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355434, -0.837853, 0.414330,
		-0.878973, -0.148839, 0.453049,
		-0.317920, -0.525214, -0.789353,
		29.074787, 29.758326, 37.431473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.176996, 29.330620, 38.170116>,  <29.297333, 30.125975, 37.984020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.176996, 29.330620, 38.170116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.182884, 29.334703, 37.770180>,  <29.186417, 29.337154, 37.530220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.182884, 29.334703, 37.770180>,  <29.176996, 29.330620, 38.170116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.182884, 29.334703, 37.770180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589447, -0.807807, 0.000429,
		-0.807673, -0.589359, -0.017905,
		0.014716, 0.010208, -0.999840,
		29.187300, 29.337767, 37.470226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.025757, 28.614349, 37.942757>,  <29.176996, 29.330620, 38.170116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.025757, 28.614349, 37.942757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.203409, 28.751099, 37.611488>,  <29.310001, 28.833149, 37.412727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.203409, 28.751099, 37.611488>,  <29.025757, 28.614349, 37.942757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.203409, 28.751099, 37.611488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567026, -0.822929, -0.035626,
		-0.693706, -0.453773, -0.559340,
		0.444131, 0.341875, -0.828172,
		29.336649, 28.853661, 37.363037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.120737, 28.114164, 37.434872>,  <29.025757, 28.614349, 37.942757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.120737, 28.114164, 37.434872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.394316, 28.369991, 37.294487>,  <29.558462, 28.523487, 37.210258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.394316, 28.369991, 37.294487>,  <29.120737, 28.114164, 37.434872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.394316, 28.369991, 37.294487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628321, -0.760877, -0.162109,
		-0.370715, -0.109640, -0.922252,
		0.683947, 0.639567, -0.350958,
		29.599501, 28.561861, 37.189201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.611540, 27.764467, 36.969120>,  <29.120737, 28.114164, 37.434872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.611540, 27.764467, 36.969120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.798134, 28.098013, 37.087143>,  <29.910089, 28.298141, 37.157959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.798134, 28.098013, 37.087143>,  <29.611540, 27.764467, 36.969120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.798134, 28.098013, 37.087143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870421, -0.492092, 0.014577,
		0.157351, 0.250026, -0.955368,
		0.466484, 0.833866, 0.295059,
		29.938080, 28.348173, 37.175659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.188484, 27.935949, 36.591595>,  <29.611540, 27.764467, 36.969120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.188484, 27.935949, 36.591595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.251680, 28.066034, 36.964535>,  <30.289598, 28.144085, 37.188297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.251680, 28.066034, 36.964535>,  <30.188484, 27.935949, 36.591595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.251680, 28.066034, 36.964535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809862, -0.582887, 0.066082,
		0.564945, 0.744635, -0.355465,
		0.157989, 0.325210, 0.932351,
		30.299078, 28.163597, 37.244240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.839935, 28.095869, 36.405487>,  <30.188484, 27.935949, 36.591595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.839935, 28.095869, 36.405487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.726746, 28.032660, 36.783894>,  <30.658833, 27.994734, 37.010937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.726746, 28.032660, 36.783894>,  <30.839935, 28.095869, 36.405487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.726746, 28.032660, 36.783894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767840, -0.628387, 0.124708,
		0.574760, 0.761681, 0.299155,
		-0.282972, -0.158026, 0.946020,
		30.641853, 27.985252, 37.067699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.505970, 27.872984, 36.719803>,  <30.839935, 28.095869, 36.405487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.505970, 27.872984, 36.719803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.449841, 28.119520, 37.029751>,  <31.416162, 28.267443, 37.215721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.449841, 28.119520, 37.029751>,  <31.505970, 27.872984, 36.719803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.449841, 28.119520, 37.029751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586958, -0.578483, 0.566426,
		0.797364, 0.534303, -0.280591,
		-0.140326, 0.616342, 0.774875,
		31.407743, 28.304422, 37.262215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.092628, 27.820293, 37.204903>,  <31.505970, 27.872984, 36.719803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.092628, 27.820293, 37.204903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.821310, 27.998220, 37.438843>,  <31.658520, 28.104977, 37.579208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.821310, 27.998220, 37.438843>,  <32.092628, 27.820293, 37.204903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.821310, 27.998220, 37.438843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422053, -0.415692, 0.805650,
		0.601486, 0.793307, 0.094225,
		-0.678297, 0.444819, 0.584850,
		31.617821, 28.131666, 37.614296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.368282, 28.348984, 37.680382>,  <32.092628, 27.820293, 37.204903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.368282, 28.348984, 37.680382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.058216, 28.129793, 37.806141>,  <31.872177, 27.998280, 37.881596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.058216, 28.129793, 37.806141>,  <32.368282, 28.348984, 37.680382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.058216, 28.129793, 37.806141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574916, -0.405561, 0.710628,
		-0.261901, 0.731603, 0.629417,
		-0.775164, -0.547976, 0.314394,
		31.825666, 27.965401, 37.900459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.254032, 28.434772, 38.480656>,  <32.368282, 28.348984, 37.680382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.254032, 28.434772, 38.480656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.088661, 28.088825, 38.366760>,  <31.989437, 27.881256, 38.298424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.088661, 28.088825, 38.366760>,  <32.254032, 28.434772, 38.480656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.088661, 28.088825, 38.366760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454052, -0.466888, 0.758850,
		-0.789247, 0.184445, 0.585721,
		-0.413432, -0.864867, -0.284743,
		31.964632, 27.829365, 38.281338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.729109, 28.128401, 38.992268>,  <32.254032, 28.434772, 38.480656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.729109, 28.128401, 38.992268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.949570, 27.871309, 38.779427>,  <32.081844, 27.717054, 38.651722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.949570, 27.871309, 38.779427>,  <31.729109, 28.128401, 38.992268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.949570, 27.871309, 38.779427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305096, -0.438312, 0.845458,
		-0.776628, -0.628316, -0.045481,
		0.551150, -0.642730, -0.532102,
		32.114914, 27.678490, 38.619797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.969311, 28.752253, 39.241199>,  <31.729109, 28.128401, 38.992268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.969311, 28.752253, 39.241199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.340412, 28.870234, 39.149738>,  <32.563072, 28.941021, 39.094864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.340412, 28.870234, 39.149738>,  <31.969311, 28.752253, 39.241199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.340412, 28.870234, 39.149738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371096, 0.664158, -0.648985,
		-0.039559, 0.686948, 0.725629,
		0.927751, 0.294951, -0.228651,
		32.618736, 28.958719, 39.081142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.927439, 29.485355, 39.188286>,  <31.969311, 28.752253, 39.241199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.927439, 29.485355, 39.188286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.252892, 29.352766, 38.997234>,  <32.448162, 29.273212, 38.882603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.252892, 29.352766, 38.997234>,  <31.927439, 29.485355, 39.188286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.252892, 29.352766, 38.997234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176976, 0.641341, -0.746566,
		0.553791, 0.691958, 0.463152,
		0.813631, -0.331475, -0.477629,
		32.496983, 29.253325, 38.853947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.624466, 29.787277, 39.042953>,  <31.927439, 29.485355, 39.188286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.624466, 29.787277, 39.042953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.482330, 29.573526, 38.736183>,  <32.397049, 29.445276, 38.552120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.482330, 29.573526, 38.736183>,  <32.624466, 29.787277, 39.042953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.482330, 29.573526, 38.736183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113755, 0.839097, -0.531955,
		0.927788, -0.101785, -0.358955,
		-0.355343, -0.534375, -0.766925,
		32.375729, 29.413214, 38.506107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.051907, 29.916786, 38.464146>,  <32.624466, 29.787277, 39.042953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.051907, 29.916786, 38.464146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.675156, 29.820023, 38.370892>,  <32.449104, 29.761965, 38.314938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.675156, 29.820023, 38.370892>,  <33.051907, 29.916786, 38.464146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.675156, 29.820023, 38.370892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191853, 0.956940, -0.217849,
		0.275797, -0.160459, -0.947729,
		-0.941875, -0.241907, -0.233137,
		32.392593, 29.747450, 38.300949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.931858, 30.305258, 37.845081>,  <33.051907, 29.916786, 38.464146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.931858, 30.305258, 37.845081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.565533, 30.202633, 37.968674>,  <32.345737, 30.141058, 38.042831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.565533, 30.202633, 37.968674>,  <32.931858, 30.305258, 37.845081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.565533, 30.202633, 37.968674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327307, 0.922630, -0.204022,
		-0.232732, -0.287978, -0.928927,
		-0.915809, -0.256561, 0.308983,
		32.290791, 30.125664, 38.061367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.401722, 30.505316, 37.257637>,  <32.931858, 30.305258, 37.845081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.401722, 30.505316, 37.257637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.143627, 30.464676, 37.560513>,  <31.988770, 30.440292, 37.742237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.143627, 30.464676, 37.560513>,  <32.401722, 30.505316, 37.257637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.143627, 30.464676, 37.560513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441914, 0.858117, -0.261435,
		-0.623198, -0.503303, -0.598590,
		-0.645241, -0.101600, 0.757193,
		31.950054, 30.434196, 37.787670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.731987, 30.701017, 36.996971>,  <32.401722, 30.505316, 37.257637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.731987, 30.701017, 36.996971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.738934, 30.773081, 37.390366>,  <31.743101, 30.816319, 37.626400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.738934, 30.773081, 37.390366>,  <31.731987, 30.701017, 36.996971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.738934, 30.773081, 37.390366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397969, 0.903604, -0.158498,
		-0.917235, -0.388643, 0.087391,
		0.017368, 0.180159, 0.983484,
		31.744144, 30.827129, 37.685410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.104746, 31.145769, 37.124062>,  <31.731987, 30.701017, 36.996971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.104746, 31.145769, 37.124062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.300438, 31.164721, 37.472408>,  <31.417854, 31.176090, 37.681416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.300438, 31.164721, 37.472408>,  <31.104746, 31.145769, 37.124062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.300438, 31.164721, 37.472408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384536, 0.907946, 0.166629,
		-0.782805, -0.416400, 0.462414,
		0.489232, 0.047377, 0.870866,
		31.447206, 31.178934, 37.733669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.578329, 31.298765, 37.693844>,  <31.104746, 31.145769, 37.124062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.578329, 31.298765, 37.693844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.938265, 31.441851, 37.793709>,  <31.154226, 31.527702, 37.853626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.938265, 31.441851, 37.793709>,  <30.578329, 31.298765, 37.693844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.938265, 31.441851, 37.793709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400081, 0.904855, 0.145506,
		-0.173858, -0.230817, 0.957338,
		0.899838, 0.357715, 0.249662,
		31.208216, 31.549166, 37.868607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.468569, 31.838064, 38.181297>,  <30.578329, 31.298765, 37.693844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.468569, 31.838064, 38.181297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.849390, 31.897240, 38.074181>,  <31.077883, 31.932745, 38.009911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.849390, 31.897240, 38.074181>,  <30.468569, 31.838064, 38.181297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.849390, 31.897240, 38.074181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155681, 0.987777, -0.007796,
		0.263368, 0.049113, 0.963444,
		0.952051, 0.147936, -0.267794,
		31.135006, 31.941620, 37.993843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.695768, 32.284157, 38.654995>,  <30.468569, 31.838064, 38.181297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.695768, 32.284157, 38.654995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.935432, 32.298584, 38.335068>,  <31.079231, 32.307240, 38.143112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.935432, 32.298584, 38.335068>,  <30.695768, 32.284157, 38.654995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.935432, 32.298584, 38.335068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229792, 0.964702, -0.128633,
		0.766944, 0.260863, 0.586299,
		0.599159, 0.036072, -0.799817,
		31.115181, 32.309406, 38.095123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.086599, 32.790802, 38.778957>,  <30.695768, 32.284157, 38.654995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.086599, 32.790802, 38.778957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.077913, 32.747948, 38.381355>,  <31.072702, 32.722237, 38.142792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.077913, 32.747948, 38.381355>,  <31.086599, 32.790802, 38.778957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.077913, 32.747948, 38.381355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316766, 0.943755, -0.094795,
		0.948255, 0.312810, -0.054429,
		-0.021715, -0.107131, -0.994008,
		31.071398, 32.715809, 38.083153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.434269, 33.386318, 38.459656>,  <31.086599, 32.790802, 38.778957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.434269, 33.386318, 38.459656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.215916, 33.248142, 38.154324>,  <31.084904, 33.165237, 37.971123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.215916, 33.248142, 38.154324>,  <31.434269, 33.386318, 38.459656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.215916, 33.248142, 38.154324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322078, 0.927567, -0.189434,
		0.773483, 0.142444, -0.617603,
		-0.545885, -0.345440, -0.763335,
		31.052151, 33.144508, 37.925323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.719618, 33.713100, 37.839874>,  <31.434269, 33.386318, 38.459656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.719618, 33.713100, 37.839874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.333708, 33.622463, 37.786419>,  <31.102161, 33.568081, 37.754345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.333708, 33.622463, 37.786419>,  <31.719618, 33.713100, 37.839874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.333708, 33.622463, 37.786419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201405, 0.963030, -0.178910,
		0.169235, -0.145694, -0.974747,
		-0.964777, -0.226597, -0.133635,
		31.044275, 33.554485, 37.746326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.488672, 34.280315, 37.533520>,  <31.719618, 33.713100, 37.839874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.488672, 34.280315, 37.533520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.147408, 34.078747, 37.587452>,  <30.942650, 33.957806, 37.619812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.147408, 34.078747, 37.587452>,  <31.488672, 34.280315, 37.533520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.147408, 34.078747, 37.587452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521493, 0.817620, -0.244014,
		0.012725, -0.278495, -0.960353,
		-0.853161, -0.503923, 0.134829,
		30.891459, 33.927570, 37.627899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.127008, 34.439545, 36.900169>,  <31.488672, 34.280315, 37.533520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.127008, 34.439545, 36.900169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.849691, 34.317146, 37.161156>,  <30.683302, 34.243706, 37.317749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.849691, 34.317146, 37.161156>,  <31.127008, 34.439545, 36.900169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.849691, 34.317146, 37.161156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580090, 0.774162, -0.253319,
		-0.427600, -0.554113, -0.714225,
		-0.693292, -0.305995, 0.652467,
		30.641705, 34.225349, 37.356895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.504963, 34.334057, 36.539707>,  <31.127008, 34.439545, 36.900169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.504963, 34.334057, 36.539707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.376606, 34.362736, 36.917465>,  <30.299591, 34.379944, 37.144119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.376606, 34.362736, 36.917465>,  <30.504963, 34.334057, 36.539707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.376606, 34.362736, 36.917465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609829, 0.747290, -0.263942,
		-0.724663, -0.660619, -0.196077,
		-0.320892, 0.071696, 0.944398,
		30.280338, 34.384243, 37.200787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.849606, 34.467628, 36.475372>,  <30.504963, 34.334057, 36.539707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.849606, 34.467628, 36.475372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.932281, 34.587486, 36.847931>,  <29.981886, 34.659401, 37.071465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.932281, 34.587486, 36.847931>,  <29.849606, 34.467628, 36.475372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.932281, 34.587486, 36.847931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566528, 0.812781, -0.135767,
		-0.797700, -0.499599, 0.337751,
		0.206688, 0.299646, 0.931393,
		29.994287, 34.677380, 37.127350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.238201, 34.792217, 36.765133>,  <29.849606, 34.467628, 36.475372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.238201, 34.792217, 36.765133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.538172, 34.909519, 37.002319>,  <29.718153, 34.979900, 37.144630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.538172, 34.909519, 37.002319>,  <29.238201, 34.792217, 36.765133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.538172, 34.909519, 37.002319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222726, 0.955968, -0.191098,
		-0.622900, 0.011239, 0.782220,
		0.749925, 0.293256, 0.592970,
		29.763149, 34.997498, 37.180210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.007029, 35.246147, 37.199997>,  <29.238201, 34.792217, 36.765133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.007029, 35.246147, 37.199997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.394804, 35.339577, 37.230007>,  <29.627470, 35.395634, 37.248013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.394804, 35.339577, 37.230007>,  <29.007029, 35.246147, 37.199997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.394804, 35.339577, 37.230007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187507, 0.902669, -0.387337,
		-0.158196, 0.361432, 0.918880,
		0.969441, 0.233572, 0.075028,
		29.685637, 35.409649, 37.252514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.968521, 35.766846, 37.651096>,  <29.007029, 35.246147, 37.199997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.968521, 35.766846, 37.651096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.297884, 35.776356, 37.424316>,  <29.495502, 35.782063, 37.288250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.297884, 35.776356, 37.424316>,  <28.968521, 35.766846, 37.651096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.297884, 35.776356, 37.424316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051570, 0.998123, -0.033042,
		0.565101, 0.056445, 0.823089,
		0.823409, 0.023775, -0.566951,
		29.544907, 35.783489, 37.254230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.411127, 36.281239, 37.948666>,  <28.968521, 35.766846, 37.651096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.411127, 36.281239, 37.948666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.519157, 36.232948, 37.566570>,  <29.583977, 36.203972, 37.337315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.519157, 36.232948, 37.566570>,  <29.411127, 36.281239, 37.948666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.519157, 36.232948, 37.566570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099032, 0.983363, -0.152282,
		0.957732, 0.135728, 0.253629,
		0.270078, -0.120728, -0.955240,
		29.600182, 36.196732, 37.279999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.732407, 36.912960, 37.744038>,  <29.411127, 36.281239, 37.948666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.732407, 36.912960, 37.744038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.678434, 36.721497, 37.397007>,  <29.646051, 36.606621, 37.188789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.678434, 36.721497, 37.397007>,  <29.732407, 36.912960, 37.744038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.678434, 36.721497, 37.397007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184516, 0.848127, -0.496623,
		0.973523, -0.227091, -0.026119,
		-0.134931, -0.478654, -0.867573,
		29.637955, 36.577900, 37.136734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.177433, 37.282131, 37.326847>,  <29.732407, 36.912960, 37.744038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.177433, 37.282131, 37.326847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.932404, 37.098080, 37.069775>,  <29.785385, 36.987648, 36.915531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.932404, 37.098080, 37.069775>,  <30.177433, 37.282131, 37.326847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.932404, 37.098080, 37.069775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019968, 0.803826, -0.594529,
		0.790156, -0.377030, -0.483221,
		-0.612581, -0.460121, -0.642676,
		29.748631, 36.960041, 36.876972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.556110, 37.167530, 36.737820>,  <30.177433, 37.282131, 37.326847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.556110, 37.167530, 36.737820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.162863, 37.210594, 36.678646>,  <29.926914, 37.236435, 36.643143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.162863, 37.210594, 36.678646>,  <30.556110, 37.167530, 36.737820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.162863, 37.210594, 36.678646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167029, 0.858137, -0.485492,
		0.074678, -0.502006, -0.861634,
		-0.983120, 0.107663, -0.147933,
		29.867928, 37.242893, 36.634266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.843493, 37.241474, 36.012070>,  <30.556110, 37.167530, 36.737820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.843493, 37.241474, 36.012070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.731075, 37.562046, 36.223248>,  <30.663626, 37.754387, 36.349957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.731075, 37.562046, 36.223248>,  <30.843493, 37.241474, 36.012070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.731075, 37.562046, 36.223248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916290, -0.060507, -0.395918,
		-0.285355, -0.595024, 0.751345,
		-0.281043, 0.801427, 0.527948,
		30.646763, 37.802475, 36.381634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.431959, 37.559193, 36.272476>,  <30.843493, 37.241474, 36.012070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.431959, 37.559193, 36.272476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.614363, 37.808945, 36.526154>,  <31.723804, 37.958797, 36.678360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.614363, 37.808945, 36.526154>,  <31.431959, 37.559193, 36.272476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.614363, 37.808945, 36.526154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454956, -0.448904, 0.769090,
		0.764900, -0.639242, 0.079363,
		0.456008, 0.624384, 0.634194,
		31.751165, 37.996262, 36.716412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.703535, 37.103760, 36.700829>,  <31.431959, 37.559193, 36.272476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.703535, 37.103760, 36.700829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.586887, 37.456558, 36.848904>,  <31.516899, 37.668236, 36.937748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.586887, 37.456558, 36.848904>,  <31.703535, 37.103760, 36.700829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.586887, 37.456558, 36.848904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452385, -0.468164, 0.759058,
		0.842797, 0.053886, 0.535527,
		-0.291617, 0.881997, 0.370190,
		31.499403, 37.721157, 36.959961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.672672, 37.111118, 37.398026>,  <31.703535, 37.103760, 36.700829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.672672, 37.111118, 37.398026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.403204, 37.398323, 37.328030>,  <31.241524, 37.570648, 37.286034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.403204, 37.398323, 37.328030>,  <31.672672, 37.111118, 37.398026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.403204, 37.398323, 37.328030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547818, -0.326235, 0.770368,
		0.496048, 0.614836, 0.613117,
		-0.673670, 0.718016, -0.174990,
		31.201103, 37.613728, 37.275532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.618526, 37.666481, 37.943291>,  <31.672672, 37.111118, 37.398026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.618526, 37.666481, 37.943291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.283564, 37.572411, 37.745934>,  <31.082586, 37.515968, 37.627518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.283564, 37.572411, 37.745934>,  <31.618526, 37.666481, 37.943291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.283564, 37.572411, 37.745934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402265, -0.345958, 0.847642,
		-0.370042, 0.908297, 0.195103,
		-0.837408, -0.235180, -0.493395,
		31.032341, 37.501858, 37.597916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.023117, 37.993103, 38.331509>,  <31.618526, 37.666481, 37.943291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.023117, 37.993103, 38.331509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.924923, 37.654434, 38.142666>,  <30.866007, 37.451233, 38.029362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.924923, 37.654434, 38.142666>,  <31.023117, 37.993103, 38.331509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.924923, 37.654434, 38.142666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148093, -0.448537, 0.881410,
		-0.958021, 0.286290, -0.015276,
		-0.245487, -0.846671, -0.472106,
		30.851276, 37.400433, 38.001034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.583576, 37.554096, 38.789528>,  <31.023117, 37.993103, 38.331509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.583576, 37.554096, 38.789528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.750254, 37.324440, 38.507610>,  <30.850260, 37.186646, 38.338459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.750254, 37.324440, 38.507610>,  <30.583576, 37.554096, 38.789528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.750254, 37.324440, 38.507610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052948, -0.789319, 0.611696,
		-0.907504, -0.217573, -0.359304,
		0.416693, -0.574141, -0.704790,
		30.875261, 37.152199, 38.296173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.328110, 36.845062, 38.641071>,  <30.583576, 37.554096, 38.789528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.328110, 36.845062, 38.641071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.715822, 36.834541, 38.543255>,  <30.948450, 36.828228, 38.484566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.715822, 36.834541, 38.543255>,  <30.328110, 36.845062, 38.641071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.715822, 36.834541, 38.543255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145074, -0.741742, 0.654807,
		-0.198604, -0.670170, -0.715142,
		0.969284, -0.026299, -0.244538,
		31.006607, 36.826653, 38.469894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.576525, 36.169933, 38.556168>,  <30.328110, 36.845062, 38.641071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.576525, 36.169933, 38.556168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.895355, 36.394020, 38.646351>,  <31.086653, 36.528473, 38.700462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.895355, 36.394020, 38.646351>,  <30.576525, 36.169933, 38.556168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.895355, 36.394020, 38.646351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369052, -0.747411, 0.552428,
		0.477989, -0.357120, -0.802491,
		0.797074, 0.560216, 0.225459,
		31.134478, 36.562084, 38.713989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.122152, 35.680183, 38.675880>,  <30.576525, 36.169933, 38.556168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.122152, 35.680183, 38.675880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.302610, 36.010044, 38.812359>,  <31.410885, 36.207962, 38.894245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.302610, 36.010044, 38.812359>,  <31.122152, 35.680183, 38.675880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.302610, 36.010044, 38.812359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371237, -0.521072, 0.768549,
		0.811574, -0.220063, -0.541221,
		0.451144, 0.824655, 0.341193,
		31.437954, 36.257442, 38.914715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.805286, 35.550068, 38.775146>,  <31.122152, 35.680183, 38.675880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.805286, 35.550068, 38.775146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.676704, 35.841320, 39.017303>,  <31.599556, 36.016071, 39.162598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.676704, 35.841320, 39.017303>,  <31.805286, 35.550068, 38.775146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.676704, 35.841320, 39.017303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265432, -0.544406, 0.795718,
		0.908962, 0.416477, -0.018267,
		-0.321454, 0.728127, 0.605391,
		31.580269, 36.059757, 39.198921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.969965, 35.171627, 39.384785>,  <31.805286, 35.550068, 38.775146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.969965, 35.171627, 39.384785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.828545, 35.522888, 39.513683>,  <31.743692, 35.733646, 39.591022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.828545, 35.522888, 39.513683>,  <31.969965, 35.171627, 39.384785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.828545, 35.522888, 39.513683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002613, -0.345420, 0.938444,
		0.935411, 0.330948, 0.124418,
		-0.353553, 0.878156, 0.322245,
		31.722479, 35.786335, 39.610355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.427845, 35.470112, 39.983196>,  <31.969965, 35.171627, 39.384785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.427845, 35.470112, 39.983196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.063828, 35.633858, 40.009243>,  <31.845417, 35.732105, 40.024872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.063828, 35.633858, 40.009243>,  <32.427845, 35.470112, 39.983196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.063828, 35.633858, 40.009243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031994, -0.225999, 0.973602,
		0.413274, 0.883938, 0.218766,
		-0.910044, 0.409364, 0.065119,
		31.790813, 35.756668, 40.028778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.506863, 36.105663, 40.434235>,  <32.427845, 35.470112, 39.983196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.506863, 36.105663, 40.434235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.135921, 35.956188, 40.426563>,  <31.913357, 35.866501, 40.421959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.135921, 35.956188, 40.426563>,  <32.506863, 36.105663, 40.434235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.135921, 35.956188, 40.426563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018189, -0.006176, 0.999815,
		-0.373741, 0.927532, -0.001070,
		-0.927355, -0.373692, -0.019179,
		31.857716, 35.844082, 40.420811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.261951, 36.321014, 41.045490>,  <32.506863, 36.105663, 40.434235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.261951, 36.321014, 41.045490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.987946, 36.049381, 40.939957>,  <31.823542, 35.886402, 40.876637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.987946, 36.049381, 40.939957>,  <32.261951, 36.321014, 41.045490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.987946, 36.049381, 40.939957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004827, -0.357907, 0.933745,
		-0.728515, 0.640900, 0.241893,
		-0.685013, -0.679080, -0.263834,
		31.782442, 35.845657, 40.860806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.885445, 36.225533, 41.653362>,  <32.261951, 36.321014, 41.045490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.885445, 36.225533, 41.653362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.758085, 35.907562, 41.446785>,  <31.681669, 35.716782, 41.322838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.758085, 35.907562, 41.446785>,  <31.885445, 36.225533, 41.653362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.758085, 35.907562, 41.446785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003797, -0.545864, 0.837865,
		-0.947949, 0.264815, 0.176822,
		-0.318400, -0.794925, -0.516445,
		31.662565, 35.669086, 41.291851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.382429, 35.987343, 42.062904>,  <31.885445, 36.225533, 41.653362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.382429, 35.987343, 42.062904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.515816, 35.699657, 41.819088>,  <31.595848, 35.527046, 41.672798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.515816, 35.699657, 41.819088>,  <31.382429, 35.987343, 42.062904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.515816, 35.699657, 41.819088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257363, -0.552540, 0.792757,
		-0.906954, -0.421230, 0.000846,
		0.333466, -0.719212, -0.609537,
		31.615856, 35.483894, 41.636227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.021854, 35.383232, 42.231037>,  <31.382429, 35.987343, 42.062904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.021854, 35.383232, 42.231037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.343294, 35.254742, 42.030621>,  <31.536158, 35.177647, 41.910370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.343294, 35.254742, 42.030621>,  <31.021854, 35.383232, 42.231037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.343294, 35.254742, 42.030621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094952, -0.761864, 0.640740,
		-0.587550, -0.562472, -0.581730,
		0.803597, -0.321230, -0.501041,
		31.584373, 35.158371, 41.880310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.852840, 34.602966, 42.044159>,  <31.021854, 35.383232, 42.231037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.852840, 34.602966, 42.044159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.245018, 34.678658, 42.065792>,  <31.480324, 34.724072, 42.078770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.245018, 34.678658, 42.065792>,  <30.852840, 34.602966, 42.044159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.245018, 34.678658, 42.065792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104410, -0.733049, 0.672114,
		0.166830, -0.653322, -0.738470,
		0.980442, 0.189233, 0.054081,
		31.539150, 34.735428, 42.082016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.987907, 33.974899, 42.096806>,  <30.852840, 34.602966, 42.044159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.987907, 33.974899, 42.096806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.300859, 34.192623, 42.217873>,  <31.488630, 34.323257, 42.290512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.300859, 34.192623, 42.217873>,  <30.987907, 33.974899, 42.096806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.300859, 34.192623, 42.217873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174648, -0.658234, 0.732275,
		0.597810, -0.520057, -0.610052,
		0.782382, 0.544306, 0.302672,
		31.535574, 34.355915, 42.308674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.514988, 33.462425, 42.260170>,  <30.987907, 33.974899, 42.096806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.514988, 33.462425, 42.260170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.640356, 33.774464, 42.476768>,  <31.715578, 33.961685, 42.606728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.640356, 33.774464, 42.476768>,  <31.514988, 33.462425, 42.260170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.640356, 33.774464, 42.476768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031838, -0.561279, 0.827014,
		0.949080, -0.276444, -0.151080,
		0.313421, 0.780093, 0.541500,
		31.734383, 34.008492, 42.639217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.088680, 33.239502, 42.794945>,  <31.514988, 33.462425, 42.260170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.088680, 33.239502, 42.794945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.935419, 33.582516, 42.932251>,  <31.843462, 33.788322, 43.014633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.935419, 33.582516, 42.932251>,  <32.088680, 33.239502, 42.794945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.935419, 33.582516, 42.932251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147094, -0.310233, 0.939212,
		0.911898, 0.410352, -0.007272,
		-0.383151, 0.857535, 0.343261,
		31.820473, 33.839775, 43.035229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.484825, 33.436203, 43.345078>,  <32.088680, 33.239502, 42.794945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.484825, 33.436203, 43.345078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.137020, 33.627769, 43.393391>,  <31.928337, 33.742710, 43.422379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.137020, 33.627769, 43.393391>,  <32.484825, 33.436203, 43.345078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.137020, 33.627769, 43.393391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139012, -0.471951, 0.870596,
		0.473944, 0.740205, 0.476942,
		-0.869513, 0.478915, 0.120781,
		31.876165, 33.771442, 43.429626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.504967, 33.592228, 43.991478>,  <32.484825, 33.436203, 43.345078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.504967, 33.592228, 43.991478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.112175, 33.624462, 43.923100>,  <31.876499, 33.643803, 43.882072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.112175, 33.624462, 43.923100>,  <32.504967, 33.592228, 43.991478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.112175, 33.624462, 43.923100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187815, -0.315473, 0.930162,
		0.021031, 0.945506, 0.324924,
		-0.981979, 0.080588, -0.170946,
		31.817581, 33.648640, 43.871815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.222439, 33.964153, 44.551704>,  <32.504967, 33.592228, 43.991478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.222439, 33.964153, 44.551704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.919535, 33.760651, 44.387890>,  <31.737793, 33.638550, 44.289600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.919535, 33.760651, 44.387890>,  <32.222439, 33.964153, 44.551704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.919535, 33.760651, 44.387890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404598, -0.126812, 0.905660,
		-0.512697, 0.851518, -0.109813,
		-0.757260, -0.508759, -0.409538,
		31.692356, 33.608025, 44.265030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.706272, 34.300385, 44.769032>,  <32.222439, 33.964153, 44.551704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.706272, 34.300385, 44.769032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.568367, 33.939915, 44.663948>,  <31.485624, 33.723633, 44.600899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.568367, 33.939915, 44.663948>,  <31.706272, 34.300385, 44.769032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.568367, 33.939915, 44.663948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437883, -0.093151, 0.894193,
		-0.830299, 0.423320, -0.362495,
		-0.344763, -0.901179, -0.262708,
		31.464937, 33.669559, 44.585136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.930882, 34.357082, 44.982117>,  <31.706272, 34.300385, 44.769032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.930882, 34.357082, 44.982117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.066135, 33.981461, 44.957344>,  <31.147287, 33.756088, 44.942482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.066135, 33.981461, 44.957344>,  <30.930882, 34.357082, 44.982117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.066135, 33.981461, 44.957344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428214, -0.212124, 0.878428,
		-0.838031, -0.270509, -0.473845,
		0.338137, -0.939057, -0.061931,
		31.167576, 33.699745, 44.938766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.343040, 34.020603, 45.157494>,  <30.930882, 34.357082, 44.982117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.343040, 34.020603, 45.157494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.618845, 33.735798, 45.210583>,  <30.784328, 33.564915, 45.242435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.618845, 33.735798, 45.210583>,  <30.343040, 34.020603, 45.157494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.618845, 33.735798, 45.210583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399266, -0.220775, 0.889857,
		-0.604284, -0.666559, -0.436508,
		0.689512, -0.712009, 0.132723,
		30.825699, 33.522194, 45.250401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.858639, 33.683475, 45.473198>,  <30.343040, 34.020603, 45.157494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.858639, 33.683475, 45.473198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.198357, 33.475441, 45.509445>,  <30.402187, 33.350620, 45.531193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.198357, 33.475441, 45.509445>,  <29.858639, 33.683475, 45.473198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.198357, 33.475441, 45.509445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426612, -0.575027, 0.698102,
		-0.310964, -0.631553, -0.710241,
		0.849296, -0.520082, 0.090615,
		30.453146, 33.319416, 45.536629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.694098, 33.029236, 45.468391>,  <29.858639, 33.683475, 45.473198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.694098, 33.029236, 45.468391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.032883, 33.009552, 45.680138>,  <30.236155, 32.997742, 45.807186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.032883, 33.009552, 45.680138>,  <29.694098, 33.029236, 45.468391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.032883, 33.009552, 45.680138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467259, -0.543886, 0.697034,
		0.253613, -0.837715, -0.483647,
		0.846965, -0.049212, 0.529366,
		30.286972, 32.994789, 45.838947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.821169, 32.347588, 45.629417>,  <29.694098, 33.029236, 45.468391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.821169, 32.347588, 45.629417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.026159, 32.568058, 45.892803>,  <30.149155, 32.700340, 46.050835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.026159, 32.568058, 45.892803>,  <29.821169, 32.347588, 45.629417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.026159, 32.568058, 45.892803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308961, -0.597106, 0.740275,
		0.801193, -0.582813, -0.135712,
		0.512477, 0.551174, 0.658464,
		30.179903, 32.733410, 46.090343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.195105, 31.895184, 46.083813>,  <29.821169, 32.347588, 45.629417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.195105, 31.895184, 46.083813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.160618, 32.236938, 46.288788>,  <30.139925, 32.441990, 46.411774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.160618, 32.236938, 46.288788>,  <30.195105, 31.895184, 46.083813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.160618, 32.236938, 46.288788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420573, -0.497487, 0.758700,
		0.903153, -0.150102, 0.402225,
		-0.086219, 0.854387, 0.512435,
		30.134752, 32.493256, 46.442520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.294662, 31.638952, 46.697849>,  <30.195105, 31.895184, 46.083813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.294662, 31.638952, 46.697849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.127556, 32.001873, 46.716919>,  <30.027292, 32.219627, 46.728359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.127556, 32.001873, 46.716919>,  <30.294662, 31.638952, 46.697849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.127556, 32.001873, 46.716919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548576, -0.293720, 0.782811,
		0.724249, 0.300880, 0.620431,
		-0.417765, 0.907304, 0.047671,
		30.002226, 32.274063, 46.731220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.590242, 32.112652, 47.158878>,  <30.294662, 31.638952, 46.697849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.590242, 32.112652, 47.158878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.212681, 32.242893, 47.136883>,  <29.986143, 32.321037, 47.123684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.212681, 32.242893, 47.136883>,  <30.590242, 32.112652, 47.158878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.212681, 32.242893, 47.136883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229222, -0.526191, 0.818890,
		0.237701, 0.785559, 0.571310,
		-0.943904, 0.325608, -0.054992,
		29.929510, 32.340576, 47.120384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.573772, 32.317749, 47.748623>,  <30.590242, 32.112652, 47.158878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.573772, 32.317749, 47.748623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.211521, 32.244007, 47.595863>,  <29.994169, 32.199760, 47.504208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.211521, 32.244007, 47.595863>,  <30.573772, 32.317749, 47.748623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.211521, 32.244007, 47.595863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223383, -0.558101, 0.799139,
		-0.360465, 0.809034, 0.464251,
		-0.905630, -0.184355, -0.381901,
		29.939833, 32.188702, 47.481293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.034834, 32.669743, 48.227081>,  <30.573772, 32.317749, 47.748623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.034834, 32.669743, 48.227081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.887587, 32.366329, 48.012005>,  <29.799238, 32.184280, 47.882957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.887587, 32.366329, 48.012005>,  <30.034834, 32.669743, 48.227081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.887587, 32.366329, 48.012005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222088, -0.489827, 0.843058,
		-0.902865, 0.429761, 0.011853,
		-0.368119, -0.758535, -0.537692,
		29.777151, 32.138767, 47.850697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.444857, 32.443176, 48.596027>,  <30.034834, 32.669743, 48.227081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.444857, 32.443176, 48.596027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.474562, 32.136074, 48.341457>,  <29.492384, 31.951813, 48.188713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.474562, 32.136074, 48.341457>,  <29.444857, 32.443176, 48.596027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.474562, 32.136074, 48.341457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251906, -0.631937, 0.732939,
		-0.964898, 0.105890, -0.240330,
		0.074262, -0.767752, -0.636429,
		29.496840, 31.905748, 48.150528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.857866, 32.112137, 48.705700>,  <29.444857, 32.443176, 48.596027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.857866, 32.112137, 48.705700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.098280, 31.849346, 48.523647>,  <29.242527, 31.691671, 48.414417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.098280, 31.849346, 48.523647>,  <28.857866, 32.112137, 48.705700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.098280, 31.849346, 48.523647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160842, -0.657239, 0.736319,
		-0.782873, -0.369348, -0.500692,
		0.601033, -0.656977, -0.455128,
		29.278589, 31.652254, 48.387108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.525225, 31.484936, 48.749935>,  <28.857866, 32.112137, 48.705700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.525225, 31.484936, 48.749935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.903957, 31.373444, 48.685665>,  <29.131197, 31.306549, 48.647102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.903957, 31.373444, 48.685665>,  <28.525225, 31.484936, 48.749935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.903957, 31.373444, 48.685665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102900, -0.735544, 0.669617,
		-0.304825, -0.617482, -0.725119,
		0.946833, -0.278731, -0.160674,
		29.188007, 31.289824, 48.637463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.571432, 30.799513, 48.742844>,  <28.525225, 31.484936, 48.749935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.571432, 30.799513, 48.742844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.940670, 30.920635, 48.837677>,  <29.162212, 30.993309, 48.894577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.940670, 30.920635, 48.837677>,  <28.571432, 30.799513, 48.742844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.940670, 30.920635, 48.837677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027009, -0.665994, 0.745468,
		0.383626, -0.681733, -0.622953,
		0.923093, 0.302806, 0.237079,
		29.217598, 31.011477, 48.908802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.004272, 30.178211, 48.640022>,  <28.571432, 30.799513, 48.742844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.004272, 30.178211, 48.640022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.183487, 30.427610, 48.896309>,  <29.291016, 30.577250, 49.050079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.183487, 30.427610, 48.896309>,  <29.004272, 30.178211, 48.640022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.183487, 30.427610, 48.896309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018720, -0.723056, 0.690535,
		0.893820, -0.297391, -0.335627,
		0.448036, 0.623497, 0.640715,
		29.317898, 30.614660, 49.088524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.336578, 29.732544, 48.956989>,  <29.004272, 30.178211, 48.640022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.336578, 29.732544, 48.956989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.355703, 30.053822, 49.194508>,  <29.367178, 30.246588, 49.337017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.355703, 30.053822, 49.194508>,  <29.336578, 29.732544, 48.956989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.355703, 30.053822, 49.194508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065132, -0.595716, 0.800550,
		0.996731, 0.000399, -0.080796,
		0.047813, 0.803195, 0.593795,
		29.370047, 30.294781, 49.372646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.773323, 29.480541, 49.424042>,  <29.336578, 29.732544, 48.956989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.773323, 29.480541, 49.424042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.602148, 29.794003, 49.604156>,  <29.499443, 29.982080, 49.712223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.602148, 29.794003, 49.604156>,  <29.773323, 29.480541, 49.424042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.602148, 29.794003, 49.604156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056530, -0.520437, 0.852027,
		0.902039, 0.339159, 0.267014,
		-0.427937, 0.783656, 0.450282,
		29.473766, 30.029099, 49.739243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.139675, 29.627039, 50.149937>,  <29.773323, 29.480541, 49.424042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.139675, 29.627039, 50.149937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.765734, 29.768827, 50.157948>,  <29.541368, 29.853901, 50.162754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.765734, 29.768827, 50.157948>,  <30.139675, 29.627039, 50.149937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.765734, 29.768827, 50.157948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187199, -0.540074, 0.820535,
		0.301673, 0.763329, 0.571246,
		-0.934853, 0.354470, 0.020032,
		29.485277, 29.875168, 50.163956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.019093, 29.716808, 50.805550>,  <30.139675, 29.627039, 50.149937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.019093, 29.716808, 50.805550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.651291, 29.719894, 50.648350>,  <29.430609, 29.721746, 50.554028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.651291, 29.719894, 50.648350>,  <30.019093, 29.716808, 50.805550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.651291, 29.719894, 50.648350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364284, -0.392338, 0.844611,
		-0.147673, 0.919789, 0.363568,
		-0.919505, 0.007716, -0.393002,
		29.375439, 29.722210, 50.530449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.634405, 29.895357, 51.372540>,  <30.019093, 29.716808, 50.805550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.634405, 29.895357, 51.372540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.377455, 29.738756, 51.109001>,  <29.223286, 29.644796, 50.950878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.377455, 29.738756, 51.109001>,  <29.634405, 29.895357, 51.372540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.377455, 29.738756, 51.109001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550051, -0.363106, 0.752063,
		-0.533667, 0.845506, 0.017903,
		-0.642374, -0.391503, -0.658849,
		29.184742, 29.621305, 50.911346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.951288, 30.084587, 51.529316>,  <29.634405, 29.895357, 51.372540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.951288, 30.084587, 51.529316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.941683, 29.732330, 51.340046>,  <28.935919, 29.520977, 51.226482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.941683, 29.732330, 51.340046>,  <28.951288, 30.084587, 51.529316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.941683, 29.732330, 51.340046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634442, -0.352359, 0.687988,
		-0.772598, 0.316723, -0.550254,
		-0.024015, -0.880641, -0.473174,
		28.934479, 29.468138, 51.198093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.217464, 29.839369, 51.473194>,  <28.951288, 30.084587, 51.529316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.217464, 29.839369, 51.473194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.447495, 29.515755, 51.424614>,  <28.585512, 29.321587, 51.395466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.447495, 29.515755, 51.424614>,  <28.217464, 29.839369, 51.473194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.447495, 29.515755, 51.424614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582933, -0.509385, 0.633022,
		-0.574003, -0.293237, -0.764548,
		0.575074, -0.809036, -0.121451,
		28.620018, 29.273045, 51.388180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.746872, 29.277784, 51.522877>,  <28.217464, 29.839369, 51.473194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.746872, 29.277784, 51.522877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.109177, 29.141680, 51.623924>,  <28.326559, 29.060017, 51.684551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.109177, 29.141680, 51.623924>,  <27.746872, 29.277784, 51.522877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.109177, 29.141680, 51.623924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392136, -0.446902, 0.804057,
		-0.160694, -0.827346, -0.538216,
		0.905763, -0.340261, 0.252618,
		28.380905, 29.039602, 51.699711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.756788, 28.502995, 51.606476>,  <27.746872, 29.277784, 51.522877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.756788, 28.502995, 51.606476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.043678, 28.658062, 51.838097>,  <28.215813, 28.751102, 51.977070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.043678, 28.658062, 51.838097>,  <27.756788, 28.502995, 51.606476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.043678, 28.658062, 51.838097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324427, -0.549648, 0.769827,
		0.616713, -0.740000, -0.268451,
		0.717226, 0.387670, 0.579051,
		28.258846, 28.774363, 52.011810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.108671, 27.995651, 52.058975>,  <27.756788, 28.502995, 51.606476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.108671, 27.995651, 52.058975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.185816, 28.331104, 52.262737>,  <28.232103, 28.532377, 52.384995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.185816, 28.331104, 52.262737>,  <28.108671, 27.995651, 52.058975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.185816, 28.331104, 52.262737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246841, -0.460991, 0.852383,
		0.949670, -0.290135, 0.118101,
		0.192862, 0.838635, 0.509407,
		28.243675, 28.582695, 52.415558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.855797, 27.963505, 52.291832>,  <28.108671, 27.995651, 52.058975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.855797, 27.963505, 52.291832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.560671, 28.114155, 52.515896>,  <28.383595, 28.204546, 52.650333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.560671, 28.114155, 52.515896>,  <28.855797, 27.963505, 52.291832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.560671, 28.114155, 52.515896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011232, -0.822899, 0.568076,
		0.674907, 0.425428, 0.602919,
		-0.737817, 0.376627, 0.560160,
		28.339325, 28.227142, 52.683945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.024801, 27.284506, 52.067291>,  <28.855797, 27.963505, 52.291832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.024801, 27.284506, 52.067291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.946911, 27.336554, 51.678417>,  <28.900177, 27.367783, 51.445091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.946911, 27.336554, 51.678417>,  <29.024801, 27.284506, 52.067291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.946911, 27.336554, 51.678417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271466, -0.945296, -0.180891,
		-0.942543, -0.299141, 0.148754,
		-0.194728, 0.130116, -0.972188,
		28.888493, 27.375589, 51.386761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.653862, 26.810232, 51.772369>,  <29.024801, 27.284506, 52.067291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.653862, 26.810232, 51.772369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.907122, 26.944769, 51.493515>,  <29.059078, 27.025492, 51.326202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.907122, 26.944769, 51.493515>,  <28.653862, 26.810232, 51.772369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.907122, 26.944769, 51.493515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310779, -0.935335, -0.169010,
		-0.708899, -0.109646, -0.696735,
		0.633150, 0.336342, -0.697134,
		29.097067, 27.045671, 51.284374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.668552, 26.406458, 50.976120>,  <28.653862, 26.810232, 51.772369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.668552, 26.406458, 50.976120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.024136, 26.576855, 51.043396>,  <29.237486, 26.679092, 51.083759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.024136, 26.576855, 51.043396>,  <28.668552, 26.406458, 50.976120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.024136, 26.576855, 51.043396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455886, -0.858222, -0.235844,
		0.043874, 0.286329, -0.957126,
		0.888956, 0.425993, 0.168187,
		29.290823, 26.704653, 51.093853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.200378, 26.421041, 50.493313>,  <28.668552, 26.406458, 50.976120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.200378, 26.421041, 50.493313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.362646, 26.417217, 50.858902>,  <29.460007, 26.414923, 51.078255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.362646, 26.417217, 50.858902>,  <29.200378, 26.421041, 50.493313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.362646, 26.417217, 50.858902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551009, -0.795260, -0.252887,
		0.729262, 0.606194, -0.317342,
		0.405668, -0.009562, 0.913970,
		29.484346, 26.414349, 51.133095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.549038, 26.451361, 50.021721>,  <29.200378, 26.421041, 50.493313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.549038, 26.451361, 50.021721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.431248, 26.828724, 50.082726>,  <28.360573, 27.055141, 50.119328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.431248, 26.828724, 50.082726>,  <28.549038, 26.451361, 50.021721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.431248, 26.828724, 50.082726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555243, 0.298791, -0.776163,
		-0.777811, -0.143878, -0.611808,
		-0.294476, 0.943410, 0.152515,
		28.342905, 27.111748, 50.128479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.315794, 26.707949, 49.349724>,  <28.549038, 26.451361, 50.021721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.315794, 26.707949, 49.349724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.464140, 27.004950, 49.572845>,  <28.553148, 27.183149, 49.706718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.464140, 27.004950, 49.572845>,  <28.315794, 26.707949, 49.349724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.464140, 27.004950, 49.572845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638345, 0.232441, -0.733817,
		-0.674517, 0.628222, -0.387768,
		0.370866, 0.742502, 0.557808,
		28.575399, 27.227699, 49.740189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.428740, 27.221130, 48.950668>,  <28.315794, 26.707949, 49.349724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.428740, 27.221130, 48.950668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.691465, 27.290186, 49.244278>,  <28.849100, 27.331619, 49.420444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.691465, 27.290186, 49.244278>,  <28.428740, 27.221130, 48.950668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.691465, 27.290186, 49.244278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636461, 0.395092, -0.662435,
		-0.404369, 0.902274, 0.149623,
		0.656812, 0.172639, 0.734025,
		28.888510, 27.341978, 49.464485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.784349, 27.841875, 48.756794>,  <28.428740, 27.221130, 48.950668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.784349, 27.841875, 48.756794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.007071, 27.692520, 49.053593>,  <29.140703, 27.602907, 49.231670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.007071, 27.692520, 49.053593>,  <28.784349, 27.841875, 48.756794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.007071, 27.692520, 49.053593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830381, 0.272754, -0.485874,
		-0.020962, 0.886671, 0.461924,
		0.556802, -0.373388, 0.741992,
		29.174110, 27.580503, 49.276192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.249641, 28.359892, 48.834808>,  <28.784349, 27.841875, 48.756794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.249641, 28.359892, 48.834808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.428532, 28.041594, 48.998161>,  <29.535866, 27.850615, 49.096172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.428532, 28.041594, 48.998161>,  <29.249641, 28.359892, 48.834808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.428532, 28.041594, 48.998161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831019, 0.200839, -0.518721,
		0.330749, 0.571362, 0.751099,
		0.447227, -0.795744, 0.408385,
		29.562700, 27.802870, 49.120678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.977890, 28.596401, 49.045315>,  <29.249641, 28.359892, 48.834808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.977890, 28.596401, 49.045315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.958780, 28.198210, 49.012478>,  <29.947315, 27.959295, 48.992775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.958780, 28.198210, 49.012478>,  <29.977890, 28.596401, 49.045315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.958780, 28.198210, 49.012478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817869, 0.008194, -0.575345,
		0.573417, -0.094626, 0.813781,
		-0.047775, -0.995479, -0.082090,
		29.944448, 27.899567, 48.987850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.605747, 28.362009, 49.160290>,  <29.977890, 28.596401, 49.045315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.605747, 28.362009, 49.160290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.457850, 28.031208, 48.990891>,  <30.369110, 27.832727, 48.889252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.457850, 28.031208, 48.990891>,  <30.605747, 28.362009, 49.160290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.457850, 28.031208, 48.990891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847583, -0.113488, -0.518385,
		0.380645, -0.550622, 0.742917,
		-0.369746, -0.827004, -0.423499,
		30.346926, 27.783106, 48.863842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.181973, 27.883375, 49.293800>,  <30.605747, 28.362009, 49.160290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.181973, 27.883375, 49.293800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.942480, 27.782286, 48.989788>,  <30.798784, 27.721632, 48.807381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.942480, 27.782286, 48.989788>,  <31.181973, 27.883375, 49.293800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.942480, 27.782286, 48.989788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800936, -0.194466, -0.566290,
		-0.004686, -0.947795, 0.318847,
		-0.598732, -0.252722, -0.760034,
		30.762861, 27.706469, 48.761776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.651108, 27.496563, 48.923420>,  <31.181973, 27.883375, 49.293800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.651108, 27.496563, 48.923420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.358154, 27.618916, 48.680092>,  <31.182383, 27.692327, 48.534096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.358154, 27.618916, 48.680092>,  <31.651108, 27.496563, 48.923420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.358154, 27.618916, 48.680092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667269, 0.144612, -0.730643,
		-0.135521, -0.941022, -0.310017,
		-0.732384, 0.305882, -0.608317,
		31.138439, 27.710680, 48.497597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.826385, 27.183704, 48.232750>,  <31.651108, 27.496563, 48.923420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.826385, 27.183704, 48.232750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.588650, 27.496115, 48.156059>,  <31.446009, 27.683561, 48.110046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.588650, 27.496115, 48.156059>,  <31.826385, 27.183704, 48.232750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.588650, 27.496115, 48.156059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644404, 0.319872, -0.694569,
		-0.481151, -0.536355, -0.693409,
		-0.594338, 0.781028, -0.191723,
		31.410349, 27.730423, 48.098541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.703781, 27.212914, 47.482666>,  <31.826385, 27.183704, 48.232750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.703781, 27.212914, 47.482666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.582823, 27.575865, 47.599434>,  <31.510248, 27.793636, 47.669495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.582823, 27.575865, 47.599434>,  <31.703781, 27.212914, 47.482666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.582823, 27.575865, 47.599434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303391, 0.381957, -0.872962,
		-0.903609, -0.175415, -0.390794,
		-0.302397, 0.907380, 0.291921,
		31.492104, 27.848080, 47.687012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.357233, 27.484758, 46.934982>,  <31.703781, 27.212914, 47.482666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.357233, 27.484758, 46.934982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.460651, 27.810877, 47.142231>,  <31.522701, 28.006548, 47.266579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.460651, 27.810877, 47.142231>,  <31.357233, 27.484758, 46.934982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.460651, 27.810877, 47.142231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414981, 0.390605, -0.821717,
		-0.872322, 0.427460, -0.237344,
		0.258544, 0.815295, 0.518121,
		31.538214, 28.055466, 47.297668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.149437, 28.056650, 46.556797>,  <31.357233, 27.484758, 46.934982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.149437, 28.056650, 46.556797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.429544, 28.193251, 46.807556>,  <31.597609, 28.275211, 46.958012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.429544, 28.193251, 46.807556>,  <31.149437, 28.056650, 46.556797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.429544, 28.193251, 46.807556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455616, 0.462247, -0.760751,
		-0.549577, 0.818356, 0.168106,
		0.700271, 0.341499, 0.626896,
		31.639626, 28.295700, 46.995625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.286222, 28.629517, 46.183609>,  <31.149437, 28.056650, 46.556797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.286222, 28.629517, 46.183609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.574247, 28.669884, 46.458221>,  <31.747063, 28.694105, 46.622990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.574247, 28.669884, 46.458221>,  <31.286222, 28.629517, 46.183609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.574247, 28.669884, 46.458221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507564, 0.598041, -0.620263,
		-0.473171, 0.795086, 0.379403,
		0.720061, 0.100919, 0.686533,
		31.790266, 28.700159, 46.664181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.300735, 29.306456, 46.436592>,  <31.286222, 28.629517, 46.183609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.300735, 29.306456, 46.436592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.660528, 29.145676, 46.505142>,  <31.876404, 29.049208, 46.546272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.660528, 29.145676, 46.505142>,  <31.300735, 29.306456, 46.436592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.660528, 29.145676, 46.505142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432637, 0.764211, -0.478338,
		0.061302, 0.504399, 0.861292,
		0.899482, -0.401950, 0.171374,
		31.930372, 29.025091, 46.556553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.737228, 29.822836, 46.704819>,  <31.300735, 29.306456, 46.436592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.737228, 29.822836, 46.704819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.951113, 29.536537, 46.525135>,  <32.079445, 29.364758, 46.417324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.951113, 29.536537, 46.525135>,  <31.737228, 29.822836, 46.704819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.951113, 29.536537, 46.525135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512994, 0.697366, -0.500516,
		0.671505, 0.037192, 0.740066,
		0.534713, -0.715749, -0.449205,
		32.111526, 29.321812, 46.390373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.429108, 30.189215, 46.566433>,  <31.737228, 29.822836, 46.704819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.429108, 30.189215, 46.566433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.409077, 29.858095, 46.342918>,  <32.397057, 29.659424, 46.208809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.409077, 29.858095, 46.342918>,  <32.429108, 30.189215, 46.566433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.409077, 29.858095, 46.342918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346000, 0.510461, -0.787219,
		0.936897, -0.232764, 0.260855,
		-0.050080, -0.827799, -0.558785,
		32.394051, 29.609756, 46.175282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.064800, 30.107084, 46.172104>,  <32.429108, 30.189215, 46.566433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.064800, 30.107084, 46.172104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.803738, 29.903908, 45.947235>,  <32.647102, 29.782001, 45.812313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.803738, 29.903908, 45.947235>,  <33.064800, 30.107084, 46.172104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.803738, 29.903908, 45.947235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407511, 0.390187, -0.825644,
		0.638733, -0.767951, -0.047664,
		-0.652652, -0.507942, -0.562174,
		32.607941, 29.751526, 45.778584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.468304, 29.771116, 45.631481>,  <33.064800, 30.107084, 46.172104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.468304, 29.771116, 45.631481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.093815, 29.770937, 45.490921>,  <32.869122, 29.770830, 45.406586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.093815, 29.770937, 45.490921>,  <33.468304, 29.771116, 45.631481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.093815, 29.770937, 45.490921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342144, 0.226841, -0.911856,
		0.080118, -0.973932, -0.212221,
		-0.936226, -0.000446, -0.351399,
		32.812946, 29.770803, 45.385502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.503784, 29.446815, 44.890469>,  <33.468304, 29.771116, 45.631481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.503784, 29.446815, 44.890469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.153503, 29.638916, 44.910507>,  <32.943336, 29.754175, 44.922531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.153503, 29.638916, 44.910507>,  <33.503784, 29.446815, 44.890469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.153503, 29.638916, 44.910507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181959, 0.424328, -0.887038,
		-0.447260, -0.767662, -0.458969,
		-0.875700, 0.480251, 0.050101,
		32.890793, 29.782991, 44.925537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.210106, 29.387487, 44.245224>,  <33.503784, 29.446815, 44.890469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.210106, 29.387487, 44.245224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.017918, 29.704416, 44.395622>,  <32.902607, 29.894573, 44.485863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.017918, 29.704416, 44.395622>,  <33.210106, 29.387487, 44.245224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.017918, 29.704416, 44.395622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072045, 0.391618, -0.917303,
		-0.874049, -0.467822, -0.131076,
		-0.480466, 0.792324, 0.375997,
		32.873779, 29.942114, 44.508423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.588146, 29.526911, 43.833263>,  <33.210106, 29.387487, 44.245224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.588146, 29.526911, 43.833263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.637531, 29.879930, 44.014755>,  <32.667160, 30.091742, 44.123650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.637531, 29.879930, 44.014755>,  <32.588146, 29.526911, 43.833263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.637531, 29.879930, 44.014755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007550, 0.458047, -0.888896,
		-0.992321, 0.106316, 0.063212,
		0.123458, 0.882548, 0.453727,
		32.674568, 30.144695, 44.150875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.124046, 29.913965, 43.580524>,  <32.588146, 29.526911, 43.833263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.124046, 29.913965, 43.580524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.368824, 30.180601, 43.750790>,  <32.515690, 30.340582, 43.852947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.368824, 30.180601, 43.750790>,  <32.124046, 29.913965, 43.580524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.368824, 30.180601, 43.750790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142322, 0.622221, -0.769796,
		-0.777993, 0.410488, 0.475633,
		0.611940, 0.666589, 0.425662,
		32.552406, 30.380577, 43.878487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.766621, 30.610657, 43.641552>,  <32.124046, 29.913965, 43.580524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.766621, 30.610657, 43.641552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.163963, 30.656458, 43.646130>,  <32.402370, 30.683939, 43.648876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.163963, 30.656458, 43.646130>,  <31.766621, 30.610657, 43.641552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.163963, 30.656458, 43.646130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070879, 0.687154, -0.723046,
		-0.090654, 0.717431, 0.690706,
		0.993357, 0.114503, 0.011442,
		32.461971, 30.690809, 43.649563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.911316, 31.332363, 43.532558>,  <31.766621, 30.610657, 43.641552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.911316, 31.332363, 43.532558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.272167, 31.195971, 43.426804>,  <32.488678, 31.114136, 43.363350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.272167, 31.195971, 43.426804>,  <31.911316, 31.332363, 43.532558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.272167, 31.195971, 43.426804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044172, 0.536544, -0.842716,
		0.429203, 0.771915, 0.468969,
		0.902127, -0.340981, -0.264383,
		32.542805, 31.093676, 43.347488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.135471, 31.921461, 43.214153>,  <31.911316, 31.332363, 43.532558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.135471, 31.921461, 43.214153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.375053, 31.627068, 43.087929>,  <32.518803, 31.450432, 43.012196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.375053, 31.627068, 43.087929>,  <32.135471, 31.921461, 43.214153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.375053, 31.627068, 43.087929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012795, 0.385223, -0.922735,
		0.800678, 0.556717, 0.221316,
		0.598958, -0.735982, -0.315562,
		32.554741, 31.406273, 42.993259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.624046, 32.250984, 42.941730>,  <32.135471, 31.921461, 43.214153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.624046, 32.250984, 42.941730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.675442, 31.898706, 42.759357>,  <32.706280, 31.687340, 42.649933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.675442, 31.898706, 42.759357>,  <32.624046, 32.250984, 42.941730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.675442, 31.898706, 42.759357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336626, 0.471176, -0.815277,
		0.932831, -0.048726, 0.357003,
		0.128486, -0.880692, -0.455930,
		32.713989, 31.634499, 42.622578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.259384, 32.302982, 42.673328>,  <32.624046, 32.250984, 42.941730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.259384, 32.302982, 42.673328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.102962, 32.001030, 42.462715>,  <33.009109, 31.819859, 42.336346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.102962, 32.001030, 42.462715>,  <33.259384, 32.302982, 42.673328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.102962, 32.001030, 42.462715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275992, 0.449580, -0.849533,
		0.878014, -0.477528, 0.032533,
		-0.391049, -0.754880, -0.526532,
		32.985649, 31.774567, 42.304756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.825172, 31.975470, 42.218323>,  <33.259384, 32.302982, 42.673328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.825172, 31.975470, 42.218323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.471832, 31.890905, 42.050995>,  <33.259827, 31.840166, 41.950596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.471832, 31.890905, 42.050995>,  <33.825172, 31.975470, 42.218323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.471832, 31.890905, 42.050995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341485, 0.321054, -0.883353,
		0.321054, -0.923163, -0.211410,
		0.883353, 0.211410, 0.418322,
		33.206825, 31.827482, 41.925499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.007462, 31.710426, 41.523930>,  <33.825172, 31.975470, 42.218323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.007462, 31.710426, 41.523930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.624100, 31.824055, 41.512814>,  <33.394085, 31.892231, 41.506145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.624100, 31.824055, 41.512814>,  <34.007462, 31.710426, 41.523930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.624100, 31.824055, 41.512814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195403, 0.582039, -0.789334,
		-0.208051, -0.761929, -0.613334,
		-0.958401, 0.284069, -0.027789,
		33.336578, 31.909275, 41.504478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.931183, 31.741568, 40.869820>,  <34.007462, 31.710426, 41.523930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.931183, 31.741568, 40.869820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.638737, 31.969421, 41.020016>,  <33.463268, 32.106133, 41.110134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.638737, 31.969421, 41.020016>,  <33.931183, 31.741568, 40.869820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.638737, 31.969421, 41.020016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076708, 0.615502, -0.784393,
		-0.677932, -0.544676, -0.493696,
		-0.731111, 0.569636, 0.375488,
		33.419403, 32.140312, 41.132664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.498402, 31.840767, 40.346703>,  <33.931183, 31.741568, 40.869820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.498402, 31.840767, 40.346703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.387615, 32.138638, 40.589600>,  <33.321144, 32.317360, 40.735340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.387615, 32.138638, 40.589600>,  <33.498402, 31.840767, 40.346703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.387615, 32.138638, 40.589600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093622, 0.649877, -0.754251,
		-0.956307, -0.152053, -0.249713,
		-0.276969, 0.744674, 0.607247,
		33.304523, 32.362041, 40.771774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.908672, 32.179985, 40.038528>,  <33.498402, 31.840767, 40.346703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.908672, 32.179985, 40.038528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.081650, 32.430218, 40.298264>,  <33.185436, 32.580357, 40.454105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.081650, 32.430218, 40.298264>,  <32.908672, 32.179985, 40.038528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.081650, 32.430218, 40.298264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028582, 0.710283, -0.703336,
		-0.901207, 0.322713, 0.289278,
		0.432445, 0.625583, 0.649336,
		33.211384, 32.617893, 40.493065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.629772, 32.812965, 40.030468>,  <32.908672, 32.179985, 40.038528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.629772, 32.812965, 40.030468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.965298, 32.906944, 40.226910>,  <33.166615, 32.963333, 40.344776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.965298, 32.906944, 40.226910>,  <32.629772, 32.812965, 40.030468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.965298, 32.906944, 40.226910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133402, 0.785880, -0.603819,
		-0.527815, 0.572008, 0.627868,
		0.838818, 0.234946, 0.491106,
		33.216942, 32.977428, 40.374241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.575066, 33.417198, 39.978664>,  <32.629772, 32.812965, 40.030468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.575066, 33.417198, 39.978664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.963943, 33.369183, 40.059093>,  <33.197269, 33.340374, 40.107353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.963943, 33.369183, 40.059093>,  <32.575066, 33.417198, 39.978664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.963943, 33.369183, 40.059093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219878, 0.763393, -0.607358,
		-0.080591, 0.634681, 0.768560,
		0.972193, -0.120042, 0.201075,
		33.255600, 33.333168, 40.119415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.791031, 34.103443, 40.096413>,  <32.575066, 33.417198, 39.978664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.791031, 34.103443, 40.096413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.106686, 33.873703, 40.009342>,  <33.296078, 33.735859, 39.957100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.106686, 33.873703, 40.009342>,  <32.791031, 34.103443, 40.096413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.106686, 33.873703, 40.009342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271473, 0.644046, -0.715197,
		0.550968, 0.505295, 0.664162,
		0.789137, -0.574353, -0.217674,
		33.343426, 33.701397, 39.944038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.340931, 34.535736, 39.983952>,  <32.791031, 34.103443, 40.096413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.340931, 34.535736, 39.983952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.439880, 34.201706, 39.787403>,  <33.499249, 34.001286, 39.669472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.439880, 34.201706, 39.787403>,  <33.340931, 34.535736, 39.983952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.439880, 34.201706, 39.787403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374201, 0.550130, -0.746546,
		0.893745, 0.000802, 0.448575,
		0.247373, -0.835079, -0.491376,
		33.514091, 33.951183, 39.639992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.906567, 34.722485, 39.587624>,  <33.340931, 34.535736, 39.983952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.906567, 34.722485, 39.587624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.806381, 34.376308, 39.414055>,  <33.746269, 34.168602, 39.309914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.806381, 34.376308, 39.414055>,  <33.906567, 34.722485, 39.587624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.806381, 34.376308, 39.414055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163917, 0.403825, -0.900032,
		0.954149, -0.296552, 0.040717,
		-0.250463, -0.865438, -0.433918,
		33.731243, 34.116676, 39.283878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.423458, 34.642166, 39.044956>,  <33.906567, 34.722485, 39.587624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.423458, 34.642166, 39.044956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.093750, 34.435291, 38.952782>,  <33.895927, 34.311165, 38.897476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.093750, 34.435291, 38.952782>,  <34.423458, 34.642166, 39.044956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.093750, 34.435291, 38.952782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011861, 0.422668, -0.906207,
		0.566079, -0.744222, -0.354525,
		-0.824266, -0.517190, -0.230436,
		33.846470, 34.280136, 38.883652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.622013, 34.324806, 38.365944>,  <34.423458, 34.642166, 39.044956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.622013, 34.324806, 38.365944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.235077, 34.353378, 38.463226>,  <34.002914, 34.370522, 38.521595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.235077, 34.353378, 38.463226>,  <34.622013, 34.324806, 38.365944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.235077, 34.353378, 38.463226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191257, 0.423976, -0.885249,
		-0.166345, -0.902852, -0.396468,
		-0.967342, 0.071430, 0.243203,
		33.944874, 34.374805, 38.536186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.700642, 33.698029, 38.803036>,  <34.622013, 34.324806, 38.365944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.700642, 33.698029, 38.803036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.734196, 33.565201, 38.427227>,  <34.754330, 33.485504, 38.201744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.734196, 33.565201, 38.427227>,  <34.700642, 33.698029, 38.803036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.734196, 33.565201, 38.427227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450298, -0.853716, 0.261535,
		-0.888929, 0.401124, -0.221145,
		0.083887, -0.332067, -0.939518,
		34.759361, 33.465580, 38.145370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.026966, 33.284519, 38.628304>,  <34.700642, 33.698029, 38.803036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.026966, 33.284519, 38.628304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.368935, 33.200619, 38.438522>,  <34.574116, 33.150276, 38.324654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.368935, 33.200619, 38.438522>,  <34.026966, 33.284519, 38.628304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.368935, 33.200619, 38.438522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104176, -0.965395, 0.239081,
		-0.508184, -0.154969, -0.847191,
		0.854924, -0.209754, -0.474454,
		34.625412, 33.137691, 38.296185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.944538, 32.840992, 38.037464>,  <34.026966, 33.284519, 38.628304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.944538, 32.840992, 38.037464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.313965, 32.788109, 38.181431>,  <34.535622, 32.756378, 38.267811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.313965, 32.788109, 38.181431>,  <33.944538, 32.840992, 38.037464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.313965, 32.788109, 38.181431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204134, -0.964128, 0.169667,
		0.324576, -0.230171, -0.917427,
		0.923569, -0.132208, 0.359918,
		34.591034, 32.748447, 38.289406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.010517, 32.172428, 37.875053>,  <33.944538, 32.840992, 38.037464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.010517, 32.172428, 37.875053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.326496, 32.233326, 38.112640>,  <34.516083, 32.269863, 38.255192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.326496, 32.233326, 38.112640>,  <34.010517, 32.172428, 37.875053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.326496, 32.233326, 38.112640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014908, -0.963631, 0.266819,
		0.612991, -0.219628, -0.758951,
		0.789950, 0.152244, 0.593971,
		34.563480, 32.278999, 38.290833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.363602, 31.599073, 37.813076>,  <34.010517, 32.172428, 37.875053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.363602, 31.599073, 37.813076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.484718, 31.751318, 38.162579>,  <34.557388, 31.842665, 38.372280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.484718, 31.751318, 38.162579>,  <34.363602, 31.599073, 37.813076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.484718, 31.751318, 38.162579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138306, -0.889540, 0.435419,
		0.942967, -0.252689, -0.216708,
		0.302796, 0.380614, 0.873755,
		34.575558, 31.865501, 38.424706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.952339, 31.167042, 38.008274>,  <34.363602, 31.599073, 37.813076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.952339, 31.167042, 38.008274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.798920, 31.339140, 38.335144>,  <34.706867, 31.442398, 38.531265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.798920, 31.339140, 38.335144>,  <34.952339, 31.167042, 38.008274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.798920, 31.339140, 38.335144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009502, -0.886642, 0.462358,
		0.923473, 0.169571, 0.344157,
		-0.383547, 0.430245, 0.817178,
		34.683857, 31.468214, 38.580299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.348331, 30.919773, 38.623432>,  <34.952339, 31.167042, 38.008274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.348331, 30.919773, 38.623432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.027504, 31.082851, 38.798004>,  <34.835007, 31.180698, 38.902748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.027504, 31.082851, 38.798004>,  <35.348331, 30.919773, 38.623432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.027504, 31.082851, 38.798004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043766, -0.688667, 0.723755,
		0.595626, 0.599603, 0.534516,
		-0.802069, 0.407694, 0.436430,
		34.786884, 31.205160, 38.928932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.521832, 30.964157, 39.403336>,  <35.348331, 30.919773, 38.623432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.521832, 30.964157, 39.403336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.128868, 30.976109, 39.329594>,  <34.893089, 30.983280, 39.285347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.128868, 30.976109, 39.329594>,  <35.521832, 30.964157, 39.403336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.128868, 30.976109, 39.329594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166027, -0.591769, 0.788825,
		-0.085526, 0.805554, 0.586318,
		-0.982405, 0.029880, -0.184355,
		34.834145, 30.985073, 39.274288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.219875, 31.061594, 40.105701>,  <35.521832, 30.964157, 39.403336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.219875, 31.061594, 40.105701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.925213, 30.917341, 39.876869>,  <34.748413, 30.830790, 39.739571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.925213, 30.917341, 39.876869>,  <35.219875, 31.061594, 40.105701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.925213, 30.917341, 39.876869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170843, -0.719265, 0.673402,
		-0.654330, 0.593804, 0.468241,
		-0.736658, -0.360631, -0.572084,
		34.704216, 30.809153, 39.705242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.837635, 31.001581, 40.624832>,  <35.219875, 31.061594, 40.105701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.837635, 31.001581, 40.624832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.707821, 30.794659, 40.308079>,  <34.629932, 30.670506, 40.118027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.707821, 30.794659, 40.308079>,  <34.837635, 31.001581, 40.624832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.707821, 30.794659, 40.308079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394446, -0.686907, 0.610386,
		-0.859703, 0.510446, 0.018876,
		-0.324535, -0.517305, -0.791879,
		34.610458, 30.639467, 40.070515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.038479, 30.852493, 40.722660>,  <34.837635, 31.001581, 40.624832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.038479, 30.852493, 40.722660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.218102, 30.576946, 40.495041>,  <34.325874, 30.411619, 40.358471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.218102, 30.576946, 40.495041>,  <34.038479, 30.852493, 40.722660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.218102, 30.576946, 40.495041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325162, -0.719192, 0.614030,
		-0.832237, -0.090702, -0.546951,
		0.449056, -0.688866, -0.569045,
		34.352818, 30.370287, 40.324329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.494774, 30.229090, 40.694313>,  <34.038479, 30.852493, 40.722660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.494774, 30.229090, 40.694313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.862083, 30.106066, 40.594566>,  <34.082470, 30.032251, 40.534718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.862083, 30.106066, 40.594566>,  <33.494774, 30.229090, 40.694313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.862083, 30.106066, 40.594566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099526, -0.788861, 0.606460,
		-0.383234, -0.532078, -0.755000,
		0.918273, -0.307558, -0.249363,
		34.137566, 30.013798, 40.519756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.429314, 29.480305, 40.547173>,  <33.494774, 30.229090, 40.694313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.429314, 29.480305, 40.547173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.823513, 29.503784, 40.610855>,  <34.060032, 29.517872, 40.649067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.823513, 29.503784, 40.610855>,  <33.429314, 29.480305, 40.547173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.823513, 29.503784, 40.610855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075712, -0.687576, 0.722154,
		0.151856, -0.723736, -0.673161,
		0.985499, 0.058697, 0.159208,
		34.119164, 29.521393, 40.658619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.582790, 28.798851, 40.704258>,  <33.429314, 29.480305, 40.547173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.582790, 28.798851, 40.704258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.899891, 28.998594, 40.844078>,  <34.090153, 29.118441, 40.927971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.899891, 28.998594, 40.844078>,  <33.582790, 28.798851, 40.704258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.899891, 28.998594, 40.844078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071512, -0.493308, 0.866910,
		0.605336, -0.712241, -0.355360,
		0.792751, 0.499359, 0.349551,
		34.137718, 29.148401, 40.948944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.966339, 28.232155, 40.995579>,  <33.582790, 28.798851, 40.704258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.966339, 28.232155, 40.995579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.086712, 28.573023, 41.166805>,  <34.158936, 28.777544, 41.269543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.086712, 28.573023, 41.166805>,  <33.966339, 28.232155, 40.995579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.086712, 28.573023, 41.166805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016476, -0.444165, 0.895793,
		0.953502, -0.276629, -0.119624,
		0.300935, 0.852170, 0.428070,
		34.176994, 28.828674, 41.295227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.699596, 28.144665, 41.357323>,  <33.966339, 28.232155, 40.995579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.699596, 28.144665, 41.357323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.520775, 28.458496, 41.529175>,  <34.413483, 28.646795, 41.632286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.520775, 28.458496, 41.529175>,  <34.699596, 28.144665, 41.357323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.520775, 28.458496, 41.529175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288194, -0.328355, 0.899515,
		0.846811, 0.525947, -0.079319,
		-0.447053, 0.784578, 0.429629,
		34.386658, 28.693869, 41.658062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.106651, 28.334673, 41.899315>,  <34.699596, 28.144665, 41.357323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.106651, 28.334673, 41.899315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.752216, 28.485136, 42.007648>,  <34.539555, 28.575413, 42.072647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.752216, 28.485136, 42.007648>,  <35.106651, 28.334673, 41.899315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.752216, 28.485136, 42.007648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206343, -0.203090, 0.957171,
		0.415049, 0.904025, 0.102339,
		-0.886091, 0.376156, 0.270832,
		34.486389, 28.597982, 42.088898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.300240, 28.583838, 42.505833>,  <35.106651, 28.334673, 41.899315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.300240, 28.583838, 42.505833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.900612, 28.566805, 42.508648>,  <34.660835, 28.556585, 42.510338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.900612, 28.566805, 42.508648>,  <35.300240, 28.583838, 42.505833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.900612, 28.566805, 42.508648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017738, -0.256516, 0.966377,
		-0.039345, 0.965602, 0.257033,
		-0.999068, -0.042582, 0.007035,
		34.600891, 28.554029, 42.510757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.063583, 28.841192, 43.090981>,  <35.300240, 28.583838, 42.505833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.063583, 28.841192, 43.090981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.741730, 28.624727, 42.993244>,  <34.548618, 28.494848, 42.934601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.741730, 28.624727, 42.993244>,  <35.063583, 28.841192, 43.090981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.741730, 28.624727, 42.993244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063974, -0.330106, 0.941773,
		-0.590314, 0.773415, 0.230995,
		-0.804634, -0.541165, -0.244345,
		34.500340, 28.462378, 42.919941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.619995, 28.970762, 43.620155>,  <35.063583, 28.841192, 43.090981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.619995, 28.970762, 43.620155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.491268, 28.642422, 43.431419>,  <34.414032, 28.445417, 43.318176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.491268, 28.642422, 43.431419>,  <34.619995, 28.970762, 43.620155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.491268, 28.642422, 43.431419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092996, -0.468542, 0.878533,
		-0.942225, 0.326604, 0.074447,
		-0.321814, -0.820852, -0.471844,
		34.394726, 28.396166, 43.289867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.080067, 28.882105, 44.057587>,  <34.619995, 28.970762, 43.620155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.080067, 28.882105, 44.057587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.132771, 28.546719, 43.846073>,  <34.164394, 28.345488, 43.719166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.132771, 28.546719, 43.846073>,  <34.080067, 28.882105, 44.057587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.132771, 28.546719, 43.846073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007040, -0.534216, 0.845319,
		-0.991256, -0.107657, -0.076292,
		0.131761, -0.838465, -0.528787,
		34.172298, 28.295179, 43.687435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.590912, 28.415911, 44.362007>,  <34.080067, 28.882105, 44.057587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.590912, 28.415911, 44.362007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.869858, 28.188473, 44.187477>,  <34.037224, 28.052010, 44.082760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.869858, 28.188473, 44.187477>,  <33.590912, 28.415911, 44.362007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.869858, 28.188473, 44.187477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025951, -0.628418, 0.777443,
		-0.716247, -0.530838, -0.452992,
		0.697364, -0.568596, -0.436327,
		34.079067, 28.017895, 44.056580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.194424, 27.820951, 44.309135>,  <33.590912, 28.415911, 44.362007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.194424, 27.820951, 44.309135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.589828, 27.763159, 44.326851>,  <33.827072, 27.728483, 44.337482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.589828, 27.763159, 44.326851>,  <33.194424, 27.820951, 44.309135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.589828, 27.763159, 44.326851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113679, -0.517861, 0.847878,
		-0.099564, -0.843176, -0.528338,
		0.988516, -0.144479, 0.044292,
		33.886383, 27.719814, 44.340137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.246498, 27.194340, 44.622246>,  <33.194424, 27.820951, 44.309135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.246498, 27.194340, 44.622246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.620029, 27.331209, 44.663971>,  <33.844147, 27.413330, 44.689007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.620029, 27.331209, 44.663971>,  <33.246498, 27.194340, 44.622246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.620029, 27.331209, 44.663971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059274, -0.435573, 0.898200,
		0.352774, -0.832582, -0.427033,
		0.933829, 0.342174, 0.104308,
		33.900177, 27.433861, 44.695263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.642536, 26.602432, 45.017181>,  <33.246498, 27.194340, 44.622246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.642536, 26.602432, 45.017181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.883183, 26.917150, 45.072342>,  <34.027569, 27.105982, 45.105438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.883183, 26.917150, 45.072342>,  <33.642536, 26.602432, 45.017181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.883183, 26.917150, 45.072342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197272, -0.313635, 0.928826,
		0.774046, -0.531588, -0.343899,
		0.601612, 0.786795, 0.137901,
		34.063667, 27.153189, 45.113712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.173866, 26.460163, 45.413250>,  <33.642536, 26.602432, 45.017181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.173866, 26.460163, 45.413250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.112965, 26.851818, 45.467083>,  <34.076424, 27.086811, 45.499382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.112965, 26.851818, 45.467083>,  <34.173866, 26.460163, 45.413250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.112965, 26.851818, 45.467083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217890, -0.099571, 0.970881,
		0.964024, 0.177144, -0.198184,
		-0.152252, 0.979135, 0.134586,
		34.067287, 27.145559, 45.507458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.614094, 26.537825, 45.939301>,  <34.173866, 26.460163, 45.413250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.614094, 26.537825, 45.939301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.391102, 26.869873, 45.943729>,  <34.257309, 27.069101, 45.946384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.391102, 26.869873, 45.943729>,  <34.614094, 26.537825, 45.939301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.391102, 26.869873, 45.943729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025123, 0.003543, 0.999678,
		0.829813, 0.557574, -0.022831,
		-0.557475, 0.830120, 0.011068,
		34.223858, 27.118910, 45.947048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.983002, 27.019529, 46.377800>,  <34.614094, 26.537825, 45.939301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.983002, 27.019529, 46.377800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.597206, 27.125124, 46.381329>,  <34.365730, 27.188480, 46.383446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.597206, 27.125124, 46.381329>,  <34.983002, 27.019529, 46.377800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.597206, 27.125124, 46.381329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013766, -0.083577, 0.996406,
		0.263775, 0.960898, 0.084243,
		-0.964486, 0.263987, 0.008818,
		34.307861, 27.204321, 46.383972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.933228, 27.447958, 46.943085>,  <34.983002, 27.019529, 46.377800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.933228, 27.447958, 46.943085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.555813, 27.348656, 46.855350>,  <34.329365, 27.289074, 46.802711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.555813, 27.348656, 46.855350>,  <34.933228, 27.447958, 46.943085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.555813, 27.348656, 46.855350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227054, 0.002534, 0.973879,
		-0.241215, 0.968691, -0.058758,
		-0.943537, -0.248256, -0.219334,
		34.272751, 27.274179, 46.789551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.466949, 27.940123, 47.416683>,  <34.933228, 27.447958, 46.943085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.466949, 27.940123, 47.416683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.291409, 27.597202, 47.309021>,  <34.186085, 27.391451, 47.244423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.291409, 27.597202, 47.309021>,  <34.466949, 27.940123, 47.416683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.291409, 27.597202, 47.309021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144179, -0.228473, 0.962815,
		-0.886916, 0.461341, -0.023338,
		-0.438854, -0.857301, -0.269152,
		34.159752, 27.340012, 47.228275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.841385, 27.961966, 47.776058>,  <34.466949, 27.940123, 47.416683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.841385, 27.961966, 47.776058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903362, 27.577885, 47.683102>,  <33.940548, 27.347437, 47.627327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903362, 27.577885, 47.683102>,  <33.841385, 27.961966, 47.776058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.903362, 27.577885, 47.683102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043187, -0.241592, 0.969417,
		-0.986979, -0.140170, -0.078902,
		0.154945, -0.960201, -0.232393,
		33.949844, 27.289824, 47.613384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.257412, 27.700266, 48.130611>,  <33.841385, 27.961966, 47.776058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.257412, 27.700266, 48.130611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.479126, 27.376665, 48.052349>,  <33.612156, 27.182505, 48.005390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.479126, 27.376665, 48.052349>,  <33.257412, 27.700266, 48.130611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.479126, 27.376665, 48.052349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178739, -0.345287, 0.921319,
		-0.812908, -0.475702, -0.335988,
		0.554286, -0.809002, -0.195660,
		33.645412, 27.133965, 47.993652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.883846, 27.062199, 48.388779>,  <33.257412, 27.700266, 48.130611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.883846, 27.062199, 48.388779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.271481, 26.974916, 48.342724>,  <33.504063, 26.922548, 48.315090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.271481, 26.974916, 48.342724>,  <32.883846, 27.062199, 48.388779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.271481, 26.974916, 48.342724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013811, -0.513914, 0.857730,
		-0.246329, -0.829626, -0.501042,
		0.969088, -0.218204, -0.115135,
		33.562206, 26.909454, 48.308182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.919617, 26.331608, 48.434544>,  <32.883846, 27.062199, 48.388779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.919617, 26.331608, 48.434544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.283997, 26.471151, 48.522602>,  <33.502625, 26.554878, 48.575439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.283997, 26.471151, 48.522602>,  <32.919617, 26.331608, 48.434544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.283997, 26.471151, 48.522602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003453, -0.527208, 0.849729,
		0.412500, -0.774822, -0.479056,
		0.910951, 0.348859, 0.220149,
		33.557281, 26.575809, 48.588646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.356720, 25.761684, 48.656487>,  <32.919617, 26.331608, 48.434544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.356720, 25.761684, 48.656487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.565594, 26.068071, 48.806484>,  <33.690918, 26.251904, 48.896481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.565594, 26.068071, 48.806484>,  <33.356720, 25.761684, 48.656487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.565594, 26.068071, 48.806484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112338, -0.497647, 0.860074,
		0.845402, -0.406991, -0.345910,
		0.522183, 0.765968, 0.374991,
		33.722248, 26.297861, 48.918980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.994484, 25.489582, 48.879452>,  <33.356720, 25.761684, 48.656487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.994484, 25.489582, 48.879452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.930111, 25.833952, 49.072491>,  <33.891487, 26.040575, 49.188316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.930111, 25.833952, 49.072491>,  <33.994484, 25.489582, 48.879452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.930111, 25.833952, 49.072491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071808, -0.477465, 0.875711,
		0.984349, 0.175588, 0.015020,
		-0.160936, 0.860927, 0.482601,
		33.881828, 26.092230, 49.217270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.299393, 25.426435, 49.523083>,  <33.994484, 25.489582, 48.879452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.299393, 25.426435, 49.523083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.079411, 25.752359, 49.596439>,  <33.947422, 25.947914, 49.640453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.079411, 25.752359, 49.596439>,  <34.299393, 25.426435, 49.523083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.079411, 25.752359, 49.596439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085412, -0.163556, 0.982830,
		0.830814, 0.556178, 0.020354,
		-0.549957, 0.814810, 0.183389,
		33.914425, 25.996803, 49.651455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.653439, 25.746742, 50.027870>,  <34.299393, 25.426435, 49.523083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.653439, 25.746742, 50.027870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.275166, 25.875927, 50.042728>,  <34.048203, 25.953438, 50.051643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.275166, 25.875927, 50.042728>,  <34.653439, 25.746742, 50.027870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.275166, 25.875927, 50.042728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007460, -0.135782, 0.990711,
		0.325007, 0.936620, 0.130816,
		-0.945682, 0.322964, 0.037143,
		33.991463, 25.972816, 50.053871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.696152, 26.309204, 50.479828>,  <34.653439, 25.746742, 50.027870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.696152, 26.309204, 50.479828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.311203, 26.200516, 50.481434>,  <34.080235, 26.135302, 50.482395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.311203, 26.200516, 50.481434>,  <34.696152, 26.309204, 50.479828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.311203, 26.200516, 50.481434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033294, 0.132549, 0.990617,
		-0.269706, 0.953204, -0.136607,
		-0.962367, -0.271723, 0.004013,
		34.022491, 26.118999, 50.482639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.094955, 26.970402, 50.637482>,  <34.696152, 26.309204, 50.479828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.094955, 26.970402, 50.637482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.373997, 27.176079, 50.837063>,  <35.541420, 27.299484, 50.956814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.373997, 27.176079, 50.837063>,  <35.094955, 26.970402, 50.637482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.373997, 27.176079, 50.837063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407296, 0.288333, -0.866587,
		-0.589458, 0.807756, -0.008287,
		0.697602, 0.514192, 0.498957,
		35.583279, 27.330336, 50.986752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.056873, 27.593922, 50.351570>,  <35.094955, 26.970402, 50.637482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.056873, 27.593922, 50.351570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.418098, 27.637215, 50.517834>,  <35.634834, 27.663191, 50.617592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.418098, 27.637215, 50.517834>,  <35.056873, 27.593922, 50.351570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.418098, 27.637215, 50.517834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319847, 0.476447, -0.818960,
		-0.286675, 0.872516, 0.395642,
		0.903059, 0.108230, 0.415657,
		35.689014, 27.669683, 50.642532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.087517, 28.279156, 50.420353>,  <35.056873, 27.593922, 50.351570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.087517, 28.279156, 50.420353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.464451, 28.145437, 50.426659>,  <35.690613, 28.065207, 50.430443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.464451, 28.145437, 50.426659>,  <35.087517, 28.279156, 50.420353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.464451, 28.145437, 50.426659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230040, 0.612809, -0.756007,
		0.243071, 0.716039, 0.654374,
		0.942337, -0.334295, 0.015762,
		35.747150, 28.045149, 50.431389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.492218, 28.848953, 50.365612>,  <35.087517, 28.279156, 50.420353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.492218, 28.848953, 50.365612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.728832, 28.552923, 50.237629>,  <35.870800, 28.375305, 50.160839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.728832, 28.552923, 50.237629>,  <35.492218, 28.848953, 50.365612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.728832, 28.552923, 50.237629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073515, 0.444689, -0.892663,
		0.802920, 0.504520, 0.317456,
		0.591536, -0.740075, -0.319960,
		35.906292, 28.330900, 50.141640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.982052, 29.164141, 50.120747>,  <35.492218, 28.848953, 50.365612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.982052, 29.164141, 50.120747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.023315, 28.807226, 49.944939>,  <36.048073, 28.593077, 49.839455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.023315, 28.807226, 49.944939>,  <35.982052, 29.164141, 50.120747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.023315, 28.807226, 49.944939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036435, 0.438195, -0.898141,
		0.993998, 0.108661, 0.012691,
		0.103154, -0.892288, -0.439524,
		36.054260, 28.539539, 49.813080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.519428, 29.242188, 49.587639>,  <35.982052, 29.164141, 50.120747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.519428, 29.242188, 49.587639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.326488, 28.906591, 49.486893>,  <36.210724, 28.705233, 49.426445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.326488, 28.906591, 49.486893>,  <36.519428, 29.242188, 49.587639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.326488, 28.906591, 49.486893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097597, 0.337204, -0.936359,
		0.870528, -0.427067, -0.244532,
		-0.482345, -0.838992, -0.251865,
		36.181786, 28.654894, 49.411335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.920464, 28.987467, 49.003113>,  <36.519428, 29.242188, 49.587639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.920464, 28.987467, 49.003113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.557095, 28.821781, 48.980499>,  <36.339073, 28.722370, 48.966930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.557095, 28.821781, 48.980499>,  <36.920464, 28.987467, 49.003113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.557095, 28.821781, 48.980499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012648, 0.162390, -0.986646,
		0.417862, -0.895576, -0.152757,
		-0.908422, -0.414214, -0.056529,
		36.284569, 28.697517, 48.963539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.030548, 28.464016, 48.503479>,  <36.920464, 28.987467, 49.003113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.030548, 28.464016, 48.503479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.640778, 28.553654, 48.496807>,  <36.406914, 28.607437, 48.492805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.640778, 28.553654, 48.496807>,  <37.030548, 28.464016, 48.503479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.640778, 28.553654, 48.496807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036266, 0.083593, -0.995840,
		-0.221768, -0.970976, -0.089582,
		-0.974425, 0.224094, -0.016676,
		36.348450, 28.620882, 48.491806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.767681, 28.153639, 47.895977>,  <37.030548, 28.464016, 48.503479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.767681, 28.153639, 47.895977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.484531, 28.416122, 48.000519>,  <36.314640, 28.573612, 48.063244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.484531, 28.416122, 48.000519>,  <36.767681, 28.153639, 47.895977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.484531, 28.416122, 48.000519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140901, 0.231394, -0.962603,
		-0.692144, -0.718225, -0.071338,
		-0.707873, 0.656208, 0.261356,
		36.272171, 28.612986, 48.078926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.367149, 28.208395, 47.310741>,  <36.767681, 28.153639, 47.895977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.367149, 28.208395, 47.310741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.230412, 28.541639, 47.484673>,  <36.148369, 28.741587, 47.589031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.230412, 28.541639, 47.484673>,  <36.367149, 28.208395, 47.310741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.230412, 28.541639, 47.484673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126698, 0.417617, -0.899747,
		-0.931178, -0.362661, -0.037205,
		-0.341840, 0.833111, 0.434824,
		36.127861, 28.791573, 47.615120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.665375, 28.433727, 47.123753>,  <36.367149, 28.208395, 47.310741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.665375, 28.433727, 47.123753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.871651, 28.758400, 47.233471>,  <35.995415, 28.953203, 47.299301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.871651, 28.758400, 47.233471>,  <35.665375, 28.433727, 47.123753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.871651, 28.758400, 47.233471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092021, 0.370773, -0.924154,
		-0.851820, 0.451335, 0.265895,
		0.515689, 0.811680, 0.274299,
		36.026356, 29.001904, 47.315762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.311878, 28.987028, 46.701599>,  <35.665375, 28.433727, 47.123753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.311878, 28.987028, 46.701599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.643364, 29.160534, 46.843063>,  <35.842255, 29.264637, 46.927944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.643364, 29.160534, 46.843063>,  <35.311878, 28.987028, 46.701599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.643364, 29.160534, 46.843063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056012, 0.564459, -0.823558,
		-0.556860, 0.702305, 0.443480,
		0.828715, 0.433766, 0.353663,
		35.891979, 29.290665, 46.949162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.267963, 29.770443, 46.631413>,  <35.311878, 28.987028, 46.701599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.267963, 29.770443, 46.631413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.659122, 29.687450, 46.641693>,  <35.893818, 29.637655, 46.647861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.659122, 29.687450, 46.641693>,  <35.267963, 29.770443, 46.631413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.659122, 29.687450, 46.641693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141564, 0.566669, -0.811693,
		0.153848, 0.797394, 0.583518,
		0.977901, -0.207482, 0.025702,
		35.952492, 29.625206, 46.649403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590725, 30.299955, 46.314964>,  <35.267963, 29.770443, 46.631413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.590725, 30.299955, 46.314964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.898739, 30.044867, 46.322620>,  <36.083546, 29.891813, 46.327213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.898739, 30.044867, 46.322620>,  <35.590725, 30.299955, 46.314964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.898739, 30.044867, 46.322620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317960, 0.357575, -0.878090,
		0.553131, 0.682242, 0.478113,
		0.770031, -0.637720, 0.019140,
		36.129749, 29.853550, 46.328362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.162247, 30.711210, 46.059933>,  <35.590725, 30.299955, 46.314964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.162247, 30.711210, 46.059933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.245232, 30.321608, 46.023560>,  <36.295021, 30.087845, 46.001736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.245232, 30.321608, 46.023560>,  <36.162247, 30.711210, 46.059933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.245232, 30.321608, 46.023560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323436, 0.156023, -0.933298,
		0.923228, 0.164210, 0.347398,
		0.207459, -0.974008, -0.090933,
		36.307468, 30.029406, 45.996281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.784897, 30.732447, 45.613316>,  <36.162247, 30.711210, 46.059933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.784897, 30.732447, 45.613316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.614239, 30.370678, 45.613369>,  <36.511845, 30.153618, 45.613400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.614239, 30.370678, 45.613369>,  <36.784897, 30.732447, 45.613316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.614239, 30.370678, 45.613369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029612, -0.014116, -0.999462,
		0.903935, -0.426411, 0.032804,
		-0.426644, -0.904420, 0.000133,
		36.486244, 30.099352, 45.613407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.150932, 30.271544, 45.242817>,  <36.784897, 30.732447, 45.613316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.150932, 30.271544, 45.242817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.780094, 30.122147, 45.255455>,  <36.557590, 30.032509, 45.263039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.780094, 30.122147, 45.255455>,  <37.150932, 30.271544, 45.242817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.780094, 30.122147, 45.255455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018495, -0.038619, -0.999083,
		0.374373, -0.926828, 0.028895,
		-0.927094, -0.373495, 0.031600,
		36.501965, 30.010098, 45.264935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.228336, 29.501192, 44.925907>,  <37.150932, 30.271544, 45.242817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.228336, 29.501192, 44.925907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.864285, 29.666914, 44.924534>,  <36.645851, 29.766348, 44.923710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.864285, 29.666914, 44.924534>,  <37.228336, 29.501192, 44.925907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.864285, 29.666914, 44.924534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092740, -0.211779, -0.972907,
		-0.403808, -0.885155, 0.231170,
		-0.910131, 0.414306, -0.003429,
		36.591244, 29.791206, 44.923504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.786762, 29.051561, 44.475552>,  <37.228336, 29.501192, 44.925907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.786762, 29.051561, 44.475552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.637657, 29.421396, 44.507019>,  <36.548195, 29.643297, 44.525898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.637657, 29.421396, 44.507019>,  <36.786762, 29.051561, 44.475552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.637657, 29.421396, 44.507019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148895, 0.024077, -0.988560,
		-0.915902, -0.380214, 0.128690,
		-0.372766, 0.924585, 0.078664,
		36.525829, 29.698772, 44.530617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.143269, 28.994741, 44.041710>,  <36.786762, 29.051561, 44.475552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.143269, 28.994741, 44.041710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.224327, 29.385530, 44.068428>,  <36.272961, 29.620003, 44.084457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.224327, 29.385530, 44.068428>,  <36.143269, 28.994741, 44.041710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.224327, 29.385530, 44.068428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300244, 0.126909, -0.945383,
		-0.932088, 0.171526, 0.319047,
		0.202648, 0.976971, 0.066791,
		36.285122, 29.678621, 44.088467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.685909, 29.308004, 43.660282>,  <36.143269, 28.994741, 44.041710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.685909, 29.308004, 43.660282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.957783, 29.600374, 43.684856>,  <36.120907, 29.775797, 43.699600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.957783, 29.600374, 43.684856>,  <35.685909, 29.308004, 43.660282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.957783, 29.600374, 43.684856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264726, 0.322549, -0.908781,
		-0.684066, 0.601423, 0.412727,
		0.679686, 0.730926, 0.061432,
		36.161690, 29.819653, 43.703285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.346130, 29.964010, 43.348930>,  <35.685909, 29.308004, 43.660282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.346130, 29.964010, 43.348930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.740143, 30.029554, 43.327557>,  <35.976551, 30.068880, 43.314732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.740143, 30.029554, 43.327557>,  <35.346130, 29.964010, 43.348930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.740143, 30.029554, 43.327557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116512, 0.404603, -0.907040,
		-0.127007, 0.899692, 0.417640,
		0.985035, 0.163861, -0.053438,
		36.035652, 30.078712, 43.311523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.261051, 30.545898, 42.900375>,  <35.346130, 29.964010, 43.348930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.261051, 30.545898, 42.900375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.647388, 30.442543, 42.892601>,  <35.879192, 30.380529, 42.887936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.647388, 30.442543, 42.892601>,  <35.261051, 30.545898, 42.900375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.647388, 30.442543, 42.892601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055922, 0.281096, -0.958049,
		0.253013, 0.924240, 0.285945,
		0.965845, -0.258390, -0.019435,
		35.937141, 30.365026, 42.886772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.532150, 31.028507, 42.388298>,  <35.261051, 30.545898, 42.900375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.532150, 31.028507, 42.388298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.794350, 30.728579, 42.424271>,  <35.951672, 30.548622, 42.445854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.794350, 30.728579, 42.424271>,  <35.532150, 31.028507, 42.388298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.794350, 30.728579, 42.424271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350763, 0.196836, -0.915544,
		0.668792, 0.631685, 0.392035,
		0.655502, -0.749820, 0.089929,
		35.991001, 30.503633, 42.451248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.144085, 31.268822, 42.213299>,  <35.532150, 31.028507, 42.388298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.144085, 31.268822, 42.213299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.179493, 30.871504, 42.183556>,  <36.200737, 30.633114, 42.165710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.179493, 30.871504, 42.183556>,  <36.144085, 31.268822, 42.213299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.179493, 30.871504, 42.183556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514250, 0.109507, -0.850621,
		0.853060, 0.037058, 0.520495,
		0.088520, -0.993295, -0.074359,
		36.206051, 30.573515, 42.161247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.808601, 31.162735, 42.159698>,  <36.144085, 31.268822, 42.213299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.808601, 31.162735, 42.159698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.637077, 30.845062, 41.987469>,  <36.534161, 30.654459, 41.884129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.637077, 30.845062, 41.987469>,  <36.808601, 31.162735, 42.159698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.637077, 30.845062, 41.987469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479716, 0.203693, -0.853453,
		0.765501, -0.572526, 0.293635,
		-0.428813, -0.794181, -0.430577,
		36.508434, 30.606808, 41.858295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.317234, 30.901020, 41.811520>,  <36.808601, 31.162735, 42.159698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.317234, 30.901020, 41.811520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.999168, 30.757698, 41.615837>,  <36.808327, 30.671705, 41.498428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.999168, 30.757698, 41.615837>,  <37.317234, 30.901020, 41.811520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.999168, 30.757698, 41.615837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440477, 0.213171, -0.872088,
		0.416759, -0.908942, -0.011682,
		-0.795168, -0.358305, -0.489209,
		36.760616, 30.650208, 41.469074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.491859, 30.339994, 41.424503>,  <37.317234, 30.901020, 41.811520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.491859, 30.339994, 41.424503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.154465, 30.459734, 41.246101>,  <36.952026, 30.531578, 41.139061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.154465, 30.459734, 41.246101>,  <37.491859, 30.339994, 41.424503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.154465, 30.459734, 41.246101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426406, -0.131805, -0.894878,
		-0.326668, -0.944996, -0.016469,
		-0.843485, 0.299351, -0.446008,
		36.901421, 30.549538, 41.112301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.396759, 29.991819, 40.805500>,  <37.491859, 30.339994, 41.424503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.396759, 29.991819, 40.805500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.156792, 30.303446, 40.732662>,  <37.012814, 30.490421, 40.688957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.156792, 30.303446, 40.732662>,  <37.396759, 29.991819, 40.805500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.156792, 30.303446, 40.732662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300132, 0.008159, -0.953863,
		-0.741635, -0.626890, -0.238717,
		-0.599915, 0.779065, -0.182099,
		36.976818, 30.537165, 40.678032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.138271, 29.901421, 40.113403>,  <37.396759, 29.991819, 40.805500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.138271, 29.901421, 40.113403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.125004, 30.293226, 40.192856>,  <37.117043, 30.528309, 40.240528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.125004, 30.293226, 40.192856>,  <37.138271, 29.901421, 40.113403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.125004, 30.293226, 40.192856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429713, 0.193411, -0.882009,
		-0.902356, 0.056097, -0.427325,
		-0.033171, 0.979513, 0.198631,
		37.115051, 30.587080, 40.252445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.868694, 30.239544, 39.528133>,  <37.138271, 29.901421, 40.113403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.868694, 30.239544, 39.528133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.033016, 30.535732, 39.740902>,  <37.131611, 30.713446, 39.868565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.033016, 30.535732, 39.740902>,  <36.868694, 30.239544, 39.528133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.033016, 30.535732, 39.740902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546817, 0.266734, -0.793627,
		-0.729539, 0.616891, -0.295326,
		0.410808, 0.740471, 0.531920,
		37.156258, 30.757874, 39.900478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.761982, 30.818434, 39.072922>,  <36.868694, 30.239544, 39.528133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.761982, 30.818434, 39.072922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.044960, 30.944069, 39.326176>,  <37.214748, 31.019449, 39.478130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.044960, 30.944069, 39.326176>,  <36.761982, 30.818434, 39.072922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.044960, 30.944069, 39.326176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478513, 0.446416, -0.756133,
		-0.520136, 0.837891, 0.165521,
		0.707448, 0.314089, 0.633139,
		37.257195, 31.038296, 39.516117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.891109, 31.506256, 38.919384>,  <36.761982, 30.818434, 39.072922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.891109, 31.506256, 38.919384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.236431, 31.414772, 39.099339>,  <37.443626, 31.359882, 39.207310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.236431, 31.414772, 39.099339>,  <36.891109, 31.506256, 38.919384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.236431, 31.414772, 39.099339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491338, 0.584508, -0.645707,
		-0.115282, 0.778487, 0.616983,
		0.863306, -0.228709, 0.449883,
		37.495422, 31.346159, 39.234303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.256401, 32.132786, 39.021790>,  <36.891109, 31.506256, 38.919384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.256401, 32.132786, 39.021790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.523674, 31.835793, 39.040749>,  <37.684036, 31.657595, 39.052124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.523674, 31.835793, 39.040749>,  <37.256401, 32.132786, 39.021790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.523674, 31.835793, 39.040749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652754, 0.554471, -0.516211,
		0.356997, 0.375864, 0.855149,
		0.668180, -0.742488, 0.047402,
		37.724129, 31.613047, 39.054970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.810703, 32.552109, 39.109760>,  <37.256401, 32.132786, 39.021790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.810703, 32.552109, 39.109760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.975262, 32.196331, 39.030125>,  <38.073997, 31.982864, 38.982346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.975262, 32.196331, 39.030125>,  <37.810703, 32.552109, 39.109760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.975262, 32.196331, 39.030125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761225, 0.455424, -0.461656,
		0.501287, 0.038376, 0.864430,
		0.411398, -0.889447, -0.199085,
		38.098682, 31.929497, 38.970398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.554466, 32.601852, 39.262451>,  <37.810703, 32.552109, 39.109760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.554466, 32.601852, 39.262451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.549259, 32.295380, 39.005455>,  <38.546135, 32.111496, 38.851257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.549259, 32.295380, 39.005455>,  <38.554466, 32.601852, 39.262451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.549259, 32.295380, 39.005455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713237, 0.443217, -0.543003,
		0.700802, -0.465318, 0.540700,
		-0.013022, -0.766185, -0.642489,
		38.545353, 32.065525, 38.812710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.347034, 32.375992, 39.081726>,  <38.554466, 32.601852, 39.262451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.347034, 32.375992, 39.081726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.105724, 32.254955, 38.786564>,  <38.960938, 32.182335, 38.609467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.105724, 32.254955, 38.786564>,  <39.347034, 32.375992, 39.081726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.105724, 32.254955, 38.786564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662615, 0.324750, -0.674891,
		0.443850, -0.896089, 0.004589,
		-0.603273, -0.302591, -0.737903,
		38.924744, 32.164177, 38.565193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.786743, 31.942589, 38.571442>,  <39.347034, 32.375992, 39.081726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.786743, 31.942589, 38.571442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.459862, 32.049431, 38.367157>,  <39.263733, 32.113537, 38.244587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.459862, 32.049431, 38.367157>,  <39.786743, 31.942589, 38.571442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.459862, 32.049431, 38.367157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557497, 0.141586, -0.818016,
		-0.146187, -0.953209, -0.264616,
		-0.817206, 0.267106, -0.510713,
		39.214699, 32.129562, 38.213943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.798210, 31.600990, 38.013702>,  <39.786743, 31.942589, 38.571442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.798210, 31.600990, 38.013702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.533978, 31.883369, 37.911514>,  <39.375439, 32.052795, 37.850201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.533978, 31.883369, 37.911514>,  <39.798210, 31.600990, 38.013702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.533978, 31.883369, 37.911514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603520, 0.296956, -0.739987,
		-0.446531, -0.643003, -0.622219,
		-0.660586, 0.705949, -0.255466,
		39.335800, 32.095154, 37.834873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.876846, 31.651672, 37.212925>,  <39.798210, 31.600990, 38.013702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.876846, 31.651672, 37.212925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.698357, 31.989868, 37.330254>,  <39.591263, 32.192783, 37.400650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.698357, 31.989868, 37.330254>,  <39.876846, 31.651672, 37.212925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.698357, 31.989868, 37.330254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680157, 0.533415, -0.502847,
		-0.581614, -0.024874, -0.813084,
		-0.446220, 0.845488, 0.293323,
		39.564491, 32.243515, 37.418251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.705559, 32.103539, 36.688953>,  <39.876846, 31.651672, 37.212925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.705559, 32.103539, 36.688953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.756130, 32.327370, 37.016586>,  <39.786472, 32.461670, 37.213165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.756130, 32.327370, 37.016586>,  <39.705559, 32.103539, 36.688953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.756130, 32.327370, 37.016586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613574, 0.604690, -0.507816,
		-0.779451, 0.566766, -0.266894,
		0.126425, 0.559577, 0.819079,
		39.794056, 32.495243, 37.262310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.663948, 32.790138, 36.486763>,  <39.705559, 32.103539, 36.688953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.663948, 32.790138, 36.486763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.886806, 32.739990, 36.815121>,  <40.020523, 32.709900, 37.012135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.886806, 32.739990, 36.815121>,  <39.663948, 32.790138, 36.486763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.886806, 32.739990, 36.815121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667641, 0.655459, -0.353028,
		-0.493803, 0.744752, 0.448892,
		0.557148, -0.125373, 0.820894,
		40.053951, 32.702377, 37.061390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.785458, 33.488823, 36.807751>,  <39.663948, 32.790138, 36.486763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.785458, 33.488823, 36.807751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.052135, 33.194164, 36.853138>,  <40.212143, 33.017368, 36.880371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.052135, 33.194164, 36.853138>,  <39.785458, 33.488823, 36.807751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.052135, 33.194164, 36.853138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742563, 0.643355, -0.186266,
		0.064213, 0.208438, 0.975925,
		0.666691, -0.736647, 0.113467,
		40.252144, 32.973171, 36.887177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.425320, 33.854187, 36.614883>,  <39.785458, 33.488823, 36.807751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.425320, 33.854187, 36.614883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.594852, 33.493160, 36.645206>,  <40.696571, 33.276546, 36.663399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.594852, 33.493160, 36.645206>,  <40.425320, 33.854187, 36.614883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.594852, 33.493160, 36.645206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755371, 0.306044, -0.579441,
		0.499783, 0.302845, 0.811482,
		0.423830, -0.902564, 0.075805,
		40.722000, 33.222389, 36.667950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.116238, 33.905693, 36.899673>,  <40.425320, 33.854187, 36.614883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.116238, 33.905693, 36.899673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.104923, 33.574574, 36.675549>,  <41.098133, 33.375900, 36.541073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.104923, 33.574574, 36.675549>,  <41.116238, 33.905693, 36.899673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.104923, 33.574574, 36.675549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803960, 0.314256, -0.504869,
		0.594011, -0.464745, 0.656630,
		-0.028286, -0.827801, -0.560308,
		41.096439, 33.326233, 36.507458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.798775, 33.485733, 36.816425>,  <41.116238, 33.905693, 36.899673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.798775, 33.485733, 36.816425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.559555, 33.459114, 36.496948>,  <41.416023, 33.443142, 36.305264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.559555, 33.459114, 36.496948>,  <41.798775, 33.485733, 36.816425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.559555, 33.459114, 36.496948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623453, 0.587587, -0.515797,
		0.503627, -0.806419, -0.309916,
		-0.598052, -0.066551, -0.798690,
		41.380138, 33.439148, 36.257339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.212944, 34.186615, 36.765461>,  <41.798775, 33.485733, 36.816425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.212944, 34.186615, 36.765461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.573856, 34.357155, 36.791107>,  <42.790405, 34.459480, 36.806496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.573856, 34.357155, 36.791107>,  <42.212944, 34.186615, 36.765461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.573856, 34.357155, 36.791107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413366, 0.897722, -0.152394,
		-0.122534, 0.110998, 0.986238,
		0.902283, 0.426350, 0.064118,
		42.844540, 34.485062, 36.810341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.127274, 34.808064, 37.085102>,  <42.212944, 34.186615, 36.765461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.127274, 34.808064, 37.085102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.408752, 34.851208, 36.804195>,  <42.577641, 34.877094, 36.635651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.408752, 34.851208, 36.804195>,  <42.127274, 34.808064, 37.085102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.408752, 34.851208, 36.804195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560712, 0.691353, -0.455667,
		0.436364, 0.714420, 0.546983,
		0.703696, 0.107864, -0.702266,
		42.619862, 34.883568, 36.593517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.229664, 35.483124, 37.019943>,  <42.127274, 34.808064, 37.085102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.229664, 35.483124, 37.019943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.345535, 35.328274, 36.669807>,  <42.415058, 35.235363, 36.459724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.345535, 35.328274, 36.669807>,  <42.229664, 35.483124, 37.019943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.345535, 35.328274, 36.669807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652729, 0.588981, -0.476493,
		0.700020, 0.709392, -0.082069,
		0.289683, -0.387124, -0.875339,
		42.432442, 35.212135, 36.407207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.261372, 36.068035, 36.529995>,  <42.229664, 35.483124, 37.019943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.261372, 36.068035, 36.529995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.227119, 35.750015, 36.289806>,  <42.206566, 35.559204, 36.145695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.227119, 35.750015, 36.289806>,  <42.261372, 36.068035, 36.529995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.227119, 35.750015, 36.289806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691634, 0.481246, -0.538557,
		0.717154, 0.369188, -0.591093,
		-0.085632, -0.795048, -0.600471,
		42.201431, 35.511501, 36.109665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.140812, 36.369255, 35.997505>,  <42.261372, 36.068035, 36.529995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.140812, 36.369255, 35.997505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.013863, 35.995476, 35.932899>,  <41.937695, 35.771210, 35.894138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.013863, 35.995476, 35.932899>,  <42.140812, 36.369255, 35.997505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.013863, 35.995476, 35.932899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770572, 0.353391, -0.530409,
		0.552715, -0.043879, -0.832214,
		-0.317371, -0.934446, -0.161512,
		41.918652, 35.715141, 35.884445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.969604, 36.385830, 35.346313>,  <42.140812, 36.369255, 35.997505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.969604, 36.385830, 35.346313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.757607, 36.117264, 35.553505>,  <41.630409, 35.956123, 35.677818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.757607, 36.117264, 35.553505>,  <41.969604, 36.385830, 35.346313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.757607, 36.117264, 35.553505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847991, 0.416463, -0.327827,
		0.004390, -0.612988, -0.790080,
		-0.529993, -0.671420, 0.517980,
		41.598610, 35.915836, 35.708900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.515579, 36.190308, 34.921185>,  <41.969604, 36.385830, 35.346313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.515579, 36.190308, 34.921185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.365433, 36.060936, 35.268631>,  <41.275345, 35.983315, 35.477100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.365433, 36.060936, 35.268631>,  <41.515579, 36.190308, 34.921185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.365433, 36.060936, 35.268631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.915904, 0.273205, -0.294072,
		-0.142200, -0.905955, -0.398780,
		-0.375365, -0.323427, 0.868617,
		41.252823, 35.963909, 35.529217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.847595, 35.707157, 34.814709>,  <41.515579, 36.190308, 34.921185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.847595, 35.707157, 34.814709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.835361, 35.860451, 35.183968>,  <40.828022, 35.952427, 35.405521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.835361, 35.860451, 35.183968>,  <40.847595, 35.707157, 34.814709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.835361, 35.860451, 35.183968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882366, 0.423534, -0.205059,
		-0.469569, -0.820823, 0.325200,
		-0.030584, 0.383234, 0.923145,
		40.826187, 35.975422, 35.460911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.214108, 35.685844, 34.930691>,  <40.847595, 35.707157, 34.814709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.214108, 35.685844, 34.930691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.342598, 35.949471, 35.202702>,  <40.419693, 36.107647, 35.365910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.342598, 35.949471, 35.202702>,  <40.214108, 35.685844, 34.930691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.342598, 35.949471, 35.202702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782965, 0.588775, -0.200773,
		-0.532708, -0.467946, 0.705158,
		0.321229, 0.659068, 0.680031,
		40.438965, 36.147190, 35.406712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.616852, 35.880589, 35.300037>,  <40.214108, 35.685844, 34.930691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.616852, 35.880589, 35.300037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.883930, 36.162476, 35.396000>,  <40.044178, 36.331608, 35.453575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.883930, 36.162476, 35.396000>,  <39.616852, 35.880589, 35.300037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.883930, 36.162476, 35.396000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656615, 0.709354, -0.256270,
		-0.350775, 0.013586, 0.936361,
		0.667693, 0.704722, 0.239903,
		40.084240, 36.373894, 35.467972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.255493, 36.300709, 35.820847>,  <39.616852, 35.880589, 35.300037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.255493, 36.300709, 35.820847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.549736, 36.503078, 35.640656>,  <39.726280, 36.624500, 35.532539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.549736, 36.503078, 35.640656>,  <39.255493, 36.300709, 35.820847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.549736, 36.503078, 35.640656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634172, 0.748096, -0.195395,
		0.238145, 0.429413, 0.871144,
		0.735604, 0.505923, -0.450476,
		39.770416, 36.654854, 35.505512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.102654, 36.928204, 35.868320>,  <39.255493, 36.300709, 35.820847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.102654, 36.928204, 35.868320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.379517, 36.970779, 35.582779>,  <39.545635, 36.996326, 35.411453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.379517, 36.970779, 35.582779>,  <39.102654, 36.928204, 35.868320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.379517, 36.970779, 35.582779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545585, 0.724659, -0.420958,
		0.472491, 0.680837, 0.559654,
		0.692162, 0.106440, -0.713850,
		39.587166, 37.002712, 35.368626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.032688, 37.634579, 35.707672>,  <39.102654, 36.928204, 35.868320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.032688, 37.634579, 35.707672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.262093, 37.491501, 35.412880>,  <39.399734, 37.405655, 35.236004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.262093, 37.491501, 35.412880>,  <39.032688, 37.634579, 35.707672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.262093, 37.491501, 35.412880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436038, 0.628313, -0.644277,
		0.693510, 0.690851, 0.204374,
		0.573510, -0.357698, -0.736979,
		39.434147, 37.384190, 35.191788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.224136, 38.207836, 35.296371>,  <39.032688, 37.634579, 35.707672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.224136, 38.207836, 35.296371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.241940, 37.879189, 35.069054>,  <39.252621, 37.681999, 34.932663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.241940, 37.879189, 35.069054>,  <39.224136, 38.207836, 35.296371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.241940, 37.879189, 35.069054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510136, 0.470410, -0.720053,
		0.858941, 0.321959, -0.398199,
		0.044510, -0.821619, -0.568297,
		39.255291, 37.632702, 34.898563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.519215, 38.361492, 34.620152>,  <39.224136, 38.207836, 35.296371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.519215, 38.361492, 34.620152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.340340, 38.008198, 34.563702>,  <39.233013, 37.796223, 34.529831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.340340, 38.008198, 34.563702>,  <39.519215, 38.361492, 34.620152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.340340, 38.008198, 34.563702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451791, 0.359226, -0.816604,
		0.771949, -0.301418, -0.559680,
		-0.447191, -0.883235, -0.141126,
		39.206181, 37.743229, 34.521362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.478394, 38.352520, 33.940552>,  <39.519215, 38.361492, 34.620152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.478394, 38.352520, 33.940552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.221756, 38.076401, 34.074329>,  <39.067772, 37.910728, 34.154594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.221756, 38.076401, 34.074329>,  <39.478394, 38.352520, 33.940552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.221756, 38.076401, 34.074329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633976, 0.231791, -0.737799,
		0.431777, -0.685396, -0.586346,
		-0.641594, -0.690294, 0.334443,
		39.029278, 37.869312, 34.174664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.221401, 38.080734, 33.336178>,  <39.478394, 38.352520, 33.940552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.221401, 38.080734, 33.336178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.941467, 37.997768, 33.609585>,  <38.773506, 37.947987, 33.773628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.941467, 37.997768, 33.609585>,  <39.221401, 38.080734, 33.336178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.941467, 37.997768, 33.609585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714300, 0.202997, -0.669752,
		0.000164, -0.956959, -0.290223,
		-0.699840, -0.207416, 0.683522,
		38.731514, 37.935543, 33.814640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.691120, 37.686775, 32.976166>,  <39.221401, 38.080734, 33.336178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.691120, 37.686775, 32.976166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.518562, 37.821789, 33.310822>,  <38.415028, 37.902798, 33.511616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.518562, 37.821789, 33.310822>,  <38.691120, 37.686775, 32.976166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.518562, 37.821789, 33.310822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739668, 0.398615, -0.542215,
		-0.516513, -0.852747, 0.077701,
		-0.431399, 0.337534, 0.836639,
		38.389141, 37.923050, 33.561813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.976559, 37.477196, 32.914017>,  <38.691120, 37.686775, 32.976166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.976559, 37.477196, 32.914017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.949169, 37.763214, 33.192303>,  <37.932735, 37.934826, 33.359276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.949169, 37.763214, 33.192303>,  <37.976559, 37.477196, 32.914017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.949169, 37.763214, 33.192303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833887, 0.341795, -0.433370,
		-0.547671, -0.609824, 0.572862,
		-0.068478, 0.715046, 0.695715,
		37.928627, 37.977730, 33.401016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.326195, 37.389324, 33.260612>,  <37.976559, 37.477196, 32.914017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.326195, 37.389324, 33.260612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.440609, 37.768757, 33.314823>,  <37.509258, 37.996418, 33.347351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.440609, 37.768757, 33.314823>,  <37.326195, 37.389324, 33.260612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.440609, 37.768757, 33.314823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899239, 0.314588, -0.303980,
		-0.330986, -0.034922, 0.942989,
		0.286037, 0.948586, 0.135527,
		37.526421, 38.053333, 33.355480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.779240, 37.706776, 33.472836>,  <37.326195, 37.389324, 33.260612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.779240, 37.706776, 33.472836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.007301, 38.004581, 33.333912>,  <37.144138, 38.183266, 33.250557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.007301, 38.004581, 33.333912>,  <36.779240, 37.706776, 33.472836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.007301, 38.004581, 33.333912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779351, 0.356444, -0.515324,
		-0.259867, 0.564493, 0.783464,
		0.570158, 0.744510, -0.347310,
		37.178349, 38.227936, 33.229717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.395340, 38.357574, 33.664074>,  <36.779240, 37.706776, 33.472836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.395340, 38.357574, 33.664074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.651043, 38.397682, 33.359100>,  <36.804462, 38.421745, 33.176117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.651043, 38.397682, 33.359100>,  <36.395340, 38.357574, 33.664074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.651043, 38.397682, 33.359100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723739, 0.413555, -0.552426,
		0.259916, 0.904941, 0.336935,
		0.639254, 0.100269, -0.762431,
		36.842819, 38.427761, 33.130371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.469738, 39.044662, 33.375095>,  <36.395340, 38.357574, 33.664074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.469738, 39.044662, 33.375095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.532036, 38.806961, 33.059475>,  <36.569416, 38.664341, 32.870102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.532036, 38.806961, 33.059475>,  <36.469738, 39.044662, 33.375095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.532036, 38.806961, 33.059475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627477, 0.557417, -0.543653,
		0.762900, 0.579785, -0.286065,
		0.155744, -0.594252, -0.789055,
		36.578758, 38.628685, 32.822758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.801670, 39.504951, 32.871567>,  <36.469738, 39.044662, 33.375095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.801670, 39.504951, 32.871567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.595543, 39.198914, 32.717125>,  <36.471867, 39.015289, 32.624458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.595543, 39.198914, 32.717125>,  <36.801670, 39.504951, 32.871567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.595543, 39.198914, 32.717125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466813, 0.628426, -0.622227,
		0.718703, -0.140403, -0.680994,
		-0.515317, -0.765094, -0.386109,
		36.440948, 38.969387, 32.601292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.957283, 39.266388, 32.147640>,  <36.801670, 39.504951, 32.871567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.957283, 39.266388, 32.147640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.575340, 39.242424, 32.264023>,  <36.346172, 39.228046, 32.333851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.575340, 39.242424, 32.264023>,  <36.957283, 39.266388, 32.147640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.575340, 39.242424, 32.264023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255037, 0.667546, -0.699527,
		-0.152316, -0.742154, -0.652692,
		-0.954859, -0.059912, 0.290955,
		36.288883, 39.224449, 32.351311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.025715, 40.047039, 31.935669>,  <36.957283, 39.266388, 32.147640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.025715, 40.047039, 31.935669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.395470, 40.157021, 32.041431>,  <37.617321, 40.223011, 32.104889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.395470, 40.157021, 32.041431>,  <37.025715, 40.047039, 31.935669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.395470, 40.157021, 32.041431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301399, -0.101594, -0.948070,
		-0.233818, 0.956073, -0.176784,
		0.924385, 0.274958, 0.264405,
		37.672787, 40.239510, 32.120754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.340248, 40.545349, 31.432968>,  <37.025715, 40.047039, 31.935669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.340248, 40.545349, 31.432968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.601978, 40.321491, 31.636400>,  <37.759018, 40.187176, 31.758459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.601978, 40.321491, 31.636400>,  <37.340248, 40.545349, 31.432968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.601978, 40.321491, 31.636400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480165, -0.212089, -0.851152,
		0.584205, 0.801136, 0.129945,
		0.654329, -0.559642, 0.508581,
		37.798279, 40.153599, 31.788975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.078030, 40.711670, 31.276516>,  <37.340248, 40.545349, 31.432968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.078030, 40.711670, 31.276516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.001446, 40.326187, 31.350927>,  <37.955494, 40.094898, 31.395575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.001446, 40.326187, 31.350927>,  <38.078030, 40.711670, 31.276516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.001446, 40.326187, 31.350927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383138, -0.247881, -0.889809,
		0.903630, -0.099091, 0.416694,
		-0.191463, -0.963709, 0.186027,
		37.944008, 40.037075, 31.406736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698059, 40.361137, 31.494528>,  <38.078030, 40.711670, 31.276516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.698059, 40.361137, 31.494528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.433224, 40.130104, 31.303513>,  <38.274323, 39.991486, 31.188904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.433224, 40.130104, 31.303513>,  <38.698059, 40.361137, 31.494528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.433224, 40.130104, 31.303513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539202, 0.075412, -0.838793,
		0.520482, -0.812844, 0.261503,
		-0.662087, -0.577580, -0.477538,
		38.234596, 39.956829, 31.160252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.071693, 39.889973, 31.284649>,  <38.698059, 40.361137, 31.494528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.071693, 39.889973, 31.284649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.746323, 39.903160, 31.052355>,  <38.551102, 39.911072, 30.912979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.746323, 39.903160, 31.052355>,  <39.071693, 39.889973, 31.284649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.746323, 39.903160, 31.052355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572014, 0.226492, -0.788354,
		0.105540, -0.973455, -0.203093,
		-0.813426, 0.032969, -0.580734,
		38.502296, 39.913052, 30.878134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.582996, 39.869808, 31.882662>,  <39.071693, 39.889973, 31.284649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.582996, 39.869808, 31.882662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.325344, 40.099075, 32.085274>,  <39.170753, 40.236637, 32.206841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.325344, 40.099075, 32.085274>,  <39.582996, 39.869808, 31.882662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.325344, 40.099075, 32.085274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592848, -0.044364, 0.804092,
		0.483354, 0.818234, -0.311227,
		-0.644128, 0.573171, 0.506532,
		39.132107, 40.271027, 32.237232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.919521, 40.570786, 32.029915>,  <39.582996, 39.869808, 31.882662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.919521, 40.570786, 32.029915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.652405, 40.464764, 32.308140>,  <39.492134, 40.401150, 32.475075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.652405, 40.464764, 32.308140>,  <39.919521, 40.570786, 32.029915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.652405, 40.464764, 32.308140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713980, 0.036120, 0.699233,
		-0.210457, 0.963557, 0.165122,
		-0.667787, -0.265053, 0.695563,
		39.452068, 40.385246, 32.516808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.154465, 40.889679, 32.664074>,  <39.919521, 40.570786, 32.029915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.154465, 40.889679, 32.664074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.903568, 40.598209, 32.774059>,  <39.753033, 40.423328, 32.840050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.903568, 40.598209, 32.774059>,  <40.154465, 40.889679, 32.664074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.903568, 40.598209, 32.774059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580312, -0.201800, 0.788996,
		-0.519432, 0.654456, 0.549434,
		-0.627239, -0.728673, 0.274967,
		39.715397, 40.379608, 32.856548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.942341, 41.023090, 33.404369>,  <40.154465, 40.889679, 32.664074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.942341, 41.023090, 33.404369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.896229, 40.631958, 33.334446>,  <39.868561, 40.397278, 33.292492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.896229, 40.631958, 33.334446>,  <39.942341, 41.023090, 33.404369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.896229, 40.631958, 33.334446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429135, -0.207733, 0.879028,
		-0.895854, 0.026315, 0.443569,
		-0.115276, -0.977832, -0.174806,
		39.861645, 40.338608, 33.282005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.702972, 40.743469, 34.030689>,  <39.942341, 41.023090, 33.404369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.702972, 40.743469, 34.030689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.859657, 40.446239, 33.813652>,  <39.953667, 40.267902, 33.683430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.859657, 40.446239, 33.813652>,  <39.702972, 40.743469, 34.030689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.859657, 40.446239, 33.813652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476376, -0.340729, 0.810536,
		-0.787166, -0.575969, 0.220518,
		0.391707, -0.743076, -0.542589,
		39.977169, 40.223316, 33.650875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.664028, 40.213585, 34.533752>,  <39.702972, 40.743469, 34.030689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.664028, 40.213585, 34.533752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.925209, 40.100124, 34.252842>,  <40.081917, 40.032047, 34.084293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.925209, 40.100124, 34.252842>,  <39.664028, 40.213585, 34.533752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.925209, 40.100124, 34.252842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556841, -0.448733, 0.698975,
		-0.513400, -0.847456, -0.135054,
		0.652953, -0.283649, -0.702278,
		40.121094, 40.015030, 34.042160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.809116, 39.555946, 34.744156>,  <39.664028, 40.213585, 34.533752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.809116, 39.555946, 34.744156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.118649, 39.665607, 34.515759>,  <40.304367, 39.731403, 34.378719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.118649, 39.665607, 34.515759>,  <39.809116, 39.555946, 34.744156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.118649, 39.665607, 34.515759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632309, -0.387170, 0.671032,
		-0.037104, -0.880306, -0.472953,
		0.773827, 0.274155, -0.570991,
		40.350796, 39.747852, 34.344460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.207771, 39.016491, 34.659294>,  <39.809116, 39.555946, 34.744156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.207771, 39.016491, 34.659294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.477730, 39.298328, 34.571602>,  <40.639706, 39.467430, 34.518986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.477730, 39.298328, 34.571602>,  <40.207771, 39.016491, 34.659294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.477730, 39.298328, 34.571602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709882, -0.538842, 0.453559,
		0.201444, -0.461734, -0.863842,
		0.674898, 0.704593, -0.219230,
		40.680199, 39.509705, 34.505833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.825596, 38.643303, 34.415592>,  <40.207771, 39.016491, 34.659294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.825596, 38.643303, 34.415592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.983486, 39.003952, 34.486324>,  <41.078220, 39.220341, 34.528763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.983486, 39.003952, 34.486324>,  <40.825596, 38.643303, 34.415592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.983486, 39.003952, 34.486324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891713, -0.422313, 0.162784,
		0.221447, 0.093425, -0.970687,
		0.394726, 0.901623, 0.176828,
		41.101906, 39.274437, 34.539371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.416786, 38.737411, 33.998341>,  <40.825596, 38.643303, 34.415592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.416786, 38.737411, 33.998341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.478687, 38.990734, 34.301651>,  <41.515827, 39.142727, 34.483635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.478687, 38.990734, 34.301651>,  <41.416786, 38.737411, 33.998341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.478687, 38.990734, 34.301651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852909, -0.472988, 0.220973,
		0.498597, 0.612542, -0.613346,
		0.154750, 0.633304, 0.758273,
		41.525112, 39.180725, 34.529133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.114391, 38.837433, 34.015495>,  <41.416786, 38.737411, 33.998341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.114391, 38.837433, 34.015495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.998150, 38.961601, 34.377533>,  <41.928406, 39.036102, 34.594753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.998150, 38.961601, 34.377533>,  <42.114391, 38.837433, 34.015495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.998150, 38.961601, 34.377533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752525, -0.510080, 0.416562,
		0.590979, 0.802157, -0.085370,
		-0.290603, 0.310423, 0.905090,
		41.910969, 39.054729, 34.649059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.720322, 39.197598, 34.317890>,  <42.114391, 38.837433, 34.015495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.720322, 39.197598, 34.317890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.475479, 39.076881, 34.610260>,  <42.328575, 39.004452, 34.785683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.475479, 39.076881, 34.610260>,  <42.720322, 39.197598, 34.317890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.475479, 39.076881, 34.610260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765423, -0.458288, 0.451774,
		0.198632, 0.835999, 0.511518,
		-0.612105, -0.301791, 0.730924,
		42.291847, 38.986343, 34.829536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.136826, 39.151463, 34.839939>,  <42.720322, 39.197598, 34.317890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.136826, 39.151463, 34.839939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.827118, 38.924011, 34.951061>,  <42.641293, 38.787540, 35.017735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.827118, 38.924011, 34.951061>,  <43.136826, 39.151463, 34.839939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.827118, 38.924011, 34.951061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627302, -0.631529, 0.455701,
		-0.083685, 0.527100, 0.845673,
		-0.774267, -0.568628, 0.277801,
		42.594837, 38.753422, 35.034401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.314537, 38.898037, 35.568439>,  <43.136826, 39.151463, 34.839939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.314537, 38.898037, 35.568439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.028343, 38.643822, 35.452385>,  <42.856628, 38.491295, 35.382751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.028343, 38.643822, 35.452385>,  <43.314537, 38.898037, 35.568439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.028343, 38.643822, 35.452385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569289, -0.771092, 0.285178,
		-0.404964, 0.038867, 0.913507,
		-0.715482, -0.635536, -0.290138,
		42.813698, 38.453159, 35.365345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.182552, 38.468185, 36.174549>,  <43.314537, 38.898037, 35.568439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.182552, 38.468185, 36.174549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.072502, 38.259937, 35.851250>,  <43.006474, 38.134987, 35.657272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.072502, 38.259937, 35.851250>,  <43.182552, 38.468185, 36.174549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.072502, 38.259937, 35.851250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469892, -0.806250, 0.359391,
		-0.838755, -0.280911, 0.466454,
		-0.275122, -0.520624, -0.808244,
		42.989967, 38.103748, 35.608776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.363743, 37.785145, 36.283031>,  <43.182552, 38.468185, 36.174549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.363743, 37.785145, 36.283031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.232655, 37.701618, 35.914467>,  <43.154003, 37.651501, 35.693329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.232655, 37.701618, 35.914467>,  <43.363743, 37.785145, 36.283031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.232655, 37.701618, 35.914467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372517, -0.924818, 0.077095,
		-0.868235, -0.317975, 0.380866,
		-0.327718, -0.208816, -0.921410,
		43.134338, 37.638973, 35.638042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.903999, 37.130642, 36.183659>,  <43.363743, 37.785145, 36.283031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.903999, 37.130642, 36.183659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.094631, 37.223076, 35.844372>,  <43.209011, 37.278538, 35.640800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.094631, 37.223076, 35.844372>,  <42.903999, 37.130642, 36.183659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.094631, 37.223076, 35.844372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422696, -0.906223, -0.009392,
		-0.770841, -0.354060, -0.529571,
		0.476584, 0.231088, -0.848213,
		43.237606, 37.292400, 35.589909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.884804, 36.538273, 35.868572>,  <42.903999, 37.130642, 36.183659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.884804, 36.538273, 35.868572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.168961, 36.737404, 35.669575>,  <43.339455, 36.856884, 35.550175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.168961, 36.737404, 35.669575>,  <42.884804, 36.538273, 35.868572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.168961, 36.737404, 35.669575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536506, -0.840556, -0.075019,
		-0.455520, -0.213617, -0.864216,
		0.710396, 0.497829, -0.497497,
		43.382080, 36.886753, 35.520325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.112335, 35.943890, 35.442497>,  <42.884804, 36.538273, 35.868572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.112335, 35.943890, 35.442497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.395638, 36.226250, 35.445862>,  <43.565620, 36.395668, 35.447880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.395638, 36.226250, 35.445862>,  <43.112335, 35.943890, 35.442497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.395638, 36.226250, 35.445862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698735, -0.699264, -0.150995,
		-0.100706, 0.112822, -0.988499,
		0.708257, 0.705904, 0.008413,
		43.608116, 36.438023, 35.448387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.555176, 35.764439, 34.837643>,  <43.112335, 35.943890, 35.442497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.555176, 35.764439, 34.837643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.752571, 35.998001, 35.095486>,  <43.871006, 36.138138, 35.250191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.752571, 35.998001, 35.095486>,  <43.555176, 35.764439, 34.837643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.752571, 35.998001, 35.095486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810358, -0.577863, -0.096926,
		0.315901, 0.570196, -0.758343,
		0.493485, 0.583910, 0.644610,
		43.900616, 36.173176, 35.288868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.191231, 35.670742, 34.551052>,  <43.555176, 35.764439, 34.837643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.191231, 35.670742, 34.551052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.268253, 35.814571, 34.916264>,  <44.314468, 35.900871, 35.135391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.268253, 35.814571, 34.916264>,  <44.191231, 35.670742, 34.551052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.268253, 35.814571, 34.916264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796280, -0.601008, 0.068756,
		0.573462, 0.713789, -0.402052,
		0.192559, 0.359575, 0.913032,
		44.326019, 35.922443, 35.190174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.874424, 35.831524, 34.536770>,  <44.191231, 35.670742, 34.551052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.874424, 35.831524, 34.536770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.778717, 35.758263, 34.918179>,  <44.721291, 35.714306, 35.147022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.778717, 35.758263, 34.918179>,  <44.874424, 35.831524, 34.536770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.778717, 35.758263, 34.918179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831015, -0.546527, 0.103552,
		0.502160, 0.817168, 0.282968,
		-0.239269, -0.183151, 0.953523,
		44.706936, 35.703316, 35.204235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.265598, 36.319839, 35.030270>,  <44.874424, 35.831524, 34.536770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.265598, 36.319839, 35.030270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.164059, 35.946152, 35.130512>,  <45.103134, 35.721939, 35.190659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.164059, 35.946152, 35.130512>,  <45.265598, 36.319839, 35.030270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.164059, 35.946152, 35.130512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964960, -0.262398, -0.000740,
		0.066449, 0.241636, 0.968089,
		-0.253846, -0.934216, 0.250605,
		45.087906, 35.665886, 35.205692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.040512, 36.380169, 35.351410>,  <45.265598, 36.319839, 35.030270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.040512, 36.380169, 35.351410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.426197, 36.449440, 35.271103>,  <46.657608, 36.491001, 35.222919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.426197, 36.449440, 35.271103>,  <46.040512, 36.380169, 35.351410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.426197, 36.449440, 35.271103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233795, -0.912464, 0.335782,
		-0.125043, -0.370703, -0.920296,
		0.964212, 0.173173, -0.200766,
		46.715462, 36.501392, 35.210873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.270336, 35.766094, 35.102028>,  <46.040512, 36.380169, 35.351410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.270336, 35.766094, 35.102028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.596348, 35.971497, 35.209389>,  <46.791954, 36.094738, 35.273804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.596348, 35.971497, 35.209389>,  <46.270336, 35.766094, 35.102028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.596348, 35.971497, 35.209389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461081, -0.855321, 0.236284,
		0.350903, -0.068823, -0.933879,
		0.815028, 0.513507, 0.268402,
		46.840855, 36.125549, 35.289909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.924938, 35.553715, 34.771202>,  <46.270336, 35.766094, 35.102028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.924938, 35.553715, 34.771202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.980232, 35.676746, 35.147774>,  <47.013409, 35.750565, 35.373718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.980232, 35.676746, 35.147774>,  <46.924938, 35.553715, 34.771202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.980232, 35.676746, 35.147774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321636, -0.912975, 0.251052,
		0.936718, 0.268092, -0.225137,
		0.138239, 0.307577, 0.941428,
		47.021706, 35.769020, 35.430202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.552422, 35.342239, 35.186314>,  <46.924938, 35.553715, 34.771202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.552422, 35.342239, 35.186314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.800087, 35.063183, 35.330494>,  <47.948685, 34.895748, 35.417004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.800087, 35.063183, 35.330494>,  <47.552422, 35.342239, 35.186314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.800087, 35.063183, 35.330494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697555, 0.277836, -0.660472,
		0.360628, 0.660378, 0.658672,
		0.619164, -0.697645, 0.360455,
		47.985836, 34.853889, 35.438629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.126011, 33.477585, 46.448162> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.769535, 33.656120, 46.415768>,  <33.555649, 33.763241, 46.396332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.769535, 33.656120, 46.415768>,  <34.126011, 33.477585, 46.448162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.769535, 33.656120, 46.415768> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269753, 0.377908, -0.885674,
		-0.364709, -0.811150, -0.457190,
		-0.891190, 0.446342, -0.080984,
		33.502178, 33.790024, 46.391472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.796722, 33.173634, 45.868923>,  <34.126011, 33.477585, 46.448162>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.796722, 33.173634, 45.868923> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.649178, 33.540081, 45.931747>,  <33.560650, 33.759949, 45.969440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.649178, 33.540081, 45.931747>,  <33.796722, 33.173634, 45.868923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.649178, 33.540081, 45.931747> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283822, 0.271920, -0.919513,
		-0.885091, -0.294595, -0.360315,
		-0.368861, 0.916119, 0.157061,
		33.538521, 33.814915, 45.978867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.364494, 33.306271, 45.290356>,  <33.796722, 33.173634, 45.868923>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.364494, 33.306271, 45.290356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.422699, 33.674351, 45.435715>,  <33.457623, 33.895199, 45.522930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.422699, 33.674351, 45.435715>,  <33.364494, 33.306271, 45.290356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.422699, 33.674351, 45.435715> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044231, 0.360888, -0.931560,
		-0.988368, 0.151622, 0.011811,
		0.145507, 0.920201, 0.363396,
		33.466351, 33.950413, 45.544735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.869305, 33.769470, 44.986267>,  <33.364494, 33.306271, 45.290356>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.869305, 33.769470, 44.986267> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.170757, 34.005337, 45.102432>,  <33.351627, 34.146854, 45.172131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.170757, 34.005337, 45.102432>,  <32.869305, 33.769470, 44.986267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.170757, 34.005337, 45.102432> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001572, 0.443447, -0.896299,
		-0.657298, 0.675020, 0.335121,
		0.753629, 0.589663, 0.290416,
		33.396847, 34.182236, 45.189556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.684864, 34.473610, 44.772606>,  <32.869305, 33.769470, 44.986267>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.684864, 34.473610, 44.772606> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.082882, 34.475277, 44.812325>,  <33.321693, 34.476276, 44.836155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.082882, 34.475277, 44.812325>,  <32.684864, 34.473610, 44.772606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.082882, 34.475277, 44.812325> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084265, 0.494342, -0.865174,
		-0.052691, 0.869257, 0.491544,
		0.995049, 0.004167, 0.099295,
		33.381397, 34.476528, 44.842113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.965317, 35.186104, 44.435665>,  <32.684864, 34.473610, 44.772606>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.965317, 35.186104, 44.435665> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.300034, 34.971142, 44.477566>,  <33.500862, 34.842163, 44.502708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.300034, 34.971142, 44.477566>,  <32.965317, 35.186104, 44.435665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.300034, 34.971142, 44.477566> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445247, 0.556564, -0.701421,
		0.318648, 0.633584, 0.705007,
		0.836790, -0.537409, 0.104753,
		33.551071, 34.809917, 44.508991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.469067, 35.640923, 44.476471>,  <32.965317, 35.186104, 44.435665>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.469067, 35.640923, 44.476471> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.627335, 35.294373, 44.354588>,  <33.722294, 35.086445, 44.281456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.627335, 35.294373, 44.354588>,  <33.469067, 35.640923, 44.476471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.627335, 35.294373, 44.354588> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333745, 0.444743, -0.831155,
		0.855605, 0.227168, 0.465118,
		0.395669, -0.866371, -0.304708,
		33.746037, 35.034462, 44.263176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.921665, 35.918682, 44.083996>,  <33.469067, 35.640923, 44.476471>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.921665, 35.918682, 44.083996> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.963005, 35.531513, 43.992397>,  <33.987808, 35.299210, 43.937439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.963005, 35.531513, 43.992397>,  <33.921665, 35.918682, 44.083996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.963005, 35.531513, 43.992397> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402513, 0.251234, -0.880264,
		0.909562, -0.001202, 0.415567,
		0.103346, -0.967926, -0.228996,
		33.994007, 35.241135, 43.923698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.616341, 35.857624, 43.778503>,  <33.921665, 35.918682, 44.083996>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.616341, 35.857624, 43.778503> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.401703, 35.541363, 43.660557>,  <34.272923, 35.351608, 43.589790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.401703, 35.541363, 43.660557>,  <34.616341, 35.857624, 43.778503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.401703, 35.541363, 43.660557> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347495, 0.111386, -0.931043,
		0.768971, -0.602053, 0.214978,
		-0.536591, -0.790649, -0.294863,
		34.240726, 35.304169, 43.572098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.004597, 35.304615, 43.406490>,  <34.616341, 35.857624, 43.778503>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.004597, 35.304615, 43.406490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.635338, 35.230179, 43.271923>,  <34.413784, 35.185516, 43.191185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.635338, 35.230179, 43.271923>,  <35.004597, 35.304615, 43.406490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.635338, 35.230179, 43.271923> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322953, 0.099395, -0.941181,
		0.208583, -0.977492, -0.031657,
		-0.923144, -0.186091, -0.336416,
		34.358395, 35.174351, 43.170998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.114750, 34.822945, 43.000156>,  <35.004597, 35.304615, 43.406490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.114750, 34.822945, 43.000156> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.753883, 34.929909, 42.864758>,  <34.537361, 34.994087, 42.783520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.753883, 34.929909, 42.864758>,  <35.114750, 34.822945, 43.000156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.753883, 34.929909, 42.864758> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255537, -0.300914, -0.918777,
		-0.347553, -0.915391, 0.203141,
		-0.902168, 0.267414, -0.338500,
		34.483231, 35.010132, 42.763206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.110050, 34.419514, 42.475128>,  <35.114750, 34.822945, 43.000156>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.110050, 34.419514, 42.475128> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.832310, 34.702026, 42.419941>,  <34.665665, 34.871532, 42.386829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.832310, 34.702026, 42.419941>,  <35.110050, 34.419514, 42.475128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.832310, 34.702026, 42.419941> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172649, -0.022631, -0.984723,
		-0.698616, -0.707568, -0.106225,
		-0.694355, 0.706283, -0.137971,
		34.624004, 34.913910, 42.378551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.752815, 34.239502, 41.982075>,  <35.110050, 34.419514, 42.475128>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.752815, 34.239502, 41.982075> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.669792, 34.630718, 41.989697>,  <34.619980, 34.865448, 41.994270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.669792, 34.630718, 41.989697>,  <34.752815, 34.239502, 41.982075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.669792, 34.630718, 41.989697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215862, 0.064787, -0.974272,
		-0.954110, -0.198102, -0.224568,
		-0.207555, 0.978038, 0.019052,
		34.607525, 34.924129, 41.995411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.256226, 34.353371, 41.447063>,  <34.752815, 34.239502, 41.982075>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.256226, 34.353371, 41.447063> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.471115, 34.678608, 41.536755>,  <34.600048, 34.873749, 41.590569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.471115, 34.678608, 41.536755>,  <34.256226, 34.353371, 41.447063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.471115, 34.678608, 41.536755> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059346, 0.228752, -0.971674,
		-0.841352, 0.535309, 0.074637,
		0.537219, 0.813091, 0.224229,
		34.632282, 34.922535, 41.604023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.959766, 34.908813, 41.030228>,  <34.256226, 34.353371, 41.447063>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.959766, 34.908813, 41.030228> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.338051, 34.987282, 41.133877>,  <34.565022, 35.034363, 41.196068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.338051, 34.987282, 41.133877>,  <33.959766, 34.908813, 41.030228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.338051, 34.987282, 41.133877> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199668, 0.278403, -0.939481,
		-0.256442, 0.940217, 0.224119,
		0.945712, 0.196173, 0.259125,
		34.621765, 35.046135, 41.211613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.123249, 35.400478, 40.626472>,  <33.959766, 34.908813, 41.030228>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.123249, 35.400478, 40.626472> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.493465, 35.316597, 40.752583>,  <34.715595, 35.266266, 40.828247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.493465, 35.316597, 40.752583>,  <34.123249, 35.400478, 40.626472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.493465, 35.316597, 40.752583> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353960, 0.183463, -0.917090,
		0.134479, 0.960398, 0.244030,
		0.925542, -0.209706, 0.315271,
		34.771130, 35.253685, 40.847164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.541519, 35.957874, 40.407711>,  <34.123249, 35.400478, 40.626472>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.541519, 35.957874, 40.407711> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.805023, 35.662910, 40.467384>,  <34.963127, 35.485931, 40.503189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.805023, 35.662910, 40.467384>,  <34.541519, 35.957874, 40.407711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.805023, 35.662910, 40.467384> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455512, 0.233111, -0.859167,
		0.598784, 0.633942, 0.489465,
		0.658761, -0.737413, 0.149185,
		35.002651, 35.441689, 40.512138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.164715, 36.266258, 40.435261>,  <34.541519, 35.957874, 40.407711>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.164715, 36.266258, 40.435261> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.257801, 35.885216, 40.356884>,  <35.313652, 35.656590, 40.309860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.257801, 35.885216, 40.356884>,  <35.164715, 36.266258, 40.435261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.257801, 35.885216, 40.356884> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639075, 0.301651, -0.707523,
		0.733093, 0.039434, 0.678984,
		0.232717, -0.952602, -0.195937,
		35.327618, 35.599434, 40.298103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.823406, 36.289921, 40.342331>,  <35.164715, 36.266258, 40.435261>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.823406, 36.289921, 40.342331> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.744484, 35.941109, 40.163166>,  <35.697128, 35.731823, 40.055668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.744484, 35.941109, 40.163166>,  <35.823406, 36.289921, 40.342331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.744484, 35.941109, 40.163166> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632018, 0.236122, -0.738106,
		0.749415, -0.428727, 0.504550,
		-0.197310, -0.872032, -0.447917,
		35.685291, 35.679501, 40.028790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.450756, 35.936050, 40.279072>,  <35.823406, 36.289921, 40.342331>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.450756, 35.936050, 40.279072> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.205421, 35.763584, 40.014370>,  <36.058220, 35.660103, 39.855549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.205421, 35.763584, 40.014370>,  <36.450756, 35.936050, 40.279072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.205421, 35.763584, 40.014370> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639207, 0.221171, -0.736544,
		0.463935, -0.874744, 0.139955,
		-0.613333, -0.431169, -0.661752,
		36.021420, 35.634232, 39.815845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.846989, 35.428520, 39.916763>,  <36.450756, 35.936050, 40.279072>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.846989, 35.428520, 39.916763> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.553837, 35.508892, 39.656757>,  <36.377945, 35.557117, 39.500755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.553837, 35.508892, 39.656757>,  <36.846989, 35.428520, 39.916763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.553837, 35.508892, 39.656757> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674847, 0.093288, -0.732038,
		-0.086452, -0.975153, -0.203967,
		-0.732876, 0.200933, -0.650014,
		36.333973, 35.569172, 39.461754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.018822, 34.963657, 39.384808>,  <36.846989, 35.428520, 39.916763>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.018822, 34.963657, 39.384808> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.774448, 35.249329, 39.248158>,  <36.627823, 35.420731, 39.166168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.774448, 35.249329, 39.248158>,  <37.018822, 34.963657, 39.384808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.774448, 35.249329, 39.248158> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537417, 0.057258, -0.841371,
		-0.581328, -0.697617, -0.418793,
		-0.610934, 0.714179, -0.341625,
		36.591167, 35.463581, 39.145668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.295132, 34.239571, 39.526718>,  <37.018822, 34.963657, 39.384808>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.295132, 34.239571, 39.526718> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.674671, 34.141125, 39.447609>,  <37.902393, 34.082058, 39.400143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.674671, 34.141125, 39.447609>,  <37.295132, 34.239571, 39.526718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.674671, 34.141125, 39.447609> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231170, 0.114889, 0.966106,
		-0.215055, -0.962406, 0.165907,
		0.948848, -0.246119, -0.197772,
		37.959324, 34.067287, 39.388279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528931, 33.578400, 39.797703>,  <37.295132, 34.239571, 39.526718>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.528931, 33.578400, 39.797703> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.873745, 33.779411, 39.771263>,  <38.080631, 33.900017, 39.755398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.873745, 33.779411, 39.771263>,  <37.528931, 33.578400, 39.797703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.873745, 33.779411, 39.771263> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030709, 0.078389, 0.996450,
		0.505923, -0.861001, 0.052142,
		0.862032, 0.502526, -0.066099,
		38.132355, 33.930168, 39.751434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.773193, 33.317135, 40.413036>,  <37.528931, 33.578400, 39.797703>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.773193, 33.317135, 40.413036> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.006401, 33.626091, 40.312244>,  <38.146328, 33.811466, 40.251770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.006401, 33.626091, 40.312244>,  <37.773193, 33.317135, 40.413036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.006401, 33.626091, 40.312244> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131873, 0.216072, 0.967431,
		0.801682, -0.597265, 0.024117,
		0.583023, 0.772391, -0.251984,
		38.181309, 33.857807, 40.236649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.390823, 33.221073, 40.749413>,  <37.773193, 33.317135, 40.413036>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.390823, 33.221073, 40.749413> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.342247, 33.607506, 40.658245>,  <38.313099, 33.839363, 40.603546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.342247, 33.607506, 40.658245>,  <38.390823, 33.221073, 40.749413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.342247, 33.607506, 40.658245> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115491, 0.214303, 0.969915,
		0.985857, 0.144112, 0.085548,
		-0.121443, 0.966078, -0.227915,
		38.305813, 33.897327, 40.589870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.894833, 33.649406, 41.178768>,  <38.390823, 33.221073, 40.749413>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.894833, 33.649406, 41.178768> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.607716, 33.909412, 41.078968>,  <38.435444, 34.065418, 41.019089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.607716, 33.909412, 41.078968>,  <38.894833, 33.649406, 41.178768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.607716, 33.909412, 41.078968> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064368, 0.294854, 0.953372,
		0.693272, 0.700386, -0.169804,
		-0.717795, 0.650016, -0.249497,
		38.392376, 34.104416, 41.004120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.097607, 34.236023, 41.642563>,  <38.894833, 33.649406, 41.178768>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.097607, 34.236023, 41.642563> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.732140, 34.265015, 41.482586>,  <38.512859, 34.282410, 41.386600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.732140, 34.265015, 41.482586>,  <39.097607, 34.236023, 41.642563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.732140, 34.265015, 41.482586> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341482, 0.396788, 0.852027,
		0.220449, 0.915044, -0.337782,
		-0.913670, 0.072481, -0.399942,
		38.458038, 34.286758, 41.362602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.822868, 35.051861, 41.818729>,  <39.097607, 34.236023, 41.642563>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.822868, 35.051861, 41.818729> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.527248, 34.791191, 41.750462>,  <38.349876, 34.634789, 41.709499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.527248, 34.791191, 41.750462>,  <38.822868, 35.051861, 41.818729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.527248, 34.791191, 41.750462> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403806, 0.225763, 0.886550,
		-0.539209, 0.724123, -0.430000,
		-0.739049, -0.651673, -0.170672,
		38.305534, 34.595688, 41.699261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.233368, 35.397182, 42.054611>,  <38.822868, 35.051861, 41.818729>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.233368, 35.397182, 42.054611> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.137108, 35.008976, 42.060066>,  <38.079350, 34.776051, 42.063339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.137108, 35.008976, 42.060066>,  <38.233368, 35.397182, 42.054611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.137108, 35.008976, 42.060066> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425212, 0.118052, 0.897362,
		-0.872514, 0.210154, -0.441085,
		-0.240655, -0.970515, 0.013642,
		38.064911, 34.717823, 42.064159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616451, 35.348724, 42.305698>,  <38.233368, 35.397182, 42.054611>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.616451, 35.348724, 42.305698> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.703285, 34.960270, 42.345245>,  <37.755386, 34.727200, 42.368973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.703285, 34.960270, 42.345245>,  <37.616451, 35.348724, 42.305698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.703285, 34.960270, 42.345245> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464107, -0.013575, 0.885675,
		-0.858766, -0.238152, -0.453657,
		0.217084, -0.971133, 0.098870,
		37.768410, 34.668930, 42.374905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.195187, 35.102390, 42.630466>,  <37.616451, 35.348724, 42.305698>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.195187, 35.102390, 42.630466> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.405811, 34.769665, 42.700680>,  <37.532188, 34.570030, 42.742809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.405811, 34.769665, 42.700680>,  <37.195187, 35.102390, 42.630466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.405811, 34.769665, 42.700680> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529568, -0.159413, 0.833154,
		-0.665048, -0.531666, -0.524444,
		0.526563, -0.831816, 0.175536,
		37.563782, 34.520119, 42.753342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.756542, 34.599598, 42.576801>,  <37.195187, 35.102390, 42.630466>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.756542, 34.599598, 42.576801> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.049740, 34.459152, 42.809849>,  <37.225658, 34.374886, 42.949677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.049740, 34.459152, 42.809849>,  <36.756542, 34.599598, 42.576801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.049740, 34.459152, 42.809849> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677666, -0.451274, 0.580621,
		0.059056, -0.820410, -0.568718,
		0.732995, -0.351111, 0.582614,
		37.269638, 34.353817, 42.984634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.601418, 33.925373, 42.705841>,  <36.756542, 34.599598, 42.576801>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.601418, 33.925373, 42.705841> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.837536, 34.070210, 42.994408>,  <36.979206, 34.157112, 43.167549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.837536, 34.070210, 42.994408>,  <36.601418, 33.925373, 42.705841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.837536, 34.070210, 42.994408> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570175, -0.445584, 0.690185,
		0.571362, -0.818746, -0.056570,
		0.590293, 0.362090, 0.721419,
		37.014626, 34.178837, 43.210835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.664684, 33.403759, 43.195824>,  <36.601418, 33.925373, 42.705841>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.664684, 33.403759, 43.195824> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.779766, 33.723167, 43.407330>,  <36.848816, 33.914810, 43.534233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.779766, 33.723167, 43.407330>,  <36.664684, 33.403759, 43.195824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.779766, 33.723167, 43.407330> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339169, -0.431373, 0.835991,
		0.895650, -0.419862, 0.146723,
		0.287709, 0.798519, 0.528763,
		36.866077, 33.962723, 43.565960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.839718, 33.174068, 43.801674>,  <36.664684, 33.403759, 43.195824>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.839718, 33.174068, 43.801674> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.776337, 33.556759, 43.899307>,  <36.738308, 33.786373, 43.957886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.776337, 33.556759, 43.899307>,  <36.839718, 33.174068, 43.801674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.776337, 33.556759, 43.899307> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390559, -0.287773, 0.874443,
		0.906839, 0.043229, 0.419254,
		-0.158451, 0.956722, 0.244080,
		36.728802, 33.843777, 43.972530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.139339, 33.225616, 44.468163>,  <36.839718, 33.174068, 43.801674>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.139339, 33.225616, 44.468163> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.888432, 33.534168, 44.425247>,  <36.737888, 33.719299, 44.399498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.888432, 33.534168, 44.425247>,  <37.139339, 33.225616, 44.468163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.888432, 33.534168, 44.425247> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368309, -0.172441, 0.913571,
		0.686207, 0.612571, 0.392272,
		-0.627271, 0.771376, -0.107285,
		36.700249, 33.765579, 44.393063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.197872, 33.667683, 45.051090>,  <37.139339, 33.225616, 44.468163>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.197872, 33.667683, 45.051090> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.835670, 33.726467, 44.891857>,  <36.618351, 33.761738, 44.796318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.835670, 33.726467, 44.891857>,  <37.197872, 33.667683, 45.051090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.835670, 33.726467, 44.891857> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407269, -0.037575, 0.912535,
		0.119146, 0.988429, 0.093875,
		-0.905503, 0.146957, -0.398079,
		36.564018, 33.770554, 44.772434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.807438, 34.049637, 45.610195>,  <37.197872, 33.667683, 45.051090>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.807438, 34.049637, 45.610195> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.547127, 33.906769, 45.342190>,  <36.390942, 33.821049, 45.181385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.547127, 33.906769, 45.342190>,  <36.807438, 34.049637, 45.610195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.547127, 33.906769, 45.342190> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613988, -0.271569, 0.741127,
		-0.446666, 0.893687, -0.042570,
		-0.650775, -0.357173, -0.670014,
		36.351894, 33.799618, 45.141186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232979, 34.044952, 45.995922>,  <36.807438, 34.049637, 45.610195>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.232979, 34.044952, 45.995922> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.133617, 33.831276, 45.672703>,  <36.074001, 33.703072, 45.478771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.133617, 33.831276, 45.672703>,  <36.232979, 34.044952, 45.995922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.133617, 33.831276, 45.672703> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723389, -0.452479, 0.521510,
		-0.644208, 0.714077, -0.274028,
		-0.248406, -0.534189, -0.808045,
		36.059097, 33.671021, 45.430290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.473545, 34.098755, 45.870060> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.621552, 33.782227, 45.675369>,  <35.710354, 33.592312, 45.558556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.621552, 33.782227, 45.675369>,  <35.473545, 34.098755, 45.870060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.621552, 33.782227, 45.675369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398149, -0.608430, 0.686506,
		-0.839384, -0.060228, -0.540192,
		0.370016, -0.791319, -0.486726,
		35.732555, 33.544830, 45.529350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.959644, 33.703930, 45.752235>,  <35.473545, 34.098755, 45.870060>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.959644, 33.703930, 45.752235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.280735, 33.466007, 45.735146>,  <35.473389, 33.323254, 45.724892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.280735, 33.466007, 45.735146>,  <34.959644, 33.703930, 45.752235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.280735, 33.466007, 45.735146> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367566, -0.549919, 0.749990,
		-0.469594, -0.586337, -0.660069,
		0.802731, -0.594810, -0.042722,
		35.521553, 33.287563, 45.722328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.704216, 32.989616, 45.593544>,  <34.959644, 33.703930, 45.752235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.704216, 32.989616, 45.593544> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.052341, 32.930206, 45.781372>,  <35.261215, 32.894562, 45.894070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.052341, 32.930206, 45.781372>,  <34.704216, 32.989616, 45.593544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.052341, 32.930206, 45.781372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424967, -0.708358, 0.563589,
		0.248922, -0.690051, -0.679608,
		0.870311, -0.148522, 0.469575,
		35.313435, 32.885651, 45.922245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.770916, 32.345306, 45.588692>,  <34.704216, 32.989616, 45.593544>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.770916, 32.345306, 45.588692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.008385, 32.479641, 45.881203>,  <35.150867, 32.560242, 46.056709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.008385, 32.479641, 45.881203>,  <34.770916, 32.345306, 45.588692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.008385, 32.479641, 45.881203> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406727, -0.658901, 0.632790,
		0.694355, -0.673099, -0.254576,
		0.593670, 0.335838, 0.731279,
		35.186485, 32.580391, 46.100586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.608913, 31.776176, 45.994335>,  <34.770916, 32.345306, 45.588692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.608913, 31.776176, 45.994335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.856518, 32.010693, 46.203369>,  <35.005081, 32.151402, 46.328789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.856518, 32.010693, 46.203369>,  <34.608913, 31.776176, 45.994335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.856518, 32.010693, 46.203369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085243, -0.611299, 0.786795,
		0.780742, -0.531582, -0.328424,
		0.619011, 0.586288, 0.522581,
		35.042221, 32.186581, 46.360142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.994125, 31.273750, 46.347912>,  <34.608913, 31.776176, 45.994335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.994125, 31.273750, 46.347912> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.042149, 31.626904, 46.529507>,  <35.070961, 31.838797, 46.638462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.042149, 31.626904, 46.529507>,  <34.994125, 31.273750, 46.347912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.042149, 31.626904, 46.529507> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270432, -0.410914, 0.870641,
		0.955224, -0.227300, 0.189426,
		0.120059, 0.882884, 0.453984,
		35.078167, 31.891769, 46.665703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.350670, 31.265812, 46.939674>,  <34.994125, 31.273750, 46.347912>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.350670, 31.265812, 46.939674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.137299, 31.597347, 47.007187>,  <35.009277, 31.796268, 47.047695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.137299, 31.597347, 47.007187>,  <35.350670, 31.265812, 46.939674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.137299, 31.597347, 47.007187> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206781, -0.321267, 0.924137,
		0.820184, 0.458056, 0.342759,
		-0.533424, 0.828838, 0.168781,
		34.977272, 31.845999, 47.057819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.481335, 31.581013, 47.588722>,  <35.350670, 31.265812, 46.939674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.481335, 31.581013, 47.588722> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.120228, 31.739294, 47.521275>,  <34.903564, 31.834263, 47.480808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.120228, 31.739294, 47.521275>,  <35.481335, 31.581013, 47.588722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.120228, 31.739294, 47.521275> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274244, -0.227518, 0.934359,
		0.331364, 0.889750, 0.313915,
		-0.902767, 0.395702, -0.168617,
		34.849400, 31.858006, 47.470688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.367729, 32.065117, 48.119648>,  <35.481335, 31.581013, 47.588722>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.367729, 32.065117, 48.119648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.001125, 31.977818, 47.985558>,  <34.781162, 31.925438, 47.905106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.001125, 31.977818, 47.985558>,  <35.367729, 32.065117, 48.119648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.001125, 31.977818, 47.985558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288117, -0.221152, 0.931708,
		-0.277476, 0.950505, 0.139809,
		-0.916513, -0.218246, -0.335221,
		34.726173, 31.912344, 47.884991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.907822, 32.387775, 48.653244>,  <35.367729, 32.065117, 48.119648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.907822, 32.387775, 48.653244> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.679207, 32.105652, 48.485493>,  <34.542038, 31.936377, 48.384842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.679207, 32.105652, 48.485493>,  <34.907822, 32.387775, 48.653244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.679207, 32.105652, 48.485493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235934, -0.348255, 0.907223,
		-0.785926, 0.617459, 0.032634,
		-0.571538, -0.705310, -0.419382,
		34.507744, 31.894058, 48.359676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.273991, 32.370575, 49.078457>,  <34.907822, 32.387775, 48.653244>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.273991, 32.370575, 49.078457> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.274136, 32.031376, 48.866459>,  <34.274223, 31.827856, 48.739258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.274136, 32.031376, 48.866459>,  <34.273991, 32.370575, 49.078457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.274136, 32.031376, 48.866459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310238, -0.503943, 0.806098,
		-0.950659, 0.164132, -0.263265,
		0.000364, -0.847999, -0.529998,
		34.274246, 31.776976, 48.707458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.619595, 32.010853, 49.171970>,  <34.273991, 32.370575, 49.078457>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.619595, 32.010853, 49.171970> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.876804, 31.733437, 49.042034>,  <34.031132, 31.566988, 48.964073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.876804, 31.733437, 49.042034>,  <33.619595, 32.010853, 49.171970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.876804, 31.733437, 49.042034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199283, -0.561071, 0.803421,
		-0.739460, -0.451888, -0.498995,
		0.643028, -0.693540, -0.324836,
		34.069714, 31.525375, 48.944584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.267368, 31.408363, 49.308590>,  <33.619595, 32.010853, 49.171970>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.267368, 31.408363, 49.308590> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.660168, 31.337887, 49.281353>,  <33.895847, 31.295601, 49.265011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.660168, 31.337887, 49.281353>,  <33.267368, 31.408363, 49.308590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.660168, 31.337887, 49.281353> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032070, -0.510755, 0.859128,
		-0.186147, -0.841479, -0.507211,
		0.981999, -0.176190, -0.068089,
		33.954765, 31.285030, 49.260925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.252480, 30.828909, 49.644402>,  <33.267368, 31.408363, 49.308590>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.252480, 30.828909, 49.644402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.645058, 30.895834, 49.606956>,  <33.880604, 30.935989, 49.584488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.645058, 30.895834, 49.606956>,  <33.252480, 30.828909, 49.644402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.645058, 30.895834, 49.606956> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179960, -0.635592, 0.750758,
		0.066113, -0.753677, -0.653911,
		0.981450, 0.167313, -0.093611,
		33.939491, 30.946028, 49.578873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.508015, 30.144514, 49.727127>,  <33.252480, 30.828909, 49.644402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.508015, 30.144514, 49.727127> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.796104, 30.409142, 49.810646>,  <33.968960, 30.567919, 49.860756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.796104, 30.409142, 49.810646>,  <33.508015, 30.144514, 49.727127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.796104, 30.409142, 49.810646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276925, -0.550126, 0.787829,
		0.636068, -0.509596, -0.579421,
		0.720229, 0.661569, 0.208798,
		34.012173, 30.607613, 49.873287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.959515, 29.730026, 49.945423>,  <33.508015, 30.144514, 49.727127>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.959515, 29.730026, 49.945423> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.119003, 30.067533, 50.089134>,  <34.214695, 30.270039, 50.175362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.119003, 30.067533, 50.089134>,  <33.959515, 29.730026, 49.945423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.119003, 30.067533, 50.089134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415549, -0.515463, 0.749411,
		0.817521, -0.149509, -0.556153,
		0.398720, 0.843768, 0.359273,
		34.238621, 30.320663, 50.196915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.646591, 29.490122, 50.056793>,  <33.959515, 29.730026, 49.945423>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.646591, 29.490122, 50.056793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.594635, 29.830542, 50.260300>,  <34.563461, 30.034794, 50.382404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.594635, 29.830542, 50.260300>,  <34.646591, 29.490122, 50.056793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.594635, 29.830542, 50.260300> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476646, -0.396339, 0.784681,
		0.869446, 0.344427, -0.354167,
		-0.129895, 0.851050, 0.508765,
		34.555668, 30.085857, 50.412930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.203735, 29.626308, 50.342331>,  <34.646591, 29.490122, 50.056793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.203735, 29.626308, 50.342331> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.911831, 29.758467, 50.581760>,  <34.736691, 29.837763, 50.725418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.911831, 29.758467, 50.581760>,  <35.203735, 29.626308, 50.342331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.911831, 29.758467, 50.581760> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471458, -0.390873, 0.790535,
		0.495157, 0.859102, 0.129473,
		-0.729758, 0.330398, 0.598574,
		34.692905, 29.857586, 50.761333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.497429, 29.793354, 50.931278>,  <35.203735, 29.626308, 50.342331>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.497429, 29.793354, 50.931278> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.113770, 29.787085, 51.044262>,  <34.883572, 29.783323, 51.112053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.113770, 29.787085, 51.044262>,  <35.497429, 29.793354, 50.931278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.113770, 29.787085, 51.044262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258005, -0.457987, 0.850694,
		0.116029, 0.888820, 0.443323,
		-0.959151, -0.015674, 0.282460,
		34.826023, 29.782383, 51.129002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.476406, 29.982952, 51.693573>,  <35.497429, 29.793354, 50.931278>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.476406, 29.982952, 51.693573> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.112247, 29.826103, 51.640774>,  <34.893753, 29.731995, 51.609097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.112247, 29.826103, 51.640774>,  <35.476406, 29.982952, 51.693573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.112247, 29.826103, 51.640774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068836, -0.171027, 0.982859,
		-0.407976, 0.903875, 0.128709,
		-0.910394, -0.392123, -0.131994,
		34.839130, 29.708466, 51.601177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.048687, 30.305302, 52.260509>,  <35.476406, 29.982952, 51.693573>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.048687, 30.305302, 52.260509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.863007, 29.976028, 52.129730>,  <34.751598, 29.778465, 52.051262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.863007, 29.976028, 52.129730>,  <35.048687, 30.305302, 52.260509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.863007, 29.976028, 52.129730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131874, -0.300778, 0.944533,
		-0.875859, 0.481566, 0.031065,
		-0.464199, -0.823181, -0.326946,
		34.723747, 29.729074, 52.031647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.407017, 30.242966, 52.604336>,  <35.048687, 30.305302, 52.260509>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.407017, 30.242966, 52.604336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.484905, 29.866499, 52.493855>,  <34.531639, 29.640619, 52.427567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.484905, 29.866499, 52.493855>,  <34.407017, 30.242966, 52.604336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.484905, 29.866499, 52.493855> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161260, -0.308483, 0.937461,
		-0.967511, -0.138004, -0.211841,
		0.194723, -0.941166, -0.276207,
		34.543324, 29.584148, 52.410992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.795437, 29.869537, 52.769997>,  <34.407017, 30.242966, 52.604336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.795437, 29.869537, 52.769997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.118584, 29.633829, 52.765862>,  <34.312473, 29.492405, 52.763378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.118584, 29.633829, 52.765862>,  <33.795437, 29.869537, 52.769997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.118584, 29.633829, 52.765862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192906, -0.280966, 0.940130,
		-0.556896, -0.757509, -0.340658,
		0.807870, -0.589270, -0.010340,
		34.360947, 29.457048, 52.762760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.321735, 30.315775, 52.692806>,  <33.795437, 29.869537, 52.769997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.321735, 30.315775, 52.692806> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.069386, 30.451551, 52.971882>,  <32.917976, 30.533018, 53.139328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.069386, 30.451551, 52.971882>,  <33.321735, 30.315775, 52.692806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.069386, 30.451551, 52.971882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706262, 0.121055, -0.697524,
		-0.321229, -0.932804, 0.163365,
		-0.630877, 0.339444, 0.697690,
		32.880123, 30.553385, 53.181190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.809448, 29.876421, 52.642899>,  <33.321735, 30.315775, 52.692806>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.809448, 29.876421, 52.642899> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.683342, 30.224031, 52.795422>,  <32.607677, 30.432598, 52.886936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.683342, 30.224031, 52.795422>,  <32.809448, 29.876421, 52.642899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.683342, 30.224031, 52.795422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736778, 0.029111, -0.675508,
		-0.598135, -0.493908, 0.631102,
		-0.315267, 0.869027, 0.381312,
		32.588760, 30.484739, 52.909817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.187428, 29.872566, 52.353207>,  <32.809448, 29.876421, 52.642899>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.187428, 29.872566, 52.353207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.182568, 30.248489, 52.489803>,  <32.179649, 30.474043, 52.571762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.182568, 30.248489, 52.489803>,  <32.187428, 29.872566, 52.353207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.182568, 30.248489, 52.489803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654365, 0.250757, -0.713391,
		-0.756081, -0.232128, 0.611930,
		-0.012153, 0.939807, 0.341489,
		32.178921, 30.530432, 52.592251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.441769, 30.132683, 52.409294>,  <32.187428, 29.872566, 52.353207>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.441769, 30.132683, 52.409294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.666142, 30.460545, 52.362782>,  <31.800766, 30.657261, 52.334873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.666142, 30.460545, 52.362782>,  <31.441769, 30.132683, 52.409294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.666142, 30.460545, 52.362782> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456065, 0.188729, -0.869704,
		-0.690911, 0.540878, 0.479680,
		0.560933, 0.819654, -0.116280,
		31.834421, 30.706440, 52.327896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.942593, 30.561531, 52.182663>,  <31.441769, 30.132683, 52.409294>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.942593, 30.561531, 52.182663> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.306129, 30.700840, 52.090824>,  <31.524252, 30.784426, 52.035721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.306129, 30.700840, 52.090824>,  <30.942593, 30.561531, 52.182663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.306129, 30.700840, 52.090824> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284527, 0.115073, -0.951737,
		-0.305042, 0.930304, 0.203676,
		0.908842, 0.348271, -0.229595,
		31.578781, 30.805321, 52.021946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.793531, 31.249067, 51.933090>,  <30.942593, 30.561531, 52.182663>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.793531, 31.249067, 51.933090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.141661, 31.120691, 51.783672>,  <31.350538, 31.043667, 51.694023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.141661, 31.120691, 51.783672>,  <30.793531, 31.249067, 51.933090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.141661, 31.120691, 51.783672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319756, 0.208617, -0.924248,
		0.374553, 0.923839, 0.078942,
		0.870325, -0.320938, -0.373541,
		31.402758, 31.024410, 51.671612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.868799, 31.666510, 51.423084>,  <30.793531, 31.249067, 51.933090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.868799, 31.666510, 51.423084> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.162876, 31.404938, 51.351681>,  <31.339323, 31.247995, 51.308838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.162876, 31.404938, 51.351681>,  <30.868799, 31.666510, 51.423084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.162876, 31.404938, 51.351681> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028042, 0.233779, -0.971885,
		0.677276, 0.719530, 0.153536,
		0.735194, -0.653929, -0.178510,
		31.383434, 31.208759, 51.298126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.547033, 31.950130, 50.961487>,  <30.868799, 31.666510, 51.423084>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.547033, 31.950130, 50.961487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.522285, 31.553860, 50.912937>,  <31.507437, 31.316097, 50.883808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.522285, 31.553860, 50.912937>,  <31.547033, 31.950130, 50.961487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.522285, 31.553860, 50.912937> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103827, 0.114560, -0.987976,
		0.992669, -0.073727, 0.095771,
		-0.061869, -0.990677, -0.121375,
		31.503725, 31.256657, 50.876526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.112843, 31.822742, 50.593269>,  <31.547033, 31.950130, 50.961487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.112843, 31.822742, 50.593269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.870941, 31.509373, 50.535969>,  <31.725800, 31.321352, 50.501587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.870941, 31.509373, 50.535969>,  <32.112843, 31.822742, 50.593269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.870941, 31.509373, 50.535969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111094, 0.095132, -0.989246,
		0.788627, -0.614165, 0.029502,
		-0.604753, -0.783423, -0.143254,
		31.689514, 31.274345, 50.492992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.515396, 31.413940, 50.172325>,  <32.112843, 31.822742, 50.593269>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.515396, 31.413940, 50.172325> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.124069, 31.332851, 50.155407>,  <31.889273, 31.284197, 50.145256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.124069, 31.332851, 50.155407>,  <32.515396, 31.413940, 50.172325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.124069, 31.332851, 50.155407> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020139, 0.296411, -0.954848,
		0.206105, -0.933298, -0.294069,
		-0.978322, -0.202721, -0.042296,
		31.830572, 31.272034, 50.142719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.495808, 30.979546, 49.677158>,  <32.515396, 31.413940, 50.172325>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.495808, 30.979546, 49.677158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.123001, 31.119854, 49.713593>,  <31.899317, 31.204039, 49.735455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.123001, 31.119854, 49.713593>,  <32.495808, 30.979546, 49.677158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.123001, 31.119854, 49.713593> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084125, 0.453887, -0.887079,
		-0.352506, -0.819114, -0.452540,
		-0.932021, 0.350771, 0.091089,
		31.843395, 31.225084, 49.740921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.193069, 30.771233, 49.102039>,  <32.495808, 30.979546, 49.677158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.193069, 30.771233, 49.102039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.981495, 31.082451, 49.237614>,  <31.854549, 31.269182, 49.318958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.981495, 31.082451, 49.237614>,  <32.193069, 30.771233, 49.102039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.981495, 31.082451, 49.237614> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099822, 0.453639, -0.885577,
		-0.842771, -0.434581, -0.317611,
		-0.528936, 0.778043, 0.338933,
		31.822815, 31.315865, 49.339294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.959547, 31.015707, 48.477776>,  <32.193069, 30.771233, 49.102039>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.959547, 31.015707, 48.477776> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.875011, 31.319654, 48.723682>,  <31.824289, 31.502022, 48.871227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.875011, 31.319654, 48.723682>,  <31.959547, 31.015707, 48.477776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.875011, 31.319654, 48.723682> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329846, 0.647522, -0.686962,
		-0.920074, 0.057595, -0.387487,
		-0.211341, 0.759867, 0.614765,
		31.811609, 31.547615, 48.908112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.612629, 31.468351, 48.094070>,  <31.959547, 31.015707, 48.477776>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.612629, 31.468351, 48.094070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.704800, 31.718122, 48.392601>,  <31.760101, 31.867985, 48.571720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.704800, 31.718122, 48.392601>,  <31.612629, 31.468351, 48.094070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.704800, 31.718122, 48.392601> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374025, 0.651209, -0.660327,
		-0.898337, 0.431300, -0.083496,
		0.230426, 0.624426, 0.746322,
		31.773928, 31.905451, 48.616497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.252581, 32.097481, 47.857918>,  <31.612629, 31.468351, 48.094070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.252581, 32.097481, 47.857918> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.542797, 32.180775, 48.120285>,  <31.716927, 32.230751, 48.277706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.542797, 32.180775, 48.120285>,  <31.252581, 32.097481, 47.857918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.542797, 32.180775, 48.120285> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406151, 0.639857, -0.652398,
		-0.555543, 0.739745, 0.379671,
		0.725543, 0.208231, 0.655917,
		31.760460, 32.243244, 48.317059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.261543, 32.749844, 47.856079>,  <31.252581, 32.097481, 47.857918>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.261543, 32.749844, 47.856079> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.622532, 32.640247, 47.989033>,  <31.839125, 32.574490, 48.068806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.622532, 32.640247, 47.989033>,  <31.261543, 32.749844, 47.856079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.622532, 32.640247, 47.989033> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427007, 0.670588, -0.606611,
		-0.056688, 0.689378, 0.722180,
		0.902470, -0.273989, 0.332384,
		31.893272, 32.558052, 48.088749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.594114, 33.467846, 47.807068>,  <31.261543, 32.749844, 47.856079>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.594114, 33.467846, 47.807068> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.897154, 33.215038, 47.872299>,  <32.078979, 33.063354, 47.911438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.897154, 33.215038, 47.872299>,  <31.594114, 33.467846, 47.807068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.897154, 33.215038, 47.872299> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617728, 0.613546, -0.491907,
		0.210837, 0.473408, 0.855238,
		0.757601, -0.632017, 0.163079,
		32.124435, 33.025433, 47.921223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.304550, 33.879059, 48.082920>,  <31.594114, 33.467846, 47.807068>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.304550, 33.879059, 48.082920> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.380287, 33.545956, 47.874817>,  <32.425732, 33.346096, 47.749954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.380287, 33.545956, 47.874817>,  <32.304550, 33.879059, 48.082920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.380287, 33.545956, 47.874817> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556870, 0.527466, -0.641619,
		0.808729, -0.168227, 0.563610,
		0.189347, -0.832754, -0.520258,
		32.437092, 33.296131, 47.718739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.037930, 33.776653, 48.117626>,  <32.304550, 33.879059, 48.082920>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.037930, 33.776653, 48.117626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.869888, 33.623905, 47.788338>,  <32.769066, 33.532257, 47.590763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.869888, 33.623905, 47.788338>,  <33.037930, 33.776653, 48.117626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.869888, 33.623905, 47.788338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651324, 0.504792, -0.566535,
		0.631897, -0.774185, 0.036656,
		-0.420100, -0.381867, -0.823222,
		32.743858, 33.509346, 47.541370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.447166, 34.066948, 47.671116>,  <33.037930, 33.776653, 48.117626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.447166, 34.066948, 47.671116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.265453, 33.842838, 47.394070>,  <33.156425, 33.708370, 47.227840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.265453, 33.842838, 47.394070>,  <33.447166, 34.066948, 47.671116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.265453, 33.842838, 47.394070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619130, 0.360462, -0.697671,
		0.640551, -0.745759, 0.183134,
		-0.454281, -0.560278, -0.692616,
		33.129169, 33.674755, 47.186283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.969864, 33.799454, 47.181919>,  <33.447166, 34.066948, 47.671116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.969864, 33.799454, 47.181919> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.627270, 33.789917, 46.975670>,  <33.421715, 33.784195, 46.851921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.627270, 33.789917, 46.975670>,  <33.969864, 33.799454, 47.181919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.627270, 33.789917, 46.975670> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478959, 0.335736, -0.811098,
		0.192454, -0.941654, -0.276131,
		-0.856481, -0.023844, -0.515627,
		33.370327, 33.782764, 46.820980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<37.810860, 38.733040, 32.272575> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.490559, 38.665028, 32.502319>,  <37.298378, 38.624222, 32.640167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.490559, 38.665028, 32.502319>,  <37.810860, 38.733040, 32.272575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.490559, 38.665028, 32.502319> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585883, -0.022777, 0.810075,
		-0.124652, 0.985176, 0.117855,
		-0.800751, -0.170027, 0.574359,
		37.250332, 38.614021, 32.674625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.911251, 39.209686, 32.871902>,  <37.810860, 38.733040, 32.272575>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.911251, 39.209686, 32.871902> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.682064, 38.909756, 33.004238>,  <37.544552, 38.729797, 33.083641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.682064, 38.909756, 33.004238>,  <37.911251, 39.209686, 32.871902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.682064, 38.909756, 33.004238> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582380, -0.088469, 0.808089,
		-0.576661, 0.655689, 0.487376,
		-0.572972, -0.749831, 0.330843,
		37.510174, 38.684807, 33.103493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.759895, 39.329067, 33.600014>,  <37.911251, 39.209686, 32.871902>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.759895, 39.329067, 33.600014> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.722229, 38.940178, 33.514309>,  <37.699631, 38.706844, 33.462887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.722229, 38.940178, 33.514309>,  <37.759895, 39.329067, 33.600014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.722229, 38.940178, 33.514309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661975, -0.221895, 0.715927,
		-0.743587, -0.074421, 0.664485,
		-0.094165, -0.972226, -0.214263,
		37.693981, 38.648510, 33.450031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.108295, 38.969139, 34.217239>,  <37.759895, 39.329067, 33.600014>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.108295, 38.969139, 34.217239> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.034927, 38.653915, 33.982182>,  <37.990906, 38.464783, 33.841145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.034927, 38.653915, 33.982182>,  <38.108295, 38.969139, 34.217239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.034927, 38.653915, 33.982182> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661485, -0.541144, 0.519231,
		-0.727184, -0.293484, 0.620541,
		-0.183416, -0.788055, -0.587646,
		37.979904, 38.417500, 33.805889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.952877, 38.428669, 34.717770>,  <38.108295, 38.969139, 34.217239>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.952877, 38.428669, 34.717770> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.065750, 38.265087, 34.370640>,  <38.133476, 38.166939, 34.162361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.065750, 38.265087, 34.370640>,  <37.952877, 38.428669, 34.717770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.065750, 38.265087, 34.370640> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710615, -0.518618, 0.475460,
		-0.644513, -0.750860, 0.144262,
		0.282187, -0.408955, -0.867829,
		38.150406, 38.142399, 34.110291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861347, 37.672485, 34.689430>,  <37.952877, 38.428669, 34.717770>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.861347, 37.672485, 34.689430> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.150139, 37.767200, 34.429375>,  <38.323414, 37.824032, 34.273342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.150139, 37.767200, 34.429375>,  <37.861347, 37.672485, 34.689430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.150139, 37.767200, 34.429375> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604712, -0.672583, 0.426563,
		-0.336267, -0.701115, -0.628778,
		0.721975, 0.236791, -0.650140,
		38.366730, 37.838238, 34.234333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.149742, 36.992874, 34.516857>,  <37.861347, 37.672485, 34.689430>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.149742, 36.992874, 34.516857> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.423710, 37.269077, 34.423840>,  <38.588089, 37.434799, 34.368031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.423710, 37.269077, 34.423840>,  <38.149742, 36.992874, 34.516857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.423710, 37.269077, 34.423840> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718177, -0.585961, 0.375329,
		0.122907, -0.424079, -0.897246,
		0.684920, 0.690512, -0.232545,
		38.629185, 37.476231, 34.354076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.787743, 36.547104, 34.512486>,  <38.149742, 36.992874, 34.516857>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.787743, 36.547104, 34.512486> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.888908, 36.933846, 34.498463>,  <38.949608, 37.165890, 34.490051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.888908, 36.933846, 34.498463>,  <38.787743, 36.547104, 34.512486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.888908, 36.933846, 34.498463> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896214, -0.220479, 0.384954,
		0.364466, -0.128775, -0.922270,
		0.252914, 0.966854, -0.035053,
		38.964783, 37.223900, 34.487946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.422150, 36.499264, 34.221737>,  <38.787743, 36.547104, 34.512486>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.422150, 36.499264, 34.221737> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.383389, 36.847870, 34.414017>,  <39.360134, 37.057034, 34.529385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.383389, 36.847870, 34.414017>,  <39.422150, 36.499264, 34.221737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.383389, 36.847870, 34.414017> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801218, -0.218224, 0.557160,
		0.590474, 0.439130, -0.677130,
		-0.096899, 0.871518, 0.480695,
		39.354321, 37.109325, 34.558224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.063526, 36.813709, 34.138786>,  <39.422150, 36.499264, 34.221737>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.063526, 36.813709, 34.138786> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.877834, 36.964054, 34.459591>,  <39.766418, 37.054260, 34.652073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.877834, 36.964054, 34.459591>,  <40.063526, 36.813709, 34.138786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.877834, 36.964054, 34.459591> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742618, -0.328320, 0.583716,
		0.482711, 0.866566, -0.126704,
		-0.464229, 0.375859, 0.802011,
		39.738567, 37.076813, 34.700195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.511658, 37.281582, 34.519390>,  <40.063526, 36.813709, 34.138786>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.511658, 37.281582, 34.519390> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.226189, 37.192001, 34.784874>,  <40.054909, 37.138252, 34.944164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.226189, 37.192001, 34.784874>,  <40.511658, 37.281582, 34.519390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.226189, 37.192001, 34.784874> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695261, -0.341908, 0.632227,
		0.085338, 0.912657, 0.399718,
		-0.713673, -0.223956, 0.663713,
		40.012085, 37.124813, 34.983986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.754333, 37.418678, 35.104851>,  <40.511658, 37.281582, 34.519390>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.754333, 37.418678, 35.104851> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.456757, 37.178818, 35.222809>,  <40.278210, 37.034901, 35.293583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.456757, 37.178818, 35.222809>,  <40.754333, 37.418678, 35.104851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.456757, 37.178818, 35.222809> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640666, -0.514567, 0.569884,
		-0.189989, 0.612892, 0.766986,
		-0.743943, -0.599654, 0.294896,
		40.233574, 36.998920, 35.311279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.959946, 37.248436, 35.767052>,  <40.754333, 37.418678, 35.104851>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.959946, 37.248436, 35.767052> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.668583, 36.991478, 35.671761>,  <40.493767, 36.837303, 35.614586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.668583, 36.991478, 35.671761>,  <40.959946, 37.248436, 35.767052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.668583, 36.991478, 35.671761> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479598, -0.726380, 0.492299,
		-0.489293, 0.244342, 0.837192,
		-0.728408, -0.642393, -0.238226,
		40.450062, 36.798759, 35.600292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.839321, 36.899349, 36.356636>,  <40.959946, 37.248436, 35.767052>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.839321, 36.899349, 36.356636> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.718655, 36.660339, 36.059456>,  <40.646255, 36.516933, 35.881149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.718655, 36.660339, 36.059456>,  <40.839321, 36.899349, 36.356636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.718655, 36.660339, 36.059456> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535118, -0.751044, 0.386758,
		-0.789081, -0.280893, 0.546306,
		-0.301662, -0.597522, -0.742945,
		40.628155, 36.481083, 35.836571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.790096, 36.298927, 36.676182>,  <40.839321, 36.899349, 36.356636>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.790096, 36.298927, 36.676182> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.809921, 36.215702, 36.285439>,  <40.821815, 36.165768, 36.050991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.809921, 36.215702, 36.285439>,  <40.790096, 36.298927, 36.676182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.809921, 36.215702, 36.285439> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586014, -0.785955, 0.197136,
		-0.808784, -0.582223, 0.082979,
		0.049559, -0.208068, -0.976858,
		40.824791, 36.153282, 35.992382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.783428, 35.578655, 36.663422>,  <40.790096, 36.298927, 36.676182>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.783428, 35.578655, 36.663422> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.912949, 35.660664, 36.293964>,  <40.990662, 35.709869, 36.072289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.912949, 35.660664, 36.293964>,  <40.783428, 35.578655, 36.663422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.912949, 35.660664, 36.293964> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717823, -0.689199, 0.098663,
		-0.616348, -0.694961, -0.370330,
		0.323798, 0.205021, -0.923646,
		41.010086, 35.722168, 36.016872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.935844, 34.938950, 36.338009>,  <40.783428, 35.578655, 36.663422>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.935844, 34.938950, 36.338009> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.138092, 35.222240, 36.140930>,  <41.259441, 35.392216, 36.022682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.138092, 35.222240, 36.140930>,  <40.935844, 34.938950, 36.338009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.138092, 35.222240, 36.140930> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832732, -0.549961, 0.064033,
		-0.225615, -0.442663, -0.867841,
		0.505624, 0.708232, -0.492699,
		41.289780, 35.434711, 35.993122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.346764, 34.606339, 35.741703>,  <40.935844, 34.938950, 36.338009>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.346764, 34.606339, 35.741703> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.515957, 34.954365, 35.842953>,  <41.617474, 35.163181, 35.903702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.515957, 34.954365, 35.842953>,  <41.346764, 34.606339, 35.741703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.515957, 34.954365, 35.842953> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875037, -0.464764, 0.135294,
		0.235358, 0.164267, -0.957926,
		0.422985, 0.870064, 0.253125,
		41.642853, 35.215385, 35.918892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.986031, 34.544037, 35.390606>,  <41.346764, 34.606339, 35.741703>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.986031, 34.544037, 35.390606> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.033230, 34.834270, 35.661781>,  <42.061550, 35.008411, 35.824486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.033230, 34.834270, 35.661781>,  <41.986031, 34.544037, 35.390606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.033230, 34.834270, 35.661781> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928564, -0.322569, 0.183623,
		0.351917, 0.607846, -0.711813,
		0.117995, 0.725584, 0.677942,
		42.068626, 35.051945, 35.865166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.771870, 34.621788, 35.297974>,  <41.986031, 34.544037, 35.390606>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.771870, 34.621788, 35.297974> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.664932, 34.799416, 35.640045>,  <42.600769, 34.905991, 35.845287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.664932, 34.799416, 35.640045>,  <42.771870, 34.621788, 35.297974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.664932, 34.799416, 35.640045> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814265, -0.370450, 0.446922,
		0.515264, 0.815824, -0.262551,
		-0.267348, 0.444069, 0.855177,
		42.584728, 34.932636, 35.896599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.376846, 35.071976, 35.582348>,  <42.771870, 34.621788, 35.297974>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.376846, 35.071976, 35.582348> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.133514, 34.976112, 35.885002>,  <42.987514, 34.918594, 36.066593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.133514, 34.976112, 35.885002>,  <43.376846, 35.071976, 35.582348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.133514, 34.976112, 35.885002> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775049, -0.384737, 0.501275,
		0.170971, 0.891370, 0.419795,
		-0.608333, -0.239658, 0.756634,
		42.951015, 34.904217, 36.111992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.896729, 35.044823, 36.063606>,  <43.376846, 35.071976, 35.582348>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.896729, 35.044823, 36.063606> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.563641, 34.889351, 36.221340>,  <43.363789, 34.796066, 36.315983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.563641, 34.889351, 36.221340>,  <43.896729, 35.044823, 36.063606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.563641, 34.889351, 36.221340> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553677, -0.578793, 0.598700,
		-0.004464, 0.716885, 0.697177,
		-0.832720, -0.388684, 0.394338,
		43.313824, 34.772747, 36.339642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.348759, 35.541363, 36.319424>,  <43.896729, 35.044823, 36.063606>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.348759, 35.541363, 36.319424> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.551991, 35.663391, 35.997234>,  <44.673931, 35.736607, 35.803921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.551991, 35.663391, 35.997234>,  <44.348759, 35.541363, 36.319424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.551991, 35.663391, 35.997234> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708900, 0.679263, -0.189900,
		0.489195, 0.667484, 0.561385,
		0.508084, 0.305068, -0.805472,
		44.704414, 35.754910, 35.755592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.687229, 36.332054, 36.358501>,  <44.348759, 35.541363, 36.319424>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.687229, 36.332054, 36.358501> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.579296, 36.210236, 35.993111>,  <44.514538, 36.137146, 35.773876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.579296, 36.210236, 35.993111>,  <44.687229, 36.332054, 36.358501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.579296, 36.210236, 35.993111> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569358, 0.815523, -0.103703,
		0.776545, 0.492115, -0.393446,
		-0.269831, -0.304542, -0.913480,
		44.498348, 36.118874, 35.719067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.672871, 36.954777, 36.072613>,  <44.687229, 36.332054, 36.358501>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.672871, 36.954777, 36.072613> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.455853, 36.720051, 35.832184>,  <44.325642, 36.579216, 35.687927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.455853, 36.720051, 35.832184>,  <44.672871, 36.954777, 36.072613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.455853, 36.720051, 35.832184> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626819, 0.759170, -0.175381,
		0.559235, 0.281613, -0.779711,
		-0.542544, -0.586817, -0.601075,
		44.293091, 36.544006, 35.651859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.501553, 37.384689, 35.548023>,  <44.672871, 36.954777, 36.072613>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.501553, 37.384689, 35.548023> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.239773, 37.083599, 35.519436>,  <44.082706, 36.902946, 35.502285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.239773, 37.083599, 35.519436>,  <44.501553, 37.384689, 35.548023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.239773, 37.083599, 35.519436> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722278, 0.650321, -0.235366,
		0.223641, -0.102417, -0.969276,
		-0.654446, -0.752724, -0.071464,
		44.043438, 36.857780, 35.497997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.253643, 37.574005, 34.946659>,  <44.501553, 37.384689, 35.548023>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.253643, 37.574005, 34.946659> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.987843, 37.342609, 35.135880>,  <43.828362, 37.203770, 35.249413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.987843, 37.342609, 35.135880>,  <44.253643, 37.574005, 34.946659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.987843, 37.342609, 35.135880> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732127, 0.630830, -0.256989,
		-0.149751, -0.517107, -0.842719,
		-0.664504, -0.578493, 0.473055,
		43.788490, 37.169060, 35.277798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.748138, 37.495747, 34.446602>,  <44.253643, 37.574005, 34.946659>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.748138, 37.495747, 34.446602> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.596027, 37.434200, 34.811394>,  <43.504761, 37.397270, 35.030270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.596027, 37.434200, 34.811394>,  <43.748138, 37.495747, 34.446602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.596027, 37.434200, 34.811394> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755961, 0.619798, -0.210648,
		-0.532833, -0.769529, -0.352016,
		-0.380279, -0.153870, 0.911983,
		43.481945, 37.388039, 35.084988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.089275, 37.546928, 34.362358>,  <43.748138, 37.495747, 34.446602>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.089275, 37.546928, 34.362358> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.084900, 37.560829, 34.762093>,  <43.082275, 37.569168, 35.001934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.084900, 37.560829, 34.762093>,  <43.089275, 37.546928, 34.362358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.084900, 37.560829, 34.762093> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679517, 0.732920, -0.032924,
		-0.733578, -0.679426, 0.015602,
		-0.010934, 0.034754, 0.999336,
		43.081619, 37.571255, 35.061893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.397980, 37.477371, 34.596863>,  <43.089275, 37.546928, 34.362358>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.397980, 37.477371, 34.596863> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.582195, 37.662292, 34.899963>,  <42.692722, 37.773243, 35.081825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.582195, 37.662292, 34.899963>,  <42.397980, 37.477371, 34.596863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.582195, 37.662292, 34.899963> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716918, 0.697079, 0.010435,
		-0.523387, -0.548051, 0.652461,
		0.460536, 0.462300, 0.757750,
		42.720356, 37.800983, 35.127289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.865955, 37.594383, 35.049656>,  <42.397980, 37.477371, 34.596863>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.865955, 37.594383, 35.049656> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.153355, 37.859871, 35.132832>,  <42.325794, 38.019165, 35.182739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.153355, 37.859871, 35.132832>,  <41.865955, 37.594383, 35.049656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.153355, 37.859871, 35.132832> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677346, 0.735625, -0.007606,
		-0.158015, -0.135384, 0.978112,
		0.718494, 0.663722, 0.207942,
		42.368904, 38.058987, 35.195213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.638725, 37.969048, 35.599258>,  <41.865955, 37.594383, 35.049656>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.638725, 37.969048, 35.599258> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.905106, 38.226585, 35.448544>,  <42.064934, 38.381107, 35.358116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.905106, 38.226585, 35.448544>,  <41.638725, 37.969048, 35.599258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.905106, 38.226585, 35.448544> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707567, 0.705173, -0.045605,
		0.236338, 0.296973, 0.925177,
		0.665953, 0.643846, -0.376787,
		42.104893, 38.419739, 35.335506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.643219, 38.688011, 35.941322>,  <41.638725, 37.969048, 35.599258>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.643219, 38.688011, 35.941322> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.802338, 38.768837, 35.583344>,  <41.897808, 38.817333, 35.368557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.802338, 38.768837, 35.583344>,  <41.643219, 38.688011, 35.941322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.802338, 38.768837, 35.583344> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619158, 0.778958, -0.099333,
		0.677056, 0.593628, 0.434973,
		0.397793, 0.202063, -0.894948,
		41.921677, 38.829456, 35.314857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.439049, 39.412746, 35.762856>,  <41.643219, 38.688011, 35.941322>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.439049, 39.412746, 35.762856> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.600842, 39.313808, 35.410671>,  <41.697918, 39.254444, 35.199360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.600842, 39.313808, 35.410671>,  <41.439049, 39.412746, 35.762856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.600842, 39.313808, 35.410671> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597150, 0.657748, -0.459107,
		0.692681, 0.711469, 0.118345,
		0.404482, -0.247344, -0.880463,
		41.722187, 39.239605, 35.146534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.623783, 40.044842, 35.477665>,  <41.439049, 39.412746, 35.762856>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.623783, 40.044842, 35.477665> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.612690, 39.797966, 35.163136>,  <41.606033, 39.649841, 34.974419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.612690, 39.797966, 35.163136>,  <41.623783, 40.044842, 35.477665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.612690, 39.797966, 35.163136> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693200, 0.578630, -0.429722,
		0.720212, 0.533160, -0.443887,
		-0.027735, -0.617193, -0.786323,
		41.604370, 39.612808, 34.927238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.612335, 40.441872, 34.829910>,  <41.623783, 40.044842, 35.477665>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.612335, 40.441872, 34.829910> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.434341, 40.093876, 34.744961>,  <41.327545, 39.885078, 34.693993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.434341, 40.093876, 34.744961>,  <41.612335, 40.441872, 34.829910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.434341, 40.093876, 34.744961> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682430, 0.482980, -0.548652,
		0.579897, -0.099209, -0.808627,
		-0.444981, -0.869993, -0.212376,
		41.300846, 39.832878, 34.681248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.584740, 40.437607, 34.107250>,  <41.612335, 40.441872, 34.829910>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.584740, 40.437607, 34.107250> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.303665, 40.172615, 34.211060>,  <41.135021, 40.013618, 34.273346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.303665, 40.172615, 34.211060>,  <41.584740, 40.437607, 34.107250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.303665, 40.172615, 34.211060> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634935, 0.419262, -0.648905,
		0.321075, -0.620759, -0.715240,
		-0.702687, -0.662478, 0.259527,
		41.092861, 39.973873, 34.288918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.260807, 40.158520, 33.491711>,  <41.584740, 40.437607, 34.107250>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.260807, 40.158520, 33.491711> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.990879, 39.989471, 33.733707>,  <40.828922, 39.888042, 33.878906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.990879, 39.989471, 33.733707>,  <41.260807, 40.158520, 33.491711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.990879, 39.989471, 33.733707> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700547, 0.109058, -0.705224,
		0.232063, -0.899721, -0.369660,
		-0.674820, -0.422620, 0.604988,
		40.788433, 39.862686, 33.915203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.959652, 39.526962, 33.166843>,  <41.260807, 40.158520, 33.491711>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.959652, 39.526962, 33.166843> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.698891, 39.662663, 33.438114>,  <40.542435, 39.744083, 33.600876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.698891, 39.662663, 33.438114>,  <40.959652, 39.526962, 33.166843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.698891, 39.662663, 33.438114> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700574, 0.072803, -0.709856,
		-0.290195, -0.937873, 0.190213,
		-0.651907, 0.339255, 0.678176,
		40.503319, 39.764439, 33.641567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.306667, 39.072941, 33.235340>,  <40.959652, 39.526962, 33.166843>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.306667, 39.072941, 33.235340> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.202679, 39.443314, 33.344933>,  <40.140285, 39.665539, 33.410686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.202679, 39.443314, 33.344933>,  <40.306667, 39.072941, 33.235340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.202679, 39.443314, 33.344933> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639932, 0.047271, -0.766976,
		-0.723118, -0.374724, 0.580243,
		-0.259976, 0.925931, 0.273980,
		40.124687, 39.721092, 33.427128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.717350, 39.038807, 33.043728>,  <40.306667, 39.072941, 33.235340>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.717350, 39.038807, 33.043728> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.743164, 39.428036, 33.132236>,  <39.758652, 39.661575, 33.185341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.743164, 39.428036, 33.132236>,  <39.717350, 39.038807, 33.043728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.743164, 39.428036, 33.132236> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717761, 0.199308, -0.667154,
		-0.693292, -0.115766, 0.711298,
		0.064534, 0.973075, 0.221271,
		39.762524, 39.719959, 33.198616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.046616, 39.242805, 33.080578>,  <39.717350, 39.038807, 33.043728>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.046616, 39.242805, 33.080578> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.262592, 39.569969, 33.001095>,  <39.392178, 39.766270, 32.953407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.262592, 39.569969, 33.001095>,  <39.046616, 39.242805, 33.080578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.262592, 39.569969, 33.001095> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665878, 0.270673, -0.695228,
		-0.514853, 0.507694, 0.690778,
		0.539938, 0.817914, -0.198705,
		39.424572, 39.815342, 32.941483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.961517, 34.514664, 44.052044> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.680153, 34.381992, 43.800579>,  <37.511333, 34.302391, 43.649700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.680153, 34.381992, 43.800579>,  <37.961517, 34.514664, 44.052044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.680153, 34.381992, 43.800579> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671783, -0.021258, -0.740443,
		0.232224, -0.943154, 0.237767,
		-0.703406, -0.331676, -0.628658,
		37.469131, 34.282490, 43.611980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293770, 33.983479, 43.702579>,  <37.961517, 34.514664, 44.052044>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.293770, 33.983479, 43.702579> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.974979, 34.075722, 43.479275>,  <37.783707, 34.131065, 43.345291>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.974979, 34.075722, 43.479275>,  <38.293770, 33.983479, 43.702579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.974979, 34.075722, 43.479275> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558353, -0.071247, -0.826538,
		-0.230379, -0.970435, -0.071977,
		-0.796974, 0.230606, -0.558260,
		37.735886, 34.144905, 43.311798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.474598, 33.647369, 43.011600>,  <38.293770, 33.983479, 43.702579>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.474598, 33.647369, 43.011600> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.185596, 33.907658, 42.918179>,  <38.012196, 34.063831, 42.862125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.185596, 33.907658, 42.918179>,  <38.474598, 33.647369, 43.011600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.185596, 33.907658, 42.918179> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295519, -0.014724, -0.955223,
		-0.625022, -0.759175, -0.181662,
		-0.722507, 0.650720, -0.233553,
		37.968845, 34.102875, 42.848114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.448971, 33.636189, 42.314423>,  <38.474598, 33.647369, 43.011600>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.448971, 33.636189, 42.314423> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.187374, 33.935581, 42.358356>,  <38.030415, 34.115215, 42.384716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.187374, 33.935581, 42.358356>,  <38.448971, 33.636189, 42.314423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.187374, 33.935581, 42.358356> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079779, 0.212623, -0.973872,
		-0.752281, -0.628144, -0.198767,
		-0.653994, 0.748483, 0.109839,
		37.991177, 34.160126, 42.391308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.788136, 33.438427, 41.989288>,  <38.448971, 33.636189, 42.314423>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.788136, 33.438427, 41.989288> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818825, 33.837185, 41.996288>,  <37.837238, 34.076439, 42.000488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818825, 33.837185, 41.996288>,  <37.788136, 33.438427, 41.989288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.818825, 33.837185, 41.996288> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055827, 0.013230, -0.998353,
		-0.995488, 0.077577, -0.054639,
		0.076727, 0.996899, 0.017501,
		37.841843, 34.136253, 42.001537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378014, 33.683590, 41.456928>,  <37.788136, 33.438427, 41.989288>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.378014, 33.683590, 41.456928> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.657856, 33.957947, 41.537041>,  <37.825760, 34.122559, 41.585106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.657856, 33.957947, 41.537041>,  <37.378014, 33.683590, 41.456928>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.657856, 33.957947, 41.537041> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221459, 0.058351, -0.973423,
		-0.679347, 0.725362, -0.111074,
		0.699602, 0.685890, 0.200278,
		37.867737, 34.163715, 41.597126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.200314, 34.277241, 41.021652>,  <37.378014, 33.683590, 41.456928>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.200314, 34.277241, 41.021652> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.586792, 34.307045, 41.120380>,  <37.818680, 34.324928, 41.179615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.586792, 34.307045, 41.120380>,  <37.200314, 34.277241, 41.021652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.586792, 34.307045, 41.120380> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243504, 0.050834, -0.968567,
		-0.084711, 0.995924, 0.030973,
		0.966193, 0.074506, 0.246818,
		37.876652, 34.329395, 41.194427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.355061, 34.794773, 40.658058>,  <37.200314, 34.277241, 41.021652>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.355061, 34.794773, 40.658058> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698334, 34.614727, 40.756779>,  <37.904297, 34.506699, 40.816013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698334, 34.614727, 40.756779>,  <37.355061, 34.794773, 40.658058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.698334, 34.614727, 40.756779> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303992, 0.058196, -0.950895,
		0.413653, 0.891070, 0.186775,
		0.858184, -0.450119, 0.246805,
		37.955788, 34.479691, 40.830822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.051582, 35.189362, 40.339077>,  <37.355061, 34.794773, 40.658058>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.051582, 35.189362, 40.339077> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.081898, 34.795910, 40.404472>,  <38.100086, 34.559837, 40.443710>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.081898, 34.795910, 40.404472>,  <38.051582, 35.189362, 40.339077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.081898, 34.795910, 40.404472> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194884, -0.146188, -0.969871,
		0.977894, 0.105363, 0.180614,
		0.075785, -0.983630, 0.163490,
		38.104633, 34.500820, 40.453518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.768833, 35.017403, 40.105453>,  <38.051582, 35.189362, 40.339077>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.768833, 35.017403, 40.105453> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.576591, 34.667187, 40.125229>,  <38.461246, 34.457058, 40.137093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.576591, 34.667187, 40.125229>,  <38.768833, 35.017403, 40.105453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.576591, 34.667187, 40.125229> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426238, -0.282497, -0.859370,
		0.766380, -0.391946, 0.508959,
		-0.480606, -0.875542, 0.049438,
		38.432411, 34.404526, 40.140060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.243851, 34.484550, 39.858593>,  <38.768833, 35.017403, 40.105453>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.243851, 34.484550, 39.858593> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.878338, 34.328342, 39.813885>,  <38.659031, 34.234615, 39.787060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.878338, 34.328342, 39.813885>,  <39.243851, 34.484550, 39.858593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.878338, 34.328342, 39.813885> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206593, -0.209904, -0.955646,
		0.349742, -0.896343, 0.272487,
		-0.913783, -0.390524, -0.111766,
		38.604202, 34.211185, 39.780354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.348305, 33.806408, 39.643028>,  <39.243851, 34.484550, 39.858593>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.348305, 33.806408, 39.643028> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.001049, 33.970097, 39.530697>,  <38.792694, 34.068310, 39.463299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.001049, 33.970097, 39.530697>,  <39.348305, 33.806408, 39.643028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.001049, 33.970097, 39.530697> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245816, -0.137034, -0.959581,
		-0.431170, -0.902084, 0.018371,
		-0.868140, 0.409227, -0.280831,
		38.740608, 34.092865, 39.446449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.428627, 33.631451, 38.916996>,  <39.348305, 33.806408, 39.643028>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.428627, 33.631451, 38.916996> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.051247, 33.730873, 38.829258>,  <38.824818, 33.790527, 38.776615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.051247, 33.730873, 38.829258>,  <39.428627, 33.631451, 38.916996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.051247, 33.730873, 38.829258> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167903, -0.212243, -0.962685,
		-0.285834, -0.945079, 0.158508,
		-0.943455, 0.248554, -0.219348,
		38.768211, 33.805439, 38.763454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.429024, 33.808392, 38.273800>,  <39.428627, 33.631451, 38.916996>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.429024, 33.808392, 38.273800> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.517204, 34.184093, 38.379017>,  <39.570114, 34.409515, 38.442146>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.517204, 34.184093, 38.379017>,  <39.429024, 33.808392, 38.273800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.517204, 34.184093, 38.379017> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935644, -0.127430, -0.329139,
		-0.275626, 0.318678, -0.906904,
		0.220456, 0.939258, 0.263046,
		39.583340, 34.465870, 38.457932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.046772, 33.380791, 37.670849>,  <39.429024, 33.808392, 38.273800>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.046772, 33.380791, 37.670849> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.198128, 33.020275, 37.586468>,  <39.288940, 32.803967, 37.535839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.198128, 33.020275, 37.586468>,  <39.046772, 33.380791, 37.670849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.198128, 33.020275, 37.586468> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722731, -0.430062, 0.541023,
		-0.578341, -0.052254, -0.814120,
		0.378392, -0.901286, -0.210957,
		39.311646, 32.749889, 37.523182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.447952, 33.025349, 37.711132>,  <39.046772, 33.380791, 37.670849>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.447952, 33.025349, 37.711132> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.740662, 32.754025, 37.737698>,  <38.916286, 32.591232, 37.753639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.740662, 32.754025, 37.737698>,  <38.447952, 33.025349, 37.711132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.740662, 32.754025, 37.737698> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616758, -0.617583, 0.488057,
		-0.290035, -0.398110, -0.870281,
		0.731772, -0.678307, 0.066417,
		38.960194, 32.550533, 37.757622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.212532, 32.419380, 37.450596>,  <38.447952, 33.025349, 37.711132>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.212532, 32.419380, 37.450596> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.509171, 32.332855, 37.704601>,  <38.687153, 32.280941, 37.857006>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.509171, 32.332855, 37.704601>,  <38.212532, 32.419380, 37.450596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.509171, 32.332855, 37.704601> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580108, -0.682182, 0.445087,
		0.336919, -0.698452, -0.631388,
		0.741593, -0.216315, 0.635018,
		38.731647, 32.267960, 37.895107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.150452, 31.693787, 37.645668>,  <38.212532, 32.419380, 37.450596>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.150452, 31.693787, 37.645668> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377548, 31.848095, 37.936558>,  <38.513805, 31.940680, 38.111092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377548, 31.848095, 37.936558>,  <38.150452, 31.693787, 37.645668>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.377548, 31.848095, 37.936558> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370899, -0.668786, 0.644328,
		0.734919, -0.635537, -0.236615,
		0.567739, 0.385769, 0.727224,
		38.547871, 31.963825, 38.154724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.500732, 31.129179, 37.951031>,  <38.150452, 31.693787, 37.645668>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.500732, 31.129179, 37.951031> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.487019, 31.418707, 38.226685>,  <38.478790, 31.592424, 38.392078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.487019, 31.418707, 38.226685>,  <38.500732, 31.129179, 37.951031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.487019, 31.418707, 38.226685> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329681, -0.659134, 0.675908,
		0.943469, -0.204022, 0.261229,
		-0.034285, 0.723821, 0.689135,
		38.476734, 31.635853, 38.433426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413322, 30.753954, 38.497780>,  <38.500732, 31.129179, 37.951031>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.413322, 30.753954, 38.497780> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.329281, 31.110518, 38.658401>,  <38.278854, 31.324455, 38.754776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.329281, 31.110518, 38.658401>,  <38.413322, 30.753954, 38.497780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.329281, 31.110518, 38.658401> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487855, -0.451527, 0.747075,
		0.847262, -0.038934, 0.529747,
		-0.210108, 0.891407, 0.401556,
		38.266247, 31.377939, 38.778870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.574406, 30.724514, 39.172375>,  <38.413322, 30.753954, 38.497780>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.574406, 30.724514, 39.172375> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.319523, 31.031513, 39.144333>,  <38.166592, 31.215712, 39.127510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.319523, 31.031513, 39.144333>,  <38.574406, 30.724514, 39.172375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.319523, 31.031513, 39.144333> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507451, -0.349362, 0.787680,
		0.580050, 0.537491, 0.612083,
		-0.637209, 0.767496, -0.070103,
		38.128361, 31.261763, 39.123302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.482079, 30.812582, 39.877815>,  <38.574406, 30.724514, 39.172375>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.482079, 30.812582, 39.877815> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.184063, 30.986700, 39.675652>,  <38.005253, 31.091171, 39.554356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.184063, 30.986700, 39.675652>,  <38.482079, 30.812582, 39.877815>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.184063, 30.986700, 39.675652> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610192, -0.138748, 0.780009,
		0.269410, 0.889532, 0.368987,
		-0.745039, 0.435295, -0.505405,
		37.960552, 31.117289, 39.524029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.252937, 31.351931, 40.277000>,  <38.482079, 30.812582, 39.877815>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.252937, 31.351931, 40.277000> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.936230, 31.273573, 40.045578>,  <37.746204, 31.226559, 39.906723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.936230, 31.273573, 40.045578>,  <38.252937, 31.351931, 40.277000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.936230, 31.273573, 40.045578> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527565, -0.258070, 0.809367,
		-0.307858, 0.946058, 0.100985,
		-0.791769, -0.195894, -0.578556,
		37.698700, 31.214806, 39.872009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.665958, 31.814352, 40.430870>,  <38.252937, 31.351931, 40.277000>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.665958, 31.814352, 40.430870> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.517082, 31.476751, 40.276398>,  <37.427757, 31.274191, 40.183716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.517082, 31.476751, 40.276398>,  <37.665958, 31.814352, 40.430870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.517082, 31.476751, 40.276398> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657483, -0.053932, 0.751537,
		-0.655126, 0.533621, -0.534844,
		-0.372191, -0.844002, -0.386179,
		37.405426, 31.223551, 40.160545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.942684, 31.924107, 40.404888>,  <37.665958, 31.814352, 40.430870>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.942684, 31.924107, 40.404888> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.004066, 31.528845, 40.404221>,  <37.040894, 31.291687, 40.403820>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.004066, 31.528845, 40.404221>,  <36.942684, 31.924107, 40.404888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.004066, 31.528845, 40.404221> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676936, -0.106353, 0.728318,
		-0.719868, -0.110631, -0.685238,
		0.153451, -0.988155, -0.001670,
		37.050102, 31.232399, 40.403721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.243862, 31.599352, 40.490635>,  <36.942684, 31.924107, 40.404888>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.243862, 31.599352, 40.490635> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.487980, 31.289106, 40.555084>,  <36.634453, 31.102959, 40.593754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.487980, 31.289106, 40.555084>,  <36.243862, 31.599352, 40.490635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.487980, 31.289106, 40.555084> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455052, -0.176758, 0.872745,
		-0.648432, -0.605956, -0.460819,
		0.610298, -0.775612, 0.161126,
		36.671070, 31.056423, 40.603420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.786640, 31.077982, 40.661739>,  <36.243862, 31.599352, 40.490635>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.786640, 31.077982, 40.661739> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.133186, 30.926594, 40.792076>,  <36.341114, 30.835762, 40.870277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.133186, 30.926594, 40.792076>,  <35.786640, 31.077982, 40.661739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.133186, 30.926594, 40.792076> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465692, -0.376533, 0.800846,
		-0.180401, -0.845568, -0.502464,
		0.866364, -0.378466, 0.325848,
		36.393097, 30.813053, 40.889832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.667969, 30.340092, 40.809368>,  <35.786640, 31.077982, 40.661739>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.667969, 30.340092, 40.809368> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.968552, 30.474115, 41.036716>,  <36.148903, 30.554529, 41.173126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.968552, 30.474115, 41.036716>,  <35.667969, 30.340092, 40.809368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.968552, 30.474115, 41.036716> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416665, -0.426930, 0.802571,
		0.511564, -0.839919, -0.181213,
		0.751460, 0.335061, 0.568367,
		36.193989, 30.574633, 41.207226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.411396, 29.701374, 40.819454>,  <35.667969, 30.340092, 40.809368>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.411396, 29.701374, 40.819454> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.016903, 29.645399, 40.784214>,  <34.780209, 29.611814, 40.763069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.016903, 29.645399, 40.784214>,  <35.411396, 29.701374, 40.819454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.016903, 29.645399, 40.784214> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014577, 0.457135, -0.889278,
		0.164716, -0.878319, -0.448803,
		-0.986234, -0.139936, -0.088100,
		34.721031, 29.603418, 40.757782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309883, 29.569592, 40.105518>,  <35.411396, 29.701374, 40.819454>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309883, 29.569592, 40.105518> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.953388, 29.695938, 40.235706>,  <34.739491, 29.771746, 40.313820>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.953388, 29.695938, 40.235706>,  <35.309883, 29.569592, 40.105518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.953388, 29.695938, 40.235706> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033829, 0.669320, -0.742204,
		-0.452284, -0.672487, -0.585834,
		-0.891232, 0.315868, 0.325472,
		34.686020, 29.790699, 40.333347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.805470, 29.594543, 39.429016>,  <35.309883, 29.569592, 40.105518>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.805470, 29.594543, 39.429016> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.656498, 29.831854, 39.714485>,  <34.567116, 29.974239, 39.885765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.656498, 29.831854, 39.714485>,  <34.805470, 29.594543, 39.429016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.656498, 29.831854, 39.714485> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068663, 0.749266, -0.658700,
		-0.925518, -0.294320, -0.238311,
		-0.372427, 0.593276, 0.713668,
		34.544769, 30.009836, 39.928585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.157597, 29.802904, 39.168053>,  <34.805470, 29.594543, 39.429016>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.157597, 29.802904, 39.168053> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.291874, 30.070847, 39.432961>,  <34.372440, 30.231611, 39.591908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.291874, 30.070847, 39.432961>,  <34.157597, 29.802904, 39.168053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.291874, 30.070847, 39.432961> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246927, 0.741062, -0.624384,
		-0.909031, 0.046068, 0.414173,
		0.335692, 0.669855, 0.662273,
		34.392582, 30.271803, 39.631641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.690723, 30.332329, 38.999275>,  <34.157597, 29.802904, 39.168053>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.690723, 30.332329, 38.999275> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.994926, 30.479639, 39.213192>,  <34.177448, 30.568026, 39.341541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.994926, 30.479639, 39.213192>,  <33.690723, 30.332329, 38.999275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.994926, 30.479639, 39.213192> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092598, 0.876698, -0.472044,
		-0.642690, 0.309474, 0.700839,
		0.760510, 0.368274, 0.534789,
		34.223080, 30.590120, 39.373627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.528271, 31.017405, 39.121349>,  <33.690723, 30.332329, 38.999275>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.528271, 31.017405, 39.121349> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.922367, 31.013666, 39.189724>,  <34.158825, 31.011423, 39.230747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.922367, 31.013666, 39.189724>,  <33.528271, 31.017405, 39.121349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.922367, 31.013666, 39.189724> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072090, 0.928305, -0.364765,
		-0.155273, 0.371703, 0.915274,
		0.985238, -0.009344, 0.170937,
		34.217937, 31.010862, 39.241005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.725243, 31.625753, 39.492790>,  <33.528271, 31.017405, 39.121349>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.725243, 31.625753, 39.492790> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.055672, 31.492352, 39.311073>,  <34.253929, 31.412310, 39.202042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.055672, 31.492352, 39.311073>,  <33.725243, 31.625753, 39.492790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.055672, 31.492352, 39.311073> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199247, 0.926873, -0.318130,
		0.527169, 0.172281, 0.832113,
		0.826071, -0.333504, -0.454292,
		34.303493, 31.392300, 39.174786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.205719, 32.136276, 39.654049>,  <33.725243, 31.625753, 39.492790>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.205719, 32.136276, 39.654049> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.390026, 31.925674, 39.368256>,  <34.500610, 31.799313, 39.196781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.390026, 31.925674, 39.368256>,  <34.205719, 32.136276, 39.654049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.390026, 31.925674, 39.368256> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247052, 0.849300, -0.466535,
		0.852442, 0.038452, 0.521406,
		0.460769, -0.526509, -0.714479,
		34.528255, 31.767721, 39.153912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.849072, 32.297203, 39.580357>,  <34.205719, 32.136276, 39.654049>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.849072, 32.297203, 39.580357> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.775906, 32.160175, 39.211750>,  <34.732006, 32.077957, 38.990585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.775906, 32.160175, 39.211750>,  <34.849072, 32.297203, 39.580357>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.775906, 32.160175, 39.211750> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344947, 0.855375, -0.386452,
		0.920627, -0.388561, -0.038290,
		-0.182912, -0.342570, -0.921514,
		34.721031, 32.057404, 38.935295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.549740, 32.359917, 39.182102>,  <34.849072, 32.297203, 39.580357>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.549740, 32.359917, 39.182102> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.263756, 32.354691, 38.902485>,  <35.092163, 32.351555, 38.734715>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.263756, 32.354691, 38.902485>,  <35.549740, 32.359917, 39.182102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.263756, 32.354691, 38.902485> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420232, 0.791042, -0.444587,
		0.558777, -0.611623, -0.560077,
		-0.714964, -0.013063, -0.699039,
		35.049267, 32.350773, 38.692772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.855648, 32.606110, 38.484760>,  <35.549740, 32.359917, 39.182102>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.855648, 32.606110, 38.484760> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.461716, 32.620670, 38.416889>,  <35.225357, 32.629406, 38.376167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.461716, 32.620670, 38.416889>,  <35.855648, 32.606110, 38.484760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.461716, 32.620670, 38.416889> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116052, 0.865108, -0.487976,
		0.129023, -0.500263, -0.856207,
		-0.984827, 0.036404, -0.169675,
		35.166267, 32.631592, 38.365986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.753605, 32.539978, 37.805534>,  <35.855648, 32.606110, 38.484760>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.753605, 32.539978, 37.805534> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.458809, 32.744957, 37.981827>,  <35.281933, 32.867943, 38.087605>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.458809, 32.744957, 37.981827>,  <35.753605, 32.539978, 37.805534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.458809, 32.744957, 37.981827> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203861, 0.790225, -0.577915,
		-0.644430, -0.336068, -0.686854,
		-0.736988, 0.512448, 0.440733,
		35.237713, 32.898693, 38.114048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.980072, 27.230865, 43.583672> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.691765, 27.475286, 43.714581>,  <34.518780, 27.621939, 43.793125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.691765, 27.475286, 43.714581>,  <34.980072, 27.230865, 43.583672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.691765, 27.475286, 43.714581> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255596, 0.204587, -0.944889,
		-0.644334, -0.764694, 0.008724,
		-0.720766, 0.611054, 0.327275,
		34.475536, 27.658602, 43.812763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.509762, 27.119564, 43.076263>,  <34.980072, 27.230865, 43.583672>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.509762, 27.119564, 43.076263> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.396019, 27.457468, 43.257599>,  <34.327774, 27.660212, 43.366402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.396019, 27.457468, 43.257599>,  <34.509762, 27.119564, 43.076263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.396019, 27.457468, 43.257599> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274921, 0.381154, -0.882689,
		-0.918455, -0.375631, 0.123859,
		-0.284356, 0.844762, 0.453342,
		34.310711, 27.710897, 43.393600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.904385, 27.294510, 42.739552>,  <34.509762, 27.119564, 43.076263>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.904385, 27.294510, 42.739552> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.042755, 27.634003, 42.899548>,  <34.125778, 27.837698, 42.995544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.042755, 27.634003, 42.899548>,  <33.904385, 27.294510, 42.739552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.042755, 27.634003, 42.899548> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431737, 0.522479, -0.735268,
		-0.833031, 0.081656, 0.547167,
		0.345922, 0.848733, 0.399987,
		34.146530, 27.888622, 43.019543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.497654, 27.791929, 42.455246>,  <33.904385, 27.294510, 42.739552>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.497654, 27.791929, 42.455246> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.812256, 27.999504, 42.589180>,  <34.001015, 28.124050, 42.669540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.812256, 27.999504, 42.589180>,  <33.497654, 27.791929, 42.455246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.812256, 27.999504, 42.589180> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070555, 0.614119, -0.786053,
		-0.613543, 0.594609, 0.519621,
		0.786503, 0.518939, 0.334836,
		34.048206, 28.155186, 42.689632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.278664, 28.509310, 42.399082>,  <33.497654, 27.791929, 42.455246>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.278664, 28.509310, 42.399082> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.677570, 28.530899, 42.419296>,  <33.916912, 28.543852, 42.431427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.677570, 28.530899, 42.419296>,  <33.278664, 28.509310, 42.399082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.677570, 28.530899, 42.419296> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010371, 0.574639, -0.818341,
		-0.073208, 0.816625, 0.572506,
		0.997263, 0.053972, 0.050537,
		33.976749, 28.547091, 42.434456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.403072, 29.211763, 42.401726>,  <33.278664, 28.509310, 42.399082>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.403072, 29.211763, 42.401726> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.725246, 29.005476, 42.284897>,  <33.918552, 28.881702, 42.214798>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.725246, 29.005476, 42.284897>,  <33.403072, 29.211763, 42.401726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.725246, 29.005476, 42.284897> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126830, 0.631358, -0.765049,
		0.578955, 0.579154, 0.573927,
		0.805435, -0.515720, -0.292074,
		33.966877, 28.850760, 42.197273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.934975, 29.735613, 42.326706>,  <33.403072, 29.211763, 42.401726>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.934975, 29.735613, 42.326706> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.053288, 29.421795, 42.108715>,  <34.124275, 29.233503, 41.977921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.053288, 29.421795, 42.108715>,  <33.934975, 29.735613, 42.326706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.053288, 29.421795, 42.108715> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383664, 0.620036, -0.684367,
		0.874823, -0.006665, 0.484397,
		0.295782, -0.784545, -0.544979,
		34.142021, 29.186432, 41.945221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.395691, 29.988140, 41.845131>,  <33.934975, 29.735613, 42.326706>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.395691, 29.988140, 41.845131> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.378609, 29.618246, 41.693848>,  <34.368359, 29.396309, 41.603077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.378609, 29.618246, 41.693848>,  <34.395691, 29.988140, 41.845131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.378609, 29.618246, 41.693848> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431176, 0.324425, -0.841924,
		0.901257, -0.199027, 0.384870,
		-0.042704, -0.924736, -0.378206,
		34.365799, 29.340826, 41.580387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.174416, 29.703176, 41.565502>,  <34.395691, 29.988140, 41.845131>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.174416, 29.703176, 41.565502> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.850014, 29.560602, 41.379932>,  <34.655373, 29.475058, 41.268593>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.850014, 29.560602, 41.379932>,  <35.174416, 29.703176, 41.565502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.850014, 29.560602, 41.379932> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234178, 0.528901, -0.815736,
		0.536128, -0.770205, -0.345472,
		-0.811004, -0.356437, -0.463923,
		34.606712, 29.453671, 41.240757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.872135, 29.492037, 41.436310>,  <35.174416, 29.703176, 41.565502>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.872135, 29.492037, 41.436310> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.072273, 29.822775, 41.539055>,  <36.192356, 30.021217, 41.600700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.072273, 29.822775, 41.539055>,  <35.872135, 29.492037, 41.436310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.072273, 29.822775, 41.539055> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017208, -0.287110, 0.957743,
		0.865654, -0.483625, -0.129427,
		0.500348, 0.826846, 0.256860,
		36.222378, 30.070829, 41.616112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.468494, 29.275009, 41.982586>,  <35.872135, 29.492037, 41.436310>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.468494, 29.275009, 41.982586> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.409786, 29.669373, 42.014702>,  <36.374561, 29.905991, 42.033970>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.409786, 29.669373, 42.014702>,  <36.468494, 29.275009, 41.982586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.409786, 29.669373, 42.014702> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054186, -0.089059, 0.994552,
		0.987686, 0.141620, 0.066493,
		-0.146770, 0.985907, 0.080288,
		36.365757, 29.965145, 42.038788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.893539, 29.533266, 42.509876>,  <36.468494, 29.275009, 41.982586>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.893539, 29.533266, 42.509876> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.628258, 29.831997, 42.490234>,  <36.469090, 30.011236, 42.478451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.628258, 29.831997, 42.490234>,  <36.893539, 29.533266, 42.509876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.628258, 29.831997, 42.490234> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079502, -0.005060, 0.996822,
		0.744205, 0.664999, 0.062730,
		-0.663203, 0.746827, -0.049103,
		36.429298, 30.056046, 42.475502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.205185, 30.113520, 42.869919>,  <36.893539, 29.533266, 42.509876>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.205185, 30.113520, 42.869919> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.810669, 30.177996, 42.884022>,  <36.573959, 30.216681, 42.892483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.810669, 30.177996, 42.884022>,  <37.205185, 30.113520, 42.869919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.810669, 30.177996, 42.884022> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046518, 0.066609, 0.996694,
		0.158309, 0.984673, -0.073195,
		-0.986293, 0.161190, 0.035260,
		36.514782, 30.226353, 42.894600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.179028, 30.565933, 43.336910>,  <37.205185, 30.113520, 42.869919>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.179028, 30.565933, 43.336910> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.805267, 30.423510, 43.332722>,  <36.581009, 30.338055, 43.330208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.805267, 30.423510, 43.332722>,  <37.179028, 30.565933, 43.336910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.805267, 30.423510, 43.332722> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070381, -0.213359, 0.974436,
		-0.349191, 0.909780, 0.224423,
		-0.934405, -0.356060, -0.010472,
		36.524944, 30.316692, 43.329578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.927551, 30.823927, 43.921986>,  <37.179028, 30.565933, 43.336910>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.927551, 30.823927, 43.921986> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.672813, 30.529251, 43.831028>,  <36.519970, 30.352446, 43.776451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.672813, 30.529251, 43.831028>,  <36.927551, 30.823927, 43.921986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.672813, 30.529251, 43.831028> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084914, -0.226129, 0.970389,
		-0.766299, 0.637300, 0.081455,
		-0.636848, -0.736691, -0.227398,
		36.481758, 30.308243, 43.762810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.423401, 30.972473, 44.296234>,  <36.927551, 30.823927, 43.921986>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.423401, 30.972473, 44.296234> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.374447, 30.578321, 44.248814>,  <36.345074, 30.341831, 44.220360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.374447, 30.578321, 44.248814>,  <36.423401, 30.972473, 44.296234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.374447, 30.578321, 44.248814> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235849, -0.087156, 0.967873,
		-0.964053, 0.146411, -0.221734,
		-0.122382, -0.985377, -0.118554,
		36.337734, 30.282709, 44.213249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.840466, 30.793365, 44.706261>,  <36.423401, 30.972473, 44.296234>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.840466, 30.793365, 44.706261> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.061916, 30.466736, 44.640903>,  <36.194786, 30.270758, 44.601688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.061916, 30.466736, 44.640903>,  <35.840466, 30.793365, 44.706261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.061916, 30.466736, 44.640903> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113275, -0.268226, 0.956673,
		-0.825023, -0.511135, -0.240996,
		0.553630, -0.816576, -0.163394,
		36.228004, 30.221764, 44.591885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375717, 30.231031, 44.935257>,  <35.840466, 30.793365, 44.706261>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375717, 30.231031, 44.935257> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.755856, 30.106747, 44.928261>,  <35.983936, 30.032175, 44.924065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.755856, 30.106747, 44.928261>,  <35.375717, 30.231031, 44.935257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.755856, 30.106747, 44.928261> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110880, -0.390570, 0.913872,
		-0.290778, -0.866554, -0.405627,
		0.950344, -0.310709, -0.017486,
		36.040958, 30.013533, 44.923016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293705, 29.565248, 45.295937>,  <35.375717, 30.231031, 44.935257>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.293705, 29.565248, 45.295937> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.674038, 29.688631, 45.284805>,  <35.902237, 29.762661, 45.278126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.674038, 29.688631, 45.284805>,  <35.293705, 29.565248, 45.295937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.674038, 29.688631, 45.284805> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166316, -0.432727, 0.886051,
		0.261264, -0.847114, -0.462752,
		0.950831, 0.308456, -0.027833,
		35.959286, 29.781168, 45.276455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723026, 29.000191, 45.521301>,  <35.293705, 29.565248, 45.295937>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.723026, 29.000191, 45.521301> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.982159, 29.303648, 45.548931>,  <36.137638, 29.485722, 45.565510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.982159, 29.303648, 45.548931>,  <35.723026, 29.000191, 45.521301>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.982159, 29.303648, 45.548931> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219471, -0.272708, 0.936730,
		0.729480, -0.591686, -0.343170,
		0.647835, 0.758642, 0.069077,
		36.176510, 29.531240, 45.569653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.449947, 28.728970, 45.762920>,  <35.723026, 29.000191, 45.521301>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.449947, 28.728970, 45.762920> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.402668, 29.120329, 45.830761>,  <36.374302, 29.355145, 45.871468>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.402668, 29.120329, 45.830761>,  <36.449947, 28.728970, 45.762920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.402668, 29.120329, 45.830761> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226318, -0.139765, 0.963974,
		0.966856, 0.152323, -0.204910,
		-0.118196, 0.978398, 0.169605,
		36.367210, 29.413849, 45.881641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.022781, 28.867744, 46.188946>,  <36.449947, 28.728970, 45.762920>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.022781, 28.867744, 46.188946> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.751617, 29.157387, 46.239719>,  <36.588921, 29.331173, 46.270184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.751617, 29.157387, 46.239719>,  <37.022781, 28.867744, 46.188946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.751617, 29.157387, 46.239719> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131875, -0.050090, 0.990000,
		0.723224, 0.687866, -0.061535,
		-0.677905, 0.724107, 0.126939,
		36.548244, 29.374619, 46.277802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.213722, 29.337404, 46.748554>,  <37.022781, 28.867744, 46.188946>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.213722, 29.337404, 46.748554> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.825462, 29.433134, 46.739033>,  <36.592506, 29.490572, 46.733318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.825462, 29.433134, 46.739033>,  <37.213722, 29.337404, 46.748554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.825462, 29.433134, 46.739033> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035716, -0.045558, 0.998323,
		0.237839, 0.969870, 0.052769,
		-0.970648, 0.239325, -0.023804,
		36.534267, 29.504932, 46.731892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<29.500574, 33.456482, 47.015110> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.649921, 33.100849, 46.909180>,  <29.739531, 32.887470, 46.845623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.649921, 33.100849, 46.909180>,  <29.500574, 33.456482, 47.015110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.649921, 33.100849, 46.909180> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740134, 0.457594, -0.492758,
		0.559282, -0.012023, 0.828890,
		0.373370, -0.889080, -0.264823,
		29.761932, 32.834126, 46.829731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.165718, 33.586689, 47.189655>,  <29.500574, 33.456482, 47.015110>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.165718, 33.586689, 47.189655> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.153605, 33.261158, 46.957527>,  <30.146336, 33.065842, 46.818249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.153605, 33.261158, 46.957527>,  <30.165718, 33.586689, 47.189655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.153605, 33.261158, 46.957527> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706490, 0.393277, -0.588392,
		0.707075, -0.427809, 0.563049,
		-0.030285, -0.813826, -0.580319,
		30.144520, 33.017010, 46.783432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.816540, 33.452057, 46.970413>,  <30.165718, 33.586689, 47.189655>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.816540, 33.452057, 46.970413> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.616184, 33.236835, 46.699234>,  <30.495970, 33.107704, 46.536526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.616184, 33.236835, 46.699234>,  <30.816540, 33.452057, 46.970413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.616184, 33.236835, 46.699234> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615217, 0.329615, -0.716144,
		0.608784, -0.775792, 0.165918,
		-0.500890, -0.538052, -0.677945,
		30.465918, 33.075420, 46.495850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.373425, 33.078537, 46.569603>,  <30.816540, 33.452057, 46.970413>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.373425, 33.078537, 46.569603> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.045116, 33.064625, 46.341522>,  <30.848131, 33.056278, 46.204674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.045116, 33.064625, 46.341522>,  <31.373425, 33.078537, 46.569603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.045116, 33.064625, 46.341522> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563937, 0.109986, -0.818461,
		0.091173, -0.993325, -0.070664,
		-0.820770, -0.034772, -0.570200,
		30.798885, 33.054192, 46.170464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.661247, 32.808155, 46.020260>,  <31.373425, 33.078537, 46.569603>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.661247, 32.808155, 46.020260> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.304554, 32.923656, 45.880875>,  <31.090538, 32.992958, 45.797245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.304554, 32.923656, 45.880875>,  <31.661247, 32.808155, 46.020260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.304554, 32.923656, 45.880875> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430109, 0.301254, -0.851030,
		-0.140766, -0.908771, -0.392836,
		-0.891735, 0.288758, -0.348464,
		31.037033, 33.010284, 45.776337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.588495, 32.418041, 45.412678>,  <31.661247, 32.808155, 46.020260>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.588495, 32.418041, 45.412678> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.369349, 32.750660, 45.376099>,  <31.237860, 32.950233, 45.354149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.369349, 32.750660, 45.376099>,  <31.588495, 32.418041, 45.412678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.369349, 32.750660, 45.376099> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104868, -0.040188, -0.993674,
		-0.829966, -0.553992, -0.065186,
		-0.547868, 0.831551, -0.091451,
		31.204988, 33.000126, 45.348663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.126617, 32.340927, 44.878536>,  <31.588495, 32.418041, 45.412678>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.126617, 32.340927, 44.878536> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.180426, 32.737175, 44.888107>,  <31.212711, 32.974926, 44.893848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.180426, 32.737175, 44.888107>,  <31.126617, 32.340927, 44.878536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.180426, 32.737175, 44.888107> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192432, -0.002430, -0.981307,
		-0.972046, 0.136612, -0.190954,
		0.134522, 0.990622, 0.023926,
		31.220783, 33.034363, 44.895287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.877676, 32.547188, 44.227436>,  <31.126617, 32.340927, 44.878536>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.877676, 32.547188, 44.227436> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.066488, 32.880653, 44.342113>,  <31.179775, 33.080734, 44.410919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.066488, 32.880653, 44.342113>,  <30.877676, 32.547188, 44.227436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.066488, 32.880653, 44.342113> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099635, 0.272671, -0.956934,
		-0.875935, 0.480265, 0.045646,
		0.472029, 0.833664, 0.286693,
		31.208097, 33.130753, 44.428120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.571253, 33.097038, 43.848244>,  <30.877676, 32.547188, 44.227436>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.571253, 33.097038, 43.848244> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.921648, 33.246296, 43.970497>,  <31.131886, 33.335850, 44.043850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.921648, 33.246296, 43.970497>,  <30.571253, 33.097038, 43.848244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.921648, 33.246296, 43.970497> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140956, 0.407955, -0.902055,
		-0.461278, 0.833270, 0.304767,
		0.875987, 0.373140, 0.305635,
		31.184444, 33.358238, 44.062187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.572340, 33.687805, 43.444218>,  <30.571253, 33.097038, 43.848244>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.572340, 33.687805, 43.444218> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.939785, 33.688301, 43.602280>,  <31.160252, 33.688599, 43.697117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.939785, 33.688301, 43.602280>,  <30.572340, 33.687805, 43.444218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.939785, 33.688301, 43.602280> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326422, 0.561212, -0.760585,
		-0.222709, 0.827671, 0.515132,
		0.918613, 0.001239, 0.395157,
		31.215368, 33.688671, 43.720825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.778503, 34.427414, 43.517433>,  <30.572340, 33.687805, 43.444218>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.778503, 34.427414, 43.517433> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.112177, 34.208618, 43.489307>,  <31.312380, 34.077339, 43.472431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.112177, 34.208618, 43.489307>,  <30.778503, 34.427414, 43.517433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.112177, 34.208618, 43.489307> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315109, 0.577375, -0.753222,
		0.452600, 0.606169, 0.653997,
		0.834182, -0.546989, -0.070311,
		31.362431, 34.044521, 43.468216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.296825, 34.998779, 43.384388>,  <30.778503, 34.427414, 43.517433>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.296825, 34.998779, 43.384388> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.466965, 34.648518, 43.292908>,  <31.569048, 34.438358, 43.238022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.466965, 34.648518, 43.292908>,  <31.296825, 34.998779, 43.384388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.466965, 34.648518, 43.292908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421188, 0.415191, -0.806360,
		0.801048, 0.246661, 0.545418,
		0.425350, -0.875657, -0.228698,
		31.594570, 34.385822, 43.224297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.974342, 35.204014, 43.142319>,  <31.296825, 34.998779, 43.384388>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.974342, 35.204014, 43.142319> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.910295, 34.828976, 43.018848>,  <31.871866, 34.603954, 42.944767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.910295, 34.828976, 43.018848>,  <31.974342, 35.204014, 43.142319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.910295, 34.828976, 43.018848> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185620, 0.278534, -0.942318,
		0.969488, -0.208180, 0.129438,
		-0.160119, -0.937593, -0.308678,
		31.862259, 34.547699, 42.926247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.597290, 34.976837, 42.810017>,  <31.974342, 35.204014, 43.142319>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.597290, 34.976837, 42.810017> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.253075, 34.831699, 42.667011>,  <32.046547, 34.744617, 42.581207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.253075, 34.831699, 42.667011>,  <32.597290, 34.976837, 42.810017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.253075, 34.831699, 42.667011> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137555, 0.510245, -0.848957,
		0.490463, -0.779737, -0.389173,
		-0.860537, -0.362850, -0.357513,
		31.994913, 34.722847, 42.559757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.282684, 34.748856, 42.596470>,  <32.597290, 34.976837, 42.810017>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.282684, 34.748856, 42.596470> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.617451, 34.857277, 42.786667>,  <33.818310, 34.922329, 42.900787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.617451, 34.857277, 42.786667>,  <33.282684, 34.748856, 42.596470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.617451, 34.857277, 42.786667> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348416, -0.406160, 0.844772,
		0.422104, -0.872677, -0.245485,
		0.836920, 0.271051, 0.475496,
		33.868526, 34.938591, 42.929317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.393600, 34.329197, 43.135742>,  <33.282684, 34.748856, 42.596470>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.393600, 34.329197, 43.135742> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.658081, 34.601749, 43.261307>,  <33.816769, 34.765282, 43.336643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.658081, 34.601749, 43.261307>,  <33.393600, 34.329197, 43.135742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.658081, 34.601749, 43.261307> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193572, -0.249306, 0.948882,
		0.724806, -0.688165, -0.032945,
		0.661200, 0.681378, 0.313908,
		33.856441, 34.806164, 43.355480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.886723, 34.013256, 43.374058>,  <33.393600, 34.329197, 43.135742>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.886723, 34.013256, 43.374058> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.950741, 34.371456, 43.540169>,  <33.989151, 34.586376, 43.639835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.950741, 34.371456, 43.540169>,  <33.886723, 34.013256, 43.374058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.950741, 34.371456, 43.540169> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147344, -0.394317, 0.907085,
		0.976051, -0.206364, 0.068839,
		0.160045, 0.895504, 0.415280,
		33.998753, 34.640106, 43.664753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.329163, 33.908672, 43.973415>,  <33.886723, 34.013256, 43.374058>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.329163, 33.908672, 43.973415> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.166939, 34.259903, 44.075005>,  <34.069603, 34.470642, 44.135956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.166939, 34.259903, 44.075005>,  <34.329163, 33.908672, 43.973415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.166939, 34.259903, 44.075005> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023215, -0.287651, 0.957454,
		0.913773, 0.382410, 0.137045,
		-0.405561, 0.878077, 0.253970,
		34.045269, 34.523327, 44.151196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.724163, 34.149246, 44.576939>,  <34.329163, 33.908672, 43.973415>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.724163, 34.149246, 44.576939> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.371979, 34.337166, 44.551376>,  <34.160667, 34.449917, 44.536041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.371979, 34.337166, 44.551376>,  <34.724163, 34.149246, 44.576939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.371979, 34.337166, 44.551376> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218746, -0.282929, 0.933864,
		0.420646, 0.836207, 0.351874,
		-0.880459, 0.469797, -0.063904,
		34.107841, 34.478104, 44.532204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.649376, 34.533115, 45.123482>,  <34.724163, 34.149246, 44.576939>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.649376, 34.533115, 45.123482> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.264706, 34.508774, 45.016541>,  <34.033905, 34.494167, 44.952377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.264706, 34.508774, 45.016541>,  <34.649376, 34.533115, 45.123482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.264706, 34.508774, 45.016541> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260353, -0.103138, 0.959989,
		-0.085993, 0.992804, 0.083341,
		-0.961676, -0.060855, -0.267349,
		33.976204, 34.490517, 44.936337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.273926, 35.071037, 45.524406>,  <34.649376, 34.533115, 45.123482>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.273926, 35.071037, 45.524406> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.028149, 34.773659, 45.418766>,  <33.880684, 34.595230, 45.355381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.028149, 34.773659, 45.418766>,  <34.273926, 35.071037, 45.524406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.028149, 34.773659, 45.418766> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229959, -0.151449, 0.961344,
		-0.754704, 0.651423, -0.077905,
		-0.614443, -0.743446, -0.264100,
		33.843815, 34.550625, 45.339535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.677036, 35.141953, 46.034515>,  <34.273926, 35.071037, 45.524406>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.677036, 35.141953, 46.034515> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.616905, 34.781414, 45.872047>,  <33.580826, 34.565090, 45.774567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.616905, 34.781414, 45.872047>,  <33.677036, 35.141953, 46.034515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.616905, 34.781414, 45.872047> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391811, -0.322883, 0.861528,
		-0.907681, 0.288658, -0.304618,
		-0.150331, -0.901345, -0.406174,
		33.571804, 34.511009, 45.750195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.967449, 34.977711, 46.125626>,  <33.677036, 35.141953, 46.034515>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.967449, 34.977711, 46.125626> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.144848, 34.620689, 46.093006>,  <33.251286, 34.406475, 46.073433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.144848, 34.620689, 46.093006>,  <32.967449, 34.977711, 46.125626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.144848, 34.620689, 46.093006> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524077, -0.332064, 0.784268,
		-0.727085, -0.305081, -0.615039,
		0.443498, -0.892557, -0.081553,
		33.277897, 34.352921, 46.068539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.389977, 34.449234, 46.191910>,  <32.967449, 34.977711, 46.125626>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.389977, 34.449234, 46.191910> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.727661, 34.245975, 46.260139>,  <32.930271, 34.124020, 46.301075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.727661, 34.245975, 46.260139>,  <32.389977, 34.449234, 46.191910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.727661, 34.245975, 46.260139> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456708, -0.515342, 0.725148,
		-0.280579, -0.690080, -0.667132,
		0.844211, -0.508146, 0.170571,
		32.980923, 34.093533, 46.311310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.230579, 33.742462, 46.194859>,  <32.389977, 34.449234, 46.191910>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.230579, 33.742462, 46.194859> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.579235, 33.745667, 46.390892>,  <32.788429, 33.747589, 46.508514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.579235, 33.745667, 46.390892>,  <32.230579, 33.742462, 46.194859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.579235, 33.745667, 46.390892> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399556, -0.567528, 0.719907,
		0.283908, -0.823315, -0.491476,
		0.871637, 0.008015, 0.490086,
		32.840725, 33.748070, 46.537918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.608833, 33.080940, 46.249668>,  <32.230579, 33.742462, 46.194859>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.608833, 33.080940, 46.249668> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.735889, 33.302826, 46.557278>,  <32.812122, 33.435955, 46.741844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.735889, 33.302826, 46.557278>,  <32.608833, 33.080940, 46.249668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.735889, 33.302826, 46.557278> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112317, -0.783305, 0.611406,
		0.941535, -0.280583, -0.186508,
		0.317643, 0.554712, 0.769024,
		32.831181, 33.469238, 46.787983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.035549, 32.666855, 46.676083>,  <32.608833, 33.080940, 46.249668>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.035549, 32.666855, 46.676083> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.899525, 32.934292, 46.940613>,  <32.817909, 33.094753, 47.099331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.899525, 32.934292, 46.940613>,  <33.035549, 32.666855, 46.676083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.899525, 32.934292, 46.940613> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172822, -0.735686, 0.654904,
		0.924387, 0.108416, 0.365724,
		-0.340060, 0.668590, 0.661322,
		32.797508, 33.134869, 47.139008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.900204, 32.228115, 47.218433>,  <33.035549, 32.666855, 46.676083>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.900204, 32.228115, 47.218433> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.746143, 32.564312, 47.370869>,  <32.653706, 32.766029, 47.462330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.746143, 32.564312, 47.370869>,  <32.900204, 32.228115, 47.218433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.746143, 32.564312, 47.370869> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344793, -0.514096, 0.785380,
		0.856024, 0.171093, 0.487801,
		-0.385150, 0.840495, 0.381087,
		32.630600, 32.816460, 47.485195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.680779, 32.340137, 47.270409>,  <32.900204, 32.228115, 47.218433>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.680779, 32.340137, 47.270409> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.042416, 32.189098, 47.350441>,  <34.259399, 32.098476, 47.398460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.042416, 32.189098, 47.350441>,  <33.680779, 32.340137, 47.270409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.042416, 32.189098, 47.350441> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351204, 0.389834, -0.851285,
		0.243444, 0.839912, 0.485060,
		0.904097, -0.377595, 0.200078,
		34.313644, 32.075821, 47.410465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.152119, 32.834900, 47.158730>,  <33.680779, 32.340137, 47.270409>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.152119, 32.834900, 47.158730> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.416275, 32.534733, 47.147800>,  <34.574768, 32.354633, 47.141243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.416275, 32.534733, 47.147800>,  <34.152119, 32.834900, 47.158730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.416275, 32.534733, 47.147800> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572170, 0.526428, -0.628884,
		0.486313, 0.399677, 0.777019,
		0.660395, -0.750421, -0.027325,
		34.614395, 32.309605, 47.139603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.890842, 32.984631, 47.289101>,  <34.152119, 32.834900, 47.158730>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.890842, 32.984631, 47.289101> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.929405, 32.641647, 47.086926>,  <34.952545, 32.435856, 46.965622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.929405, 32.641647, 47.086926>,  <34.890842, 32.984631, 47.289101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.929405, 32.641647, 47.086926> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730909, 0.405683, -0.548811,
		0.675631, -0.316517, 0.665838,
		0.096412, -0.857460, -0.505437,
		34.958328, 32.384411, 46.935295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.651810, 32.983131, 47.276478>,  <34.890842, 32.984631, 47.289101>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.651810, 32.983131, 47.276478> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.475048, 32.784019, 46.977966>,  <35.368992, 32.664551, 46.798859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.475048, 32.784019, 46.977966>,  <35.651810, 32.983131, 47.276478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.475048, 32.784019, 46.977966> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647140, 0.399218, -0.649488,
		0.621230, -0.769961, 0.145716,
		-0.441908, -0.497780, -0.746279,
		35.342476, 32.634686, 46.754082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128418, 32.727459, 46.959686>,  <35.651810, 32.983131, 47.276478>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.128418, 32.727459, 46.959686> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.827957, 32.731514, 46.695667>,  <35.647678, 32.733948, 46.537254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.827957, 32.731514, 46.695667>,  <36.128418, 32.727459, 46.959686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.827957, 32.731514, 46.695667> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597960, 0.434044, -0.673832,
		0.279659, -0.900835, -0.332095,
		-0.751155, 0.010136, -0.660048,
		35.602612, 32.734554, 46.497654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.471230, 32.742603, 46.426197>,  <36.128418, 32.727459, 46.959686>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.471230, 32.742603, 46.426197> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.114235, 32.793839, 46.253197>,  <35.900040, 32.824581, 46.149395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.114235, 32.793839, 46.253197>,  <36.471230, 32.742603, 46.426197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.114235, 32.793839, 46.253197> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443593, 0.423113, -0.790064,
		0.081799, -0.896977, -0.434443,
		-0.892488, 0.128090, -0.432503,
		35.846489, 32.832264, 46.123447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.545406, 32.491238, 45.739880>,  <36.471230, 32.742603, 46.426197>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.545406, 32.491238, 45.739880> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.235645, 32.744095, 45.729290>,  <36.049789, 32.895809, 45.722939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.235645, 32.744095, 45.729290>,  <36.545406, 32.491238, 45.739880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.235645, 32.744095, 45.729290> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341851, 0.382844, -0.858236,
		-0.532390, -0.673670, -0.512573,
		-0.774403, 0.632139, -0.026472,
		36.003323, 32.933735, 45.721348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.177059, 32.442188, 45.051945>,  <36.545406, 32.491238, 45.739880>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.177059, 32.442188, 45.051945> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.067158, 32.799442, 45.194393>,  <36.001217, 33.013794, 45.279861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.067158, 32.799442, 45.194393>,  <36.177059, 32.442188, 45.051945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.067158, 32.799442, 45.194393> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135203, 0.402584, -0.905343,
		-0.951963, -0.200593, -0.231364,
		-0.274749, 0.893134, 0.356125,
		35.984734, 33.067383, 45.301231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.728951, 32.793072, 44.542824>,  <36.177059, 32.442188, 45.051945>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.728951, 32.793072, 44.542824> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.874466, 33.075291, 44.786091>,  <35.961773, 33.244621, 44.932053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.874466, 33.075291, 44.786091>,  <35.728951, 32.793072, 44.542824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.874466, 33.075291, 44.786091> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225756, 0.566654, -0.792425,
		-0.903712, 0.425569, 0.046859,
		0.363784, 0.705545, 0.608167,
		35.983601, 33.286953, 44.968540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.347054, 33.486725, 44.400700>,  <35.728951, 32.793072, 44.542824>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.347054, 33.486725, 44.400700> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.674847, 33.565731, 44.615898>,  <35.871521, 33.613136, 44.745018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.674847, 33.565731, 44.615898>,  <35.347054, 33.486725, 44.400700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.674847, 33.565731, 44.615898> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320775, 0.619834, -0.716177,
		-0.474924, 0.759468, 0.444584,
		0.819482, 0.197518, 0.537993,
		35.920692, 33.624985, 44.777294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.456203, 34.319672, 44.316425>,  <35.347054, 33.486725, 44.400700>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.456203, 34.319672, 44.316425> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.788197, 34.145325, 44.455647>,  <35.987392, 34.040714, 44.539181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.788197, 34.145325, 44.455647>,  <35.456203, 34.319672, 44.316425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.788197, 34.145325, 44.455647> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543511, 0.491714, -0.680304,
		0.125382, 0.753813, 0.645015,
		0.829985, -0.435870, 0.348054,
		36.037193, 34.014565, 44.560062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.944828, 34.857525, 44.261581>,  <35.456203, 34.319672, 44.316425>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.944828, 34.857525, 44.261581> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.175270, 34.532776, 44.299461>,  <36.313538, 34.337929, 44.322189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.175270, 34.532776, 44.299461>,  <35.944828, 34.857525, 44.261581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.175270, 34.532776, 44.299461> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653510, 0.387926, -0.649952,
		0.490941, 0.436328, 0.754052,
		0.576109, -0.811869, 0.094696,
		36.348103, 34.289215, 44.327869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.631020, 35.078667, 44.295681>,  <35.944828, 34.857525, 44.261581>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.631020, 35.078667, 44.295681> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.682213, 34.692715, 44.203926>,  <36.712929, 34.461143, 44.148872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.682213, 34.692715, 44.203926>,  <36.631020, 35.078667, 44.295681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.682213, 34.692715, 44.203926> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639224, 0.257094, -0.724772,
		0.758296, -0.053872, 0.649681,
		0.127984, -0.964884, -0.229390,
		36.720608, 34.403248, 44.135109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.257957, 35.063423, 44.069553>,  <36.631020, 35.078667, 44.295681>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.257957, 35.063423, 44.069553> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.142330, 34.705349, 43.933861>,  <37.072952, 34.490505, 43.852444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.142330, 34.705349, 43.933861>,  <37.257957, 35.063423, 44.069553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.142330, 34.705349, 43.933861> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614432, 0.098241, -0.782829,
		0.734105, -0.434728, 0.521633,
		-0.289072, -0.895187, -0.339230,
		37.055607, 34.436794, 43.832092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.453335, 29.405811, 36.685795> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.174503, 29.142111, 36.798553>,  <30.007204, 28.983891, 36.866207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.174503, 29.142111, 36.798553>,  <30.453335, 29.405811, 36.685795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.174503, 29.142111, 36.798553> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623322, 0.751504, 0.216131,
		-0.354330, -0.025050, -0.934785,
		-0.697080, -0.659253, 0.281895,
		29.965380, 28.944334, 36.883121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.787807, 29.487896, 36.314564>,  <30.453335, 29.405811, 36.685795>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.787807, 29.487896, 36.314564> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.684692, 29.299936, 36.652260>,  <29.622824, 29.187160, 36.854877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.684692, 29.299936, 36.652260>,  <29.787807, 29.487896, 36.314564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.684692, 29.299936, 36.652260> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779761, 0.617141, 0.105402,
		-0.570543, -0.631133, -0.525501,
		-0.257786, -0.469901, 0.844239,
		29.607357, 29.158966, 36.905533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.179276, 29.219330, 36.198673>,  <29.787807, 29.487896, 36.314564>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.179276, 29.219330, 36.198673> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.184629, 29.275801, 36.594631>,  <29.187841, 29.309683, 36.832207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.184629, 29.275801, 36.594631>,  <29.179276, 29.219330, 36.198673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.184629, 29.275801, 36.594631> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801085, 0.593974, -0.073880,
		-0.598401, -0.792000, 0.121046,
		0.013386, 0.141178, 0.989894,
		29.188644, 29.318153, 36.891598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.480124, 29.250477, 36.438366>,  <29.179276, 29.219330, 36.198673>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.480124, 29.250477, 36.438366> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.658325, 29.423641, 36.751827>,  <28.765245, 29.527540, 36.939903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.658325, 29.423641, 36.751827>,  <28.480124, 29.250477, 36.438366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.658325, 29.423641, 36.751827> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682051, 0.731126, -0.016150,
		-0.579942, -0.527298, 0.620986,
		0.445503, 0.432910, 0.783655,
		28.791977, 29.553514, 36.986923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.974836, 29.531488, 36.993084>,  <28.480124, 29.250477, 36.438366>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.974836, 29.531488, 36.993084> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.320292, 29.718489, 37.068527>,  <28.527565, 29.830688, 37.113792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.320292, 29.718489, 37.068527>,  <27.974836, 29.531488, 36.993084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.320292, 29.718489, 37.068527> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469143, 0.882275, -0.038669,
		-0.184484, -0.055089, 0.981290,
		0.863638, 0.467499, 0.188610,
		28.579384, 29.858738, 37.125111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.719603, 30.083174, 37.455246>,  <27.974836, 29.531488, 36.993084>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.719603, 30.083174, 37.455246> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.072332, 30.197908, 37.305523>,  <28.283970, 30.266748, 37.215687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.072332, 30.197908, 37.305523>,  <27.719603, 30.083174, 37.455246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.072332, 30.197908, 37.305523> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357261, 0.924450, -0.133253,
		0.307809, 0.251232, 0.917680,
		0.881826, 0.286835, -0.374309,
		28.336880, 30.283958, 37.193230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.728624, 30.710976, 37.580906>,  <27.719603, 30.083174, 37.455246>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.728624, 30.710976, 37.580906> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.029543, 30.708166, 37.317390>,  <28.210094, 30.706480, 37.159283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.029543, 30.708166, 37.317390>,  <27.728624, 30.710976, 37.580906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.029543, 30.708166, 37.317390> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200946, 0.949849, -0.239597,
		0.627433, 0.312629, 0.713156,
		0.752295, -0.007026, -0.658789,
		28.255232, 30.706059, 37.119755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.090841, 31.294136, 37.724003>,  <27.728624, 30.710976, 37.580906>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.090841, 31.294136, 37.724003> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.159737, 31.195124, 37.342625>,  <28.201075, 31.135715, 37.113796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.159737, 31.195124, 37.342625>,  <28.090841, 31.294136, 37.724003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.159737, 31.195124, 37.342625> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202914, 0.938239, -0.280239,
		0.963929, 0.241736, 0.111376,
		0.172241, -0.247530, -0.953447,
		28.211409, 31.120865, 37.056591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.632185, 31.793562, 37.495686>,  <28.090841, 31.294136, 37.724003>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.632185, 31.793562, 37.495686> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.453367, 31.665556, 37.161560>,  <28.346077, 31.588753, 36.961086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.453367, 31.665556, 37.161560>,  <28.632185, 31.793562, 37.495686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.453367, 31.665556, 37.161560> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266587, 0.939045, -0.217086,
		0.853864, 0.125635, -0.505106,
		-0.447043, -0.320017, -0.835309,
		28.319254, 31.569551, 36.910969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.864229, 32.178524, 37.002087>,  <28.632185, 31.793562, 37.495686>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.864229, 32.178524, 37.002087> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.537746, 32.046070, 36.812710>,  <28.341856, 31.966597, 36.699081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.537746, 32.046070, 36.812710>,  <28.864229, 32.178524, 37.002087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.537746, 32.046070, 36.812710> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170376, 0.920967, -0.350418,
		0.552064, -0.205351, -0.808119,
		-0.816209, -0.331137, -0.473445,
		28.292883, 31.946730, 36.670677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.905504, 32.378475, 36.235790>,  <28.864229, 32.178524, 37.002087>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.905504, 32.378475, 36.235790> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.520956, 32.295143, 36.307758>,  <28.290228, 32.245144, 36.350937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.520956, 32.295143, 36.307758>,  <28.905504, 32.378475, 36.235790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.520956, 32.295143, 36.307758> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266956, 0.865012, -0.424840,
		-0.067123, -0.456458, -0.887210,
		-0.961368, -0.208330, 0.179917,
		28.232546, 32.232643, 36.361732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.536259, 32.675549, 35.623314>,  <28.905504, 32.378475, 36.235790>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.536259, 32.675549, 35.623314> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.239559, 32.609959, 35.883442>,  <28.061539, 32.570606, 36.039520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.239559, 32.609959, 35.883442>,  <28.536259, 32.675549, 35.623314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.239559, 32.609959, 35.883442> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432230, 0.858299, -0.276587,
		-0.512820, -0.486248, -0.707516,
		-0.741750, -0.163971, 0.650324,
		28.017035, 32.560768, 36.078541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.886217, 32.556728, 35.254982>,  <28.536259, 32.675549, 35.623314>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.886217, 32.556728, 35.254982> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.828835, 32.722984, 35.614239>,  <27.794405, 32.822739, 35.829792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.828835, 32.722984, 35.614239>,  <27.886217, 32.556728, 35.254982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.828835, 32.722984, 35.614239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476046, 0.766660, -0.430828,
		-0.867641, -0.489364, 0.087880,
		-0.143458, 0.415638, 0.898145,
		27.785797, 32.847675, 35.883682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.353546, 32.963718, 35.189598>,  <27.886217, 32.556728, 35.254982>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.353546, 32.963718, 35.189598> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.483467, 33.084564, 35.548092>,  <27.561420, 33.157070, 35.763187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.483467, 33.084564, 35.548092>,  <27.353546, 32.963718, 35.189598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.483467, 33.084564, 35.548092> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312928, 0.928566, -0.199604,
		-0.892513, -0.215624, 0.396140,
		0.324802, 0.302113, 0.896232,
		27.580908, 33.175198, 35.816963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.801298, 33.477562, 35.470879>,  <27.353546, 32.963718, 35.189598>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.801298, 33.477562, 35.470879> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.147755, 33.545948, 35.658737>,  <27.355629, 33.586979, 35.771454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.147755, 33.545948, 35.658737>,  <26.801298, 33.477562, 35.470879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.147755, 33.545948, 35.658737> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169850, 0.984437, -0.045111,
		-0.470052, -0.040697, 0.881700,
		0.866142, 0.170961, 0.469649,
		27.407597, 33.597237, 35.799633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.611879, 34.036758, 35.896732>,  <26.801298, 33.477562, 35.470879>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.611879, 34.036758, 35.896732> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.011864, 34.034035, 35.894424>,  <27.251854, 34.032402, 35.893040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.011864, 34.034035, 35.894424>,  <26.611879, 34.036758, 35.896732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.011864, 34.034035, 35.894424> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007011, 0.999328, 0.035991,
		0.005521, -0.036030, 0.999336,
		0.999960, -0.006807, -0.005769,
		27.311852, 34.031994, 35.892693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.893068, 34.390648, 36.533844>,  <26.611879, 34.036758, 35.896732>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.893068, 34.390648, 36.533844> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.187916, 34.414307, 36.264576>,  <27.364824, 34.428501, 36.103016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.187916, 34.414307, 36.264576>,  <26.893068, 34.390648, 36.533844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.187916, 34.414307, 36.264576> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107391, 0.973250, 0.203104,
		0.667175, -0.222004, 0.711050,
		0.737119, 0.059145, -0.673169,
		27.409052, 34.432049, 36.062626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.490492, 34.815048, 36.851803>,  <26.893068, 34.390648, 36.533844>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.490492, 34.815048, 36.851803> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.554314, 34.811096, 36.456947>,  <27.592606, 34.808723, 36.220036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.554314, 34.811096, 36.456947>,  <27.490492, 34.815048, 36.851803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.554314, 34.811096, 36.456947> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124545, 0.992162, 0.010196,
		0.979301, -0.124570, 0.159534,
		0.159554, -0.009884, -0.987140,
		27.602180, 34.808132, 36.160805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.048210, 35.255955, 36.744064>,  <27.490492, 34.815048, 36.851803>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.048210, 35.255955, 36.744064> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.863459, 35.218704, 36.391247>,  <27.752607, 35.196354, 36.179558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.863459, 35.218704, 36.391247>,  <28.048210, 35.255955, 36.744064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.863459, 35.218704, 36.391247> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158822, 0.987083, -0.021047,
		0.872607, 0.130366, -0.470703,
		-0.461879, -0.093124, -0.882041,
		27.724895, 35.190765, 36.126633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.304014, 35.894451, 36.513580>,  <28.048210, 35.255955, 36.744064>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.304014, 35.894451, 36.513580> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.968561, 35.771763, 36.333530>,  <27.767288, 35.698151, 36.225498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.968561, 35.771763, 36.333530>,  <28.304014, 35.894451, 36.513580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.968561, 35.771763, 36.333530> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346629, 0.937979, 0.006664,
		0.420167, 0.161616, -0.892939,
		-0.838634, -0.306719, -0.450129,
		27.716970, 35.679749, 36.198490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.891079, 36.296440, 36.072712>,  <28.304014, 35.894451, 36.513580>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.891079, 36.296440, 36.072712> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.169561, 36.478050, 36.295120>,  <29.336651, 36.587017, 36.428566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.169561, 36.478050, 36.295120>,  <28.891079, 36.296440, 36.072712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.169561, 36.478050, 36.295120> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201526, -0.867043, 0.455657,
		0.688973, -0.205179, -0.695139,
		0.696207, 0.454024, 0.556020,
		29.378424, 36.614258, 36.461926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.570162, 36.060120, 35.949364>,  <28.891079, 36.296440, 36.072712>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.570162, 36.060120, 35.949364> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.580055, 36.203873, 36.322510>,  <29.585991, 36.290123, 36.546398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.580055, 36.203873, 36.322510>,  <29.570162, 36.060120, 35.949364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.580055, 36.203873, 36.322510> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439388, -0.842091, 0.312764,
		0.897957, 0.402153, -0.178737,
		0.024734, 0.359383, 0.932862,
		29.587475, 36.311687, 36.602367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.194136, 35.861702, 36.078236>,  <29.570162, 36.060120, 35.949364>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.194136, 35.861702, 36.078236> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.993681, 35.948437, 36.413342>,  <29.873407, 36.000477, 36.614403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.993681, 35.948437, 36.413342>,  <30.194136, 35.861702, 36.078236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.993681, 35.948437, 36.413342> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391033, -0.806884, 0.442753,
		0.771980, 0.549473, 0.319572,
		-0.501139, 0.216833, 0.837761,
		29.843340, 36.013485, 36.664669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.746880, 35.749180, 36.571297>,  <30.194136, 35.861702, 36.078236>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.746880, 35.749180, 36.571297> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.393639, 35.740898, 36.758785>,  <30.181694, 35.735928, 36.871277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.393639, 35.740898, 36.758785>,  <30.746880, 35.749180, 36.571297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.393639, 35.740898, 36.758785> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329393, -0.738787, 0.587958,
		0.334111, 0.673621, 0.659246,
		-0.883103, -0.020708, 0.468723,
		30.128708, 35.734684, 36.899403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.970755, 35.563091, 37.270054>,  <30.746880, 35.749180, 36.571297>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.970755, 35.563091, 37.270054> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.573141, 35.521591, 37.256580>,  <30.334574, 35.496693, 37.248497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.573141, 35.521591, 37.256580>,  <30.970755, 35.563091, 37.270054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.573141, 35.521591, 37.256580> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085690, -0.933787, 0.347418,
		-0.067501, 0.342459, 0.937105,
		-0.994033, -0.103751, -0.033686,
		30.274931, 35.490467, 37.246475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.754383, 35.475288, 37.884739>,  <30.970755, 35.563091, 37.270054>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.754383, 35.475288, 37.884739> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.464600, 35.315247, 37.660213>,  <30.290730, 35.219223, 37.525497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.464600, 35.315247, 37.660213>,  <30.754383, 35.475288, 37.884739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.464600, 35.315247, 37.660213> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023640, -0.828246, 0.559866,
		-0.688911, 0.392331, 0.609490,
		-0.724460, -0.400106, -0.561313,
		30.247261, 35.195213, 37.491821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.230837, 35.092350, 38.352509>,  <30.754383, 35.475288, 37.884739>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.230837, 35.092350, 38.352509> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.158657, 34.954967, 37.983841>,  <30.115349, 34.872540, 37.762642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.158657, 34.954967, 37.983841>,  <30.230837, 35.092350, 38.352509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.158657, 34.954967, 37.983841> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253760, -0.921587, 0.293741,
		-0.950286, -0.180878, 0.253455,
		-0.180450, -0.343455, -0.921670,
		30.104523, 34.851933, 37.707340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.907257, 34.499443, 38.440315>,  <30.230837, 35.092350, 38.352509>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.907257, 34.499443, 38.440315> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.025551, 34.467655, 38.059532>,  <30.096527, 34.448582, 37.831062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.025551, 34.467655, 38.059532>,  <29.907257, 34.499443, 38.440315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.025551, 34.467655, 38.059532> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340149, -0.922459, 0.182672,
		-0.892660, -0.377830, -0.245771,
		0.295733, -0.079465, -0.951960,
		30.114271, 34.443817, 37.773945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.789276, 33.823536, 38.238747>,  <29.907257, 34.499443, 38.440315>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.789276, 33.823536, 38.238747> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.046833, 33.941833, 37.956490>,  <30.201368, 34.012814, 37.787136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.046833, 33.941833, 37.956490>,  <29.789276, 33.823536, 38.238747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.046833, 33.941833, 37.956490> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415006, -0.909815, -0.002628,
		-0.642785, -0.291155, -0.708560,
		0.643893, 0.295745, -0.705646,
		30.240002, 34.030556, 37.744797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.822012, 33.294483, 37.837318>,  <29.789276, 33.823536, 38.238747>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.822012, 33.294483, 37.837318> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.158176, 33.495010, 37.754971>,  <30.359875, 33.615326, 37.705563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.158176, 33.495010, 37.754971>,  <29.822012, 33.294483, 37.837318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.158176, 33.495010, 37.754971> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476882, -0.864550, -0.158546,
		-0.257470, 0.035067, -0.965650,
		0.840412, 0.501322, -0.205872,
		30.410299, 33.645409, 37.693211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.964851, 33.088730, 37.187809>,  <29.822012, 33.294483, 37.837318>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.964851, 33.088730, 37.187809> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.297569, 33.224037, 37.363850>,  <30.497200, 33.305222, 37.469475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.297569, 33.224037, 37.363850>,  <29.964851, 33.088730, 37.187809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.297569, 33.224037, 37.363850> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376593, -0.926379, 0.000269,
		0.407796, 0.165517, -0.897946,
		0.831794, 0.338270, 0.440106,
		30.547108, 33.325520, 37.495880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.402121, 32.684532, 36.933708>,  <29.964851, 33.088730, 37.187809>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.402121, 32.684532, 36.933708> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.619535, 32.821301, 37.240341>,  <30.749985, 32.903362, 37.424320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.619535, 32.821301, 37.240341>,  <30.402121, 32.684532, 36.933708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.619535, 32.821301, 37.240341> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370842, -0.917127, 0.146131,
		0.753022, 0.204854, -0.625294,
		0.543539, 0.341925, 0.766585,
		30.782597, 32.923878, 37.470318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.074251, 32.422195, 36.813194>,  <30.402121, 32.684532, 36.933708>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.074251, 32.422195, 36.813194> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.084490, 32.531528, 37.197826>,  <31.090633, 32.597130, 37.428604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.084490, 32.531528, 37.197826>,  <31.074251, 32.422195, 36.813194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.084490, 32.531528, 37.197826> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512842, -0.829264, 0.222069,
		0.858101, 0.487454, -0.161403,
		0.025597, 0.273332, 0.961579,
		31.092169, 32.613529, 37.486301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.743223, 32.294647, 36.997108>,  <31.074251, 32.422195, 36.813194>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.743223, 32.294647, 36.997108> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.577812, 32.337780, 37.358742>,  <31.478565, 32.363659, 37.575722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.577812, 32.337780, 37.358742>,  <31.743223, 32.294647, 36.997108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.577812, 32.337780, 37.358742> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510891, -0.794431, 0.328436,
		0.753648, 0.597705, 0.273427,
		-0.413527, 0.107833, 0.904084,
		31.453754, 32.370129, 37.629967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.282433, 32.169304, 37.509171>,  <31.743223, 32.294647, 36.997108>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.282433, 32.169304, 37.509171> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.921059, 32.098099, 37.665176>,  <31.704233, 32.055378, 37.758778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.921059, 32.098099, 37.665176>,  <32.282433, 32.169304, 37.509171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.921059, 32.098099, 37.665176> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327289, -0.873972, 0.359243,
		0.276911, 0.452201, 0.847841,
		-0.903439, -0.178011, 0.390013,
		31.650026, 32.044697, 37.782181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.364197, 31.928755, 38.290371>,  <32.282433, 32.169304, 37.509171>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.364197, 31.928755, 38.290371> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.010761, 31.806225, 38.148705>,  <31.798700, 31.732706, 38.063705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.010761, 31.806225, 38.148705>,  <32.364197, 31.928755, 38.290371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.010761, 31.806225, 38.148705> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229905, -0.942699, 0.241788,
		-0.407935, 0.132218, 0.903386,
		-0.883591, -0.306327, -0.354162,
		31.745684, 31.714327, 38.042458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.119259, 31.427622, 38.744892>,  <32.364197, 31.928755, 38.290371>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.119259, 31.427622, 38.744892> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.896181, 31.334818, 38.426105>,  <31.762335, 31.279135, 38.234833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.896181, 31.334818, 38.426105>,  <32.119259, 31.427622, 38.744892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.896181, 31.334818, 38.426105> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175069, -0.971421, 0.160291,
		-0.811376, -0.050131, 0.582370,
		-0.557691, -0.232011, -0.796964,
		31.728874, 31.265215, 38.187016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.693361, 30.850529, 38.959530>,  <32.119259, 31.427622, 38.744892>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.693361, 30.850529, 38.959530> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.713379, 30.832285, 38.560448>,  <31.725389, 30.821339, 38.320999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.713379, 30.832285, 38.560448>,  <31.693361, 30.850529, 38.959530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.713379, 30.832285, 38.560448> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167904, -0.984355, 0.053419,
		-0.984533, -0.170192, -0.041597,
		0.050038, -0.045608, -0.997706,
		31.728392, 30.818604, 38.261135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.263397, 30.295902, 38.888443>,  <31.693361, 30.850529, 38.959530>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.263397, 30.295902, 38.888443> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.470245, 30.356979, 38.551571>,  <31.594355, 30.393625, 38.349445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.470245, 30.356979, 38.551571>,  <31.263397, 30.295902, 38.888443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.470245, 30.356979, 38.551571> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185830, -0.980517, -0.063667,
		-0.835495, -0.123579, -0.535421,
		0.517122, 0.152691, -0.842182,
		31.625381, 30.402786, 38.298916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.064936, 29.908302, 38.434677>,  <31.263397, 30.295902, 38.888443>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.064936, 29.908302, 38.434677> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.440205, 29.965288, 38.308475>,  <31.665365, 29.999479, 38.232754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.440205, 29.965288, 38.308475>,  <31.064936, 29.908302, 38.434677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.440205, 29.965288, 38.308475> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130153, -0.989684, -0.059876,
		-0.320775, 0.015110, -0.947035,
		0.938170, 0.142466, -0.315500,
		31.721655, 30.008028, 38.213825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.187586, 29.432207, 37.831940>,  <31.064936, 29.908302, 38.434677>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.187586, 29.432207, 37.831940> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.547867, 29.516386, 37.983963>,  <31.764036, 29.566893, 38.075176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.547867, 29.516386, 37.983963>,  <31.187586, 29.432207, 37.831940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.547867, 29.516386, 37.983963> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252390, -0.965540, -0.063499,
		0.353603, 0.153118, -0.922778,
		0.900702, 0.210447, 0.380063,
		31.818077, 29.579519, 38.097980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.663038, 29.138288, 37.391125>,  <31.187586, 29.432207, 37.831940>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.663038, 29.138288, 37.391125> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.871002, 29.193260, 37.728363>,  <31.995781, 29.226244, 37.930706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.871002, 29.193260, 37.728363>,  <31.663038, 29.138288, 37.391125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.871002, 29.193260, 37.728363> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377127, -0.922508, -0.082186,
		0.766466, 0.360683, -0.531448,
		0.519908, 0.137431, 0.843094,
		32.026974, 29.234489, 37.981293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.965790, 29.882383, 47.315338> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.630554, 29.693905, 47.205376>,  <36.429413, 29.580818, 47.139397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.630554, 29.693905, 47.205376>,  <36.965790, 29.882383, 47.315338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.630554, 29.693905, 47.205376> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161221, -0.267480, 0.949980,
		-0.521161, 0.840492, 0.148206,
		-0.838092, -0.471198, -0.274905,
		36.379128, 29.552546, 47.122906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.554405, 30.071556, 47.833946>,  <36.965790, 29.882383, 47.315338>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.554405, 30.071556, 47.833946> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.389286, 29.743977, 47.674488>,  <36.290215, 29.547428, 47.578815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.389286, 29.743977, 47.674488>,  <36.554405, 30.071556, 47.833946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.389286, 29.743977, 47.674488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050491, -0.416425, 0.907767,
		-0.909421, 0.394854, 0.130550,
		-0.412800, -0.818951, -0.398642,
		36.265446, 29.498291, 47.554897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.007744, 29.935646, 48.212139>,  <36.554405, 30.071556, 47.833946>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.007744, 29.935646, 48.212139> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.057396, 29.571108, 48.055145>,  <36.087189, 29.352385, 47.960949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.057396, 29.571108, 48.055145>,  <36.007744, 29.935646, 48.212139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.057396, 29.571108, 48.055145> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140875, -0.407719, 0.902175,
		-0.982215, -0.056696, -0.178996,
		0.124130, -0.911346, -0.392480,
		36.094635, 29.297705, 47.937401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.396942, 29.535397, 48.292538>,  <36.007744, 29.935646, 48.212139>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.396942, 29.535397, 48.292538> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.682980, 29.262224, 48.232876>,  <35.854603, 29.098322, 48.197079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.682980, 29.262224, 48.232876>,  <35.396942, 29.535397, 48.292538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.682980, 29.262224, 48.232876> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227119, -0.428783, 0.874392,
		-0.661103, -0.591397, -0.461727,
		0.715094, -0.682930, -0.149152,
		35.897507, 29.057344, 48.188129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.092117, 28.864956, 48.518185>,  <35.396942, 29.535397, 48.292538>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.092117, 28.864956, 48.518185> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.489086, 28.817015, 48.528988>,  <35.727268, 28.788250, 48.535469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.489086, 28.817015, 48.528988>,  <35.092117, 28.864956, 48.518185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.489086, 28.817015, 48.528988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073692, -0.404827, 0.911419,
		-0.098303, -0.906505, -0.410592,
		0.992424, -0.119852, 0.027007,
		35.786812, 28.781059, 48.537090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.173882, 28.173719, 48.739353>,  <35.092117, 28.864956, 48.518185>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.173882, 28.173719, 48.739353> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.533672, 28.324772, 48.827293>,  <35.749546, 28.415403, 48.880058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.533672, 28.324772, 48.827293>,  <35.173882, 28.173719, 48.739353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.533672, 28.324772, 48.827293> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009973, -0.485257, 0.874315,
		0.436851, -0.788620, -0.432712,
		0.899478, 0.377630, 0.219850,
		35.803516, 28.438061, 48.893250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561119, 27.599901, 48.984615>,  <35.173882, 28.173719, 48.739353>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.561119, 27.599901, 48.984615> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.768589, 27.914932, 49.117695>,  <35.893070, 28.103951, 49.197544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.768589, 27.914932, 49.117695>,  <35.561119, 27.599901, 48.984615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.768589, 27.914932, 49.117695> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125982, -0.455296, 0.881382,
		0.845636, -0.415240, -0.335374,
		0.518679, 0.787579, 0.332702,
		35.924194, 28.151207, 49.217506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.203796, 27.408785, 49.270161>,  <35.561119, 27.599901, 48.984615>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.203796, 27.408785, 49.270161> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.123158, 27.750702, 49.461445>,  <36.074776, 27.955853, 49.576214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.123158, 27.750702, 49.461445>,  <36.203796, 27.408785, 49.270161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.123158, 27.750702, 49.461445> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190501, -0.444694, 0.875190,
		0.960764, 0.267537, -0.073189,
		-0.201599, 0.854793, 0.478212,
		36.062679, 28.007139, 49.604908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.645603, 27.355700, 49.803600>,  <36.203796, 27.408785, 49.270161>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.645603, 27.355700, 49.803600> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.374290, 27.633776, 49.898800>,  <36.211502, 27.800621, 49.955921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.374290, 27.633776, 49.898800>,  <36.645603, 27.355700, 49.803600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.374290, 27.633776, 49.898800> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052076, -0.277608, 0.959282,
		0.732956, 0.663056, 0.152093,
		-0.678280, 0.695191, 0.238003,
		36.170807, 27.842333, 49.970200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.965500, 27.583429, 50.391560>,  <36.645603, 27.355700, 49.803600>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.965500, 27.583429, 50.391560> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.580151, 27.690676, 50.389210>,  <36.348942, 27.755024, 50.387798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.580151, 27.690676, 50.389210>,  <36.965500, 27.583429, 50.391560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.580151, 27.690676, 50.389210> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104899, -0.356575, 0.928359,
		0.246814, 0.894968, 0.371639,
		-0.963369, 0.268117, -0.005873,
		36.291142, 27.771111, 50.387447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.872540, 27.703983, 51.071342>,  <36.965500, 27.583429, 50.391560>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.872540, 27.703983, 51.071342> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.496517, 27.694094, 50.935287>,  <36.270905, 27.688160, 50.853657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.496517, 27.694094, 50.935287>,  <36.872540, 27.703983, 51.071342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.496517, 27.694094, 50.935287> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312164, -0.339208, 0.887407,
		-0.137316, 0.940386, 0.311155,
		-0.940052, -0.024724, -0.340133,
		36.214500, 27.686676, 50.833248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.440472, 28.053415, 51.579849>,  <36.872540, 27.703983, 51.071342>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.440472, 28.053415, 51.579849> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.177231, 27.816629, 51.393742>,  <36.019287, 27.674559, 51.282078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.177231, 27.816629, 51.393742>,  <36.440472, 28.053415, 51.579849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.177231, 27.816629, 51.393742> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343884, -0.313416, 0.885163,
		-0.669807, 0.742530, 0.002694,
		-0.658105, -0.591963, -0.465273,
		35.979801, 27.639040, 51.254158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.736855, 28.240561, 51.785957>,  <36.440472, 28.053415, 51.579849>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.736855, 28.240561, 51.785957> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.797882, 27.855282, 51.697433>,  <35.834499, 27.624115, 51.644321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.797882, 27.855282, 51.697433>,  <35.736855, 28.240561, 51.785957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.797882, 27.855282, 51.697433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228294, -0.252221, 0.940355,
		-0.961563, -0.092950, -0.258373,
		0.152573, -0.963195, -0.221306,
		35.843655, 27.566322, 51.631042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.226051, 27.861176, 52.194683>,  <35.736855, 28.240561, 51.785957>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.226051, 27.861176, 52.194683> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.508846, 27.594543, 52.100159>,  <35.678524, 27.434565, 52.043442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.508846, 27.594543, 52.100159>,  <35.226051, 27.861176, 52.194683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.508846, 27.594543, 52.100159> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137614, -0.457414, 0.878541,
		-0.693710, -0.588596, -0.415116,
		0.706986, -0.666579, -0.236314,
		35.720943, 27.394569, 52.029266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.736191, 28.394264, 51.992554>,  <35.226051, 27.861176, 52.194683>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.736191, 28.394264, 51.992554> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.632687, 28.760023, 52.117081>,  <34.570583, 28.979479, 52.191795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.632687, 28.760023, 52.117081>,  <34.736191, 28.394264, 51.992554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.632687, 28.760023, 52.117081> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156571, 0.278328, -0.947639,
		-0.953167, -0.293957, 0.071147,
		-0.258763, 0.914398, 0.311318,
		34.555058, 29.034342, 52.210476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.104023, 28.614492, 51.681477>,  <34.736191, 28.394264, 51.992554>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.104023, 28.614492, 51.681477> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.300694, 28.951080, 51.771084>,  <34.418697, 29.153034, 51.824848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.300694, 28.951080, 51.771084>,  <34.104023, 28.614492, 51.681477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.300694, 28.951080, 51.771084> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317791, 0.412913, -0.853529,
		-0.810719, 0.348469, 0.470431,
		0.491675, 0.841471, 0.224016,
		34.448196, 29.203522, 51.838287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.694752, 29.219393, 51.596649>,  <34.104023, 28.614492, 51.681477>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.694752, 29.219393, 51.596649> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.066513, 29.364798, 51.571144>,  <34.289570, 29.452040, 51.555840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.066513, 29.364798, 51.571144>,  <33.694752, 29.219393, 51.596649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.066513, 29.364798, 51.571144> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300604, 0.645381, -0.702226,
		-0.214114, 0.671820, 0.709093,
		0.929404, 0.363513, -0.063767,
		34.345333, 29.473852, 51.552013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.534367, 29.837038, 51.358883>,  <33.694752, 29.219393, 51.596649>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.534367, 29.837038, 51.358883> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.926266, 29.803133, 51.286316>,  <34.161404, 29.782789, 51.242775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.926266, 29.803133, 51.286316>,  <33.534367, 29.837038, 51.358883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.926266, 29.803133, 51.286316> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122799, 0.461295, -0.878708,
		0.158169, 0.883188, 0.441543,
		0.979746, -0.084764, -0.181417,
		34.220188, 29.777704, 51.231892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.834820, 30.521790, 51.425808>,  <33.534367, 29.837038, 51.358883>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.834820, 30.521790, 51.425808> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.057980, 30.299213, 51.179516>,  <34.191875, 30.165668, 51.031742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.057980, 30.299213, 51.179516>,  <33.834820, 30.521790, 51.425808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.057980, 30.299213, 51.179516> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092039, 0.778831, -0.620444,
		0.824788, 0.289475, 0.485725,
		0.557901, -0.556441, -0.615728,
		34.225349, 30.132280, 50.994797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.240967, 31.007710, 51.299892>,  <33.834820, 30.521790, 51.425808>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.240967, 31.007710, 51.299892> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.324928, 30.738794, 51.015930>,  <34.375305, 30.577446, 50.845554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.324928, 30.738794, 51.015930>,  <34.240967, 31.007710, 51.299892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.324928, 30.738794, 51.015930> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038045, 0.731150, -0.681155,
		0.976981, 0.115971, 0.179052,
		0.209908, -0.672288, -0.709907,
		34.387901, 30.537107, 50.802959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.641525, 31.390249, 50.797367>,  <34.240967, 31.007710, 51.299892>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.641525, 31.390249, 50.797367> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.523476, 31.064499, 50.597488>,  <34.452648, 30.869049, 50.477562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.523476, 31.064499, 50.597488>,  <34.641525, 31.390249, 50.797367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.523476, 31.064499, 50.597488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092978, 0.544986, -0.833274,
		0.950926, -0.199455, -0.236555,
		-0.295120, -0.814376, -0.499696,
		34.434940, 30.820187, 50.447578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.969345, 31.420715, 50.159981>,  <34.641525, 31.390249, 50.797367>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.969345, 31.420715, 50.159981> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.672653, 31.168028, 50.069859>,  <34.494637, 31.016415, 50.015785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.672653, 31.168028, 50.069859>,  <34.969345, 31.420715, 50.159981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.672653, 31.168028, 50.069859> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008986, 0.326542, -0.945140,
		0.670636, -0.703065, -0.236530,
		-0.741732, -0.631720, -0.225308,
		34.450134, 30.978512, 50.002266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.099648, 31.407461, 49.558582>,  <34.969345, 31.420715, 50.159981>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.099648, 31.407461, 49.558582> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.743237, 31.226761, 49.576416>,  <34.529388, 31.118341, 49.587116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.743237, 31.226761, 49.576416>,  <35.099648, 31.407461, 49.558582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.743237, 31.226761, 49.576416> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202167, 0.306966, -0.930000,
		0.406443, -0.837671, -0.364845,
		-0.891029, -0.451751, 0.044585,
		34.475929, 31.091236, 49.589790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.184814, 30.925726, 49.075909>,  <35.099648, 31.407461, 49.558582>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.184814, 30.925726, 49.075909> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.798824, 31.014166, 49.132381>,  <34.567230, 31.067230, 49.166264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.798824, 31.014166, 49.132381>,  <35.184814, 30.925726, 49.075909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.798824, 31.014166, 49.132381> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101475, 0.181676, -0.978109,
		-0.241911, -0.958179, -0.152877,
		-0.964978, 0.221102, 0.141180,
		34.509331, 31.080496, 49.174736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.947647, 30.708967, 48.450130>,  <35.184814, 30.925726, 49.075909>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.947647, 30.708967, 48.450130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.683353, 30.956114, 48.620625>,  <34.524780, 31.104403, 48.722923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.683353, 30.956114, 48.620625>,  <34.947647, 30.708967, 48.450130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.683353, 30.956114, 48.620625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124844, 0.469478, -0.874073,
		-0.740169, -0.630739, -0.233062,
		-0.660729, 0.617866, 0.426237,
		34.485134, 31.141474, 48.748497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.433895, 30.668547, 48.054520>,  <34.947647, 30.708967, 48.450130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.433895, 30.668547, 48.054520> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.350883, 31.005482, 48.253475>,  <34.301075, 31.207644, 48.372849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.350883, 31.005482, 48.253475>,  <34.433895, 30.668547, 48.054520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.350883, 31.005482, 48.253475> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006750, 0.507215, -0.861793,
		-0.978205, -0.182206, -0.099577,
		-0.207531, 0.842338, 0.497391,
		34.288624, 31.258183, 48.402691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.913372, 30.965687, 47.707405>,  <34.433895, 30.668547, 48.054520>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.913372, 30.965687, 47.707405> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.090172, 31.251713, 47.924042>,  <34.196251, 31.423328, 48.054024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.090172, 31.251713, 47.924042>,  <33.913372, 30.965687, 47.707405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.090172, 31.251713, 47.924042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000193, 0.603844, -0.797102,
		-0.897017, 0.352211, 0.267034,
		0.441995, 0.715066, 0.541591,
		34.222771, 31.466232, 48.086517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.498291, 31.610569, 47.554268>,  <33.913372, 30.965687, 47.707405>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.498291, 31.610569, 47.554268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.875393, 31.697248, 47.655663>,  <34.101654, 31.749256, 47.716499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.875393, 31.697248, 47.655663>,  <33.498291, 31.610569, 47.554268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.875393, 31.697248, 47.655663> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058760, 0.640273, -0.765897,
		-0.328265, 0.736949, 0.590888,
		0.942756, 0.216697, 0.253482,
		34.158218, 31.762257, 47.731709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.010532, 32.102932, 47.906841>,  <33.498291, 31.610569, 47.554268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.010532, 32.102932, 47.906841> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.751427, 32.407631, 47.902020>,  <32.595963, 32.590450, 47.899128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.751427, 32.407631, 47.902020>,  <33.010532, 32.102932, 47.906841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.751427, 32.407631, 47.902020> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420741, -0.344508, 0.839221,
		0.635120, 0.548688, 0.543658,
		-0.647765, 0.761745, -0.012051,
		32.557098, 32.636154, 47.898403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.071304, 32.424786, 48.595795>,  <33.010532, 32.102932, 47.906841>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.071304, 32.424786, 48.595795> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.708763, 32.480091, 48.436092>,  <32.491238, 32.513275, 48.340271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.708763, 32.480091, 48.436092>,  <33.071304, 32.424786, 48.595795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.708763, 32.480091, 48.436092> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419041, -0.415202, 0.807473,
		-0.054127, 0.899161, 0.434258,
		-0.906353, 0.138266, -0.399259,
		32.436859, 32.521572, 48.316315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.729641, 32.631630, 49.113586>,  <33.071304, 32.424786, 48.595795>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.729641, 32.631630, 49.113586> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.427731, 32.521805, 48.875282>,  <32.246586, 32.455910, 48.732300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.427731, 32.521805, 48.875282>,  <32.729641, 32.631630, 49.113586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.427731, 32.521805, 48.875282> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476936, -0.393863, 0.785751,
		-0.450389, 0.877203, 0.166326,
		-0.754773, -0.274566, -0.595761,
		32.201298, 32.439434, 48.696552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.226875, 32.592529, 49.560574>,  <32.729641, 32.631630, 49.113586>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.226875, 32.592529, 49.560574> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.071579, 32.389969, 49.252594>,  <31.978401, 32.268433, 49.067806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.071579, 32.389969, 49.252594>,  <32.226875, 32.592529, 49.560574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.071579, 32.389969, 49.252594> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703837, -0.376386, 0.602451,
		-0.594883, 0.775815, -0.210298,
		-0.388237, -0.506403, -0.769953,
		31.955109, 32.238049, 49.021606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.612005, 32.623703, 49.662128>,  <32.226875, 32.592529, 49.560574>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.612005, 32.623703, 49.662128> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.672468, 32.297367, 49.438858>,  <31.708746, 32.101566, 49.304897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.672468, 32.297367, 49.438858>,  <31.612005, 32.623703, 49.662128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.672468, 32.297367, 49.438858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517512, -0.546408, 0.658498,
		-0.842219, 0.189323, -0.504801,
		0.151158, -0.815840, -0.558172,
		31.717815, 32.052616, 49.271408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.053326, 32.254936, 49.715118>,  <31.612005, 32.623703, 49.662128>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.053326, 32.254936, 49.715118> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.304754, 31.964014, 49.604904>,  <31.455612, 31.789461, 49.538776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.304754, 31.964014, 49.604904>,  <31.053326, 32.254936, 49.715118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.304754, 31.964014, 49.604904> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278703, -0.541385, 0.793239,
		-0.726101, -0.421813, -0.543001,
		0.628571, -0.727307, -0.275540,
		31.493326, 31.745821, 49.522243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.627092, 31.736282, 49.819504>,  <31.053326, 32.254936, 49.715118>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.627092, 31.736282, 49.819504> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.997805, 31.586403, 49.809086>,  <31.220232, 31.496475, 49.802834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.997805, 31.586403, 49.809086>,  <30.627092, 31.736282, 49.819504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.997805, 31.586403, 49.809086> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203608, -0.559463, 0.803458,
		-0.315625, -0.739327, -0.594791,
		0.926782, -0.374696, -0.026047,
		31.275839, 31.473993, 49.801273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.366907, 31.363001, 49.274521>,  <30.627092, 31.736282, 49.819504>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.366907, 31.363001, 49.274521> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.995716, 31.252478, 49.174511>,  <29.773001, 31.186163, 49.114506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.995716, 31.252478, 49.174511>,  <30.366907, 31.363001, 49.274521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.995716, 31.252478, 49.174511> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116817, 0.421432, -0.899305,
		0.353850, -0.863742, -0.358802,
		-0.927979, -0.276305, -0.250024,
		29.717323, 31.169586, 49.099503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.467138, 31.054306, 48.516495>,  <30.366907, 31.363001, 49.274521>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.467138, 31.054306, 48.516495> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.086342, 31.163609, 48.571697>,  <29.857864, 31.229191, 48.604820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.086342, 31.163609, 48.571697>,  <30.467138, 31.054306, 48.516495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.086342, 31.163609, 48.571697> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034345, 0.352626, -0.935134,
		-0.304196, -0.894978, -0.326312,
		-0.951990, 0.273257, 0.138005,
		29.800745, 31.245586, 48.613098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.098663, 30.802427, 47.859123>,  <30.467138, 31.054306, 48.516495>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.098663, 30.802427, 47.859123> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.855267, 31.066183, 48.035732>,  <29.709229, 31.224436, 48.141697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.855267, 31.066183, 48.035732>,  <30.098663, 30.802427, 47.859123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.855267, 31.066183, 48.035732> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132404, 0.464222, -0.875767,
		-0.782436, -0.591357, -0.195169,
		-0.608492, 0.659390, 0.441522,
		29.672718, 31.264000, 48.168190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.616661, 30.901508, 47.370392>,  <30.098663, 30.802427, 47.859123>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.616661, 30.901508, 47.370392> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.588037, 31.214874, 47.617340>,  <29.570864, 31.402893, 47.765507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.588037, 31.214874, 47.617340>,  <29.616661, 30.901508, 47.370392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.588037, 31.214874, 47.617340> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094186, 0.610880, -0.786101,
		-0.992980, -0.114398, 0.030074,
		-0.071557, 0.783415, 0.617366,
		29.566570, 31.449900, 47.802551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.093966, 31.314499, 47.062687>,  <29.616661, 30.901508, 47.370392>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.093966, 31.314499, 47.062687> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.315966, 31.548906, 47.298843>,  <29.449165, 31.689550, 47.440536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.315966, 31.548906, 47.298843>,  <29.093966, 31.314499, 47.062687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.315966, 31.548906, 47.298843> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016178, 0.717200, -0.696679,
		-0.831694, 0.377104, 0.407525,
		0.554998, 0.586017, 0.590391,
		29.482466, 31.724710, 47.475960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.788567, 32.006771, 46.938702>,  <29.093966, 31.314499, 47.062687>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.788567, 32.006771, 46.938702> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.138399, 32.054996, 47.126560>,  <29.348299, 32.083931, 47.239277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.138399, 32.054996, 47.126560>,  <28.788567, 32.006771, 46.938702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.138399, 32.054996, 47.126560> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221739, 0.761929, -0.608520,
		-0.431208, 0.636340, 0.639634,
		0.874581, 0.120567, 0.469651,
		29.400774, 32.091167, 47.267456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.759037, 32.706703, 46.903698>,  <28.788567, 32.006771, 46.938702>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.759037, 32.706703, 46.903698> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.136578, 32.584621, 46.954285>,  <29.363102, 32.511372, 46.984638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.136578, 32.584621, 46.954285>,  <28.759037, 32.706703, 46.903698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.136578, 32.584621, 46.954285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306473, 0.665922, -0.680164,
		0.123374, 0.680732, 0.722069,
		0.943850, -0.305209, 0.126468,
		29.419733, 32.493057, 46.992226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<32.740986, 25.748156, 50.321552> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.124130, 25.855297, 50.363029>,  <33.354019, 25.919582, 50.387917>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.124130, 25.855297, 50.363029>,  <32.740986, 25.748156, 50.321552>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.124130, 25.855297, 50.363029> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021157, 0.425826, -0.904557,
		-0.286441, 0.864249, 0.413551,
		0.957864, 0.267852, 0.103689,
		33.411491, 25.935654, 50.394135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.812340, 26.529707, 50.066959>,  <32.740986, 25.748156, 50.321552>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.812340, 26.529707, 50.066959> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.184032, 26.382244, 50.076988>,  <33.407047, 26.293766, 50.083004>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.184032, 26.382244, 50.076988>,  <32.812340, 26.529707, 50.066959>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.184032, 26.382244, 50.076988> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263882, 0.614575, -0.743414,
		0.258656, 0.697416, 0.668362,
		0.929227, -0.368657, 0.025072,
		33.462799, 26.271646, 50.084511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.285759, 27.040724, 50.043385>,  <32.812340, 26.529707, 50.066959>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.285759, 27.040724, 50.043385> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.472961, 26.718813, 49.897343>,  <33.585285, 26.525667, 49.809719>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.472961, 26.718813, 49.897343>,  <33.285759, 27.040724, 50.043385>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.472961, 26.718813, 49.897343> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420349, 0.566138, -0.709080,
		0.777351, 0.178383, 0.603245,
		0.468008, -0.804777, -0.365105,
		33.613365, 26.477379, 49.787811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.738125, 27.347605, 49.742203>,  <33.285759, 27.040724, 50.043385>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.738125, 27.347605, 49.742203> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.797806, 26.981926, 49.591480>,  <33.833614, 26.762518, 49.501045>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.797806, 26.981926, 49.591480>,  <33.738125, 27.347605, 49.742203>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.797806, 26.981926, 49.591480> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251816, 0.403635, -0.879584,
		0.956205, 0.036348, 0.290431,
		0.149199, -0.914198, -0.376805,
		33.842564, 26.707666, 49.478439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.268661, 27.415640, 49.283134>,  <33.738125, 27.347605, 49.742203>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.268661, 27.415640, 49.283134> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.098713, 27.068289, 49.180836>,  <33.996746, 26.859879, 49.119457>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.098713, 27.068289, 49.180836>,  <34.268661, 27.415640, 49.283134>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.098713, 27.068289, 49.180836> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168622, 0.201647, -0.964834,
		0.889412, -0.453052, 0.060754,
		-0.424869, -0.868379, -0.255742,
		33.971252, 26.807775, 49.104115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.733597, 27.065256, 48.827148>,  <34.268661, 27.415640, 49.283134>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.733597, 27.065256, 48.827148> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.383377, 26.890320, 48.745029>,  <34.173244, 26.785358, 48.695759>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.383377, 26.890320, 48.745029>,  <34.733597, 27.065256, 48.827148>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.383377, 26.890320, 48.745029> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107074, 0.238709, -0.965170,
		0.471115, -0.867035, -0.162173,
		-0.875549, -0.437342, -0.205297,
		34.120712, 26.759117, 48.683441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.797428, 26.595331, 48.242588>,  <34.733597, 27.065256, 48.827148>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.797428, 26.595331, 48.242588> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.403725, 26.665937, 48.246296>,  <34.167503, 26.708302, 48.248520>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.403725, 26.665937, 48.246296>,  <34.797428, 26.595331, 48.242588>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.403725, 26.665937, 48.246296> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019683, 0.161572, -0.986665,
		-0.175659, -0.970946, -0.162502,
		-0.984254, 0.176515, 0.009271,
		34.108448, 26.718891, 48.249077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.566479, 26.195335, 47.744873>,  <34.797428, 26.595331, 48.242588>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.566479, 26.195335, 47.744873> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.266434, 26.453756, 47.801357>,  <34.086407, 26.608809, 47.835247>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.266434, 26.453756, 47.801357>,  <34.566479, 26.195335, 47.744873>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.266434, 26.453756, 47.801357> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036989, 0.172209, -0.984366,
		-0.660271, -0.743611, -0.105279,
		-0.750115, 0.646054, 0.141210,
		34.041397, 26.647573, 47.843719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.033337, 26.030239, 47.315937>,  <34.566479, 26.195335, 47.744873>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.033337, 26.030239, 47.315937> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.001602, 26.418102, 47.408428>,  <33.982559, 26.650820, 47.463924>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.001602, 26.418102, 47.408428>,  <34.033337, 26.030239, 47.315937>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.001602, 26.418102, 47.408428> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074788, 0.225520, -0.971364,
		-0.994038, -0.094360, 0.054626,
		-0.079339, 0.969658, 0.231232,
		33.977802, 26.709000, 47.477798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.438335, 26.288555, 46.890064>,  <34.033337, 26.030239, 47.315937>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.438335, 26.288555, 46.890064> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.656643, 26.605410, 46.999359>,  <33.787628, 26.795523, 47.064938>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.656643, 26.605410, 46.999359>,  <33.438335, 26.288555, 46.890064>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.656643, 26.605410, 46.999359> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091237, 0.380320, -0.920344,
		-0.832956, 0.477363, 0.279838,
		0.545766, 0.792138, 0.273236,
		33.820374, 26.843050, 47.081329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.077141, 26.883886, 46.612183>,  <33.438335, 26.288555, 46.890064>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.077141, 26.883886, 46.612183> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.441563, 27.033083, 46.682438>,  <33.660217, 27.122601, 46.724590>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.441563, 27.033083, 46.682438>,  <33.077141, 26.883886, 46.612183>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.441563, 27.033083, 46.682438> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022706, 0.470778, -0.881959,
		-0.411650, 0.799529, 0.437376,
		0.911059, 0.372989, 0.175642,
		33.714882, 27.144979, 46.735130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.110111, 27.583307, 46.357430>,  <33.077141, 26.883886, 46.612183>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.110111, 27.583307, 46.357430> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.486927, 27.449348, 46.365509>,  <33.713017, 27.368973, 46.370358>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.486927, 27.449348, 46.365509>,  <33.110111, 27.583307, 46.357430>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.486927, 27.449348, 46.365509> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153531, 0.376775, -0.913493,
		0.298317, 0.863646, 0.406353,
		0.942038, -0.334898, 0.020198,
		33.769539, 27.348879, 46.371567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.940498, 28.272911, 46.598961>,  <33.110111, 27.583307, 46.357430>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.940498, 28.272911, 46.598961> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.645149, 28.542337, 46.585571>,  <32.467941, 28.703993, 46.577538>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.645149, 28.542337, 46.585571>,  <32.940498, 28.272911, 46.598961>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.645149, 28.542337, 46.585571> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414803, -0.414451, 0.810043,
		0.531740, 0.611999, 0.585415,
		-0.738371, 0.673564, -0.033479,
		32.423637, 28.744406, 46.575527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.883087, 28.624111, 47.309757>,  <32.940498, 28.272911, 46.598961>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.883087, 28.624111, 47.309757> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.530346, 28.648005, 47.122665>,  <32.318703, 28.662340, 47.010410>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.530346, 28.648005, 47.122665>,  <32.883087, 28.624111, 47.309757>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.530346, 28.648005, 47.122665> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450141, -0.402029, 0.797337,
		-0.140414, 0.913676, 0.381417,
		-0.881849, 0.059734, -0.467733,
		32.265793, 28.665924, 46.982346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.472813, 28.961044, 47.726871>,  <32.883087, 28.624111, 47.309757>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.472813, 28.961044, 47.726871> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.200722, 28.753109, 47.520161>,  <32.037468, 28.628347, 47.396133>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.200722, 28.753109, 47.520161>,  <32.472813, 28.961044, 47.726871>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.200722, 28.753109, 47.520161> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443037, -0.270088, 0.854852,
		-0.583961, 0.810444, -0.046588,
		-0.680226, -0.519840, -0.516777,
		31.996655, 28.597157, 47.365128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.872850, 29.108671, 47.981606>,  <32.472813, 28.961044, 47.726871>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.872850, 29.108671, 47.981606> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.779684, 28.780249, 47.773140>,  <31.723783, 28.583195, 47.648060>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.779684, 28.780249, 47.773140>,  <31.872850, 29.108671, 47.981606>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.779684, 28.780249, 47.773140> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765655, -0.175596, 0.618819,
		-0.599601, 0.543167, -0.587748,
		-0.232916, -0.821058, -0.521166,
		31.709810, 28.533932, 47.616791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.161528, 29.031052, 47.989712>,  <31.872850, 29.108671, 47.981606>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.161528, 29.031052, 47.989712> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.280514, 28.661839, 47.892124>,  <31.351906, 28.440310, 47.833572>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.280514, 28.661839, 47.892124>,  <31.161528, 29.031052, 47.989712>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.280514, 28.661839, 47.892124> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760216, -0.383583, 0.524343,
		-0.577570, 0.029496, -0.815808,
		0.297464, -0.923035, -0.243970,
		31.369753, 28.384928, 47.818932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.536596, 28.658279, 47.911438>,  <31.161528, 29.031052, 47.989712>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.536596, 28.658279, 47.911438> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.801926, 28.365971, 47.975910>,  <30.961123, 28.190586, 48.014591>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.801926, 28.365971, 47.975910>,  <30.536596, 28.658279, 47.911438>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.801926, 28.365971, 47.975910> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696149, -0.523561, 0.491182,
		-0.274556, -0.438015, -0.856015,
		0.663322, -0.730771, 0.161177,
		31.000923, 28.146740, 48.024261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.299681, 28.079304, 47.606480>,  <30.536596, 28.658279, 47.911438>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.299681, 28.079304, 47.606480> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.534063, 27.934607, 47.896526>,  <30.674692, 27.847788, 48.070553>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.534063, 27.934607, 47.896526>,  <30.299681, 28.079304, 47.606480>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.534063, 27.934607, 47.896526> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792951, -0.440355, 0.421089,
		0.166982, -0.821723, -0.544875,
		0.585956, -0.361745, 0.725118,
		30.709850, 27.826082, 48.114063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.007933, 27.445902, 47.773849>,  <30.299681, 28.079304, 47.606480>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.007933, 27.445902, 47.773849> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.250080, 27.493477, 48.088654>,  <30.395369, 27.522022, 48.277534>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.250080, 27.493477, 48.088654>,  <30.007933, 27.445902, 47.773849>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.250080, 27.493477, 48.088654> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732998, -0.302082, 0.609475,
		0.310231, -0.945833, -0.095689,
		0.605368, 0.118938, 0.787009,
		30.431690, 27.529158, 48.324757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.749224, 26.872139, 48.218822>,  <30.007933, 27.445902, 47.773849>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.749224, 26.872139, 48.218822> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.944950, 27.161753, 48.413284>,  <30.062386, 27.335520, 48.529961>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.944950, 27.161753, 48.413284>,  <29.749224, 26.872139, 48.218822>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.944950, 27.161753, 48.413284> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620643, -0.102519, 0.777362,
		0.612676, -0.682103, 0.399202,
		0.489316, 0.724034, 0.486154,
		30.091745, 27.378963, 48.559132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.855970, 26.567404, 48.906853>,  <29.749224, 26.872139, 48.218822>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.855970, 26.567404, 48.906853> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.882019, 26.966427, 48.916924>,  <29.897648, 27.205841, 48.922966>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.882019, 26.966427, 48.916924>,  <29.855970, 26.567404, 48.906853>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.882019, 26.966427, 48.916924> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576513, 0.017018, 0.816911,
		0.814489, -0.067711, 0.576214,
		0.065120, 0.997560, 0.025175,
		29.901556, 27.265696, 48.924477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.191761, 26.784809, 49.566532>,  <29.855970, 26.567404, 48.906853>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.191761, 26.784809, 49.566532> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.964127, 27.067631, 49.398621>,  <29.827545, 27.237324, 49.297874>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.964127, 27.067631, 49.398621>,  <30.191761, 26.784809, 49.566532>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.964127, 27.067631, 49.398621> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625475, -0.040824, 0.779176,
		0.533781, 0.705981, 0.465476,
		-0.569086, 0.707053, -0.419782,
		29.793402, 27.279747, 49.272686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.967678, 27.169048, 50.176704>,  <30.191761, 26.784809, 49.566532>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.967678, 27.169048, 50.176704> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.721663, 27.298561, 49.889126>,  <29.574053, 27.376268, 49.716579>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.721663, 27.298561, 49.889126>,  <29.967678, 27.169048, 50.176704>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.721663, 27.298561, 49.889126> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717363, 0.148694, 0.680647,
		0.327285, 0.934374, 0.140817,
		-0.615040, 0.323782, -0.718951,
		29.537151, 27.395697, 49.673439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.722239, 27.781332, 50.357059>,  <29.967678, 27.169048, 50.176704>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.722239, 27.781332, 50.357059> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.447603, 27.618217, 50.116291>,  <29.282822, 27.520350, 49.971832>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.447603, 27.618217, 50.116291>,  <29.722239, 27.781332, 50.357059>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.447603, 27.618217, 50.116291> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718329, 0.252655, 0.648204,
		-0.112251, 0.877426, -0.466394,
		-0.686588, -0.407786, -0.601920,
		29.241627, 27.495882, 49.935715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.138109, 28.230597, 50.316132>,  <29.722239, 27.781332, 50.357059>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.138109, 28.230597, 50.316132> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.961643, 27.900679, 50.174664>,  <28.855762, 27.702728, 50.089783>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.961643, 27.900679, 50.174664>,  <29.138109, 28.230597, 50.316132>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.961643, 27.900679, 50.174664> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810596, 0.197117, 0.551434,
		-0.385106, 0.529959, -0.755537,
		-0.441167, -0.824796, -0.353672,
		28.829292, 27.653240, 50.068562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.391870, 28.377327, 50.280609>,  <29.138109, 28.230597, 50.316132>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.391870, 28.377327, 50.280609> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.421095, 27.978418, 50.284786>,  <28.438629, 27.739073, 50.287292>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.421095, 27.978418, 50.284786>,  <28.391870, 28.377327, 50.280609>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.421095, 27.978418, 50.284786> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832775, -0.055242, 0.550848,
		-0.548769, -0.048939, -0.834540,
		0.073060, -0.997273, 0.010440,
		28.443012, 27.679237, 50.287918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.356619, 29.109625, 49.978352>,  <28.391870, 28.377327, 50.280609>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.356619, 29.109625, 49.978352> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.596083, 29.250647, 50.266048>,  <28.739761, 29.335260, 50.438667>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.596083, 29.250647, 50.266048>,  <28.356619, 29.109625, 49.978352>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.596083, 29.250647, 50.266048> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341913, 0.699542, -0.627484,
		-0.724364, 0.621568, 0.298244,
		0.598658, 0.352554, 0.719245,
		28.775681, 29.356413, 50.481823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.111660, 29.748718, 50.204056>,  <28.356619, 29.109625, 49.978352>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.111660, 29.748718, 50.204056> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.504133, 29.714802, 50.273445>,  <28.739616, 29.694452, 50.315079>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.504133, 29.714802, 50.273445>,  <28.111660, 29.748718, 50.204056>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.504133, 29.714802, 50.273445> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177407, 0.750559, -0.636543,
		-0.076231, 0.655340, 0.751477,
		0.981181, -0.084793, 0.173478,
		28.798487, 29.689363, 50.325489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.277784, 30.409477, 50.191803>,  <28.111660, 29.748718, 50.204056>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.277784, 30.409477, 50.191803> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.644846, 30.250996, 50.204060>,  <28.865082, 30.155907, 50.211414>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.644846, 30.250996, 50.204060>,  <28.277784, 30.409477, 50.191803>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.644846, 30.250996, 50.204060> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306490, 0.656564, -0.689193,
		0.252941, 0.641831, 0.723929,
		0.917652, -0.396202, 0.030643,
		28.920141, 30.132135, 50.213253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.729540, 30.925219, 50.286060>,  <28.277784, 30.409477, 50.191803>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.729540, 30.925219, 50.286060> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.964497, 30.650942, 50.114109>,  <29.105471, 30.486376, 50.010941>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.964497, 30.650942, 50.114109>,  <28.729540, 30.925219, 50.286060>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.964497, 30.650942, 50.114109> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387117, 0.704517, -0.594808,
		0.710710, 0.182974, 0.679273,
		0.587394, -0.685694, -0.429875,
		29.140715, 30.445234, 49.985146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.398039, 31.236269, 50.329220>,  <28.729540, 30.925219, 50.286060>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.398039, 31.236269, 50.329220> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.374544, 30.959501, 50.041386>,  <29.360447, 30.793442, 49.868687>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.374544, 30.959501, 50.041386>,  <29.398039, 31.236269, 50.329220>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.374544, 30.959501, 50.041386> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277023, 0.681221, -0.677641,
		0.959066, -0.239143, 0.151665,
		-0.058736, -0.691917, -0.719584,
		29.356924, 30.751926, 49.825512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.939241, 31.422169, 49.919449>,  <29.398039, 31.236269, 50.329220>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.939241, 31.422169, 49.919449> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.745384, 31.173948, 49.672859>,  <29.629070, 31.025017, 49.524906>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.745384, 31.173948, 49.672859>,  <29.939241, 31.422169, 49.919449>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.745384, 31.173948, 49.672859> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230979, 0.588965, -0.774447,
		0.843664, -0.517724, -0.142105,
		-0.484644, -0.620550, -0.616472,
		29.599991, 30.987783, 49.487919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.542278, 30.907269, 49.985821>,  <29.939241, 31.422169, 49.919449>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.542278, 30.907269, 49.985821> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.925522, 31.015770, 50.022583>,  <31.155468, 31.080872, 50.044640>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.925522, 31.015770, 50.022583>,  <30.542278, 30.907269, 49.985821>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.925522, 31.015770, 50.022583> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042917, -0.453252, 0.890348,
		0.283166, -0.849108, -0.445907,
		0.958110, 0.271253, 0.091904,
		31.212955, 31.097145, 50.050156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.913664, 30.258238, 50.257256>,  <30.542278, 30.907269, 49.985821>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.913664, 30.258238, 50.257256> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.140537, 30.580000, 50.327946>,  <31.276661, 30.773058, 50.370361>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.140537, 30.580000, 50.327946>,  <30.913664, 30.258238, 50.257256>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.140537, 30.580000, 50.327946> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210909, -0.349287, 0.912971,
		0.796127, -0.480551, -0.367766,
		0.567185, 0.804406, 0.176724,
		31.310694, 30.821321, 50.380962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.429510, 29.975372, 50.648220>,  <30.913664, 30.258238, 50.257256>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.429510, 29.975372, 50.648220> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.416248, 30.370270, 50.710518>,  <31.408291, 30.607208, 50.747894>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.416248, 30.370270, 50.710518>,  <31.429510, 29.975372, 50.648220>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.416248, 30.370270, 50.710518> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205472, -0.145767, 0.967746,
		0.978101, 0.064084, -0.198018,
		-0.033153, 0.987241, 0.155742,
		31.406303, 30.666443, 50.757240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.129684, 30.293093, 50.821011>,  <31.429510, 29.975372, 50.648220>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.129684, 30.293093, 50.821011> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.864355, 30.554047, 50.967651>,  <31.705158, 30.710619, 51.055637>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.864355, 30.554047, 50.967651>,  <32.129684, 30.293093, 50.821011>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.864355, 30.554047, 50.967651> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537816, 0.074954, 0.839723,
		0.520344, 0.754173, -0.400582,
		-0.663322, 0.652384, 0.366604,
		31.665358, 30.749762, 51.077633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.603436, 30.807539, 51.141605>,  <32.129684, 30.293093, 50.821011>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.603436, 30.807539, 51.141605> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.252972, 30.885832, 51.317806>,  <32.042694, 30.932808, 51.423527>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.252972, 30.885832, 51.317806>,  <32.603436, 30.807539, 51.141605>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.252972, 30.885832, 51.317806> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463576, 0.091740, 0.881295,
		0.132087, 0.976357, -0.171116,
		-0.876157, 0.195732, 0.440498,
		31.990124, 30.944551, 51.449955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.675938, 31.370159, 51.684692>,  <32.603436, 30.807539, 51.141605>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.675938, 31.370159, 51.684692> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.330803, 31.196392, 51.788074>,  <32.123722, 31.092133, 51.850105>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.330803, 31.196392, 51.788074>,  <32.675938, 31.370159, 51.684692>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.330803, 31.196392, 51.788074> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301282, -0.031400, 0.953018,
		-0.405892, 0.900164, 0.157975,
		-0.862833, -0.434417, 0.258458,
		32.071953, 31.066067, 51.865612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.488651, 31.785654, 52.244759>,  <32.675938, 31.370159, 51.684692>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.488651, 31.785654, 52.244759> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.293503, 31.436655, 52.255543>,  <32.176414, 31.227255, 52.262012>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.293503, 31.436655, 52.255543>,  <32.488651, 31.785654, 52.244759>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.293503, 31.436655, 52.255543> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312046, -0.145475, 0.938864,
		-0.815234, 0.466460, 0.343232,
		-0.487874, -0.872498, 0.026961,
		32.147141, 31.174906, 52.263630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.390057, 31.787251, 52.907986>,  <32.488651, 31.785654, 52.244759>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.390057, 31.787251, 52.907986> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.309135, 31.404955, 52.822533>,  <32.260582, 31.175577, 52.771259>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.309135, 31.404955, 52.822533>,  <32.390057, 31.787251, 52.907986>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.309135, 31.404955, 52.822533> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373128, -0.276915, 0.885491,
		-0.905456, 0.099421, 0.412633,
		-0.202301, -0.955737, -0.213637,
		32.248444, 31.118235, 52.758442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.980291, 31.563442, 53.348217>,  <32.390057, 31.787251, 52.907986>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.980291, 31.563442, 53.348217> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.186256, 31.244049, 53.223454>,  <32.309837, 31.052414, 53.148594>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.186256, 31.244049, 53.223454>,  <31.980291, 31.563442, 53.348217>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.186256, 31.244049, 53.223454> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478357, -0.034300, 0.877495,
		-0.711363, -0.601040, 0.364298,
		0.514915, -0.798483, -0.311911,
		32.340733, 31.004505, 53.129879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.634880, 36.361923, 38.717281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.920578, 36.093624, 38.797230>,  <36.091995, 35.932644, 38.845200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.920578, 36.093624, 38.797230>,  <35.634880, 36.361923, 38.717281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.920578, 36.093624, 38.797230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518094, -0.314697, 0.795326,
		-0.470568, -0.671609, -0.572283,
		0.714244, -0.670751, 0.199871,
		36.134850, 35.892399, 38.857189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.239910, 35.730110, 38.851955>,  <35.634880, 36.361923, 38.717281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.239910, 35.730110, 38.851955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.596233, 35.682240, 39.027287>,  <35.810028, 35.653519, 39.132484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.596233, 35.682240, 39.027287>,  <35.239910, 35.730110, 38.851955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.596233, 35.682240, 39.027287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444235, -0.432049, 0.784849,
		0.095452, -0.893874, -0.438039,
		0.890811, -0.119677, 0.438330,
		35.863476, 35.646336, 39.158787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.252880, 35.037434, 38.973473>,  <35.239910, 35.730110, 38.851955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.252880, 35.037434, 38.973473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.490246, 35.219444, 39.239048>,  <35.632668, 35.328651, 39.398392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.490246, 35.219444, 39.239048>,  <35.252880, 35.037434, 38.973473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.490246, 35.219444, 39.239048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486690, -0.454148, 0.746245,
		0.641084, -0.765966, -0.048044,
		0.593417, 0.455023, 0.663935,
		35.668270, 35.355949, 39.438229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.482220, 34.503052, 39.539116>,  <35.252880, 35.037434, 38.973473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.482220, 34.503052, 39.539116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.504364, 34.875538, 39.683212>,  <35.517651, 35.099030, 39.769669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.504364, 34.875538, 39.683212>,  <35.482220, 34.503052, 39.539116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.504364, 34.875538, 39.683212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503590, -0.285499, 0.815406,
		0.862167, -0.226557, 0.453145,
		0.055363, 0.931215, 0.360240,
		35.520973, 35.154903, 39.791283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.652779, 34.349018, 40.147102>,  <35.482220, 34.503052, 39.539116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.652779, 34.349018, 40.147102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.569000, 34.738987, 40.177216>,  <35.518734, 34.972969, 40.195282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.569000, 34.738987, 40.177216>,  <35.652779, 34.349018, 40.147102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.569000, 34.738987, 40.177216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333585, -0.143613, 0.931717,
		0.919159, 0.170031, 0.355297,
		-0.209446, 0.974918, 0.075283,
		35.506168, 35.031464, 40.199799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.812309, 34.491768, 40.818840>,  <35.652779, 34.349018, 40.147102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.812309, 34.491768, 40.818840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.569733, 34.795433, 40.724266>,  <35.424187, 34.977631, 40.667522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.569733, 34.795433, 40.724266>,  <35.812309, 34.491768, 40.818840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.569733, 34.795433, 40.724266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309248, 0.048751, 0.949731,
		0.732524, 0.649077, 0.205204,
		-0.606444, 0.759159, -0.236437,
		35.387798, 35.023182, 40.653336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.992367, 35.013149, 41.282814>,  <35.812309, 34.491768, 40.818840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.992367, 35.013149, 41.282814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.622730, 35.080704, 41.145683>,  <35.400948, 35.121235, 41.063404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.622730, 35.080704, 41.145683>,  <35.992367, 35.013149, 41.282814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.622730, 35.080704, 41.145683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358857, -0.074931, 0.930380,
		0.131437, 0.982784, 0.129848,
		-0.924092, 0.168883, -0.342831,
		35.345501, 35.131371, 41.042835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.741486, 35.509766, 41.747456>,  <35.992367, 35.013149, 41.282814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.741486, 35.509766, 41.747456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.414349, 35.370872, 41.563908>,  <35.218067, 35.287537, 41.453781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.414349, 35.370872, 41.563908>,  <35.741486, 35.509766, 41.747456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.414349, 35.370872, 41.563908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505155, 0.051338, 0.861500,
		-0.275585, 0.936372, -0.217393,
		-0.817845, -0.347234, -0.458866,
		35.168995, 35.266701, 41.426247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.174099, 36.069683, 41.720200>,  <35.741486, 35.509766, 41.747456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.174099, 36.069683, 41.720200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.024681, 35.698715, 41.712639>,  <34.935028, 35.476135, 41.708103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.024681, 35.698715, 41.712639>,  <35.174099, 36.069683, 41.720200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.024681, 35.698715, 41.712639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459467, 0.167292, 0.872298,
		-0.805824, 0.334528, -0.488609,
		-0.373548, -0.927418, -0.018897,
		34.912617, 35.420490, 41.706970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.522594, 36.226189, 42.078865>,  <35.174099, 36.069683, 41.720200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.522594, 36.226189, 42.078865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.556778, 35.827927, 42.064045>,  <34.577290, 35.588970, 42.055153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.556778, 35.827927, 42.064045>,  <34.522594, 36.226189, 42.078865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.556778, 35.827927, 42.064045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614810, -0.081959, 0.784405,
		-0.784031, -0.044254, -0.619142,
		0.085457, -0.995653, -0.037051,
		34.582417, 35.529232, 42.052929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.920395, 36.004135, 42.227440>,  <34.522594, 36.226189, 42.078865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.920395, 36.004135, 42.227440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.104591, 35.649776, 42.249821>,  <34.215111, 35.437160, 42.263248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.104591, 35.649776, 42.249821>,  <33.920395, 36.004135, 42.227440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.104591, 35.649776, 42.249821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755559, -0.358099, 0.548539,
		-0.465915, -0.294871, -0.834251,
		0.460492, -0.885899, 0.055949,
		34.242741, 35.384007, 42.266605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.375084, 35.397739, 42.182671>,  <33.920395, 36.004135, 42.227440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.375084, 35.397739, 42.182671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.710388, 35.288967, 42.371716>,  <33.911572, 35.223705, 42.485142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.710388, 35.288967, 42.371716>,  <33.375084, 35.397739, 42.182671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.710388, 35.288967, 42.371716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545238, -0.426512, 0.721667,
		0.005335, -0.862636, -0.505796,
		0.838265, -0.271929, 0.472618,
		33.961868, 35.207390, 42.513500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.792248, 34.910065, 42.120209>,  <33.375084, 35.397739, 42.182671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.792248, 34.910065, 42.120209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.395954, 34.862595, 42.093811>,  <32.158176, 34.834110, 42.077972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.395954, 34.862595, 42.093811>,  <32.792248, 34.910065, 42.120209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.395954, 34.862595, 42.093811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001508, 0.476336, -0.879262,
		0.135783, -0.871217, -0.471745,
		-0.990737, -0.118677, -0.065993,
		32.098732, 34.826992, 42.074013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.614136, 34.671951, 41.345276>,  <32.792248, 34.910065, 42.120209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.614136, 34.671951, 41.345276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.305275, 34.845001, 41.531445>,  <32.119957, 34.948830, 41.643147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.305275, 34.845001, 41.531445>,  <32.614136, 34.671951, 41.345276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.305275, 34.845001, 41.531445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324784, 0.360844, -0.874247,
		-0.546164, -0.826213, -0.138118,
		-0.772153, 0.432623, 0.465420,
		32.073627, 34.974789, 41.671070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.115177, 34.527386, 40.903595>,  <32.614136, 34.671951, 41.345276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.115177, 34.527386, 40.903595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.968664, 34.818363, 41.135685>,  <31.880756, 34.992950, 41.274937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.968664, 34.818363, 41.135685>,  <32.115177, 34.527386, 40.903595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.968664, 34.818363, 41.135685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468137, 0.394832, -0.790541,
		-0.804168, -0.561184, 0.195926,
		-0.366281, 0.727448, 0.580222,
		31.858780, 35.036598, 41.309753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.356846, 34.595318, 40.721710>,  <32.115177, 34.527386, 40.903595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.356846, 34.595318, 40.721710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.498398, 34.932026, 40.884781>,  <31.583328, 35.134048, 40.982624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.498398, 34.932026, 40.884781>,  <31.356846, 34.595318, 40.721710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.498398, 34.932026, 40.884781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429411, 0.533453, -0.728721,
		-0.830888, 0.082818, 0.550241,
		0.353879, 0.841766, 0.407677,
		31.604561, 35.184555, 41.007084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.867708, 34.995827, 40.596428>,  <31.356846, 34.595318, 40.721710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.867708, 34.995827, 40.596428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.167437, 35.248798, 40.674969>,  <31.347275, 35.400581, 40.722095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.167437, 35.248798, 40.674969>,  <30.867708, 34.995827, 40.596428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.167437, 35.248798, 40.674969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196660, 0.495662, -0.845957,
		-0.632330, 0.595279, 0.495783,
		0.749322, 0.632425, 0.196354,
		31.392233, 35.438526, 40.733875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.577347, 35.615608, 40.395878>,  <30.867708, 34.995827, 40.596428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.577347, 35.615608, 40.395878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.971138, 35.684956, 40.406792>,  <31.207413, 35.726562, 40.413342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.971138, 35.684956, 40.406792>,  <30.577347, 35.615608, 40.395878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.971138, 35.684956, 40.406792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066486, 0.512308, -0.856224,
		-0.162423, 0.841121, 0.515883,
		0.984479, 0.173369, 0.027288,
		31.266481, 35.736965, 40.414978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.618965, 36.365841, 40.186939>,  <30.577347, 35.615608, 40.395878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.618965, 36.365841, 40.186939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.961973, 36.165855, 40.138439>,  <31.167778, 36.045864, 40.109337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.961973, 36.165855, 40.138439>,  <30.618965, 36.365841, 40.186939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.961973, 36.165855, 40.138439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140700, 0.454627, -0.879499,
		0.494839, 0.737126, 0.460195,
		0.857519, -0.499959, -0.121253,
		31.219229, 36.015869, 40.102062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.064301, 36.893837, 40.177322>,  <30.618965, 36.365841, 40.186939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.064301, 36.893837, 40.177322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.220242, 36.576309, 39.990616>,  <31.313807, 36.385792, 39.878593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.220242, 36.576309, 39.990616>,  <31.064301, 36.893837, 40.177322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.220242, 36.576309, 39.990616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078987, 0.533826, -0.841897,
		0.917483, 0.291347, 0.270815,
		0.389853, -0.793817, -0.466764,
		31.337198, 36.338165, 39.850586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.622240, 37.158192, 39.965851>,  <31.064301, 36.893837, 40.177322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.622240, 37.158192, 39.965851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.589066, 36.822750, 39.750496>,  <31.569160, 36.621483, 39.621284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.589066, 36.822750, 39.750496>,  <31.622240, 37.158192, 39.965851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.589066, 36.822750, 39.750496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120782, 0.527806, -0.840733,
		0.989208, -0.134754, 0.057514,
		-0.082936, -0.838607, -0.538386,
		31.564184, 36.571167, 39.588982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.026745, 37.327805, 39.368439>,  <31.622240, 37.158192, 39.965851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.026745, 37.327805, 39.368439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.810572, 37.012978, 39.249466>,  <31.680868, 36.824081, 39.178082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.810572, 37.012978, 39.249466>,  <32.026745, 37.327805, 39.368439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.810572, 37.012978, 39.249466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153262, 0.439669, -0.884987,
		0.827312, -0.432690, -0.358237,
		-0.540431, -0.787065, -0.297428,
		31.648441, 36.776859, 39.160236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.254913, 37.172432, 38.719063>,  <32.026745, 37.327805, 39.368439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.254913, 37.172432, 38.719063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.876610, 37.047287, 38.754082>,  <31.649628, 36.972202, 38.775093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.876610, 37.047287, 38.754082>,  <32.254913, 37.172432, 38.719063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.876610, 37.047287, 38.754082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196934, 0.337764, -0.920398,
		0.258383, -0.887714, -0.381054,
		-0.945756, -0.312858, 0.087548,
		31.592882, 36.953430, 38.780346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.598808, 36.508492, 38.565723>,  <32.254913, 37.172432, 38.719063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.598808, 36.508492, 38.565723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.694794, 36.804222, 38.817375>,  <32.752384, 36.981663, 38.968369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.694794, 36.804222, 38.817375>,  <32.598808, 36.508492, 38.565723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.694794, 36.804222, 38.817375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574773, 0.630473, -0.521670,
		-0.782338, -0.236426, 0.576238,
		0.239966, 0.739329, 0.629134,
		32.766785, 37.026020, 39.006115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.204239, 36.582603, 38.129292>,  <32.598808, 36.508492, 38.565723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.204239, 36.582603, 38.129292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.287102, 36.204964, 38.231869>,  <33.336819, 35.978378, 38.293415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.287102, 36.204964, 38.231869>,  <33.204239, 36.582603, 38.129292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.287102, 36.204964, 38.231869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041832, -0.270434, -0.961829,
		0.977413, 0.188520, -0.095515,
		0.207154, -0.944100, 0.256440,
		33.349247, 35.921734, 38.308800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.959473, 36.262440, 37.852573>,  <33.204239, 36.582603, 38.129292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.959473, 36.262440, 37.852573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.705982, 35.956577, 37.899387>,  <33.553886, 35.773060, 37.927475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.705982, 35.956577, 37.899387>,  <33.959473, 36.262440, 37.852573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.705982, 35.956577, 37.899387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096885, -0.228559, -0.968697,
		0.767465, -0.602551, 0.218927,
		-0.633727, -0.764652, 0.117033,
		33.515865, 35.727180, 37.934498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.216080, 35.595985, 37.649460>,  <33.959473, 36.262440, 37.852573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.216080, 35.595985, 37.649460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.824017, 35.549458, 37.585247>,  <33.588779, 35.521542, 37.546719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.824017, 35.549458, 37.585247>,  <34.216080, 35.595985, 37.649460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.824017, 35.549458, 37.585247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187377, -0.279212, -0.941770,
		0.064726, -0.953158, 0.295466,
		-0.980153, -0.116321, -0.160528,
		33.529972, 35.514561, 37.537090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.826897, 35.008224, 38.064606>,  <34.216080, 35.595985, 37.649460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.826897, 35.008224, 38.064606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.659893, 34.708344, 37.859222>,  <33.559692, 34.528416, 37.735992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.659893, 34.708344, 37.859222>,  <33.826897, 35.008224, 38.064606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.659893, 34.708344, 37.859222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163989, -0.493619, 0.854077,
		-0.893754, 0.440783, 0.083146,
		-0.417506, -0.749700, -0.513457,
		33.534641, 34.483433, 37.705185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.128963, 34.919704, 38.431553>,  <33.826897, 35.008224, 38.064606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.128963, 34.919704, 38.431553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.274899, 34.603710, 38.234447>,  <33.362461, 34.414112, 38.116184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.274899, 34.603710, 38.234447>,  <33.128963, 34.919704, 38.431553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.274899, 34.603710, 38.234447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190034, -0.581280, 0.791202,
		-0.911471, -0.195021, -0.362199,
		0.364840, -0.789987, -0.492759,
		33.384350, 34.366714, 38.086620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.561974, 34.363274, 38.552914>,  <33.128963, 34.919704, 38.431553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.561974, 34.363274, 38.552914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.942959, 34.260746, 38.487057>,  <33.171551, 34.199230, 38.447540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.942959, 34.260746, 38.487057>,  <32.561974, 34.363274, 38.552914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.942959, 34.260746, 38.487057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000493, -0.539147, 0.842211,
		-0.304644, -0.802259, -0.513393,
		0.952466, -0.256321, -0.164644,
		33.228699, 34.183849, 38.437664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.772270, 33.591537, 38.527649>,  <32.561974, 34.363274, 38.552914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.772270, 33.591537, 38.527649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.105747, 33.788063, 38.628490>,  <33.305836, 33.905979, 38.688995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.105747, 33.788063, 38.628490>,  <32.772270, 33.591537, 38.527649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.105747, 33.788063, 38.628490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110334, -0.595525, 0.795724,
		0.541089, -0.635576, -0.550696,
		0.833696, 0.491318, 0.252106,
		33.355858, 33.935459, 38.704121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.171711, 33.054806, 38.745335>,  <32.772270, 33.591537, 38.527649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.171711, 33.054806, 38.745335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.325314, 33.387680, 38.905338>,  <33.417477, 33.587406, 39.001339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.325314, 33.387680, 38.905338>,  <33.171711, 33.054806, 38.745335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.325314, 33.387680, 38.905338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204531, -0.499127, 0.842044,
		0.900392, -0.241537, -0.361876,
		0.384007, 0.832185, 0.400009,
		33.440517, 33.637337, 39.025341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.774181, 32.801674, 39.153564>,  <33.171711, 33.054806, 38.745335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.774181, 32.801674, 39.153564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.700050, 33.166676, 39.299438>,  <33.655571, 33.385677, 39.386963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.700050, 33.166676, 39.299438>,  <33.774181, 32.801674, 39.153564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.700050, 33.166676, 39.299438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063643, -0.381479, 0.922184,
		0.980614, 0.147696, 0.128772,
		-0.185327, 0.912502, 0.364684,
		33.644451, 33.440426, 39.408844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.321793, 32.929668, 39.596188>,  <33.774181, 32.801674, 39.153564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.321793, 32.929668, 39.596188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.022903, 33.166939, 39.716053>,  <33.843571, 33.309303, 39.787971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.022903, 33.166939, 39.716053>,  <34.321793, 32.929668, 39.596188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.022903, 33.166939, 39.716053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091915, -0.354337, 0.930590,
		0.658190, 0.722899, 0.210246,
		-0.747220, 0.593180, 0.299666,
		33.798737, 33.344894, 39.805954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.529415, 33.236458, 40.253090>,  <34.321793, 32.929668, 39.596188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.529415, 33.236458, 40.253090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.130314, 33.238632, 40.226353>,  <33.890854, 33.239937, 40.210312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.130314, 33.238632, 40.226353>,  <34.529415, 33.236458, 40.253090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.130314, 33.238632, 40.226353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065105, -0.317450, 0.946038,
		-0.016078, 0.948260, 0.317089,
		-0.997749, 0.005434, -0.066840,
		33.830990, 33.240261, 40.206299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.270424, 33.391068, 40.959499>,  <34.529415, 33.236458, 40.253090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.270424, 33.391068, 40.959499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.938175, 33.267895, 40.773922>,  <33.738827, 33.193993, 40.662575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.938175, 33.267895, 40.773922>,  <34.270424, 33.391068, 40.959499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.938175, 33.267895, 40.773922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306793, -0.442242, 0.842793,
		-0.464695, 0.842379, 0.272867,
		-0.830624, -0.307928, -0.463944,
		33.688988, 33.175518, 40.634739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.717682, 33.471439, 41.372017>,  <34.270424, 33.391068, 40.959499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.717682, 33.471439, 41.372017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.563675, 33.202705, 41.118908>,  <33.471272, 33.041466, 40.967045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.563675, 33.202705, 41.118908>,  <33.717682, 33.471439, 41.372017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.563675, 33.202705, 41.118908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405999, -0.492423, 0.769861,
		-0.828812, 0.553311, -0.083175,
		-0.385015, -0.671838, -0.632769,
		33.448170, 33.001152, 40.929077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.067558, 33.253860, 41.692692>,  <33.717682, 33.471439, 41.372017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.067558, 33.253860, 41.692692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.115009, 32.976559, 41.408348>,  <33.143478, 32.810177, 41.237743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.115009, 32.976559, 41.408348>,  <33.067558, 33.253860, 41.692692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.115009, 32.976559, 41.408348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518044, -0.653966, 0.551324,
		-0.847088, 0.302857, -0.436714,
		0.118624, -0.693257, -0.710860,
		33.150597, 32.768581, 41.195091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.384567, 32.861782, 41.615635>,  <33.067558, 33.253860, 41.692692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.384567, 32.861782, 41.615635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.676407, 32.648285, 41.444614>,  <32.851513, 32.520187, 41.342003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.676407, 32.648285, 41.444614>,  <32.384567, 32.861782, 41.615635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.676407, 32.648285, 41.444614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400170, -0.840190, 0.365985,
		-0.554566, -0.095931, -0.826592,
		0.729603, -0.533740, -0.427551,
		32.895287, 32.488163, 41.316349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.052406, 32.135906, 41.400524>,  <32.384567, 32.861782, 41.615635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.052406, 32.135906, 41.400524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.445995, 32.075703, 41.438786>,  <32.682148, 32.039581, 41.461742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.445995, 32.075703, 41.438786>,  <32.052406, 32.135906, 41.400524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.445995, 32.075703, 41.438786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177067, -0.760645, 0.624553,
		-0.021244, -0.631478, -0.775102,
		0.983969, -0.150513, 0.095655,
		32.741188, 32.030548, 41.467484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.082199, 31.439035, 41.371071>,  <32.052406, 32.135906, 41.400524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.082199, 31.439035, 41.371071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.419659, 31.571468, 41.540138>,  <32.622135, 31.650928, 41.641579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.419659, 31.571468, 41.540138>,  <32.082199, 31.439035, 41.371071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.419659, 31.571468, 41.540138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099933, -0.676644, 0.729498,
		0.527518, -0.657676, -0.537762,
		0.843646, 0.331084, 0.422665,
		32.672752, 31.670794, 41.666939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.444973, 30.848022, 41.623016>,  <32.082199, 31.439035, 41.371071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.444973, 30.848022, 41.623016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.627289, 31.138563, 41.828796>,  <32.736679, 31.312887, 41.952267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.627289, 31.138563, 41.828796>,  <32.444973, 30.848022, 41.623016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.627289, 31.138563, 41.828796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084132, -0.540238, 0.837296,
		0.886100, -0.424916, -0.185128,
		0.455794, 0.726353, 0.514454,
		32.764027, 31.356468, 41.983131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.756378, 30.522083, 42.063602>,  <32.444973, 30.848022, 41.623016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.756378, 30.522083, 42.063602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.785446, 30.880516, 42.238766>,  <32.802887, 31.095575, 42.343864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.785446, 30.880516, 42.238766>,  <32.756378, 30.522083, 42.063602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.785446, 30.880516, 42.238766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026832, -0.437150, 0.898989,
		0.996995, -0.077080, -0.007724,
		0.072670, 0.896080, 0.437904,
		32.807247, 31.149340, 42.370136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.426708, 30.579733, 42.481205>,  <32.756378, 30.522083, 42.063602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.426708, 30.579733, 42.481205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.153572, 30.825613, 42.639126>,  <32.989689, 30.973141, 42.733879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.153572, 30.825613, 42.639126>,  <33.426708, 30.579733, 42.481205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.153572, 30.825613, 42.639126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102828, -0.454161, 0.884965,
		0.723291, 0.644890, 0.246913,
		-0.682844, 0.614698, 0.394804,
		32.948719, 31.010023, 42.757568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.771217, 30.738768, 43.068829>,  <33.426708, 30.579733, 42.481205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.771217, 30.738768, 43.068829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.393223, 30.849709, 43.138203>,  <33.166428, 30.916273, 43.179829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.393223, 30.849709, 43.138203>,  <33.771217, 30.738768, 43.068829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.393223, 30.849709, 43.138203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067697, -0.352900, 0.933209,
		0.320034, 0.893609, 0.314709,
		-0.944984, 0.277353, 0.173435,
		33.109726, 30.932915, 43.190231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.786945, 30.881372, 43.786633>,  <33.771217, 30.738768, 43.068829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.786945, 30.881372, 43.786633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.394653, 30.850683, 43.714767>,  <33.159279, 30.832270, 43.671650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.394653, 30.850683, 43.714767>,  <33.786945, 30.881372, 43.786633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.394653, 30.850683, 43.714767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166179, -0.155847, 0.973702,
		-0.102705, 0.984797, 0.140094,
		-0.980733, -0.076723, -0.179659,
		33.100433, 30.827665, 43.660870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.473122, 31.155132, 44.364868>,  <33.786945, 30.881372, 43.786633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.473122, 31.155132, 44.364868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.181522, 30.933739, 44.203766>,  <33.006561, 30.800901, 44.107105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.181522, 30.933739, 44.203766>,  <33.473122, 31.155132, 44.364868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.181522, 30.933739, 44.203766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206455, -0.383193, 0.900299,
		-0.652635, 0.739470, 0.165079,
		-0.729002, -0.553486, -0.402753,
		32.962822, 30.767693, 44.082939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.798279, 31.289930, 44.685150>,  <33.473122, 31.155132, 44.364868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.798279, 31.289930, 44.685150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.792603, 30.922834, 44.526379>,  <32.789196, 30.702578, 44.431114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.792603, 30.922834, 44.526379>,  <32.798279, 31.289930, 44.685150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.792603, 30.922834, 44.526379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323693, -0.371376, 0.870232,
		-0.946056, 0.140832, -0.291796,
		-0.014190, -0.917740, -0.396929,
		32.788345, 30.647512, 44.407299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.281490, 30.978981, 45.088661>,  <32.798279, 31.289930, 44.685150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.281490, 30.978981, 45.088661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.448868, 30.662741, 44.909840>,  <32.549294, 30.472996, 44.802547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.448868, 30.662741, 44.909840>,  <32.281490, 30.978981, 45.088661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.448868, 30.662741, 44.909840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244011, -0.571978, 0.783134,
		-0.874850, -0.218613, -0.432257,
		0.418445, -0.790601, -0.447051,
		32.574402, 30.425560, 44.775723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.768152, 30.440523, 45.110863>,  <32.281490, 30.978981, 45.088661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.768152, 30.440523, 45.110863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.116650, 30.253382, 45.051468>,  <32.325748, 30.141098, 45.015831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.116650, 30.253382, 45.051468>,  <31.768152, 30.440523, 45.110863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.116650, 30.253382, 45.051468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230905, -0.657590, 0.717118,
		-0.433146, -0.590499, -0.680951,
		0.871245, -0.467852, -0.148484,
		32.378021, 30.113026, 45.006924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.571314, 29.695665, 44.959343>,  <31.768152, 30.440523, 45.110863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.571314, 29.695665, 44.959343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.949957, 29.729820, 45.083691>,  <32.177143, 29.750313, 45.158298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.949957, 29.729820, 45.083691>,  <31.571314, 29.695665, 44.959343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.949957, 29.729820, 45.083691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160208, -0.712200, 0.683450,
		0.279760, -0.696764, -0.660496,
		0.946608, 0.085385, 0.310872,
		32.233940, 29.755436, 45.176952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.835661, 28.999254, 45.072521>,  <31.571314, 29.695665, 44.959343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.835661, 28.999254, 45.072521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.084126, 29.220182, 45.294907>,  <32.233204, 29.352739, 45.428337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.084126, 29.220182, 45.294907>,  <31.835661, 28.999254, 45.072521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.084126, 29.220182, 45.294907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002701, -0.710932, 0.703256,
		0.783676, -0.435335, -0.443097,
		0.621164, 0.552321, 0.555965,
		32.270473, 29.385880, 45.461697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.248753, 28.536297, 45.320034>,  <31.835661, 28.999254, 45.072521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.248753, 28.536297, 45.320034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.292961, 28.848679, 45.565926>,  <32.319485, 29.036108, 45.713463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.292961, 28.848679, 45.565926>,  <32.248753, 28.536297, 45.320034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.292961, 28.848679, 45.565926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061260, -0.611994, 0.788486,
		0.991984, -0.124804, -0.019797,
		0.110522, 0.780953, 0.614733,
		32.326118, 29.082964, 45.750347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.790928, 28.399628, 45.898975>,  <32.248753, 28.536297, 45.320034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.790928, 28.399628, 45.898975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.561195, 28.688053, 46.054001>,  <32.423355, 28.861109, 46.147018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.561195, 28.688053, 46.054001>,  <32.790928, 28.399628, 45.898975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.561195, 28.688053, 46.054001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028088, -0.490517, 0.870979,
		0.818141, 0.489344, 0.301972,
		-0.574331, 0.721066, 0.387568,
		32.388897, 28.904373, 46.170273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.504215, 28.147978, 46.085205>,  <32.790928, 28.399628, 45.898975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.504215, 28.147978, 46.085205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.764694, 27.848892, 46.033264>,  <33.920982, 27.669441, 46.002098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.764694, 27.848892, 46.033264>,  <33.504215, 28.147978, 46.085205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.764694, 27.848892, 46.033264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233441, 0.360164, -0.903209,
		0.722111, 0.557857, 0.409086,
		0.651200, -0.747715, -0.129851,
		33.960052, 27.624578, 45.994308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.172737, 28.440363, 45.803185>,  <33.504215, 28.147978, 46.085205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.172737, 28.440363, 45.803185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.121941, 28.051193, 45.725937>,  <34.091461, 27.817692, 45.679588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.121941, 28.051193, 45.725937>,  <34.172737, 28.440363, 45.803185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.121941, 28.051193, 45.725937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264812, 0.154371, -0.951863,
		0.955901, -0.172022, 0.238037,
		-0.126996, -0.972922, -0.193117,
		34.083843, 27.759317, 45.668003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.726078, 28.271067, 45.309616>,  <34.172737, 28.440363, 45.803185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.726078, 28.271067, 45.309616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.505409, 27.943264, 45.247566>,  <34.373009, 27.746582, 45.210335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.505409, 27.943264, 45.247566>,  <34.726078, 28.271067, 45.309616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.505409, 27.943264, 45.247566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055036, 0.149819, -0.987180,
		0.832241, -0.553141, -0.037549,
		-0.551676, -0.819506, -0.155128,
		34.339905, 27.697412, 45.201027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.144176, 27.842581, 44.837433>,  <34.726078, 28.271067, 45.309616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.144176, 27.842581, 44.837433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.764847, 27.719254, 44.807434>,  <34.537251, 27.645258, 44.789436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.764847, 27.719254, 44.807434>,  <35.144176, 27.842581, 44.837433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.764847, 27.719254, 44.807434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050441, 0.086857, -0.994943,
		0.313273, -0.947310, -0.066816,
		-0.948323, -0.308319, -0.074994,
		34.480350, 27.626759, 44.784935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.197548, 27.409248, 44.307610>,  <35.144176, 27.842581, 44.837433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.197548, 27.409248, 44.307610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.812267, 27.515608, 44.323284>,  <34.581097, 27.579424, 44.332691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.812267, 27.515608, 44.323284>,  <35.197548, 27.409248, 44.307610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.812267, 27.515608, 44.323284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010567, 0.108228, -0.994070,
		-0.268565, -0.957906, -0.101436,
		-0.963204, 0.265901, 0.039188,
		34.523308, 27.595379, 44.335041>
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
