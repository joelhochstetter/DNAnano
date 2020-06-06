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
	<24.375771, 34.870743, 34.550838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.406244, 34.973591, 34.936188>,  <24.424528, 35.035301, 35.167397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.406244, 34.973591, 34.936188>,  <24.375771, 34.870743, 34.550838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.406244, 34.973591, 34.936188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091073, -0.963936, 0.250067,
		0.992926, 0.068686, -0.096853,
		0.076184, 0.257119, 0.963372,
		24.429100, 35.050728, 35.225201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.013128, 34.571938, 35.025803>,  <24.375771, 34.870743, 34.550838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.013128, 34.571938, 35.025803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.642855, 34.619816, 35.169346>,  <24.420691, 34.648544, 35.255474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.642855, 34.619816, 35.169346>,  <25.013128, 34.571938, 35.025803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.642855, 34.619816, 35.169346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080236, -0.989162, 0.122964,
		0.369690, 0.085032, 0.925256,
		-0.925684, 0.119697, 0.358861,
		24.365149, 34.655724, 35.277004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.684254, 34.727005, 34.726395>,  <25.013128, 34.571938, 35.025803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.684254, 34.727005, 34.726395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.355511, 34.825005, 34.520668>,  <25.158264, 34.883804, 34.397232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.355511, 34.825005, 34.520668>,  <25.684254, 34.727005, 34.726395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.355511, 34.825005, 34.520668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517406, -0.056815, -0.853852,
		-0.238411, -0.967858, -0.080068,
		-0.821858, 0.244995, -0.514321,
		25.108953, 34.898502, 34.366371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.969820, 34.221451, 34.258930>,  <25.684254, 34.727005, 34.726395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.969820, 34.221451, 34.258930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.328703, 34.310337, 34.106281>,  <26.544033, 34.363667, 34.014690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.328703, 34.310337, 34.106281>,  <25.969820, 34.221451, 34.258930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.328703, 34.310337, 34.106281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277639, -0.955861, 0.096154,
		-0.343416, -0.192224, -0.919302,
		0.897208, 0.222214, -0.381627,
		26.597866, 34.377003, 33.991795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.322807, 33.742393, 34.571793>,  <25.969820, 34.221451, 34.258930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.322807, 33.742393, 34.571793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.499355, 34.093567, 34.497570>,  <26.605284, 34.304272, 34.453037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.499355, 34.093567, 34.497570>,  <26.322807, 33.742393, 34.571793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.499355, 34.093567, 34.497570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813717, -0.304435, 0.495160,
		0.378228, -0.369536, -0.848756,
		0.441371, 0.877931, -0.185552,
		26.631767, 34.356945, 34.441906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.023687, 33.767052, 35.046703>,  <26.322807, 33.742393, 34.571793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.023687, 33.767052, 35.046703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.327969, 33.982864, 35.191055>,  <27.510538, 34.112350, 35.277664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.327969, 33.982864, 35.191055>,  <27.023687, 33.767052, 35.046703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.327969, 33.982864, 35.191055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532839, 0.201546, 0.821865,
		0.370690, -0.817486, 0.440801,
		0.760705, 0.539533, 0.360878,
		27.556181, 34.144726, 35.299320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.199728, 33.561562, 35.741108>,  <27.023687, 33.767052, 35.046703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.199728, 33.561562, 35.741108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.332628, 33.934292, 35.682713>,  <27.412369, 34.157928, 35.647675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.332628, 33.934292, 35.682713>,  <27.199728, 33.561562, 35.741108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.332628, 33.934292, 35.682713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596014, 0.327380, 0.733205,
		0.731012, -0.156597, 0.664153,
		0.332248, 0.931826, -0.145984,
		27.432302, 34.213840, 35.638916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.121124, 33.836193, 36.455830>,  <27.199728, 33.561562, 35.741108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.121124, 33.836193, 36.455830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.208731, 34.173939, 36.260246>,  <27.261295, 34.376587, 36.142899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.208731, 34.173939, 36.260246>,  <27.121124, 33.836193, 36.455830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.208731, 34.173939, 36.260246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424684, 0.533658, 0.731337,
		0.878451, 0.047476, 0.475468,
		0.219016, 0.844367, -0.488954,
		27.274435, 34.427250, 36.113560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.524218, 34.328194, 36.976852>,  <27.121124, 33.836193, 36.455830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.524218, 34.328194, 36.976852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.371927, 34.545979, 36.677891>,  <27.280554, 34.676647, 36.498512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.371927, 34.545979, 36.677891>,  <27.524218, 34.328194, 36.976852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.371927, 34.545979, 36.677891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504575, 0.555014, 0.661335,
		0.774889, 0.628908, 0.063413,
		-0.380724, 0.544458, -0.747406,
		27.257710, 34.709316, 36.453671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.685240, 34.991749, 37.062481>,  <27.524218, 34.328194, 36.976852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.685240, 34.991749, 37.062481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.359121, 34.978455, 36.831245>,  <27.163450, 34.970478, 36.692505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.359121, 34.978455, 36.831245>,  <27.685240, 34.991749, 37.062481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.359121, 34.978455, 36.831245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546113, 0.376029, 0.748574,
		0.192499, 0.926012, -0.324726,
		-0.815294, -0.033238, -0.578092,
		27.114532, 34.968483, 36.657818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.376719, 35.559845, 37.198116>,  <27.685240, 34.991749, 37.062481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.376719, 35.559845, 37.198116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.081795, 35.344296, 37.035152>,  <26.904840, 35.214966, 36.937374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.081795, 35.344296, 37.035152>,  <27.376719, 35.559845, 37.198116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.081795, 35.344296, 37.035152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627346, 0.322441, 0.708850,
		-0.250615, 0.778232, -0.575801,
		-0.737312, -0.538875, -0.407413,
		26.860601, 35.182632, 36.912930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.884930, 35.998901, 37.147118>,  <27.376719, 35.559845, 37.198116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.884930, 35.998901, 37.147118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.706108, 35.641331, 37.160053>,  <26.598816, 35.426788, 37.167816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.706108, 35.641331, 37.160053>,  <26.884930, 35.998901, 37.147118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.706108, 35.641331, 37.160053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547860, 0.302211, 0.780075,
		-0.707101, 0.331017, -0.624849,
		-0.447054, -0.893922, 0.032343,
		26.571991, 35.373154, 37.169758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.141754, 36.132233, 37.338463>,  <26.884930, 35.998901, 37.147118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.141754, 36.132233, 37.338463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.223469, 35.755516, 37.445267>,  <26.272497, 35.529488, 37.509350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.223469, 35.755516, 37.445267>,  <26.141754, 36.132233, 37.338463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.223469, 35.755516, 37.445267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355721, 0.182700, 0.916561,
		-0.911992, -0.282224, -0.297691,
		0.204287, -0.941791, 0.267013,
		26.284756, 35.472980, 37.525372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.539417, 35.916008, 37.747238>,  <26.141754, 36.132233, 37.338463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.539417, 35.916008, 37.747238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.824453, 35.655258, 37.850990>,  <25.995476, 35.498810, 37.913242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.824453, 35.655258, 37.850990>,  <25.539417, 35.916008, 37.747238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.824453, 35.655258, 37.850990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223487, 0.139532, 0.964668,
		-0.665033, -0.745380, -0.046256,
		0.712590, -0.651874, 0.259377,
		26.038231, 35.459698, 37.928802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.188236, 35.494499, 38.241001>,  <25.539417, 35.916008, 37.747238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.188236, 35.494499, 38.241001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.578232, 35.449203, 38.317501>,  <25.812229, 35.422024, 38.363400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.578232, 35.449203, 38.317501>,  <25.188236, 35.494499, 38.241001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.578232, 35.449203, 38.317501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192574, -0.000752, 0.981282,
		-0.110981, -0.993567, -0.022542,
		0.974986, -0.113244, 0.191251,
		25.870728, 35.415230, 38.374878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.226540, 34.880234, 38.703274>,  <25.188236, 35.494499, 38.241001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.226540, 34.880234, 38.703274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.563679, 35.089268, 38.754677>,  <25.765963, 35.214687, 38.785519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.563679, 35.089268, 38.754677>,  <25.226540, 34.880234, 38.703274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.563679, 35.089268, 38.754677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154889, 0.006881, 0.987908,
		0.515378, -0.852561, 0.086742,
		0.842849, 0.522581, 0.128506,
		25.816534, 35.246040, 38.793228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.793600, 34.612671, 39.222439>,  <25.226540, 34.880234, 38.703274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.793600, 34.612671, 39.222439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.869553, 35.005211, 39.210503>,  <25.915125, 35.240734, 39.203342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.869553, 35.005211, 39.210503>,  <25.793600, 34.612671, 39.222439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.869553, 35.005211, 39.210503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136050, 0.056396, 0.989096,
		0.972335, -0.183754, 0.144222,
		0.189883, 0.981353, -0.029836,
		25.926517, 35.299618, 39.201553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.045994, 34.764584, 39.902874>,  <25.793600, 34.612671, 39.222439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.045994, 34.764584, 39.902874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.035767, 35.138943, 39.762341>,  <26.029631, 35.363560, 39.678020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.035767, 35.138943, 39.762341>,  <26.045994, 34.764584, 39.902874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.035767, 35.138943, 39.762341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143288, 0.351251, 0.925252,
		0.989351, -0.026686, -0.143084,
		-0.025567, 0.935901, -0.351334,
		26.028097, 35.419712, 39.656940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.654310, 35.194141, 40.132553>,  <26.045994, 34.764584, 39.902874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.654310, 35.194141, 40.132553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.342417, 35.435715, 40.066486>,  <26.155281, 35.580658, 40.026848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.342417, 35.435715, 40.066486>,  <26.654310, 35.194141, 40.132553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.342417, 35.435715, 40.066486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194407, 0.484292, 0.853034,
		0.595164, 0.633030, -0.495028,
		-0.779734, 0.603932, -0.165167,
		26.108496, 35.616894, 40.016937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.041855, 35.831379, 40.070919>,  <26.654310, 35.194141, 40.132553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.041855, 35.831379, 40.070919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.651674, 35.884491, 40.141193>,  <26.417566, 35.916359, 40.183357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.651674, 35.884491, 40.141193>,  <27.041855, 35.831379, 40.070919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.651674, 35.884491, 40.141193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220085, 0.560182, 0.798598,
		0.007618, 0.817659, -0.575652,
		-0.975451, 0.132776, 0.175687,
		26.359039, 35.924324, 40.193901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.044348, 36.532143, 40.227158>,  <27.041855, 35.831379, 40.070919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.044348, 36.532143, 40.227158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.702187, 36.388870, 40.376820>,  <26.496889, 36.302906, 40.466618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.702187, 36.388870, 40.376820>,  <27.044348, 36.532143, 40.227158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.702187, 36.388870, 40.376820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081760, 0.619936, 0.780381,
		-0.511469, 0.698131, -0.501011,
		-0.855403, -0.358178, 0.374157,
		26.445566, 36.281418, 40.489067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.708216, 37.175510, 40.428162>,  <27.044348, 36.532143, 40.227158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.708216, 37.175510, 40.428162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.509251, 36.892132, 40.628437>,  <26.389872, 36.722107, 40.748604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.509251, 36.892132, 40.628437>,  <26.708216, 37.175510, 40.428162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.509251, 36.892132, 40.628437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033219, 0.592284, 0.805044,
		-0.866877, 0.383808, -0.318144,
		-0.497414, -0.708442, 0.500688,
		26.360027, 36.679600, 40.778645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.153587, 37.481461, 40.772987>,  <26.708216, 37.175510, 40.428162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.153587, 37.481461, 40.772987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.225712, 37.138062, 40.965015>,  <26.268988, 36.932022, 41.080231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.225712, 37.138062, 40.965015>,  <26.153587, 37.481461, 40.772987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.225712, 37.138062, 40.965015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108098, 0.467815, 0.877191,
		-0.977651, -0.210063, -0.008449,
		0.180313, -0.858500, 0.480067,
		26.279806, 36.880512, 41.109035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.635256, 37.464954, 41.299911>,  <26.153587, 37.481461, 40.772987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.635256, 37.464954, 41.299911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.932343, 37.229416, 41.427429>,  <26.110596, 37.088093, 41.503941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.932343, 37.229416, 41.427429>,  <25.635256, 37.464954, 41.299911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.932343, 37.229416, 41.427429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114605, 0.357283, 0.926938,
		-0.659724, -0.724989, 0.197875,
		0.742718, -0.588846, 0.318795,
		26.155157, 37.052761, 41.523067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.376133, 37.001987, 41.882664>,  <25.635256, 37.464954, 41.299911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.376133, 37.001987, 41.882664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.772768, 37.037945, 41.919914>,  <26.010750, 37.059521, 41.942265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.772768, 37.037945, 41.919914>,  <25.376133, 37.001987, 41.882664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.772768, 37.037945, 41.919914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117373, 0.321145, 0.939728,
		0.054565, -0.942754, 0.328994,
		0.991588, 0.089891, 0.093130,
		26.070244, 37.064911, 41.947853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.534765, 36.752979, 42.597347>,  <25.376133, 37.001987, 41.882664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.534765, 36.752979, 42.597347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.851213, 36.969982, 42.484341>,  <26.041082, 37.100185, 42.416538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.851213, 36.969982, 42.484341>,  <25.534765, 36.752979, 42.597347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.851213, 36.969982, 42.484341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014213, 0.478065, 0.878210,
		0.611496, -0.690754, 0.385918,
		0.791120, 0.542506, -0.282517,
		26.088551, 37.132732, 42.399586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.086357, 36.687382, 43.019665>,  <25.534765, 36.752979, 42.597347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.086357, 36.687382, 43.019665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.123283, 37.053223, 42.862198>,  <26.145439, 37.272728, 42.767719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.123283, 37.053223, 42.862198>,  <26.086357, 36.687382, 43.019665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.123283, 37.053223, 42.862198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101894, 0.384601, 0.917442,
		0.990502, -0.124808, -0.057688,
		0.092317, 0.914606, -0.393666,
		26.150978, 37.327606, 42.744099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.726067, 36.747307, 43.742588>,  <26.086357, 36.687382, 43.019665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.726067, 36.747307, 43.742588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.868940, 36.374748, 43.770645>,  <25.954664, 36.151215, 43.787479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.868940, 36.374748, 43.770645>,  <25.726067, 36.747307, 43.742588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.868940, 36.374748, 43.770645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923633, -0.363385, -0.121871,
		0.138998, -0.021253, -0.990065,
		0.357184, -0.931396, 0.070140,
		25.976095, 36.095329, 43.791687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.392879, 36.291637, 43.222435>,  <25.726067, 36.747307, 43.742588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.392879, 36.291637, 43.222435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.494286, 36.092400, 43.554131>,  <25.555130, 35.972858, 43.753147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.494286, 36.092400, 43.554131>,  <25.392879, 36.291637, 43.222435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.494286, 36.092400, 43.554131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921334, -0.385530, 0.050097,
		0.294743, -0.776705, -0.556647,
		0.253515, -0.498092, 0.829237,
		25.570339, 35.942970, 43.802902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.357279, 35.603481, 43.192142>,  <25.392879, 36.291637, 43.222435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.357279, 35.603481, 43.192142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.251795, 35.677849, 43.570747>,  <25.188505, 35.722469, 43.797913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.251795, 35.677849, 43.570747>,  <25.357279, 35.603481, 43.192142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.251795, 35.677849, 43.570747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898956, -0.403172, -0.171263,
		0.349767, -0.896039, 0.273456,
		-0.263708, 0.185923, 0.946515,
		25.172682, 35.733627, 43.854702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.215307, 34.988289, 43.648605>,  <25.357279, 35.603481, 43.192142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.215307, 34.988289, 43.648605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.975176, 35.300755, 43.717186>,  <24.831097, 35.488232, 43.758335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.975176, 35.300755, 43.717186>,  <25.215307, 34.988289, 43.648605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.975176, 35.300755, 43.717186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792089, -0.551141, -0.262372,
		-0.110461, -0.293314, 0.949613,
		-0.600328, 0.781160, 0.171451,
		24.795078, 35.535103, 43.768620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.008503, 35.027058, 43.664051>,  <25.215307, 34.988289, 43.648605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.008503, 35.027058, 43.664051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.224806, 35.054512, 43.999401>,  <26.354588, 35.070984, 44.200611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.224806, 35.054512, 43.999401>,  <26.008503, 35.027058, 43.664051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.224806, 35.054512, 43.999401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260799, -0.961233, -0.089520,
		0.799729, 0.267056, -0.537695,
		0.540757, 0.068639, 0.838374,
		26.387033, 35.075104, 44.250912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.767706, 34.753876, 43.551991>,  <26.008503, 35.027058, 43.664051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.767706, 34.753876, 43.551991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.592182, 34.693813, 43.906368>,  <26.486868, 34.657776, 44.118996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.592182, 34.693813, 43.906368>,  <26.767706, 34.753876, 43.551991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.592182, 34.693813, 43.906368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237825, -0.970188, -0.046636,
		0.866537, 0.190236, 0.461437,
		-0.438808, -0.150153, 0.885947,
		26.460539, 34.648766, 44.172153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.047012, 34.144966, 43.824345>,  <26.767706, 34.753876, 43.551991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.047012, 34.144966, 43.824345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.718880, 34.211800, 44.043118>,  <26.521999, 34.251900, 44.174381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.718880, 34.211800, 44.043118>,  <27.047012, 34.144966, 43.824345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.718880, 34.211800, 44.043118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020767, -0.964443, 0.263476,
		0.571509, 0.204780, 0.794634,
		-0.820333, 0.167081, 0.546935,
		26.472780, 34.261925, 44.207199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.651546, 34.393368, 43.555347>,  <27.047012, 34.144966, 43.824345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.651546, 34.393368, 43.555347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.494333, 34.045395, 43.674507>,  <27.400005, 33.836613, 43.746002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.494333, 34.045395, 43.674507>,  <27.651546, 34.393368, 43.555347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.494333, 34.045395, 43.674507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009045, -0.320298, -0.947274,
		0.919481, -0.375003, 0.118018,
		-0.393031, -0.869932, 0.297899,
		27.376425, 33.784416, 43.763878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.145489, 33.699863, 43.626869>,  <27.651546, 34.393368, 43.555347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.145489, 33.699863, 43.626869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.762688, 33.699886, 43.510838>,  <27.533007, 33.699902, 43.441219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.762688, 33.699886, 43.510838>,  <28.145489, 33.699863, 43.626869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.762688, 33.699886, 43.510838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276087, -0.306672, -0.910894,
		-0.089014, -0.951815, 0.293470,
		-0.957002, 0.000059, -0.290082,
		27.475588, 33.699905, 43.423813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.178625, 33.209114, 43.025772>,  <28.145489, 33.699863, 43.626869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.178625, 33.209114, 43.025772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.827465, 33.397945, 42.993694>,  <27.616768, 33.511246, 42.974445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.827465, 33.397945, 42.993694>,  <28.178625, 33.209114, 43.025772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.827465, 33.397945, 42.993694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039391, -0.095714, -0.994629,
		-0.477219, -0.876345, 0.065432,
		-0.877901, 0.472079, -0.080196,
		27.564095, 33.539570, 42.969635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.855536, 32.857967, 42.479275>,  <28.178625, 33.209114, 43.025772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.855536, 32.857967, 42.479275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.645058, 33.197212, 42.503998>,  <27.518770, 33.400761, 42.518833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.645058, 33.197212, 42.503998>,  <27.855536, 32.857967, 42.479275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.645058, 33.197212, 42.503998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062279, 0.034055, -0.997478,
		-0.848080, -0.528718, 0.034900,
		-0.526196, 0.848114, 0.061809,
		27.487198, 33.451645, 42.522541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.263584, 32.756386, 42.105652>,  <27.855536, 32.857967, 42.479275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.263584, 32.756386, 42.105652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.306822, 33.153938, 42.096546>,  <27.332764, 33.392471, 42.091084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.306822, 33.153938, 42.096546>,  <27.263584, 32.756386, 42.105652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.306822, 33.153938, 42.096546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024717, -0.020201, -0.999490,
		-0.993833, 0.108601, 0.022383,
		0.108093, 0.993880, -0.022761,
		27.339251, 33.452103, 42.089718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.773958, 32.983543, 41.538368>,  <27.263584, 32.756386, 42.105652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.773958, 32.983543, 41.538368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.037266, 33.280682, 41.587139>,  <27.195250, 33.458965, 41.616402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.037266, 33.280682, 41.587139>,  <26.773958, 32.983543, 41.538368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.037266, 33.280682, 41.587139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260853, -0.073157, -0.962603,
		-0.706143, 0.665456, -0.241930,
		0.658268, 0.742843, 0.121927,
		27.234747, 33.503536, 41.623718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.861359, 33.408878, 40.869377>,  <26.773958, 32.983543, 41.538368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.861359, 33.408878, 40.869377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.200891, 33.500496, 41.059967>,  <27.404612, 33.555466, 41.174320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.200891, 33.500496, 41.059967>,  <26.861359, 33.408878, 40.869377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.200891, 33.500496, 41.059967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455342, 0.141173, -0.879053,
		-0.268607, 0.963125, 0.015538,
		0.848831, 0.229045, 0.476471,
		27.455542, 33.569210, 41.202908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.079393, 34.052872, 40.622532>,  <26.861359, 33.408878, 40.869377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.079393, 34.052872, 40.622532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.399149, 33.873211, 40.782150>,  <27.591003, 33.765415, 40.877922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.399149, 33.873211, 40.782150>,  <27.079393, 34.052872, 40.622532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.399149, 33.873211, 40.782150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467450, 0.047694, -0.882732,
		0.377446, 0.892183, 0.248081,
		0.799390, -0.449149, 0.399049,
		27.638966, 33.738468, 40.901867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.601751, 34.553726, 40.400307>,  <27.079393, 34.052872, 40.622532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.601751, 34.553726, 40.400307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.822271, 34.232834, 40.491955>,  <27.954584, 34.040298, 40.546944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.822271, 34.232834, 40.491955>,  <27.601751, 34.553726, 40.400307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.822271, 34.232834, 40.491955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523098, 0.118430, -0.844004,
		0.649950, 0.585153, 0.484934,
		0.551302, -0.802229, 0.229119,
		27.987661, 33.992165, 40.560692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.376873, 34.750492, 40.331516>,  <27.601751, 34.553726, 40.400307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.376873, 34.750492, 40.331516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.359333, 34.351978, 40.301884>,  <28.348808, 34.112869, 40.284103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.359333, 34.351978, 40.301884>,  <28.376873, 34.750492, 40.331516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.359333, 34.351978, 40.301884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554533, 0.037410, -0.831320,
		0.831006, -0.077538, 0.550833,
		-0.043852, -0.996287, -0.074085,
		28.346178, 34.053093, 40.279659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.080406, 34.508816, 40.256706>,  <28.376873, 34.750492, 40.331516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.080406, 34.508816, 40.256706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.825792, 34.256107, 40.079762>,  <28.673023, 34.104481, 39.973595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.825792, 34.256107, 40.079762>,  <29.080406, 34.508816, 40.256706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.825792, 34.256107, 40.079762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567142, 0.005261, -0.823604,
		0.522659, -0.775134, 0.354958,
		-0.636536, -0.631775, -0.442360,
		28.634832, 34.066574, 39.947052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.481071, 34.238556, 39.785789>,  <29.080406, 34.508816, 40.256706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.481071, 34.238556, 39.785789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.125120, 34.101391, 39.665436>,  <28.911549, 34.019093, 39.593224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.125120, 34.101391, 39.665436>,  <29.481071, 34.238556, 39.785789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.125120, 34.101391, 39.665436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360760, -0.125265, -0.924208,
		0.279229, -0.930980, 0.235178,
		-0.889878, -0.342908, -0.300883,
		28.858156, 33.998520, 39.575172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.673210, 33.669518, 39.406151>,  <29.481071, 34.238556, 39.785789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.673210, 33.669518, 39.406151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.310764, 33.797218, 39.295132>,  <29.093296, 33.873840, 39.228519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.310764, 33.797218, 39.295132>,  <29.673210, 33.669518, 39.406151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.310764, 33.797218, 39.295132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320520, 0.089938, -0.942962,
		-0.276085, -0.943391, -0.183822,
		-0.906115, 0.319257, -0.277545,
		29.038929, 33.892994, 39.211868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.655251, 33.375187, 38.765537>,  <29.673210, 33.669518, 39.406151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.655251, 33.375187, 38.765537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.370676, 33.654984, 38.738495>,  <29.199930, 33.822861, 38.722267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.370676, 33.654984, 38.738495>,  <29.655251, 33.375187, 38.765537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.370676, 33.654984, 38.738495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198274, 0.107498, -0.974234,
		-0.674198, -0.706513, -0.215169,
		-0.711439, 0.699489, -0.067608,
		29.157244, 33.864830, 38.718212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.176950, 33.165436, 38.235943>,  <29.655251, 33.375187, 38.765537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.176950, 33.165436, 38.235943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.129534, 33.559067, 38.288921>,  <29.101084, 33.795246, 38.320709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.129534, 33.559067, 38.288921>,  <29.176950, 33.165436, 38.235943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.129534, 33.559067, 38.288921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246943, 0.158411, -0.955994,
		-0.961752, -0.080618, -0.261788,
		-0.118540, 0.984077, 0.132444,
		29.093971, 33.854290, 38.328655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.622707, 33.460098, 37.723145>,  <29.176950, 33.165436, 38.235943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.622707, 33.460098, 37.723145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.851267, 33.770481, 37.830025>,  <28.988403, 33.956711, 37.894154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.851267, 33.770481, 37.830025>,  <28.622707, 33.460098, 37.723145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.851267, 33.770481, 37.830025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154134, 0.218318, -0.963629,
		-0.806068, 0.591801, 0.005145,
		0.571400, 0.775957, 0.267196,
		29.022686, 34.003269, 37.910183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.410513, 34.027130, 37.262535>,  <28.622707, 33.460098, 37.723145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.410513, 34.027130, 37.262535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.772211, 34.119179, 37.406418>,  <28.989229, 34.174408, 37.492748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.772211, 34.119179, 37.406418>,  <28.410513, 34.027130, 37.262535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.772211, 34.119179, 37.406418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268901, 0.347511, -0.898292,
		-0.331714, 0.909001, 0.252356,
		0.904244, 0.230117, 0.359706,
		29.043484, 34.188213, 37.514328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.646015, 34.628414, 36.862720>,  <28.410513, 34.027130, 37.262535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.646015, 34.628414, 36.862720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.990374, 34.503014, 37.023006>,  <29.196989, 34.427773, 37.119179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.990374, 34.503014, 37.023006>,  <28.646015, 34.628414, 36.862720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.990374, 34.503014, 37.023006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491681, 0.310142, -0.813672,
		0.130811, 0.897511, 0.421144,
		0.860894, -0.313505, 0.400720,
		29.248642, 34.408962, 37.143223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.151075, 35.262318, 36.865112>,  <28.646015, 34.628414, 36.862720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.151075, 35.262318, 36.865112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.368364, 34.926613, 36.874462>,  <29.498737, 34.725189, 36.880074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.368364, 34.926613, 36.874462>,  <29.151075, 35.262318, 36.865112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.368364, 34.926613, 36.874462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470512, 0.281246, -0.836373,
		0.695362, 0.465336, 0.547662,
		0.543222, -0.839263, 0.023378,
		29.531330, 34.674835, 36.881477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.892988, 35.509125, 36.660870>,  <29.151075, 35.262318, 36.865112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.892988, 35.509125, 36.660870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.869167, 35.112946, 36.611126>,  <29.854874, 34.875237, 36.581280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.869167, 35.112946, 36.611126>,  <29.892988, 35.509125, 36.660870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.869167, 35.112946, 36.611126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434213, 0.086472, -0.896650,
		0.898840, -0.107396, 0.424916,
		-0.059554, -0.990449, -0.124358,
		29.851301, 34.815811, 36.573818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.498264, 35.297710, 36.300823>,  <29.892988, 35.509125, 36.660870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.498264, 35.297710, 36.300823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.262440, 34.979851, 36.242924>,  <30.120945, 34.789135, 36.208183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.262440, 34.979851, 36.242924>,  <30.498264, 35.297710, 36.300823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.262440, 34.979851, 36.242924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190013, 0.037732, -0.981056,
		0.785054, -0.605899, 0.128747,
		-0.589563, -0.794646, -0.144750,
		30.085571, 34.741455, 36.199497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.826595, 34.929581, 35.697899>,  <30.498264, 35.297710, 36.300823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.826595, 34.929581, 35.697899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.469423, 34.751678, 35.725811>,  <30.255119, 34.644939, 35.742558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.469423, 34.751678, 35.725811>,  <30.826595, 34.929581, 35.697899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.469423, 34.751678, 35.725811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018181, -0.119247, -0.992698,
		0.449825, -0.887680, 0.098393,
		-0.892931, -0.444752, 0.069780,
		30.201544, 34.618252, 35.746746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.935608, 34.297665, 35.294052>,  <30.826595, 34.929581, 35.697899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.935608, 34.297665, 35.294052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.552118, 34.406635, 35.326626>,  <30.322023, 34.472015, 35.346169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.552118, 34.406635, 35.326626>,  <30.935608, 34.297665, 35.294052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.552118, 34.406635, 35.326626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069151, 0.054406, -0.996122,
		-0.275797, -0.960638, -0.033322,
		-0.958725, 0.272423, 0.081434,
		30.264502, 34.488361, 35.351055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.586117, 33.861164, 34.814182>,  <30.935608, 34.297665, 35.294052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.586117, 33.861164, 34.814182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.377872, 34.193516, 34.892780>,  <30.252926, 34.392925, 34.939938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.377872, 34.193516, 34.892780>,  <30.586117, 33.861164, 34.814182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.377872, 34.193516, 34.892780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224150, 0.089061, -0.970477,
		-0.823846, -0.549284, 0.139875,
		-0.520610, 0.830877, 0.196494,
		30.221689, 34.442780, 34.951729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.390268, 33.377216, 34.299175>,  <30.586117, 33.861164, 34.814182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.390268, 33.377216, 34.299175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.292318, 33.244602, 33.934731>,  <30.233547, 33.165031, 33.716064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.292318, 33.244602, 33.934731>,  <30.390268, 33.377216, 34.299175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.292318, 33.244602, 33.934731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926401, -0.357242, -0.118991,
		-0.286035, -0.873189, 0.394619,
		-0.244877, -0.331540, -0.911107,
		30.218855, 33.145142, 33.661400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.954643, 32.892990, 33.992565>,  <30.390268, 33.377216, 34.299175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.954643, 32.892990, 33.992565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.038782, 32.516857, 34.099541>,  <31.089266, 32.291176, 34.163727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.038782, 32.516857, 34.099541>,  <30.954643, 32.892990, 33.992565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.038782, 32.516857, 34.099541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689179, -0.051397, -0.722767,
		0.693388, 0.336347, 0.637247,
		0.210347, -0.940335, 0.267441,
		31.101887, 32.234756, 34.179771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.668009, 32.833359, 33.937923>,  <30.954643, 32.892990, 33.992565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.668009, 32.833359, 33.937923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.538950, 32.454971, 33.950859>,  <31.461515, 32.227940, 33.958622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.538950, 32.454971, 33.950859>,  <31.668009, 32.833359, 33.937923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.538950, 32.454971, 33.950859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784532, -0.286386, -0.549994,
		0.529537, -0.152082, 0.834543,
		-0.322645, -0.945967, 0.032338,
		31.442156, 32.171181, 33.960560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.157494, 32.342239, 33.996029>,  <31.668009, 32.833359, 33.937923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.157494, 32.342239, 33.996029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.889938, 32.115791, 33.803322>,  <31.729406, 31.979921, 33.687698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.889938, 32.115791, 33.803322>,  <32.157494, 32.342239, 33.996029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.889938, 32.115791, 33.803322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700405, -0.262830, -0.663591,
		0.249052, -0.781297, 0.572318,
		-0.668884, -0.566123, -0.481766,
		31.689274, 31.945953, 33.658791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.323330, 31.660168, 34.056248>,  <32.157494, 32.342239, 33.996029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.323330, 31.660168, 34.056248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.139709, 31.752556, 33.713104>,  <32.029537, 31.807989, 33.507217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.139709, 31.752556, 33.713104>,  <32.323330, 31.660168, 34.056248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.139709, 31.752556, 33.713104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791570, -0.332065, -0.512981,
		-0.403348, -0.914542, -0.030394,
		-0.459050, 0.230969, -0.857861,
		32.001995, 31.821846, 33.455746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.440029, 31.098204, 33.610043>,  <32.323330, 31.660168, 34.056248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.440029, 31.098204, 33.610043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.328781, 31.399315, 33.371387>,  <32.262032, 31.579983, 33.228195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.328781, 31.399315, 33.371387>,  <32.440029, 31.098204, 33.610043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.328781, 31.399315, 33.371387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767781, -0.199025, -0.609017,
		-0.577200, -0.627465, -0.522616,
		-0.278123, 0.752779, -0.596633,
		32.245346, 31.625149, 33.192398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.486683, 30.945976, 32.808662>,  <32.440029, 31.098204, 33.610043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.486683, 30.945976, 32.808662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.486515, 31.344864, 32.838463>,  <32.486416, 31.584196, 32.856342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.486515, 31.344864, 32.838463>,  <32.486683, 30.945976, 32.808662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.486515, 31.344864, 32.838463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753711, 0.049274, -0.655356,
		-0.657206, 0.055877, -0.751637,
		-0.000417, 0.997221, 0.074498,
		32.486389, 31.644030, 32.860813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.064289, 30.639021, 33.046600>,  <32.486683, 30.945976, 32.808662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.064289, 30.639021, 33.046600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.322491, 30.914608, 33.178452>,  <33.477409, 31.079960, 33.257561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.322491, 30.914608, 33.178452>,  <33.064289, 30.639021, 33.046600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.322491, 30.914608, 33.178452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077258, -0.488269, 0.869267,
		0.759842, -0.535647, -0.368406,
		0.645501, 0.688967, 0.329625,
		33.516140, 31.121298, 33.277340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.104305, 30.376848, 33.731739>,  <33.064289, 30.639021, 33.046600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.104305, 30.376848, 33.731739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.363174, 30.681654, 33.722759>,  <33.518497, 30.864536, 33.717369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.363174, 30.681654, 33.722759>,  <33.104305, 30.376848, 33.731739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.363174, 30.681654, 33.722759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268252, -0.200060, 0.942346,
		0.713589, -0.615883, -0.333885,
		0.647172, 0.762014, -0.022451,
		33.557327, 30.910257, 33.716022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.744514, 30.122320, 33.967937>,  <33.104305, 30.376848, 33.731739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.744514, 30.122320, 33.967937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.760208, 30.513416, 34.050385>,  <33.769627, 30.748074, 34.099854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.760208, 30.513416, 34.050385>,  <33.744514, 30.122320, 33.967937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.760208, 30.513416, 34.050385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319397, -0.207724, 0.924573,
		0.946808, 0.029554, -0.320438,
		0.039237, 0.977741, 0.206114,
		33.771980, 30.806738, 34.112217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.383030, 30.240545, 34.299629>,  <33.744514, 30.122320, 33.967937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.383030, 30.240545, 34.299629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.163605, 30.560717, 34.396282>,  <34.031948, 30.752819, 34.454273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.163605, 30.560717, 34.396282>,  <34.383030, 30.240545, 34.299629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.163605, 30.560717, 34.396282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269804, -0.104078, 0.957274,
		0.791379, 0.590322, -0.158866,
		-0.548566, 0.800429, 0.241637,
		33.999035, 30.800846, 34.468773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.753719, 30.695267, 34.690193>,  <34.383030, 30.240545, 34.299629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.753719, 30.695267, 34.690193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.391300, 30.829226, 34.793663>,  <34.173847, 30.909601, 34.855743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.391300, 30.829226, 34.793663>,  <34.753719, 30.695267, 34.690193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.391300, 30.829226, 34.793663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291436, 0.050635, 0.955249,
		0.306813, 0.940893, -0.143480,
		-0.906052, 0.334898, 0.258674,
		34.119484, 30.929695, 34.871265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.945953, 31.005577, 35.231220>,  <34.753719, 30.695267, 34.690193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.945953, 31.005577, 35.231220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.552139, 31.031830, 35.296200>,  <34.315853, 31.047581, 35.335186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.552139, 31.031830, 35.296200>,  <34.945953, 31.005577, 35.231220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.552139, 31.031830, 35.296200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166156, 0.055585, 0.984532,
		0.055585, 0.996295, -0.065630,
		-0.984532, 0.065630, 0.162450,
		34.256779, 31.051519, 35.344936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.839035, 31.518812, 35.721687>,  <34.945953, 31.005577, 35.231220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.839035, 31.518812, 35.721687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.510479, 31.294024, 35.760677>,  <34.313343, 31.159151, 35.784073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.510479, 31.294024, 35.760677>,  <34.839035, 31.518812, 35.721687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.510479, 31.294024, 35.760677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096143, 0.032038, 0.994852,
		-0.562201, 0.826536, 0.027714,
		-0.821393, -0.561971, 0.097477,
		34.264061, 31.125433, 35.789921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.278488, 31.803093, 36.246517>,  <34.839035, 31.518812, 35.721687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.278488, 31.803093, 36.246517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.190376, 31.412947, 36.251236>,  <34.137508, 31.178860, 36.254066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.190376, 31.412947, 36.251236>,  <34.278488, 31.803093, 36.246517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.190376, 31.412947, 36.251236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068598, 0.027559, 0.997264,
		-0.973021, 0.218872, -0.072979,
		-0.220285, -0.975364, 0.011801,
		34.124290, 31.120337, 36.254776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.831886, 31.747358, 36.857101>,  <34.278488, 31.803093, 36.246517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.831886, 31.747358, 36.857101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.921013, 31.369268, 36.761688>,  <33.974491, 31.142414, 36.704441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.921013, 31.369268, 36.761688>,  <33.831886, 31.747358, 36.857101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.921013, 31.369268, 36.761688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116412, -0.217132, 0.969176,
		-0.967884, -0.243720, 0.061655,
		0.222820, -0.945227, -0.238531,
		33.987858, 31.085701, 36.690128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.324444, 31.309467, 37.173195>,  <33.831886, 31.747358, 36.857101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.324444, 31.309467, 37.173195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.663696, 31.103756, 37.122311>,  <33.867249, 30.980330, 37.091782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.663696, 31.103756, 37.122311>,  <33.324444, 31.309467, 37.173195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.663696, 31.103756, 37.122311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080915, -0.363046, 0.928251,
		-0.523564, -0.776990, -0.349525,
		0.848136, -0.514280, -0.127208,
		33.918137, 30.949472, 37.084148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.202587, 30.571089, 37.395832>,  <33.324444, 31.309467, 37.173195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.202587, 30.571089, 37.395832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.595463, 30.637440, 37.431133>,  <33.831188, 30.677250, 37.452312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.595463, 30.637440, 37.431133>,  <33.202587, 30.571089, 37.395832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.595463, 30.637440, 37.431133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027210, -0.339155, 0.940337,
		0.185911, -0.925990, -0.328602,
		0.982190, 0.165878, 0.088249,
		33.890121, 30.687202, 37.457607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.479252, 29.999025, 37.595936>,  <33.202587, 30.571089, 37.395832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.479252, 29.999025, 37.595936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.756889, 30.257423, 37.723015>,  <33.923470, 30.412462, 37.799263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.756889, 30.257423, 37.723015>,  <33.479252, 29.999025, 37.595936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.756889, 30.257423, 37.723015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214098, -0.236105, 0.947848,
		0.687314, -0.725910, -0.025571,
		0.694090, 0.645995, 0.317694,
		33.965115, 30.451221, 37.818321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.844215, 29.650389, 38.061386>,  <33.479252, 29.999025, 37.595936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.844215, 29.650389, 38.061386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.943401, 30.020014, 38.177746>,  <34.002914, 30.241789, 38.247562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.943401, 30.020014, 38.177746>,  <33.844215, 29.650389, 38.061386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.943401, 30.020014, 38.177746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064053, -0.283979, 0.956689,
		0.966649, -0.255857, -0.011228,
		0.247964, 0.924063, 0.290896,
		34.017792, 30.297234, 38.265015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.418343, 29.478214, 38.511780>,  <33.844215, 29.650389, 38.061386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.418343, 29.478214, 38.511780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.204971, 29.808992, 38.582909>,  <34.076950, 30.007460, 38.625587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.204971, 29.808992, 38.582909>,  <34.418343, 29.478214, 38.511780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.204971, 29.808992, 38.582909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243607, -0.051127, 0.968526,
		0.810009, 0.559954, -0.174177,
		-0.533425, 0.826945, 0.177822,
		34.044945, 30.057076, 38.636253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880909, 29.864681, 38.950989>,  <34.418343, 29.478214, 38.511780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880909, 29.864681, 38.950989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.506474, 29.984240, 39.025173>,  <34.281811, 30.055975, 39.069683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.506474, 29.984240, 39.025173>,  <34.880909, 29.864681, 38.950989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.506474, 29.984240, 39.025173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154445, -0.124466, 0.980130,
		0.316041, 0.946134, 0.070348,
		-0.936090, 0.298897, 0.185462,
		34.225647, 30.073908, 39.080811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.889977, 30.036741, 39.526108>,  <34.880909, 29.864681, 38.950989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.889977, 30.036741, 39.526108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.490124, 30.046217, 39.531281>,  <34.250210, 30.051903, 39.534386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.490124, 30.046217, 39.531281>,  <34.889977, 30.036741, 39.526108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.490124, 30.046217, 39.531281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004161, -0.338117, 0.941095,
		0.026667, 0.940806, 0.337896,
		-0.999636, 0.023690, 0.012931,
		34.190231, 30.053324, 39.535160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.762432, 30.416468, 40.135235>,  <34.889977, 30.036741, 39.526108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.762432, 30.416468, 40.135235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.431038, 30.214960, 40.037399>,  <34.232201, 30.094055, 39.978699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.431038, 30.214960, 40.037399>,  <34.762432, 30.416468, 40.135235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.431038, 30.214960, 40.037399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015486, -0.415978, 0.909243,
		-0.559792, 0.757085, 0.336831,
		-0.828488, -0.503771, -0.244585,
		34.182491, 30.063829, 39.964024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.245605, 30.639521, 40.669537>,  <34.762432, 30.416468, 40.135235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.245605, 30.639521, 40.669537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.106495, 30.298244, 40.514038>,  <34.023029, 30.093479, 40.420738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.106495, 30.298244, 40.514038>,  <34.245605, 30.639521, 40.669537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.106495, 30.298244, 40.514038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111007, -0.374240, 0.920664,
		-0.930984, 0.363335, 0.035441,
		-0.347773, -0.853189, -0.388744,
		34.002163, 30.042288, 40.397415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.532612, 30.506020, 40.954044>,  <34.245605, 30.639521, 40.669537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.532612, 30.506020, 40.954044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.634350, 30.135042, 40.844387>,  <33.695393, 29.912455, 40.778591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.634350, 30.135042, 40.844387>,  <33.532612, 30.506020, 40.954044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.634350, 30.135042, 40.844387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342248, -0.351441, 0.871410,
		-0.904531, -0.127810, -0.406803,
		0.254342, -0.927445, -0.274146,
		33.710651, 29.856810, 40.762142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.010563, 30.103338, 41.215370>,  <33.532612, 30.506020, 40.954044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.010563, 30.103338, 41.215370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.308445, 29.849432, 41.132923>,  <33.487175, 29.697088, 41.083454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.308445, 29.849432, 41.132923>,  <33.010563, 30.103338, 41.215370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.308445, 29.849432, 41.132923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209987, -0.516018, 0.830440,
		-0.633496, -0.575152, -0.517574,
		0.744707, -0.634764, -0.206121,
		33.531857, 29.659002, 41.071087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.700886, 29.563789, 41.295307>,  <33.010563, 30.103338, 41.215370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.700886, 29.563789, 41.295307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.078983, 29.444723, 41.348846>,  <33.305840, 29.373283, 41.380970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.078983, 29.444723, 41.348846>,  <32.700886, 29.563789, 41.295307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.078983, 29.444723, 41.348846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282018, -0.538526, 0.794013,
		-0.164269, -0.788281, -0.592984,
		0.945242, -0.297664, 0.133846,
		33.362556, 29.355423, 41.389000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.608501, 28.806341, 41.505093>,  <32.700886, 29.563789, 41.295307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.608501, 28.806341, 41.505093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.968914, 28.951475, 41.600174>,  <33.185162, 29.038555, 41.657223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.968914, 28.951475, 41.600174>,  <32.608501, 28.806341, 41.505093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.968914, 28.951475, 41.600174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124761, -0.308062, 0.943150,
		0.415433, -0.879460, -0.232305,
		0.901027, 0.362833, 0.237702,
		33.239223, 29.060326, 41.671486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.025219, 28.269606, 41.727257>,  <32.608501, 28.806341, 41.505093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.025219, 28.269606, 41.727257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.189499, 28.595888, 41.890205>,  <33.288067, 28.791658, 41.987972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.189499, 28.595888, 41.890205>,  <33.025219, 28.269606, 41.727257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.189499, 28.595888, 41.890205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005394, -0.448953, 0.893539,
		0.911755, -0.364777, -0.188785,
		0.410698, 0.815707, 0.407368,
		33.312710, 28.840601, 42.012417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.464367, 27.998367, 42.289181>,  <33.025219, 28.269606, 41.727257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.464367, 27.998367, 42.289181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.386295, 28.385469, 42.352867>,  <33.339451, 28.617731, 42.391079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.386295, 28.385469, 42.352867>,  <33.464367, 27.998367, 42.289181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.386295, 28.385469, 42.352867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147297, -0.189424, 0.970784,
		0.969643, 0.166028, 0.179520,
		-0.195183, 0.967757, 0.159218,
		33.327740, 28.675797, 42.400631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.935856, 28.166014, 42.834736>,  <33.464367, 27.998367, 42.289181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.935856, 28.166014, 42.834736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.663692, 28.458529, 42.853767>,  <33.500393, 28.634037, 42.865189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.663692, 28.458529, 42.853767>,  <33.935856, 28.166014, 42.834736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.663692, 28.458529, 42.853767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081011, -0.139588, 0.986890,
		0.728341, 0.667634, 0.154220,
		-0.680409, 0.731286, 0.047582,
		33.459568, 28.677914, 42.868042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.037006, 28.514399, 43.473045>,  <33.935856, 28.166014, 42.834736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.037006, 28.514399, 43.473045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.663990, 28.625639, 43.380936>,  <33.440182, 28.692383, 43.325668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.663990, 28.625639, 43.380936>,  <34.037006, 28.514399, 43.473045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.663990, 28.625639, 43.380936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272946, -0.125465, 0.953813,
		0.236364, 0.952323, 0.192907,
		-0.932541, 0.278100, -0.230277,
		33.384228, 28.709068, 43.311852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.843384, 29.055103, 43.813961>,  <34.037006, 28.514399, 43.473045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.843384, 29.055103, 43.813961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.492752, 28.878443, 43.737492>,  <33.282372, 28.772448, 43.691608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.492752, 28.878443, 43.737492>,  <33.843384, 29.055103, 43.813961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.492752, 28.878443, 43.737492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224785, 0.024501, 0.974100,
		-0.425526, 0.896853, -0.120754,
		-0.876584, -0.441649, -0.191173,
		33.229778, 28.745949, 43.680141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.408905, 29.354393, 44.143921>,  <33.843384, 29.055103, 43.813961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.408905, 29.354393, 44.143921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.201366, 29.015392, 44.099129>,  <33.076843, 28.811993, 44.072254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.201366, 29.015392, 44.099129>,  <33.408905, 29.354393, 44.143921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.201366, 29.015392, 44.099129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250935, 0.025770, 0.967661,
		-0.817208, 0.530167, -0.226038,
		-0.518847, -0.847501, -0.111978,
		33.045712, 28.761143, 44.065536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.803864, 29.543653, 44.398495>,  <33.408905, 29.354393, 44.143921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.803864, 29.543653, 44.398495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.842266, 29.145597, 44.407269>,  <32.865307, 28.906763, 44.412533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.842266, 29.145597, 44.407269>,  <32.803864, 29.543653, 44.398495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.842266, 29.145597, 44.407269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252203, -0.003003, 0.967670,
		-0.962900, -0.098430, -0.251265,
		0.096002, -0.995139, 0.021933,
		32.871067, 28.847055, 44.413849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.335194, 29.397430, 44.839394>,  <32.803864, 29.543653, 44.398495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.335194, 29.397430, 44.839394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.498367, 29.035072, 44.793884>,  <32.596272, 28.817657, 44.766579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.498367, 29.035072, 44.793884>,  <32.335194, 29.397430, 44.839394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.498367, 29.035072, 44.793884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126941, -0.179683, 0.975500,
		-0.904144, -0.383495, -0.188294,
		0.407933, -0.905895, -0.113778,
		32.620747, 28.763304, 44.759750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.831617, 28.911394, 45.205696>,  <32.335194, 29.397430, 44.839394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.831617, 28.911394, 45.205696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.183548, 28.727386, 45.157879>,  <32.394707, 28.616982, 45.129189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.183548, 28.727386, 45.157879>,  <31.831617, 28.911394, 45.205696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.183548, 28.727386, 45.157879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073022, -0.379351, 0.922367,
		-0.469658, -0.802791, -0.367353,
		0.879823, -0.460021, -0.119544,
		32.447495, 28.589380, 45.122017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.736830, 28.203634, 45.229591>,  <31.831617, 28.911394, 45.205696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.736830, 28.203634, 45.229591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.119572, 28.259846, 45.331318>,  <32.349216, 28.293571, 45.392353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.119572, 28.259846, 45.331318>,  <31.736830, 28.203634, 45.229591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.119572, 28.259846, 45.331318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178956, -0.404543, 0.896839,
		0.228914, -0.903657, -0.361942,
		0.956856, 0.140527, 0.254321,
		32.406628, 28.302004, 45.407616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.860840, 27.722450, 45.637691>,  <31.736830, 28.203634, 45.229591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.860840, 27.722450, 45.637691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.172398, 27.957170, 45.726223>,  <32.359333, 28.098003, 45.779343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.172398, 27.957170, 45.726223>,  <31.860840, 27.722450, 45.637691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.172398, 27.957170, 45.726223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164834, -0.148966, 0.975007,
		0.605108, -0.795909, -0.019304,
		0.778893, 0.586803, 0.221333,
		32.406067, 28.133211, 45.792622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.375774, 27.345545, 46.144680>,  <31.860840, 27.722450, 45.637691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.375774, 27.345545, 46.144680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.431580, 27.741194, 46.163319>,  <32.465061, 27.978584, 46.174500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.431580, 27.741194, 46.163319>,  <32.375774, 27.345545, 46.144680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.431580, 27.741194, 46.163319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034649, -0.042149, 0.998510,
		0.989614, -0.140917, 0.028392,
		0.139510, 0.989124, 0.046594,
		32.473434, 28.037931, 46.177296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.915718, 27.589655, 46.593689>,  <32.375774, 27.345545, 46.144680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.915718, 27.589655, 46.593689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.649460, 27.888107, 46.599327>,  <32.489704, 28.067179, 46.602711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.649460, 27.888107, 46.599327>,  <32.915718, 27.589655, 46.593689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.649460, 27.888107, 46.599327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014768, -0.005717, 0.999875,
		0.746119, 0.665773, -0.007213,
		-0.665649, 0.746132, 0.014098,
		32.449764, 28.111946, 46.603558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.148083, 27.975006, 47.185974>,  <32.915718, 27.589655, 46.593689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.148083, 27.975006, 47.185974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.797157, 28.146059, 47.098850>,  <32.586601, 28.248692, 47.046574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.797157, 28.146059, 47.098850>,  <33.148083, 27.975006, 47.185974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.797157, 28.146059, 47.098850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113915, 0.255326, 0.960121,
		0.466193, 0.867144, -0.175288,
		-0.877318, 0.427634, -0.217812,
		32.533962, 28.274349, 47.033508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.075073, 28.621132, 47.522850>,  <33.148083, 27.975006, 47.185974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.075073, 28.621132, 47.522850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710270, 28.464407, 47.474312>,  <32.491386, 28.370373, 47.445190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710270, 28.464407, 47.474312>,  <33.075073, 28.621132, 47.522850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.710270, 28.464407, 47.474312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211395, 0.195482, 0.957653,
		-0.351499, 0.899038, -0.261109,
		-0.912009, -0.391812, -0.121341,
		32.436668, 28.346863, 47.437908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.693920, 28.858818, 48.071022>,  <33.075073, 28.621132, 47.522850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.693920, 28.858818, 48.071022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.438358, 28.573971, 47.954617>,  <32.285023, 28.403063, 47.884773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.438358, 28.573971, 47.954617>,  <32.693920, 28.858818, 48.071022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.438358, 28.573971, 47.954617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361791, -0.055701, 0.930594,
		-0.678902, 0.699847, -0.222051,
		-0.638905, -0.712118, -0.291014,
		32.246685, 28.360336, 47.867313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.940187, 29.050751, 48.254700>,  <32.693920, 28.858818, 48.071022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.940187, 29.050751, 48.254700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.994278, 28.656610, 48.213127>,  <32.026733, 28.420126, 48.188183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.994278, 28.656610, 48.213127>,  <31.940187, 29.050751, 48.254700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.994278, 28.656610, 48.213127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274557, -0.138054, 0.951609,
		-0.952015, -0.100148, -0.289203,
		0.135227, -0.985349, -0.103933,
		32.034847, 28.361006, 48.181946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.445723, 28.685265, 48.449173>,  <31.940187, 29.050751, 48.254700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.445723, 28.685265, 48.449173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.764917, 28.448229, 48.493095>,  <31.956434, 28.306007, 48.519447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.764917, 28.448229, 48.493095>,  <31.445723, 28.685265, 48.449173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.764917, 28.448229, 48.493095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164138, -0.038381, 0.985690,
		-0.579896, -0.804589, -0.127894,
		0.797985, -0.592590, 0.109807,
		32.004314, 28.270452, 48.526039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.320288, 27.953884, 48.815250>,  <31.445723, 28.685265, 48.449173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.320288, 27.953884, 48.815250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.660542, 28.158930, 48.861984>,  <31.864693, 28.281958, 48.890026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.660542, 28.158930, 48.861984>,  <31.320288, 27.953884, 48.815250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.660542, 28.158930, 48.861984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218553, 0.142645, 0.965343,
		0.478183, -0.846687, 0.233372,
		0.850633, 0.512615, 0.116835,
		31.915731, 28.312714, 48.897034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.752331, 27.564106, 49.247013>,  <31.320288, 27.953884, 48.815250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.752331, 27.564106, 49.247013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.747017, 27.963602, 49.266380>,  <31.743828, 28.203299, 49.278000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.747017, 27.963602, 49.266380>,  <31.752331, 27.564106, 49.247013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.747017, 27.963602, 49.266380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455913, -0.049146, 0.888666,
		0.889925, -0.010270, 0.455991,
		-0.013284, 0.998739, 0.048418,
		31.743032, 28.263224, 49.280907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.680326, 27.278700, 49.903561>,  <31.752331, 27.564106, 49.247013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.680326, 27.278700, 49.903561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.034733, 27.463894, 49.913509>,  <32.247375, 27.575010, 49.919479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.034733, 27.463894, 49.913509>,  <31.680326, 27.278700, 49.903561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.034733, 27.463894, 49.913509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330300, 0.592641, 0.734628,
		0.325385, -0.659107, 0.678014,
		0.886017, 0.462985, 0.024867,
		32.300537, 27.602789, 49.920971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.872360, 27.123873, 50.553692>,  <31.680326, 27.278700, 49.903561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.872360, 27.123873, 50.553692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.036686, 27.454071, 50.398884>,  <32.135281, 27.652191, 50.306000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.036686, 27.454071, 50.398884>,  <31.872360, 27.123873, 50.553692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.036686, 27.454071, 50.398884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341815, 0.532988, 0.774006,
		0.845217, -0.185685, 0.501128,
		0.410816, 0.825496, -0.387021,
		32.159931, 27.701719, 50.282776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.056400, 26.528458, 50.811230>,  <31.872360, 27.123873, 50.553692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.056400, 26.528458, 50.811230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.343262, 26.781246, 50.693726>,  <32.515381, 26.932920, 50.623222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.343262, 26.781246, 50.693726>,  <32.056400, 26.528458, 50.811230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.343262, 26.781246, 50.693726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376522, -0.706059, -0.599759,
		-0.586443, 0.319515, -0.744308,
		0.717158, 0.631973, -0.293759,
		32.558411, 26.970839, 50.605598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.217426, 26.466917, 50.124645>,  <32.056400, 26.528458, 50.811230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.217426, 26.466917, 50.124645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.565334, 26.594967, 50.274857>,  <32.774078, 26.671797, 50.364983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.565334, 26.594967, 50.274857>,  <32.217426, 26.466917, 50.124645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.565334, 26.594967, 50.274857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459628, -0.802493, -0.380457,
		0.179569, 0.503515, -0.845120,
		0.869768, 0.320123, 0.375532,
		32.826263, 26.691004, 50.387516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.599281, 26.573116, 49.581715>,  <32.217426, 26.466917, 50.124645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.599281, 26.573116, 49.581715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.818665, 26.472525, 49.900703>,  <32.950294, 26.412170, 50.092094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.818665, 26.472525, 49.900703>,  <32.599281, 26.573116, 49.581715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.818665, 26.472525, 49.900703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202641, -0.885302, -0.418542,
		0.811256, 0.391151, -0.434587,
		0.548453, -0.251479, 0.797469,
		32.983200, 26.397081, 50.139946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.613865, 26.201822, 48.861740>,  <32.599281, 26.573116, 49.581715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.613865, 26.201822, 48.861740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.648205, 25.851276, 48.672165>,  <32.668808, 25.640949, 48.558422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.648205, 25.851276, 48.672165>,  <32.613865, 26.201822, 48.861740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.648205, 25.851276, 48.672165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448412, 0.458776, -0.767106,
		0.889694, -0.146660, 0.432360,
		0.085853, -0.876365, -0.473934,
		32.673962, 25.588367, 48.529984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.323353, 25.992878, 48.678532>,  <32.613865, 26.201822, 48.861740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.323353, 25.992878, 48.678532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.086720, 25.822330, 48.404819>,  <32.944740, 25.720003, 48.240593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.086720, 25.822330, 48.404819>,  <33.323353, 25.992878, 48.678532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.086720, 25.822330, 48.404819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624176, 0.295019, -0.723441,
		0.510328, -0.855087, 0.091601,
		-0.591581, -0.426368, -0.684282,
		32.909245, 25.694420, 48.199535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.783978, 25.495518, 48.263493>,  <33.323353, 25.992878, 48.678532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.783978, 25.495518, 48.263493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.445187, 25.611710, 48.085388>,  <33.241913, 25.681425, 47.978523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.445187, 25.611710, 48.085388>,  <33.783978, 25.495518, 48.263493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.445187, 25.611710, 48.085388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531146, 0.426390, -0.732172,
		-0.022823, -0.856630, -0.515427,
		-0.846973, 0.290477, -0.445264,
		33.191093, 25.698853, 47.951809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.690788, 25.236631, 47.602108>,  <33.783978, 25.495518, 48.263493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.690788, 25.236631, 47.602108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.545395, 25.608171, 47.630718>,  <33.458160, 25.831097, 47.647884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.545395, 25.608171, 47.630718>,  <33.690788, 25.236631, 47.602108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.545395, 25.608171, 47.630718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487400, 0.255039, -0.835102,
		-0.793929, -0.268680, -0.545424,
		-0.363480, 0.928852, 0.071528,
		33.436352, 25.886827, 47.652176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.436073, 25.412794, 46.952141>,  <33.690788, 25.236631, 47.602108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.436073, 25.412794, 46.952141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.497082, 25.763304, 47.134953>,  <33.533688, 25.973610, 47.244640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.497082, 25.763304, 47.134953>,  <33.436073, 25.412794, 46.952141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.497082, 25.763304, 47.134953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283751, 0.404146, -0.869570,
		-0.946690, 0.262314, -0.187002,
		0.152524, 0.876275, 0.457032,
		33.542839, 26.026186, 47.272060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.987400, 25.894060, 46.650150>,  <33.436073, 25.412794, 46.952141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.987400, 25.894060, 46.650150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.312038, 26.077919, 46.794395>,  <33.506821, 26.188234, 46.880943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.312038, 26.077919, 46.794395>,  <32.987400, 25.894060, 46.650150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.312038, 26.077919, 46.794395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221909, 0.328455, -0.918081,
		-0.540439, 0.825131, 0.164571,
		0.811592, 0.459648, 0.360614,
		33.555515, 26.215813, 46.902580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.167110, 26.384104, 46.098881>,  <32.987400, 25.894060, 46.650150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.167110, 26.384104, 46.098881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.492439, 26.449072, 46.322353>,  <33.687637, 26.488052, 46.456436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.492439, 26.449072, 46.322353>,  <33.167110, 26.384104, 46.098881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.492439, 26.449072, 46.322353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430029, 0.478971, -0.765285,
		-0.391890, 0.862674, 0.319712,
		0.813324, 0.162422, 0.558679,
		33.736435, 26.497799, 46.489956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.337837, 27.149012, 46.027390>,  <33.167110, 26.384104, 46.098881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.337837, 27.149012, 46.027390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.665939, 26.960754, 46.157421>,  <33.862801, 26.847801, 46.235439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.665939, 26.960754, 46.157421>,  <33.337837, 27.149012, 46.027390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.665939, 26.960754, 46.157421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570010, 0.625274, -0.533030,
		0.047604, 0.622519, 0.781155,
		0.820257, -0.470641, 0.325077,
		33.912018, 26.819563, 46.254944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.890820, 27.699406, 46.107483>,  <33.337837, 27.149012, 46.027390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.890820, 27.699406, 46.107483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.080254, 27.353167, 46.042416>,  <34.193913, 27.145424, 46.003376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.080254, 27.353167, 46.042416>,  <33.890820, 27.699406, 46.107483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.080254, 27.353167, 46.042416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486496, 0.411050, -0.770947,
		0.734195, 0.285968, 0.615776,
		0.473581, -0.865598, -0.162668,
		34.222328, 27.093487, 45.993614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.511765, 27.920139, 46.032753>,  <33.890820, 27.699406, 46.107483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.511765, 27.920139, 46.032753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.559155, 27.559008, 45.867413>,  <34.587589, 27.342329, 45.768208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.559155, 27.559008, 45.867413>,  <34.511765, 27.920139, 46.032753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.559155, 27.559008, 45.867413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621775, 0.392021, -0.678023,
		0.774183, -0.176680, 0.607804,
		0.118479, -0.902831, -0.413351,
		34.594700, 27.288158, 45.743408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.212273, 27.825811, 46.041904>,  <34.511765, 27.920139, 46.032753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.212273, 27.825811, 46.041904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.033432, 27.607849, 45.758163>,  <34.926128, 27.477072, 45.587921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.033432, 27.607849, 45.758163>,  <35.212273, 27.825811, 46.041904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.033432, 27.607849, 45.758163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747956, 0.207176, -0.630587,
		0.490570, -0.812500, 0.314936,
		-0.447105, -0.544905, -0.709349,
		34.899300, 27.444378, 45.545361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.694118, 27.484571, 45.773209>,  <35.212273, 27.825811, 46.041904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.694118, 27.484571, 45.773209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.416416, 27.446465, 45.487850>,  <35.249794, 27.423601, 45.316635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.416416, 27.446465, 45.487850>,  <35.694118, 27.484571, 45.773209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.416416, 27.446465, 45.487850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637560, 0.378524, -0.670996,
		0.333959, -0.920676, -0.202057,
		-0.694254, -0.095262, -0.713398,
		35.208141, 27.417885, 45.273830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.170380, 27.244543, 45.145454>,  <35.694118, 27.484571, 45.773209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.170380, 27.244543, 45.145454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.816090, 27.376286, 45.014599>,  <35.603516, 27.455332, 44.936085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.816090, 27.376286, 45.014599>,  <36.170380, 27.244543, 45.145454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.816090, 27.376286, 45.014599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439880, 0.370294, -0.818161,
		-0.148330, -0.868566, -0.472855,
		-0.885722, 0.329358, -0.327139,
		35.550373, 27.475092, 44.916458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.974655, 26.826443, 44.590889>,  <36.170380, 27.244543, 45.145454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.974655, 26.826443, 44.590889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.787567, 27.177042, 44.545292>,  <35.675316, 27.387402, 44.517933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.787567, 27.177042, 44.545292>,  <35.974655, 26.826443, 44.590889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.787567, 27.177042, 44.545292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509853, 0.162194, -0.844833,
		-0.722005, -0.453261, -0.522746,
		-0.467716, 0.876497, -0.113991,
		35.647251, 27.439991, 44.511093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.725311, 26.846207, 43.903301>,  <35.974655, 26.826443, 44.590889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.725311, 26.846207, 43.903301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.750851, 27.225754, 44.026958>,  <35.766174, 27.453482, 44.101154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.750851, 27.225754, 44.026958>,  <35.725311, 26.846207, 43.903301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.750851, 27.225754, 44.026958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382096, 0.262928, -0.885929,
		-0.921914, 0.174689, -0.345772,
		0.063849, 0.948869, 0.309145,
		35.770004, 27.510414, 44.119701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.566830, 27.217531, 43.232464>,  <35.725311, 26.846207, 43.903301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.566830, 27.217531, 43.232464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.758976, 27.465433, 43.480705>,  <35.874264, 27.614174, 43.629650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.758976, 27.465433, 43.480705>,  <35.566830, 27.217531, 43.232464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.758976, 27.465433, 43.480705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443206, 0.439076, -0.781524,
		-0.756849, 0.650471, -0.063765,
		0.480362, 0.619757, 0.620608,
		35.903084, 27.651360, 43.666889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.432201, 27.845764, 43.145004>,  <35.566830, 27.217531, 43.232464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.432201, 27.845764, 43.145004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.784584, 27.905350, 43.324657>,  <35.996014, 27.941101, 43.432449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.784584, 27.905350, 43.324657>,  <35.432201, 27.845764, 43.145004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.784584, 27.905350, 43.324657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325409, 0.498380, -0.803571,
		-0.343543, 0.854065, 0.390577,
		0.880958, 0.148964, 0.449136,
		36.048870, 27.950039, 43.459396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.606937, 28.541157, 43.141972>,  <35.432201, 27.845764, 43.145004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.606937, 28.541157, 43.141972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.958752, 28.355789, 43.185165>,  <36.169842, 28.244568, 43.211082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.958752, 28.355789, 43.185165>,  <35.606937, 28.541157, 43.141972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.958752, 28.355789, 43.185165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383171, 0.555220, -0.738181,
		0.282132, 0.690633, 0.665904,
		0.879535, -0.463419, 0.107985,
		36.222610, 28.216763, 43.217560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.989990, 29.026768, 43.079952>,  <35.606937, 28.541157, 43.141972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.989990, 29.026768, 43.079952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.230804, 28.715425, 43.008717>,  <36.375294, 28.528620, 42.965973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.230804, 28.715425, 43.008717>,  <35.989990, 29.026768, 43.079952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.230804, 28.715425, 43.008717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408823, 0.492072, -0.768589,
		0.685870, 0.389908, 0.614454,
		0.602035, -0.778355, -0.178093,
		36.411415, 28.481918, 42.955288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.496300, 29.406544, 42.792782>,  <35.989990, 29.026768, 43.079952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.496300, 29.406544, 42.792782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.559143, 29.022896, 42.698627>,  <36.596848, 28.792707, 42.642136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.559143, 29.022896, 42.698627>,  <36.496300, 29.406544, 42.792782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.559143, 29.022896, 42.698627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222329, 0.266573, -0.937821,
		0.962230, 0.095007, 0.255121,
		0.157108, -0.959121, -0.235382,
		36.606274, 28.735159, 42.628014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.270607, 29.355976, 42.413044>,  <36.496300, 29.406544, 42.792782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.270607, 29.355976, 42.413044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.025349, 29.058048, 42.307743>,  <36.878193, 28.879292, 42.244564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.025349, 29.058048, 42.307743>,  <37.270607, 29.355976, 42.413044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.025349, 29.058048, 42.307743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251167, 0.132143, -0.958881,
		0.748981, -0.654049, 0.106051,
		-0.613142, -0.744821, -0.263248,
		36.841408, 28.834602, 42.228767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.667896, 28.968975, 41.838066>,  <37.270607, 29.355976, 42.413044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.667896, 28.968975, 41.838066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.288658, 28.843727, 41.815876>,  <37.061115, 28.768578, 41.802563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.288658, 28.843727, 41.815876>,  <37.667896, 28.968975, 41.838066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.288658, 28.843727, 41.815876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052017, 0.019401, -0.998458,
		0.313715, -0.949515, -0.002106,
		-0.948092, -0.313122, -0.055478,
		37.004230, 28.749790, 41.799232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.656322, 28.338163, 41.569866>,  <37.667896, 28.968975, 41.838066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.656322, 28.338163, 41.569866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.300297, 28.496998, 41.480328>,  <37.086681, 28.592299, 41.426605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.300297, 28.496998, 41.480328>,  <37.656322, 28.338163, 41.569866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.300297, 28.496998, 41.480328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179820, -0.145367, -0.972899,
		-0.418867, -0.906195, 0.057982,
		-0.890065, 0.397089, -0.223842,
		37.033276, 28.616125, 41.413174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.396641, 27.997478, 40.956699>,  <37.656322, 28.338163, 41.569866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.396641, 27.997478, 40.956699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.142967, 28.304024, 40.997677>,  <36.990761, 28.487951, 41.022263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.142967, 28.304024, 40.997677>,  <37.396641, 27.997478, 40.956699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.142967, 28.304024, 40.997677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003968, 0.135726, -0.990739,
		-0.773169, -0.627908, -0.089116,
		-0.634188, 0.766362, 0.102447,
		36.952709, 28.533932, 41.028412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.805687, 27.924547, 40.549507>,  <37.396641, 27.997478, 40.956699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.805687, 27.924547, 40.549507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.855705, 28.318386, 40.598385>,  <36.885715, 28.554689, 40.627712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.855705, 28.318386, 40.598385>,  <36.805687, 27.924547, 40.549507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.855705, 28.318386, 40.598385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067747, 0.131350, -0.989018,
		-0.989836, 0.115392, 0.083128,
		0.125044, 0.984597, 0.122197,
		36.893219, 28.613766, 40.635044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.417839, 28.205593, 40.107533>,  <36.805687, 27.924547, 40.549507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.417839, 28.205593, 40.107533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.623512, 28.544746, 40.159245>,  <36.746914, 28.748238, 40.190273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.623512, 28.544746, 40.159245>,  <36.417839, 28.205593, 40.107533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.623512, 28.544746, 40.159245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179233, 0.253631, -0.950551,
		-0.838746, 0.465582, 0.282381,
		0.514180, 0.847882, 0.129285,
		36.777767, 28.799110, 40.198029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.063301, 28.717726, 39.647198>,  <36.417839, 28.205593, 40.107533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.063301, 28.717726, 39.647198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.425350, 28.855051, 39.747505>,  <36.642578, 28.937447, 39.807690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.425350, 28.855051, 39.747505>,  <36.063301, 28.717726, 39.647198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.425350, 28.855051, 39.747505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064311, 0.472495, -0.878984,
		-0.420256, 0.811717, 0.405587,
		0.905124, 0.343315, 0.250772,
		36.696888, 28.958046, 39.822735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.089005, 29.384861, 39.371407>,  <36.063301, 28.717726, 39.647198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.089005, 29.384861, 39.371407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.473980, 29.288036, 39.420582>,  <36.704967, 29.229942, 39.450089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.473980, 29.288036, 39.420582>,  <36.089005, 29.384861, 39.371407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.473980, 29.288036, 39.420582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221877, 0.440321, -0.869993,
		0.156458, 0.864595, 0.477490,
		0.962440, -0.242061, 0.122942,
		36.762711, 29.215418, 39.457466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.393288, 29.932007, 39.049633>,  <36.089005, 29.384861, 39.371407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.393288, 29.932007, 39.049633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.674709, 29.648552, 39.071003>,  <36.843563, 29.478479, 39.083824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.674709, 29.648552, 39.071003>,  <36.393288, 29.932007, 39.049633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.674709, 29.648552, 39.071003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387814, 0.319858, -0.864460,
		0.595498, 0.628910, 0.499855,
		0.703550, -0.708635, 0.053425,
		36.885773, 29.435961, 39.087032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.985332, 30.215765, 38.940594>,  <36.393288, 29.932007, 39.049633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.985332, 30.215765, 38.940594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.078571, 29.833052, 38.871040>,  <37.134514, 29.603424, 38.829308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.078571, 29.833052, 38.871040>,  <36.985332, 30.215765, 38.940594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.078571, 29.833052, 38.871040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363628, 0.251595, -0.896925,
		0.901910, 0.145838, 0.406558,
		0.233094, -0.956782, -0.173885,
		37.148499, 29.546017, 38.818874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.614494, 30.215014, 38.591003>,  <36.985332, 30.215765, 38.940594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.614494, 30.215014, 38.591003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.481922, 29.848413, 38.501400>,  <37.402378, 29.628452, 38.447636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.481922, 29.848413, 38.501400>,  <37.614494, 30.215014, 38.591003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.481922, 29.848413, 38.501400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498602, 0.031427, -0.866261,
		0.800970, -0.398794, 0.446554,
		-0.331426, -0.916502, -0.224012,
		37.382496, 29.573463, 38.434196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.144215, 29.805042, 38.423458>,  <37.614494, 30.215014, 38.591003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.144215, 29.805042, 38.423458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.834965, 29.616451, 38.253761>,  <37.649414, 29.503296, 38.151943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.834965, 29.616451, 38.253761>,  <38.144215, 29.805042, 38.423458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.834965, 29.616451, 38.253761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431727, 0.098817, -0.896575,
		0.464639, -0.876324, 0.127153,
		-0.773125, -0.471479, -0.424246,
		37.603027, 29.475008, 38.126488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.445015, 29.400499, 37.759613>,  <38.144215, 29.805042, 38.423458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.445015, 29.400499, 37.759613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.049065, 29.409395, 37.703529>,  <37.811497, 29.414734, 37.669880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.049065, 29.409395, 37.703529>,  <38.445015, 29.400499, 37.759613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.049065, 29.409395, 37.703529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140693, 0.021895, -0.989811,
		-0.018950, -0.999513, -0.024804,
		-0.989872, 0.022246, -0.140209,
		37.752102, 29.416067, 37.661465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.295128, 28.881645, 37.245525>,  <38.445015, 29.400499, 37.759613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.295128, 28.881645, 37.245525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.989384, 29.139246, 37.232731>,  <37.805939, 29.293806, 37.225056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.989384, 29.139246, 37.232731>,  <38.295128, 28.881645, 37.245525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.989384, 29.139246, 37.232731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090128, 0.057592, -0.994264,
		-0.638464, -0.762854, -0.102063,
		-0.764356, 0.644000, -0.031984,
		37.760078, 29.332445, 37.223137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.888317, 28.533863, 36.675209>,  <38.295128, 28.881645, 37.245525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.888317, 28.533863, 36.675209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.735756, 28.899912, 36.727489>,  <37.644218, 29.119541, 36.758858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.735756, 28.899912, 36.727489>,  <37.888317, 28.533863, 36.675209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.735756, 28.899912, 36.727489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052120, 0.119874, -0.991420,
		-0.922939, -0.384940, 0.001976,
		-0.381400, 0.915124, 0.130700,
		37.621334, 29.174450, 36.766701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.226547, 28.665401, 36.277500>,  <37.888317, 28.533863, 36.675209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.226547, 28.665401, 36.277500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.386494, 29.027136, 36.337219>,  <37.482460, 29.244177, 36.373051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.386494, 29.027136, 36.337219>,  <37.226547, 28.665401, 36.277500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.386494, 29.027136, 36.337219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146088, 0.223684, -0.963651,
		-0.904858, 0.363518, 0.221555,
		0.399863, 0.904334, 0.149297,
		37.506451, 29.298435, 36.382008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.725376, 29.084942, 35.900341>,  <37.226547, 28.665401, 36.277500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.725376, 29.084942, 35.900341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.079208, 29.263798, 35.953377>,  <37.291508, 29.371111, 35.985199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.079208, 29.263798, 35.953377>,  <36.725376, 29.084942, 35.900341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.079208, 29.263798, 35.953377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052544, 0.186931, -0.980967,
		-0.463413, 0.874713, 0.141861,
		0.884583, 0.447139, 0.132587,
		37.344582, 29.397940, 35.993153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.669331, 29.589523, 35.420929>,  <36.725376, 29.084942, 35.900341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.669331, 29.589523, 35.420929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.055893, 29.560343, 35.519512>,  <37.287830, 29.542835, 35.578663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.055893, 29.560343, 35.519512>,  <36.669331, 29.589523, 35.420929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.055893, 29.560343, 35.519512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253092, 0.102980, -0.961946,
		0.044793, 0.992005, 0.117983,
		0.966405, -0.072949, 0.246456,
		37.345814, 29.538458, 35.593449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006809, 30.244886, 35.247566>,  <36.669331, 29.589523, 35.420929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.006809, 30.244886, 35.247566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.289661, 29.963961, 35.280373>,  <37.459373, 29.795406, 35.300056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.289661, 29.963961, 35.280373>,  <37.006809, 30.244886, 35.247566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.289661, 29.963961, 35.280373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197414, 0.084718, -0.976653,
		0.678967, 0.706810, 0.198553,
		0.707129, -0.702312, 0.082014,
		37.501801, 29.753267, 35.304977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.501205, 30.481022, 34.948673>,  <37.006809, 30.244886, 35.247566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.501205, 30.481022, 34.948673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.594978, 30.092442, 34.934120>,  <37.651241, 29.859293, 34.925388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.594978, 30.092442, 34.934120>,  <37.501205, 30.481022, 34.948673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.594978, 30.092442, 34.934120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381401, 0.126333, -0.915736,
		0.894189, 0.200806, 0.400130,
		0.234435, -0.971451, -0.036378,
		37.665310, 29.801006, 34.923206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.264019, 30.497160, 34.803326>,  <37.501205, 30.481022, 34.948673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.264019, 30.497160, 34.803326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.116650, 30.140707, 34.697380>,  <38.028229, 29.926836, 34.633812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.116650, 30.140707, 34.697380>,  <38.264019, 30.497160, 34.803326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.116650, 30.140707, 34.697380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502075, 0.049055, -0.863432,
		0.782424, -0.451084, 0.429342,
		-0.368419, -0.891132, -0.264860,
		38.006123, 29.873367, 34.617924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.839703, 30.189051, 34.438774>,  <38.264019, 30.497160, 34.803326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.839703, 30.189051, 34.438774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.500145, 30.009638, 34.326912>,  <38.296410, 29.901991, 34.259796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.500145, 30.009638, 34.326912>,  <38.839703, 30.189051, 34.438774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.500145, 30.009638, 34.326912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296956, 0.032991, -0.954321,
		0.437269, -0.893158, 0.105188,
		-0.848890, -0.448531, -0.279654,
		38.245480, 29.875078, 34.243015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.296272, 30.624357, 34.582623>,  <38.839703, 30.189051, 34.438774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.296272, 30.624357, 34.582623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.678627, 30.642601, 34.698689>,  <39.908039, 30.653547, 34.768330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.678627, 30.642601, 34.698689>,  <39.296272, 30.624357, 34.582623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.678627, 30.642601, 34.698689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080050, -0.910024, 0.406753,
		0.282611, -0.412038, -0.866230,
		0.955889, 0.045611, 0.290167,
		39.965393, 30.656284, 34.785740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.485893, 29.936712, 34.759186>,  <39.296272, 30.624357, 34.582623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.485893, 29.936712, 34.759186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.842548, 30.089451, 34.856487>,  <40.056541, 30.181093, 34.914867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.842548, 30.089451, 34.856487>,  <39.485893, 29.936712, 34.759186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.842548, 30.089451, 34.856487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059233, -0.434279, 0.898829,
		0.448853, -0.815841, -0.364603,
		0.891641, 0.381845, 0.243252,
		40.110039, 30.204004, 34.929462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.798588, 29.399416, 35.157372>,  <39.485893, 29.936712, 34.759186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.798588, 29.399416, 35.157372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.980473, 29.748148, 35.230202>,  <40.089603, 29.957388, 35.273899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.980473, 29.748148, 35.230202>,  <39.798588, 29.399416, 35.157372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.980473, 29.748148, 35.230202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192162, -0.295657, 0.935767,
		0.869663, -0.390513, -0.301971,
		0.454709, 0.871829, 0.182080,
		40.116886, 30.009697, 35.284824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.456173, 29.238945, 35.482430>,  <39.798588, 29.399416, 35.157372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.456173, 29.238945, 35.482430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.358955, 29.609751, 35.596676>,  <40.300625, 29.832233, 35.665222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.358955, 29.609751, 35.596676>,  <40.456173, 29.238945, 35.482430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.358955, 29.609751, 35.596676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261423, -0.220952, 0.939595,
		0.934124, 0.303030, -0.188641,
		-0.243045, 0.927013, 0.285615,
		40.286041, 29.887856, 35.682362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.983185, 29.431477, 36.020302>,  <40.456173, 29.238945, 35.482430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.983185, 29.431477, 36.020302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.643944, 29.637636, 36.069427>,  <40.440399, 29.761332, 36.098904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.643944, 29.637636, 36.069427>,  <40.983185, 29.431477, 36.020302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.643944, 29.637636, 36.069427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113661, -0.049423, 0.992290,
		0.517495, 0.855524, -0.016665,
		-0.848104, 0.515399, 0.122816,
		40.389511, 29.792255, 36.106274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.062851, 29.746889, 36.719036>,  <40.983185, 29.431477, 36.020302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.062851, 29.746889, 36.719036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.678715, 29.821999, 36.636581>,  <40.448235, 29.867064, 36.587109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.678715, 29.821999, 36.636581>,  <41.062851, 29.746889, 36.719036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.678715, 29.821999, 36.636581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189641, 0.102132, 0.976527,
		0.204418, 0.976888, -0.062472,
		-0.960338, 0.187772, -0.206136,
		40.390614, 29.878330, 36.574741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.960217, 30.251169, 37.240215>,  <41.062851, 29.746889, 36.719036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.960217, 30.251169, 37.240215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.618858, 30.109934, 37.086826>,  <40.414043, 30.025192, 36.994793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.618858, 30.109934, 37.086826>,  <40.960217, 30.251169, 37.240215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.618858, 30.109934, 37.086826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343898, -0.171475, 0.923217,
		-0.391735, 0.919741, 0.024908,
		-0.853392, -0.353090, -0.383470,
		40.362843, 30.004007, 36.971786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.524174, 30.476788, 37.677349>,  <40.960217, 30.251169, 37.240215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.524174, 30.476788, 37.677349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.354153, 30.168962, 37.486729>,  <40.252140, 29.984266, 37.372356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.354153, 30.168962, 37.486729>,  <40.524174, 30.476788, 37.677349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.354153, 30.168962, 37.486729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358417, -0.340356, 0.869307,
		-0.831185, 0.540305, -0.131156,
		-0.425051, -0.769564, -0.476553,
		40.226639, 29.938093, 37.343761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.904198, 30.374392, 38.045547>,  <40.524174, 30.476788, 37.677349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.904198, 30.374392, 38.045547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.952980, 30.022038, 37.862610>,  <39.982250, 29.810625, 37.752846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.952980, 30.022038, 37.862610>,  <39.904198, 30.374392, 38.045547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.952980, 30.022038, 37.862610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314587, -0.471336, 0.823940,
		-0.941362, 0.043392, -0.334597,
		0.121956, -0.880886, -0.457348,
		39.989567, 29.757772, 37.725407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.260479, 29.936295, 38.279171>,  <39.904198, 30.374392, 38.045547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.260479, 29.936295, 38.279171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.564888, 29.707176, 38.157356>,  <39.747536, 29.569704, 38.084267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.564888, 29.707176, 38.157356>,  <39.260479, 29.936295, 38.279171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.564888, 29.707176, 38.157356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059291, -0.528896, 0.846613,
		-0.646009, -0.626236, -0.436464,
		0.761023, -0.572798, -0.304541,
		39.793194, 29.535337, 38.065994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.082035, 29.267284, 38.413982>,  <39.260479, 29.936295, 38.279171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.082035, 29.267284, 38.413982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.469845, 29.185093, 38.360626>,  <39.702530, 29.135778, 38.328613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.469845, 29.185093, 38.360626>,  <39.082035, 29.267284, 38.413982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.469845, 29.185093, 38.360626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037404, -0.413969, 0.909522,
		-0.242106, -0.886797, -0.393669,
		0.969529, -0.205476, -0.133394,
		39.760704, 29.123449, 38.320606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.201355, 28.467384, 38.488670>,  <39.082035, 29.267284, 38.413982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.201355, 28.467384, 38.488670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.532940, 28.679689, 38.559227>,  <39.731892, 28.807072, 38.601559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.532940, 28.679689, 38.559227>,  <39.201355, 28.467384, 38.488670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.532940, 28.679689, 38.559227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028064, -0.354446, 0.934655,
		0.558599, -0.769845, -0.308718,
		0.828963, 0.530761, 0.176388,
		39.781628, 28.838917, 38.612144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.568035, 28.041323, 38.907639>,  <39.201355, 28.467384, 38.488670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.568035, 28.041323, 38.907639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.755882, 28.389214, 38.968342>,  <39.868591, 28.597948, 39.004765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.755882, 28.389214, 38.968342>,  <39.568035, 28.041323, 38.907639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.755882, 28.389214, 38.968342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275804, -0.307814, 0.910595,
		0.838682, -0.385780, -0.384431,
		0.469622, 0.869727, 0.151758,
		39.896770, 28.650131, 39.013870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.298092, 27.950891, 39.033192>,  <39.568035, 28.041323, 38.907639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.298092, 27.950891, 39.033192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.218788, 28.299194, 39.213181>,  <40.171204, 28.508177, 39.321175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.218788, 28.299194, 39.213181>,  <40.298092, 27.950891, 39.033192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.218788, 28.299194, 39.213181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420067, -0.339298, 0.841677,
		0.885571, 0.355892, -0.298506,
		-0.198263, 0.870757, 0.449970,
		40.159309, 28.560421, 39.348171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.848034, 28.081717, 39.514053>,  <40.298092, 27.950891, 39.033192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.848034, 28.081717, 39.514053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.553097, 28.325012, 39.631611>,  <40.376137, 28.470989, 39.702145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.553097, 28.325012, 39.631611>,  <40.848034, 28.081717, 39.514053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.553097, 28.325012, 39.631611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166781, -0.257687, 0.951725,
		0.654610, 0.750761, 0.088560,
		-0.737339, 0.608239, 0.293898,
		40.331894, 28.507484, 39.719780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.071041, 28.225471, 40.163322>,  <40.848034, 28.081717, 39.514053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.071041, 28.225471, 40.163322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.690796, 28.349411, 40.170486>,  <40.462646, 28.423775, 40.174786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.690796, 28.349411, 40.170486>,  <41.071041, 28.225471, 40.163322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.690796, 28.349411, 40.170486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003084, -0.048262, 0.998830,
		0.310350, 0.949560, 0.044923,
		-0.950617, 0.309848, 0.017907,
		40.405609, 28.442366, 40.175858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.074196, 28.718246, 40.648304>,  <41.071041, 28.225471, 40.163322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.074196, 28.718246, 40.648304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.697281, 28.596960, 40.591522>,  <40.471130, 28.524189, 40.557453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.697281, 28.596960, 40.591522>,  <41.074196, 28.718246, 40.648304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.697281, 28.596960, 40.591522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156193, 0.023097, 0.987456,
		-0.296134, 0.952642, -0.069124,
		-0.942289, -0.303216, -0.141956,
		40.414593, 28.505995, 40.548935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.621368, 29.132000, 41.098042>,  <41.074196, 28.718246, 40.648304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.621368, 29.132000, 41.098042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.374588, 28.827881, 41.016731>,  <40.226521, 28.645409, 40.967945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.374588, 28.827881, 41.016731>,  <40.621368, 29.132000, 41.098042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.374588, 28.827881, 41.016731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475575, 0.154362, 0.866026,
		-0.627059, 0.630968, -0.456811,
		-0.616949, -0.760297, -0.203279,
		40.189503, 28.599792, 40.955750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.886559, 29.345774, 41.135712>,  <40.621368, 29.132000, 41.098042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.886559, 29.345774, 41.135712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.948818, 28.961761, 41.228760>,  <39.986176, 28.731354, 41.284588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.948818, 28.961761, 41.228760>,  <39.886559, 29.345774, 41.135712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.948818, 28.961761, 41.228760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534217, 0.116274, 0.837312,
		-0.830893, -0.254603, -0.494766,
		0.155654, -0.960030, 0.232624,
		39.995514, 28.673752, 41.298546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.266399, 29.208204, 41.424488>,  <39.886559, 29.345774, 41.135712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.266399, 29.208204, 41.424488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.451397, 28.864904, 41.513489>,  <39.562397, 28.658924, 41.566887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.451397, 28.864904, 41.513489>,  <39.266399, 29.208204, 41.424488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.451397, 28.864904, 41.513489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599285, -0.117661, 0.791842,
		-0.653418, -0.499564, -0.568754,
		0.462496, -0.858249, 0.222499,
		39.590145, 28.607430, 41.580238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.743782, 28.590904, 41.572659>,  <39.266399, 29.208204, 41.424488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.743782, 28.590904, 41.572659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.091087, 28.540064, 41.764477>,  <39.299469, 28.509560, 41.879570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.091087, 28.540064, 41.764477>,  <38.743782, 28.590904, 41.572659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.091087, 28.540064, 41.764477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480867, 0.022141, 0.876514,
		-0.122026, -0.991642, -0.041895,
		0.868261, -0.127103, 0.479550,
		39.351566, 28.501934, 41.908340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.509369, 28.300606, 42.174549>,  <38.743782, 28.590904, 41.572659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.509369, 28.300606, 42.174549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.888142, 28.391157, 42.265831>,  <39.115406, 28.445488, 42.320599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.888142, 28.391157, 42.265831>,  <38.509369, 28.300606, 42.174549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.888142, 28.391157, 42.265831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253789, 0.090834, 0.962985,
		0.197268, -0.969795, 0.143465,
		0.946930, 0.226376, 0.228205,
		39.172222, 28.459070, 42.334293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.707584, 27.811405, 42.761753>,  <38.509369, 28.300606, 42.174549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.707584, 27.811405, 42.761753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.926510, 28.145885, 42.775726>,  <39.057865, 28.346573, 42.784111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.926510, 28.145885, 42.775726>,  <38.707584, 27.811405, 42.761753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.926510, 28.145885, 42.775726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301294, 0.157921, 0.940363,
		0.780815, -0.525196, 0.338374,
		0.547312, 0.836200, 0.034932,
		39.090702, 28.396746, 42.786205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.109684, 27.782307, 43.311771>,  <38.707584, 27.811405, 42.761753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.109684, 27.782307, 43.311771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.102520, 28.178780, 43.259251>,  <39.098221, 28.416662, 43.227737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.102520, 28.178780, 43.259251>,  <39.109684, 27.782307, 43.311771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.102520, 28.178780, 43.259251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237602, 0.123347, 0.963499,
		0.971198, 0.048452, 0.233298,
		-0.017907, 0.991180, -0.131306,
		39.097149, 28.476133, 43.219860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.497471, 28.151815, 43.844822>,  <39.109684, 27.782307, 43.311771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.497471, 28.151815, 43.844822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.239426, 28.416492, 43.691990>,  <39.084599, 28.575298, 43.600292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.239426, 28.416492, 43.691990>,  <39.497471, 28.151815, 43.844822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.239426, 28.416492, 43.691990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304358, 0.236130, 0.922826,
		0.700850, 0.711620, 0.049061,
		-0.645117, 0.661695, -0.382079,
		39.045891, 28.615002, 43.577366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.542694, 28.735247, 44.296310>,  <39.497471, 28.151815, 43.844822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.542694, 28.735247, 44.296310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.217800, 28.835276, 44.085510>,  <39.022861, 28.895292, 43.959030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.217800, 28.835276, 44.085510>,  <39.542694, 28.735247, 44.296310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.217800, 28.835276, 44.085510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423896, 0.367602, 0.827757,
		0.400728, 0.895729, -0.192575,
		-0.812238, 0.250073, -0.527004,
		38.974129, 28.910297, 43.927410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.259541, 29.414553, 44.402657>,  <39.542694, 28.735247, 44.296310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.259541, 29.414553, 44.402657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.925655, 29.241003, 44.267006>,  <38.725323, 29.136873, 44.185616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.925655, 29.241003, 44.267006>,  <39.259541, 29.414553, 44.402657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.925655, 29.241003, 44.267006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481498, 0.276185, 0.831795,
		-0.267233, 0.857598, -0.439445,
		-0.834714, -0.433874, -0.339126,
		38.675240, 29.110840, 44.165268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.660625, 29.875605, 44.643673>,  <39.259541, 29.414553, 44.402657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.660625, 29.875605, 44.643673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.492569, 29.522131, 44.561127>,  <38.391735, 29.310047, 44.511600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.492569, 29.522131, 44.561127>,  <38.660625, 29.875605, 44.643673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.492569, 29.522131, 44.561127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622502, 0.115191, 0.774094,
		-0.660285, 0.453687, -0.598492,
		-0.420137, -0.883685, -0.206362,
		38.366528, 29.257025, 44.499218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.915028, 30.030577, 44.693638>,  <38.660625, 29.875605, 44.643673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.915028, 30.030577, 44.693638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.978527, 29.640837, 44.757446>,  <38.016624, 29.406994, 44.795731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.978527, 29.640837, 44.757446>,  <37.915028, 30.030577, 44.693638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.978527, 29.640837, 44.757446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613146, 0.029346, 0.789424,
		-0.773855, -0.223126, -0.592759,
		0.158746, -0.974347, 0.159519,
		38.026150, 29.348532, 44.805302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.271782, 29.843481, 44.871632>,  <37.915028, 30.030577, 44.693638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.271782, 29.843481, 44.871632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.518486, 29.559055, 45.006687>,  <37.666508, 29.388401, 45.087723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.518486, 29.559055, 45.006687>,  <37.271782, 29.843481, 44.871632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.518486, 29.559055, 45.006687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518423, -0.044160, 0.853983,
		-0.592326, -0.701740, -0.395868,
		0.616756, -0.711063, 0.337641,
		37.703514, 29.345736, 45.107979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.859035, 29.266483, 45.192394>,  <37.271782, 29.843481, 44.871632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.859035, 29.266483, 45.192394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.225368, 29.221922, 45.346714>,  <37.445168, 29.195185, 45.439308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.225368, 29.221922, 45.346714>,  <36.859035, 29.266483, 45.192394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.225368, 29.221922, 45.346714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372275, 0.124647, 0.919714,
		-0.150548, -0.985927, 0.072683,
		0.915831, -0.111403, 0.385801,
		37.500118, 29.188501, 45.462456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.751724, 28.875242, 45.723911>,  <36.859035, 29.266483, 45.192394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.751724, 28.875242, 45.723911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.109287, 29.029440, 45.815399>,  <37.323826, 29.121960, 45.870293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.109287, 29.029440, 45.815399>,  <36.751724, 28.875242, 45.723911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.109287, 29.029440, 45.815399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259403, 0.028764, 0.965341,
		0.365557, -0.922261, 0.125712,
		0.893912, 0.385497, 0.228722,
		37.377460, 29.145088, 45.884014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.031651, 28.509560, 46.350323>,  <36.751724, 28.875242, 45.723911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.031651, 28.509560, 46.350323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.210918, 28.866158, 46.323860>,  <37.318481, 29.080116, 46.307983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.210918, 28.866158, 46.323860>,  <37.031651, 28.509560, 46.350323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.210918, 28.866158, 46.323860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194747, 0.169590, 0.966081,
		0.872477, -0.420087, 0.249622,
		0.448172, 0.891497, -0.066153,
		37.345371, 29.133606, 46.304016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.361248, 28.443373, 46.921116>,  <37.031651, 28.509560, 46.350323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.361248, 28.443373, 46.921116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.339191, 28.834543, 46.840496>,  <37.325958, 29.069244, 46.792122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.339191, 28.834543, 46.840496>,  <37.361248, 28.443373, 46.921116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.339191, 28.834543, 46.840496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086381, 0.205774, 0.974779,
		0.994735, 0.036344, -0.095822,
		-0.055145, 0.977924, -0.201551,
		37.322647, 29.127920, 46.780029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.828541, 28.705940, 47.263840>,  <37.361248, 28.443373, 46.921116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.828541, 28.705940, 47.263840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.602612, 29.031004, 47.206490>,  <37.467052, 29.226042, 47.172077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.602612, 29.031004, 47.206490>,  <37.828541, 28.705940, 47.263840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.602612, 29.031004, 47.206490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020792, 0.187708, 0.982005,
		0.824948, 0.551680, -0.122919,
		-0.564825, 0.812659, -0.143379,
		37.433163, 29.274801, 47.163475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.165737, 29.259710, 47.632061>,  <37.828541, 28.705940, 47.263840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.165737, 29.259710, 47.632061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.784779, 29.373274, 47.587639>,  <37.556202, 29.441412, 47.560986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.784779, 29.373274, 47.587639>,  <38.165737, 29.259710, 47.632061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.784779, 29.373274, 47.587639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043070, 0.235325, 0.970962,
		0.301797, 0.929526, -0.211895,
		-0.952399, 0.283907, -0.111055,
		37.499058, 29.458447, 47.554321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.031090, 29.756939, 48.275059>,  <38.165737, 29.259710, 47.632061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.031090, 29.756939, 48.275059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.663445, 29.750071, 48.117615>,  <37.442856, 29.745949, 48.023148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.663445, 29.750071, 48.117615>,  <38.031090, 29.756939, 48.275059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.663445, 29.750071, 48.117615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325411, 0.596298, 0.733850,
		0.222107, 0.802579, -0.553656,
		-0.919117, -0.017172, -0.393611,
		37.387711, 29.744919, 47.999531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722893, 30.505251, 48.254269>,  <38.031090, 29.756939, 48.275059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.722893, 30.505251, 48.254269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.419628, 30.245396, 48.276768>,  <37.237671, 30.089483, 48.290268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.419628, 30.245396, 48.276768>,  <37.722893, 30.505251, 48.254269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.419628, 30.245396, 48.276768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445943, 0.579497, 0.682142,
		-0.475739, 0.492091, -0.729053,
		-0.758160, -0.649638, 0.056245,
		37.192181, 30.050505, 48.293640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.053268, 30.978146, 48.376259>,  <37.722893, 30.505251, 48.254269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.053268, 30.978146, 48.376259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.963902, 30.604061, 48.486141>,  <36.910282, 30.379610, 48.552071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.963902, 30.604061, 48.486141>,  <37.053268, 30.978146, 48.376259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.963902, 30.604061, 48.486141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603509, 0.354036, 0.714448,
		-0.765415, -0.006165, -0.643508,
		-0.223420, -0.935212, 0.274705,
		36.896877, 30.323498, 48.568554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.512707, 31.410830, 48.331772>,  <37.053268, 30.978146, 48.376259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.512707, 31.410830, 48.331772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.549416, 31.795559, 48.434902>,  <36.571442, 32.026398, 48.496780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.549416, 31.795559, 48.434902>,  <36.512707, 31.410830, 48.331772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.549416, 31.795559, 48.434902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739706, 0.107490, -0.664290,
		-0.666643, 0.251674, -0.701603,
		0.091769, 0.961824, 0.257822,
		36.576946, 32.084106, 48.512249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.297188, 31.829226, 47.815910>,  <36.512707, 31.410830, 48.331772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.297188, 31.829226, 47.815910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.551525, 32.055515, 48.025925>,  <36.704128, 32.191288, 48.151932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.551525, 32.055515, 48.025925>,  <36.297188, 31.829226, 47.815910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.551525, 32.055515, 48.025925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584956, 0.090557, -0.805994,
		-0.503514, 0.819608, -0.273342,
		0.635846, 0.565722, 0.525032,
		36.742279, 32.225231, 48.183434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.434982, 32.513870, 47.521458>,  <36.297188, 31.829226, 47.815910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.434982, 32.513870, 47.521458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.774021, 32.477283, 47.730537>,  <36.977444, 32.455330, 47.855988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.774021, 32.477283, 47.730537>,  <36.434982, 32.513870, 47.521458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.774021, 32.477283, 47.730537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518617, 0.351345, -0.779483,
		-0.112351, 0.931767, 0.345235,
		0.847593, -0.091469, 0.522704,
		37.028297, 32.449844, 47.887348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.809719, 33.049465, 47.278275>,  <36.434982, 32.513870, 47.521458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.809719, 33.049465, 47.278275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.089325, 32.814037, 47.440735>,  <37.257088, 32.672779, 47.538212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.089325, 32.814037, 47.440735>,  <36.809719, 33.049465, 47.278275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.089325, 32.814037, 47.440735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612198, 0.199009, -0.765251,
		0.369580, 0.783567, 0.499434,
		0.699017, -0.588574, 0.406148,
		37.299030, 32.637466, 47.562580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.373310, 33.443794, 47.103870>,  <36.809719, 33.049465, 47.278275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.373310, 33.443794, 47.103870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.512890, 33.085796, 47.215023>,  <37.596638, 32.870998, 47.281715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.512890, 33.085796, 47.215023>,  <37.373310, 33.443794, 47.103870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.512890, 33.085796, 47.215023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714411, 0.062147, -0.696961,
		0.606505, 0.441732, 0.661078,
		0.348954, -0.894992, 0.277886,
		37.617577, 32.817299, 47.298389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.101711, 33.531673, 46.991341>,  <37.373310, 33.443794, 47.103870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.101711, 33.531673, 46.991341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.092407, 33.137650, 47.059597>,  <38.086823, 32.901234, 47.100552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.092407, 33.137650, 47.059597>,  <38.101711, 33.531673, 46.991341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.092407, 33.137650, 47.059597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844503, -0.110713, -0.523982,
		0.535045, 0.131917, 0.834461,
		-0.023264, -0.985059, 0.170640,
		38.085426, 32.842133, 47.110790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.818367, 33.329643, 47.068230>,  <38.101711, 33.531673, 46.991341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.818367, 33.329643, 47.068230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.596478, 33.015984, 46.956947>,  <38.463345, 32.827789, 46.890179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.596478, 33.015984, 46.956947>,  <38.818367, 33.329643, 47.068230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.596478, 33.015984, 46.956947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732605, -0.301809, -0.610083,
		0.394432, -0.542238, 0.741891,
		-0.554719, -0.784149, -0.278203,
		38.430061, 32.780739, 46.873486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.188648, 32.674686, 47.050308>,  <38.818367, 33.329643, 47.068230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.188648, 32.674686, 47.050308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.876320, 32.576275, 46.820599>,  <38.688923, 32.517227, 46.682774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.876320, 32.576275, 46.820599>,  <39.188648, 32.674686, 47.050308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.876320, 32.576275, 46.820599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624688, -0.320980, -0.711855,
		-0.009195, -0.914572, 0.404318,
		-0.780820, -0.246027, -0.574273,
		38.642075, 32.502468, 46.648315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.225857, 31.954201, 46.856388>,  <39.188648, 32.674686, 47.050308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.225857, 31.954201, 46.856388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.979607, 32.119701, 46.588116>,  <38.831856, 32.219002, 46.427155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.979607, 32.119701, 46.588116>,  <39.225857, 31.954201, 46.856388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.979607, 32.119701, 46.588116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547753, -0.387187, -0.741655,
		-0.566540, -0.823951, 0.011729,
		-0.615628, 0.413753, -0.670679,
		38.794918, 32.243828, 46.386913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.093334, 31.386101, 46.357262>,  <39.225857, 31.954201, 46.856388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.093334, 31.386101, 46.357262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.024654, 31.731142, 46.166924>,  <38.983448, 31.938168, 46.052719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.024654, 31.731142, 46.166924>,  <39.093334, 31.386101, 46.357262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.024654, 31.731142, 46.166924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481910, -0.347743, -0.804262,
		-0.859234, -0.367405, -0.355993,
		-0.171696, 0.862606, -0.475848,
		38.973145, 31.989923, 46.024170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940651, 31.246201, 45.650818>,  <39.093334, 31.386101, 46.357262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.940651, 31.246201, 45.650818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.992413, 31.641937, 45.624096>,  <39.023468, 31.879379, 45.608063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.992413, 31.641937, 45.624096>,  <38.940651, 31.246201, 45.650818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.992413, 31.641937, 45.624096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526327, -0.125624, -0.840951,
		-0.840378, 0.073661, -0.536972,
		0.129402, 0.989339, -0.066802,
		39.031235, 31.938740, 45.604053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.576801, 31.475687, 45.102852>,  <38.940651, 31.246201, 45.650818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.576801, 31.475687, 45.102852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.877167, 31.737026, 45.141357>,  <39.057384, 31.893829, 45.164459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.877167, 31.737026, 45.141357>,  <38.576801, 31.475687, 45.102852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.877167, 31.737026, 45.141357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281476, -0.184778, -0.941609,
		-0.597412, 0.734161, -0.322654,
		0.750912, 0.653349, 0.096261,
		39.102440, 31.933031, 45.170235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.532223, 31.998972, 44.543800>,  <38.576801, 31.475687, 45.102852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.532223, 31.998972, 44.543800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.917427, 32.022717, 44.648937>,  <39.148548, 32.036964, 44.712021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.917427, 32.022717, 44.648937>,  <38.532223, 31.998972, 44.543800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.917427, 32.022717, 44.648937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268515, -0.129680, -0.954507,
		-0.022578, 0.989777, -0.140823,
		0.963011, 0.059364, 0.262842,
		39.206329, 32.040527, 44.727791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.816895, 32.417622, 44.060551>,  <38.532223, 31.998972, 44.543800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.816895, 32.417622, 44.060551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.125355, 32.224159, 44.226154>,  <39.310432, 32.108082, 44.325516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.125355, 32.224159, 44.226154>,  <38.816895, 32.417622, 44.060551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.125355, 32.224159, 44.226154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369519, -0.189522, -0.909691,
		0.518444, 0.854491, 0.032572,
		0.771150, -0.483659, 0.414007,
		39.356701, 32.079060, 44.350357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.453327, 32.739719, 43.717880>,  <38.816895, 32.417622, 44.060551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.453327, 32.739719, 43.717880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.623619, 32.445946, 43.929298>,  <39.725792, 32.269680, 44.056149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.623619, 32.445946, 43.929298>,  <39.453327, 32.739719, 43.717880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.623619, 32.445946, 43.929298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555812, -0.248683, -0.793240,
		0.714024, 0.631477, 0.302337,
		0.425726, -0.734435, 0.528548,
		39.751335, 32.225616, 44.087864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.255615, 32.768696, 43.751266>,  <39.453327, 32.739719, 43.717880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.255615, 32.768696, 43.751266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.132397, 32.388374, 43.764454>,  <40.058468, 32.160183, 43.772366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.132397, 32.388374, 43.764454>,  <40.255615, 32.768696, 43.751266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.132397, 32.388374, 43.764454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521302, -0.197675, -0.830162,
		0.795835, -0.238542, 0.556547,
		-0.308044, -0.950801, 0.032965,
		40.039982, 32.103134, 43.774342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.761841, 32.411556, 43.571419>,  <40.255615, 32.768696, 43.751266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.761841, 32.411556, 43.571419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.460220, 32.157761, 43.503502>,  <40.279247, 32.005482, 43.462753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.460220, 32.157761, 43.503502>,  <40.761841, 32.411556, 43.571419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.460220, 32.157761, 43.503502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376701, -0.206008, -0.903138,
		0.538055, -0.744971, 0.394354,
		-0.754051, -0.634491, -0.169788,
		40.234005, 31.967413, 43.452564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.117065, 31.856810, 43.096600>,  <40.761841, 32.411556, 43.571419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.117065, 31.856810, 43.096600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.726250, 31.800386, 43.032726>,  <40.491760, 31.766533, 42.994404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.726250, 31.800386, 43.032726>,  <41.117065, 31.856810, 43.096600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.726250, 31.800386, 43.032726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203607, -0.397339, -0.894800,
		0.062769, -0.906766, 0.416935,
		-0.977039, -0.141057, -0.159684,
		40.433140, 31.758070, 42.984821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.140423, 31.149950, 42.861855>,  <41.117065, 31.856810, 43.096600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.140423, 31.149950, 42.861855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.795784, 31.321966, 42.753994>,  <40.589001, 31.425177, 42.689278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.795784, 31.321966, 42.753994>,  <41.140423, 31.149950, 42.861855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.795784, 31.321966, 42.753994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016439, -0.507324, -0.861599,
		-0.507324, -0.746785, 0.430040,
		0.861599, -0.430040, 0.269654,
		40.537304, 31.450977, 42.673100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.767570, 30.598269, 42.588921>,  <41.140423, 31.149950, 42.861855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.767570, 30.598269, 42.588921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.598282, 30.924225, 42.430508>,  <40.496708, 31.119799, 42.335461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.598282, 30.924225, 42.430508>,  <40.767570, 30.598269, 42.588921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.598282, 30.924225, 42.430508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025563, -0.426196, -0.904269,
		-0.905668, -0.392826, 0.159543,
		-0.423217, 0.814889, -0.396034,
		40.471317, 31.168692, 42.311699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.209385, 30.385004, 42.108959>,  <40.767570, 30.598269, 42.588921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.209385, 30.385004, 42.108959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.330624, 30.749773, 41.998302>,  <40.403366, 30.968634, 41.931908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.330624, 30.749773, 41.998302>,  <40.209385, 30.385004, 42.108959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.330624, 30.749773, 41.998302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078835, -0.265306, -0.960936,
		-0.949692, 0.313069, -0.008523,
		0.303101, 0.911921, -0.276640,
		40.421555, 31.023350, 41.915310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.857861, 30.450924, 41.539539>,  <40.209385, 30.385004, 42.108959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.857861, 30.450924, 41.539539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.104527, 30.762697, 41.495350>,  <40.252525, 30.949762, 41.468838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.104527, 30.762697, 41.495350>,  <39.857861, 30.450924, 41.539539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.104527, 30.762697, 41.495350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004334, -0.136966, -0.990566,
		-0.787212, 0.611328, -0.081084,
		0.616667, 0.779434, -0.110471,
		40.289528, 30.996527, 41.462208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.499607, 30.911415, 41.014790>,  <39.857861, 30.450924, 41.539539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.499607, 30.911415, 41.014790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.890652, 30.994837, 41.003643>,  <40.125278, 31.044889, 40.996956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.890652, 30.994837, 41.003643>,  <39.499607, 30.911415, 41.014790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.890652, 30.994837, 41.003643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030872, 0.011162, -0.999461,
		-0.208129, 0.977947, 0.017350,
		0.977614, 0.208552, -0.027868,
		40.183937, 31.057402, 40.995281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.568192, 31.564665, 40.664570>,  <39.499607, 30.911415, 41.014790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.568192, 31.564665, 40.664570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.920864, 31.376707, 40.647411>,  <40.132469, 31.263933, 40.637115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.920864, 31.376707, 40.647411>,  <39.568192, 31.564665, 40.664570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.920864, 31.376707, 40.647411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065388, 0.211702, -0.975144,
		0.467294, 0.856962, 0.217378,
		0.881681, -0.469893, -0.042892,
		40.185368, 31.235739, 40.634544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.853970, 31.980898, 40.312607>,  <39.568192, 31.564665, 40.664570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.853970, 31.980898, 40.312607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.113583, 31.679180, 40.273026>,  <40.269352, 31.498150, 40.249279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.113583, 31.679180, 40.273026>,  <39.853970, 31.980898, 40.312607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.113583, 31.679180, 40.273026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180681, 0.279182, -0.943086,
		0.738992, 0.594217, 0.317486,
		0.649034, -0.754297, -0.098950,
		40.308292, 31.452890, 40.243340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.470085, 32.267200, 40.040798>,  <39.853970, 31.980898, 40.312607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.470085, 32.267200, 40.040798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.489376, 31.883190, 39.930504>,  <40.500950, 31.652784, 39.864326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.489376, 31.883190, 39.930504>,  <40.470085, 32.267200, 40.040798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.489376, 31.883190, 39.930504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391336, 0.272153, -0.879084,
		0.918983, -0.065510, 0.388816,
		0.048229, -0.960021, -0.275740,
		40.503845, 31.595184, 39.847782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.077381, 32.192604, 39.654552>,  <40.470085, 32.267200, 40.040798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.077381, 32.192604, 39.654552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.921597, 31.843176, 39.537796>,  <40.828125, 31.633520, 39.467743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.921597, 31.843176, 39.537796>,  <41.077381, 32.192604, 39.654552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.921597, 31.843176, 39.537796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412133, 0.118127, -0.903434,
		0.823691, -0.472148, 0.314021,
		-0.389460, -0.873569, -0.291888,
		40.804760, 31.581106, 39.450230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.643852, 31.758814, 39.292904>,  <41.077381, 32.192604, 39.654552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.643852, 31.758814, 39.292904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.282543, 31.635263, 39.173782>,  <41.065758, 31.561132, 39.102310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.282543, 31.635263, 39.173782>,  <41.643852, 31.758814, 39.292904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.282543, 31.635263, 39.173782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268573, 0.134260, -0.953857,
		0.334609, -0.941578, -0.038317,
		-0.903275, -0.308879, -0.297807,
		41.011562, 31.542601, 39.084438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.770943, 31.234940, 38.803696>,  <41.643852, 31.758814, 39.292904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.770943, 31.234940, 38.803696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.406570, 31.392242, 38.753796>,  <41.187946, 31.486624, 38.723854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.406570, 31.392242, 38.753796>,  <41.770943, 31.234940, 38.803696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.406570, 31.392242, 38.753796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235351, 0.246960, -0.940011,
		-0.338857, -0.885641, -0.317516,
		-0.910926, 0.393257, -0.124752,
		41.133293, 31.510220, 38.716370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.585667, 30.930237, 38.161274>,  <41.770943, 31.234940, 38.803696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.585667, 30.930237, 38.161274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.345341, 31.237545, 38.249622>,  <41.201145, 31.421930, 38.302631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.345341, 31.237545, 38.249622>,  <41.585667, 30.930237, 38.161274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.345341, 31.237545, 38.249622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043537, 0.307338, -0.950604,
		-0.798203, -0.561519, -0.218101,
		-0.600813, 0.768271, 0.220871,
		41.165096, 31.468027, 38.315884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.211571, 30.939766, 37.622868>,  <41.585667, 30.930237, 38.161274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.211571, 30.939766, 37.622868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.175255, 31.308264, 37.774162>,  <41.153465, 31.529364, 37.864941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.175255, 31.308264, 37.774162>,  <41.211571, 30.939766, 37.622868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.175255, 31.308264, 37.774162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238525, 0.388867, -0.889881,
		-0.966883, 0.009426, -0.255046,
		-0.090792, 0.921245, 0.378238,
		41.148018, 31.584637, 37.887634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.723927, 31.377235, 37.089718>,  <41.211571, 30.939766, 37.622868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.723927, 31.377235, 37.089718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.896835, 31.648102, 37.327908>,  <41.000580, 31.810621, 37.470821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.896835, 31.648102, 37.327908>,  <40.723927, 31.377235, 37.089718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.896835, 31.648102, 37.327908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305618, 0.511257, -0.803252,
		-0.848375, 0.529209, 0.014046,
		0.432270, 0.677166, 0.595474,
		41.026516, 31.851252, 37.506550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.439079, 32.058338, 36.813446>,  <40.723927, 31.377235, 37.089718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.439079, 32.058338, 36.813446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.748413, 32.162903, 37.044483>,  <40.934013, 32.225639, 37.183105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.748413, 32.162903, 37.044483>,  <40.439079, 32.058338, 36.813446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.748413, 32.162903, 37.044483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239176, 0.723432, -0.647642,
		-0.587150, 0.638992, 0.496934,
		0.773337, 0.261409, 0.577595,
		40.980415, 32.241325, 37.217762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.313431, 32.719475, 37.057190>,  <40.439079, 32.058338, 36.813446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.313431, 32.719475, 37.057190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.706127, 32.647209, 37.033352>,  <40.941746, 32.603848, 37.019051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.706127, 32.647209, 37.033352>,  <40.313431, 32.719475, 37.057190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.706127, 32.647209, 37.033352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085279, 0.697953, -0.711048,
		0.170057, 0.692980, 0.700613,
		0.981737, -0.180666, -0.059595,
		41.000648, 32.593010, 37.015472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.629501, 33.453049, 36.951061>,  <40.313431, 32.719475, 37.057190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.629501, 33.453049, 36.951061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.929977, 33.200703, 36.873367>,  <41.110264, 33.049297, 36.826752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.929977, 33.200703, 36.873367>,  <40.629501, 33.453049, 36.951061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.929977, 33.200703, 36.873367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364915, 0.642095, -0.674204,
		0.550044, 0.435577, 0.712547,
		0.751191, -0.630861, -0.194232,
		41.155334, 33.011444, 36.815098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.173298, 33.885723, 36.953518>,  <40.629501, 33.453049, 36.951061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.173298, 33.885723, 36.953518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.289986, 33.564590, 36.745533>,  <41.360001, 33.371910, 36.620743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.289986, 33.564590, 36.745533>,  <41.173298, 33.885723, 36.953518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.289986, 33.564590, 36.745533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334860, 0.594923, -0.730708,
		0.895973, 0.039050, 0.442389,
		0.291722, -0.802833, -0.519959,
		41.377502, 33.323742, 36.589546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.884190, 33.910484, 36.795670>,  <41.173298, 33.885723, 36.953518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.884190, 33.910484, 36.795670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.714138, 33.691742, 36.507168>,  <41.612106, 33.560497, 36.334064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.714138, 33.691742, 36.507168>,  <41.884190, 33.910484, 36.795670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.714138, 33.691742, 36.507168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401158, 0.600477, -0.691737,
		0.811379, -0.583416, -0.035905,
		-0.425131, -0.546857, -0.721256,
		41.586597, 33.527683, 36.290791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.367847, 33.865406, 36.218239>,  <41.884190, 33.910484, 36.795670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.367847, 33.865406, 36.218239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.012890, 33.758720, 36.067829>,  <41.799915, 33.694710, 35.977581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.012890, 33.758720, 36.067829>,  <42.367847, 33.865406, 36.218239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.012890, 33.758720, 36.067829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160449, 0.585980, -0.794282,
		0.432190, -0.765174, -0.477202,
		-0.887394, -0.266714, -0.376026,
		41.746674, 33.678707, 35.955021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.504978, 33.672478, 35.539070>,  <42.367847, 33.865406, 36.218239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.504978, 33.672478, 35.539070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.115665, 33.763088, 35.524033>,  <41.882080, 33.817455, 35.515011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.115665, 33.763088, 35.524033>,  <42.504978, 33.672478, 35.539070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.115665, 33.763088, 35.524033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159264, 0.547983, -0.821188,
		-0.165422, -0.805232, -0.569419,
		-0.973278, 0.226531, -0.037596,
		41.823681, 33.831047, 35.512753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.224072, 33.491295, 34.855198>,  <42.504978, 33.672478, 35.539070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.224072, 33.491295, 34.855198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.988609, 33.771267, 35.016979>,  <41.847332, 33.939251, 35.114048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.988609, 33.771267, 35.016979>,  <42.224072, 33.491295, 34.855198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.988609, 33.771267, 35.016979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137726, 0.579849, -0.802998,
		-0.796563, -0.416988, -0.437731,
		-0.588659, 0.699926, 0.404456,
		41.812012, 33.981243, 35.138317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.705837, 33.777107, 34.359043>,  <42.224072, 33.491295, 34.855198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.705837, 33.777107, 34.359043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.796890, 34.054882, 34.632080>,  <41.851521, 34.221546, 34.795902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.796890, 34.054882, 34.632080>,  <41.705837, 33.777107, 34.359043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.796890, 34.054882, 34.632080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006112, 0.702003, -0.712148,
		-0.973729, 0.157934, 0.164041,
		0.227630, 0.694441, 0.682595,
		41.865181, 34.263214, 34.836857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.300228, 34.333920, 34.404114>,  <41.705837, 33.777107, 34.359043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.300228, 34.333920, 34.404114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.660355, 34.461727, 34.522327>,  <41.876431, 34.538410, 34.593258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.660355, 34.461727, 34.522327>,  <41.300228, 34.333920, 34.404114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.660355, 34.461727, 34.522327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082641, 0.541170, -0.836843,
		-0.427323, 0.777845, 0.460817,
		0.900314, 0.319519, 0.295536,
		41.930450, 34.557583, 34.610989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.476002, 35.132675, 34.611553>,  <41.300228, 34.333920, 34.404114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.476002, 35.132675, 34.611553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.783916, 34.930923, 34.455078>,  <41.968666, 34.809872, 34.361195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.783916, 34.930923, 34.455078>,  <41.476002, 35.132675, 34.611553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.783916, 34.930923, 34.455078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144889, 0.734938, -0.662475,
		0.621637, 0.453287, 0.638826,
		0.769789, -0.504378, -0.391188,
		42.014854, 34.779610, 34.337723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.031300, 35.573917, 34.400471>,  <41.476002, 35.132675, 34.611553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.031300, 35.573917, 34.400471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.303493, 35.553284, 34.108093>,  <42.466808, 35.540905, 33.932667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.303493, 35.553284, 34.108093>,  <42.031300, 35.573917, 34.400471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.303493, 35.553284, 34.108093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630948, 0.548504, 0.548679,
		0.372622, -0.834555, 0.405796,
		0.680483, -0.051586, -0.730946,
		42.507637, 35.537807, 33.888809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.623627, 35.222992, 34.720184>,  <42.031300, 35.573917, 34.400471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.623627, 35.222992, 34.720184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.677967, 35.490498, 34.427803>,  <42.710571, 35.651001, 34.252373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.677967, 35.490498, 34.427803>,  <42.623627, 35.222992, 34.720184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.677967, 35.490498, 34.427803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567906, 0.551986, 0.610569,
		0.811806, -0.498058, -0.304811,
		0.135848, 0.668767, -0.730955,
		42.718723, 35.691128, 34.208515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.366821, 35.220299, 34.447285>,  <42.623627, 35.222992, 34.720184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.366821, 35.220299, 34.447285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.180305, 35.573784, 34.431156>,  <43.068398, 35.785873, 34.421478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.180305, 35.573784, 34.431156>,  <43.366821, 35.220299, 34.447285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.180305, 35.573784, 34.431156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658355, 0.377104, 0.651431,
		0.590883, 0.277209, -0.757636,
		-0.466290, 0.883713, -0.040322,
		43.040417, 35.838898, 34.419060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.901363, 35.748764, 34.573624>,  <43.366821, 35.220299, 34.447285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.901363, 35.748764, 34.573624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.556183, 35.940861, 34.636467>,  <43.349075, 36.056118, 34.674175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.556183, 35.940861, 34.636467>,  <43.901363, 35.748764, 34.573624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.556183, 35.940861, 34.636467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457013, 0.609192, 0.648093,
		0.215528, 0.631076, -0.745179,
		-0.862952, 0.480238, 0.157112,
		43.297298, 36.084930, 34.683601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.542362, 36.132408, 34.547684>,  <43.901363, 35.748764, 34.573624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.542362, 36.132408, 34.547684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.846218, 36.033913, 34.788452>,  <45.028534, 35.974815, 34.932915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.846218, 36.033913, 34.788452>,  <44.542362, 36.132408, 34.547684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.846218, 36.033913, 34.788452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650244, -0.271737, 0.709466,
		-0.011131, -0.930337, -0.366537,
		0.759644, -0.246236, 0.601921,
		45.074112, 35.960041, 34.969028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.461628, 35.397694, 34.876080>,  <44.542362, 36.132408, 34.547684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.461628, 35.397694, 34.876080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.678204, 35.617214, 35.130848>,  <44.808147, 35.748924, 35.283710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.678204, 35.617214, 35.130848>,  <44.461628, 35.397694, 34.876080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.678204, 35.617214, 35.130848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630448, -0.236175, 0.739430,
		0.556223, -0.801898, 0.218116,
		0.541435, 0.548799, 0.636921,
		44.840633, 35.781853, 35.321922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.566696, 35.010487, 35.490112>,  <44.461628, 35.397694, 34.876080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.566696, 35.010487, 35.490112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.618015, 35.391743, 35.599701>,  <44.648808, 35.620495, 35.665455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.618015, 35.391743, 35.599701>,  <44.566696, 35.010487, 35.490112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.618015, 35.391743, 35.599701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553919, -0.160276, 0.816998,
		0.822625, -0.256580, 0.507399,
		0.128302, 0.953141, 0.273972,
		44.656506, 35.677685, 35.681892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.638004, 34.974556, 36.191364>,  <44.566696, 35.010487, 35.490112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.638004, 34.974556, 36.191364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.565502, 35.364815, 36.141945>,  <44.521999, 35.598969, 36.112293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.565502, 35.364815, 36.141945>,  <44.638004, 34.974556, 36.191364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.565502, 35.364815, 36.141945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458893, 0.027210, 0.888074,
		0.869807, 0.217665, 0.442785,
		-0.181254, 0.975644, -0.123552,
		44.511127, 35.657509, 36.104877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.912693, 35.272175, 36.766392>,  <44.638004, 34.974556, 36.191364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.912693, 35.272175, 36.766392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.645363, 35.531750, 36.620945>,  <44.484962, 35.687496, 36.533676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.645363, 35.531750, 36.620945>,  <44.912693, 35.272175, 36.766392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.645363, 35.531750, 36.620945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428226, 0.064052, 0.901399,
		0.608243, 0.758139, 0.235085,
		-0.668328, 0.648939, -0.363614,
		44.444866, 35.726433, 36.511860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.872269, 35.720024, 37.333553>,  <44.912693, 35.272175, 36.766392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.872269, 35.720024, 37.333553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.538368, 35.795471, 37.126629>,  <44.338028, 35.840740, 37.002476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.538368, 35.795471, 37.126629>,  <44.872269, 35.720024, 37.333553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.538368, 35.795471, 37.126629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530842, -0.026123, 0.847068,
		0.146254, 0.981704, 0.121931,
		-0.834755, 0.188613, -0.517309,
		44.287941, 35.852055, 36.971436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.498333, 36.166096, 37.836063>,  <44.872269, 35.720024, 37.333553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.498333, 36.166096, 37.836063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.232536, 36.052662, 37.559505>,  <44.073059, 35.984600, 37.393570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.232536, 36.052662, 37.559505>,  <44.498333, 36.166096, 37.836063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.232536, 36.052662, 37.559505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711093, -0.044524, 0.701687,
		-0.229773, 0.957912, -0.172071,
		-0.664493, -0.283587, -0.691395,
		44.033188, 35.967587, 37.352085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.832233, 36.457664, 38.060780>,  <44.498333, 36.166096, 37.836063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.832233, 36.457664, 38.060780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.740990, 36.163445, 37.805614>,  <43.686245, 35.986912, 37.652515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.740990, 36.163445, 37.805614>,  <43.832233, 36.457664, 38.060780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.740990, 36.163445, 37.805614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745560, -0.289420, 0.600313,
		-0.626186, 0.612538, -0.482378,
		-0.228105, -0.735550, -0.637915,
		43.672558, 35.942780, 37.614239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.158512, 36.506424, 38.068134>,  <43.832233, 36.457664, 38.060780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.158512, 36.506424, 38.068134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.275524, 36.147758, 37.935215>,  <43.345730, 35.932560, 37.855461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.275524, 36.147758, 37.935215>,  <43.158512, 36.506424, 38.068134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.275524, 36.147758, 37.935215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744045, -0.431713, 0.509923,
		-0.600687, 0.098081, -0.793445,
		0.292527, -0.896663, -0.332301,
		43.363281, 35.878761, 37.835526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.449493, 36.122398, 38.002029>,  <43.158512, 36.506424, 38.068134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.449493, 36.122398, 38.002029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.757229, 35.869408, 38.038029>,  <42.941868, 35.717613, 38.059628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.757229, 35.869408, 38.038029>,  <42.449493, 36.122398, 38.002029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.757229, 35.869408, 38.038029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571925, -0.619114, 0.538144,
		-0.284645, -0.465484, -0.838035,
		0.769337, -0.632473, 0.089994,
		42.988029, 35.679665, 38.065025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.148018, 35.437943, 38.042500>,  <42.449493, 36.122398, 38.002029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.148018, 35.437943, 38.042500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.517242, 35.351799, 38.169979>,  <42.738777, 35.300114, 38.246468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.517242, 35.351799, 38.169979>,  <42.148018, 35.437943, 38.042500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.517242, 35.351799, 38.169979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382379, -0.603551, 0.699652,
		0.041673, -0.767689, -0.639467,
		0.923065, -0.215362, 0.318700,
		42.794163, 35.287189, 38.265591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.143127, 34.725204, 38.047783>,  <42.148018, 35.437943, 38.042500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.143127, 34.725204, 38.047783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.412075, 34.873383, 38.304127>,  <42.573444, 34.962288, 38.457932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.412075, 34.873383, 38.304127>,  <42.143127, 34.725204, 38.047783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.412075, 34.873383, 38.304127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395394, -0.552166, 0.734013,
		0.625769, -0.746916, -0.224786,
		0.672366, 0.370444, 0.640855,
		42.613785, 34.984516, 38.496384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.225060, 34.208664, 38.543751>,  <42.143127, 34.725204, 38.047783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.225060, 34.208664, 38.543751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.347523, 34.532780, 38.743633>,  <42.421001, 34.727249, 38.863564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.347523, 34.532780, 38.743633>,  <42.225060, 34.208664, 38.543751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.347523, 34.532780, 38.743633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359524, -0.387623, 0.848817,
		0.881482, -0.439527, 0.172644,
		0.306157, 0.810287, 0.499703,
		42.439369, 34.775867, 38.893543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.442596, 33.940952, 39.128147>,  <42.225060, 34.208664, 38.543751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.442596, 33.940952, 39.128147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.388760, 34.327610, 39.215313>,  <42.356457, 34.559605, 39.267612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.388760, 34.327610, 39.215313>,  <42.442596, 33.940952, 39.128147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.388760, 34.327610, 39.215313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396601, -0.254084, 0.882127,
		0.908070, 0.032305, 0.417570,
		-0.134595, 0.966642, 0.217914,
		42.348381, 34.617603, 39.280685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.679222, 34.012047, 39.849464>,  <42.442596, 33.940952, 39.128147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.679222, 34.012047, 39.849464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.435837, 34.323460, 39.787945>,  <42.289806, 34.510307, 39.751034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.435837, 34.323460, 39.787945>,  <42.679222, 34.012047, 39.849464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.435837, 34.323460, 39.787945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415394, -0.147329, 0.897631,
		0.676176, 0.610066, 0.413043,
		-0.608468, 0.778533, -0.153798,
		42.253296, 34.557018, 39.741806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.840778, 34.426247, 40.409584>,  <42.679222, 34.012047, 39.849464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.840778, 34.426247, 40.409584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.484940, 34.547230, 40.272682>,  <42.271435, 34.619820, 40.190540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.484940, 34.547230, 40.272682>,  <42.840778, 34.426247, 40.409584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.484940, 34.547230, 40.272682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360066, -0.003371, 0.932921,
		0.281017, 0.953156, 0.111905,
		-0.889597, 0.302459, -0.342252,
		42.218060, 34.637966, 40.170006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.666451, 35.099911, 40.679844>,  <42.840778, 34.426247, 40.409584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.666451, 35.099911, 40.679844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.320301, 34.938976, 40.560337>,  <42.112614, 34.842415, 40.488632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.320301, 34.938976, 40.560337>,  <42.666451, 35.099911, 40.679844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.320301, 34.938976, 40.560337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369074, 0.108383, 0.923059,
		-0.339000, 0.909053, -0.242284,
		-0.865369, -0.402338, -0.298766,
		42.060692, 34.818275, 40.470707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.181736, 35.625019, 40.821156>,  <42.666451, 35.099911, 40.679844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.181736, 35.625019, 40.821156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.978451, 35.281387, 40.796829>,  <41.856480, 35.075207, 40.782234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.978451, 35.281387, 40.796829>,  <42.181736, 35.625019, 40.821156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.978451, 35.281387, 40.796829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362198, 0.149136, 0.920093,
		-0.781363, 0.489635, -0.386950,
		-0.508218, -0.859079, -0.060815,
		41.825985, 35.023663, 40.778584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.557209, 35.838097, 41.104889>,  <42.181736, 35.625019, 40.821156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.557209, 35.838097, 41.104889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.585026, 35.439068, 41.106647>,  <41.601715, 35.199650, 41.107704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.585026, 35.439068, 41.106647>,  <41.557209, 35.838097, 41.104889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.585026, 35.439068, 41.106647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271420, -0.014681, 0.962349,
		-0.959945, -0.068121, -0.271781,
		0.069546, -0.997569, 0.004397,
		41.605888, 35.139797, 41.107967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.877983, 35.585209, 41.282227>,  <41.557209, 35.838097, 41.104889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.877983, 35.585209, 41.282227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.180168, 35.339958, 41.374622>,  <41.361481, 35.192810, 41.430061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.180168, 35.339958, 41.374622>,  <40.877983, 35.585209, 41.282227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.180168, 35.339958, 41.374622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198836, 0.121378, 0.972487,
		-0.624292, -0.780607, -0.030214,
		0.755463, -0.613123, 0.230988,
		41.406807, 35.156021, 41.443920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.603382, 35.103943, 41.791630>,  <40.877983, 35.585209, 41.282227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.603382, 35.103943, 41.791630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.999306, 35.133369, 41.840401>,  <41.236858, 35.151024, 41.869663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.999306, 35.133369, 41.840401>,  <40.603382, 35.103943, 41.791630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.999306, 35.133369, 41.840401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112575, -0.120067, 0.986362,
		0.087203, -0.990036, -0.110562,
		0.989809, 0.073568, 0.121924,
		41.296249, 35.155441, 41.876976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.818699, 34.559486, 42.235550>,  <40.603382, 35.103943, 41.791630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.818699, 34.559486, 42.235550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.065029, 34.859974, 42.330566>,  <41.212830, 35.040268, 42.387577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.065029, 34.859974, 42.330566>,  <40.818699, 34.559486, 42.235550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.065029, 34.859974, 42.330566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474839, 0.113289, 0.872751,
		0.628717, -0.650258, 0.426474,
		0.615828, 0.751219, 0.237541,
		41.249779, 35.085339, 42.401829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.003616, 34.393185, 42.837025>,  <40.818699, 34.559486, 42.235550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.003616, 34.393185, 42.837025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.053947, 34.788929, 42.807808>,  <41.084145, 35.026375, 42.790276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.053947, 34.788929, 42.807808>,  <41.003616, 34.393185, 42.837025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.053947, 34.788929, 42.807808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660872, 0.138506, 0.737607,
		0.739876, -0.044536, 0.671267,
		0.125824, 0.989360, -0.073045,
		41.091694, 35.085735, 42.785896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.405392, 34.698616, 43.445744>,  <41.003616, 34.393185, 42.837025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.405392, 34.698616, 43.445744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.103313, 34.873020, 43.249958>,  <40.922066, 34.977661, 43.132484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.103313, 34.873020, 43.249958>,  <41.405392, 34.698616, 43.445744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.103313, 34.873020, 43.249958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560254, -0.041699, 0.827271,
		0.340286, 0.898977, 0.275766,
		-0.755196, 0.436007, -0.489466,
		40.876755, 35.003822, 43.103119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.707371, 35.261494, 43.188267>,  <41.405392, 34.698616, 43.445744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.707371, 35.261494, 43.188267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.614590, 35.248249, 43.577133>,  <41.558922, 35.240303, 43.810452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.614590, 35.248249, 43.577133>,  <41.707371, 35.261494, 43.188267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.614590, 35.248249, 43.577133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630894, -0.765824, 0.124442,
		0.740385, 0.642197, 0.198527,
		-0.231953, -0.033115, 0.972163,
		41.545002, 35.238316, 43.868782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.392811, 35.238136, 43.590244>,  <41.707371, 35.261494, 43.188267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.392811, 35.238136, 43.590244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.094002, 35.056587, 43.784546>,  <41.914715, 34.947659, 43.901127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.094002, 35.056587, 43.784546>,  <42.392811, 35.238136, 43.590244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.094002, 35.056587, 43.784546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615448, -0.748413, 0.247188,
		0.251354, 0.483612, 0.838416,
		-0.747024, -0.453870, 0.485755,
		41.869896, 34.920425, 43.930271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.538654, 35.087505, 44.357552>,  <42.392811, 35.238136, 43.590244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.538654, 35.087505, 44.357552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.311459, 34.810013, 44.180405>,  <42.175140, 34.643517, 44.074116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.311459, 34.810013, 44.180405>,  <42.538654, 35.087505, 44.357552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.311459, 34.810013, 44.180405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718993, -0.680101, 0.143217,
		-0.400548, -0.237073, 0.885075,
		-0.567988, -0.693728, -0.442867,
		42.141064, 34.601894, 44.047546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.678791, 34.495216, 44.133865>,  <42.538654, 35.087505, 44.357552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.678791, 34.495216, 44.133865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.931633, 34.241314, 44.311646>,  <43.083336, 34.088974, 44.418312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.931633, 34.241314, 44.311646>,  <42.678791, 34.495216, 44.133865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.931633, 34.241314, 44.311646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692451, 0.205272, -0.691646,
		0.347794, 0.744948, 0.569290,
		0.632100, -0.634756, 0.444447,
		43.121262, 34.050888, 44.444981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.256996, 34.872177, 44.451828>,  <42.678791, 34.495216, 44.133865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.256996, 34.872177, 44.451828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.353100, 34.501064, 44.337643>,  <43.410763, 34.278397, 44.269131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.353100, 34.501064, 44.337643>,  <43.256996, 34.872177, 44.451828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.353100, 34.501064, 44.337643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642140, 0.372448, -0.670029,
		0.727963, -0.022325, 0.685253,
		0.240263, -0.927784, -0.285464,
		43.425179, 34.222729, 44.252003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.989639, 34.796524, 44.367424>,  <43.256996, 34.872177, 44.451828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.989639, 34.796524, 44.367424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.829086, 34.502602, 44.148716>,  <43.732754, 34.326248, 44.017490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.829086, 34.502602, 44.148716>,  <43.989639, 34.796524, 44.367424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.829086, 34.502602, 44.148716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609064, 0.231718, -0.758517,
		0.684058, -0.637470, 0.354536,
		-0.401380, -0.734805, -0.546769,
		43.708672, 34.282162, 43.984684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.600922, 34.391987, 44.064243>,  <43.989639, 34.796524, 44.367424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.600922, 34.391987, 44.064243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.271725, 34.372528, 43.837856>,  <44.074207, 34.360851, 43.702026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.271725, 34.372528, 43.837856>,  <44.600922, 34.391987, 44.064243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.271725, 34.372528, 43.837856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503867, 0.397537, -0.766866,
		0.262297, -0.916296, -0.302659,
		-0.822994, -0.048647, -0.565964,
		44.024826, 34.357933, 43.668068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.697834, 34.012581, 43.432793>,  <44.600922, 34.391987, 44.064243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.697834, 34.012581, 43.432793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.414024, 34.286839, 43.367710>,  <44.243740, 34.451393, 43.328663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.414024, 34.286839, 43.367710>,  <44.697834, 34.012581, 43.432793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.414024, 34.286839, 43.367710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426756, 0.234341, -0.873478,
		-0.560767, -0.689186, -0.458872,
		-0.709521, 0.685644, -0.162703,
		44.201168, 34.492531, 43.318897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.440090, 33.922264, 42.736668>,  <44.697834, 34.012581, 43.432793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.440090, 33.922264, 42.736668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.321114, 34.296497, 42.812786>,  <44.249725, 34.521038, 42.858456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.321114, 34.296497, 42.812786>,  <44.440090, 33.922264, 42.736668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.321114, 34.296497, 42.812786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273696, 0.274507, -0.921812,
		-0.914668, -0.222104, -0.337716,
		-0.297443, 0.935583, 0.190293,
		44.231880, 34.577171, 42.869873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.011528, 34.111210, 42.134064>,  <44.440090, 33.922264, 42.736668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.011528, 34.111210, 42.134064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.140221, 34.439358, 42.323162>,  <44.217438, 34.636246, 42.436619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.140221, 34.439358, 42.323162>,  <44.011528, 34.111210, 42.134064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.140221, 34.439358, 42.323162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306732, 0.382059, -0.871749,
		-0.895770, 0.425476, -0.128712,
		0.321733, 0.820366, 0.472744,
		44.236740, 34.685467, 42.464985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.596611, 34.666897, 41.832981>,  <44.011528, 34.111210, 42.134064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.596611, 34.666897, 41.832981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.920269, 34.850269, 41.980019>,  <44.114464, 34.960293, 42.068241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.920269, 34.850269, 41.980019>,  <43.596611, 34.666897, 41.832981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.920269, 34.850269, 41.980019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106057, 0.501365, -0.858711,
		-0.577956, 0.733809, 0.357058,
		0.809147, 0.458429, 0.367593,
		44.163013, 34.987797, 42.090298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.584229, 35.407749, 41.582642>,  <43.596611, 34.666897, 41.832981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.584229, 35.407749, 41.582642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.960300, 35.350208, 41.706169>,  <44.185944, 35.315685, 41.780285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.960300, 35.350208, 41.706169>,  <43.584229, 35.407749, 41.582642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.960300, 35.350208, 41.706169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332186, 0.588247, -0.737305,
		-0.075603, 0.795785, 0.600842,
		0.940179, -0.143849, 0.308822,
		44.242355, 35.307053, 41.798817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.951370, 36.039886, 41.493687>,  <43.584229, 35.407749, 41.582642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.951370, 36.039886, 41.493687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.243420, 35.766693, 41.502239>,  <44.418648, 35.602779, 41.507370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.243420, 35.766693, 41.502239>,  <43.951370, 36.039886, 41.493687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.243420, 35.766693, 41.502239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400329, 0.402186, -0.823397,
		0.553764, 0.609742, 0.567062,
		0.730125, -0.682979, 0.021382,
		44.462456, 35.561798, 41.508656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.474842, 36.367882, 41.205982>,  <43.951370, 36.039886, 41.493687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.474842, 36.367882, 41.205982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.615902, 35.994301, 41.182789>,  <44.700539, 35.770153, 41.168873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.615902, 35.994301, 41.182789>,  <44.474842, 36.367882, 41.205982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.615902, 35.994301, 41.182789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475659, 0.232276, -0.848408,
		0.805844, 0.271613, 0.526158,
		0.352653, -0.933956, -0.057983,
		44.721699, 35.714115, 41.165394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.232094, 36.374180, 41.112686>,  <44.474842, 36.367882, 41.205982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.232094, 36.374180, 41.112686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.147434, 35.999134, 41.002357>,  <45.096638, 35.774105, 40.936161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.147434, 35.999134, 41.002357>,  <45.232094, 36.374180, 41.112686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.147434, 35.999134, 41.002357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364310, 0.186194, -0.912475,
		0.906909, -0.293608, 0.302176,
		-0.211647, -0.937617, -0.275826,
		45.083939, 35.717850, 40.919609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.805363, 36.243752, 40.770721>,  <45.232094, 36.374180, 41.112686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.805363, 36.243752, 40.770721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.558281, 35.946136, 40.668865>,  <45.410030, 35.767567, 40.607750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.558281, 35.946136, 40.668865>,  <45.805363, 36.243752, 40.770721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.558281, 35.946136, 40.668865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341706, 0.037696, -0.939050,
		0.708291, -0.667069, 0.230959,
		-0.617705, -0.744041, -0.254641,
		45.372971, 35.722923, 40.592472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.207958, 35.630608, 40.534489>,  <45.805363, 36.243752, 40.770721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.207958, 35.630608, 40.534489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.845013, 35.593708, 40.370449>,  <45.627247, 35.571568, 40.272026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.845013, 35.593708, 40.370449>,  <46.207958, 35.630608, 40.534489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.845013, 35.593708, 40.370449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415138, -0.043567, -0.908715,
		0.065963, -0.994782, 0.077827,
		-0.907364, -0.092250, -0.410098,
		45.572803, 35.566032, 40.247421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.232662, 35.006630, 40.167679>,  <46.207958, 35.630608, 40.534489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.232662, 35.006630, 40.167679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.961708, 35.233433, 39.980209>,  <45.799133, 35.369514, 39.867729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.961708, 35.233433, 39.980209>,  <46.232662, 35.006630, 40.167679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.961708, 35.233433, 39.980209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391471, -0.261550, -0.882237,
		-0.622812, -0.781088, -0.044794,
		-0.677388, 0.567004, -0.468669,
		45.758492, 35.403534, 39.839607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.123566, 34.636806, 39.647289>,  <46.232662, 35.006630, 40.167679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.123566, 34.636806, 39.647289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.952785, 34.977005, 39.524414>,  <45.850315, 35.181126, 39.450691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.952785, 34.977005, 39.524414>,  <46.123566, 34.636806, 39.647289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.952785, 34.977005, 39.524414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317023, -0.177362, -0.931686,
		-0.846880, -0.495172, -0.193902,
		-0.426954, 0.850498, -0.307185,
		45.824699, 35.232155, 39.432259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.713531, 34.491249, 39.058784>,  <46.123566, 34.636806, 39.647289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.713531, 34.491249, 39.058784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.822292, 34.876137, 39.053188>,  <45.887547, 35.107071, 39.049831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.822292, 34.876137, 39.053188>,  <45.713531, 34.491249, 39.058784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.822292, 34.876137, 39.053188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438952, -0.136946, -0.888013,
		-0.856383, 0.235311, -0.459606,
		0.271901, 0.962224, -0.013987,
		45.903862, 35.164803, 39.048992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.675312, 34.650974, 38.386986>,  <45.713531, 34.491249, 39.058784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.675312, 34.650974, 38.386986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.891964, 34.959877, 38.519810>,  <46.021954, 35.145218, 38.599503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.891964, 34.959877, 38.519810>,  <45.675312, 34.650974, 38.386986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.891964, 34.959877, 38.519810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494765, 0.026493, -0.868623,
		-0.679595, 0.634761, -0.367735,
		0.541626, 0.772254, 0.332061,
		46.054451, 35.191555, 38.619427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.629864, 35.162407, 37.799198>,  <45.675312, 34.650974, 38.386986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.629864, 35.162407, 37.799198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.927242, 35.271133, 38.043629>,  <46.105667, 35.336369, 38.190285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.927242, 35.271133, 38.043629>,  <45.629864, 35.162407, 37.799198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.927242, 35.271133, 38.043629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644096, -0.044957, -0.763623,
		-0.180091, 0.961299, -0.208497,
		0.743443, 0.271814, 0.611072,
		46.150276, 35.352676, 38.226952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.026291, 35.669609, 37.515575>,  <45.629864, 35.162407, 37.799198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.026291, 35.669609, 37.515575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.280121, 35.547108, 37.799412>,  <46.432419, 35.473606, 37.969715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.280121, 35.547108, 37.799412>,  <46.026291, 35.669609, 37.515575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.280121, 35.547108, 37.799412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722595, -0.090597, -0.685309,
		0.274165, 0.947629, 0.163807,
		0.634578, -0.306254, 0.709591,
		46.470493, 35.455231, 38.012287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.555782, 36.162537, 37.516739>,  <46.026291, 35.669609, 37.515575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.555782, 36.162537, 37.516739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.693390, 35.821228, 37.673492>,  <46.775955, 35.616444, 37.767544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.693390, 35.821228, 37.673492>,  <46.555782, 36.162537, 37.516739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.693390, 35.821228, 37.673492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650283, -0.084564, -0.754971,
		0.677337, 0.514561, 0.525778,
		0.344017, -0.853274, 0.391888,
		46.796597, 35.565247, 37.791058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.246422, 36.334423, 37.582340>,  <46.555782, 36.162537, 37.516739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.246422, 36.334423, 37.582340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.165188, 35.942822, 37.575260>,  <47.116447, 35.707863, 37.571011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.165188, 35.942822, 37.575260>,  <47.246422, 36.334423, 37.582340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.165188, 35.942822, 37.575260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543384, -0.097642, -0.833787,
		0.814549, -0.178950, 0.551803,
		-0.203085, -0.979001, -0.017704,
		47.104263, 35.649120, 37.569950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.906528, 35.900311, 37.292477>,  <47.246422, 36.334423, 37.582340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.906528, 35.900311, 37.292477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.631508, 35.610107, 37.280350>,  <47.466496, 35.435986, 37.273075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.631508, 35.610107, 37.280350>,  <47.906528, 35.900311, 37.292477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.631508, 35.610107, 37.280350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408434, -0.351875, -0.842239,
		0.600381, -0.591463, 0.538252,
		-0.687550, -0.725504, -0.030314,
		47.425243, 35.392456, 37.271255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.195038, 35.357498, 37.048820>,  <47.906528, 35.900311, 37.292477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.195038, 35.357498, 37.048820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.815220, 35.251041, 36.982441>,  <47.587330, 35.187168, 36.942612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.815220, 35.251041, 36.982441>,  <48.195038, 35.357498, 37.048820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.815220, 35.251041, 36.982441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227010, -0.218099, -0.949157,
		0.216416, -0.938937, 0.267511,
		-0.949542, -0.266140, -0.165947,
		47.530357, 35.171200, 36.932655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.135281, 34.612328, 36.789673>,  <48.195038, 35.357498, 37.048820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.135281, 34.612328, 36.789673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.824860, 34.832146, 36.665909>,  <47.638607, 34.964035, 36.591648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.824860, 34.832146, 36.665909>,  <48.135281, 34.612328, 36.789673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.824860, 34.832146, 36.665909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269177, -0.155056, -0.950527,
		-0.570335, -0.820949, -0.027593,
		-0.776056, 0.549546, -0.309414,
		47.592041, 34.997009, 36.573086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.717361, 34.264988, 36.366848>,  <48.135281, 34.612328, 36.789673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.717361, 34.264988, 36.366848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.682770, 34.649349, 36.261635>,  <47.662014, 34.879967, 36.198505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.682770, 34.649349, 36.261635>,  <47.717361, 34.264988, 36.366848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.682770, 34.649349, 36.261635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340519, -0.219614, -0.914230,
		-0.936253, -0.168628, -0.308214,
		-0.086477, 0.960903, -0.263036,
		47.656826, 34.937618, 36.182724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.325977, 34.294147, 35.822018>,  <47.717361, 34.264988, 36.366848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.325977, 34.294147, 35.822018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.548943, 34.626064, 35.811237>,  <47.682724, 34.825214, 35.804768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.548943, 34.626064, 35.811237>,  <47.325977, 34.294147, 35.822018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.548943, 34.626064, 35.811237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243202, -0.194237, -0.950329,
		-0.793813, 0.523175, -0.310079,
		0.557417, 0.829795, -0.026951,
		47.716167, 34.875004, 35.803154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.125504, 34.876045, 35.306950>,  <47.325977, 34.294147, 35.822018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.125504, 34.876045, 35.306950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.511841, 34.806538, 35.383839>,  <47.743645, 34.764832, 35.429970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.511841, 34.806538, 35.383839>,  <47.125504, 34.876045, 35.306950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.511841, 34.806538, 35.383839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132204, -0.307540, -0.942307,
		0.222858, 0.935534, -0.274063,
		0.965845, -0.173769, 0.192219,
		47.801594, 34.754406, 35.441505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.538109, 35.360752, 34.907555>,  <47.125504, 34.876045, 35.306950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.538109, 35.360752, 34.907555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.754711, 35.038830, 35.004761>,  <47.884674, 34.845676, 35.063084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.754711, 35.038830, 35.004761>,  <47.538109, 35.360752, 34.907555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.754711, 35.038830, 35.004761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261518, -0.113461, -0.958507,
		0.798987, 0.582588, 0.149032,
		0.541505, -0.804809, 0.243011,
		47.917164, 34.797386, 35.077663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.317223, 32.957130, 42.390194> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.058556, 32.670650, 42.285217>,  <33.903355, 32.498760, 42.222233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.058556, 32.670650, 42.285217>,  <34.317223, 32.957130, 42.390194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.058556, 32.670650, 42.285217> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222413, 0.152065, -0.963021,
		0.729626, -0.681124, 0.060958,
		-0.646667, -0.716203, -0.262441,
		33.864555, 32.455788, 42.206486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.687744, 32.484734, 42.028549>,  <34.317223, 32.957130, 42.390194>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.687744, 32.484734, 42.028549> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.299301, 32.481697, 41.933136>,  <34.066235, 32.479874, 41.875889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.299301, 32.481697, 41.933136>,  <34.687744, 32.484734, 42.028549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.299301, 32.481697, 41.933136> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236576, 0.100966, -0.966353,
		0.031419, -0.994861, -0.096253,
		-0.971105, -0.007591, -0.238533,
		34.007969, 32.479420, 41.861576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.632748, 32.131161, 41.360149>,  <34.687744, 32.484734, 42.028549>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.632748, 32.131161, 41.360149> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.260334, 32.276821, 41.369652>,  <34.036884, 32.364220, 41.375355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.260334, 32.276821, 41.369652>,  <34.632748, 32.131161, 41.360149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.260334, 32.276821, 41.369652> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025067, 0.128772, -0.991357,
		-0.364068, -0.922393, -0.129019,
		-0.931035, 0.364156, 0.023760,
		33.981022, 32.386066, 41.376781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.342228, 31.700546, 40.903702>,  <34.632748, 32.131161, 41.360149>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.342228, 31.700546, 40.903702> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.122234, 32.034199, 40.920399>,  <33.990238, 32.234390, 40.930416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.122234, 32.034199, 40.920399>,  <34.342228, 31.700546, 40.903702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.122234, 32.034199, 40.920399> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203043, 0.182017, -0.962104,
		-0.810119, -0.520666, -0.269470,
		-0.549983, 0.834133, 0.041738,
		33.957241, 32.284439, 40.932919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.958714, 31.681286, 40.239296>,  <34.342228, 31.700546, 40.903702>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.958714, 31.681286, 40.239296> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.983505, 32.049332, 40.393982>,  <33.998379, 32.270161, 40.486794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.983505, 32.049332, 40.393982>,  <33.958714, 31.681286, 40.239296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.983505, 32.049332, 40.393982> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241520, 0.362117, -0.900300,
		-0.968415, 0.149196, -0.199784,
		0.061976, 0.920115, 0.386714,
		34.002098, 32.325367, 40.509995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.513988, 32.109470, 39.722187>,  <33.958714, 31.681286, 40.239296>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.513988, 32.109470, 39.722187> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.734219, 32.382256, 39.914764>,  <33.866356, 32.545929, 40.030312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.734219, 32.382256, 39.914764>,  <33.513988, 32.109470, 39.722187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.734219, 32.382256, 39.914764> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497961, 0.194580, -0.845088,
		-0.670000, 0.705027, -0.232460,
		0.550577, 0.681965, 0.481444,
		33.899391, 32.586845, 40.059196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.433346, 32.687836, 39.331646>,  <33.513988, 32.109470, 39.722187>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.433346, 32.687836, 39.331646> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.774857, 32.708405, 39.538883>,  <33.979763, 32.720745, 39.663227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.774857, 32.708405, 39.538883>,  <33.433346, 32.687836, 39.331646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.774857, 32.708405, 39.538883> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518326, 0.009702, -0.855128,
		-0.049001, 0.998630, -0.018372,
		0.853778, 0.051425, 0.518092,
		34.030991, 32.723831, 39.694309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.785652, 33.216888, 38.917103>,  <33.433346, 32.687836, 39.331646>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.785652, 33.216888, 38.917103> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.079720, 33.066067, 39.142445>,  <34.256161, 32.975574, 39.277649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.079720, 33.066067, 39.142445>,  <33.785652, 33.216888, 38.917103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.079720, 33.066067, 39.142445> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654290, 0.177309, -0.735164,
		0.177309, 0.909061, 0.377053,
		0.735164, -0.377053, 0.563351,
		34.300270, 32.952950, 39.311451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.313286, 33.595985, 38.734016>,  <33.785652, 33.216888, 38.917103>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.313286, 33.595985, 38.734016> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.479122, 33.257809, 38.868675>,  <34.578625, 33.054901, 38.949471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.479122, 33.257809, 38.868675>,  <34.313286, 33.595985, 38.734016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.479122, 33.257809, 38.868675> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680469, 0.042393, -0.731550,
		0.604214, 0.532376, 0.592875,
		0.414593, -0.845446, 0.336651,
		34.603500, 33.004173, 38.969669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.910782, 33.749832, 38.614136>,  <34.313286, 33.595985, 38.734016>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.910782, 33.749832, 38.614136> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.942524, 33.354149, 38.663410>,  <34.961571, 33.116741, 38.692974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.942524, 33.354149, 38.663410>,  <34.910782, 33.749832, 38.614136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.942524, 33.354149, 38.663410> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688537, -0.034966, -0.724358,
		0.720846, 0.142302, 0.678330,
		0.079359, -0.989206, 0.123185,
		34.966331, 33.057388, 38.700367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.620712, 33.611107, 38.550854>,  <34.910782, 33.749832, 38.614136>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.620712, 33.611107, 38.550854> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.455517, 33.251324, 38.493713>,  <35.356400, 33.035454, 38.459431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.455517, 33.251324, 38.493713>,  <35.620712, 33.611107, 38.550854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.455517, 33.251324, 38.493713> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682811, -0.202008, -0.702112,
		0.602667, -0.387505, 0.697590,
		-0.412991, -0.899462, -0.142849,
		35.331619, 32.981483, 38.450859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.129601, 33.099251, 38.698578>,  <35.620712, 33.611107, 38.550854>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.129601, 33.099251, 38.698578> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.852005, 32.927650, 38.467289>,  <35.685448, 32.824692, 38.328518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.852005, 32.927650, 38.467289>,  <36.129601, 33.099251, 38.698578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.852005, 32.927650, 38.467289> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719641, -0.438090, -0.538697,
		-0.022213, -0.789961, 0.612755,
		-0.693991, -0.428997, -0.578219,
		35.643806, 32.798950, 38.293823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.296093, 32.367332, 38.584984>,  <36.129601, 33.099251, 38.698578>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.296093, 32.367332, 38.584984> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.059227, 32.495552, 38.289253>,  <35.917107, 32.572483, 38.111816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.059227, 32.495552, 38.289253>,  <36.296093, 32.367332, 38.584984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.059227, 32.495552, 38.289253> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570524, -0.481157, -0.665576,
		-0.569077, -0.815928, 0.102042,
		-0.592160, 0.320546, -0.739322,
		35.881580, 32.591717, 38.067455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.404537, 31.859793, 38.076294>,  <36.296093, 32.367332, 38.584984>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.404537, 31.859793, 38.076294> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.207455, 32.141380, 37.871677>,  <36.089207, 32.310333, 37.748909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.207455, 32.141380, 37.871677>,  <36.404537, 31.859793, 38.076294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.207455, 32.141380, 37.871677> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331134, -0.391944, -0.858330,
		-0.804731, -0.592290, -0.039996,
		-0.492705, 0.703969, -0.511537,
		36.059643, 32.352570, 37.718216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.977688, 31.544731, 37.479027>,  <36.404537, 31.859793, 38.076294>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.977688, 31.544731, 37.479027> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.040165, 31.928045, 37.383282>,  <36.077652, 32.158035, 37.325832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.040165, 31.928045, 37.383282>,  <35.977688, 31.544731, 37.479027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.040165, 31.928045, 37.383282> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385377, -0.282257, -0.878530,
		-0.909444, 0.044975, -0.413388,
		0.156193, 0.958284, -0.239365,
		36.087025, 32.215530, 37.311474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.729198, 31.760614, 36.725246>,  <35.977688, 31.544731, 37.479027>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.729198, 31.760614, 36.725246> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.993950, 32.042606, 36.827160>,  <36.152802, 32.211803, 36.888309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.993950, 32.042606, 36.827160>,  <35.729198, 31.760614, 36.725246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.993950, 32.042606, 36.827160> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400453, -0.045213, -0.915201,
		-0.633680, 0.707783, -0.312238,
		0.661881, 0.704981, 0.254783,
		36.192513, 32.254101, 36.903595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.748310, 32.206211, 36.200413>,  <35.729198, 31.760614, 36.725246>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.748310, 32.206211, 36.200413> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.088783, 32.246658, 36.406429>,  <36.293068, 32.270927, 36.530037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.088783, 32.246658, 36.406429>,  <35.748310, 32.206211, 36.200413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.088783, 32.246658, 36.406429> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523989, -0.220513, -0.822684,
		0.030388, 0.970129, -0.240679,
		0.851183, 0.101114, 0.515038,
		36.344139, 32.276993, 36.560940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117443, 32.744553, 35.855202>,  <35.748310, 32.206211, 36.200413>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.117443, 32.744553, 35.855202> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.386723, 32.532391, 36.061298>,  <36.548290, 32.405094, 36.184956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.386723, 32.532391, 36.061298>,  <36.117443, 32.744553, 35.855202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.386723, 32.532391, 36.061298> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536440, -0.129278, -0.833978,
		0.508953, 0.837831, 0.197499,
		0.673201, -0.530402, 0.515243,
		36.588684, 32.373272, 36.215870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.661446, 32.964485, 35.587952>,  <36.117443, 32.744553, 35.855202>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.661446, 32.964485, 35.587952> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.816154, 32.646206, 35.774403>,  <36.908981, 32.455238, 35.886272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.816154, 32.646206, 35.774403>,  <36.661446, 32.964485, 35.587952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.816154, 32.646206, 35.774403> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715044, -0.060432, -0.696463,
		0.582341, 0.602676, 0.545583,
		0.386771, -0.795694, 0.466132,
		36.932186, 32.407497, 35.914242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467438, 32.998093, 35.676052>,  <36.661446, 32.964485, 35.587952>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467438, 32.998093, 35.676052> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.406376, 32.604984, 35.717720>,  <37.369740, 32.369118, 35.742722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.406376, 32.604984, 35.717720>,  <37.467438, 32.998093, 35.676052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.406376, 32.604984, 35.717720> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788786, -0.184665, -0.586272,
		0.595410, -0.007328, 0.803389,
		-0.152654, -0.982774, 0.104172,
		37.360580, 32.310150, 35.748970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.045338, 32.752972, 35.744995>,  <37.467438, 32.998093, 35.676052>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.045338, 32.752972, 35.744995> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.849007, 32.421635, 35.636967>,  <37.731209, 32.222832, 35.572151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.849007, 32.421635, 35.636967>,  <38.045338, 32.752972, 35.744995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.849007, 32.421635, 35.636967> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741873, -0.234808, -0.628084,
		0.456854, -0.508639, 0.729775,
		-0.490825, -0.828343, -0.270072,
		37.701759, 32.173130, 35.555946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.622490, 32.309906, 35.666920>,  <38.045338, 32.752972, 35.744995>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.622490, 32.309906, 35.666920> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.326523, 32.135387, 35.462109>,  <38.148945, 32.030674, 35.339222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.326523, 32.135387, 35.462109>,  <38.622490, 32.309906, 35.666920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.326523, 32.135387, 35.462109> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633706, -0.196700, -0.748148,
		0.225702, -0.878039, 0.422027,
		-0.739916, -0.436299, -0.512023,
		38.104549, 32.004498, 35.308502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.062519, 32.887756, 35.815006>,  <38.622490, 32.309906, 35.666920>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.062519, 32.887756, 35.815006> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.125240, 33.281902, 35.788246>,  <39.162872, 33.518391, 35.772190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.125240, 33.281902, 35.788246>,  <39.062519, 32.887756, 35.815006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.125240, 33.281902, 35.788246> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271818, 0.022071, 0.962095,
		0.949489, -0.169042, -0.264379,
		0.156799, 0.985362, -0.066905,
		39.172279, 33.577511, 35.768173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.619110, 32.978039, 36.265587>,  <39.062519, 32.887756, 35.815006>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.619110, 32.978039, 36.265587> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.459991, 33.342133, 36.219566>,  <39.364521, 33.560589, 36.191952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.459991, 33.342133, 36.219566>,  <39.619110, 32.978039, 36.265587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.459991, 33.342133, 36.219566> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085725, 0.161729, 0.983105,
		0.913461, 0.381209, -0.142364,
		-0.397793, 0.910233, -0.115054,
		39.340652, 33.615204, 36.185051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.921696, 33.276226, 36.747227>,  <39.619110, 32.978039, 36.265587>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.921696, 33.276226, 36.747227> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.598034, 33.502552, 36.683834>,  <39.403835, 33.638348, 36.645798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.598034, 33.502552, 36.683834>,  <39.921696, 33.276226, 36.747227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.598034, 33.502552, 36.683834> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109929, 0.119183, 0.986768,
		0.577221, 0.815870, -0.034238,
		-0.809155, 0.565819, -0.158483,
		39.355286, 33.672298, 36.636288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.087460, 33.942226, 36.988438>,  <39.921696, 33.276226, 36.747227>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.087460, 33.942226, 36.988438> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.688713, 33.922726, 36.963509>,  <39.449467, 33.911026, 36.948551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.688713, 33.922726, 36.963509>,  <40.087460, 33.942226, 36.988438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.688713, 33.922726, 36.963509> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071672, 0.222710, 0.972247,
		-0.033523, 0.973665, -0.225506,
		-0.996865, -0.048755, -0.062318,
		39.389652, 33.908100, 36.944813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.780636, 34.456745, 37.425972>,  <40.087460, 33.942226, 36.988438>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.780636, 34.456745, 37.425972> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.496586, 34.176430, 37.398804>,  <39.326157, 34.008240, 37.382504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.496586, 34.176430, 37.398804>,  <39.780636, 34.456745, 37.425972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.496586, 34.176430, 37.398804> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236160, 0.146204, 0.960652,
		-0.663288, 0.698222, -0.269322,
		-0.710124, -0.700793, -0.067917,
		39.283550, 33.966190, 37.378429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.270897, 34.826859, 37.820065>,  <39.780636, 34.456745, 37.425972>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.270897, 34.826859, 37.820065> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.155273, 34.444000, 37.813034>,  <39.085899, 34.214283, 37.808815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.155273, 34.444000, 37.813034>,  <39.270897, 34.826859, 37.820065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.155273, 34.444000, 37.813034> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358992, 0.091355, 0.928859,
		-0.887451, 0.274806, -0.370016,
		-0.289059, -0.957150, -0.017580,
		39.068554, 34.156857, 37.807758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.695541, 34.836102, 38.107567>,  <39.270897, 34.826859, 37.820065>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.695541, 34.836102, 38.107567> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.786591, 34.447067, 38.126572>,  <38.841221, 34.213646, 38.137974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.786591, 34.447067, 38.126572>,  <38.695541, 34.836102, 38.107567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.786591, 34.447067, 38.126572> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367980, -0.040741, 0.928941,
		-0.901542, -0.228933, -0.367167,
		0.227624, -0.972589, 0.047513,
		38.854877, 34.155289, 38.140827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.088444, 34.581944, 38.433521>,  <38.695541, 34.836102, 38.107567>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.088444, 34.581944, 38.433521> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.364697, 34.295803, 38.476036>,  <38.530449, 34.124119, 38.501545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.364697, 34.295803, 38.476036>,  <38.088444, 34.581944, 38.433521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.364697, 34.295803, 38.476036> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266232, -0.114836, 0.957044,
		-0.672419, -0.689263, -0.269759,
		0.690632, -0.715353, 0.106286,
		38.571888, 34.081196, 38.507923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820385, 34.057064, 38.827187>,  <38.088444, 34.581944, 38.433521>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.820385, 34.057064, 38.827187> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.215939, 34.040936, 38.884445>,  <38.453270, 34.031258, 38.918800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.215939, 34.040936, 38.884445>,  <37.820385, 34.057064, 38.827187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.215939, 34.040936, 38.884445> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148041, -0.175266, 0.973327,
		-0.014161, -0.983695, -0.179286,
		0.988880, -0.040325, 0.143146,
		38.512604, 34.028839, 38.927387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.924961, 33.376587, 39.120590>,  <37.820385, 34.057064, 38.827187>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.924961, 33.376587, 39.120590> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.255638, 33.587624, 39.198799>,  <38.454044, 33.714245, 39.245724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.255638, 33.587624, 39.198799>,  <37.924961, 33.376587, 39.120590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.255638, 33.587624, 39.198799> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056750, -0.267537, 0.961875,
		0.559786, -0.806269, -0.191229,
		0.826691, 0.527592, 0.195520,
		38.503647, 33.745903, 39.257454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.400089, 32.953701, 39.558121>,  <37.924961, 33.376587, 39.120590>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.400089, 32.953701, 39.558121> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.534962, 33.328136, 39.598202>,  <38.615887, 33.552799, 39.622250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.534962, 33.328136, 39.598202>,  <38.400089, 32.953701, 39.558121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.534962, 33.328136, 39.598202> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107970, -0.144182, 0.983643,
		0.935228, -0.320847, -0.149685,
		0.337181, 0.936092, 0.100201,
		38.636116, 33.608963, 39.628262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.975044, 32.905357, 39.908318>,  <38.400089, 32.953701, 39.558121>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.975044, 32.905357, 39.908318> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.873074, 33.287251, 39.969627>,  <38.811890, 33.516388, 40.006413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.873074, 33.287251, 39.969627>,  <38.975044, 32.905357, 39.908318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.873074, 33.287251, 39.969627> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032418, -0.149985, 0.988157,
		0.966416, 0.256878, 0.007285,
		-0.254928, 0.954735, 0.153275,
		38.796597, 33.573669, 40.015610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.360176, 33.124073, 40.541126>,  <38.975044, 32.905357, 39.908318>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.360176, 33.124073, 40.541126> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.032127, 33.342430, 40.472538>,  <38.835297, 33.473446, 40.431385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.032127, 33.342430, 40.472538>,  <39.360176, 33.124073, 40.541126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.032127, 33.342430, 40.472538> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317789, -0.185350, 0.929868,
		0.475826, 0.817097, 0.325489,
		-0.820122, 0.545892, -0.171470,
		38.786091, 33.506199, 40.421097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.260674, 33.292141, 41.146252>,  <39.360176, 33.124073, 40.541126>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.260674, 33.292141, 41.146252> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.917080, 33.416924, 40.983860>,  <38.710922, 33.491795, 40.886425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.917080, 33.416924, 40.983860>,  <39.260674, 33.292141, 41.146252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.917080, 33.416924, 40.983860> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471854, -0.174568, 0.864222,
		0.198731, 0.933920, 0.297151,
		-0.858987, 0.311959, -0.405982,
		38.659382, 33.510509, 40.862064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.944363, 33.760235, 41.595917>,  <39.260674, 33.292141, 41.146252>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.944363, 33.760235, 41.595917> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.654327, 33.630768, 41.352779>,  <38.480305, 33.553085, 41.206898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.654327, 33.630768, 41.352779>,  <38.944363, 33.760235, 41.595917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.654327, 33.630768, 41.352779> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638627, -0.014227, 0.769385,
		-0.257676, 0.946062, -0.196389,
		-0.725092, -0.323672, -0.607847,
		38.436798, 33.533665, 41.170425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.333145, 33.949635, 41.870983>,  <38.944363, 33.760235, 41.595917>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.333145, 33.949635, 41.870983> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.181862, 33.712090, 41.586933>,  <38.091091, 33.569561, 41.416504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.181862, 33.712090, 41.586933>,  <38.333145, 33.949635, 41.870983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.181862, 33.712090, 41.586933> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782025, -0.205534, 0.588381,
		-0.495375, 0.777868, -0.386684,
		-0.378206, -0.593866, -0.710129,
		38.068401, 33.533928, 41.373894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.605038, 34.215641, 41.717972>,  <38.333145, 33.949635, 41.870983>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.605038, 34.215641, 41.717972> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.664188, 33.827690, 41.640549>,  <37.699677, 33.594917, 41.594093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.664188, 33.827690, 41.640549>,  <37.605038, 34.215641, 41.717972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.664188, 33.827690, 41.640549> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746258, -0.237852, 0.621711,
		-0.649024, 0.052510, -0.758954,
		0.147873, -0.969881, -0.193557,
		37.708549, 33.536724, 41.582481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.014355, 33.971664, 41.467060>,  <37.605038, 34.215641, 41.717972>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.014355, 33.971664, 41.467060> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.217567, 33.671738, 41.636616>,  <37.339497, 33.491783, 41.738350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.217567, 33.671738, 41.636616>,  <37.014355, 33.971664, 41.467060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.217567, 33.671738, 41.636616> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832666, -0.301607, 0.464436,
		-0.220393, -0.588907, -0.777570,
		0.508031, -0.749815, 0.423890,
		37.369976, 33.446793, 41.763783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.413067, 33.519661, 41.557568> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.725761, 33.385818, 41.768063>,  <36.913380, 33.305511, 41.894360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.725761, 33.385818, 41.768063>,  <36.413067, 33.519661, 41.557568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.725761, 33.385818, 41.768063> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623564, -0.409308, 0.666059,
		-0.007473, -0.848826, -0.528619,
		0.781736, -0.334606, 0.526239,
		36.960281, 33.285435, 41.925934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.066360, 32.958252, 41.919266>,  <36.413067, 33.519661, 41.557568>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.066360, 32.958252, 41.919266> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.412117, 33.029366, 42.107399>,  <36.619572, 33.072033, 42.220280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.412117, 33.029366, 42.107399>,  <36.066360, 32.958252, 41.919266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.412117, 33.029366, 42.107399> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415316, -0.274844, 0.867164,
		0.283439, -0.944909, -0.163736,
		0.864393, 0.177786, 0.470337,
		36.671436, 33.082703, 42.248501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.960911, 32.599216, 42.449699>,  <36.066360, 32.958252, 41.919266>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.960911, 32.599216, 42.449699> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.246674, 32.831512, 42.605835>,  <36.418129, 32.970890, 42.699516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.246674, 32.831512, 42.605835>,  <35.960911, 32.599216, 42.449699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.246674, 32.831512, 42.605835> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341805, -0.197130, 0.918863,
		0.610569, -0.789861, 0.057669,
		0.714405, 0.580741, 0.390340,
		36.460995, 33.005733, 42.722939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.224968, 32.250805, 43.061947>,  <35.960911, 32.599216, 42.449699>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.224968, 32.250805, 43.061947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.336185, 32.631794, 43.111744>,  <36.402916, 32.860386, 43.141621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.336185, 32.631794, 43.111744>,  <36.224968, 32.250805, 43.061947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.336185, 32.631794, 43.111744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349001, -0.020577, 0.936896,
		0.894926, -0.303942, 0.326692,
		0.278040, 0.952468, 0.124491,
		36.419598, 32.917534, 43.149090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.569588, 32.324562, 43.705265>,  <36.224968, 32.250805, 43.061947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.569588, 32.324562, 43.705265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.469761, 32.705696, 43.636189>,  <36.409866, 32.934376, 43.594742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.469761, 32.705696, 43.636189>,  <36.569588, 32.324562, 43.705265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.469761, 32.705696, 43.636189> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449685, 0.043903, 0.892108,
		0.857614, 0.300293, 0.417519,
		-0.249563, 0.952836, -0.172689,
		36.394894, 32.991547, 43.584381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.810612, 32.669758, 44.348576>,  <36.569588, 32.324562, 43.705265>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.810612, 32.669758, 44.348576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.519993, 32.857471, 44.147816>,  <36.345619, 32.970100, 44.027359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.519993, 32.857471, 44.147816>,  <36.810612, 32.669758, 44.348576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.519993, 32.857471, 44.147816> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584046, -0.036997, 0.810877,
		0.361959, 0.882274, 0.300961,
		-0.726551, 0.469279, -0.501897,
		36.302029, 32.998257, 43.997246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.530632, 33.265015, 44.699986>,  <36.810612, 32.669758, 44.348576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.530632, 33.265015, 44.699986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.215324, 33.207207, 44.460739>,  <36.026138, 33.172520, 44.317192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.215324, 33.207207, 44.460739>,  <36.530632, 33.265015, 44.699986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.215324, 33.207207, 44.460739> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615077, 0.213060, 0.759135,
		0.017722, 0.966291, -0.256842,
		-0.788268, -0.144524, -0.598119,
		35.978844, 33.163849, 44.281303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.140587, 33.808964, 44.817093>,  <36.530632, 33.265015, 44.699986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.140587, 33.808964, 44.817093> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.868999, 33.571674, 44.644077>,  <35.706047, 33.429302, 44.540268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.868999, 33.571674, 44.644077>,  <36.140587, 33.808964, 44.817093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.868999, 33.571674, 44.644077> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632030, 0.172528, 0.755495,
		-0.373550, 0.786335, -0.492075,
		-0.678969, -0.593221, -0.432539,
		35.665310, 33.393707, 44.514317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.426521, 34.108471, 44.835003>,  <36.140587, 33.808964, 44.817093>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.426521, 34.108471, 44.835003> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.352749, 33.718338, 44.786488>,  <35.308483, 33.484257, 44.757378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.352749, 33.718338, 44.786488>,  <35.426521, 34.108471, 44.835003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.352749, 33.718338, 44.786488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700003, 0.043727, 0.712800,
		-0.689913, 0.216369, -0.690800,
		-0.184434, -0.975332, -0.121291,
		35.297417, 33.425739, 44.750099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.747284, 33.948811, 44.734467>,  <35.426521, 34.108471, 44.835003>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.747284, 33.948811, 44.734467> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.909786, 33.608109, 44.866806>,  <35.007290, 33.403687, 44.946209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.909786, 33.608109, 44.866806>,  <34.747284, 33.948811, 44.734467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.909786, 33.608109, 44.866806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626256, 0.004124, 0.779607,
		-0.665401, -0.523918, -0.531744,
		0.406257, -0.851759, 0.330851,
		35.031662, 33.352581, 44.966061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.297981, 33.714222, 45.113686>,  <34.747284, 33.948811, 44.734467>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.297981, 33.714222, 45.113686> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.589527, 33.472843, 45.243061>,  <34.764454, 33.328018, 45.320686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.589527, 33.472843, 45.243061>,  <34.297981, 33.714222, 45.113686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.589527, 33.472843, 45.243061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447096, -0.061738, 0.892353,
		-0.518517, -0.795012, -0.314796,
		0.728865, -0.603444, 0.323435,
		34.808186, 33.291809, 45.340092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.032127, 33.047947, 45.329540>,  <34.297981, 33.714222, 45.113686>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.032127, 33.047947, 45.329540> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.377457, 33.120872, 45.517765>,  <34.584656, 33.164627, 45.630699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.377457, 33.120872, 45.517765>,  <34.032127, 33.047947, 45.329540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.377457, 33.120872, 45.517765> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432601, -0.212771, 0.876119,
		0.259852, -0.959942, -0.104820,
		0.863327, 0.182316, 0.470561,
		34.636456, 33.175568, 45.658932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.227985, 32.323807, 45.754696>,  <34.032127, 33.047947, 45.329540>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.227985, 32.323807, 45.754696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.456291, 32.612179, 45.911915>,  <34.593277, 32.785202, 46.006248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.456291, 32.612179, 45.911915>,  <34.227985, 32.323807, 45.754696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.456291, 32.612179, 45.911915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190371, -0.349455, 0.917409,
		0.798739, -0.598453, -0.062214,
		0.570767, 0.720927, 0.393051,
		34.627522, 32.828457, 46.029831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.558598, 31.961283, 46.212067>,  <34.227985, 32.323807, 45.754696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.558598, 31.961283, 46.212067> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.630730, 32.325558, 46.360729>,  <34.674007, 32.544121, 46.449928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.630730, 32.325558, 46.360729>,  <34.558598, 31.961283, 46.212067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.630730, 32.325558, 46.360729> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147004, -0.348658, 0.925650,
		0.972559, -0.221558, 0.071001,
		0.180330, 0.910686, 0.371660,
		34.684830, 32.598763, 46.472229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.955170, 31.904978, 46.878372>,  <34.558598, 31.961283, 46.212067>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.955170, 31.904978, 46.878372> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.830677, 32.283955, 46.908001>,  <34.755981, 32.511341, 46.925777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.830677, 32.283955, 46.908001>,  <34.955170, 31.904978, 46.878372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.830677, 32.283955, 46.908001> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051494, -0.061015, 0.996808,
		0.948939, 0.314050, -0.029798,
		-0.311229, 0.947444, 0.074071,
		34.737309, 32.568188, 46.930222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.397316, 32.175713, 47.436100>,  <34.955170, 31.904978, 46.878372>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.397316, 32.175713, 47.436100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.088699, 32.428452, 47.406448>,  <34.903530, 32.580097, 47.388657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.088699, 32.428452, 47.406448>,  <35.397316, 32.175713, 47.436100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.088699, 32.428452, 47.406448> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056394, 0.048140, 0.997247,
		0.633679, 0.773595, -0.001509,
		-0.771538, 0.631849, -0.074131,
		34.857239, 32.618008, 47.384209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.489986, 32.760342, 47.943836>,  <35.397316, 32.175713, 47.436100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.489986, 32.760342, 47.943836> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.097488, 32.773834, 47.867928>,  <34.861988, 32.781929, 47.822384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.097488, 32.773834, 47.867928>,  <35.489986, 32.760342, 47.943836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.097488, 32.773834, 47.867928> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180397, 0.185976, 0.965852,
		0.067873, 0.981975, -0.176403,
		-0.981249, 0.033732, -0.189768,
		34.803112, 32.783955, 47.810997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.228500, 33.434261, 48.272526>,  <35.489986, 32.760342, 47.943836>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.228500, 33.434261, 48.272526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.932484, 33.168957, 48.227943>,  <34.754875, 33.009773, 48.201195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.932484, 33.168957, 48.227943>,  <35.228500, 33.434261, 48.272526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.932484, 33.168957, 48.227943> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249566, 0.116917, 0.961274,
		-0.624545, 0.739198, -0.252052,
		-0.740041, -0.663262, -0.111459,
		34.710472, 32.969978, 48.194508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.547859, 33.754055, 48.467773>,  <35.228500, 33.434261, 48.272526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.547859, 33.754055, 48.467773> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.466076, 33.363579, 48.496777>,  <34.417007, 33.129295, 48.514179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.466076, 33.363579, 48.496777>,  <34.547859, 33.754055, 48.467773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.466076, 33.363579, 48.496777> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389671, 0.149112, 0.908803,
		-0.897973, 0.157556, -0.410878,
		-0.204454, -0.976187, 0.072504,
		34.404739, 33.070724, 48.518528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.877426, 33.630264, 48.800877>,  <34.547859, 33.754055, 48.467773>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.877426, 33.630264, 48.800877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.085983, 33.294125, 48.860153>,  <34.211117, 33.092442, 48.895721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.085983, 33.294125, 48.860153>,  <33.877426, 33.630264, 48.800877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.085983, 33.294125, 48.860153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377232, -0.071214, 0.923377,
		-0.765408, -0.537343, -0.354138,
		0.521389, -0.840352, 0.148195,
		34.242401, 33.042019, 48.904613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.353241, 33.290310, 49.205582>,  <33.877426, 33.630264, 48.800877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.353241, 33.290310, 49.205582> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.691818, 33.081039, 49.245209>,  <33.894966, 32.955479, 49.268986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.691818, 33.081039, 49.245209>,  <33.353241, 33.290310, 49.205582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.691818, 33.081039, 49.245209> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162480, -0.076593, 0.983735,
		-0.507080, -0.848775, -0.149838,
		0.846445, -0.523178, 0.099070,
		33.945751, 32.924088, 49.274929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.224121, 33.005016, 49.752483>,  <33.353241, 33.290310, 49.205582>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.224121, 33.005016, 49.752483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.618710, 32.939678, 49.746868>,  <33.855461, 32.900475, 49.743500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.618710, 32.939678, 49.746868>,  <33.224121, 33.005016, 49.752483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.618710, 32.939678, 49.746868> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002879, -0.068368, 0.997656,
		-0.163927, -0.984196, -0.066973,
		0.986468, -0.163350, -0.014041,
		33.914650, 32.890675, 49.742657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.355782, 32.511536, 50.250576>,  <33.224121, 33.005016, 49.752483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.355782, 32.511536, 50.250576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.693275, 32.721058, 50.203693>,  <33.895771, 32.846771, 50.175564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.693275, 32.721058, 50.203693>,  <33.355782, 32.511536, 50.250576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.693275, 32.721058, 50.203693> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053730, 0.134837, 0.989410,
		0.534065, -0.841096, 0.085623,
		0.843734, 0.523809, -0.117204,
		33.946396, 32.878201, 50.168533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.158443, 31.871094, 50.060539>,  <33.355782, 32.511536, 50.250576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.158443, 31.871094, 50.060539> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.964909, 31.521454, 50.077755>,  <32.848789, 31.311670, 50.088085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.964909, 31.521454, 50.077755>,  <33.158443, 31.871094, 50.060539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.964909, 31.521454, 50.077755> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535676, -0.334683, -0.775267,
		0.692064, -0.352049, 0.630166,
		-0.483838, -0.874099, 0.043038,
		32.819756, 31.259224, 50.090668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.618507, 31.280674, 49.993126>,  <33.158443, 31.871094, 50.060539>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.618507, 31.280674, 49.993126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.263386, 31.137642, 49.877232>,  <33.050312, 31.051823, 49.807697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.263386, 31.137642, 49.877232>,  <33.618507, 31.280674, 49.993126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.263386, 31.137642, 49.877232> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403696, -0.302769, -0.863343,
		0.220991, -0.883441, 0.413152,
		-0.887802, -0.357579, -0.289732,
		32.997044, 31.030369, 49.790314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.720566, 30.604849, 49.711132>,  <33.618507, 31.280674, 49.993126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.720566, 30.604849, 49.711132> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.370140, 30.722124, 49.558002>,  <33.159885, 30.792490, 49.466125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.370140, 30.722124, 49.558002>,  <33.720566, 30.604849, 49.711132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.370140, 30.722124, 49.558002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301882, -0.285604, -0.909559,
		-0.376012, -0.912397, 0.161697,
		-0.876061, 0.293192, -0.382826,
		33.107323, 30.810081, 49.443153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.450901, 30.098946, 49.166809>,  <33.720566, 30.604849, 49.711132>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.450901, 30.098946, 49.166809> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.238941, 30.426647, 49.079144>,  <33.111767, 30.623268, 49.026546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.238941, 30.426647, 49.079144>,  <33.450901, 30.098946, 49.166809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.238941, 30.426647, 49.079144> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087813, -0.310043, -0.946658,
		-0.843503, -0.482387, 0.236232,
		-0.529898, 0.819253, -0.219162,
		33.079971, 30.672422, 49.013393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.994133, 29.733936, 48.846306>,  <33.450901, 30.098946, 49.166809>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.994133, 29.733936, 48.846306> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.976612, 30.117657, 48.734722>,  <32.966099, 30.347889, 48.667770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.976612, 30.117657, 48.734722>,  <32.994133, 29.733936, 48.846306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.976612, 30.117657, 48.734722> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032755, -0.277699, -0.960110,
		-0.998503, -0.051195, -0.019257,
		-0.043806, 0.959303, -0.278960,
		32.963470, 30.405447, 48.651035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.360523, 29.821251, 48.414829>,  <32.994133, 29.733936, 48.846306>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.360523, 29.821251, 48.414829> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.599949, 30.127823, 48.321617>,  <32.743607, 30.311766, 48.265690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.599949, 30.127823, 48.321617>,  <32.360523, 29.821251, 48.414829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.599949, 30.127823, 48.321617> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066028, -0.337110, -0.939147,
		-0.798347, 0.546755, -0.252389,
		0.598566, 0.766430, -0.233029,
		32.779518, 30.357752, 48.251709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.011257, 30.095032, 47.952827>,  <32.360523, 29.821251, 48.414829>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.011257, 30.095032, 47.952827> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.363831, 30.278639, 47.908325>,  <32.575375, 30.388803, 47.881622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.363831, 30.278639, 47.908325>,  <32.011257, 30.095032, 47.952827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.363831, 30.278639, 47.908325> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098207, -0.052297, -0.993791,
		-0.461985, 0.886887, -0.001017,
		0.881433, 0.459017, -0.111259,
		32.628262, 30.416344, 47.874947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.898308, 30.566051, 47.299137>,  <32.011257, 30.095032, 47.952827>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.898308, 30.566051, 47.299137> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.296432, 30.546524, 47.332527>,  <32.535309, 30.534807, 47.352562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.296432, 30.546524, 47.332527>,  <31.898308, 30.566051, 47.299137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.296432, 30.546524, 47.332527> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085671, 0.044846, -0.995314,
		0.044846, 0.997800, 0.048818,
		0.995314, -0.048818, 0.083472,
		32.595028, 30.531879, 47.357567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.228874, 31.125032, 46.883789>,  <31.898308, 30.566051, 47.299137>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.228874, 31.125032, 46.883789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.503326, 30.835651, 46.914371>,  <32.667995, 30.662024, 46.932720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.503326, 30.835651, 46.914371>,  <32.228874, 31.125032, 46.883789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.503326, 30.835651, 46.914371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220386, 0.106544, -0.969577,
		0.693296, 0.682104, 0.232541,
		0.686128, -0.723452, 0.076460,
		32.709164, 30.618616, 46.937309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.810970, 31.400805, 46.657990>,  <32.228874, 31.125032, 46.883789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.810970, 31.400805, 46.657990> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.892174, 31.009981, 46.632252>,  <32.940895, 30.775486, 46.616810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.892174, 31.009981, 46.632252>,  <32.810970, 31.400805, 46.657990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.892174, 31.009981, 46.632252> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533427, 0.165464, -0.829504,
		0.821122, 0.134075, 0.554781,
		0.203013, -0.977060, -0.064347,
		32.953079, 30.716864, 46.612949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.509510, 31.406397, 46.479343>,  <32.810970, 31.400805, 46.657990>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.509510, 31.406397, 46.479343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.375938, 31.050058, 46.356129>,  <33.295795, 30.836256, 46.282200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.375938, 31.050058, 46.356129>,  <33.509510, 31.406397, 46.479343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.375938, 31.050058, 46.356129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452138, 0.135365, -0.881616,
		0.827083, -0.433668, 0.357584,
		-0.333925, -0.890847, -0.308036,
		33.275761, 30.782804, 46.263718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.139915, 31.142147, 46.252987>,  <33.509510, 31.406397, 46.479343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.139915, 31.142147, 46.252987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.852371, 30.916281, 46.090801>,  <33.679844, 30.780762, 45.993492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.852371, 30.916281, 46.090801>,  <34.139915, 31.142147, 46.252987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.852371, 30.916281, 46.090801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307555, 0.264738, -0.913961,
		0.623423, -0.781708, -0.016643,
		-0.718856, -0.564666, -0.405462,
		33.636715, 30.746881, 45.969162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.380093, 30.675659, 45.789425>,  <34.139915, 31.142147, 46.252987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.380093, 30.675659, 45.789425> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.000347, 30.726074, 45.674305>,  <33.772499, 30.756323, 45.605232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.000347, 30.726074, 45.674305>,  <34.380093, 30.675659, 45.789425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.000347, 30.726074, 45.674305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310154, 0.229661, -0.922529,
		-0.050178, -0.965075, -0.257123,
		-0.949361, 0.126038, -0.287798,
		33.715538, 30.763885, 45.587967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.205860, 30.273535, 45.112823>,  <34.380093, 30.675659, 45.789425>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.205860, 30.273535, 45.112823> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.929657, 30.560558, 45.149277>,  <33.763935, 30.732773, 45.171146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.929657, 30.560558, 45.149277>,  <34.205860, 30.273535, 45.112823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.929657, 30.560558, 45.149277> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057904, 0.180420, -0.981884,
		-0.721000, -0.672726, -0.166132,
		-0.690512, 0.717558, 0.091129,
		33.722504, 30.775826, 45.176617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.765171, 30.205755, 44.438412>,  <34.205860, 30.273535, 45.112823>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.765171, 30.205755, 44.438412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.633808, 30.554667, 44.583340>,  <33.554989, 30.764013, 44.670296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.633808, 30.554667, 44.583340>,  <33.765171, 30.205755, 44.438412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.633808, 30.554667, 44.583340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078432, 0.357089, -0.930772,
		-0.941273, -0.334092, -0.048856,
		-0.328410, 0.872279, 0.362322,
		33.535286, 30.816351, 44.692036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.273457, 30.453436, 43.975025>,  <33.765171, 30.205755, 44.438412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.273457, 30.453436, 43.975025> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.390682, 30.783632, 44.167973>,  <33.461018, 30.981750, 44.283741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.390682, 30.783632, 44.167973>,  <33.273457, 30.453436, 43.975025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.390682, 30.783632, 44.167973> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036280, 0.494556, -0.868388,
		-0.955405, 0.271992, 0.114988,
		0.293063, 0.825490, 0.482369,
		33.478600, 31.031279, 44.312683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.784527, 31.002237, 43.767200>,  <33.273457, 30.453436, 43.975025>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.784527, 31.002237, 43.767200> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.096619, 31.213234, 43.901657>,  <33.283875, 31.339832, 43.982330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.096619, 31.213234, 43.901657>,  <32.784527, 31.002237, 43.767200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.096619, 31.213234, 43.901657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008708, 0.546513, -0.837405,
		-0.625429, 0.650444, 0.431001,
		0.780233, 0.527491, 0.336141,
		33.330688, 31.371481, 44.002499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.550797, 31.594355, 43.697353>,  <32.784527, 31.002237, 43.767200>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.550797, 31.594355, 43.697353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.949245, 31.629486, 43.699738>,  <33.188313, 31.650564, 43.701168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.949245, 31.629486, 43.699738>,  <32.550797, 31.594355, 43.697353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.949245, 31.629486, 43.699738> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040649, 0.518939, -0.853844,
		-0.078082, 0.850287, 0.520495,
		0.996118, 0.087828, 0.005956,
		33.248081, 31.655834, 43.701523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.733295, 32.322792, 43.634274>,  <32.550797, 31.594355, 43.697353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.733295, 32.322792, 43.634274> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.054195, 32.118221, 43.511089>,  <33.246735, 31.995480, 43.437180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.054195, 32.118221, 43.511089>,  <32.733295, 32.322792, 43.634274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.054195, 32.118221, 43.511089> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062366, 0.584826, -0.808757,
		0.593722, 0.629620, 0.501073,
		0.802250, -0.511427, -0.307957,
		33.294872, 31.964794, 43.418701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.246609, 32.853836, 43.199249>,  <32.733295, 32.322792, 43.634274>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.246609, 32.853836, 43.199249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.405560, 32.495155, 43.121258>,  <33.500931, 32.279945, 43.074463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.405560, 32.495155, 43.121258>,  <33.246609, 32.853836, 43.199249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.405560, 32.495155, 43.121258> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358139, 0.347173, -0.866722,
		0.844882, 0.274589, 0.459103,
		0.397381, -0.896700, -0.194979,
		33.524773, 32.226147, 43.062763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.772003, 33.076458, 42.839413>,  <33.246609, 32.853836, 43.199249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.772003, 33.076458, 42.839413> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.719074, 32.700199, 42.714397>,  <33.687317, 32.474445, 42.639389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.719074, 32.700199, 42.714397>,  <33.772003, 33.076458, 42.839413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.719074, 32.700199, 42.714397> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285492, 0.265782, -0.920790,
		0.949203, -0.211067, 0.233378,
		-0.132321, -0.940644, -0.312539,
		33.679379, 32.418007, 42.620636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.425732, 34.760017, 41.777630> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.037457, 34.848724, 41.814705>,  <41.804493, 34.901947, 41.836952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.037457, 34.848724, 41.814705>,  <42.425732, 34.760017, 41.777630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.037457, 34.848724, 41.814705> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152108, -0.268178, -0.951285,
		-0.186101, -0.937498, 0.294049,
		-0.970685, 0.221762, 0.092692,
		41.746250, 34.915253, 41.842514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.032867, 34.115551, 41.749798>,  <42.425732, 34.760017, 41.777630>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.032867, 34.115551, 41.749798> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.834373, 34.444603, 41.638779>,  <41.715279, 34.642033, 41.572166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.834373, 34.444603, 41.638779>,  <42.032867, 34.115551, 41.749798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.834373, 34.444603, 41.638779> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027014, -0.304906, -0.951999,
		-0.867767, -0.479914, 0.129083,
		-0.496236, 0.822627, -0.277552,
		41.685501, 34.691391, 41.555511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.593956, 33.845325, 41.264557>,  <42.032867, 34.115551, 41.749798>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.593956, 33.845325, 41.264557> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.570023, 34.241142, 41.212067>,  <41.555664, 34.478634, 41.180573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.570023, 34.241142, 41.212067>,  <41.593956, 33.845325, 41.264557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.570023, 34.241142, 41.212067> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122473, -0.137742, -0.982867,
		-0.990667, -0.042736, 0.129434,
		-0.059832, 0.989546, -0.131222,
		41.552074, 34.538006, 41.172699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.191322, 33.868702, 40.637833>,  <41.593956, 33.845325, 41.264557>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.191322, 33.868702, 40.637833> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.371029, 34.223900, 40.677078>,  <41.478851, 34.437019, 40.700626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.371029, 34.223900, 40.677078>,  <41.191322, 33.868702, 40.637833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.371029, 34.223900, 40.677078> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149916, 0.033327, -0.988137,
		-0.880731, 0.458643, -0.118152,
		0.449265, 0.887995, 0.098110,
		41.505810, 34.490299, 40.706512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.921894, 34.261791, 40.035473>,  <41.191322, 33.868702, 40.637833>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.921894, 34.261791, 40.035473> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.259048, 34.432693, 40.166313>,  <41.461342, 34.535236, 40.244820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.259048, 34.432693, 40.166313>,  <40.921894, 34.261791, 40.035473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.259048, 34.432693, 40.166313> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280753, 0.169400, -0.944712,
		-0.459045, 0.888119, 0.022831,
		0.842885, 0.427256, 0.327105,
		41.511913, 34.560871, 40.264446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.066788, 34.927143, 39.638248>,  <40.921894, 34.261791, 40.035473>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.066788, 34.927143, 39.638248> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.423706, 34.833031, 39.792370>,  <41.637856, 34.776566, 39.884842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.423706, 34.833031, 39.792370>,  <41.066788, 34.927143, 39.638248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.423706, 34.833031, 39.792370> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420372, 0.121800, -0.899139,
		0.164618, 0.964266, 0.207586,
		0.892294, -0.235278, 0.385300,
		41.691395, 34.762447, 39.907959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.438499, 35.527176, 39.560677>,  <41.066788, 34.927143, 39.638248>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.438499, 35.527176, 39.560677> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.709106, 35.237839, 39.615948>,  <41.871471, 35.064236, 39.649109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.709106, 35.237839, 39.615948>,  <41.438499, 35.527176, 39.560677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.709106, 35.237839, 39.615948> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368569, 0.170136, -0.913898,
		0.637557, 0.669196, 0.381703,
		0.676519, -0.723346, 0.138174,
		41.912064, 35.020836, 39.657398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.116280, 35.873070, 39.526134>,  <41.438499, 35.527176, 39.560677>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.116280, 35.873070, 39.526134> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.223221, 35.493103, 39.461407>,  <42.287384, 35.265125, 39.422569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.223221, 35.493103, 39.461407>,  <42.116280, 35.873070, 39.526134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.223221, 35.493103, 39.461407> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690023, 0.305946, -0.655946,
		0.672600, 0.063712, 0.737258,
		0.267353, -0.949915, -0.161816,
		42.303429, 35.208130, 39.412861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.896500, 35.787312, 39.507839>,  <42.116280, 35.873070, 39.526134>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.896500, 35.787312, 39.507839> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.775719, 35.457787, 39.315941>,  <42.703251, 35.260071, 39.200802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.775719, 35.457787, 39.315941>,  <42.896500, 35.787312, 39.507839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.775719, 35.457787, 39.315941> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720700, 0.132151, -0.680534,
		0.624032, -0.551242, 0.553820,
		-0.301951, -0.823814, -0.479746,
		42.685135, 35.210644, 39.172016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.479794, 35.443146, 39.358620>,  <42.896500, 35.787312, 39.507839>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.479794, 35.443146, 39.358620> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.211830, 35.304314, 39.096092>,  <43.051052, 35.221016, 38.938576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.211830, 35.304314, 39.096092>,  <43.479794, 35.443146, 39.358620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.211830, 35.304314, 39.096092> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658779, 0.129790, -0.741056,
		0.342390, -0.928811, 0.141703,
		-0.669909, -0.347081, -0.656320,
		43.010857, 35.200188, 38.899197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.867184, 35.042110, 38.944836>,  <43.479794, 35.443146, 39.358620>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.867184, 35.042110, 38.944836> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.540363, 35.136822, 38.734554>,  <43.344273, 35.193649, 38.608383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.540363, 35.136822, 38.734554>,  <43.867184, 35.042110, 38.944836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.540363, 35.136822, 38.734554> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570386, 0.465120, -0.676995,
		0.084217, -0.852993, -0.515083,
		-0.817048, 0.236782, -0.525706,
		43.295250, 35.207855, 38.576843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.013763, 34.915245, 38.234127>,  <43.867184, 35.042110, 38.944836>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.013763, 34.915245, 38.234127> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.707077, 35.168900, 38.194096>,  <43.523064, 35.321091, 38.170078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.707077, 35.168900, 38.194096>,  <44.013763, 34.915245, 38.234127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.707077, 35.168900, 38.194096> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325991, 0.250275, -0.911643,
		-0.553059, -0.731597, -0.398613,
		-0.766718, 0.634136, -0.100077,
		43.477062, 35.359138, 38.164074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.823513, 34.723297, 37.545090>,  <44.013763, 34.915245, 38.234127>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.823513, 34.723297, 37.545090> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.678665, 35.084187, 37.638786>,  <43.591755, 35.300720, 37.695004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.678665, 35.084187, 37.638786>,  <43.823513, 34.723297, 37.545090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.678665, 35.084187, 37.638786> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380123, 0.372384, -0.846662,
		-0.851103, -0.217551, -0.477802,
		-0.362118, 0.902220, 0.234241,
		43.570030, 35.354851, 37.709057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.370125, 34.842216, 36.964668>,  <43.823513, 34.723297, 37.545090>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.370125, 34.842216, 36.964668> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.468796, 35.173439, 37.166054>,  <43.528000, 35.372173, 37.286884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.468796, 35.173439, 37.166054>,  <43.370125, 34.842216, 36.964668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.468796, 35.173439, 37.166054> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354662, 0.406341, -0.842082,
		-0.901867, 0.386286, -0.193442,
		0.246681, 0.828052, 0.503466,
		43.542801, 35.421856, 37.317093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.089039, 35.471294, 36.608982>,  <43.370125, 34.842216, 36.964668>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.089039, 35.471294, 36.608982> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.387959, 35.603539, 36.839542>,  <43.567310, 35.682884, 36.977879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.387959, 35.603539, 36.839542>,  <43.089039, 35.471294, 36.608982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.387959, 35.603539, 36.839542> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432084, 0.417232, -0.799513,
		-0.504818, 0.846531, 0.168948,
		0.747304, 0.330609, 0.576399,
		43.612148, 35.702721, 37.012463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.210938, 36.124531, 36.308868>,  <43.089039, 35.471294, 36.608982>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.210938, 36.124531, 36.308868> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.544395, 36.022720, 36.504929>,  <43.744473, 35.961632, 36.622562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.544395, 36.022720, 36.504929>,  <43.210938, 36.124531, 36.308868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.544395, 36.022720, 36.504929> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552238, 0.396968, -0.733110,
		-0.007975, 0.881834, 0.471493,
		0.833649, -0.254530, 0.490147,
		43.794491, 35.946362, 36.651974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.616699, 36.648903, 36.083275>,  <43.210938, 36.124531, 36.308868>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.616699, 36.648903, 36.083275> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.871189, 36.374767, 36.224995>,  <44.023884, 36.210285, 36.310028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.871189, 36.374767, 36.224995>,  <43.616699, 36.648903, 36.083275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.871189, 36.374767, 36.224995> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635345, 0.204902, -0.744548,
		0.437674, 0.698800, 0.565792,
		0.636222, -0.685342, 0.354299,
		44.062057, 36.169163, 36.331284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.218391, 36.896076, 35.971806>,  <43.616699, 36.648903, 36.083275>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.218391, 36.896076, 35.971806> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.298290, 36.507557, 36.023457>,  <44.346230, 36.274445, 36.054447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.298290, 36.507557, 36.023457>,  <44.218391, 36.896076, 35.971806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.298290, 36.507557, 36.023457> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738673, 0.062684, -0.671143,
		0.643789, 0.229438, 0.729996,
		0.199745, -0.971303, 0.129124,
		44.358215, 36.216167, 36.062195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.921490, 36.875042, 36.094707>,  <44.218391, 36.896076, 35.971806>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.921490, 36.875042, 36.094707> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.821819, 36.510300, 35.964211>,  <44.762016, 36.291454, 35.885910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.821819, 36.510300, 35.964211>,  <44.921490, 36.875042, 36.094707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.821819, 36.510300, 35.964211> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831142, -0.028427, -0.555333,
		0.497108, -0.409531, 0.764963,
		-0.249172, -0.911853, -0.326247,
		44.747066, 36.236744, 35.866337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.555424, 36.467846, 36.084896>,  <44.921490, 36.875042, 36.094707>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.555424, 36.467846, 36.084896> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.321732, 36.253311, 35.841248>,  <45.181519, 36.124592, 35.695057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.321732, 36.253311, 35.841248>,  <45.555424, 36.467846, 36.084896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.321732, 36.253311, 35.841248> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790837, -0.207568, -0.575753,
		0.182362, -0.818085, 0.545419,
		-0.584226, -0.536333, -0.609120,
		45.146465, 36.092411, 35.658512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.972282, 35.883339, 35.946564>,  <45.555424, 36.467846, 36.084896>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.972282, 35.883339, 35.946564> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.696354, 35.888676, 35.657021>,  <45.530796, 35.891876, 35.483295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.696354, 35.888676, 35.657021>,  <45.972282, 35.883339, 35.946564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.696354, 35.888676, 35.657021> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723801, -0.009642, -0.689942,
		-0.016195, -0.999864, -0.003017,
		-0.689819, 0.013358, -0.723859,
		45.489407, 35.892677, 35.439861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.506420, 35.387169, 36.079727>,  <45.972282, 35.883339, 35.946564>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.506420, 35.387169, 36.079727> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.844513, 35.258575, 36.250481>,  <47.047367, 35.181419, 36.352932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.844513, 35.258575, 36.250481>,  <46.506420, 35.387169, 36.079727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.844513, 35.258575, 36.250481> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411297, 0.118668, 0.903744,
		-0.341199, -0.939449, -0.031925,
		0.845232, -0.321487, 0.426882,
		47.098083, 35.162128, 36.378544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.346634, 34.827934, 36.549477>,  <46.506420, 35.387169, 36.079727>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.346634, 34.827934, 36.549477> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.700012, 34.962467, 36.679958>,  <46.912041, 35.043186, 36.758247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.700012, 34.962467, 36.679958>,  <46.346634, 34.827934, 36.549477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.700012, 34.962467, 36.679958> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353596, 0.021820, 0.935144,
		0.307402, -0.941490, 0.138202,
		0.883444, 0.336333, 0.326200,
		46.965046, 35.063366, 36.777817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.440277, 34.514915, 37.167046>,  <46.346634, 34.827934, 36.549477>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.440277, 34.514915, 37.167046> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.725643, 34.793797, 37.195187>,  <46.896862, 34.961124, 37.212070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.725643, 34.793797, 37.195187>,  <46.440277, 34.514915, 37.167046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.725643, 34.793797, 37.195187> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133194, 0.036352, 0.990423,
		0.687965, -0.715955, 0.118797,
		0.713417, 0.697200, 0.070352,
		46.939667, 35.002956, 37.216293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.977505, 34.289780, 37.757389>,  <46.440277, 34.514915, 37.167046>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.977505, 34.289780, 37.757389> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.030647, 34.679859, 37.686581>,  <47.062531, 34.913906, 37.644096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.030647, 34.679859, 37.686581>,  <46.977505, 34.289780, 37.757389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.030647, 34.679859, 37.686581> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184943, 0.199855, 0.962213,
		0.973728, -0.095096, 0.206908,
		0.132854, 0.975200, -0.177017,
		47.070503, 34.972420, 37.633476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.348316, 34.513748, 38.359470>,  <46.977505, 34.289780, 37.757389>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.348316, 34.513748, 38.359470> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.188545, 34.834957, 38.182556>,  <47.092682, 35.027683, 38.076408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.188545, 34.834957, 38.182556>,  <47.348316, 34.513748, 38.359470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.188545, 34.834957, 38.182556> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399216, 0.281941, 0.872431,
		0.825280, 0.525037, 0.207965,
		-0.399425, 0.803023, -0.442283,
		47.068718, 35.075863, 38.049870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.326054, 34.952511, 38.841934>,  <47.348316, 34.513748, 38.359470>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.326054, 34.952511, 38.841934> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.063618, 35.103405, 38.580482>,  <46.906155, 35.193943, 38.423611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.063618, 35.103405, 38.580482>,  <47.326054, 34.952511, 38.841934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.063618, 35.103405, 38.580482> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559187, 0.338632, 0.756729,
		0.506807, 0.861986, -0.011227,
		-0.656092, 0.377237, -0.653633,
		46.866791, 35.216576, 38.384392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.133015, 35.586777, 39.117874>,  <47.326054, 34.952511, 38.841934>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.133015, 35.586777, 39.117874> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.846500, 35.531483, 38.844284>,  <46.674591, 35.498306, 38.680130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.846500, 35.531483, 38.844284>,  <47.133015, 35.586777, 39.117874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.846500, 35.531483, 38.844284> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679713, 0.359970, 0.639071,
		0.157870, 0.922666, -0.351801,
		-0.716287, -0.138233, -0.683977,
		46.631615, 35.490013, 38.639091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.739605, 36.165096, 39.189919>,  <47.133015, 35.586777, 39.117874>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.739605, 36.165096, 39.189919> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.533386, 35.882015, 38.996685>,  <46.409657, 35.712166, 38.880745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.533386, 35.882015, 38.996685>,  <46.739605, 36.165096, 39.189919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.533386, 35.882015, 38.996685> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764259, 0.124844, 0.632711,
		-0.387460, 0.695393, -0.605230,
		-0.515542, -0.707702, -0.483088,
		46.378723, 35.669704, 38.851757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.092098, 36.509254, 39.038628>,  <46.739605, 36.165096, 39.189919>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.092098, 36.509254, 39.038628> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.025478, 36.115093, 39.024479>,  <45.985508, 35.878597, 39.015991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.025478, 36.115093, 39.024479>,  <46.092098, 36.509254, 39.038628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.025478, 36.115093, 39.024479> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598148, 0.072451, 0.798104,
		-0.783888, 0.154078, -0.601481,
		-0.166548, -0.985399, -0.035368,
		45.975513, 35.819473, 39.013870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.358803, 36.365677, 39.078251>,  <46.092098, 36.509254, 39.038628>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.358803, 36.365677, 39.078251> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.516655, 36.017506, 39.195980>,  <45.611366, 35.808605, 39.266617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.516655, 36.017506, 39.195980>,  <45.358803, 36.365677, 39.078251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.516655, 36.017506, 39.195980> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645532, -0.034689, 0.762945,
		-0.653876, -0.491078, -0.575576,
		0.394632, -0.870424, 0.294324,
		45.635044, 35.756378, 39.284279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.742962, 35.950661, 39.265495>,  <45.358803, 36.365677, 39.078251>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.742962, 35.950661, 39.265495> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.060799, 35.769535, 39.427273>,  <45.251503, 35.660858, 39.524338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.060799, 35.769535, 39.427273>,  <44.742962, 35.950661, 39.265495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.060799, 35.769535, 39.427273> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517032, -0.155471, 0.841728,
		-0.318269, -0.877945, -0.357657,
		0.794596, -0.452815, 0.404444,
		45.299179, 35.633690, 39.548607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.542931, 35.353630, 39.511353>,  <44.742962, 35.950661, 39.265495>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.542931, 35.353630, 39.511353> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.853050, 35.429188, 39.752430>,  <45.039120, 35.474522, 39.897076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.853050, 35.429188, 39.752430>,  <44.542931, 35.353630, 39.511353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.853050, 35.429188, 39.752430> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546396, -0.278057, 0.790022,
		0.316811, -0.941809, -0.112367,
		0.775295, 0.188891, 0.602693,
		45.085640, 35.485855, 39.933239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.541119, 34.869347, 40.004555>,  <44.542931, 35.353630, 39.511353>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.541119, 34.869347, 40.004555> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.767284, 35.151505, 40.175537>,  <44.902985, 35.320801, 40.278126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.767284, 35.151505, 40.175537>,  <44.541119, 34.869347, 40.004555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.767284, 35.151505, 40.175537> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312750, -0.296197, 0.902471,
		0.763212, -0.643959, 0.053139,
		0.565415, 0.705396, 0.427460,
		44.936909, 35.363125, 40.303776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.773773, 34.513630, 40.557652>,  <44.541119, 34.869347, 40.004555>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.773773, 34.513630, 40.557652> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.829430, 34.899166, 40.648563>,  <44.862823, 35.130489, 40.703110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.829430, 34.899166, 40.648563>,  <44.773773, 34.513630, 40.557652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.829430, 34.899166, 40.648563> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221173, -0.193464, 0.955853,
		0.965258, -0.183265, 0.186257,
		0.139140, 0.963839, 0.227275,
		44.871170, 35.188316, 40.716747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.099346, 34.488544, 41.099964>,  <44.773773, 34.513630, 40.557652>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.099346, 34.488544, 41.099964> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.988853, 34.870171, 41.146355>,  <44.922558, 35.099148, 41.174191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.988853, 34.870171, 41.146355>,  <45.099346, 34.488544, 41.099964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.988853, 34.870171, 41.146355> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128814, -0.156339, 0.979268,
		0.952419, 0.255565, 0.166083,
		-0.276232, 0.954067, 0.115980,
		44.905983, 35.156391, 41.181149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.386898, 34.672501, 41.747051>,  <45.099346, 34.488544, 41.099964>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.386898, 34.672501, 41.747051> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.134899, 34.973106, 41.668743>,  <44.983700, 35.153469, 41.621758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.134899, 34.973106, 41.668743>,  <45.386898, 34.672501, 41.747051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.134899, 34.973106, 41.668743> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411210, -0.108971, 0.905004,
		0.658791, 0.650654, 0.377682,
		-0.630001, 0.751515, -0.195766,
		44.945900, 35.198563, 41.610012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.475914, 35.218800, 42.176014>,  <45.386898, 34.672501, 41.747051>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.475914, 35.218800, 42.176014> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.095165, 35.234398, 42.054417>,  <44.866714, 35.243755, 41.981457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.095165, 35.234398, 42.054417>,  <45.475914, 35.218800, 42.176014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.095165, 35.234398, 42.054417> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306452, -0.136096, 0.942107,
		-0.004636, 0.989928, 0.141496,
		-0.951875, 0.038994, -0.303996,
		44.809605, 35.246098, 41.963219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.182178, 35.410950, 42.761623>,  <45.475914, 35.218800, 42.176014>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.182178, 35.410950, 42.761623> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.860020, 35.319206, 42.542995>,  <44.666725, 35.264160, 42.411819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.860020, 35.319206, 42.542995>,  <45.182178, 35.410950, 42.761623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.860020, 35.319206, 42.542995> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510777, -0.199316, 0.836289,
		-0.300748, 0.952717, 0.043378,
		-0.805393, -0.229356, -0.546570,
		44.618401, 35.250401, 42.379025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.570328, 35.865284, 42.967731>,  <45.182178, 35.410950, 42.761623>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.570328, 35.865284, 42.967731> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.477024, 35.500847, 42.831795>,  <44.421043, 35.282185, 42.750233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.477024, 35.500847, 42.831795>,  <44.570328, 35.865284, 42.967731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.477024, 35.500847, 42.831795> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570333, -0.154881, 0.806679,
		-0.787598, 0.381989, -0.483501,
		-0.233258, -0.911096, -0.339845,
		44.407047, 35.227516, 42.729839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.879204, 35.818844, 43.193302>,  <44.570328, 35.865284, 42.967731>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.879204, 35.818844, 43.193302> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.977299, 35.445141, 43.089748>,  <44.036156, 35.220921, 43.027615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.977299, 35.445141, 43.089748>,  <43.879204, 35.818844, 43.193302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.977299, 35.445141, 43.089748> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487128, -0.349630, 0.800291,
		-0.838191, -0.070154, -0.540846,
		0.245240, -0.934257, -0.258883,
		44.050869, 35.164864, 43.012085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.236660, 35.315895, 43.073559>,  <43.879204, 35.818844, 43.193302>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.236660, 35.315895, 43.073559> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.549053, 35.083683, 43.165691>,  <43.736488, 34.944355, 43.220970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.549053, 35.083683, 43.165691>,  <43.236660, 35.315895, 43.073559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.549053, 35.083683, 43.165691> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533415, -0.428168, 0.729480,
		-0.324866, -0.692572, -0.644055,
		0.780981, -0.580532, 0.230331,
		43.783348, 34.909523, 43.234791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.547829, 34.823250, 40.193226> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.597492, 34.428875, 40.148464>,  <38.627289, 34.192249, 40.121605>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.597492, 34.428875, 40.148464>,  <38.547829, 34.823250, 40.193226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.597492, 34.428875, 40.148464> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226219, 0.137934, -0.964261,
		0.966132, 0.094402, 0.240162,
		0.124155, -0.985932, -0.111906,
		38.634739, 34.133095, 40.114891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.190159, 34.790363, 39.824642>,  <38.547829, 34.823250, 40.193226>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.190159, 34.790363, 39.824642> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.988525, 34.448586, 39.774323>,  <38.867546, 34.243519, 39.744133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.988525, 34.448586, 39.774323>,  <39.190159, 34.790363, 39.824642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.988525, 34.448586, 39.774323> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187249, 0.034068, -0.981722,
		0.843115, -0.518421, 0.142821,
		-0.504079, -0.854447, -0.125797,
		38.837303, 34.192253, 39.736584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.575245, 34.494473, 39.422134>,  <39.190159, 34.790363, 39.824642>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.575245, 34.494473, 39.422134> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.259434, 34.253986, 39.372849>,  <39.069946, 34.109695, 39.343277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.259434, 34.253986, 39.372849>,  <39.575245, 34.494473, 39.422134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.259434, 34.253986, 39.372849> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114208, 0.053333, -0.992024,
		0.602990, -0.797307, 0.026555,
		-0.789532, -0.601214, -0.123218,
		39.022575, 34.073624, 39.335884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.836258, 33.959091, 38.998329>,  <39.575245, 34.494473, 39.422134>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.836258, 33.959091, 38.998329> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.437244, 33.932522, 38.989216>,  <39.197838, 33.916580, 38.983749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.437244, 33.932522, 38.989216>,  <39.836258, 33.959091, 38.998329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.437244, 33.932522, 38.989216> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028843, -0.091771, -0.995362,
		0.064029, -0.993562, 0.093461,
		-0.997531, -0.066427, -0.022781,
		39.137985, 33.912594, 38.982380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.605675, 33.334774, 38.703121>,  <39.836258, 33.959091, 38.998329>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.605675, 33.334774, 38.703121> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.293682, 33.577896, 38.643517>,  <39.106487, 33.723770, 38.607754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.293682, 33.577896, 38.643517>,  <39.605675, 33.334774, 38.703121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.293682, 33.577896, 38.643517> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051893, -0.174467, -0.983295,
		-0.623651, -0.774681, 0.104540,
		-0.779979, 0.607807, -0.149007,
		39.059689, 33.760239, 38.598816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.226025, 32.968044, 38.294044>,  <39.605675, 33.334774, 38.703121>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.226025, 32.968044, 38.294044> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.107128, 33.346836, 38.245255>,  <39.035789, 33.574112, 38.215981>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.107128, 33.346836, 38.245255>,  <39.226025, 32.968044, 38.294044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.107128, 33.346836, 38.245255> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043488, -0.141040, -0.989048,
		-0.953811, -0.288685, 0.083105,
		-0.297244, 0.946979, -0.121971,
		39.017956, 33.630928, 38.208664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.765892, 32.902000, 37.857082>,  <39.226025, 32.968044, 38.294044>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.765892, 32.902000, 37.857082> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.872383, 33.287144, 37.839096>,  <38.936275, 33.518230, 37.828304>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.872383, 33.287144, 37.839096>,  <38.765892, 32.902000, 37.857082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.872383, 33.287144, 37.839096> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074753, -0.025890, -0.996866,
		-0.961008, 0.268753, 0.065084,
		0.266225, 0.962861, -0.044970,
		38.952251, 33.576000, 37.825603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.318077, 33.101425, 37.408142>,  <38.765892, 32.902000, 37.857082>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.318077, 33.101425, 37.408142> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.612160, 33.371140, 37.380402>,  <38.788609, 33.532967, 37.363758>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.612160, 33.371140, 37.380402>,  <38.318077, 33.101425, 37.408142>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.612160, 33.371140, 37.380402> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118608, 0.027242, -0.992567,
		-0.667385, 0.737967, 0.100004,
		0.735207, 0.674286, -0.069348,
		38.832722, 33.573425, 37.359596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.103851, 33.643482, 36.856838>,  <38.318077, 33.101425, 37.408142>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.103851, 33.643482, 36.856838> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.483345, 33.765072, 36.891476>,  <38.711040, 33.838024, 36.912258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.483345, 33.765072, 36.891476>,  <38.103851, 33.643482, 36.856838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.483345, 33.765072, 36.891476> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059954, 0.095932, -0.993581,
		-0.310326, 0.947839, 0.072790,
		0.948738, 0.303970, 0.086597,
		38.767967, 33.856262, 36.917454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.174660, 34.243313, 36.459450>,  <38.103851, 33.643482, 36.856838>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.174660, 34.243313, 36.459450> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.541626, 34.090515, 36.504036>,  <38.761806, 33.998837, 36.530788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.541626, 34.090515, 36.504036>,  <38.174660, 34.243313, 36.459450>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.541626, 34.090515, 36.504036> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154501, 0.083810, -0.984431,
		0.366702, 0.920358, 0.135907,
		0.917420, -0.381991, 0.111463,
		38.816853, 33.975918, 36.537476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.714382, 34.733639, 36.187748>,  <38.174660, 34.243313, 36.459450>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.714382, 34.733639, 36.187748> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.877117, 34.369408, 36.158558>,  <38.974758, 34.150867, 36.141045>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.877117, 34.369408, 36.158558>,  <38.714382, 34.733639, 36.187748>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.877117, 34.369408, 36.158558> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398767, 0.248901, -0.882629,
		0.821868, 0.329987, 0.464372,
		0.406839, -0.910580, -0.072976,
		38.999168, 34.096233, 36.136665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.455791, 34.830368, 36.048061>,  <38.714382, 34.733639, 36.187748>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.455791, 34.830368, 36.048061> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.329849, 34.478718, 35.904953>,  <39.254284, 34.267727, 35.819088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.329849, 34.478718, 35.904953>,  <39.455791, 34.830368, 36.048061>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.329849, 34.478718, 35.904953> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484339, 0.175351, -0.857128,
		0.816260, -0.443156, 0.370585,
		-0.314859, -0.879127, -0.357770,
		39.235394, 34.214981, 35.797623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.984863, 34.580029, 35.661098>,  <39.455791, 34.830368, 36.048061>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.984863, 34.580029, 35.661098> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.657551, 34.407089, 35.509579>,  <39.461163, 34.303326, 35.418667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.657551, 34.407089, 35.509579>,  <39.984863, 34.580029, 35.661098>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.657551, 34.407089, 35.509579> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238495, 0.344225, -0.908091,
		0.523006, -0.833416, -0.178559,
		-0.818281, -0.432352, -0.378797,
		39.412067, 34.277382, 35.395939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.072823, 34.370491, 34.988407>,  <39.984863, 34.580029, 35.661098>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.072823, 34.370491, 34.988407> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.672909, 34.376930, 34.983280>,  <39.432961, 34.380795, 34.980202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.672909, 34.376930, 34.983280>,  <40.072823, 34.370491, 34.988407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.672909, 34.376930, 34.983280> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018365, 0.416801, -0.908812,
		-0.009286, -0.908855, -0.417008,
		-0.999788, 0.016098, -0.012820,
		39.372971, 34.381760, 34.979435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.655529, 34.606346, 35.272438>,  <40.072823, 34.370491, 34.988407>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.655529, 34.606346, 35.272438> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.012745, 34.429996, 35.236408>,  <41.227074, 34.324188, 35.214790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.012745, 34.429996, 35.236408>,  <40.655529, 34.606346, 35.272438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.012745, 34.429996, 35.236408> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237164, -0.631261, 0.738419,
		-0.382409, -0.638074, -0.668300,
		0.893038, -0.440875, -0.090071,
		41.280655, 34.297733, 35.209385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.499409, 33.971272, 35.521076>,  <40.655529, 34.606346, 35.272438>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.499409, 33.971272, 35.521076> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.898010, 33.938519, 35.514404>,  <41.137173, 33.918869, 35.510403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.898010, 33.938519, 35.514404>,  <40.499409, 33.971272, 35.521076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.898010, 33.938519, 35.514404> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062895, -0.866379, 0.495411,
		-0.055015, -0.492629, -0.868499,
		0.996503, -0.081879, -0.016680,
		41.196960, 33.913956, 35.509399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.563671, 33.365334, 35.519100>,  <40.499409, 33.971272, 35.521076>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.563671, 33.365334, 35.519100> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.939907, 33.455414, 35.620754>,  <41.165649, 33.509460, 35.681747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.939907, 33.455414, 35.620754>,  <40.563671, 33.365334, 35.519100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.939907, 33.455414, 35.620754> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016666, -0.778141, 0.627868,
		0.339146, -0.586329, -0.735662,
		0.940586, 0.225199, 0.254131,
		41.222084, 33.522972, 35.696995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.040009, 32.747391, 35.454311>,  <40.563671, 33.365334, 35.519100>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.040009, 32.747391, 35.454311> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.199123, 33.001801, 35.718807>,  <41.294590, 33.154446, 35.877506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.199123, 33.001801, 35.718807>,  <41.040009, 32.747391, 35.454311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.199123, 33.001801, 35.718807> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145013, -0.668072, 0.729829,
		0.905946, -0.386204, -0.173517,
		0.397785, 0.636024, 0.661242,
		41.318459, 33.192608, 35.917179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.532990, 32.301598, 35.783295>,  <41.040009, 32.747391, 35.454311>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.532990, 32.301598, 35.783295> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.493793, 32.613758, 36.030315>,  <41.470276, 32.801056, 36.178528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.493793, 32.613758, 36.030315>,  <41.532990, 32.301598, 35.783295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.493793, 32.613758, 36.030315> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003533, -0.620804, 0.783958,
		0.995181, 0.074638, 0.063590,
		-0.097989, 0.780405, 0.617549,
		41.464397, 32.847881, 36.215580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.124828, 32.190201, 36.317394>,  <41.532990, 32.301598, 35.783295>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.124828, 32.190201, 36.317394> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.847694, 32.433372, 36.472515>,  <41.681412, 32.579277, 36.565590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.847694, 32.433372, 36.472515>,  <42.124828, 32.190201, 36.317394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.847694, 32.433372, 36.472515> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074670, -0.474425, 0.877123,
		0.717216, 0.636662, 0.283306,
		-0.692839, 0.607933, 0.387804,
		41.639843, 32.615753, 36.588856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.258873, 32.253498, 37.033546>,  <42.124828, 32.190201, 36.317394>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.258873, 32.253498, 37.033546> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.885155, 32.395149, 37.049946>,  <41.660923, 32.480141, 37.059784>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.885155, 32.395149, 37.049946>,  <42.258873, 32.253498, 37.033546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.885155, 32.395149, 37.049946> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122553, -0.427052, 0.895884,
		0.334766, 0.831998, 0.442393,
		-0.934298, 0.354128, 0.040999,
		41.604866, 32.501389, 37.062244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.079529, 32.482456, 37.820419>,  <42.258873, 32.253498, 37.033546>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.079529, 32.482456, 37.820419> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.747837, 32.380180, 37.621624>,  <41.548824, 32.318813, 37.502346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.747837, 32.380180, 37.621624>,  <42.079529, 32.482456, 37.820419>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.747837, 32.380180, 37.621624> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349632, -0.456434, 0.818184,
		-0.436050, 0.852225, 0.289089,
		-0.829228, -0.255694, -0.496993,
		41.499069, 32.303471, 37.472527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.482376, 32.801254, 38.190140>,  <42.079529, 32.482456, 37.820419>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.482376, 32.801254, 38.190140> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.351582, 32.489223, 37.976761>,  <41.273106, 32.302006, 37.848736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.351582, 32.489223, 37.976761>,  <41.482376, 32.801254, 38.190140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.351582, 32.489223, 37.976761> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561048, -0.293991, 0.773818,
		-0.760463, 0.552317, -0.341528,
		-0.326987, -0.780074, -0.533445,
		41.253487, 32.255199, 37.816727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.830925, 32.794086, 38.325752>,  <41.482376, 32.801254, 38.190140>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.830925, 32.794086, 38.325752> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.916382, 32.426647, 38.192764>,  <40.967655, 32.206184, 38.112972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.916382, 32.426647, 38.192764>,  <40.830925, 32.794086, 38.325752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.916382, 32.426647, 38.192764> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537369, -0.394718, 0.745274,
		-0.815839, 0.019439, -0.577953,
		0.213641, -0.918597, -0.332472,
		40.980473, 32.151070, 38.093021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.255077, 32.429905, 38.464352>,  <40.830925, 32.794086, 38.325752>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.255077, 32.429905, 38.464352> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.514931, 32.133663, 38.395683>,  <40.670845, 31.955917, 38.354481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.514931, 32.133663, 38.395683>,  <40.255077, 32.429905, 38.464352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.514931, 32.133663, 38.395683> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450995, -0.557213, 0.697221,
		-0.612027, -0.375516, -0.695996,
		0.649635, -0.740609, -0.171674,
		40.709824, 31.911480, 38.344181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.874420, 31.889439, 38.551239>,  <40.255077, 32.429905, 38.464352>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.874420, 31.889439, 38.551239> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.255470, 31.778143, 38.600376>,  <40.484100, 31.711367, 38.629856>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.255470, 31.778143, 38.600376>,  <39.874420, 31.889439, 38.551239>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.255470, 31.778143, 38.600376> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252997, -0.500737, 0.827801,
		-0.168813, -0.819662, -0.547408,
		0.952625, -0.278237, 0.122841,
		40.541256, 31.694672, 38.637230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.814491, 31.189789, 38.836983>,  <39.874420, 31.889439, 38.551239>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.814491, 31.189789, 38.836983> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.195923, 31.291061, 38.902206>,  <40.424782, 31.351826, 38.941341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.195923, 31.291061, 38.902206>,  <39.814491, 31.189789, 38.836983>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.195923, 31.291061, 38.902206> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019258, -0.489076, 0.872029,
		0.300529, -0.834688, -0.461496,
		0.953578, 0.253183, 0.163056,
		40.481995, 31.367016, 38.951122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.122757, 30.585693, 38.980965>,  <39.814491, 31.189789, 38.836983>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.122757, 30.585693, 38.980965> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.336742, 30.883059, 39.141537>,  <40.465134, 31.061478, 39.237881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.336742, 30.883059, 39.141537>,  <40.122757, 30.585693, 38.980965>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.336742, 30.883059, 39.141537> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155666, -0.380275, 0.911679,
		0.830411, -0.550204, -0.087708,
		0.534963, 0.743416, 0.401433,
		40.497231, 31.106083, 39.261967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.456680, 29.807728, 39.149010>,  <40.122757, 30.585693, 38.980965>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.456680, 29.807728, 39.149010> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.318848, 29.433737, 39.115360>,  <40.236149, 29.209341, 39.095169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.318848, 29.433737, 39.115360>,  <40.456680, 29.807728, 39.149010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.318848, 29.433737, 39.115360> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215453, 0.008454, -0.976478,
		0.913698, -0.354601, 0.198532,
		-0.344582, -0.934979, -0.084124,
		40.215473, 29.153242, 39.090122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.920544, 29.477983, 38.817802>,  <40.456680, 29.807728, 39.149010>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.920544, 29.477983, 38.817802> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.579826, 29.277569, 38.756592>,  <40.375397, 29.157320, 38.719868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.579826, 29.277569, 38.756592>,  <40.920544, 29.477983, 38.817802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.579826, 29.277569, 38.756592> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033934, 0.238712, -0.970497,
		0.522784, -0.831852, -0.186331,
		-0.851789, -0.501038, -0.153023,
		40.324291, 29.127258, 38.710686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.022751, 28.928905, 38.222557>,  <40.920544, 29.477983, 38.817802>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.022751, 28.928905, 38.222557> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.639740, 29.034605, 38.268703>,  <40.409931, 29.098024, 38.296391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.639740, 29.034605, 38.268703>,  <41.022751, 28.928905, 38.222557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.639740, 29.034605, 38.268703> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034182, 0.293255, -0.955423,
		-0.286303, -0.918789, -0.271768,
		-0.957529, 0.264251, 0.115366,
		40.352482, 29.113880, 38.303314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.780396, 28.637070, 37.693977>,  <41.022751, 28.928905, 38.222557>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.780396, 28.637070, 37.693977> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.504280, 28.912130, 37.783981>,  <40.338612, 29.077168, 37.837982>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.504280, 28.912130, 37.783981>,  <40.780396, 28.637070, 37.693977>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.504280, 28.912130, 37.783981> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029712, 0.337665, -0.940797,
		-0.722920, -0.642740, -0.253520,
		-0.690293, 0.687653, 0.225008,
		40.297192, 29.118427, 37.851482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.326862, 28.686655, 37.095879>,  <40.780396, 28.637070, 37.693977>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.326862, 28.686655, 37.095879> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.242855, 29.024990, 37.292023>,  <40.192451, 29.227991, 37.409710>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.242855, 29.024990, 37.292023>,  <40.326862, 28.686655, 37.095879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.242855, 29.024990, 37.292023> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123711, 0.474523, -0.871507,
		-0.969838, -0.243698, 0.004979,
		-0.210021, 0.845837, 0.490358,
		40.179848, 29.278742, 37.439129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.688812, 28.853104, 36.883591>,  <40.326862, 28.686655, 37.095879>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.688812, 28.853104, 36.883591> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.851830, 29.192316, 37.019093>,  <39.949638, 29.395844, 37.100391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.851830, 29.192316, 37.019093>,  <39.688812, 28.853104, 36.883591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.851830, 29.192316, 37.019093> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171043, 0.435278, -0.883899,
		-0.897025, 0.302285, 0.322443,
		0.407542, 0.848031, 0.338751,
		39.974091, 29.446726, 37.120716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.244164, 29.361027, 36.524925>,  <39.688812, 28.853104, 36.883591>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.244164, 29.361027, 36.524925> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.563133, 29.561716, 36.659027>,  <39.754513, 29.682129, 36.739487>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.563133, 29.561716, 36.659027>,  <39.244164, 29.361027, 36.524925>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.563133, 29.561716, 36.659027> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092024, 0.447974, -0.889298,
		-0.596367, 0.739995, 0.311053,
		0.797420, 0.501723, 0.335254,
		39.802361, 29.712233, 36.759602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.183056, 30.174789, 36.439423>,  <39.244164, 29.361027, 36.524925>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.183056, 30.174789, 36.439423> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.564289, 30.054070, 36.448856>,  <39.793030, 29.981638, 36.454517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.564289, 30.054070, 36.448856>,  <39.183056, 30.174789, 36.439423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.564289, 30.054070, 36.448856> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205290, 0.587121, -0.783036,
		0.222475, 0.751136, 0.621529,
		0.953080, -0.301799, 0.023581,
		39.850212, 29.963530, 36.455929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.491459, 30.757010, 36.217148>,  <39.183056, 30.174789, 36.439423>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.491459, 30.757010, 36.217148> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.743744, 30.447346, 36.195667>,  <39.895115, 30.261547, 36.182781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.743744, 30.447346, 36.195667>,  <39.491459, 30.757010, 36.217148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.743744, 30.447346, 36.195667> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264078, 0.279182, -0.923212,
		0.729703, 0.568099, 0.380521,
		0.630710, -0.774158, -0.053698,
		39.932957, 30.215097, 36.179558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.052441, 31.101109, 36.011589>,  <39.491459, 30.757010, 36.217148>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.052441, 31.101109, 36.011589> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.120682, 30.718203, 35.918175>,  <40.161625, 30.488459, 35.862125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.120682, 30.718203, 35.918175>,  <40.052441, 31.101109, 36.011589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.120682, 30.718203, 35.918175> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225552, 0.268654, -0.936457,
		0.959178, 0.107084, 0.261745,
		0.170599, -0.957266, -0.233534,
		40.171860, 30.431023, 35.848114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.587299, 31.163237, 35.621891>,  <40.052441, 31.101109, 36.011589>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.587299, 31.163237, 35.621891> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.426586, 30.807045, 35.536461>,  <40.330158, 30.593330, 35.485203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.426586, 30.807045, 35.536461>,  <40.587299, 31.163237, 35.621891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.426586, 30.807045, 35.536461> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167408, 0.157868, -0.973166,
		0.900301, -0.426759, 0.085644,
		-0.401787, -0.890480, -0.213572,
		40.306049, 30.539902, 35.472389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.165764, 30.908920, 35.272720>,  <40.587299, 31.163237, 35.621891>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.165764, 30.908920, 35.272720> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.837215, 30.705162, 35.170063>,  <40.640087, 30.582907, 35.108467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.837215, 30.705162, 35.170063>,  <41.165764, 30.908920, 35.272720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.837215, 30.705162, 35.170063> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298038, 0.000359, -0.954554,
		0.486337, -0.860533, 0.151525,
		-0.821370, -0.509395, -0.256646,
		40.590805, 30.552343, 35.093067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<40.348515, 28.885355, 42.661217> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.988113, 28.750500, 42.552013>,  <39.771873, 28.669586, 42.486492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.988113, 28.750500, 42.552013>,  <40.348515, 28.885355, 42.661217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.988113, 28.750500, 42.552013> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412247, -0.469430, -0.780825,
		0.135086, -0.816072, 0.561942,
		-0.901002, -0.337137, -0.273009,
		39.717812, 28.649359, 42.470112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.495327, 28.213367, 42.484211>,  <40.348515, 28.885355, 42.661217>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.495327, 28.213367, 42.484211> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.149025, 28.318045, 42.313568>,  <39.941246, 28.380852, 42.211182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.149025, 28.318045, 42.313568>,  <40.495327, 28.213367, 42.484211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.149025, 28.318045, 42.313568> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384553, -0.197699, -0.901684,
		-0.320304, -0.944686, 0.070523,
		-0.865751, 0.261694, -0.426605,
		39.889301, 28.396553, 42.185585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.269577, 27.652107, 41.962776>,  <40.495327, 28.213367, 42.484211>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.269577, 27.652107, 41.962776> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.093372, 27.997299, 41.863808>,  <39.987652, 28.204414, 41.804424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.093372, 27.997299, 41.863808>,  <40.269577, 27.652107, 41.962776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.093372, 27.997299, 41.863808> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284592, -0.127156, -0.950178,
		-0.851446, -0.488976, -0.189584,
		-0.440508, 0.862979, -0.247426,
		39.961220, 28.256193, 41.789581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.928997, 27.390257, 41.430965>,  <40.269577, 27.652107, 41.962776>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.928997, 27.390257, 41.430965> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.967644, 27.785097, 41.379898>,  <39.990833, 28.022001, 41.349258>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.967644, 27.785097, 41.379898>,  <39.928997, 27.390257, 41.430965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.967644, 27.785097, 41.379898> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312686, -0.151875, -0.937636,
		-0.944930, 0.050676, -0.323327,
		0.096621, 0.987100, -0.127666,
		39.996632, 28.081226, 41.341599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.621010, 27.484545, 40.805889>,  <39.928997, 27.390257, 41.430965>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.621010, 27.484545, 40.805889> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.801628, 27.837355, 40.859760>,  <39.910000, 28.049040, 40.892082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.801628, 27.837355, 40.859760>,  <39.621010, 27.484545, 40.805889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.801628, 27.837355, 40.859760> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003572, 0.149157, -0.988807,
		-0.892241, 0.446973, 0.064200,
		0.451546, 0.882024, 0.134681,
		39.937092, 28.101961, 40.900166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.250084, 27.997301, 40.479073>,  <39.621010, 27.484545, 40.805889>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.250084, 27.997301, 40.479073> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.616119, 28.156977, 40.501919>,  <39.835739, 28.252783, 40.515629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.616119, 28.156977, 40.501919>,  <39.250084, 27.997301, 40.479073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.616119, 28.156977, 40.501919> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068159, 0.292716, -0.953767,
		-0.397453, 0.868887, 0.295069,
		0.915088, 0.399189, 0.057118,
		39.890644, 28.276733, 40.519054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.167488, 28.784109, 40.353458>,  <39.250084, 27.997301, 40.479073>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.167488, 28.784109, 40.353458> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.554420, 28.707375, 40.287159>,  <39.786579, 28.661333, 40.247379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.554420, 28.707375, 40.287159>,  <39.167488, 28.784109, 40.353458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.554420, 28.707375, 40.287159> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023979, 0.581615, -0.813111,
		0.252386, 0.790520, 0.558013,
		0.967329, -0.191838, -0.165747,
		39.844620, 28.649824, 40.237434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.427181, 29.397602, 40.136585>,  <39.167488, 28.784109, 40.353458>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.427181, 29.397602, 40.136585> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.697636, 29.135086, 40.002644>,  <39.859909, 28.977577, 39.922279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.697636, 29.135086, 40.002644>,  <39.427181, 29.397602, 40.136585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.697636, 29.135086, 40.002644> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115652, 0.543391, -0.831475,
		0.727646, 0.523462, 0.443305,
		0.676134, -0.656288, -0.334857,
		39.900475, 28.938200, 39.902187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.854832, 29.753885, 39.678928>,  <39.427181, 29.397602, 40.136585>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.854832, 29.753885, 39.678928> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.930038, 29.373571, 39.580410>,  <39.975163, 29.145384, 39.521297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.930038, 29.373571, 39.580410>,  <39.854832, 29.753885, 39.678928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.930038, 29.373571, 39.580410> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189551, 0.281180, -0.940749,
		0.963700, 0.130195, 0.233090,
		0.188021, -0.950782, -0.246294,
		39.986446, 29.088337, 39.506523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.454216, 30.344692, 39.629169>,  <39.854832, 29.753885, 39.678928>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.454216, 30.344692, 39.629169> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.483219, 30.738380, 39.693737>,  <40.500622, 30.974592, 39.732475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.483219, 30.738380, 39.693737>,  <40.454216, 30.344692, 39.629169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.483219, 30.738380, 39.693737> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086337, -0.167427, 0.982097,
		0.993624, -0.057276, -0.097115,
		0.072510, 0.984219, 0.161415,
		40.504971, 31.033646, 39.742161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.000477, 30.317785, 40.150928>,  <40.454216, 30.344692, 39.629169>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.000477, 30.317785, 40.150928> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.798531, 30.662952, 40.142181>,  <40.677361, 30.870052, 40.136932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.798531, 30.662952, 40.142181>,  <41.000477, 30.317785, 40.150928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.798531, 30.662952, 40.142181> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192676, 0.137354, 0.971602,
		0.841418, 0.486317, -0.235609,
		-0.504868, 0.862919, -0.021870,
		40.647072, 30.921827, 40.135620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.437027, 30.877762, 40.460720>,  <41.000477, 30.317785, 40.150928>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.437027, 30.877762, 40.460720> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.047539, 30.955856, 40.507614>,  <40.813847, 31.002712, 40.535751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.047539, 30.955856, 40.507614>,  <41.437027, 30.877762, 40.460720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.047539, 30.955856, 40.507614> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106018, -0.066990, 0.992105,
		0.201546, 0.978466, 0.044532,
		-0.973724, 0.195234, 0.117236,
		40.755421, 31.014427, 40.542786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.424557, 31.474583, 40.879864>,  <41.437027, 30.877762, 40.460720>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.424557, 31.474583, 40.879864> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.064388, 31.302816, 40.907684>,  <40.848286, 31.199757, 40.924377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.064388, 31.302816, 40.907684>,  <41.424557, 31.474583, 40.879864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.064388, 31.302816, 40.907684> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010581, 0.181460, 0.983341,
		-0.434882, 0.884689, -0.167935,
		-0.900425, -0.429415, 0.069553,
		40.794262, 31.173992, 40.928551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.342873, 31.778877, 41.447330>,  <41.424557, 31.474583, 40.879864>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.342873, 31.778877, 41.447330> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.005249, 31.564381, 41.448063>,  <40.802673, 31.435682, 41.448502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.005249, 31.564381, 41.448063>,  <41.342873, 31.778877, 41.447330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.005249, 31.564381, 41.448063> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248769, 0.394585, 0.884543,
		-0.475049, 0.746156, -0.466455,
		-0.844063, -0.536241, 0.001827,
		40.752029, 31.403509, 41.448612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.793243, 32.222523, 41.596359>,  <41.342873, 31.778877, 41.447330>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.793243, 32.222523, 41.596359> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.666546, 31.856705, 41.696976>,  <40.590527, 31.637213, 41.757343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.666546, 31.856705, 41.696976>,  <40.793243, 32.222523, 41.596359>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.666546, 31.856705, 41.696976> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333906, 0.355730, 0.872905,
		-0.887794, 0.192500, -0.418050,
		-0.316747, -0.914549, 0.251538,
		40.571522, 31.582340, 41.772438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.022366, 32.250813, 41.784420>,  <40.793243, 32.222523, 41.596359>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.022366, 32.250813, 41.784420> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.153191, 31.913496, 41.955013>,  <40.231686, 31.711105, 42.057369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.153191, 31.913496, 41.955013>,  <40.022366, 32.250813, 41.784420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.153191, 31.913496, 41.955013> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439678, 0.263684, 0.858576,
		-0.836490, -0.468319, -0.284538,
		0.327059, -0.843296, 0.426479,
		40.251308, 31.660507, 42.082958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.443695, 32.021465, 42.282398>,  <40.022366, 32.250813, 41.784420>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.443695, 32.021465, 42.282398> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.784576, 31.858212, 42.413349>,  <39.989105, 31.760258, 42.491920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.784576, 31.858212, 42.413349>,  <39.443695, 32.021465, 42.282398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.784576, 31.858212, 42.413349> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200444, 0.323292, 0.924827,
		-0.483294, -0.853760, 0.193701,
		0.852202, -0.408137, 0.327377,
		40.040237, 31.735771, 42.511562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.189251, 31.591970, 42.780991>,  <39.443695, 32.021465, 42.282398>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.189251, 31.591970, 42.780991> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.580944, 31.623953, 42.855515>,  <39.815960, 31.643143, 42.900230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.580944, 31.623953, 42.855515>,  <39.189251, 31.591970, 42.780991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.580944, 31.623953, 42.855515> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189853, 0.039190, 0.981030,
		0.071133, -0.996028, 0.053555,
		0.979232, 0.079951, 0.186311,
		39.874714, 31.647940, 42.911407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.260307, 31.094057, 43.284382>,  <39.189251, 31.591970, 42.780991>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.260307, 31.094057, 43.284382> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.542130, 31.375847, 43.318584>,  <39.711224, 31.544922, 43.339104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.542130, 31.375847, 43.318584>,  <39.260307, 31.094057, 43.284382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.542130, 31.375847, 43.318584> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271738, 0.156522, 0.949557,
		0.655557, -0.692253, 0.301712,
		0.704558, 0.704476, 0.085503,
		39.753498, 31.587189, 43.344234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.590366, 30.932613, 43.831120>,  <39.260307, 31.094057, 43.284382>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.590366, 30.932613, 43.831120> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.698589, 31.316172, 43.796909>,  <39.763523, 31.546307, 43.776382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.698589, 31.316172, 43.796909>,  <39.590366, 30.932613, 43.831120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.698589, 31.316172, 43.796909> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345027, 0.179522, 0.921265,
		0.898753, -0.219744, 0.379416,
		0.270556, 0.958898, -0.085528,
		39.779755, 31.603842, 43.771252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.975830, 30.955288, 44.443565>,  <39.590366, 30.932613, 43.831120>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.975830, 30.955288, 44.443565> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.905762, 31.329584, 44.321121>,  <39.863720, 31.554163, 44.247654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.905762, 31.329584, 44.321121>,  <39.975830, 30.955288, 44.443565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.905762, 31.329584, 44.321121> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202878, 0.269937, 0.941262,
		0.963409, 0.226982, 0.142557,
		-0.175168, 0.935742, -0.306110,
		39.853210, 31.610306, 44.229290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.362503, 31.382616, 44.873543>,  <39.975830, 30.955288, 44.443565>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.362503, 31.382616, 44.873543> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.061024, 31.583580, 44.704063>,  <39.880135, 31.704159, 44.602375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.061024, 31.583580, 44.704063>,  <40.362503, 31.382616, 44.873543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.061024, 31.583580, 44.704063> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238330, 0.391866, 0.888617,
		0.612485, 0.770729, -0.175609,
		-0.753698, 0.502411, -0.423700,
		39.834915, 31.734303, 44.576954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.397415, 32.097000, 45.163399>,  <40.362503, 31.382616, 44.873543>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.397415, 32.097000, 45.163399> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.030209, 32.078861, 45.005825>,  <39.809883, 32.067978, 44.911282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.030209, 32.078861, 45.005825>,  <40.397415, 32.097000, 45.163399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.030209, 32.078861, 45.005825> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374786, 0.423732, 0.824613,
		0.129534, 0.904652, -0.405987,
		-0.918018, -0.045343, -0.393938,
		39.754803, 32.065258, 44.887642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.141708, 28.895357, 42.932076> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.522671, 28.897675, 43.053993>,  <32.751247, 28.899065, 43.127144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.522671, 28.897675, 43.053993>,  <32.141708, 28.895357, 42.932076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.522671, 28.897675, 43.053993> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280577, 0.374288, -0.883847,
		-0.119198, 0.927294, 0.354847,
		0.952401, 0.005791, 0.304792,
		32.808392, 28.899412, 43.145432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.568726, 29.625742, 42.899818>,  <32.141708, 28.895357, 42.932076>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.568726, 29.625742, 42.899818> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.817997, 29.314371, 42.869614>,  <32.967560, 29.127548, 42.851490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.817997, 29.314371, 42.869614>,  <32.568726, 29.625742, 42.899818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.817997, 29.314371, 42.869614> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323057, 0.344149, -0.881587,
		0.712239, 0.524990, 0.465941,
		0.623177, -0.778426, -0.075515,
		33.004951, 29.080843, 42.846958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.200115, 29.918139, 42.628605>,  <32.568726, 29.625742, 42.899818>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.200115, 29.918139, 42.628605> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.237091, 29.526182, 42.557873>,  <33.259277, 29.291008, 42.515434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.237091, 29.526182, 42.557873>,  <33.200115, 29.918139, 42.628605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.237091, 29.526182, 42.557873> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342258, 0.198035, -0.918500,
		0.935048, 0.024386, 0.353682,
		0.092440, -0.979892, -0.176826,
		33.264824, 29.232214, 42.504826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.877430, 29.941090, 42.393970>,  <33.200115, 29.918139, 42.628605>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.877430, 29.941090, 42.393970> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.714375, 29.589916, 42.293518>,  <33.616543, 29.379213, 42.233246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.714375, 29.589916, 42.293518>,  <33.877430, 29.941090, 42.393970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.714375, 29.589916, 42.293518> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240439, 0.162118, -0.957030,
		0.880920, -0.450503, 0.145003,
		-0.407638, -0.877932, -0.251132,
		33.592083, 29.326536, 42.218178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.400654, 29.566156, 42.015507>,  <33.877430, 29.941090, 42.393970>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.400654, 29.566156, 42.015507> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.040489, 29.419308, 41.922142>,  <33.824390, 29.331198, 41.866123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.040489, 29.419308, 41.922142>,  <34.400654, 29.566156, 42.015507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.040489, 29.419308, 41.922142> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245233, 0.014831, -0.969351,
		0.359332, -0.930054, 0.076676,
		-0.900412, -0.367122, -0.233410,
		33.770367, 29.309172, 41.852119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.579773, 28.912285, 41.738750>,  <34.400654, 29.566156, 42.015507>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.579773, 28.912285, 41.738750> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.237236, 29.072512, 41.608387>,  <34.031712, 29.168648, 41.530170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.237236, 29.072512, 41.608387>,  <34.579773, 28.912285, 41.738750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.237236, 29.072512, 41.608387> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424669, 0.187174, -0.885789,
		-0.293816, -0.896946, -0.330394,
		-0.856346, 0.400567, -0.325910,
		33.980331, 29.192682, 41.510612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.600601, 28.882326, 40.952641>,  <34.579773, 28.912285, 41.738750>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.600601, 28.882326, 40.952641> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.285088, 29.123745, 40.999199>,  <34.095779, 29.268597, 41.027134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.285088, 29.123745, 40.999199>,  <34.600601, 28.882326, 40.952641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.285088, 29.123745, 40.999199> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111144, 0.326284, -0.938715,
		-0.604535, -0.727510, -0.324449,
		-0.788787, 0.603546, 0.116392,
		34.048450, 29.304810, 41.034115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.207363, 28.707890, 40.369656>,  <34.600601, 28.882326, 40.952641>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.207363, 28.707890, 40.369656> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.081924, 29.069510, 40.485832>,  <34.006660, 29.286482, 40.555538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.081924, 29.069510, 40.485832>,  <34.207363, 28.707890, 40.369656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.081924, 29.069510, 40.485832> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039615, 0.293145, -0.955247,
		-0.948730, -0.311068, -0.056116,
		-0.313596, 0.904048, 0.290438,
		33.987846, 29.340723, 40.572964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.644943, 28.885313, 39.944351>,  <34.207363, 28.707890, 40.369656>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.644943, 28.885313, 39.944351> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.740467, 29.248419, 40.082302>,  <33.797779, 29.466282, 40.165073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.740467, 29.248419, 40.082302>,  <33.644943, 28.885313, 39.944351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.740467, 29.248419, 40.082302> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196535, 0.392981, -0.898298,
		-0.950971, 0.146739, 0.272254,
		0.238806, 0.907763, 0.344874,
		33.812107, 29.520748, 40.185764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.140179, 29.310265, 39.737698>,  <33.644943, 28.885313, 39.944351>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.140179, 29.310265, 39.737698> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.459251, 29.542467, 39.803085>,  <33.650696, 29.681787, 39.842319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.459251, 29.542467, 39.803085>,  <33.140179, 29.310265, 39.737698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.459251, 29.542467, 39.803085> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202474, 0.513110, -0.834100,
		-0.568079, 0.632244, 0.526834,
		0.797678, 0.580505, 0.163474,
		33.698555, 29.716619, 39.852127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.936283, 29.951515, 39.505627>,  <33.140179, 29.310265, 39.737698>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.936283, 29.951515, 39.505627> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.334980, 29.977655, 39.524559>,  <33.574196, 29.993340, 39.535919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.334980, 29.977655, 39.524559>,  <32.936283, 29.951515, 39.505627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.334980, 29.977655, 39.524559> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005653, 0.528596, -0.848855,
		-0.080492, 0.846354, 0.526503,
		0.996739, 0.065350, 0.047333,
		33.634003, 29.997261, 39.538757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.044559, 30.622473, 39.184422>,  <32.936283, 29.951515, 39.505627>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.044559, 30.622473, 39.184422> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.406460, 30.453039, 39.166534>,  <33.623600, 30.351379, 39.155800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.406460, 30.453039, 39.166534>,  <33.044559, 30.622473, 39.184422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.406460, 30.453039, 39.166534> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179622, 0.474635, -0.861660,
		0.386211, 0.771556, 0.505512,
		0.904753, -0.423583, -0.044721,
		33.677887, 30.325964, 39.153118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.526623, 31.160748, 38.945263>,  <33.044559, 30.622473, 39.184422>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.526623, 31.160748, 38.945263> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.684063, 30.811007, 38.831715>,  <33.778526, 30.601162, 38.763584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.684063, 30.811007, 38.831715>,  <33.526623, 31.160748, 38.945263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.684063, 30.811007, 38.831715> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283308, 0.409142, -0.867375,
		0.874535, 0.260980, 0.408751,
		0.393605, -0.874352, -0.283872,
		33.802143, 30.548700, 38.746552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.082096, 31.517004, 38.640255>,  <33.526623, 31.160748, 38.945263>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.082096, 31.517004, 38.640255> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.062187, 31.132587, 38.531498>,  <34.050240, 30.901937, 38.466244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.062187, 31.132587, 38.531498>,  <34.082096, 31.517004, 38.640255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.062187, 31.132587, 38.531498> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268647, 0.249313, -0.930415,
		0.961952, -0.119355, 0.245770,
		-0.049776, -0.961040, -0.271892,
		34.047253, 30.844276, 38.449932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.829906, 31.748693, 38.718540>,  <34.082096, 31.517004, 38.640255>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.829906, 31.748693, 38.718540> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.892498, 32.143700, 38.711269>,  <34.930054, 32.380703, 38.706905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.892498, 32.143700, 38.711269>,  <34.829906, 31.748693, 38.718540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.892498, 32.143700, 38.711269> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251517, 0.057637, 0.966135,
		0.955120, -0.146603, 0.257396,
		0.156474, 0.987515, -0.018177,
		34.939442, 32.439953, 38.705814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.080597, 31.921703, 39.424053>,  <34.829906, 31.748693, 38.718540>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.080597, 31.921703, 39.424053> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.972084, 32.287106, 39.302784>,  <34.906975, 32.506348, 39.230022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.972084, 32.287106, 39.302784>,  <35.080597, 31.921703, 39.424053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.972084, 32.287106, 39.302784> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503604, 0.133710, 0.853525,
		0.820236, 0.384229, 0.423771,
		-0.271287, 0.913504, -0.303174,
		34.890697, 32.561157, 39.211830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.296257, 32.390785, 39.974148>,  <35.080597, 31.921703, 39.424053>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.296257, 32.390785, 39.974148> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.986412, 32.552864, 39.779915>,  <34.800507, 32.650112, 39.663376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.986412, 32.552864, 39.779915>,  <35.296257, 32.390785, 39.974148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.986412, 32.552864, 39.779915> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509022, 0.056217, 0.858916,
		0.375331, 0.912498, 0.162709,
		-0.774612, 0.405201, -0.485581,
		34.754028, 32.674423, 39.634239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136623, 32.941990, 40.352722>,  <35.296257, 32.390785, 39.974148>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.136623, 32.941990, 40.352722> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.805515, 32.842232, 40.151688>,  <34.606850, 32.782375, 40.031067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.805515, 32.842232, 40.151688>,  <35.136623, 32.941990, 40.352722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.805515, 32.842232, 40.151688> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551141, 0.193723, 0.811612,
		-0.105050, 0.948828, -0.297810,
		-0.827773, -0.249395, -0.502587,
		34.557182, 32.767414, 40.000912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.695690, 33.493977, 40.505623>,  <35.136623, 32.941990, 40.352722>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.695690, 33.493977, 40.505623> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.446892, 33.202171, 40.391830>,  <34.297611, 33.027088, 40.323555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.446892, 33.202171, 40.391830>,  <34.695690, 33.493977, 40.505623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.446892, 33.202171, 40.391830> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630092, 0.250622, 0.734965,
		-0.464873, 0.636392, -0.615548,
		-0.621995, -0.729517, -0.284478,
		34.260292, 32.983315, 40.306488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.045792, 33.684219, 40.735073>,  <34.695690, 33.493977, 40.505623>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.045792, 33.684219, 40.735073> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.038929, 33.288273, 40.678692>,  <34.034813, 33.050705, 40.644863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.038929, 33.288273, 40.678692>,  <34.045792, 33.684219, 40.735073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.038929, 33.288273, 40.678692> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573924, -0.105689, 0.812060,
		-0.818729, 0.094831, -0.566295,
		-0.017157, -0.989867, -0.140956,
		34.033783, 32.991314, 40.636406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.456463, 33.494701, 41.140221>,  <34.045792, 33.684219, 40.735073>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.456463, 33.494701, 41.140221> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.627655, 33.137455, 41.084824>,  <33.730370, 32.923107, 41.051586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.627655, 33.137455, 41.084824>,  <33.456463, 33.494701, 41.140221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.627655, 33.137455, 41.084824> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256790, -0.267082, 0.928830,
		-0.866539, -0.361961, -0.343649,
		0.427983, -0.893113, -0.138489,
		33.756050, 32.869522, 41.043278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.904083, 33.068436, 41.295094>,  <33.456463, 33.494701, 41.140221>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.904083, 33.068436, 41.295094> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.237926, 32.850227, 41.325657>,  <33.438232, 32.719303, 41.343994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.237926, 32.850227, 41.325657>,  <32.904083, 33.068436, 41.295094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.237926, 32.850227, 41.325657> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295865, -0.326940, 0.897538,
		-0.464650, -0.771694, -0.434268,
		0.834604, -0.545526, 0.076405,
		33.488308, 32.686569, 41.348579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.801174, 32.217751, 41.359749>,  <32.904083, 33.068436, 41.295094>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.801174, 32.217751, 41.359749> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.150738, 32.304699, 41.533661>,  <33.360477, 32.356869, 41.638008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.150738, 32.304699, 41.533661>,  <32.801174, 32.217751, 41.359749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.150738, 32.304699, 41.533661> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281973, -0.501875, 0.817688,
		0.395943, -0.837181, -0.377301,
		0.873911, 0.217369, 0.434776,
		33.412910, 32.369911, 41.664093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.981239, 31.623678, 41.815243>,  <32.801174, 32.217751, 41.359749>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.981239, 31.623678, 41.815243> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.252716, 31.876324, 41.965145>,  <33.415604, 32.027912, 42.055088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.252716, 31.876324, 41.965145>,  <32.981239, 31.623678, 41.815243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.252716, 31.876324, 41.965145> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129457, -0.399401, 0.907590,
		0.722925, -0.664488, -0.189303,
		0.678691, 0.631613, 0.374760,
		33.456322, 32.065807, 42.077572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.404346, 31.234592, 42.252117>,  <32.981239, 31.623678, 41.815243>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.404346, 31.234592, 42.252117> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.488785, 31.605436, 42.375992>,  <33.539448, 31.827944, 42.450317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.488785, 31.605436, 42.375992>,  <33.404346, 31.234592, 42.252117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.488785, 31.605436, 42.375992> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064805, -0.302850, 0.950832,
		0.975314, -0.220788, -0.003850,
		0.211098, 0.927111, 0.309682,
		33.552113, 31.883570, 42.468895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.005135, 31.115257, 42.677963>,  <33.404346, 31.234592, 42.252117>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.005135, 31.115257, 42.677963> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.845921, 31.461323, 42.799988>,  <33.750393, 31.668962, 42.873203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.845921, 31.461323, 42.799988>,  <34.005135, 31.115257, 42.677963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.845921, 31.461323, 42.799988> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179825, -0.252500, 0.950740,
		0.899573, 0.433285, -0.055074,
		-0.398035, 0.865164, 0.305058,
		33.726509, 31.720871, 42.891506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.441971, 31.402122, 43.190342>,  <34.005135, 31.115257, 42.677963>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.441971, 31.402122, 43.190342> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.092213, 31.581984, 43.263279>,  <33.882359, 31.689901, 43.307041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.092213, 31.581984, 43.263279>,  <34.441971, 31.402122, 43.190342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.092213, 31.581984, 43.263279> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097796, -0.204761, 0.973914,
		0.475260, 0.869416, 0.135067,
		-0.874393, 0.449654, 0.182340,
		33.829895, 31.716879, 43.317982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.551636, 31.896120, 43.768288>,  <34.441971, 31.402122, 43.190342>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.551636, 31.896120, 43.768288> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.166176, 31.792566, 43.741867>,  <33.934902, 31.730434, 43.726013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.166176, 31.792566, 43.741867>,  <34.551636, 31.896120, 43.768288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.166176, 31.792566, 43.741867> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014416, -0.196483, 0.980401,
		-0.266790, 0.945713, 0.185609,
		-0.963647, -0.258885, -0.066053,
		33.877083, 31.714901, 43.722050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.912132, 32.515781, 43.948215>,  <34.551636, 31.896120, 43.768288>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.912132, 32.515781, 43.948215> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.138767, 32.784588, 44.138950>,  <35.274746, 32.945873, 44.253391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.138767, 32.784588, 44.138950>,  <34.912132, 32.515781, 43.948215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.138767, 32.784588, 44.138950> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623220, 0.029090, -0.781506,
		-0.539055, 0.739965, -0.402332,
		0.566583, 0.672016, 0.476842,
		35.308743, 32.986191, 44.282001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.031670, 33.044201, 43.447048>,  <34.912132, 32.515781, 43.948215>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.031670, 33.044201, 43.447048> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.334362, 33.048042, 43.708511>,  <35.515976, 33.050346, 43.865387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.334362, 33.048042, 43.708511>,  <35.031670, 33.044201, 43.447048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.334362, 33.048042, 43.708511> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651724, 0.067101, -0.755482,
		-0.051114, 0.997700, 0.044521,
		0.756732, 0.009600, 0.653654,
		35.561382, 33.050922, 43.904606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375854, 33.610088, 43.293945>,  <35.031670, 33.044201, 43.447048>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375854, 33.610088, 43.293945> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.650864, 33.420723, 43.514194>,  <35.815868, 33.307102, 43.646343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.650864, 33.420723, 43.514194>,  <35.375854, 33.610088, 43.293945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.650864, 33.420723, 43.514194> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698217, 0.222655, -0.680381,
		0.199504, 0.852234, 0.483627,
		0.687526, -0.473415, 0.550624,
		35.857121, 33.278698, 43.679382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.841354, 34.091156, 43.344040>,  <35.375854, 33.610088, 43.293945>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.841354, 34.091156, 43.344040> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.030323, 33.745338, 43.412613>,  <36.143703, 33.537849, 43.453758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.030323, 33.745338, 43.412613>,  <35.841354, 34.091156, 43.344040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.030323, 33.745338, 43.412613> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584131, 0.161464, -0.795437,
		0.660007, 0.475921, 0.581283,
		0.472422, -0.864540, 0.171433,
		36.172050, 33.485977, 43.464043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624897, 34.156185, 43.184326>,  <35.841354, 34.091156, 43.344040>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.624897, 34.156185, 43.184326> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.555664, 33.762646, 43.166077>,  <36.514122, 33.526524, 43.155128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.555664, 33.762646, 43.166077>,  <36.624897, 34.156185, 43.184326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.555664, 33.762646, 43.166077> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695740, -0.089350, -0.712715,
		0.697128, -0.155102, 0.699968,
		-0.173086, -0.983850, -0.045622,
		36.503738, 33.467491, 43.152390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.353973, 33.826664, 43.235378>,  <36.624897, 34.156185, 43.184326>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.353973, 33.826664, 43.235378> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.091854, 33.594830, 43.041611>,  <36.934582, 33.455727, 42.925350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.091854, 33.594830, 43.041611>,  <37.353973, 33.826664, 43.235378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.091854, 33.594830, 43.041611> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609850, -0.027520, -0.792039,
		0.445725, -0.814444, 0.371496,
		-0.655295, -0.579588, -0.484423,
		36.895264, 33.420952, 42.896282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.797939, 33.439423, 42.907429>,  <37.353973, 33.826664, 43.235378>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.797939, 33.439423, 42.907429> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.443581, 33.342388, 42.749271>,  <37.230965, 33.284168, 42.654377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.443581, 33.342388, 42.749271>,  <37.797939, 33.439423, 42.907429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.443581, 33.342388, 42.749271> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414602, -0.031784, -0.909447,
		0.208051, -0.969609, 0.128734,
		-0.885900, -0.242585, -0.395390,
		37.177811, 33.269611, 42.630653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.026531, 32.841778, 42.563072>,  <37.797939, 33.439423, 42.907429>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.026531, 32.841778, 42.563072> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.700130, 32.989845, 42.385483>,  <37.504292, 33.078686, 42.278931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.700130, 32.989845, 42.385483>,  <38.026531, 32.841778, 42.563072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.700130, 32.989845, 42.385483> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437023, -0.107655, -0.892985,
		-0.378356, -0.922704, -0.073928,
		-0.816001, 0.370174, -0.443974,
		37.455330, 33.100899, 42.252289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.998600, 32.343426, 42.101078>,  <38.026531, 32.841778, 42.563072>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.998600, 32.343426, 42.101078> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.799690, 32.673458, 41.993774>,  <37.680344, 32.871479, 41.929394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.799690, 32.673458, 41.993774>,  <37.998600, 32.343426, 42.101078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.799690, 32.673458, 41.993774> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470842, -0.003056, -0.882212,
		-0.728715, -0.565008, -0.386963,
		-0.497274, 0.825080, -0.268257,
		37.650509, 32.920982, 41.913296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.799374, 32.248798, 41.331196>,  <37.998600, 32.343426, 42.101078>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.799374, 32.248798, 41.331196> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.779865, 32.639454, 41.414913>,  <37.768158, 32.873848, 41.465141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.779865, 32.639454, 41.414913>,  <37.799374, 32.248798, 41.331196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.779865, 32.639454, 41.414913> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562759, 0.199987, -0.802064,
		-0.825181, 0.078660, -0.559365,
		-0.048775, 0.976636, 0.209292,
		37.765232, 32.932446, 41.477699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653290, 32.558594, 40.692333>,  <37.799374, 32.248798, 41.331196>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.653290, 32.558594, 40.692333> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.768700, 32.852364, 40.938057>,  <37.837944, 33.028625, 41.085491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.768700, 32.852364, 40.938057>,  <37.653290, 32.558594, 40.692333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.768700, 32.852364, 40.938057> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461541, 0.455453, -0.761277,
		-0.838889, 0.503175, -0.207558,
		0.288522, 0.734423, 0.614311,
		37.855255, 33.072689, 41.122349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461349, 33.242905, 40.372841>,  <37.653290, 32.558594, 40.692333>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.461349, 33.242905, 40.372841> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.754261, 33.327648, 40.631725>,  <37.930008, 33.378494, 40.787056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.754261, 33.327648, 40.631725>,  <37.461349, 33.242905, 40.372841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.754261, 33.327648, 40.631725> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460714, 0.545756, -0.699923,
		-0.501505, 0.810719, 0.302040,
		0.732281, 0.211861, 0.647209,
		37.973946, 33.391205, 40.825890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.538960, 33.948013, 40.443920>,  <37.461349, 33.242905, 40.372841>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.538960, 33.948013, 40.443920> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.909756, 33.826115, 40.531395>,  <38.132233, 33.752975, 40.583878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.909756, 33.826115, 40.531395>,  <37.538960, 33.948013, 40.443920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.909756, 33.826115, 40.531395> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339218, 0.432295, -0.835495,
		0.160078, 0.848676, 0.504107,
		0.926988, -0.304747, 0.218685,
		38.187851, 33.734692, 40.597000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.895939, 34.502750, 40.372868>,  <37.538960, 33.948013, 40.443920>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.895939, 34.502750, 40.372868> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.165569, 34.207462, 40.362682>,  <38.327347, 34.030289, 40.356571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.165569, 34.207462, 40.362682>,  <37.895939, 34.502750, 40.372868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.165569, 34.207462, 40.362682> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493124, 0.475410, -0.728569,
		0.549953, 0.478553, 0.684499,
		0.674077, -0.738222, -0.025467,
		38.367794, 33.985996, 40.355042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.368162, 36.959686, 42.055996> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.968199, 36.965038, 42.055683>,  <26.728220, 36.968250, 42.055496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.968199, 36.965038, 42.055683>,  <27.368162, 36.959686, 42.055996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.968199, 36.965038, 42.055683> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007060, -0.575625, -0.817684,
		-0.011392, -0.817605, 0.575667,
		-0.999910, 0.013379, -0.000786,
		26.668226, 36.969051, 42.055447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.054110, 36.286060, 41.941780>,  <27.368162, 36.959686, 42.055996>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.054110, 36.286060, 41.941780> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.759157, 36.518360, 41.803795>,  <26.582186, 36.657742, 41.721004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.759157, 36.518360, 41.803795>,  <27.054110, 36.286060, 41.941780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.759157, 36.518360, 41.803795> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131936, -0.624682, -0.769653,
		-0.662473, -0.522010, 0.537248,
		-0.737376, 0.580756, -0.344962,
		26.537943, 36.692585, 41.700306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.526545, 35.869110, 41.862572>,  <27.054110, 36.286060, 41.941780>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.526545, 35.869110, 41.862572> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.462458, 36.185123, 41.625866>,  <26.424006, 36.374729, 41.483845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.462458, 36.185123, 41.625866>,  <26.526545, 35.869110, 41.862572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.462458, 36.185123, 41.625866> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218259, -0.613021, -0.759321,
		-0.962649, 0.007502, 0.270647,
		-0.160215, 0.790031, -0.591762,
		26.414392, 36.422134, 41.448338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.930353, 35.708321, 41.478298>,  <26.526545, 35.869110, 41.862572>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.930353, 35.708321, 41.478298> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.023666, 36.029099, 41.258312>,  <26.079655, 36.221565, 41.126320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.023666, 36.029099, 41.258312>,  <25.930353, 35.708321, 41.478298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.023666, 36.029099, 41.258312> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356248, -0.455766, -0.815698,
		-0.904802, 0.386213, 0.179369,
		0.233283, 0.801945, -0.549966,
		26.093651, 36.269684, 41.093323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.297602, 35.873421, 40.985512>,  <25.930353, 35.708321, 41.478298>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.297602, 35.873421, 40.985512> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.629885, 36.023636, 40.821125>,  <25.829254, 36.113766, 40.722492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.629885, 36.023636, 40.821125>,  <25.297602, 35.873421, 40.985512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.629885, 36.023636, 40.821125> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234923, -0.432797, -0.870344,
		-0.504710, 0.819549, -0.271306,
		0.830710, 0.375535, -0.410968,
		25.879097, 36.136295, 40.697834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.098515, 36.271687, 40.428307>,  <25.297602, 35.873421, 40.985512>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.098515, 36.271687, 40.428307> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.475515, 36.150410, 40.372074>,  <25.701715, 36.077644, 40.338333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.475515, 36.150410, 40.372074>,  <25.098515, 36.271687, 40.428307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.475515, 36.150410, 40.372074> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239306, -0.318632, -0.917173,
		0.233283, 0.898081, -0.372867,
		0.942503, -0.303190, -0.140585,
		25.758266, 36.059452, 40.329899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.169128, 36.420052, 39.666882>,  <25.098515, 36.271687, 40.428307>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.169128, 36.420052, 39.666882> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.467072, 36.180050, 39.783627>,  <25.645838, 36.036049, 39.853672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.467072, 36.180050, 39.783627>,  <25.169128, 36.420052, 39.666882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.467072, 36.180050, 39.783627> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155153, -0.269685, -0.950367,
		0.648932, 0.753173, -0.107786,
		0.744859, -0.600000, 0.291864,
		25.690529, 36.000050, 39.871185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.729757, 36.625484, 39.247402>,  <25.169128, 36.420052, 39.666882>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.729757, 36.625484, 39.247402> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.797710, 36.254330, 39.380169>,  <25.838482, 36.031639, 39.459831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.797710, 36.254330, 39.380169>,  <25.729757, 36.625484, 39.247402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.797710, 36.254330, 39.380169> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259069, -0.282918, -0.923494,
		0.950801, 0.242875, 0.192324,
		0.169882, -0.927884, 0.331920,
		25.848675, 35.975964, 39.479744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.366447, 36.476955, 39.135715>,  <25.729757, 36.625484, 39.247402>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.366447, 36.476955, 39.135715> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.205227, 36.111046, 39.146641>,  <26.108494, 35.891502, 39.153194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.205227, 36.111046, 39.146641>,  <26.366447, 36.476955, 39.135715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.205227, 36.111046, 39.146641> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420297, -0.211530, -0.882386,
		0.812957, -0.344169, 0.469733,
		-0.403052, -0.914769, 0.027312,
		26.084311, 35.836617, 39.154835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.871576, 36.042000, 38.798061>,  <26.366447, 36.476955, 39.135715>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.871576, 36.042000, 38.798061> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.550774, 35.803432, 38.811150>,  <26.358292, 35.660294, 38.819004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.550774, 35.803432, 38.811150>,  <26.871576, 36.042000, 38.798061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.550774, 35.803432, 38.811150> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241935, -0.374444, -0.895131,
		0.546124, -0.709985, 0.444601,
		-0.802008, -0.596417, 0.032722,
		26.310171, 35.624508, 38.820965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.094984, 35.419693, 38.707821>,  <26.871576, 36.042000, 38.798061>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.094984, 35.419693, 38.707821> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.718895, 35.416275, 38.571640>,  <26.493242, 35.414223, 38.489933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.718895, 35.416275, 38.571640>,  <27.094984, 35.419693, 38.707821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.718895, 35.416275, 38.571640> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305986, -0.460077, -0.833488,
		-0.149510, -0.887838, 0.435190,
		-0.940223, -0.008547, -0.340452,
		26.436829, 35.413712, 38.469505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.025068, 34.646107, 38.256065>,  <27.094984, 35.419693, 38.707821>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.025068, 34.646107, 38.256065> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.728231, 34.894703, 38.155624>,  <26.550129, 35.043861, 38.095360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.728231, 34.894703, 38.155624>,  <27.025068, 34.646107, 38.256065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.728231, 34.894703, 38.155624> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015750, -0.390677, -0.920393,
		-0.670115, -0.679060, 0.299706,
		-0.742090, 0.621490, -0.251103,
		26.505604, 35.081150, 38.080292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.582394, 34.239113, 37.728413>,  <27.025068, 34.646107, 38.256065>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.582394, 34.239113, 37.728413> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.487112, 34.625336, 37.686558>,  <26.429943, 34.857071, 37.661446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.487112, 34.625336, 37.686558>,  <26.582394, 34.239113, 37.728413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.487112, 34.625336, 37.686558> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070946, -0.124754, -0.989648,
		-0.968621, -0.228313, 0.098219,
		-0.238203, 0.965562, -0.104642,
		26.415651, 34.915005, 37.655167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.084188, 34.189804, 37.130707>,  <26.582394, 34.239113, 37.728413>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.084188, 34.189804, 37.130707> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.221777, 34.564972, 37.148571>,  <26.304331, 34.790073, 37.159290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.221777, 34.564972, 37.148571>,  <26.084188, 34.189804, 37.130707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.221777, 34.564972, 37.148571> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186773, -0.021730, -0.982163,
		-0.920217, 0.346178, -0.182652,
		0.343973, 0.937917, 0.044660,
		26.324968, 34.846348, 37.161968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.905144, 34.457863, 36.453117>,  <26.084188, 34.189804, 37.130707>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.905144, 34.457863, 36.453117> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.202656, 34.683460, 36.596619>,  <26.381163, 34.818817, 36.682720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.202656, 34.683460, 36.596619>,  <25.905144, 34.457863, 36.453117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.202656, 34.683460, 36.596619> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584392, -0.288140, -0.758592,
		-0.324466, 0.773880, -0.543904,
		0.743779, 0.563991, 0.358757,
		26.425789, 34.852657, 36.704247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.068428, 34.909676, 35.934231>,  <25.905144, 34.457863, 36.453117>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.068428, 34.909676, 35.934231> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.393494, 34.901825, 36.167194>,  <26.588533, 34.897114, 36.306973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.393494, 34.901825, 36.167194>,  <26.068428, 34.909676, 35.934231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.393494, 34.901825, 36.167194> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559903, -0.250719, -0.789715,
		0.161522, 0.967861, -0.192759,
		0.812662, -0.019630, 0.582404,
		26.637293, 34.895935, 36.341915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.532427, 35.253483, 35.520344>,  <26.068428, 34.909676, 35.934231>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.532427, 35.253483, 35.520344> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.759960, 35.060669, 35.786900>,  <26.896481, 34.944981, 35.946835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.759960, 35.060669, 35.786900>,  <26.532427, 35.253483, 35.520344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.759960, 35.060669, 35.786900> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654974, -0.224549, -0.721517,
		0.497433, 0.846889, 0.187990,
		0.568831, -0.482035, 0.666388,
		26.930609, 34.916058, 35.986816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.149248, 35.366341, 35.282150>,  <26.532427, 35.253483, 35.520344>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.149248, 35.366341, 35.282150> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.217505, 35.078354, 35.551231>,  <27.258459, 34.905563, 35.712681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.217505, 35.078354, 35.551231>,  <27.149248, 35.366341, 35.282150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.217505, 35.078354, 35.551231> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804962, -0.291876, -0.516570,
		0.568258, 0.629652, 0.529737,
		0.170642, -0.719963, 0.672707,
		27.268698, 34.862366, 35.753044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.873137, 35.382946, 35.560616>,  <27.149248, 35.366341, 35.282150>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.873137, 35.382946, 35.560616> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.732828, 35.010006, 35.595684>,  <27.648643, 34.786243, 35.616726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.732828, 35.010006, 35.595684>,  <27.873137, 35.382946, 35.560616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.732828, 35.010006, 35.595684> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806203, -0.348283, -0.478264,
		0.476444, -0.097078, 0.873829,
		-0.350769, -0.932349, 0.087673,
		27.627598, 34.730301, 35.621986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.458122, 34.948502, 35.840038>,  <27.873137, 35.382946, 35.560616>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.458122, 34.948502, 35.840038> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.182524, 34.740402, 35.638195>,  <28.017164, 34.615543, 35.517090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.182524, 34.740402, 35.638195>,  <28.458122, 34.948502, 35.840038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.182524, 34.740402, 35.638195> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706008, -0.324392, -0.629542,
		0.163826, -0.790009, 0.590802,
		-0.688995, -0.520246, -0.504609,
		27.975824, 34.584328, 35.486813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.979477, 34.797050, 35.383472>,  <28.458122, 34.948502, 35.840038>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.979477, 34.797050, 35.383472> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.363302, 34.684677, 35.376427>,  <29.593597, 34.617252, 35.372200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.363302, 34.684677, 35.376427>,  <28.979477, 34.797050, 35.383472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.363302, 34.684677, 35.376427> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033889, -0.177423, 0.983551,
		-0.279444, -0.943183, -0.179770,
		0.959564, -0.280939, -0.017616,
		29.651171, 34.600395, 35.371143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.013763, 34.227139, 35.643597>,  <28.979477, 34.797050, 35.383472>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.013763, 34.227139, 35.643597> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.403032, 34.311718, 35.679886>,  <29.636593, 34.362465, 35.701660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.403032, 34.311718, 35.679886>,  <29.013763, 34.227139, 35.643597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.403032, 34.311718, 35.679886> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009451, -0.357219, 0.933973,
		0.229893, -0.909772, -0.345636,
		0.973170, 0.211447, 0.090721,
		29.694983, 34.375153, 35.707104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.308041, 33.663383, 35.979801>,  <29.013763, 34.227139, 35.643597>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.308041, 33.663383, 35.979801> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.546129, 33.973297, 36.065041>,  <29.688982, 34.159245, 36.116184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.546129, 33.973297, 36.065041>,  <29.308041, 33.663383, 35.979801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.546129, 33.973297, 36.065041> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150681, -0.152874, 0.976691,
		0.789306, -0.613459, 0.025752,
		0.595223, 0.774788, 0.213101,
		29.724697, 34.205734, 36.128971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.853312, 33.524078, 36.449379>,  <29.308041, 33.663383, 35.979801>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.853312, 33.524078, 36.449379> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.825773, 33.921783, 36.482105>,  <29.809250, 34.160408, 36.501740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.825773, 33.921783, 36.482105>,  <29.853312, 33.524078, 36.449379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.825773, 33.921783, 36.482105> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017054, -0.083171, 0.996390,
		0.997482, 0.067201, 0.022682,
		-0.068845, 0.994267, 0.081816,
		29.805120, 34.220062, 36.506649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.363573, 33.685410, 36.963135>,  <29.853312, 33.524078, 36.449379>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.363573, 33.685410, 36.963135> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.115234, 33.997959, 36.937805>,  <29.966230, 34.185490, 36.922607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.115234, 33.997959, 36.937805>,  <30.363573, 33.685410, 36.963135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.115234, 33.997959, 36.937805> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345071, -0.199862, 0.917050,
		0.703900, 0.591198, 0.393712,
		-0.620846, 0.781371, -0.063322,
		29.928980, 34.232368, 36.918808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.435328, 34.070896, 37.570679>,  <30.363573, 33.685410, 36.963135>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.435328, 34.070896, 37.570679> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.072004, 34.188606, 37.451767>,  <29.854010, 34.259232, 37.380421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.072004, 34.188606, 37.451767>,  <30.435328, 34.070896, 37.570679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.072004, 34.188606, 37.451767> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333319, -0.079794, 0.939431,
		0.252731, 0.952384, 0.170565,
		-0.908309, 0.294276, -0.297281,
		29.799511, 34.276890, 37.362583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.185835, 34.635605, 37.944187>,  <30.435328, 34.070896, 37.570679>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.185835, 34.635605, 37.944187> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.835321, 34.487881, 37.820423>,  <29.625013, 34.399246, 37.746162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.835321, 34.487881, 37.820423>,  <30.185835, 34.635605, 37.944187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.835321, 34.487881, 37.820423> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354532, 0.059415, 0.933154,
		-0.326237, 0.927406, -0.182995,
		-0.876286, -0.369307, -0.309412,
		29.572435, 34.377090, 37.727600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.674734, 35.093761, 38.173359>,  <30.185835, 34.635605, 37.944187>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.674734, 35.093761, 38.173359> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.508812, 34.737942, 38.096794>,  <29.409260, 34.524448, 38.050854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.508812, 34.737942, 38.096794>,  <29.674734, 35.093761, 38.173359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.508812, 34.737942, 38.096794> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385739, -0.018615, 0.922420,
		-0.824102, 0.456459, -0.335412,
		-0.414804, -0.889549, -0.191415,
		29.384371, 34.471077, 38.039371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.853405, 35.140064, 38.387917>,  <29.674734, 35.093761, 38.173359>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.853405, 35.140064, 38.387917> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.915771, 34.744987, 38.382839>,  <28.953192, 34.507942, 38.379791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.915771, 34.744987, 38.382839>,  <28.853405, 35.140064, 38.387917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.915771, 34.744987, 38.382839> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509511, -0.091430, 0.855593,
		-0.846220, -0.126931, -0.517494,
		0.155916, -0.987689, -0.012697,
		28.962545, 34.448681, 38.379028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.175867, 34.733078, 38.538177>,  <28.853405, 35.140064, 38.387917>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.175867, 34.733078, 38.538177> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.457991, 34.458363, 38.608444>,  <28.627264, 34.293533, 38.650604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.457991, 34.458363, 38.608444>,  <28.175867, 34.733078, 38.538177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.457991, 34.458363, 38.608444> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415819, -0.200115, 0.887157,
		-0.574137, -0.698766, -0.426723,
		0.705309, -0.686790, 0.175667,
		28.669584, 34.252327, 38.661144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.836147, 34.220501, 38.808811>,  <28.175867, 34.733078, 38.538177>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.836147, 34.220501, 38.808811> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.208136, 34.137070, 38.929909>,  <28.431328, 34.087013, 39.002567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.208136, 34.137070, 38.929909>,  <27.836147, 34.220501, 38.808811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.208136, 34.137070, 38.929909> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366726, -0.468439, 0.803789,
		-0.025835, -0.858523, -0.512124,
		0.929970, -0.208575, 0.302740,
		28.487127, 34.074497, 39.020729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.830822, 33.501152, 38.939133>,  <27.836147, 34.220501, 38.808811>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.830822, 33.501152, 38.939133> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.133074, 33.656372, 39.150204>,  <28.314425, 33.749504, 39.276848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.133074, 33.656372, 39.150204>,  <27.830822, 33.501152, 38.939133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.133074, 33.656372, 39.150204> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389870, -0.380901, 0.838401,
		0.526333, -0.839245, -0.136531,
		0.755629, 0.388048, 0.527677,
		28.359762, 33.772785, 39.308506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.861145, 33.063034, 39.640400>,  <27.830822, 33.501152, 38.939133>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.861145, 33.063034, 39.640400> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.103415, 33.365749, 39.738728>,  <28.248775, 33.547379, 39.797722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.103415, 33.365749, 39.738728>,  <27.861145, 33.063034, 39.640400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.103415, 33.365749, 39.738728> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253774, -0.109076, 0.961094,
		0.754162, -0.644490, 0.125990,
		0.605673, 0.756793, 0.245815,
		28.285116, 33.592789, 39.812473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.419920, 32.785912, 40.090328>,  <27.861145, 33.063034, 39.640400>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.419920, 32.785912, 40.090328> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.344242, 33.174992, 40.144070>,  <28.298836, 33.408440, 40.176315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.344242, 33.174992, 40.144070>,  <28.419920, 32.785912, 40.090328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.344242, 33.174992, 40.144070> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321878, -0.190702, 0.927377,
		0.927685, 0.132209, 0.349172,
		-0.189195, 0.972704, 0.134356,
		28.287483, 33.466805, 40.184376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.440432, 32.823284, 40.827621>,  <28.419920, 32.785912, 40.090328>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.440432, 32.823284, 40.827621> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.298374, 33.183094, 40.725853>,  <28.213140, 33.398979, 40.664791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.298374, 33.183094, 40.725853>,  <28.440432, 32.823284, 40.827621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.298374, 33.183094, 40.725853> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295245, 0.150304, 0.943525,
		0.886964, 0.410203, 0.212201,
		-0.355142, 0.899523, -0.254425,
		28.191832, 33.452950, 40.649525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.780151, 33.275265, 41.318436>,  <28.440432, 32.823284, 40.827621>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.780151, 33.275265, 41.318436> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.429111, 33.423759, 41.197105>,  <28.218489, 33.512856, 41.124306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.429111, 33.423759, 41.197105>,  <28.780151, 33.275265, 41.318436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.429111, 33.423759, 41.197105> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290776, 0.090840, 0.952469,
		0.381145, 0.924084, 0.028225,
		-0.877598, 0.371236, -0.303325,
		28.165833, 33.535130, 41.106110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.545025, 33.850494, 41.883427>,  <28.780151, 33.275265, 41.318436>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.545025, 33.850494, 41.883427> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.215746, 33.772724, 41.670055>,  <28.018179, 33.726063, 41.542030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.215746, 33.772724, 41.670055>,  <28.545025, 33.850494, 41.883427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.215746, 33.772724, 41.670055> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554387, 0.072560, 0.829090,
		-0.122490, 0.978230, -0.167518,
		-0.823196, -0.194426, -0.533430,
		27.968788, 33.714397, 41.510025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.100189, 34.416634, 41.895748>,  <28.545025, 33.850494, 41.883427>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.100189, 34.416634, 41.895748> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.839821, 34.127365, 41.803375>,  <27.683599, 33.953804, 41.747952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.839821, 34.127365, 41.803375>,  <28.100189, 34.416634, 41.895748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.839821, 34.127365, 41.803375> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461756, 0.135707, 0.876564,
		-0.602566, 0.677207, -0.422262,
		-0.650919, -0.723170, -0.230932,
		27.644545, 33.910416, 41.734097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.505817, 34.739201, 41.997616>,  <28.100189, 34.416634, 41.895748>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.505817, 34.739201, 41.997616> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.454596, 34.344666, 42.039059>,  <27.423862, 34.107944, 42.063927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.454596, 34.344666, 42.039059>,  <27.505817, 34.739201, 41.997616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.454596, 34.344666, 42.039059> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318560, 0.139841, 0.937531,
		-0.939213, 0.087051, -0.332116,
		-0.128056, -0.986340, 0.103609,
		27.416180, 34.048763, 42.070141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.028917, 34.662556, 42.598869>,  <27.505817, 34.739201, 41.997616>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.028917, 34.662556, 42.598869> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.141821, 34.280346, 42.564686>,  <27.209562, 34.051022, 42.544174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.141821, 34.280346, 42.564686>,  <27.028917, 34.662556, 42.598869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.141821, 34.280346, 42.564686> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286386, -0.168947, 0.943101,
		-0.915595, -0.241723, -0.321336,
		0.282258, -0.955525, -0.085461,
		27.226498, 33.993690, 42.539047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.467438, 34.186150, 42.811985>,  <27.028917, 34.662556, 42.598869>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.467438, 34.186150, 42.811985> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.802547, 33.971050, 42.849842>,  <27.003614, 33.841991, 42.872555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.802547, 33.971050, 42.849842>,  <26.467438, 34.186150, 42.811985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.802547, 33.971050, 42.849842> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338328, -0.375209, 0.862990,
		-0.428568, -0.755009, -0.496277,
		0.837773, -0.537754, 0.094639,
		27.053881, 33.809727, 42.878235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.239578, 33.487793, 43.088593>,  <26.467438, 34.186150, 42.811985>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.239578, 33.487793, 43.088593> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.616808, 33.574406, 43.189568>,  <26.843145, 33.626373, 43.250153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.616808, 33.574406, 43.189568>,  <26.239578, 33.487793, 43.088593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.616808, 33.574406, 43.189568> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210516, -0.198973, 0.957127,
		0.257475, -0.955785, -0.142063,
		0.943074, 0.216530, 0.252439,
		26.899731, 33.639366, 43.265301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<40.046684, 32.766754, 45.312687> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.743423, 32.509716, 45.268364>,  <39.561466, 32.355495, 45.241772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.743423, 32.509716, 45.268364>,  <40.046684, 32.766754, 45.312687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.743423, 32.509716, 45.268364> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458042, 0.403863, 0.791892,
		-0.464114, 0.651129, -0.600525,
		-0.758153, -0.642593, -0.110805,
		39.515976, 32.316936, 45.235123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.397053, 33.103931, 45.488895>,  <40.046684, 32.766754, 45.312687>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.397053, 33.103931, 45.488895> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.257202, 32.729225, 45.494873>,  <39.173290, 32.504402, 45.498459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.257202, 32.729225, 45.494873>,  <39.397053, 33.103931, 45.488895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.257202, 32.729225, 45.494873> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548783, 0.217698, 0.807122,
		-0.759342, 0.273987, -0.590196,
		-0.349625, -0.936770, 0.014948,
		39.152313, 32.448193, 45.499359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.726936, 33.246811, 45.596024>,  <39.397053, 33.103931, 45.488895>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.726936, 33.246811, 45.596024> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.764629, 32.857258, 45.678658>,  <38.787247, 32.623528, 45.728237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.764629, 32.857258, 45.678658>,  <38.726936, 33.246811, 45.596024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.764629, 32.857258, 45.678658> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609815, 0.107559, 0.785211,
		-0.786922, -0.199970, -0.583751,
		0.094231, -0.973880, 0.206585,
		38.792900, 32.565094, 45.740635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.067551, 32.806477, 45.494095>,  <38.726936, 33.246811, 45.596024>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.067551, 32.806477, 45.494095> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.321926, 32.651031, 45.760796>,  <38.474552, 32.557766, 45.920815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.321926, 32.651031, 45.760796>,  <38.067551, 32.806477, 45.494095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.321926, 32.651031, 45.760796> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724306, -0.002339, 0.689474,
		-0.266377, -0.921399, -0.282961,
		0.635943, -0.388610, 0.666752,
		38.512711, 32.534447, 45.960823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.618877, 32.405739, 45.855694>,  <38.067551, 32.806477, 45.494095>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.618877, 32.405739, 45.855694> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.934467, 32.433758, 46.099861>,  <38.123821, 32.450569, 46.246361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.934467, 32.433758, 46.099861>,  <37.618877, 32.405739, 45.855694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.934467, 32.433758, 46.099861> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609855, -0.031649, 0.791881,
		0.074787, -0.997042, 0.017748,
		0.788976, 0.070046, 0.610418,
		38.171162, 32.454773, 46.282986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.609589, 31.877623, 46.359806>,  <37.618877, 32.405739, 45.855694>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.609589, 31.877623, 46.359806> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.857052, 32.144012, 46.526539>,  <38.005527, 32.303844, 46.626579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.857052, 32.144012, 46.526539>,  <37.609589, 31.877623, 46.359806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.857052, 32.144012, 46.526539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557521, -0.001685, 0.830161,
		0.553569, -0.745972, 0.370252,
		0.618653, 0.665975, 0.416828,
		38.042648, 32.343803, 46.651588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752045, 31.551477, 46.989979>,  <37.609589, 31.877623, 46.359806>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.752045, 31.551477, 46.989979> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.863239, 31.932724, 47.037796>,  <37.929955, 32.161472, 47.066486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.863239, 31.932724, 47.037796>,  <37.752045, 31.551477, 46.989979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.863239, 31.932724, 47.037796> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357335, -0.012911, 0.933887,
		0.891648, -0.302323, 0.336993,
		0.277984, 0.953118, 0.119543,
		37.946636, 32.218658, 47.073658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.058067, 31.652561, 47.612019>,  <37.752045, 31.551477, 46.989979>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.058067, 31.652561, 47.612019> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.927959, 32.019802, 47.521427>,  <37.849895, 32.240147, 47.467072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.927959, 32.019802, 47.521427>,  <38.058067, 31.652561, 47.612019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.927959, 32.019802, 47.521427> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436500, 0.066681, 0.897230,
		0.838849, 0.390698, 0.379061,
		-0.325270, 0.918101, -0.226475,
		37.830379, 32.295231, 47.453484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.289536, 32.055012, 48.137459>,  <38.058067, 31.652561, 47.612019>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.289536, 32.055012, 48.137459> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.966347, 32.210083, 47.959972>,  <37.772434, 32.303127, 47.853481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.966347, 32.210083, 47.959972>,  <38.289536, 32.055012, 48.137459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.966347, 32.210083, 47.959972> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464982, 0.043012, 0.884274,
		0.361899, 0.920791, 0.145511,
		-0.807973, 0.387678, -0.443717,
		37.723953, 32.326385, 47.826859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.041946, 32.415421, 48.658527>,  <38.289536, 32.055012, 48.137459>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.041946, 32.415421, 48.658527> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.729576, 32.386612, 48.410343>,  <37.542156, 32.369328, 48.261433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.729576, 32.386612, 48.410343>,  <38.041946, 32.415421, 48.658527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.729576, 32.386612, 48.410343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623099, 0.020359, 0.781878,
		-0.043680, 0.997195, -0.060775,
		-0.780922, -0.072022, -0.620462,
		37.495300, 32.365005, 48.224205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.594753, 32.794636, 48.952789>,  <38.041946, 32.415421, 48.658527>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.594753, 32.794636, 48.952789> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.342617, 32.614937, 48.699543>,  <37.191334, 32.507118, 48.547596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.342617, 32.614937, 48.699543>,  <37.594753, 32.794636, 48.952789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.342617, 32.614937, 48.699543> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720382, 0.034535, 0.692717,
		-0.289340, 0.892738, -0.345401,
		-0.630343, -0.449251, -0.633120,
		37.153515, 32.480160, 48.509605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010715, 33.195358, 48.896950>,  <37.594753, 32.794636, 48.952789>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.010715, 33.195358, 48.896950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.889023, 32.824539, 48.809296>,  <36.816006, 32.602047, 48.756702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.889023, 32.824539, 48.809296>,  <37.010715, 33.195358, 48.896950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.889023, 32.824539, 48.809296> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765560, 0.101045, 0.635379,
		-0.566886, 0.361066, -0.740454,
		-0.304233, -0.927050, -0.219137,
		36.797752, 32.546425, 48.743553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.177200, 33.304344, 48.862007>,  <37.010715, 33.195358, 48.896950>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.177200, 33.304344, 48.862007> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.304283, 32.926254, 48.891972>,  <36.380531, 32.699402, 48.909950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.304283, 32.926254, 48.891972>,  <36.177200, 33.304344, 48.862007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.304283, 32.926254, 48.891972> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541792, -0.116127, 0.832451,
		-0.778155, -0.305062, -0.549010,
		0.317705, -0.945225, 0.074915,
		36.399593, 32.642685, 48.914448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.620079, 32.948872, 48.948425>,  <36.177200, 33.304344, 48.862007>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.620079, 32.948872, 48.948425> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.930664, 32.770138, 49.126163>,  <36.117016, 32.662895, 49.232807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.930664, 32.770138, 49.126163>,  <35.620079, 32.948872, 48.948425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.930664, 32.770138, 49.126163> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557585, -0.158641, 0.814820,
		-0.293602, -0.880437, -0.372329,
		0.776464, -0.446838, 0.444341,
		36.163605, 32.636086, 49.259464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.205997, 32.881332, 49.622856>,  <35.620079, 32.948872, 48.948425>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.205997, 32.881332, 49.622856> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.808186, 32.847820, 49.647808>,  <34.569500, 32.827713, 49.662777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.808186, 32.847820, 49.647808>,  <35.205997, 32.881332, 49.622856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.808186, 32.847820, 49.647808> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037009, -0.275786, -0.960506,
		0.097671, -0.957561, 0.271177,
		-0.994530, -0.083778, 0.062375,
		34.509827, 32.822685, 49.666519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.070099, 32.178772, 49.396812>,  <35.205997, 32.881332, 49.622856>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.070099, 32.178772, 49.396812> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.738976, 32.400707, 49.363621>,  <34.540302, 32.533867, 49.343704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.738976, 32.400707, 49.363621>,  <35.070099, 32.178772, 49.396812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.738976, 32.400707, 49.363621> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060113, -0.234785, -0.970187,
		-0.557781, -0.798141, 0.227710,
		-0.827809, 0.554840, -0.082980,
		34.490631, 32.567158, 49.338726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.567959, 31.827888, 49.032791>,  <35.070099, 32.178772, 49.396812>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.567959, 31.827888, 49.032791> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.445248, 32.202396, 48.964340>,  <34.371620, 32.427101, 48.923267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.445248, 32.202396, 48.964340>,  <34.567959, 31.827888, 49.032791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.445248, 32.202396, 48.964340> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011841, -0.176033, -0.984313,
		-0.951707, -0.303991, 0.042916,
		-0.306777, 0.936270, -0.171131,
		34.353214, 32.483276, 48.913002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.165066, 31.790216, 48.502216>,  <34.567959, 31.827888, 49.032791>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.165066, 31.790216, 48.502216> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.234459, 32.184132, 48.506092>,  <34.276096, 32.420483, 48.508419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.234459, 32.184132, 48.506092>,  <34.165066, 31.790216, 48.502216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.234459, 32.184132, 48.506092> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166919, 0.039099, -0.985195,
		-0.970588, 0.169297, 0.171163,
		0.173483, 0.984789, 0.009690,
		34.286503, 32.479568, 48.508999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.681137, 32.215820, 48.064949>,  <34.165066, 31.790216, 48.502216>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.681137, 32.215820, 48.064949> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.008381, 32.443111, 48.100304>,  <34.204727, 32.579487, 48.121517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.008381, 32.443111, 48.100304>,  <33.681137, 32.215820, 48.064949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.008381, 32.443111, 48.100304> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054112, 0.229087, -0.971901,
		-0.572506, 0.790342, 0.218166,
		0.818113, 0.568225, 0.088387,
		34.253815, 32.613579, 48.126820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.567646, 32.706020, 47.540207>,  <33.681137, 32.215820, 48.064949>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.567646, 32.706020, 47.540207> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.951927, 32.763142, 47.635418>,  <34.182495, 32.797413, 47.692547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.951927, 32.763142, 47.635418>,  <33.567646, 32.706020, 47.540207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.951927, 32.763142, 47.635418> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159581, 0.417505, -0.894552,
		-0.227124, 0.897384, 0.378309,
		0.960702, 0.142804, 0.238030,
		34.240139, 32.805984, 47.706825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.804329, 33.423050, 47.282360>,  <33.567646, 32.706020, 47.540207>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.804329, 33.423050, 47.282360> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.133224, 33.197601, 47.313995>,  <34.330563, 33.062332, 47.332977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.133224, 33.197601, 47.313995>,  <33.804329, 33.423050, 47.282360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.133224, 33.197601, 47.313995> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151413, 0.082668, -0.985008,
		0.548632, 0.821887, 0.153312,
		0.822239, -0.563621, 0.079090,
		34.379894, 33.028515, 47.337723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.303772, 33.779999, 46.960159>,  <33.804329, 33.423050, 47.282360>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.303772, 33.779999, 46.960159> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.444435, 33.405670, 46.969696>,  <34.528831, 33.181072, 46.975418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.444435, 33.405670, 46.969696>,  <34.303772, 33.779999, 46.960159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.444435, 33.405670, 46.969696> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331140, 0.100533, -0.938211,
		0.875606, 0.337821, 0.345242,
		0.351655, -0.935826, 0.023838,
		34.549931, 33.124924, 46.976849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.882721, 33.844688, 46.672653>,  <34.303772, 33.779999, 46.960159>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.882721, 33.844688, 46.672653> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.818684, 33.453346, 46.620216>,  <34.780262, 33.218540, 46.588753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.818684, 33.453346, 46.620216>,  <34.882721, 33.844688, 46.672653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.818684, 33.453346, 46.620216> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414795, 0.053833, -0.908321,
		0.895720, -0.199794, 0.397199,
		-0.160095, -0.978358, -0.131093,
		34.770657, 33.159840, 46.580887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.575184, 33.636539, 46.469418>,  <34.882721, 33.844688, 46.672653>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.575184, 33.636539, 46.469418> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.275360, 33.399628, 46.351189>,  <35.095467, 33.257481, 46.280251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.275360, 33.399628, 46.351189>,  <35.575184, 33.636539, 46.469418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.275360, 33.399628, 46.351189> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389126, -0.033036, -0.920592,
		0.535485, -0.805053, 0.255235,
		-0.749557, -0.592282, -0.295577,
		35.050491, 33.221943, 46.262516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.903992, 33.207096, 46.114208>,  <35.575184, 33.636539, 46.469418>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.903992, 33.207096, 46.114208> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.524986, 33.175129, 45.990376>,  <35.297585, 33.155949, 45.916077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.524986, 33.175129, 45.990376>,  <35.903992, 33.207096, 46.114208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.524986, 33.175129, 45.990376> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317123, -0.111575, -0.941798,
		0.040724, -0.990537, 0.131062,
		-0.947510, -0.079916, -0.309579,
		35.240734, 33.151154, 45.897503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.816063, 32.579224, 45.651848>,  <35.903992, 33.207096, 46.114208>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.816063, 32.579224, 45.651848> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.495396, 32.799999, 45.560036>,  <35.302994, 32.932465, 45.504948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.495396, 32.799999, 45.560036>,  <35.816063, 32.579224, 45.651848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.495396, 32.799999, 45.560036> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159998, -0.171837, -0.972046,
		-0.575953, -0.815986, 0.049447,
		-0.801673, 0.551941, -0.229526,
		35.254894, 32.965580, 45.491177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.384556, 32.149517, 45.242287>,  <35.816063, 32.579224, 45.651848>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.384556, 32.149517, 45.242287> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.335083, 32.540619, 45.174522>,  <35.305397, 32.775280, 45.133865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.335083, 32.540619, 45.174522>,  <35.384556, 32.149517, 45.242287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.335083, 32.540619, 45.174522> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135751, -0.152441, -0.978945,
		-0.982992, -0.144078, -0.113876,
		-0.123685, 0.977754, -0.169407,
		35.297977, 32.833946, 45.123699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.949051, 32.212757, 44.695675>,  <35.384556, 32.149517, 45.242287>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.949051, 32.212757, 44.695675> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.075657, 32.592045, 44.706196>,  <35.151623, 32.819618, 44.712509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.075657, 32.592045, 44.706196>,  <34.949051, 32.212757, 44.695675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.075657, 32.592045, 44.706196> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481485, -0.136709, -0.865727,
		-0.817305, 0.286682, -0.499825,
		0.316519, 0.948222, 0.026300,
		35.170612, 32.876511, 44.714085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.338802, 32.006336, 44.447372>,  <34.949051, 32.212757, 44.695675>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.338802, 32.006336, 44.447372> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.014118, 31.815739, 44.312267>,  <33.819309, 31.701380, 44.231205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.014118, 31.815739, 44.312267>,  <34.338802, 32.006336, 44.447372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.014118, 31.815739, 44.312267> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271303, -0.204513, 0.940515,
		-0.517230, 0.855058, 0.036730,
		-0.811707, -0.476498, -0.337760,
		33.770607, 31.672789, 44.210938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.811264, 32.086727, 44.970058>,  <34.338802, 32.006336, 44.447372>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.811264, 32.086727, 44.970058> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.675846, 31.770790, 44.765495>,  <33.594593, 31.581228, 44.642757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.675846, 31.770790, 44.765495>,  <33.811264, 32.086727, 44.970058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.675846, 31.770790, 44.765495> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297962, -0.425544, 0.854477,
		-0.892527, 0.441661, -0.091276,
		-0.338547, -0.789841, -0.511408,
		33.574284, 31.533838, 44.612072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.171661, 31.970108, 45.134266>,  <33.811264, 32.086727, 44.970058>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.171661, 31.970108, 45.134266> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.291729, 31.610754, 45.006016>,  <33.363770, 31.395142, 44.929066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.291729, 31.610754, 45.006016>,  <33.171661, 31.970108, 45.134266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.291729, 31.610754, 45.006016> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217521, -0.391735, 0.893996,
		-0.928755, -0.198605, -0.313003,
		0.300166, -0.898387, -0.320625,
		33.381779, 31.341238, 44.909828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.707981, 31.467377, 45.314220>,  <33.171661, 31.970108, 45.134266>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.707981, 31.467377, 45.314220> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.054222, 31.271973, 45.270248>,  <33.261967, 31.154730, 45.243866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.054222, 31.271973, 45.270248>,  <32.707981, 31.467377, 45.314220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.054222, 31.271973, 45.270248> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149564, -0.461761, 0.874304,
		-0.477877, -0.740356, -0.472765,
		0.865600, -0.488518, -0.109934,
		33.313904, 31.125420, 45.237270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.431347, 30.812746, 45.340694>,  <32.707981, 31.467377, 45.314220>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.431347, 30.812746, 45.340694> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.824532, 30.801569, 45.413364>,  <33.060444, 30.794863, 45.456966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.824532, 30.801569, 45.413364>,  <32.431347, 30.812746, 45.340694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.824532, 30.801569, 45.413364> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157804, -0.635141, 0.756104,
		0.094263, -0.771891, -0.628728,
		0.982961, -0.027943, 0.181678,
		33.119419, 30.793186, 45.467869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.573879, 30.128927, 45.406834>,  <32.431347, 30.812746, 45.340694>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.573879, 30.128927, 45.406834> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.887856, 30.311756, 45.574139>,  <33.076241, 30.421453, 45.674522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.887856, 30.311756, 45.574139>,  <32.573879, 30.128927, 45.406834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.887856, 30.311756, 45.574139> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153818, -0.510193, 0.846193,
		0.600170, -0.728551, -0.330166,
		0.784943, 0.457075, 0.418267,
		33.123337, 30.448879, 45.699619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.036823, 29.602388, 45.785885>,  <32.573879, 30.128927, 45.406834>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.036823, 29.602388, 45.785885> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.099411, 29.965710, 45.941063>,  <33.136963, 30.183702, 46.034168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.099411, 29.965710, 45.941063>,  <33.036823, 29.602388, 45.785885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.099411, 29.965710, 45.941063> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158638, -0.364573, 0.917562,
		0.974860, -0.205110, 0.087049,
		0.156466, 0.908304, 0.387946,
		33.146351, 30.238201, 46.057446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.383408, 29.008198, 46.013626>,  <33.036823, 29.602388, 45.785885>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.383408, 29.008198, 46.013626> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.077629, 28.754532, 45.967220>,  <32.894161, 28.602333, 45.939377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.077629, 28.754532, 45.967220>,  <33.383408, 29.008198, 46.013626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.077629, 28.754532, 45.967220> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148961, 0.001339, -0.988842,
		0.627243, -0.773198, 0.093442,
		-0.764446, -0.634163, -0.116016,
		32.848297, 28.564283, 45.932415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.676300, 28.558491, 45.593697>,  <33.383408, 29.008198, 46.013626>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.676300, 28.558491, 45.593697> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.284256, 28.488676, 45.555927>,  <33.049030, 28.446787, 45.533264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.284256, 28.488676, 45.555927>,  <33.676300, 28.558491, 45.593697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.284256, 28.488676, 45.555927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094558, 0.007587, -0.995490,
		0.174465, -0.984621, 0.009068,
		-0.980113, -0.174536, -0.094427,
		32.990223, 28.436316, 45.527599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.651550, 28.181551, 45.128265>,  <33.676300, 28.558491, 45.593697>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.651550, 28.181551, 45.128265> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.265007, 28.284153, 45.135860>,  <33.033081, 28.345715, 45.140419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.265007, 28.284153, 45.135860>,  <33.651550, 28.181551, 45.128265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.265007, 28.284153, 45.135860> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051500, -0.120634, -0.991360,
		-0.251998, -0.958985, 0.129785,
		-0.966357, 0.256505, 0.018988,
		32.975101, 28.361103, 45.141556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.397636, 27.707756, 44.767056>,  <33.651550, 28.181551, 45.128265>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.397636, 27.707756, 44.767056> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.125885, 28.001135, 44.758102>,  <32.962833, 28.177162, 44.752731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.125885, 28.001135, 44.758102>,  <33.397636, 27.707756, 44.767056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.125885, 28.001135, 44.758102> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089516, -0.113115, -0.989541,
		-0.728306, -0.670272, 0.142503,
		-0.679381, 0.733445, -0.022382,
		32.922070, 28.221169, 44.751389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.732502, 27.522974, 44.360657>,  <33.397636, 27.707756, 44.767056>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.732502, 27.522974, 44.360657> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.771717, 27.919928, 44.390503>,  <32.795246, 28.158100, 44.408409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.771717, 27.919928, 44.390503>,  <32.732502, 27.522974, 44.360657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.771717, 27.919928, 44.390503> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267093, 0.045985, -0.962573,
		-0.958671, 0.114298, -0.260550,
		0.098038, 0.992382, 0.074613,
		32.801128, 28.217642, 44.412888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.431503, 27.634064, 43.737015>,  <32.732502, 27.522974, 44.360657>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.431503, 27.634064, 43.737015> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.600952, 27.983572, 43.832573>,  <32.702621, 28.193277, 43.889908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.600952, 27.983572, 43.832573>,  <32.431503, 27.634064, 43.737015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.600952, 27.983572, 43.832573> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268715, 0.130637, -0.954320,
		-0.865065, 0.468465, -0.179454,
		0.423622, 0.873770, 0.238893,
		32.728039, 28.245703, 43.904240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.308456, 28.031288, 43.125084>,  <32.431503, 27.634064, 43.737015>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.308456, 28.031288, 43.125084> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.558353, 28.270256, 43.326195>,  <32.708290, 28.413637, 43.446861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.558353, 28.270256, 43.326195>,  <32.308456, 28.031288, 43.125084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.558353, 28.270256, 43.326195> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316098, 0.395274, -0.862462,
		-0.713987, 0.697744, 0.058102,
		0.624744, 0.597420, 0.502776,
		32.745777, 28.449482, 43.477028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<36.725998, 29.148806, 49.093674> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.735954, 29.498039, 48.898899>,  <36.741928, 29.707579, 48.782036>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.735954, 29.498039, 48.898899>,  <36.725998, 29.148806, 49.093674>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.735954, 29.498039, 48.898899> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208509, -0.480907, -0.851618,
		-0.977704, -0.080331, -0.194016,
		0.024892, 0.873084, -0.486934,
		36.743423, 29.759964, 48.752819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368362, 29.091413, 48.447880>,  <36.725998, 29.148806, 49.093674>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.368362, 29.091413, 48.447880> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.603348, 29.407976, 48.380280>,  <36.744339, 29.597914, 48.339718>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.603348, 29.407976, 48.380280>,  <36.368362, 29.091413, 48.447880>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.603348, 29.407976, 48.380280> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193264, -0.339999, -0.920353,
		-0.785832, 0.508015, -0.352688,
		0.587467, 0.791405, -0.169001,
		36.779587, 29.645397, 48.329578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.149311, 29.459778, 47.826214>,  <36.368362, 29.091413, 48.447880>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.149311, 29.459778, 47.826214> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.536602, 29.548790, 47.871864>,  <36.768974, 29.602198, 47.899254>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.536602, 29.548790, 47.871864>,  <36.149311, 29.459778, 47.826214>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.536602, 29.548790, 47.871864> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159461, -0.197786, -0.967188,
		-0.192654, 0.954653, -0.226986,
		0.968223, 0.222528, 0.114126,
		36.827068, 29.615549, 47.906101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.337025, 29.937592, 47.321411>,  <36.149311, 29.459778, 47.826214>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.337025, 29.937592, 47.321411> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.681549, 29.756834, 47.414310>,  <36.888264, 29.648380, 47.470051>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.681549, 29.756834, 47.414310>,  <36.337025, 29.937592, 47.321411>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.681549, 29.756834, 47.414310> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242502, -0.036062, -0.969481,
		0.446476, 0.891343, 0.078524,
		0.861308, -0.451892, 0.232253,
		36.939941, 29.621265, 47.483986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.741489, 30.390518, 46.984383>,  <36.337025, 29.937592, 47.321411>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.741489, 30.390518, 46.984383> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.918865, 30.034391, 47.025764>,  <37.025291, 29.820715, 47.050594>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.918865, 30.034391, 47.025764>,  <36.741489, 30.390518, 46.984383>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.918865, 30.034391, 47.025764> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234006, 0.003581, -0.972229,
		0.865219, 0.455331, 0.209927,
		0.443437, -0.890315, 0.103452,
		37.051895, 29.767298, 47.056801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.260246, 30.364910, 46.442432>,  <36.741489, 30.390518, 46.984383>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.260246, 30.364910, 46.442432> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.277195, 29.978922, 46.545994>,  <37.287365, 29.747328, 46.608131>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.277195, 29.978922, 46.545994>,  <37.260246, 30.364910, 46.442432>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.277195, 29.978922, 46.545994> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292069, -0.235856, -0.926859,
		0.955458, 0.114891, 0.271845,
		0.042372, -0.964972, 0.258907,
		37.289906, 29.689430, 46.623665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.018578, 30.179653, 46.283047>,  <37.260246, 30.364910, 46.442432>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.018578, 30.179653, 46.283047> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.825691, 29.830891, 46.317101>,  <37.709957, 29.621634, 46.337532>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.825691, 29.830891, 46.317101>,  <38.018578, 30.179653, 46.283047>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.825691, 29.830891, 46.317101> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440873, -0.325502, -0.836469,
		0.757031, -0.365829, 0.541362,
		-0.482219, -0.871905, 0.085131,
		37.681026, 29.569319, 46.342640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.470116, 29.735060, 46.166245>,  <38.018578, 30.179653, 46.283047>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.470116, 29.735060, 46.166245> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.130489, 29.549767, 46.064655>,  <37.926712, 29.438591, 46.003700>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.130489, 29.549767, 46.064655>,  <38.470116, 29.735060, 46.166245>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.130489, 29.549767, 46.064655> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415549, -0.288775, -0.862513,
		0.326204, -0.837868, 0.437686,
		-0.849064, -0.463235, -0.253975,
		37.875771, 29.410797, 45.988464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.621273, 29.055986, 46.052635>,  <38.470116, 29.735060, 46.166245>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.621273, 29.055986, 46.052635> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.279152, 29.124363, 45.856991>,  <38.073879, 29.165388, 45.739605>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.279152, 29.124363, 45.856991>,  <38.621273, 29.055986, 46.052635>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.279152, 29.124363, 45.856991> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391583, -0.404899, -0.826268,
		-0.339284, -0.898241, 0.279376,
		-0.855307, 0.170941, -0.489111,
		38.022560, 29.175646, 45.710258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.448856, 28.403561, 45.643631>,  <38.621273, 29.055986, 46.052635>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.448856, 28.403561, 45.643631> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.233990, 28.687782, 45.461834>,  <38.105072, 28.858316, 45.352757>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.233990, 28.687782, 45.461834>,  <38.448856, 28.403561, 45.643631>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.233990, 28.687782, 45.461834> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214651, -0.405937, -0.888336,
		-0.815709, -0.574738, 0.065533,
		-0.537163, 0.710557, -0.454495,
		38.072842, 28.900949, 45.325485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.239513, 28.081646, 44.995922>,  <38.448856, 28.403561, 45.643631>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.239513, 28.081646, 44.995922> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.170509, 28.470173, 44.930458>,  <38.129108, 28.703289, 44.891182>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.170509, 28.470173, 44.930458>,  <38.239513, 28.081646, 44.995922>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.170509, 28.470173, 44.930458> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151916, -0.137923, -0.978723,
		-0.973223, -0.193699, -0.123766,
		-0.172508, 0.971317, -0.163656,
		38.118755, 28.761568, 44.881363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.720856, 28.167183, 44.375748>,  <38.239513, 28.081646, 44.995922>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.720856, 28.167183, 44.375748> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.946056, 28.496460, 44.405113>,  <38.081177, 28.694027, 44.422733>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.946056, 28.496460, 44.405113>,  <37.720856, 28.167183, 44.375748>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.946056, 28.496460, 44.405113> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266079, -0.096442, -0.959115,
		-0.782455, 0.559513, -0.273330,
		0.562997, 0.823192, 0.073413,
		38.114956, 28.743418, 44.427135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.139816, 28.216728, 44.107971>,  <37.720856, 28.167183, 44.375748>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.139816, 28.216728, 44.107971> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.794319, 28.147724, 43.918579>,  <36.587021, 28.106321, 43.804943>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.794319, 28.147724, 43.918579>,  <37.139816, 28.216728, 44.107971>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.794319, 28.147724, 43.918579> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458661, -0.120093, 0.880459,
		-0.208749, 0.977660, 0.024606,
		-0.863744, -0.172509, -0.473484,
		36.535194, 28.095972, 43.776535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.475475, 28.580921, 44.355953>,  <37.139816, 28.216728, 44.107971>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.475475, 28.580921, 44.355953> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.296139, 28.282581, 44.158897>,  <36.188538, 28.103577, 44.040665>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.296139, 28.282581, 44.158897>,  <36.475475, 28.580921, 44.355953>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.296139, 28.282581, 44.158897> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681944, -0.070900, 0.727959,
		-0.577878, 0.662329, -0.476841,
		-0.448340, -0.745851, -0.492644,
		36.161636, 28.058826, 44.011105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.771477, 28.712318, 44.495007>,  <36.475475, 28.580921, 44.355953>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.771477, 28.712318, 44.495007> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.750923, 28.331644, 44.373909>,  <35.738590, 28.103239, 44.301250>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.750923, 28.331644, 44.373909>,  <35.771477, 28.712318, 44.495007>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.750923, 28.331644, 44.373909> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687460, -0.186181, 0.701952,
		-0.724402, 0.244194, -0.644679,
		-0.051385, -0.951686, -0.302743,
		35.735508, 28.046139, 44.283085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.041454, 28.559347, 44.548126>,  <35.771477, 28.712318, 44.495007>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.041454, 28.559347, 44.548126> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.228127, 28.206255, 44.526218>,  <35.340130, 27.994400, 44.513073>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.228127, 28.206255, 44.526218>,  <35.041454, 28.559347, 44.548126>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.228127, 28.206255, 44.526218> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675770, -0.395848, 0.621803,
		-0.570566, -0.253168, -0.781256,
		0.466679, -0.882729, -0.054774,
		35.368130, 27.941437, 44.509785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.496540, 27.971592, 44.387337>,  <35.041454, 28.559347, 44.548126>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.496540, 27.971592, 44.387337> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.818066, 27.794704, 44.546494>,  <35.010983, 27.688572, 44.641987>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.818066, 27.794704, 44.546494>,  <34.496540, 27.971592, 44.387337>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.818066, 27.794704, 44.546494> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580294, -0.435690, 0.688065,
		-0.130917, -0.783975, -0.606832,
		0.803816, -0.442220, 0.397896,
		35.059212, 27.662039, 44.665863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.441917, 27.273693, 44.258541>,  <34.496540, 27.971592, 44.387337>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.441917, 27.273693, 44.258541> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.670734, 27.314371, 44.584099>,  <34.808025, 27.338778, 44.779434>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.670734, 27.314371, 44.584099>,  <34.441917, 27.273693, 44.258541>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.670734, 27.314371, 44.584099> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642451, -0.561344, 0.521680,
		0.509927, -0.821311, -0.255779,
		0.572041, 0.101693, 0.813896,
		34.842346, 27.344879, 44.828266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.391411, 26.633314, 44.655640>,  <34.441917, 27.273693, 44.258541>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.391411, 26.633314, 44.655640> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.528946, 26.885231, 44.934246>,  <34.611469, 27.036381, 45.101410>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.528946, 26.885231, 44.934246>,  <34.391411, 26.633314, 44.655640>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.528946, 26.885231, 44.934246> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432756, -0.552004, 0.712751,
		0.833365, -0.546495, 0.082744,
		0.343840, 0.629790, 0.696519,
		34.632099, 27.074167, 45.143200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.535683, 26.154255, 45.166252>,  <34.391411, 26.633314, 44.655640>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.535683, 26.154255, 45.166252> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.561100, 26.513283, 45.340759>,  <34.576351, 26.728699, 45.445465>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.561100, 26.513283, 45.340759>,  <34.535683, 26.154255, 45.166252>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.561100, 26.513283, 45.340759> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345970, -0.390228, 0.853245,
		0.936091, -0.205157, 0.285734,
		0.063548, 0.897570, 0.436267,
		34.580166, 26.782555, 45.471638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.877602, 25.985374, 45.901711>,  <34.535683, 26.154255, 45.166252>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.877602, 25.985374, 45.901711> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.688595, 26.335197, 45.945301>,  <34.575191, 26.545092, 45.971455>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.688595, 26.335197, 45.945301>,  <34.877602, 25.985374, 45.901711>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.688595, 26.335197, 45.945301> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298471, -0.275146, 0.913898,
		0.829240, 0.399309, 0.391042,
		-0.472522, 0.874555, 0.108980,
		34.546837, 26.597565, 45.977997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.950577, 26.162413, 46.655212>,  <34.877602, 25.985374, 45.901711>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.950577, 26.162413, 46.655212> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.646133, 26.388065, 46.527172>,  <34.463467, 26.523457, 46.450348>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.646133, 26.388065, 46.527172>,  <34.950577, 26.162413, 46.655212>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.646133, 26.388065, 46.527172> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504225, -0.204157, 0.839093,
		0.408009, 0.800046, 0.439836,
		-0.761109, 0.564133, -0.320105,
		34.417801, 26.557306, 46.431141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.785316, 26.658348, 47.200203>,  <34.950577, 26.162413, 46.655212>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.785316, 26.658348, 47.200203> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.446461, 26.602531, 46.995117>,  <34.243145, 26.569042, 46.872066>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.446461, 26.602531, 46.995117>,  <34.785316, 26.658348, 47.200203>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.446461, 26.602531, 46.995117> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500349, -0.115369, 0.858103,
		-0.178894, 0.983472, 0.027914,
		-0.847141, -0.139542, -0.512718,
		34.192318, 26.560669, 46.841301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.318558, 26.994795, 47.618027>,  <34.785316, 26.658348, 47.200203>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.318558, 26.994795, 47.618027> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.093266, 26.767826, 47.377758>,  <33.958092, 26.631645, 47.233597>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.093266, 26.767826, 47.377758>,  <34.318558, 26.994795, 47.618027>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.093266, 26.767826, 47.377758> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640446, -0.159555, 0.751246,
		-0.522114, 0.807820, -0.273538,
		-0.563228, -0.567423, -0.600672,
		33.924297, 26.597599, 47.197556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.632523, 27.209673, 47.831039>,  <34.318558, 26.994795, 47.618027>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.632523, 27.209673, 47.831039> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.572361, 26.860661, 47.645107>,  <33.536263, 26.651253, 47.533546>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.572361, 26.860661, 47.645107>,  <33.632523, 27.209673, 47.831039>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.572361, 26.860661, 47.645107> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594641, -0.295777, 0.747608,
		-0.789797, 0.388854, -0.474355,
		-0.150407, -0.872529, -0.464833,
		33.527237, 26.598902, 47.505657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.911266, 27.048603, 47.850468>,  <33.632523, 27.209673, 47.831039>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.911266, 27.048603, 47.850468> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.079056, 26.690441, 47.790749>,  <33.179729, 26.475544, 47.754917>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.079056, 26.690441, 47.790749>,  <32.911266, 27.048603, 47.850468>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.079056, 26.690441, 47.790749> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598762, -0.396533, 0.695877,
		-0.682296, -0.202505, -0.702470,
		0.419471, -0.895407, -0.149300,
		33.204899, 26.421820, 47.745960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.419704, 26.612104, 47.904293>,  <32.911266, 27.048603, 47.850468>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.419704, 26.612104, 47.904293> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.746395, 26.414671, 48.023842>,  <32.942410, 26.296211, 48.095573>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.746395, 26.414671, 48.023842>,  <32.419704, 26.612104, 47.904293>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.746395, 26.414671, 48.023842> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537690, -0.463062, 0.704601,
		-0.209381, -0.736172, -0.643592,
		0.816730, -0.493583, 0.298876,
		32.991413, 26.266596, 48.113506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.755571, 27.070688, 47.982697>,  <32.419704, 26.612104, 47.904293>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.755571, 27.070688, 47.982697> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.855806, 27.452688, 48.046165>,  <31.915947, 27.681889, 48.084248>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.855806, 27.452688, 48.046165>,  <31.755571, 27.070688, 47.982697>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.855806, 27.452688, 48.046165> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076013, 0.182810, -0.980205,
		-0.965106, 0.233564, 0.118402,
		0.250585, 0.955002, 0.158677,
		31.930983, 27.739189, 48.093769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.418142, 27.445177, 47.419697>,  <31.755571, 27.070688, 47.982697>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.418142, 27.445177, 47.419697> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.678589, 27.709885, 47.568348>,  <31.834858, 27.868710, 47.657539>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.678589, 27.709885, 47.568348>,  <31.418142, 27.445177, 47.419697>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.678589, 27.709885, 47.568348> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049580, 0.451517, -0.890884,
		-0.757356, 0.598495, 0.261180,
		0.651117, 0.661767, 0.371632,
		31.873924, 27.908415, 47.679836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.185524, 28.143036, 47.097424>,  <31.418142, 27.445177, 47.419697>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.185524, 28.143036, 47.097424> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.560173, 28.223505, 47.212151>,  <31.784964, 28.271786, 47.280987>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.560173, 28.223505, 47.212151>,  <31.185524, 28.143036, 47.097424>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.560173, 28.223505, 47.212151> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196943, 0.374745, -0.905969,
		-0.289741, 0.905039, 0.311375,
		0.936624, 0.201173, 0.286820,
		31.841160, 28.283857, 47.298195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.318216, 28.723656, 46.687923>,  <31.185524, 28.143036, 47.097424>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.318216, 28.723656, 46.687923> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.676794, 28.577534, 46.788277>,  <31.891941, 28.489861, 46.848488>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.676794, 28.577534, 46.788277>,  <31.318216, 28.723656, 46.687923>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.676794, 28.577534, 46.788277> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333771, 0.184154, -0.924491,
		0.291519, 0.912492, 0.287011,
		0.896445, -0.365303, 0.250879,
		31.945728, 28.467943, 46.863541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.769030, 29.226166, 46.417728>,  <31.318216, 28.723656, 46.687923>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.769030, 29.226166, 46.417728> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.985657, 28.898472, 46.493160>,  <32.115631, 28.701857, 46.538418>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.985657, 28.898472, 46.493160>,  <31.769030, 29.226166, 46.417728>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.985657, 28.898472, 46.493160> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361450, 0.024389, -0.932072,
		0.758986, 0.572941, 0.309320,
		0.541566, -0.819234, 0.188579,
		32.148129, 28.652702, 46.549732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.460110, 29.357279, 46.158920>,  <31.769030, 29.226166, 46.417728>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.460110, 29.357279, 46.158920> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.460693, 28.957541, 46.173382>,  <32.461044, 28.717697, 46.182060>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.460693, 28.957541, 46.173382>,  <32.460110, 29.357279, 46.158920>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.460693, 28.957541, 46.173382> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381736, -0.032863, -0.923687,
		0.924270, 0.015151, 0.381438,
		0.001459, -0.999345, 0.036158,
		32.461132, 28.657738, 46.184231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.141804, 29.443466, 46.543854>,  <32.460110, 29.357279, 46.158920>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.141804, 29.443466, 46.543854> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.099464, 29.841217, 46.545155>,  <33.074062, 30.079868, 46.545937>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.099464, 29.841217, 46.545155>,  <33.141804, 29.443466, 46.543854>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.099464, 29.841217, 46.545155> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062810, -0.009951, 0.997976,
		0.992396, 0.105431, 0.063510,
		-0.105850, 0.994377, 0.003254,
		33.067711, 30.139530, 46.546131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.525875, 29.686131, 47.051643>,  <33.141804, 29.443466, 46.543854>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.525875, 29.686131, 47.051643> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.278622, 29.997864, 47.010563>,  <33.130268, 30.184904, 46.985912>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.278622, 29.997864, 47.010563>,  <33.525875, 29.686131, 47.051643>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.278622, 29.997864, 47.010563> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041018, 0.162457, 0.985863,
		0.785001, 0.605183, -0.132387,
		-0.618135, 0.779334, -0.102706,
		33.093182, 30.231665, 46.979752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.894363, 30.380020, 47.364899>,  <33.525875, 29.686131, 47.051643>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.894363, 30.380020, 47.364899> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.496597, 30.420341, 47.377373>,  <33.257938, 30.444534, 47.384857>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.496597, 30.420341, 47.377373>,  <33.894363, 30.380020, 47.364899>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.496597, 30.420341, 47.377373> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055095, 0.243945, 0.968223,
		0.089990, 0.964536, -0.248137,
		-0.994418, 0.100801, 0.031188,
		33.198273, 30.450583, 47.386730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.775063, 31.051722, 47.634953>,  <33.894363, 30.380020, 47.364899>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.775063, 31.051722, 47.634953> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.424854, 30.867752, 47.694202>,  <33.214729, 30.757370, 47.729752>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.424854, 30.867752, 47.694202>,  <33.775063, 31.051722, 47.634953>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.424854, 30.867752, 47.694202> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101125, 0.474184, 0.874599,
		-0.472486, 0.750747, -0.461666,
		-0.875517, -0.459922, 0.148126,
		33.162201, 30.729776, 47.738640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.436008, 31.497448, 47.964386>,  <33.775063, 31.051722, 47.634953>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.436008, 31.497448, 47.964386> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.239506, 31.159164, 48.047756>,  <33.121605, 30.956194, 48.097778>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.239506, 31.159164, 48.047756>,  <33.436008, 31.497448, 47.964386>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.239506, 31.159164, 48.047756> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165436, 0.325535, 0.930945,
		-0.855160, 0.422851, -0.299832,
		-0.491256, -0.845709, 0.208430,
		33.092129, 30.905451, 48.110287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.792576, 31.713163, 48.317333>,  <33.436008, 31.497448, 47.964386>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.792576, 31.713163, 48.317333> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.859692, 31.334303, 48.426697>,  <32.899960, 31.106987, 48.492317>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.859692, 31.334303, 48.426697>,  <32.792576, 31.713163, 48.317333>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.859692, 31.334303, 48.426697> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283072, 0.219375, 0.933673,
		-0.944308, -0.234055, -0.231303,
		0.167789, -0.947150, 0.273412,
		32.910027, 31.050158, 48.508720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.283314, 31.647633, 48.876862>,  <32.792576, 31.713163, 48.317333>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.283314, 31.647633, 48.876862> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.511990, 31.319771, 48.891533>,  <32.649193, 31.123055, 48.900333>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.511990, 31.319771, 48.891533>,  <32.283314, 31.647633, 48.876862>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.511990, 31.319771, 48.891533> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323844, -0.184350, 0.927976,
		-0.753857, -0.542388, -0.370830,
		0.571686, -0.819652, 0.036676,
		32.683495, 31.073875, 48.902534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.852711, 31.062677, 49.036533>,  <32.283314, 31.647633, 48.876862>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.852711, 31.062677, 49.036533> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.221069, 30.972851, 49.163982>,  <32.442085, 30.918955, 49.240452>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.221069, 30.972851, 49.163982>,  <31.852711, 31.062677, 49.036533>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.221069, 30.972851, 49.163982> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336083, -0.043324, 0.940835,
		-0.197478, -0.973495, -0.115371,
		0.920897, -0.224568, 0.318620,
		32.497337, 30.905481, 49.259567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.769949, 30.601772, 49.486561>,  <31.852711, 31.062677, 49.036533>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.769949, 30.601772, 49.486561> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.134525, 30.742599, 49.571716>,  <32.353271, 30.827097, 49.622810>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.134525, 30.742599, 49.571716>,  <31.769949, 30.601772, 49.486561>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.134525, 30.742599, 49.571716> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203823, -0.063100, 0.976972,
		0.357395, -0.933844, 0.014248,
		0.911441, 0.352069, 0.212890,
		32.407959, 30.848221, 49.635582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<37.033150, 31.730797, 34.576694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.352139, 31.785128, 34.811840>,  <37.543533, 31.817726, 34.952927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.352139, 31.785128, 34.811840>,  <37.033150, 31.730797, 34.576694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.352139, 31.785128, 34.811840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560932, -0.191989, 0.805292,
		0.222245, -0.971952, -0.076916,
		0.797472, 0.135828, 0.587868,
		37.591381, 31.825876, 34.988201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.015568, 31.174086, 35.164364>,  <37.033150, 31.730797, 34.576694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.015568, 31.174086, 35.164364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.238743, 31.475334, 35.303795>,  <37.372650, 31.656084, 35.387455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.238743, 31.475334, 35.303795>,  <37.015568, 31.174086, 35.164364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.238743, 31.475334, 35.303795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648147, 0.133140, 0.749786,
		0.518273, -0.644266, 0.562419,
		0.557942, 0.753124, 0.348576,
		37.406124, 31.701271, 35.408367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.037933, 31.076284, 35.929165>,  <37.015568, 31.174086, 35.164364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.037933, 31.076284, 35.929165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.155609, 31.454361, 35.872501>,  <37.226215, 31.681208, 35.838505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.155609, 31.454361, 35.872501>,  <37.037933, 31.076284, 35.929165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.155609, 31.454361, 35.872501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644031, 0.305563, 0.701325,
		0.706171, -0.115090, 0.698625,
		0.294189, 0.945191, -0.141658,
		37.243866, 31.737919, 35.830006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.388416, 31.331602, 36.578514>,  <37.037933, 31.076284, 35.929165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.388416, 31.331602, 36.578514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.255257, 31.652763, 36.380714>,  <37.175362, 31.845459, 36.262035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.255257, 31.652763, 36.380714>,  <37.388416, 31.331602, 36.578514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.255257, 31.652763, 36.380714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414545, 0.346406, 0.841520,
		0.846955, 0.485131, 0.217521,
		-0.332897, 0.802902, -0.494498,
		37.155388, 31.893635, 36.232365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.452991, 31.855755, 37.073200>,  <37.388416, 31.331602, 36.578514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.452991, 31.855755, 37.073200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.215679, 32.020390, 36.796474>,  <37.073292, 32.119171, 36.630440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.215679, 32.020390, 36.796474>,  <37.452991, 31.855755, 37.073200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.215679, 32.020390, 36.796474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462340, 0.529306, 0.711391,
		0.658984, 0.741910, -0.123733,
		-0.593280, 0.411588, -0.691819,
		37.037697, 32.143867, 36.588928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405357, 32.576374, 37.265659>,  <37.452991, 31.855755, 37.073200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.405357, 32.576374, 37.265659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.087208, 32.493866, 37.037682>,  <36.896317, 32.444363, 36.900894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.087208, 32.493866, 37.037682>,  <37.405357, 32.576374, 37.265659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.087208, 32.493866, 37.037682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603836, 0.351190, 0.715575,
		0.052555, 0.913301, -0.403881,
		-0.795374, -0.206271, -0.569941,
		36.848595, 32.431984, 36.866699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.932331, 33.221577, 37.275654>,  <37.405357, 32.576374, 37.265659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.932331, 33.221577, 37.275654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.708908, 32.906616, 37.171337>,  <36.574852, 32.717640, 37.108749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.708908, 32.906616, 37.171337>,  <36.932331, 33.221577, 37.275654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.708908, 32.906616, 37.171337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764920, 0.367381, 0.529083,
		-0.320792, 0.495007, -0.807503,
		-0.558561, -0.787401, -0.260788,
		36.541340, 32.670395, 37.093102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.178032, 33.485004, 37.276325>,  <36.932331, 33.221577, 37.275654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.178032, 33.485004, 37.276325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.161083, 33.085518, 37.265266>,  <36.150913, 32.845825, 37.258633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.161083, 33.085518, 37.265266>,  <36.178032, 33.485004, 37.276325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.161083, 33.085518, 37.265266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830291, 0.019810, 0.556978,
		-0.555716, 0.046559, -0.830067,
		-0.042376, -0.998720, -0.027648,
		36.148369, 32.785904, 37.256973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.534142, 33.335812, 37.042706>,  <36.178032, 33.485004, 37.276325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.534142, 33.335812, 37.042706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.698456, 33.034752, 37.248528>,  <35.797047, 32.854115, 37.372021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.698456, 33.034752, 37.248528>,  <35.534142, 33.335812, 37.042706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.698456, 33.034752, 37.248528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786698, -0.007357, 0.617294,
		-0.460823, -0.658376, -0.595133,
		0.410790, -0.752654, 0.514552,
		35.821693, 32.808956, 37.402893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.964813, 32.895180, 37.241631>,  <35.534142, 33.335812, 37.042706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.964813, 32.895180, 37.241631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.252769, 32.790367, 37.498722>,  <35.425541, 32.727478, 37.652977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.252769, 32.790367, 37.498722>,  <34.964813, 32.895180, 37.241631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.252769, 32.790367, 37.498722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686388, -0.131176, 0.715307,
		-0.103121, -0.956103, -0.274285,
		0.719887, -0.262029, 0.642731,
		35.468735, 32.711758, 37.691540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.584145, 32.495682, 37.645126>,  <34.964813, 32.895180, 37.241631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.584145, 32.495682, 37.645126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.926746, 32.541752, 37.846378>,  <35.132305, 32.569393, 37.967129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.926746, 32.541752, 37.846378>,  <34.584145, 32.495682, 37.645126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.926746, 32.541752, 37.846378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515150, 0.130208, 0.847152,
		0.032050, -0.984776, 0.170850,
		0.856501, 0.115164, 0.503134,
		35.183697, 32.576302, 37.997318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.665726, 31.934616, 38.053825>,  <34.584145, 32.495682, 37.645126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.665726, 31.934616, 38.053825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.857479, 32.247131, 38.213715>,  <34.972530, 32.434643, 38.309647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.857479, 32.247131, 38.213715>,  <34.665726, 31.934616, 38.053825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.857479, 32.247131, 38.213715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653370, 0.013645, 0.756916,
		0.585917, -0.624018, 0.517013,
		0.479384, 0.781291, 0.399720,
		35.001293, 32.481518, 38.333630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.980362, 31.296305, 38.037342>,  <34.665726, 31.934616, 38.053825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.980362, 31.296305, 38.037342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.675316, 31.043262, 37.983337>,  <34.492287, 30.891438, 37.950935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.675316, 31.043262, 37.983337>,  <34.980362, 31.296305, 38.037342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.675316, 31.043262, 37.983337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136298, 0.046877, -0.989558,
		0.632327, -0.773056, 0.050473,
		-0.762618, -0.632603, -0.135008,
		34.446529, 30.853481, 37.942837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.189037, 30.877464, 37.487103>,  <34.980362, 31.296305, 38.037342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.189037, 30.877464, 37.487103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.792263, 30.826948, 37.491337>,  <34.554199, 30.796638, 37.493877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.792263, 30.826948, 37.491337>,  <35.189037, 30.877464, 37.487103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.792263, 30.826948, 37.491337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007850, -0.022107, -0.999725,
		0.126492, -0.991747, 0.020938,
		-0.991936, -0.126292, 0.010582,
		34.494682, 30.789061, 37.494511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.072674, 30.345304, 36.849049>,  <35.189037, 30.877464, 37.487103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.072674, 30.345304, 36.849049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.725060, 30.521791, 36.938583>,  <34.516491, 30.627684, 36.992306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.725060, 30.521791, 36.938583>,  <35.072674, 30.345304, 36.849049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.725060, 30.521791, 36.938583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145581, 0.204352, -0.968011,
		-0.472845, -0.873824, -0.113357,
		-0.869036, 0.441217, 0.223839,
		34.464348, 30.654156, 37.005733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.557499, 29.937765, 36.470291>,  <35.072674, 30.345304, 36.849049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.557499, 29.937765, 36.470291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.360077, 30.277245, 36.546299>,  <34.241623, 30.480932, 36.591904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.360077, 30.277245, 36.546299>,  <34.557499, 29.937765, 36.470291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.360077, 30.277245, 36.546299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242407, 0.075583, -0.967226,
		-0.835248, -0.523444, 0.168426,
		-0.493559, 0.848701, 0.190017,
		34.212009, 30.531855, 36.603306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.794479, 29.876207, 36.126698>,  <34.557499, 29.937765, 36.470291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.794479, 29.876207, 36.126698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.919022, 30.252981, 36.176998>,  <33.993748, 30.479046, 36.207180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.919022, 30.252981, 36.176998>,  <33.794479, 29.876207, 36.126698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.919022, 30.252981, 36.176998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218693, 0.199803, -0.955119,
		-0.924787, 0.269882, 0.268205,
		0.311358, 0.941935, 0.125754,
		34.012428, 30.535563, 36.214725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.247765, 30.318171, 35.802135>,  <33.794479, 29.876207, 36.126698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.247765, 30.318171, 35.802135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.558655, 30.569050, 35.822292>,  <33.745190, 30.719578, 35.834385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.558655, 30.569050, 35.822292>,  <33.247765, 30.318171, 35.802135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.558655, 30.569050, 35.822292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246843, 0.377594, -0.892464,
		-0.578777, 0.681211, 0.448296,
		0.777230, 0.627196, 0.050390,
		33.791824, 30.757208, 35.837410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.979034, 31.006113, 35.643776>,  <33.247765, 30.318171, 35.802135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.979034, 31.006113, 35.643776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.368999, 30.987360, 35.556744>,  <33.602978, 30.976109, 35.504524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.368999, 30.987360, 35.556744>,  <32.979034, 31.006113, 35.643776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.368999, 30.987360, 35.556744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201299, 0.231404, -0.951804,
		0.094971, 0.971728, 0.216162,
		0.974915, -0.046881, -0.217585,
		33.661472, 30.973295, 35.491467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.939552, 31.290997, 35.028507>,  <32.979034, 31.006113, 35.643776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.939552, 31.290997, 35.028507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.324867, 31.183765, 35.022568>,  <33.556057, 31.119427, 35.019005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.324867, 31.183765, 35.022568>,  <32.939552, 31.290997, 35.028507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.324867, 31.183765, 35.022568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047057, 0.223040, -0.973673,
		0.264331, 0.937224, 0.227466,
		0.963283, -0.268076, -0.014853,
		33.613853, 31.103342, 35.018112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.307568, 31.886940, 34.790535>,  <32.939552, 31.290997, 35.028507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.307568, 31.886940, 34.790535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.500687, 31.547476, 34.704109>,  <33.616558, 31.343798, 34.652252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.500687, 31.547476, 34.704109>,  <33.307568, 31.886940, 34.790535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.500687, 31.547476, 34.704109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100693, 0.298885, -0.948962,
		0.869925, 0.436398, 0.229754,
		0.482795, -0.848660, -0.216065,
		33.645527, 31.292877, 34.639290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.954388, 31.994316, 34.510117>,  <33.307568, 31.886940, 34.790535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.954388, 31.994316, 34.510117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.852375, 31.630241, 34.379566>,  <33.791168, 31.411797, 34.301235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.852375, 31.630241, 34.379566>,  <33.954388, 31.994316, 34.510117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.852375, 31.630241, 34.379566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041354, 0.326963, -0.944132,
		0.966048, -0.254279, -0.045746,
		-0.255030, -0.910185, -0.326377,
		33.775867, 31.357185, 34.281654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.413773, 31.854889, 33.789219>,  <33.954388, 31.994316, 34.510117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.413773, 31.854889, 33.789219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.123909, 31.579762, 33.772373>,  <33.949989, 31.414686, 33.762264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.123909, 31.579762, 33.772373>,  <34.413773, 31.854889, 33.789219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.123909, 31.579762, 33.772373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026414, 0.088795, -0.995700,
		0.688599, -0.720432, -0.082514,
		-0.724661, -0.687817, -0.042115,
		33.906509, 31.373417, 33.759739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.611958, 31.277397, 33.318802>,  <34.413773, 31.854889, 33.789219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.611958, 31.277397, 33.318802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.223522, 31.368515, 33.347347>,  <33.990459, 31.423185, 33.364475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.223522, 31.368515, 33.347347>,  <34.611958, 31.277397, 33.318802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.223522, 31.368515, 33.347347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012381, 0.346607, -0.937929,
		-0.238390, -0.909930, -0.339407,
		-0.971091, 0.227795, 0.071362,
		33.932194, 31.436853, 33.368755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.329090, 31.233595, 33.523651>,  <34.611958, 31.277397, 33.318802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.329090, 31.233595, 33.523651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.607143, 31.215950, 33.810661>,  <35.773975, 31.205362, 33.982868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.607143, 31.215950, 33.810661>,  <35.329090, 31.233595, 33.523651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.607143, 31.215950, 33.810661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384042, -0.820964, -0.422529,
		0.607703, 0.569274, -0.553737,
		0.695132, -0.044114, 0.717527,
		35.815681, 31.202715, 34.025921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.777737, 30.718744, 33.265965>,  <35.329090, 31.233595, 33.523651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.777737, 30.718744, 33.265965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.844856, 30.737499, 33.659847>,  <35.885128, 30.748753, 33.896175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.844856, 30.737499, 33.659847>,  <35.777737, 30.718744, 33.265965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.844856, 30.737499, 33.659847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475680, -0.878744, -0.039217,
		0.863465, 0.474986, -0.169756,
		0.167799, 0.046887, 0.984706,
		35.895195, 30.751566, 33.955257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.507187, 30.442865, 33.270222>,  <35.777737, 30.718744, 33.265965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.507187, 30.442865, 33.270222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.355438, 30.428537, 33.640041>,  <36.264389, 30.419941, 33.861935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.355438, 30.428537, 33.640041>,  <36.507187, 30.442865, 33.270222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.355438, 30.428537, 33.640041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414565, -0.899914, 0.135245,
		0.827171, 0.434595, 0.356252,
		-0.379373, -0.035819, 0.924550,
		36.241627, 30.417791, 33.917408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.939980, 30.494654, 33.868126>,  <36.507187, 30.442865, 33.270222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.939980, 30.494654, 33.868126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.618912, 30.273500, 33.957603>,  <36.426270, 30.140808, 34.011288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.618912, 30.273500, 33.957603>,  <36.939980, 30.494654, 33.868126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.618912, 30.273500, 33.957603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596216, -0.733963, 0.325306,
		-0.015675, 0.394483, 0.918769,
		-0.802671, -0.552884, 0.223692,
		36.378109, 30.107635, 34.024712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.255657, 29.881565, 33.606468>,  <36.939980, 30.494654, 33.868126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.255657, 29.881565, 33.606468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.632099, 29.759726, 33.665184>,  <37.857964, 29.686623, 33.700413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.632099, 29.759726, 33.665184>,  <37.255657, 29.881565, 33.606468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.632099, 29.759726, 33.665184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227697, -0.249965, 0.941101,
		-0.249965, -0.919096, -0.304599,
		-0.941101, 0.304599, -0.146793,
		37.914429, 29.668346, 33.709221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.389320, 29.084957, 33.755070>,  <37.255657, 29.881565, 33.606468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.389320, 29.084957, 33.755070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.615841, 29.358250, 33.939461>,  <37.751751, 29.522224, 34.050095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.615841, 29.358250, 33.939461>,  <37.389320, 29.084957, 33.755070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.615841, 29.358250, 33.939461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399973, -0.261221, 0.878513,
		0.720644, -0.681881, 0.125345,
		0.566298, 0.683229, 0.460981,
		37.785732, 29.563219, 34.077755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.397308, 28.729706, 34.398895>,  <37.389320, 29.084957, 33.755070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.397308, 28.729706, 34.398895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.611015, 29.062979, 34.455978>,  <37.739239, 29.262941, 34.490231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.611015, 29.062979, 34.455978>,  <37.397308, 28.729706, 34.398895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.611015, 29.062979, 34.455978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144809, -0.076120, 0.986527,
		0.832818, -0.547737, 0.079984,
		0.534270, 0.833180, 0.142711,
		37.771297, 29.312933, 34.498791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.992237, 28.526226, 34.950428>,  <37.397308, 28.729706, 34.398895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.992237, 28.526226, 34.950428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.881210, 28.910400, 34.941322>,  <37.814594, 29.140905, 34.935860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.881210, 28.910400, 34.941322>,  <37.992237, 28.526226, 34.950428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.881210, 28.910400, 34.941322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064149, 0.005110, 0.997927,
		0.958563, 0.278451, 0.060192,
		-0.277566, 0.960437, -0.022761,
		37.797939, 29.198532, 34.934494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.450035, 28.894632, 35.477932>,  <37.992237, 28.526226, 34.950428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.450035, 28.894632, 35.477932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.164215, 29.164597, 35.404270>,  <37.992722, 29.326574, 35.360073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.164215, 29.164597, 35.404270>,  <38.450035, 28.894632, 35.477932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.164215, 29.164597, 35.404270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055770, 0.317350, 0.946667,
		0.697355, 0.666174, -0.264403,
		-0.714553, 0.674909, -0.184153,
		37.949848, 29.367069, 35.349026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.713135, 29.557377, 35.861931>,  <38.450035, 28.894632, 35.477932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.713135, 29.557377, 35.861931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.318314, 29.539125, 35.800415>,  <38.081421, 29.528175, 35.763504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.318314, 29.539125, 35.800415>,  <38.713135, 29.557377, 35.861931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.318314, 29.539125, 35.800415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160042, 0.345299, 0.924746,
		0.010910, 0.937383, -0.348129,
		-0.987050, -0.045626, -0.153788,
		38.022198, 29.525438, 35.754280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.441814, 30.113392, 36.217495>,  <38.713135, 29.557377, 35.861931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.441814, 30.113392, 36.217495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.116161, 29.895046, 36.138271>,  <37.920769, 29.764040, 36.090736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.116161, 29.895046, 36.138271>,  <38.441814, 30.113392, 36.217495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.116161, 29.895046, 36.138271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340092, 0.171768, 0.924572,
		-0.470669, 0.820080, -0.325485,
		-0.814131, -0.545862, -0.198057,
		37.871922, 29.731287, 36.078854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.993851, 30.422470, 36.599018>,  <38.441814, 30.113392, 36.217495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.993851, 30.422470, 36.599018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.837891, 30.062700, 36.520012>,  <37.744316, 29.846838, 36.472607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.837891, 30.062700, 36.520012>,  <37.993851, 30.422470, 36.599018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.837891, 30.062700, 36.520012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441143, -0.005843, 0.897418,
		-0.808315, 0.437033, -0.394498,
		-0.389896, -0.899427, -0.197517,
		37.720921, 29.792871, 36.460758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264820, 30.460211, 36.805267>,  <37.993851, 30.422470, 36.599018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.264820, 30.460211, 36.805267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.396900, 30.082647, 36.804943>,  <37.476151, 29.856110, 36.804749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.396900, 30.082647, 36.804943>,  <37.264820, 30.460211, 36.805267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.396900, 30.082647, 36.804943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320407, -0.112892, 0.940529,
		-0.887866, -0.310305, -0.339713,
		0.330202, -0.943910, -0.000809,
		37.495960, 29.799475, 36.804699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.803673, 30.221483, 37.192459>,  <37.264820, 30.460211, 36.805267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.803673, 30.221483, 37.192459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.089603, 29.941950, 37.202690>,  <37.261162, 29.774231, 37.208828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.089603, 29.941950, 37.202690>,  <36.803673, 30.221483, 37.192459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.089603, 29.941950, 37.202690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193963, -0.163000, 0.967372,
		-0.671862, -0.696466, -0.252065,
		0.714828, -0.698832, 0.025575,
		37.304050, 29.732300, 37.210361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.500359, 29.536318, 37.368397>,  <36.803673, 30.221483, 37.192459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.500359, 29.536318, 37.368397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.889568, 29.483685, 37.444206>,  <37.123093, 29.452105, 37.489693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.889568, 29.483685, 37.444206>,  <36.500359, 29.536318, 37.368397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.889568, 29.483685, 37.444206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227079, -0.400831, 0.887564,
		-0.040821, -0.906654, -0.419896,
		0.973021, -0.131581, 0.189520,
		37.181473, 29.444210, 37.501060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.589653, 28.838970, 37.651421>,  <36.500359, 29.536318, 37.368397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.589653, 28.838970, 37.651421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.887394, 29.070755, 37.784187>,  <37.066040, 29.209826, 37.863846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.887394, 29.070755, 37.784187>,  <36.589653, 28.838970, 37.651421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.887394, 29.070755, 37.784187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170446, -0.315713, 0.933420,
		0.645669, -0.751366, -0.136234,
		0.744352, 0.579461, 0.331914,
		37.110699, 29.244593, 37.883762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.742847, 28.462013, 38.203304>,  <36.589653, 28.838970, 37.651421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.742847, 28.462013, 38.203304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.937572, 28.806736, 38.260300>,  <37.054405, 29.013571, 38.294495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.937572, 28.806736, 38.260300>,  <36.742847, 28.462013, 38.203304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.937572, 28.806736, 38.260300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017505, -0.172710, 0.984817,
		0.873332, -0.476925, -0.099163,
		0.486811, 0.861808, 0.142485,
		37.083614, 29.065279, 38.303043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.324986, 28.337187, 38.598045>,  <36.742847, 28.462013, 38.203304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.324986, 28.337187, 38.598045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.235828, 28.716349, 38.689079>,  <37.182335, 28.943846, 38.743702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.235828, 28.716349, 38.689079>,  <37.324986, 28.337187, 38.598045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.235828, 28.716349, 38.689079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103512, -0.209128, 0.972394,
		0.969331, 0.240299, -0.051507,
		-0.222894, 0.947904, 0.227588,
		37.168961, 29.000719, 38.757355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.813080, 28.423876, 39.139851>,  <37.324986, 28.337187, 38.598045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.813080, 28.423876, 39.139851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.553074, 28.727827, 39.136494>,  <37.397072, 28.910198, 39.134480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.553074, 28.727827, 39.136494>,  <37.813080, 28.423876, 39.139851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.553074, 28.727827, 39.136494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116383, -0.088636, 0.989241,
		0.750960, 0.643994, 0.146051,
		-0.650011, 0.759879, -0.008388,
		37.358070, 28.955791, 39.133976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.981274, 28.879179, 39.662216>,  <37.813080, 28.423876, 39.139851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.981274, 28.879179, 39.662216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.602627, 28.997026, 39.609882>,  <37.375439, 29.067736, 39.578484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.602627, 28.997026, 39.609882>,  <37.981274, 28.879179, 39.662216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.602627, 28.997026, 39.609882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173060, -0.122040, 0.977321,
		0.271971, 0.947790, 0.166512,
		-0.946616, 0.294619, -0.130833,
		37.318642, 29.085413, 39.570633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.845577, 29.470263, 40.110149>,  <37.981274, 28.879179, 39.662216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.845577, 29.470263, 40.110149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.484833, 29.327370, 40.012955>,  <37.268387, 29.241634, 39.954639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.484833, 29.327370, 40.012955>,  <37.845577, 29.470263, 40.110149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.484833, 29.327370, 40.012955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274875, 0.040539, 0.960625,
		-0.333314, 0.933136, -0.134754,
		-0.901857, -0.357230, -0.242983,
		37.214275, 29.220201, 39.940060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.402355, 29.845612, 40.529957>,  <37.845577, 29.470263, 40.110149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.402355, 29.845612, 40.529957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.204788, 29.508589, 40.444035>,  <37.086250, 29.306376, 40.392479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.204788, 29.508589, 40.444035>,  <37.402355, 29.845612, 40.529957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.204788, 29.508589, 40.444035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229009, -0.112270, 0.966928,
		-0.838811, 0.526773, -0.137502,
		-0.493914, -0.842559, -0.214810,
		37.056614, 29.255821, 40.379593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.770893, 29.887398, 40.834072>,  <37.402355, 29.845612, 40.529957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.770893, 29.887398, 40.834072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.792938, 29.495762, 40.755749>,  <36.806168, 29.260780, 40.708755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.792938, 29.495762, 40.755749>,  <36.770893, 29.887398, 40.834072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.792938, 29.495762, 40.755749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309044, -0.203207, 0.929085,
		-0.949449, 0.009308, -0.313782,
		0.055115, -0.979092, -0.195812,
		36.809471, 29.202034, 40.697006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.264591, 29.604263, 41.159378>,  <36.770893, 29.887398, 40.834072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.264591, 29.604263, 41.159378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.461136, 29.263165, 41.088512>,  <36.579063, 29.058506, 41.045994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.461136, 29.263165, 41.088512>,  <36.264591, 29.604263, 41.159378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.461136, 29.263165, 41.088512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371782, -0.389311, 0.842743,
		-0.787618, -0.348225, -0.508328,
		0.491362, -0.852746, -0.177165,
		36.608543, 29.007341, 41.035362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.811630, 28.969725, 41.373577>,  <36.264591, 29.604263, 41.159378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.811630, 28.969725, 41.373577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.199009, 28.870041, 41.374893>,  <36.431435, 28.810230, 41.375683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.199009, 28.870041, 41.374893>,  <35.811630, 28.969725, 41.373577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.199009, 28.870041, 41.374893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109530, -0.413704, 0.903799,
		-0.223874, -0.875639, -0.427945,
		0.968444, -0.249210, 0.003291,
		36.489540, 28.795277, 41.375881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.753395, 28.385994, 41.694462>,  <35.811630, 28.969725, 41.373577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.753395, 28.385994, 41.694462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.141846, 28.473732, 41.731987>,  <36.374916, 28.526375, 41.754501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.141846, 28.473732, 41.731987>,  <35.753395, 28.385994, 41.694462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.141846, 28.473732, 41.731987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010271, -0.431318, 0.902141,
		0.238343, -0.875130, -0.421118,
		0.971126, 0.219345, 0.093813,
		36.433186, 28.539536, 41.760132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.145378, 27.759443, 41.888672>,  <35.753395, 28.385994, 41.694462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.145378, 27.759443, 41.888672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.374432, 28.073223, 41.983944>,  <36.511864, 28.261492, 42.041107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.374432, 28.073223, 41.983944>,  <36.145378, 27.759443, 41.888672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.374432, 28.073223, 41.983944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113566, -0.363632, 0.924594,
		0.811908, -0.502404, -0.297314,
		0.572633, 0.784450, 0.238179,
		36.546223, 28.308558, 42.055397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.818993, 27.521509, 42.169220>,  <36.145378, 27.759443, 41.888672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.818993, 27.521509, 42.169220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.768135, 27.889732, 42.316956>,  <36.737621, 28.110666, 42.405598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.768135, 27.889732, 42.316956>,  <36.818993, 27.521509, 42.169220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.768135, 27.889732, 42.316956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030996, -0.375866, 0.926156,
		0.991401, 0.106303, 0.076320,
		-0.127139, 0.920557, 0.369339,
		36.729992, 28.165899, 42.427757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231236, 27.509007, 42.763123>,  <36.818993, 27.521509, 42.169220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.231236, 27.509007, 42.763123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.950859, 27.788748, 42.819107>,  <36.782635, 27.956593, 42.852695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.950859, 27.788748, 42.819107>,  <37.231236, 27.509007, 42.763123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.950859, 27.788748, 42.819107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212834, -0.392397, 0.894833,
		0.680723, 0.597437, 0.423893,
		-0.700941, 0.699352, 0.139959,
		36.740578, 27.998554, 42.861095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.404785, 27.792767, 43.466839>,  <37.231236, 27.509007, 42.763123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.404785, 27.792767, 43.466839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.028717, 27.899275, 43.381809>,  <36.803078, 27.963181, 43.330791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.028717, 27.899275, 43.381809>,  <37.404785, 27.792767, 43.466839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.028717, 27.899275, 43.381809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287136, -0.283348, 0.915023,
		0.183414, 0.921310, 0.342851,
		-0.940166, 0.266273, -0.212571,
		36.746666, 27.979156, 43.318039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.623531, 28.512062, 43.671173>,  <37.404785, 27.792767, 43.466839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.623531, 28.512062, 43.671173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.939976, 28.697042, 43.831314>,  <38.129841, 28.808031, 43.927399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.939976, 28.697042, 43.831314>,  <37.623531, 28.512062, 43.671173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.939976, 28.697042, 43.831314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489248, -0.085563, -0.867937,
		-0.367124, 0.882506, -0.293944,
		0.791111, 0.462452, 0.400352,
		38.177307, 28.835777, 43.951420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.907600, 29.054934, 43.219421>,  <37.623531, 28.512062, 43.671173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.907600, 29.054934, 43.219421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.228302, 28.998232, 43.451660>,  <38.420723, 28.964211, 43.591003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.228302, 28.998232, 43.451660>,  <37.907600, 29.054934, 43.219421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.228302, 28.998232, 43.451660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596629, 0.132944, -0.791429,
		0.035001, 0.980934, 0.191162,
		0.801754, -0.141754, 0.580600,
		38.468826, 28.955706, 43.625839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.379345, 29.619284, 43.092484>,  <37.907600, 29.054934, 43.219421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.379345, 29.619284, 43.092484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.568245, 29.297033, 43.235561>,  <38.681583, 29.103683, 43.321407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.568245, 29.297033, 43.235561>,  <38.379345, 29.619284, 43.092484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.568245, 29.297033, 43.235561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631060, 0.025684, -0.775309,
		0.615421, 0.591869, 0.520526,
		0.472251, -0.805625, 0.357699,
		38.709919, 29.055346, 43.342873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.137489, 29.771355, 43.013367>,  <38.379345, 29.619284, 43.092484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.137489, 29.771355, 43.013367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.120129, 29.375357, 43.067074>,  <39.109711, 29.137758, 43.099297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.120129, 29.375357, 43.067074>,  <39.137489, 29.771355, 43.013367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.120129, 29.375357, 43.067074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490084, -0.138208, -0.860649,
		0.870594, 0.028447, 0.491179,
		-0.043402, -0.989995, 0.134264,
		39.107109, 29.078358, 43.107353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.784046, 29.463449, 42.848915>,  <39.137489, 29.771355, 43.013367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.784046, 29.463449, 42.848915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.537987, 29.153561, 42.790398>,  <39.390350, 28.967627, 42.755287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.537987, 29.153561, 42.790398>,  <39.784046, 29.463449, 42.848915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.537987, 29.153561, 42.790398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499219, -0.239119, -0.832828,
		0.610228, -0.585343, 0.533849,
		-0.615144, -0.774722, -0.146297,
		39.353443, 28.921144, 42.746510>
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
